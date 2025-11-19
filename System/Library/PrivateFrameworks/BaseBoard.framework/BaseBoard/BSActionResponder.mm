@interface BSActionResponder
+ (id)responderByWrappingResponder:(id)a3 withHandler:(id)a4;
+ (id)responderWithHandler:(id)a3;
- (BSActionResponder)init;
- (os_unfair_lock)_lock_underlying;
- (void)_initWithHandler:(void *)a1;
- (void)annul;
- (void)dealloc;
- (void)setQueue:(id)a3;
- (void)setTimeout:(unint64_t)a3;
@end

@implementation BSActionResponder

- (os_unfair_lock)_lock_underlying
{
  if (a1)
  {
    v1 = a1;
    os_unfair_lock_assert_owner(a1 + 10);
    v2 = *&v1[6]._os_unfair_lock_opaque;
    if (!v2)
    {
      v3 = *&v1[2]._os_unfair_lock_opaque;
      v4 = v3;
      if (!v3)
      {
        v4 = dispatch_get_global_queue(21, 0);
      }

      v5 = [_BSActionResponder originator_responderOnQueue:v4 forHandler:*&v1[4]._os_unfair_lock_opaque];
      v6 = *&v1[6]._os_unfair_lock_opaque;
      *&v1[6]._os_unfair_lock_opaque = v5;

      if (!v3)
      {
      }

      v7 = *&v1[8]._os_unfair_lock_opaque;
      if (v7 != -1)
      {
        [(_BSActionResponder *)*&v1[6]._os_unfair_lock_opaque originator_setTimeout:v7];
      }

      v8 = *&v1[2]._os_unfair_lock_opaque;
      *&v1[2]._os_unfair_lock_opaque = 0;

      v9 = *&v1[4]._os_unfair_lock_opaque;
      *&v1[4]._os_unfair_lock_opaque = 0;

      v2 = *&v1[6]._os_unfair_lock_opaque;
    }

    a1 = v2;
  }

  return a1;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_underlying)
  {
    v3 = [(BSActionResponder *)self _lock_underlying];
    [(_BSActionResponder *)v3 originator_annulWithErrorCode:?];
  }

  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = BSActionResponder;
  [(BSActionResponder *)&v4 dealloc];
}

void __36___BSActionResponder_action_encode___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = xpc_pipe_receive();
  if (v2 == 5)
  {
    v3 = [BSActionResponse responseForErrorCode:?];
    [(_BSActionResponder *)*(a1 + 32) _consumeLock_trySendResponse:v3 alreadyLocked:0 alreadyOnResponseQueue:1 fireLegacyInvalidationHandler:1];
  }

  else if (v2 == 35)
  {
    v3 = BSLogBSAction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(*(a1 + 40) + 56);
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_debug_impl(&dword_18FEF6000, v3, OS_LOG_TYPE_DEBUG, "Responder-receiveReply %@: xpc_pipe_receive unexpectedly returned EAGAIN", buf, 0xCu);
    }
  }

  else
  {
    if (v2)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    v3 = [BSActionResponse responseForErrorCode:?];
    [(_BSActionResponder *)*(a1 + 32) _consumeLock_trySendResponse:v3 alreadyLocked:0 alreadyOnResponseQueue:1 fireLegacyInvalidationHandler:1];
  }
}

