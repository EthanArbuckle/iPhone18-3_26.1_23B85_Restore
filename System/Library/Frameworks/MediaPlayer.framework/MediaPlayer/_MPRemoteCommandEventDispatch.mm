@interface _MPRemoteCommandEventDispatch
- (id)description;
- (id)initWithEvent:(void *)a3 continuation:;
- (uint64_t)state;
- (void)_finishWithStatuses:(id)a3 state:(int64_t)a4;
- (void)dealloc;
- (void)deliver;
- (void)dispatch;
- (void)timeout;
@end

@implementation _MPRemoteCommandEventDispatch

- (void)_finishWithStatuses:(id)a3 state:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_continuation)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    responseDate = self->_responseDate;
    self->_responseDate = v7;

    [(MPRemoteCommandEvent *)self->_event _updateDispatch:self];
    v9 = _Block_copy(self->_continuation);
    continuation = self->_continuation;
    self->_continuation = 0;

    self->_state = a4;
    os_unfair_lock_unlock(&self->_lock);
    v11 = dispatch_get_global_queue(21, 0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59___MPRemoteCommandEventDispatch__finishWithStatuses_state___block_invoke;
    v15[3] = &unk_1E76824C8;
    v17 = v9;
    v16 = v6;
    v12 = v9;
    dispatch_async(v11, v15);
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(MPRemoteCommandEvent *)self->_event commandID];
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v6;
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_MPRemoteCommandEventDispatch.m" lineNumber:39 description:{@"event dispatch %@ deallocated without calling continuation", self}];
  }

  v5.receiver = self;
  v5.super_class = _MPRemoteCommandEventDispatch;
  [(_MPRemoteCommandEventDispatch *)&v5 dealloc];
}

- (id)initWithEvent:(void *)a3 continuation:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = _MPRemoteCommandEventDispatch;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 5, a2);
      *(a1 + 8) = 0;
      a1[10] = 1;
      v9 = _Block_copy(v7);
      v10 = a1[1];
      a1[1] = v9;
    }
  }

  return a1;
}

- (void)deliver
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 32));
  v2 = *(a1 + 80);
  if (v2 > 99)
  {
    if ((v2 - 200) < 2)
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v38 = v10;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already timed out]", buf, 0xCu);
      }

      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:sel_deliver object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:75 description:@"Cannot dispatch timed out event: %@", *(a1 + 40)];
      goto LABEL_31;
    }

    if (v2 == 100)
    {
      v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v38 = v16;
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already finished]", buf, 0xCu);
      }

      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:sel_deliver object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:66 description:@"Cannot dispatch event that has already finished: %@", *(a1 + 40)];
      goto LABEL_31;
    }

    if (v2 == 101)
    {
      v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v38 = v6;
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already canceled]", buf, 0xCu);
      }

      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:sel_deliver object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:70 description:@"Cannot dispatch canceled event: %@", *(a1 + 40)];
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
        v14 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v38 = v14;
        _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already pending dispatch]", buf, 0xCu);
      }

      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:sel_deliver object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:58 description:@"Cannot deliver event already waiting for dispatch: %@", *(a1 + 40)];
      goto LABEL_31;
    }

    if (v2 == 3)
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v38 = v8;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [already dispatched]", buf, 0xCu);
      }

      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:sel_deliver object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:62 description:@"Cannot dispatch event more than once: %@", *(a1 + 40)];
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
        v12 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v38 = v12;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | asserting [unknown state]", buf, 0xCu);
      }

      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:sel_deliver object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:51 description:@"Cannot deliver event in unknown state: %@", *(a1 + 40)];
      goto LABEL_31;
    }

    if (v2 == 1)
    {
      v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v38 = v4;
        _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] deliver | marking as delivered [was pending delivery]", buf, 0xCu);
      }

