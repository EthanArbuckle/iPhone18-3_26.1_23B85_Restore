@interface _BSActionResponder
+ (os_unfair_lock_s)action_decodeFromXPCObject:(uint64_t)a1;
+ (void)originator_nullResponder;
+ (void)originator_responderOnQueue:(void *)a3 forHandler:;
- (_BSActionResponder)init;
- (const)_lock_canSendResponse;
- (const)_lock_invalidateForEncode:(const os_unfair_lock *)result;
- (id)_descriptionBuilderOfType:(os_unfair_lock_s *)a1 withMultilinePrefix:(uint64_t)a2;
- (id)action_encode:(uint64_t)a1;
- (id)action_fullIdentifier;
- (id)action_shortIdentifier;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (os_unfair_lock_s)_initWithReply:(os_unfair_lock_s *)a1;
- (os_unfair_lock_s)action_canSendResponse;
- (os_unfair_lock_s)action_isValid;
- (uint64_t)_consumeLock_trySendResponse:(int)a3 alreadyLocked:(int)a4 alreadyOnResponseQueue:(int)a5 fireLegacyInvalidationHandler:;
- (uint64_t)_lock_isValid;
- (uint64_t)action:(void *)a3 sendResponse:;
- (void)_consumeLock_originator_annulWithCode:(int)a3 alreadyOnResponseQueue:;
- (void)_initWithQueue:(void *)a3 handler:;
- (void)_lock_logResponse:(uint64_t)a1;
- (void)action:(void *)a3 setNullificationQueue:(int)a4 isLegacy:(void *)a5 handler:;
- (void)action_didDealloc;
- (void)action_invalidate;
- (void)dealloc;
- (void)originator_annulWithErrorCode:(os_unfair_lock_s *)a1;
- (void)originator_didInit:(uint64_t)a1;
- (void)originator_setTimeout:(uint64_t)a1;
@end

@implementation _BSActionResponder

- (void)action_invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 96));
  if (*(a1 + 105) == 1)
  {
    v2 = a1;
LABEL_20:
    [(_BSActionResponder *)v2 _lock_invalidateForEncode:?];

    os_unfair_lock_unlock((a1 + 96));
    return;
  }

  os_unfair_lock_assert_owner((a1 + 96));
  if (*(a1 + 104) & 1) != 0 || (*(a1 + 103))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 105) ^ 1;
  }

  *(a1 + 105) = 1;
  if (!*(a1 + 64))
  {
    v4 = [MEMORY[0x1E696AF00] callStackSymbols];
    v5 = *(a1 + 64);
    *(a1 + 64) = v4;
  }

  v2 = a1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_20;
  }

  if ([(_BSActionResponder *)a1 _lock_canSendResponse])
  {
    v6 = BSLogBSAction();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 56);
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_18FEF6000, v6, OS_LOG_TYPE_INFO, "Invalidate %{public}@", &v10, 0xCu);
    }
  }

  if (*(a1 + 102))
  {
    v8 = 1;
  }

  else
  {
    v8 = 5;
  }

  v9 = [BSActionResponse responseForErrorCode:v8];
  [(_BSActionResponder *)a1 _consumeLock_trySendResponse:v9 alreadyLocked:1 alreadyOnResponseQueue:0 fireLegacyInvalidationHandler:1];
}

- (const)_lock_canSendResponse
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 24);
    result = 0;
    if ((v1[25]._os_unfair_lock_opaque & 0x100) == 0 && (v1[26]._os_unfair_lock_opaque & 0x10000) == 0)
    {
      os_unfair_lock_assert_owner(v1 + 24);
      if ((v1[26]._os_unfair_lock_opaque & 1) == 0 && (v1[25]._os_unfair_lock_opaque & 0x1000000) == 0 && BYTE1(v1[26]._os_unfair_lock_opaque) != 1)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)action_didDealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    os_unfair_lock_assert_owner((a1 + 96));
    if (*(a1 + 104) & 1) != 0 || (*(a1 + 103) & 1) != 0 || (*(a1 + 105))
    {

      os_unfair_lock_unlock((a1 + 96));
    }

    else
    {
      if ([(_BSActionResponder *)a1 _lock_canSendResponse])
      {
        v2 = BSLogBSAction();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          v3 = *(a1 + 56);
          v5 = 138543362;
          v6 = v3;
          _os_log_impl(&dword_18FEF6000, v2, OS_LOG_TYPE_INFO, "Dealloc %{public}@", &v5, 0xCu);
        }
      }

      v4 = [BSActionResponse responseForErrorCode:?];
      [(_BSActionResponder *)a1 _consumeLock_trySendResponse:v4 alreadyLocked:1 alreadyOnResponseQueue:0 fireLegacyInvalidationHandler:1];
    }
  }
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self || (os_unfair_lock_assert_owner(&self->_lock), self->_lock_action_sent) || self->_lock_action_encoded || self->_lock_action_invalidated)
  {
    if (self->_lock_originator_responseHandler)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"response handler must have been called by now"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v13 = v7;
        v14 = 2114;
        v15 = v9;
        v16 = 2048;
        v17 = self;
        v18 = 2114;
        v19 = @"BSActionResponder.m";
        v20 = 1024;
        v21 = 96;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      qword_1EAD33B00 = [v6 UTF8String];
      __break(0);
      JUMPOUT(0x18FF1432CLL);
    }

    lock_nullificationHandler = self->_lock_nullificationHandler;
    if (lock_nullificationHandler && self->_lock_nullificationHandlerIsLegacy)
    {
      dispatch_async(self->_lock_nullificationQueue, lock_nullificationHandler);
    }

    [(_BSActionResponder *)self _lock_invalidateForEncode:?];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [BSActionResponse responseForErrorCode:?];
    [(_BSActionResponder *)self _consumeLock_trySendResponse:v5 alreadyLocked:1 alreadyOnResponseQueue:0 fireLegacyInvalidationHandler:1];
  }

  v11.receiver = self;
  v11.super_class = _BSActionResponder;
  [(_BSActionResponder *)&v11 dealloc];
}