void __68___BSActionResponder_action_setNullificationQueue_isLegacy_handler___block_invoke(uint64_t a1, mach_port_name_t a2)
{
  if (a2 - 1 > 0xFFFFFFFD)
  {
    return;
  }

  name = 0;
  options.8 = 0u;
  *&options.flags = 163;
  v4 = MEMORY[0x1E69E9A60];
  if (mach_port_construct(*MEMORY[0x1E69E9A60], &options, &name, &name))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (name + 1 <= 1)
  {
LABEL_11:
    _os_assert_log();
    _os_crash();
    __break(1u);
    return;
  }

  objc_initWeak(&location, *(a1 + 32));
  v19 = 0;
  v20 = &v19;
  v21 = 0x3042000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68___BSActionResponder_action_setNullificationQueue_isLegacy_handler___block_invoke_80;
  v15 = &unk_1E72CBB58;
  objc_copyWeak(v17, &location);
  v18 = name;
  v16 = &v19;
  v17[1] = &name;
  v5 = dispatch_mach_create();
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  objc_storeWeak(v20 + 5, v5);
  dispatch_mach_connect();
  previous = 0;
  v8 = mach_port_request_notification(*v4, a2, 72, 0, name, 0x15u, &previous);
  if (previous)
  {
    mach_port_deallocate(*v4, previous);
  }

  if (v8)
  {
    dispatch_mach_cancel();
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = 0;
  }

  objc_destroyWeak(v17);
  _Block_object_dispose(&v19, 8);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __68___BSActionResponder_action_setNullificationQueue_isLegacy_handler___block_invoke_80(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 8)
  {
    mach_port_destruct(*MEMORY[0x1E69E9A60], *(a1 + 56), 0, *(a1 + 48));
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    mach_msg_destroy(msg);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    if (WeakRetained)
    {
      os_unfair_lock_lock(WeakRetained + 24);
      if (v8 && *&WeakRetained[12]._os_unfair_lock_opaque == v8 && (BYTE2(WeakRetained[26]._os_unfair_lock_opaque) = 1, dispatch_mach_cancel(), v10 = *&WeakRetained[12]._os_unfair_lock_opaque, *&WeakRetained[12]._os_unfair_lock_opaque = 0, v10, *&WeakRetained[22]._os_unfair_lock_opaque))
      {
        v9 = MEMORY[0x193AE5AC0]();
        v11 = *&WeakRetained[20]._os_unfair_lock_opaque;
        if (!v11)
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing nullification queue"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v14 = NSStringFromSelector(sel__nullificationQueue_didNullifyWithMach_);
            v15 = objc_opt_class();
            v16 = NSStringFromClass(v15);
            *buf = 138544642;
            v19 = v14;
            v20 = 2114;
            v21 = v16;
            v22 = 2048;
            v23 = WeakRetained;
            v24 = 2114;
            v25 = @"BSActionResponder.m";
            v26 = 1024;
            v27 = 680;
            v28 = 2114;
            v29 = v13;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v17 = v13;
          qword_1EAD33B00 = [v13 UTF8String];
          __break(0);
          JUMPOUT(0x18FF66064);
        }

        *&WeakRetained[20]._os_unfair_lock_opaque = 0;

        v12 = *&WeakRetained[22]._os_unfair_lock_opaque;
        *&WeakRetained[22]._os_unfair_lock_opaque = 0;

        os_unfair_lock_unlock(WeakRetained + 24);
        if (v9)
        {
          v9[2](v9);
        }
      }

      else
      {
        os_unfair_lock_unlock(WeakRetained + 24);
        v9 = 0;
      }
    }
  }
}

void __44___BSActionResponder_originator_setTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 24);
    [(_BSActionResponder *)WeakRetained _consumeLock_originator_annulWithCode:1 alreadyOnResponseQueue:?];
  }
}

const os_unfair_lock *__68___BSActionResponder__descriptionBuilderOfType_withMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v3 || (os_unfair_lock_assert_owner((v3 + 96)), (*(v3 + 104) & 1) != 0) || (*(v3 + 103) & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 105) ^ 1;
  }

  v5 = [v2 appendBool:v4 & 1 withName:@"active"];
  result = *(a1 + 40);
  if ((result[25]._os_unfair_lock_opaque & 0x100) == 0)
  {
    return [*(a1 + 32) appendBool:-[_BSActionResponder _lock_canSendResponse](result) withName:@"waiting"];
  }

  return result;
}