LABEL_31:
    }
  }

  v17 = [MEMORY[0x1E695DF00] now];
  v18 = *(a1 + 48);
  *(a1 + 48) = v17;

  v19 = *(a1 + 40);
  [v19 timeout];
  if (v20 == 0.0)
  {
    v21 = [v19 command];
    [v21 timeout];
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  [v19 _updateDispatch:a1];
  v24 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 40) commandID];
    *buf = 138543618;
    v38 = v25;
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
  v35 = a1;
  v28 = [v26 initWithTimeout:v33 interruptionHandler:v23];
  v29 = *(a1 + 16);
  *(a1 + 16) = v28;

  *(a1 + 80) = 2;
  os_unfair_lock_unlock((a1 + 32));
  v30 = [v27 command];
  v31 = [v30 commandCenter];

  v32 = [v31 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v32 commandCenter:v31 didDeliverCommandEvent:v27];
  }
}

- (void)timeout
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = *(a1 + 64);
  *(a1 + 64) = v2;

  [*(a1 + 40) _updateDispatch:a1];
  v4 = *(a1 + 80);
  if (v4 > 99)
  {
    if ((v4 - 200) < 2)
    {
      v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v35 = v14;
        _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | asserting [already timed out]", buf, 0xCu);
      }

      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_timeout object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:200 description:@"Cannot timeout event more than once: %@", *(a1 + 40)];
      goto LABEL_25;
    }

    if (v4 == 100)
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v35 = v8;
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

      v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v35 = v8;
        v9 = "[RCE:%{public}@] timeout | ignoring [already canceled]";
LABEL_41:
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
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
        v18 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v35 = v18;
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
        v11 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v35 = v11;
        _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | timing out [was dispatched]", buf, 0xCu);
      }

      v12 = 201;
    }

    *(a1 + 80) = v12;
    goto LABEL_30;
  }

  if (!v4)
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 40) commandID];
      *buf = 138543362;
      v35 = v16;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | asserting [unknown state]", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:sel_timeout object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:175 description:@"Cannot timeout event in unknown state: %@", *(a1 + 40)];
    goto LABEL_25;
  }

  if (v4 == 1)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 40) commandID];
      *buf = 138543362;
      v35 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | asserting [is pending delivery]", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:sel_timeout object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:179 description:@"Cannot timeout event pending delivery: %@", *(a1 + 40)];
    goto LABEL_25;
  }

LABEL_30:
  os_unfair_lock_unlock((a1 + 32));
  v19 = [*(a1 + 40) command];
  v20 = [v19 commandCenter];

  v21 = [v20 delegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = objc_alloc(MEMORY[0x1E69B13F0]);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __40___MPRemoteCommandEventDispatch_timeout__block_invoke;
    v33[3] = &unk_1E7681CF0;
    v33[4] = a1;
    v33[5] = sel_timeout;
    v23 = [v22 initWithTimeout:v33 interruptionHandler:2.0];
    v24 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 40) commandID];
      *buf = 138543618;
      v35 = v25;
      v36 = 2048;
      v37 = v21;
      _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] timeout | call delegate [] delegate=%p", buf, 0x16u);
    }

    v26 = *(a1 + 40);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __40___MPRemoteCommandEventDispatch_timeout__block_invoke_76;
    v30[3] = &unk_1E7681D18;
    v31 = v23;
    v32 = a1;
    v27 = v23;
    [v21 commandCenter:v20 didTimeoutCommandEvent:v26 statusHandler:v30];
  }

  else
  {
    v28 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [*(a1 + 40) commandID];
      *buf = 138543362;
      v35 = v29;
      _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] timeout | default timeout []", buf, 0xCu);
    }
  }
}