- (id)action_shortIdentifier
{
  if (a1 && ([(_BSActionResponder *)a1 action_fullIdentifier], (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = v1;
    v3 = [v1 rangeOfString:@"0x"];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = [v2 substringWithRange:{v3, objc_msgSend(v2, "length") + ~v3}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)action_fullIdentifier
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    v2 = *(a1 + 56);
    os_unfair_lock_unlock((a1 + 96));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (os_unfair_lock_s)action_canSendResponse
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 24);
    v2 = [(_BSActionResponder *)v1 _lock_canSendResponse];
    os_unfair_lock_unlock(&v1[24]);
    return v2;
  }

  return result;
}

- (os_unfair_lock_s)action_isValid
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 24);
    v2 = [(_BSActionResponder *)v1 _lock_isValid];
    os_unfair_lock_unlock(v1 + 24);
    return v2;
  }

  return result;
}

- (uint64_t)_lock_isValid
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner((result + 96));
    os_unfair_lock_assert_owner((v1 + 96));
    if (*(v1 + 104) & 1) != 0 || (*(v1 + 103) & 1) != 0 || (*(v1 + 105) & 1) != 0 || (*(v1 + 106))
    {
      return 0;
    }

    else if (*(v1 + 100) & 1) != 0 || (*(v1 + 101))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 40);

      return [v2 isUsable];
    }
  }

  return result;
}

+ (void)originator_nullResponder
{
  objc_opt_self();
  v0 = [[_BSActionResponder alloc] _initWithQueue:0 handler:?];

  return v0;
}

- (_BSActionResponder)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSActionResponseObserver"];
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
    v17 = @"BSActionResponder.m";
    v18 = 1024;
    v19 = 58;
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

- (void)_initWithQueue:(void *)a3 handler:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = _BSActionResponder;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      *(v8 + 24) = 0;
      *(v8 + 100) = 1;
      if (v7)
      {
        objc_storeStrong(v8 + 1, a2);
        v9 = [v7 copy];
        v10 = a1[2];
        a1[2] = v9;
      }

      else
      {
        *(v8 + 101) = 1;
      }
    }
  }

  return a1;
}

- (os_unfair_lock_s)_initWithReply:(os_unfair_lock_s *)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = v4;
    if (v6)
    {
      NSClassFromString(&cfstr_Bsmachportsend_0.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSMachPortSendOnceRightClass]"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = NSStringFromSelector(sel__initWithReply_);
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          *buf = 138544642;
          v17 = v11;
          v18 = 2114;
          v19 = v13;
          v20 = 2048;
          v21 = a1;
          v22 = 2114;
          v23 = @"BSActionResponder.m";
          v24 = 1024;
          v25 = 77;
          v26 = 2114;
          v27 = v10;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v14 = v10;
        qword_1EAD33B00 = [v10 UTF8String];
        __break(0);
        JUMPOUT(0x18FF636D4);
      }
    }

    v15.receiver = a1;
    v15.super_class = _BSActionResponder;
    v7 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v7;
    if (v7)
    {
      *(v7 + 24) = 0;
      if (v6)
      {
        objc_storeStrong(v7 + 5, a2);
        v8 = [(BSMachPortRight *)a1[5] _port];
        if (v8)
        {
          [(BSMachPortRight *)a1[5] _port];
        }

        *(a1 + 106) = v8 == 0;
      }

      else
      {
        *(v7 + 101) = 1;
      }
    }
  }

  return a1;
}

- (uint64_t)_consumeLock_trySendResponse:(int)a3 alreadyLocked:(int)a4 alreadyOnResponseQueue:(int)a5 fireLegacyInvalidationHandler:
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = v10;
  if (!a1)
  {
    v55 = 0;
    goto LABEL_56;
  }

  v11 = v10;
  NSClassFromString(&cfstr_Bsactionrespon_0.isa);
  if (!v11)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(sel__consumeLock_trySendResponse_alreadyLocked_alreadyOnResponseQueue_fireLegacyInvalidationHandler_);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544642;
      v57 = v43;
      v58 = 2114;
      *v59 = v45;
      *&v59[8] = 2048;
      *&v59[10] = a1;
      v60 = 2114;
      v61 = @"BSActionResponder.m";
      v62 = 1024;
      v63 = 557;
      v64 = 2114;
      v65 = v42;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v46 = v42;
    qword_1EAD33B00 = [v42 UTF8String];
    __break(0);
    JUMPOUT(0x18FF63E24);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSActionResponseClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = NSStringFromSelector(sel__consumeLock_trySendResponse_alreadyLocked_alreadyOnResponseQueue_fireLegacyInvalidationHandler_);
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      *buf = 138544642;
      v57 = v48;
      v58 = 2114;
      *v59 = v50;
      *&v59[8] = 2048;
      *&v59[10] = a1;
      v60 = 2114;
      v61 = @"BSActionResponder.m";
      v62 = 1024;
      v63 = 557;
      v64 = 2114;
      v65 = v47;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v51 = v47;
    qword_1EAD33B00 = [v47 UTF8String];
    __break(0);
    JUMPOUT(0x18FF63F2CLL);
  }

  v12 = (a1 + 96);
  if (a3)
  {
    os_unfair_lock_assert_owner(v12);
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    os_unfair_lock_lock(v12);
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    dispatch_assert_queue_V2(v13);
  }