id __68___BSActionResponder__descriptionBuilderOfType_withMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 105) withName:@"clientInvalidated"];
  result = [*(a1 + 32) appendBool:*(*(a1 + 40) + 103) withName:@"clientEncoded"];
  v4 = *(a1 + 40);
  if ((*(v4 + 101) & 1) == 0)
  {
    v5 = [*(a1 + 32) appendBool:*(v4 + 104) withName:@"clientResponded"];
    v6 = *(a1 + 40);
    v7 = 40;
    if (*(v6 + 104))
    {
      v7 = 72;
      v8 = @"response";
    }

    else
    {
      v8 = @"reply";
    }

    v9 = [*(a1 + 32) appendObject:*(v6 + v7) withName:v8];
    result = [*(a1 + 32) appendBool:*(*(a1 + 40) + 106) withName:@"annulled"];
  }

  if (*(a1 + 48) == 2)
  {
    v10 = *(a1 + 40);
    if (*(v10 + 100) == 1)
    {
      if ((*(v10 + 101) & 1) == 0 && (*(v10 + 104) & 1) == 0)
      {
        v11 = *(v10 + 72);
        if (v11)
        {
          v12 = [*(a1 + 32) appendObject:v11 withName:@"receivedResponse"];
          v10 = *(a1 + 40);
        }
      }

      v13 = [*(a1 + 32) appendObject:*(v10 + 8) withName:@"responseQueue" skipIfNil:1];
      v14 = *(a1 + 32);
      v15 = MEMORY[0x193AE5AC0](*(*(a1 + 40) + 16));
      v16 = [v14 appendObject:v15 withName:@"responseHandler" skipIfNil:1];

      v17 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"timeoutSource" skipIfNil:1];
      v18 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"replySource" skipIfNil:1];
      v10 = *(a1 + 40);
    }

    v19 = [*(a1 + 32) appendObject:*(v10 + 80) withName:@"nullificationQueue" skipIfNil:1];
    v20 = *(a1 + 32);
    v21 = MEMORY[0x193AE5AC0](*(*(a1 + 40) + 88));
    v22 = [v20 appendObject:v21 withName:@"nullificationHandler" skipIfNil:1];

    v23 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 107) withName:@"nullificationHandlerIsLegacy" ifEqualTo:1];
    v24 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"nullificationMach" skipIfNil:1];
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"inactivationStack" skipIfNil:1];
  }

  return result;
}

- (BSActionResponder)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSActionResponder"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BSAction.m";
    v18 = 1024;
    v19 = 53;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  result = [v4 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

- (void)_initWithHandler:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = BSActionResponder;
    v4 = objc_msgSendSuper2(&v8, sel_init);
    a1 = v4;
    if (v4)
    {
      *(v4 + 10) = 0;
      v5 = [v3 copy];
      v6 = a1[2];
      a1[2] = v5;

      a1[4] = -1;
    }
  }

  return a1;
}

+ (id)responderWithHandler:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      v18 = a1;
      v19 = 2114;
      v20 = @"BSAction.m";
      v21 = 1024;
      v22 = 77;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    qword_1EAD33B00 = [v8 UTF8String];
    __break(0);
    JUMPOUT(0x18FF81558);
  }

  v6 = [[BSActionResponder alloc] _initWithHandler:v5];

  return v6;
}

+ (id)responderByWrappingResponder:(id)a3 withHandler:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  NSClassFromString(&cfstr_Bsactionrespon_1.isa);
  if (!v9)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v47 = v20;
      v48 = 2114;
      v49 = v22;
      v50 = 2048;
      v51 = a1;
      v52 = 2114;
      v53 = @"BSAction.m";
      v54 = 1024;
      v55 = 82;
      v56 = 2114;
      v57 = v19;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    qword_1EAD33B00 = [v19 UTF8String];
    __break(0);
    JUMPOUT(0x18FF818C4);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSActionResponderClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v47 = v25;
      v48 = 2114;
      v49 = v27;
      v50 = 2048;
      v51 = a1;
      v52 = 2114;
      v53 = @"BSAction.m";
      v54 = 1024;
      v55 = 82;
      v56 = 2114;
      v57 = v24;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    qword_1EAD33B00 = [v24 UTF8String];
    __break(0);
    JUMPOUT(0x18FF819CCLL);
  }

  if (!v8)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v47 = v30;
      v48 = 2114;
      v49 = v32;
      v50 = 2048;
      v51 = a1;
      v52 = 2114;
      v53 = @"BSAction.m";
      v54 = 1024;
      v55 = 83;
      v56 = 2114;
      v57 = v29;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    qword_1EAD33B00 = [v29 UTF8String];
    __break(0);
    JUMPOUT(0x18FF81AD4);
  }

  os_unfair_lock_lock(v9 + 10);
  if (*(v9 + 3))
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot query after associating with an action or annulling"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(sel__queue);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v47 = v35;
      v48 = 2114;
      v49 = v37;
      v50 = 2048;
      v51 = v9;
      v52 = 2114;
      v53 = @"BSAction.m";
      v54 = 1024;
      v55 = 137;
      v56 = 2114;
      v57 = v34;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v38 = v34;
    qword_1EAD33B00 = [v34 UTF8String];
    __break(0);
    JUMPOUT(0x18FF81BD4);
  }

  v10 = *(v9 + 1);
  os_unfair_lock_unlock(v9 + 10);
  v11 = [[BSAction alloc] initWithInfo:0 responder:v9];
  v12 = [BSActionResponder alloc];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __62__BSActionResponder_responderByWrappingResponder_withHandler___block_invoke;
  v41[3] = &unk_1E72CC1F8;
  v13 = v8;
  v43 = v13;
  v44 = a2;
  v45 = a1;
  v14 = v11;
  v42 = v14;
  v15 = [(BSActionResponder *)v12 _initWithHandler:v41];
  v16 = v15;
  if (v10)
  {
    [v15 setQueue:v10];
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __62__BSActionResponder_responderByWrappingResponder_withHandler___block_invoke_64;
  v39[3] = &unk_1E72CADE8;
  v17 = v16;
  v40 = v17;
  [(BSAction *)v14 setNullificationHandler:v39];

  return v17;
}

