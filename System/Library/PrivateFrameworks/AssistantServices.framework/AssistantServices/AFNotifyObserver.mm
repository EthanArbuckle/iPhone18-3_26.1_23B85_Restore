@interface AFNotifyObserver
- (AFNotifyObserver)initWithName:(id)name options:(unint64_t)options queue:(id)queue delegate:(id)delegate;
- (NSString)description;
- (unint64_t)state;
- (void)_invalidate;
- (void)_updateStateWithToken:(int)token;
- (void)dealloc;
- (void)getStateWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation AFNotifyObserver

- (unint64_t)state
{
  v2 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self->_options)
  {
    queue = self->_queue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __25__AFNotifyObserver_state__block_invoke;
    v5[3] = &unk_1E7349810;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_invalidate
{
  registrationToken = self->_registrationToken;
  if (registrationToken != -1)
  {
    notify_cancel(registrationToken);
    self->_registrationToken = -1;
  }

  objc_storeWeak(&self->_delegate, 0);
}

- (void)_updateStateWithToken:(int)token
{
  state64 = 0;
  if (token != -1 && !notify_get_state(token, &state64) || (registrationToken = self->_registrationToken, registrationToken != -1) && !notify_get_state(registrationToken, &state64))
  {
    state = self->_state;
    v6 = state64;
    if (state != state64)
    {
      self->_state = state64;
      if ((*&self->_flags & 2) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained notifyObserver:self didChangeStateFrom:state to:v6];
      }
    }
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AFNotifyObserver_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    if (self->_options)
    {
      queue = self->_queue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __43__AFNotifyObserver_getStateWithCompletion___block_invoke;
      v7[3] = &unk_1E7349838;
      v7[4] = self;
      v8 = completionCopy;
      dispatch_async(queue, v7);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)dealloc
{
  [(AFNotifyObserver *)self _invalidate];
  v3.receiver = self;
  v3.super_class = AFNotifyObserver;
  [(AFNotifyObserver *)&v3 dealloc];
}

- (AFNotifyObserver)initWithName:(id)name options:(unint64_t)options queue:(id)queue delegate:(id)delegate
{
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFNotifyObserver.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  v28.receiver = self;
  v28.super_class = AFNotifyObserver;
  v14 = [(AFNotifyObserver *)&v28 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    v14->_options = options;
    objc_storeStrong(&v14->_queue, queue);
    v17 = objc_storeWeak(&v14->_delegate, delegateCopy);
    *&v14->_flags = *&v14->_flags & 0xFE | objc_opt_respondsToSelector() & 1;

    WeakRetained = objc_loadWeakRetained(&v14->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    *&v14->_flags = *&v14->_flags & 0xFD | v19;

    objc_initWeak(&location, v14);
    queue = v14->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AFNotifyObserver_initWithName_options_queue_delegate___block_invoke;
    block[3] = &unk_1E7347068;
    v24 = nameCopy;
    v25 = v14;
    objc_copyWeak(v26, &location);
    v26[1] = options;
    dispatch_async(queue, block);
    objc_destroyWeak(v26);

    objc_destroyWeak(&location);
  }

  return v14;
}

void __56__AFNotifyObserver_initWithName_options_queue_delegate___block_invoke(uint64_t a1)
{
  out_token = -1;
  v2 = [*(a1 + 32) UTF8String];
  v3 = *(*(a1 + 40) + 8);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __56__AFNotifyObserver_initWithName_options_queue_delegate___block_invoke_2;
  v7 = &unk_1E7347870;
  objc_copyWeak(&v8, (a1 + 48));
  if (!notify_register_dispatch(v2, &out_token, v3, &v4))
  {
    *(*(a1 + 40) + 32) = out_token;
  }

  if (*(a1 + 56))
  {
    [*(a1 + 40) _updateStateWithToken:{out_token, v4, v5, v6, v7}];
  }

  objc_destroyWeak(&v8);
}

void __56__AFNotifyObserver_initWithName_options_queue_delegate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNotificationWithToken:a2];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = AFNotifyObserver;
  v4 = [(AFNotifyObserver *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {name = %@}", v4, self->_name];

  return v5;
}

@end