LABEL_10:
  v14 = *(a1 + 72);
  if (v14)
  {
    v15 = v14;

    v11 = v15;
  }

  else
  {
    objc_storeStrong((a1 + 72), a2);
  }

  v16 = *(a1 + 40);
  if (!v16)
  {
    v25 = *(a1 + 24);
    if (v25)
    {
      dispatch_source_cancel(v25);
      v26 = *(a1 + 24);
      *(a1 + 24) = 0;
    }

    if (*(a1 + 32))
    {
      [(_BSActionResponder *)a1 _lock_logResponse:v11];
      dispatch_source_cancel(*(a1 + 32));
      v27 = *(a1 + 32);
      *(a1 + 32) = 0;
    }

    v28 = *(a1 + 16);
    if (v28)
    {
      if (a4)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(a1 + 8);
        v28 = *(a1 + 16);
      }

      v33 = MEMORY[0x193AE5AC0](v28);
      v34 = *(a1 + 16);
      *(a1 + 16) = 0;

      v32 = 1;
    }

    else
    {
      v33 = 0;
      v29 = 0;
      v32 = 0;
    }

    goto LABEL_45;
  }

  v17 = [v16 extractPortAndIKnowWhatImDoingISwear];
  v18 = v17;
  if (v17 - 1 > 0xFFFFFFFD)
  {
    if (v17)
    {
      v30 = BSLogBSAction();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 56);
        *buf = 138543362;
        v57 = v31;
        _os_log_impl(&dword_18FEF6000, v30, OS_LOG_TYPE_DEFAULT, "Reply failed %{public}@: port is invalid (originating action likely timed out)", buf, 0xCu);
      }

      BSMachSendRightRelease(v18);
    }

    v32 = 0;
    goto LABEL_44;
  }

  [(_BSActionResponder *)a1 _lock_logResponse:v11];
  reply_from_port = xpc_pipe_create_reply_from_port();
  if (!reply_from_port)
  {
    v35 = BSLogBSAction();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 56);
      *buf = 138543362;
      v57 = v40;
      _os_log_error_impl(&dword_18FEF6000, v35, OS_LOG_TYPE_ERROR, "Reply failed %{public}@: xpc_pipe_create_reply_from_port() failed to create a reply", buf, 0xCu);
    }

    BSMachSendRightRelease(v18);
    goto LABEL_42;
  }

  v20 = BSSerializeBSXPCEncodableObjectToXPCDictionary(v11, reply_from_port);
  v21 = xpc_pipe_routine_reply();
  v22 = v21;
  if (v21)
  {
    if (v21 == 32)
    {
      v23 = BSLogBSAction();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 56);
        *buf = 138543362;
        v57 = v24;
        _os_log_impl(&dword_18FEF6000, v23, OS_LOG_TYPE_DEFAULT, "Reply failed %{public}@: receiver is no longer valid (EPIPE)", buf, 0xCu);
      }
    }

    else
    {
      v23 = BSLogBSAction();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 56);
        *buf = 138543874;
        v57 = v41;
        v58 = 1024;
        *v59 = v22;
        *&v59[4] = 2082;
        *&v59[6] = strerror(v22);
        _os_log_error_impl(&dword_18FEF6000, v23, OS_LOG_TYPE_ERROR, "Reply failed %{public}@: xpc_pipe_routine_reply() returned %i (%{public}s)", buf, 0x1Cu);
      }
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  v32 = 1;
LABEL_43:

LABEL_44:
  [*(a1 + 40) invalidate];
  v33 = 0;
  v29 = 0;
LABEL_45:
  v36 = *(a1 + 80);
  if (a5 && *(a1 + 107) == 1)
  {
    v37 = *(a1 + 88);
  }

  else
  {
    v37 = 0;
  }

  v38 = MEMORY[0x193AE5AC0](v37);
  [(_BSActionResponder *)a1 _lock_invalidateForEncode:?];
  os_unfair_lock_unlock((a1 + 96));
  if (v33)
  {
    if (v29)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __118___BSActionResponder__consumeLock_trySendResponse_alreadyLocked_alreadyOnResponseQueue_fireLegacyInvalidationHandler___block_invoke;
      block[3] = &unk_1E72CB2B0;
      v54 = v33;
      v53 = v11;
      dispatch_async(v29, block);
    }

    else
    {
      (v33)[2](v33, v11);
    }
  }

  if (v38)
  {
    dispatch_async(v36, v38);
  }

  v55 = v32;

LABEL_56:
  return v55;
}

