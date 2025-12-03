@interface _MPRemoteCommandEventDispatch
- (id)description;
- (id)initWithEvent:(void *)event continuation:;
- (uint64_t)state;
- (void)_finishWithStatuses:(id)statuses state:(int64_t)state;
- (void)dealloc;
- (void)deliver;
- (void)dispatch;
- (void)timeout;
@end

@implementation _MPRemoteCommandEventDispatch

- (void)_finishWithStatuses:(id)statuses state:(int64_t)state
{
  v22 = *MEMORY[0x1E69E9840];
  statusesCopy = statuses;
  os_unfair_lock_lock_with_options();
  if (self->_continuation)
  {
    date = [MEMORY[0x1E695DF00] date];
    responseDate = self->_responseDate;
    self->_responseDate = date;

    [(MPRemoteCommandEvent *)self->_event _updateDispatch:self];
    v9 = _Block_copy(self->_continuation);
    continuation = self->_continuation;
    self->_continuation = 0;

    self->_state = state;
    os_unfair_lock_unlock(&self->_lock);
    v11 = dispatch_get_global_queue(21, 0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59___MPRemoteCommandEventDispatch__finishWithStatuses_state___block_invoke;
    v15[3] = &unk_1E76824C8;
    v17 = v9;
    v16 = statusesCopy;
    v12 = v9;
    dispatch_async(v11, v15);
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      commandID = [(MPRemoteCommandEvent *)self->_event commandID];
      *buf = 138543618;
      v19 = commandID;
      v20 = 2114;
      v21 = statusesCopy;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] finishWithStatuses: | dropping [continuation already called] statuses=%{public}@", buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  event = self->_event;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v5 = [v2 stringWithFormat:@"<_MPRemoteCommandEventDispatch: %@ state:%@>", event, v4];

  return v5;
}

- (void)dealloc
{
  if (self->_continuation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:39 description:{@"event dispatch %@ deallocated without calling continuation", self}];
  }

  v5.receiver = self;
  v5.super_class = _MPRemoteCommandEventDispatch;
  [(_MPRemoteCommandEventDispatch *)&v5 dealloc];
}

- (id)initWithEvent:(void *)event continuation:
{
  v6 = a2;
  eventCopy = event;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = _MPRemoteCommandEventDispatch;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 5, a2);
      *(self + 8) = 0;
      self[10] = 1;
      v9 = _Block_copy(eventCopy);
      v10 = self[1];
      self[1] = v9;
    }
  }

  return self;
}

- (void)deliver
{
  v41 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  os_unfair_lock_lock((self + 32));
  v2 = *(self + 80);
  if (v2 > 99)
  {
    if ((v2 - 200) < 2)
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        commandID = [*(self + 40) commandID];
        *buf = 138543362;
        v38 = commandID;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already timed out]", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_deliver object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:75 description:@"Cannot dispatch timed out event: %@", *(self + 40)];
      goto LABEL_31;
    }

    if (v2 == 100)
    {
      v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        commandID2 = [*(self + 40) commandID];
        *buf = 138543362;
        v38 = commandID2;
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already finished]", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_deliver object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:66 description:@"Cannot dispatch event that has already finished: %@", *(self + 40)];
      goto LABEL_31;
    }

    if (v2 == 101)
    {
      v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        commandID3 = [*(self + 40) commandID];
        *buf = 138543362;
        v38 = commandID3;
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already canceled]", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_deliver object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:70 description:@"Cannot dispatch canceled event: %@", *(self + 40)];
      goto LABEL_31;
    }
  }

  else if (v2 > 1)
  {
    if (v2 == 2)
    {
      v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        commandID4 = [*(self + 40) commandID];
        *buf = 138543362;
        v38 = commandID4;
        _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already pending dispatch]", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_deliver object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:58 description:@"Cannot deliver event already waiting for dispatch: %@", *(self + 40)];
      goto LABEL_31;
    }

    if (v2 == 3)
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        commandID5 = [*(self + 40) commandID];
        *buf = 138543362;
        v38 = commandID5;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already dispatched]", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_deliver object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:62 description:@"Cannot dispatch event more than once: %@", *(self + 40)];
      goto LABEL_31;
    }
  }

  else
  {
    if (!v2)
    {
      v11 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        commandID6 = [*(self + 40) commandID];
        *buf = 138543362;
        v38 = commandID6;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [unknown state]", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_deliver object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:51 description:@"Cannot deliver event in unknown state: %@", *(self + 40)];
      goto LABEL_31;
    }

    if (v2 == 1)
    {
      currentHandler = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_DEFAULT))
      {
        commandID7 = [*(self + 40) commandID];
        *buf = 138543362;
        v38 = commandID7;
        _os_log_impl(&dword_1A238D000, currentHandler, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] deliver | marking as delivered [was pending delivery]", buf, 0xCu);
      }