void __62__BSActionResponder_responderByWrappingResponder_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v5 = *(a1 + 40);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__BSActionResponder_responderByWrappingResponder_withHandler___block_invoke_2;
  v18 = &unk_1E72CC1D0;
  v6 = v4;
  v22 = *(a1 + 48);
  v19 = v6;
  v21 = &v23;
  v20 = *(a1 + 32);
  (*(v5 + 16))(v5, v3, &v15);
  if ((v24[3] & 1) == 0)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = MEMORY[0x193AE5AC0](*(a1 + 40));
    v9 = [v7 stringWithFormat:@"handler failed to call wrappedHandler in scope : handler = %@", v8, v15, v16, v17, v18, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(*(a1 + 48));
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = *(a1 + 56);
      *buf = 138544642;
      v28 = v10;
      v29 = 2114;
      v30 = v12;
      v31 = 2048;
      v32 = v13;
      v33 = 2114;
      v34 = @"BSAction.m";
      v35 = 1024;
      v36 = 95;
      v37 = 2114;
      v38 = v9;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v9;
    qword_1EAD33B00 = [v9 UTF8String];
    __break(0);
    JUMPOUT(0x18FF81F50);
  }

  _Block_object_dispose(&v23, 8);
}

void __62__BSActionResponder_responderByWrappingResponder_withHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AF00] currentThread];

  if (v3 != v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handler failed to call wrappedHandler in scope"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 64);
      *buf = 138544642;
      v19 = v6;
      v20 = 2114;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      v24 = 2114;
      v25 = @"BSAction.m";
      v26 = 1024;
      v27 = 90;
      v28 = 2114;
      v29 = v5;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v5;
    qword_1EAD33B00 = [v5 UTF8String];
    __break(0);
    JUMPOUT(0x18FF82178);
  }

  if (!v17)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handler failed to call wrappedHandler with a valid response"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(*(a1 + 56));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 64);
      *buf = 138544642;
      v19 = v12;
      v20 = 2114;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      v24 = 2114;
      v25 = @"BSAction.m";
      v26 = 1024;
      v27 = 91;
      v28 = 2114;
      v29 = v11;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v11;
    qword_1EAD33B00 = [v11 UTF8String];
    __break(0);
    JUMPOUT(0x18FF82278);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 40) sendResponse:?];
}

- (void)setQueue:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v18 = v8;
      v19 = 2114;
      v20 = v10;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"BSAction.m";
      v25 = 1024;
      v26 = 107;
      v27 = 2114;
      v28 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF82490);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_underlying)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot mutate queue after associating with an action or annulling"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"BSAction.m";
      v25 = 1024;
      v26 = 109;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    qword_1EAD33B00 = [v12 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8258CLL);
  }

  lock_queue = self->_lock_queue;
  self->_lock_queue = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTimeout:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_underlying)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot mutate timeout after associating with an action or annulling"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138544642;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"BSAction.m";
      v19 = 1024;
      v20 = 116;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    v10 = v6;
    qword_1EAD33B00 = [v6 UTF8String];
    __break(0);
    JUMPOUT(0x18FF82770);
  }

  self->_lock_timeout = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)annul
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BSActionResponder *)self _lock_underlying];
  [(_BSActionResponder *)v3 originator_annulWithErrorCode:?];

  os_unfair_lock_unlock(&self->_lock);
}

@end