- (const)_lock_invalidateForEncode:(const os_unfair_lock *)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_assert_owner(result + 24);
    if (!a2 || HIBYTE(v3[26]._os_unfair_lock_opaque) != 1 || (v3[25]._os_unfair_lock_opaque & 1) == 0)
    {
      v4 = *&v3[20]._os_unfair_lock_opaque;
      *&v3[20]._os_unfair_lock_opaque = 0;

      v5 = *&v3[22]._os_unfair_lock_opaque;
      *&v3[22]._os_unfair_lock_opaque = 0;
    }

    if (*&v3[12]._os_unfair_lock_opaque)
    {
      dispatch_mach_cancel();
      v6 = *&v3[12]._os_unfair_lock_opaque;
      *&v3[12]._os_unfair_lock_opaque = 0;
    }

    v7 = *&v3[10]._os_unfair_lock_opaque;

    return [v7 invalidate];
  }

  return result;
}

- (uint64_t)action:(void *)a3 sendResponse:
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = v6;
    NSClassFromString(&cfstr_Bsactionrespon_0.isa);
    if (!v8)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel_action_sendResponse_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v34 = v24;
        v35 = 2114;
        v36 = v26;
        v37 = 2048;
        v38 = a1;
        v39 = 2114;
        v40 = @"BSActionResponder.m";
        v41 = 1024;
        v42 = 131;
        v43 = 2114;
        v44 = v23;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      qword_1EAD33B00 = [v23 UTF8String];
      __break(0);
      JUMPOUT(0x18FF644DCLL);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSActionResponseClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel_action_sendResponse_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v34 = v29;
        v35 = 2114;
        v36 = v31;
        v37 = 2048;
        v38 = a1;
        v39 = 2114;
        v40 = @"BSActionResponder.m";
        v41 = 1024;
        v42 = 131;
        v43 = 2114;
        v44 = v28;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = v28;
      qword_1EAD33B00 = [v28 UTF8String];
      __break(0);
      JUMPOUT(0x18FF645E4);
    }

    os_unfair_lock_lock((a1 + 96));
    os_unfair_lock_assert_owner((a1 + 96));
    if ((*(a1 + 104) & 1) != 0 || (*(a1 + 103) & 1) != 0 || *(a1 + 105) == 1)
    {
      v12 = *(a1 + 64);
      os_unfair_lock_unlock((a1 + 96));
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -sendResponse: from an inactive instance : action=%@\nprevious inactivation was at %@", v5, v12];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(sel_action_sendResponse_);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v34 = v14;
        v35 = 2114;
        v36 = v16;
        v37 = 2048;
        v38 = a1;
        v39 = 2114;
        v40 = @"BSActionResponder.m";
        v41 = 1024;
        v42 = 136;
        v43 = 2114;
        v44 = v13;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v17 = v13;
      qword_1EAD33B00 = [v13 UTF8String];
      __break(0);
      JUMPOUT(0x18FF642CCLL);
    }

    *(a1 + 104) = 1;
    v9 = [MEMORY[0x1E696AF00] callStackSymbols];
    v10 = *(a1 + 64);
    *(a1 + 64) = v9;

    if (*(a1 + 101) == 1)
    {
      os_unfair_lock_unlock((a1 + 96));
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -sendResponse: if no response was expected : action=%@", v5];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel_action_sendResponse_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v34 = v19;
        v35 = 2114;
        v36 = v21;
        v37 = 2048;
        v38 = a1;
        v39 = 2114;
        v40 = @"BSActionResponder.m";
        v41 = 1024;
        v42 = 142;
        v43 = 2114;
        v44 = v18;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      qword_1EAD33B00 = [v18 UTF8String];
      __break(0);
      JUMPOUT(0x18FF643D4);
    }

    a1 = [(_BSActionResponder *)a1 _consumeLock_trySendResponse:v8 alreadyLocked:1 alreadyOnResponseQueue:0 fireLegacyInvalidationHandler:0];
  }

  return a1;
}

