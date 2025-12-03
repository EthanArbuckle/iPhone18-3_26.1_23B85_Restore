@interface AFNetworkAvailability
+ (id)sharedAvailability;
- (AFNetworkAvailability)init;
- (BOOL)isAvailable;
- (void)_availabilityChanged;
- (void)_notifyObservers;
- (void)_startObservingAvailability;
- (void)_stopObservingAvailability;
- (void)_updateState;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation AFNetworkAvailability

+ (id)sharedAvailability
{
  if (sharedAvailability_onceToken != -1)
  {
    dispatch_once(&sharedAvailability_onceToken, &__block_literal_global_19060);
  }

  v3 = sharedAvailability_sAvailability;

  return v3;
}

void __43__AFNetworkAvailability_sharedAvailability__block_invoke()
{
  v0 = objc_alloc_init(AFNetworkAvailability);
  v1 = sharedAvailability_sAvailability;
  sharedAvailability_sAvailability = v0;
}

- (AFNetworkAvailability)init
{
  v8.receiver = self;
  v8.super_class = AFNetworkAvailability;
  v2 = [(AFNetworkAvailability *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("AFNetworkAvailability", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_notifyToken = -1;
  }

  return v2;
}

- (void)_startObservingAvailability
{
  if (self->_notifyToken == -1)
  {
    v9 = v2;
    v10 = v3;
    notify_key = nwi_state_get_notify_key();
    v8 = -1;
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__AFNetworkAvailability__startObservingAvailability__block_invoke;
    v7[3] = &unk_1E7344CD0;
    v7[4] = self;
    if (!notify_register_dispatch(notify_key, &v8, queue, v7))
    {
      self->_notifyToken = v8;
    }
  }
}

- (BOOL)isAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AFNetworkAvailability_isAvailable__block_invoke;
  v5[3] = &unk_1E7349810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_availabilityChanged
{
  state = self->_state;
  [(AFNetworkAvailability *)self _updateState];
  if (self->_notifyToken != -1 && (*&self->_state & 1) == 0)
  {
    *&self->_state |= 1u;
  }

  if ((*&state & 1) == 0 || ((*&self->_state ^ *&state) & 2) != 0)
  {

    [(AFNetworkAvailability *)self _notifyObservers];
  }
}

- (void)_updateState
{
  v3 = nwi_state_copy();
  if (!v3)
  {
    *&self->_state &= ~2u;
    return;
  }

  v4 = v3;
  if (nwi_state_get_first_ifstate() && (nwi_ifstate_get_flags() & 4) != 0)
  {
    state = self->_state;
    p_state = &self->_state;
    v6 = state;
LABEL_9:
    v9 = v6 | 2;
    goto LABEL_10;
  }

  if (!nwi_state_get_first_ifstate())
  {
    *&self->_state &= ~2u;
    goto LABEL_12;
  }

  flags = nwi_ifstate_get_flags();
  v8 = self->_state;
  p_state = &self->_state;
  v6 = v8;
  if ((flags & 4) != 0)
  {
    goto LABEL_9;
  }

  v9 = v6 & 0xFD;
LABEL_10:
  *p_state = v9;
LABEL_12:

  MEMORY[0x1EEE71828](v4);
}

- (void)_notifyObservers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) networkAvailability:self isAvailable:{(*&self->_state >> 1) & 1, v9}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

_BYTE *__36__AFNetworkAvailability_isAvailable__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[20];
  if ((v3 & 1) == 0)
  {
    result = [result _updateState];
    v3 = *(*(a1 + 32) + 20);
  }

  *(*(*(a1 + 40) + 8) + 24) = (v3 & 2) != 0;
  return result;
}

- (void)_stopObservingAvailability
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;

    [(AFNetworkAvailability *)self _clearState];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__AFNetworkAvailability_removeObserver___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __40__AFNetworkAvailability_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 24) count];
  if (!result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v5 = *(a1 + 32);

    return [v5 _stopObservingAvailability];
  }

  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__AFNetworkAvailability_addObserver___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

_DWORD *__37__AFNetworkAvailability_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = [*(*(a1 + 32) + 24) count];
  result = *(a1 + 32);
  if (v6 == 1 || result[4] == -1)
  {
    [result _startObservingAvailability];
    v8 = *(a1 + 32);

    return [v8 _availabilityChanged];
  }

  return result;
}

@end