LABEL_31:
    }
  }

  v17 = [MEMORY[0x1E695DF00] now];
  v18 = *(self + 48);
  *(self + 48) = v17;

  v19 = *(self + 40);
  [v19 timeout];
  if (v20 == 0.0)
  {
    command = [v19 command];
    [command timeout];
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  [v19 _updateDispatch:self];
  v24 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    commandID8 = [*(self + 40) commandID];
    *buf = 138543618;
    v38 = commandID8;
    v39 = 2048;
    v40 = v23;
    _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] deliver | starting dispatch timer [] remainingTime=%0.2gs", buf, 0x16u);
  }

  v26 = objc_alloc(MEMORY[0x1E69B13F0]);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __40___MPRemoteCommandEventDispatch_deliver__block_invoke;
  v33[3] = &unk_1E7681C78;
  v27 = v19;
  v36 = v23;
  v34 = v27;
  selfCopy = self;
  v28 = [v26 initWithTimeout:v33 interruptionHandler:v23];
  v29 = *(self + 16);
  *(self + 16) = v28;

  *(self + 80) = 2;
  os_unfair_lock_unlock((self + 32));
  command2 = [v27 command];
  commandCenter = [command2 commandCenter];

  delegate = [commandCenter delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate commandCenter:commandCenter didDeliverCommandEvent:v27];
  }
}

- (void)timeout
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = *(self + 64);
  *(self + 64) = v2;

  [*(self + 40) _updateDispatch:self];
  v4 = *(self + 80);
  if (v4 > 99)
  {
    if ((v4 - 200) < 2)
    {
      v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        commandID = [*(self + 40) commandID];
        *buf = 138543362;
        v35 = commandID;
        _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | asserting [already timed out]", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_timeout object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:200 description:@"Cannot timeout event more than once: %@", *(self + 40)];
      goto LABEL_25;
    }

    if (v4 == 100)
    {
      currentHandler = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR))
      {
        commandID2 = [*(self + 40) commandID];
        *buf = 138543362;
        v35 = commandID2;
        v9 = "[RCE:%{public}@] timeout | ignoring [already finished]";
        goto LABEL_41;
      }
    }

    else
    {
      if (v4 != 101)
      {
        goto LABEL_30;
      }

      currentHandler = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR))
      {
        commandID2 = [*(self + 40) commandID];
        *buf = 138543362;
        v35 = commandID2;
        v9 = "[RCE:%{public}@] timeout | ignoring [already canceled]";
LABEL_41:
        _os_log_impl(&dword_1A238D000, currentHandler, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }

LABEL_25:

    goto LABEL_30;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v17 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        commandID3 = [*(self + 40) commandID];
        *buf = 138543362;
        v35 = commandID3;
        _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | timing out [was pending dispatch]", buf, 0xCu);
      }

      v12 = 200;
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_30;
      }

      v10 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        commandID4 = [*(self + 40) commandID];
        *buf = 138543362;
        v35 = commandID4;
        _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | timing out [was dispatched]", buf, 0xCu);
      }

      v12 = 201;
    }

    *(self + 80) = v12;
    goto LABEL_30;
  }

  if (!v4)
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      commandID5 = [*(self + 40) commandID];
      *buf = 138543362;
      v35 = commandID5;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | asserting [unknown state]", buf, 0xCu);
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_timeout object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:175 description:@"Cannot timeout event in unknown state: %@", *(self + 40)];
    goto LABEL_25;
  }

  if (v4 == 1)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      commandID6 = [*(self + 40) commandID];
      *buf = 138543362;
      v35 = commandID6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | asserting [is pending delivery]", buf, 0xCu);
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_timeout object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:179 description:@"Cannot timeout event pending delivery: %@", *(self + 40)];
    goto LABEL_25;
  }

LABEL_30:
  os_unfair_lock_unlock((self + 32));
  command = [*(self + 40) command];
  commandCenter = [command commandCenter];

  delegate = [commandCenter delegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = objc_alloc(MEMORY[0x1E69B13F0]);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __40___MPRemoteCommandEventDispatch_timeout__block_invoke;
    v33[3] = &unk_1E7681CF0;
    v33[4] = self;
    v33[5] = sel_timeout;
    v23 = [v22 initWithTimeout:v33 interruptionHandler:2.0];
    v24 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      commandID7 = [*(self + 40) commandID];
      *buf = 138543618;
      v35 = commandID7;
      v36 = 2048;
      v37 = delegate;
      _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] timeout | call delegate [] delegate=%p", buf, 0x16u);
    }

    v26 = *(self + 40);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __40___MPRemoteCommandEventDispatch_timeout__block_invoke_76;
    v30[3] = &unk_1E7681D18;
    v31 = v23;
    selfCopy = self;
    v27 = v23;
    [delegate commandCenter:commandCenter didTimeoutCommandEvent:v26 statusHandler:v30];
  }

  else
  {
    v28 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      commandID8 = [*(self + 40) commandID];
      *buf = 138543362;
      v35 = commandID8;
      _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] timeout | default timeout []", buf, 0xCu);
    }
  }
}