- (id)action_encode:(uint64_t)a1
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_49;
  }

  os_unfair_lock_lock((a1 + 96));
  os_unfair_lock_assert_owner((a1 + 96));
  if ((*(a1 + 104) & 1) != 0 || (*(a1 + 103) & 1) != 0 || *(a1 + 105) == 1)
  {
    v11 = *(a1 + 64);
    os_unfair_lock_unlock((a1 + 96));
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -encode from an inactive instance : action=%@\nprevious inactivation was at %@", v3, v11];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(sel_action_encode_);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      buf.flags = 138544642;
      *&buf.mpl.mpl_qlimit = v13;
      *(&buf.service_port_name + 2) = 2114;
      *(buf.reserved + 6) = v15;
      *(&buf.service_port_name + 7) = 2048;
      v52 = a1;
      v53 = 2114;
      v54 = @"BSActionResponder.m";
      v55 = 1024;
      v56 = 155;
      v57 = 2114;
      v58 = v12;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &buf, 0x3Au);
    }

    v16 = v12;
    qword_1EAD33B00 = [v12 UTF8String];
    __break(0);
    JUMPOUT(0x18FF64914);
  }

  *(a1 + 103) = 1;
  v4 = [MEMORY[0x1E696AF00] callStackSymbols];
  v5 = *(a1 + 64);
  *(a1 + 64) = v4;

  if (*(a1 + 101))
  {
    v6 = 0;
LABEL_30:
    [(_BSActionResponder *)a1 _lock_invalidateForEncode:?];
    os_unfair_lock_unlock((a1 + 96));
    goto LABEL_31;
  }

  v7 = BSLogBSAction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 56);
    buf.flags = 138543362;
    *&buf.mpl.mpl_qlimit = v8;
    _os_log_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_INFO, "Encode %{public}@", &buf, 0xCu);
  }

  if (*(a1 + 100) != 1)
  {
    v9 = *(a1 + 40);
    goto LABEL_13;
  }

  if (*(a1 + 106))
  {
    v9 = [[BSMachPortSendOnceRight alloc] initWithPort:0];
LABEL_13:
    v10 = v9;
LABEL_24:
    if (!v10)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must have a reply even if it is invalid"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(sel_action_encode_);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        buf.flags = 138544642;
        *&buf.mpl.mpl_qlimit = v27;
        *(&buf.service_port_name + 2) = 2114;
        *(buf.reserved + 6) = v29;
        *(&buf.service_port_name + 7) = 2048;
        v52 = a1;
        v53 = 2114;
        v54 = @"BSActionResponder.m";
        v55 = 1024;
        v56 = 236;
        v57 = 2114;
        v58 = v26;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &buf, 0x3Au);
      }

      v30 = v26;
      qword_1EAD33B00 = [v26 UTF8String];
      __break(0);
      JUMPOUT(0x18FF64C6CLL);
    }

    v23 = xpc_dictionary_create(0, 0, 0);
    v6 = v23;
    if (*(a1 + 102) == 1)
    {
      xpc_dictionary_set_BOOL(v23, "bsar_isnp", 1);
    }

    v24 = *(a1 + 56);
    if (v24)
    {
      xpc_dictionary_set_string(v6, "bsar_aid", [v24 UTF8String]);
    }

    [(BSMachPortRight *)v10 encodeWithXPCDictionary:v6];
    [(BSMachPortRight *)v10 invalidate];

    goto LABEL_30;
  }

  if (!*(a1 + 8))
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing response queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(sel_action_encode_);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      buf.flags = 138544642;
      *&buf.mpl.mpl_qlimit = v32;
      *(&buf.service_port_name + 2) = 2114;
      *(buf.reserved + 6) = v34;
      *(&buf.service_port_name + 7) = 2048;
      v52 = a1;
      v53 = 2114;
      v54 = @"BSActionResponder.m";
      v55 = 1024;
      v56 = 167;
      v57 = 2114;
      v58 = v31;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &buf, 0x3Au);
    }

    v35 = v31;
    qword_1EAD33B00 = [v31 UTF8String];
    __break(0);
    JUMPOUT(0x18FF64D68);
  }

  if (!*(a1 + 16))
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing response handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(sel_action_encode_);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      buf.flags = 138544642;
      *&buf.mpl.mpl_qlimit = v37;
      *(&buf.service_port_name + 2) = 2114;
      *(buf.reserved + 6) = v39;
      *(&buf.service_port_name + 7) = 2048;
      v52 = a1;
      v53 = 2114;
      v54 = @"BSActionResponder.m";
      v55 = 1024;
      v56 = 168;
      v57 = 2114;
      v58 = v36;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &buf, 0x3Au);
    }

    v40 = v36;
    qword_1EAD33B00 = [v36 UTF8String];
    __break(0);
    JUMPOUT(0x18FF64E64);
  }

  if (*(a1 + 32))
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mach source already set up"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(sel_action_encode_);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      buf.flags = 138544642;
      *&buf.mpl.mpl_qlimit = v42;
      *(&buf.service_port_name + 2) = 2114;
      *(buf.reserved + 6) = v44;
      *(&buf.service_port_name + 7) = 2048;
      v52 = a1;
      v53 = 2114;
      v54 = @"BSActionResponder.m";
      v55 = 1024;
      v56 = 169;
      v57 = 2114;
      v58 = v41;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &buf, 0x3Au);
    }

    v45 = v41;
    qword_1EAD33B00 = [v41 UTF8String];
    __break(0);
    JUMPOUT(0x18FF64F60);
  }

  name = 0;
  buf.8 = 0u;
  *&buf.flags = 163;
  if (mach_port_construct(*MEMORY[0x1E69E9A60], &buf, a1 + 96, &name))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else if (name + 1 > 1)
  {
    SendOnceRight = BSMachCreateSendOnceRight(name);
    if ((SendOnceRight + 1) >= 2)
    {
      v10 = [[BSMachPortSendOnceRight alloc] initWithPort:SendOnceRight];
      v18 = dispatch_source_create(MEMORY[0x1E69E96D8], name, 0, *(a1 + 8));
      v19 = *(a1 + 32);
      *(a1 + 32) = v18;

      v20 = *(a1 + 32);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __36___BSActionResponder_action_encode___block_invoke;
      handler[3] = &__block_descriptor_44_e5_v8__0l;
      v49 = name;
      handler[4] = a1 + 96;
      dispatch_source_set_cancel_handler(v20, handler);
      v21 = *(a1 + 32);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __36___BSActionResponder_action_encode___block_invoke_2;
      v46[3] = &unk_1E72CBB30;
      v47 = name;
      v46[4] = a1;
      v46[5] = a1;
      v22 = a1;
      dispatch_source_set_event_handler(v21, v46);
      dispatch_resume(*(a1 + 32));

      goto LABEL_24;
    }

    goto LABEL_48;
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
LABEL_48:
  _os_assert_log();
  _os_crash();
  __break(1u);
LABEL_49:
  v6 = 0;
LABEL_31:

  return v6;
}

