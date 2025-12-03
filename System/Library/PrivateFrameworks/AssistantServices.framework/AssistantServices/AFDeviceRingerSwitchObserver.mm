@interface AFDeviceRingerSwitchObserver
+ (id)sharedObserver;
- (AFDeviceRingerSwitchObserver)init;
- (int64_t)state;
- (void)_updateStateWithNotifyState:(unint64_t)state;
- (void)addListener:(id)listener;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)removeListener:(id)listener;
@end

@implementation AFDeviceRingerSwitchObserver

- (int64_t)state
{
  if (!self->_isActive)
  {
    return 0;
  }

  if ([(AFNotifyObserver *)self->_notifyObserver state:v2])
  {
    return 1;
  }

  return 2;
}

+ (id)sharedObserver
{
  if (sharedObserver_onceToken_31271 != -1)
  {
    dispatch_once(&sharedObserver_onceToken_31271, &__block_literal_global_31272);
  }

  v3 = sharedObserver_sharedObserver_31273;

  return v3;
}

- (void)_updateStateWithNotifyState:(unint64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  if (state)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_listeners;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) deviceRingerObserver:self didChangeState:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  if (self->_notifyObserver == observer)
  {
    [(AFDeviceRingerSwitchObserver *)self _updateStateWithNotifyState:to, from];
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy && self->_isActive)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__AFDeviceRingerSwitchObserver_removeListener___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy && self->_isActive)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__AFDeviceRingerSwitchObserver_addListener___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (AFDeviceRingerSwitchObserver)init
{
  v12.receiver = self;
  v12.super_class = AFDeviceRingerSwitchObserver;
  v2 = [(AFDeviceRingerSwitchObserver *)&v12 init];
  if (v2)
  {
    if (AFHasRingerSwitch())
    {
      goto LABEL_6;
    }

    if (AFIsPad_onceToken != -1)
    {
      dispatch_once(&AFIsPad_onceToken, &__block_literal_global_214_46076);
    }

    if (AFIsPad_isPad)
    {
LABEL_6:
      v2->_isActive = 1;
LABEL_7:
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_create("AFDeviceRingerSwitchObserver", v3);
      queue = v2->_queue;
      v2->_queue = v4;

      v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
      listeners = v2->_listeners;
      v2->_listeners = v6;

      v8 = [[AFNotifyObserver alloc] initWithName:@"com.apple.springboard.ringerstate" options:1 queue:v2->_queue delegate:v2];
      notifyObserver = v2->_notifyObserver;
      v2->_notifyObserver = v8;

      return v2;
    }

    if (AFIsIPod_onceToken != -1)
    {
      dispatch_once(&AFIsIPod_onceToken, &__block_literal_global_219_46184);
    }

    v11 = AFIsIPod_isIPod;
    v2->_isActive = AFIsIPod_isIPod;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  return v2;
}

void __46__AFDeviceRingerSwitchObserver_sharedObserver__block_invoke()
{
  v0 = objc_alloc_init(AFDeviceRingerSwitchObserver);
  v1 = sharedObserver_sharedObserver_31273;
  sharedObserver_sharedObserver_31273 = v0;
}

@end