- (void)dispatch
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  v2 = 0;
  v3 = *(a1 + 80);
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
          v12 = [*(a1 + 40) commandID];
          *buf = 138543362;
          v39 = v12;
          _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [already dispatched, timed out]", buf, 0xCu);
        }

        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:sel_dispatch object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:132 description:@"Cannot dispatch event more than once: %@", *(a1 + 40)];
        goto LABEL_30;
      }

      v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v7 = [*(a1 + 40) commandID];
      *buf = 138543362;
      v39 = v7;
      v8 = "[RCE:%{public}@] dispatch | ignoring [timed out before dispatch]";
    }

    else
    {
      if (v3 == 100)
      {
        v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [*(a1 + 40) commandID];
          *buf = 138543362;
          v39 = v16;
          _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [already finished]", buf, 0xCu);
        }

        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:sel_dispatch object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:122 description:@"Cannot dispatch event that has already finished: %@", *(a1 + 40)];
        goto LABEL_30;
      }

      if (v3 != 101)
      {
        goto LABEL_36;
      }

      v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v7 = [*(a1 + 40) commandID];
      *buf = 138543362;
      v39 = v7;
      v8 = "[RCE:%{public}@] dispatch | ignoring [already canceled]";
    }

    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);

    goto LABEL_30;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v17 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 40) commandID];
        *buf = 138543362;
        v39 = v18;
        _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] dispatch | dispatching to command handlers [was pending dispatch]", buf, 0xCu);
      }

      *(a1 + 80) = 3;
      goto LABEL_35;
    }

    if (v3 != 3)
    {
      goto LABEL_36;
    }

    v9 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 40) commandID];
      *buf = 138543362;
      v39 = v10;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [already dispatched]", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:sel_dispatch object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:118 description:@"Cannot dispatch event more than once: %@", *(a1 + 40)];
LABEL_30:

    if (*(a1 + 80) != 3)
    {
      v2 = 0;
      goto LABEL_36;
    }

LABEL_35:
    v2 = [*(a1 + 16) disarm];
    goto LABEL_36;
  }

  if (!v3)
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 40) commandID];
      *buf = 138543362;
      v39 = v14;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [unknown state]", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:sel_dispatch object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:106 description:@"Cannot dispatch event in unknown state: %@", *(a1 + 40)];
    goto LABEL_30;
  }

  if (v3 == 1)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) commandID];
      *buf = 138543362;
      v39 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | asserting [is pending delivery]", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:sel_dispatch object:a1 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:110 description:@"Cannot dispatch event pending delivery: %@", *(a1 + 40)];
    goto LABEL_30;
  }

LABEL_36:
  v19 = *(a1 + 40);
  [v19 timeout];
  if (v20 == 0.0)
  {
    v21 = [v19 command];
    [v21 timeout];
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  if (v2)
  {
    v24 = [MEMORY[0x1E695DF00] now];
    v25 = *(a1 + 56);
    *(a1 + 56) = v24;

    [*(a1 + 48) timeIntervalSinceNow];
    v23 = v23 + v26;
    v27 = objc_alloc(MEMORY[0x1E69B13F0]);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __41___MPRemoteCommandEventDispatch_dispatch__block_invoke;
    v37[3] = &unk_1E7681CA0;
    v37[4] = a1;
    v28 = [v27 initWithTimeout:v37 interruptionHandler:v23];
    objc_storeStrong((a1 + 24), v28);
  }

  else
  {
    v28 = 0;
  }

  [v19 _updateDispatch:a1];
  os_unfair_lock_unlock((a1 + 32));
  if (v2)
  {
    v29 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [*(a1 + 40) commandID];
      *buf = 138543618;
      v39 = v30;
      v40 = 2048;
      v41 = v23;
      _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] dispatch | starting dispatch response timer [] remainingTime=%0.2gs", buf, 0x16u);
    }

    v31 = [*(a1 + 40) command];
    v32 = *(a1 + 40);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __41___MPRemoteCommandEventDispatch_dispatch__block_invoke_44;
    v33[3] = &unk_1E7681CC8;
    v34 = v28;
    v35 = v19;
    v36 = a1;
    [v31 invokeCommandWithEvent:v32 completion:v33];
  }
}

- (uint64_t)state
{
  v1 = a1;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38___MPRemoteCommandEventDispatch_state__block_invoke;
    aBlock[3] = &unk_1E7682518;
    aBlock[4] = v1;
    v2 = _Block_copy(aBlock);
    v1 = *(v1 + 80);
    v2[2]();
  }

  return v1;
}

@end