+ (os_unfair_lock_s)action_decodeFromXPCObject:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = v4;
  if (!v4)
  {
LABEL_6:
    v9 = [[_BSActionResponder alloc] _initWithReply:?];
    goto LABEL_14;
  }

  Class = object_getClass(v4);
  v7 = MEMORY[0x1E69E9E80];

  if (Class != v7)
  {
    v8 = BSLogBSAction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543362;
      v20 = v5;
      _os_log_error_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_ERROR, "Responder-decode: unexpected encoding -> %{public}@", &v19, 0xCu);
    }

    goto LABEL_6;
  }

  v10 = [(BSMachPortRight *)[BSMachPortSendOnceRight alloc] initWithXPCDictionary:v5];
  if (!v10)
  {
    v17 = v3;
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:sel_action_decodeFromXPCObject_ object:v17 file:@"BSActionResponder.m" lineNumber:256 description:@"must decode to a reply even if it is invalid"];
  }

  v9 = [[_BSActionResponder alloc] _initWithReply:v10];
  *(v9 + 102) = xpc_dictionary_get_BOOL(v5, "bsar_isnp");
  string = xpc_dictionary_get_string(v5, "bsar_aid");
  if (string)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v13 = v9[7];
    v9[7] = v12;

    v14 = BSLogBSAction();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v9[7];
      v19 = 138543362;
      v20 = v15;
      _os_log_impl(&dword_18FEF6000, v14, OS_LOG_TYPE_INFO, "Decode %{public}@", &v19, 0xCu);
    }
  }

LABEL_14:

  return v9;
}

- (void)action:(void *)a3 setNullificationQueue:(int)a4 isLegacy:(void *)a5 handler:
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    if (*(a1 + 48))
    {
      dispatch_mach_cancel();
      v12 = *(a1 + 80);
      *(a1 + 80) = 0;

      v13 = *(a1 + 48);
      *(a1 + 48) = 0;
    }

    if (!v11)
    {
      v14 = *(a1 + 80);
      *(a1 + 80) = 0;

      v15 = *(a1 + 88);
      *(a1 + 88) = 0;

LABEL_19:
      os_unfair_lock_unlock((a1 + 96));
      goto LABEL_20;
    }

    if (v10)
    {
      if (a4)
      {
LABEL_7:
        if ((*(a1 + 104) & 1) != 0 || *(a1 + 103) == 1)
        {
          goto LABEL_18;
        }

        if (*(a1 + 105))
        {
LABEL_17:
          dispatch_async(v10, v11);
LABEL_18:

          v11 = 0;
          goto LABEL_19;
        }

LABEL_16:
        if (*(a1 + 106) != 1)
        {
          objc_storeStrong((a1 + 80), v10);
          v16 = [v11 copy];
          v17 = *(a1 + 88);
          *(a1 + 88) = v16;

          *(a1 + 107) = a4;
          v18 = *(a1 + 40);
          if (v18)
          {
            if (*(a1 + 48))
            {
              v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dispatch mach already set up"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v30 = NSStringFromSelector(sel_action_setNullificationQueue_isLegacy_handler_);
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                *buf = 138544642;
                v37 = v30;
                v38 = 2114;
                v39 = v32;
                v40 = 2048;
                v41 = a1;
                v42 = 2114;
                v43 = @"BSActionResponder.m";
                v44 = 1024;
                v45 = 341;
                v46 = 2114;
                v47 = v29;
                _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              v33 = v29;
              qword_1EAD33B00 = [v29 UTF8String];
              __break(0);
              JUMPOUT(0x18FF65B00);
            }

            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __68___BSActionResponder_action_setNullificationQueue_isLegacy_handler___block_invoke;
            v34[3] = &unk_1E72CBB80;
            v34[4] = a1;
            v19 = v10;
            v35 = v19;
            [v18 accessPort:v34];
            if (!*(a1 + 48))
            {
              *(a1 + 106) = 1;
              v20 = *(a1 + 88);
              if (v20)
              {
                dispatch_async(*(a1 + 80), v20);
                v21 = *(a1 + 80);
                *(a1 + 80) = 0;

                v22 = *(a1 + 88);
                *(a1 + 88) = 0;
              }
            }

            v10 = v19;
          }

          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = dispatch_get_global_queue(21, 0);
      if (a4)
      {
        goto LABEL_7;
      }
    }

    os_unfair_lock_assert_owner((a1 + 96));
    if ((*(a1 + 104) & 1) != 0 || (*(a1 + 103) & 1) != 0 || *(a1 + 105) == 1)
    {
      v23 = *(a1 + 64);
      os_unfair_lock_unlock((a1 + 96));
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -setNullificationHandler: on an inactive instance : action=%@\nprevious inactivation was at %@", v9, v23];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel_action_setNullificationQueue_isLegacy_handler_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v37 = v25;
        v38 = 2114;
        v39 = v27;
        v40 = 2048;
        v41 = a1;
        v42 = 2114;
        v43 = @"BSActionResponder.m";
        v44 = 1024;
        v45 = 326;
        v46 = 2114;
        v47 = v24;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      qword_1EAD33B00 = [v24 UTF8String];
      __break(0);
      JUMPOUT(0x18FF65A04);
    }

    goto LABEL_16;
  }

LABEL_20:
}