- (void)dispatch
{
  v42 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  disarm = 0;
  v3 = *(self + 80);
  if (v3 > 99)
  {
    if (v3 > 199)
    {
      if (v3 != 200)
      {
        if (v3 != 201)
        {
          goto LABEL_36;
        }

        v11 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          commandID = [*(self + 40) commandID];
          *buf = 138543362;
          v39 = commandID;
          _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [already dispatched, timed out]", buf, 0xCu);
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_dispatch object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:132 description:@"Cannot dispatch event more than once: %@", *(self + 40)];
        goto LABEL_30;
      }

      currentHandler = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (!os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      commandID2 = [*(self + 40) commandID];
      *buf = 138543362;
      v39 = commandID2;
      v8 = "[RCE:%{public}@] dispatch | ignoring [timed out before dispatch]";
    }

    else
    {
      if (v3 == 100)
      {
        v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          commandID3 = [*(self + 40) commandID];
          *buf = 138543362;
          v39 = commandID3;
          _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [already finished]", buf, 0xCu);
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_dispatch object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:122 description:@"Cannot dispatch event that has already finished: %@", *(self + 40)];
        goto LABEL_30;
      }

      if (v3 != 101)
      {
        goto LABEL_36;
      }

      currentHandler = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (!os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      commandID2 = [*(self + 40) commandID];
      *buf = 138543362;
      v39 = commandID2;
      v8 = "[RCE:%{public}@] dispatch | ignoring [already canceled]";
    }

    _os_log_impl(&dword_1A238D000, currentHandler, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);

    goto LABEL_30;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v17 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        commandID4 = [*(self + 40) commandID];
        *buf = 138543362;
        v39 = commandID4;
        _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] dispatch | dispatching to command handlers [was pending dispatch]", buf, 0xCu);
      }

      *(self + 80) = 3;
      goto LABEL_35;
    }

    if (v3 != 3)
    {
      goto LABEL_36;
    }

    v9 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      commandID5 = [*(self + 40) commandID];
      *buf = 138543362;
      v39 = commandID5;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [already dispatched]", buf, 0xCu);
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_dispatch object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:118 description:@"Cannot dispatch event more than once: %@", *(self + 40)];
LABEL_30:

    if (*(self + 80) != 3)
    {
      disarm = 0;
      goto LABEL_36;
    }

LABEL_35:
    disarm = [*(self + 16) disarm];
    goto LABEL_36;
  }

  if (!v3)
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      commandID6 = [*(self + 40) commandID];
      *buf = 138543362;
      v39 = commandID6;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [unknown state]", buf, 0xCu);
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_dispatch object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:106 description:@"Cannot dispatch event in unknown state: %@", *(self + 40)];
    goto LABEL_30;
  }

  if (v3 == 1)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      commandID7 = [*(self + 40) commandID];
      *buf = 138543362;
      v39 = commandID7;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [is pending delivery]", buf, 0xCu);
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_dispatch object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:110 description:@"Cannot dispatch event pending delivery: %@", *(self + 40)];
    goto LABEL_30;
  }

LABEL_36:
  v19 = *(self + 40);
  [v19 timeout];
  if (v20 == 0.0)
  {
    command = [v19 command];
    [command timeout];
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  if (disarm)
  {
    v24 = [MEMORY[0x1E695DF00] now];
    v25 = *(self + 56);
    *(self + 56) = v24;

    [*(self + 48) timeIntervalSinceNow];
    v23 = v23 + v26;
    v27 = objc_alloc(MEMORY[0x1E69B13F0]);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __41___MPRemoteCommandEventDispatch_dispatch__block_invoke;
    v37[3] = &unk_1E7681CA0;
    v37[4] = self;
    v28 = [v27 initWithTimeout:v37 interruptionHandler:v23];
    objc_storeStrong((self + 24), v28);
  }

  else
  {
    v28 = 0;
  }

  [v19 _updateDispatch:self];
  os_unfair_lock_unlock((self + 32));
  if (disarm)
  {
    v29 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      commandID8 = [*(self + 40) commandID];
      *buf = 138543618;
      v39 = commandID8;
      v40 = 2048;
      v41 = v23;
      _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] dispatch | starting dispatch response timer [] remainingTime=%0.2gs", buf, 0x16u);
    }

    command2 = [*(self + 40) command];
    v32 = *(self + 40);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __41___MPRemoteCommandEventDispatch_dispatch__block_invoke_44;
    v33[3] = &unk_1E7681CC8;
    v34 = v28;
    v35 = v19;
    selfCopy = self;
    [command2 invokeCommandWithEvent:v32 completion:v33];
  }
}

- (uint64_t)state
{
  selfCopy = self;
  if (self)
  {
    os_unfair_lock_lock_with_options();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38___MPRemoteCommandEventDispatch_state__block_invoke;
    aBlock[3] = &unk_1E7682518;
    aBlock[4] = selfCopy;
    v2 = _Block_copy(aBlock);
    selfCopy = *(selfCopy + 80);
    v2[2]();
  }

  return selfCopy;
}

@end