- (void)originator_didInit:(uint64_t)a1
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 100) & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be called on the originator"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(sel_originator_didInit_);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v22 = v12;
        v23 = 2114;
        v24 = v14;
        v25 = 2048;
        v26 = a1;
        v27 = 2114;
        v28 = @"BSActionResponder.m";
        v29 = 1024;
        v30 = 442;
        v31 = 2114;
        v32 = v11;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v15 = v11;
      qword_1EAD33B00 = [v11 UTF8String];
      __break(0);
      JUMPOUT(0x18FF662FCLL);
    }

    os_unfair_lock_lock((a1 + 96));
    if (*(a1 + 56))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_action_identifier == nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(sel_originator_didInit_);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138544642;
        v22 = v17;
        v23 = 2114;
        v24 = v19;
        v25 = 2048;
        v26 = a1;
        v27 = 2114;
        v28 = @"BSActionResponder.m";
        v29 = 1024;
        v30 = 444;
        v31 = 2114;
        v32 = v16;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v20 = v16;
      qword_1EAD33B00 = [v16 UTF8String];
      __break(0);
      JUMPOUT(0x18FF66404);
    }

    if ((*(a1 + 101) & 1) == 0)
    {
      add_explicit = atomic_fetch_add_explicit(&originator_didInit____count, 1u, memory_order_relaxed);
      v5 = MEMORY[0x1E696AEC0];
      v6 = NSStringFromClass(a2);
      v7 = [v5 stringWithFormat:@"<%@: 0x%04x%04x>", v6, getpid(), add_explicit];
      v8 = *(a1 + 56);
      *(a1 + 56) = v7;

      v9 = BSLogBSAction();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 56);
        *buf = 138543362;
        v22 = v10;
        _os_log_debug_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_DEBUG, "Alloc %{public}@", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock((a1 + 96));
  }
}

+ (void)originator_responderOnQueue:(void *)a3 forHandler:
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (!v4)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(sel_originator_responderOnQueue_forHandler_);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = v6;
      v25 = 2114;
      v26 = @"BSActionResponder.m";
      v27 = 1024;
      v28 = 455;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    qword_1EAD33B00 = [v9 UTF8String];
    __break(0);
    JUMPOUT(0x18FF66630);
  }

  if (!v5)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(sel_originator_responderOnQueue_forHandler_);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      v23 = 2048;
      v24 = v6;
      v25 = 2114;
      v26 = @"BSActionResponder.m";
      v27 = 1024;
      v28 = 456;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    qword_1EAD33B00 = [v14 UTF8String];
    __break(0);
    JUMPOUT(0x18FF66738);
  }

  v7 = [[_BSActionResponder alloc] _initWithQueue:v4 handler:v5];

  return v7;
}

- (void)originator_setTimeout:(uint64_t)a1
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 100) & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be called on the originator"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel_originator_setTimeout_);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *location = 138544642;
        *&location[4] = v11;
        v28 = 2114;
        v29 = v13;
        v30 = 2048;
        v31 = a1;
        v32 = 2114;
        v33 = @"BSActionResponder.m";
        v34 = 1024;
        v35 = 471;
        v36 = 2114;
        v37 = v10;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
      }

      v14 = v10;
      qword_1EAD33B00 = [v10 UTF8String];
      __break(0);
      JUMPOUT(0x18FF66A14);
    }

    os_unfair_lock_lock((a1 + 96));
    v4 = *(a1 + 24);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 24);
      *(a1 + 24) = 0;
    }

    if (a2 != -1 && !*(a1 + 72))
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing response queue"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v16 = NSStringFromSelector(sel_originator_setTimeout_);
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *location = 138544642;
          *&location[4] = v16;
          v28 = 2114;
          v29 = v18;
          v30 = 2048;
          v31 = a1;
          v32 = 2114;
          v33 = @"BSActionResponder.m";
          v34 = 1024;
          v35 = 478;
          v36 = 2114;
          v37 = v15;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
        }

        v19 = v15;
        qword_1EAD33B00 = [v15 UTF8String];
        __break(0);
        JUMPOUT(0x18FF66B10);
      }

      if (!*(a1 + 16))
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing response handler"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = NSStringFromSelector(sel_originator_setTimeout_);
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *location = 138544642;
          *&location[4] = v21;
          v28 = 2114;
          v29 = v23;
          v30 = 2048;
          v31 = a1;
          v32 = 2114;
          v33 = @"BSActionResponder.m";
          v34 = 1024;
          v35 = 479;
          v36 = 2114;
          v37 = v20;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
        }

        v24 = v20;
        qword_1EAD33B00 = [v20 UTF8String];
        __break(0);
        JUMPOUT(0x18FF66C0CLL);
      }

      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
      v8 = *(a1 + 24);
      *(a1 + 24) = v7;

      dispatch_source_set_timer(*(a1 + 24), a2, 0xFFFFFFFFFFFFFFFFLL, 0);
      objc_initWeak(location, a1);
      v9 = *(a1 + 24);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __44___BSActionResponder_originator_setTimeout___block_invoke;
      handler[3] = &unk_1E72CB830;
      objc_copyWeak(&v26, location);
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(*(a1 + 24));
      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
    }

    os_unfair_lock_unlock((a1 + 96));
  }
}

- (void)originator_annulWithErrorCode:(os_unfair_lock_s *)a1
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must send a valid error code to annul"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = NSStringFromSelector(sel_originator_annulWithErrorCode_);
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v9 = 138544642;
        v10 = v5;
        v11 = 2114;
        v12 = v7;
        v13 = 2048;
        v14 = a1;
        v15 = 2114;
        v16 = @"BSActionResponder.m";
        v17 = 1024;
        v18 = 492;
        v19 = 2114;
        v20 = v4;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
      }

      v8 = v4;
      qword_1EAD33B00 = [v4 UTF8String];
      __break(0);
      JUMPOUT(0x18FF66E54);
    }

    os_unfair_lock_lock(a1 + 24);

    [(_BSActionResponder *)a1 _consumeLock_originator_annulWithCode:a2 alreadyOnResponseQueue:0];
  }
}

- (void)_consumeLock_originator_annulWithCode:(int)a3 alreadyOnResponseQueue:
{
  v37 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 96));
  if (a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      dispatch_assert_queue_V2(v6);
    }
  }

  if ((*(a1 + 100) & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"annul may only be called on the originator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(sel__consumeLock_originator_annulWithCode_alreadyOnResponseQueue_);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v25 = 138544642;
      v26 = v15;
      v27 = 2114;
      v28 = v17;
      v29 = 2048;
      v30 = a1;
      v31 = 2114;
      v32 = @"BSActionResponder.m";
      v33 = 1024;
      v34 = 697;
      v35 = 2114;
      v36 = v14;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v25, 0x3Au);
    }

    v18 = v14;
    qword_1EAD33B00 = [v14 UTF8String];
    __break(0);
    JUMPOUT(0x18FF67190);
  }

  if (*(a1 + 106) == 1)
  {
    [(_BSActionResponder *)a1 _lock_invalidateForEncode:?];

    os_unfair_lock_unlock((a1 + 96));
  }

  else
  {
    if (*(a1 + 56))
    {
      v7 = BSLogBSAction();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 56);
        v25 = 138543362;
        v26 = v8;
        _os_log_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_INFO, "Annul %{public}@", &v25, 0xCu);
      }
    }

    *(a1 + 106) = 1;
    v9 = *(a1 + 80);
    v10 = MEMORY[0x193AE5AC0](*(a1 + 88));
    v11 = *(a1 + 80);
    *(a1 + 80) = 0;

    v12 = *(a1 + 88);
    *(a1 + 88) = 0;

    v13 = [BSActionResponse responseForErrorCode:a2];
    [(_BSActionResponder *)a1 _consumeLock_trySendResponse:v13 alreadyLocked:1 alreadyOnResponseQueue:a3 fireLegacyInvalidationHandler:1];
    if (v10)
    {
      if (!v9)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing nullification queue"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v20 = NSStringFromSelector(sel__consumeLock_originator_annulWithCode_alreadyOnResponseQueue_);
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v25 = 138544642;
          v26 = v20;
          v27 = 2114;
          v23 = v22;
          v28 = v22;
          v29 = 2048;
          v30 = a1;
          v31 = 2114;
          v32 = @"BSActionResponder.m";
          v33 = 1024;
          v34 = 715;
          v35 = 2114;
          v36 = v19;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v25, 0x3Au);
        }

        v24 = v19;
        qword_1EAD33B00 = [v19 UTF8String];
        __break(0);
        JUMPOUT(0x18FF6728CLL);
      }

      dispatch_async(v9, v10);
    }
  }
}

- (void)_lock_logResponse:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = @"Reply";
  }

  else
  {
    v4 = @"Response";
  }

  v5 = v4;
  v6 = [v3 error];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:@"BSActionErrorDomain"])
    {
      v9 = NSStringFromBSActionErrorCode([v7 code]);
      v10 = BSLogBSAction();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 56);
        v15 = 138543874;
        v16 = v5;
        v17 = 2114;
        v18 = v9;
        v19 = 2114;
        v20 = v11;
        _os_log_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (error: %{public}@) %{public}@", &v15, 0x20u);
      }
    }

    else
    {
      v9 = BSLogBSAction();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7 code];
        v14 = *(a1 + 56);
        v15 = 138544130;
        v16 = v5;
        v17 = 2114;
        v18 = v8;
        v19 = 2048;
        v20 = v13;
        v21 = 2114;
        v22 = v14;
        _os_log_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ (error: %{public}@/%ld) %{public}@", &v15, 0x2Au);
      }
    }
  }

  else
  {
    v8 = BSLogBSAction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 56);
      v15 = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_INFO, "%{public}@ %{public}@", &v15, 0x16u);
    }
  }
}

- (id)_descriptionBuilderOfType:(os_unfair_lock_s *)a1 withMultilinePrefix:(uint64_t)a2
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 24);
    v4 = [BSDescriptionBuilder builderWithObject:a1];
    v5 = v4;
    if (a2 == 2)
    {
      [v4 setUseDebugDescription:1];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68___BSActionResponder__descriptionBuilderOfType_withMultilinePrefix___block_invoke;
    v15[3] = &unk_1E72CACC0;
    v6 = v5;
    v16 = v6;
    v17 = a1;
    v7 = [v6 modifyProem:v15];
    if (a2)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __68___BSActionResponder__descriptionBuilderOfType_withMultilinePrefix___block_invoke_2;
      v11[3] = &unk_1E72CB8A8;
      v12 = v6;
      v13 = a1;
      v14 = a2;
      v8 = [v12 modifyBody:v11];
    }

    os_unfair_lock_unlock(a1 + 24);
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)succinctDescription
{
  v2 = [(_BSActionResponder *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_BSActionResponder *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = [_BSActionResponder _descriptionBuilderOfType:1 withMultilinePrefix:?];

  return v3;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [_BSActionResponder _descriptionBuilderOfType:2 withMultilinePrefix:?];
  v4 = [v3 build];

  return v4;
}

@end