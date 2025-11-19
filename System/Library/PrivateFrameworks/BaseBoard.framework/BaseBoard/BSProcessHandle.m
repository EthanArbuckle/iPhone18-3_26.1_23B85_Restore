@interface BSProcessHandle
+ (id)processHandle;
+ (id)processHandleForAuditToken:(id)a3;
+ (id)processHandleForAuditToken:(id)a3 bundleID:(id)a4;
+ (id)processHandleForNSXPCConnection:(id)a3;
+ (id)processHandleForPID:(int)a3;
+ (id)processHandleForPID:(int)a3 bundleID:(id)a4;
+ (id)processHandleForTaskNameRight:(id)a3;
+ (id)processHandleForTaskNameRight:(id)a3 bundleID:(id)a4;
+ (id)processHandleForXPCConnection:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BSProcessHandle)init;
- (_DWORD)_initWithPID:(void *)a1;
- (_DWORD)_initWithPID:(void *)a3 bundleID:;
- (_DWORD)_initWithTaskNameRight:(void *)a3 bundleID:;
- (id)_bundleIDGeneratingIfNeeded:(void *)a1;
- (id)_initWithAuditToken:(void *)a3 bundleID:;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)membersForCoder;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)valueForEntitlement:(id)a3;
- (uint64_t)_isRunningWithCertainty:(uint64_t)result;
- (void)dealloc;
@end

@implementation BSProcessHandle

+ (id)processHandle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__BSProcessHandle_processHandle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED44FF58 != -1)
  {
    dispatch_once(&qword_1ED44FF58, block);
  }

  v2 = _MergedGlobals_25;

  return v2;
}

- (void)dealloc
{
  [(BSMachPortRight *)self->_taskNameRight invalidate];
  v3.receiver = self;
  v3.super_class = BSProcessHandle;
  [(BSProcessHandle *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BSXPCAutoCodingInitialize(a1, &__block_literal_global_26);
  }
}

void __29__BSProcessHandle_initialize__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = &unk_1F03BA3C0;
  [v4 addSupportedCoding:v2];

  v3 = &unk_1F03BA528;
  [v4 addSupportedCoding:v3];
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(BSProcessHandle *)self _bundleIDGeneratingIfNeeded:?];
  name = self->_name;
  if (v4 | name)
  {
    if (!name)
    {
      name = v4;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%d", name, self->_pid];
    v8 = [v3 appendObject:v7 withName:0];
  }

  else
  {
    v6 = [v3 appendInt:self->_pid withName:@"pid"];
  }

  v13 = 0;
  v9 = [(BSProcessHandle *)self _isRunningWithCertainty:?];
  if (v13 == 1)
  {
    v10 = [v3 appendBool:v9 withName:@"valid"];
  }

  else
  {
    v11 = [v3 appendObject:@"(unknown)" withName:@"valid"];
  }

  return v3;
}

- (BSProcessHandle)init
{
  v3 = getpid();
  v4 = [(BSProcessHandle *)self _initWithPID:v3];
  if (v4)
  {
    v5 = [BSMachPortTaskNameRight taskNameForPID:v4->_pid];
    taskNameRight = v4->_taskNameRight;
    v4->_taskNameRight = v5;

    v7 = [(BSMachPortTaskNameRight *)v4->_taskNameRight auditToken];
    auditToken = v4->_auditToken;
    v4->_auditToken = v7;

    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    bundleID = v4->_bundleID;
    v4->_bundleID = v10;
  }

  return v4;
}

- (id)membersForCoder
{
  v59[5] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = @"_pid";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v11 = _BSAutoMember(v3, v4, v5, v6, v7, v8, v9, v10, 0, v3);
  v59[0] = v11;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = @"_name";
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v21 = _BSAutoMember(v13, v14, v15, v16, v17, v18, v19, v20, 0, v54);
  v59[1] = v21;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = @"_bundleID";
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v31 = _BSAutoMember(v23, v24, v25, v26, v27, v28, v29, v30, 0, v55);
  v59[2] = v31;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v32 = @"_auditToken";
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v41 = _BSAutoMember(v33, v34, v35, v36, v37, v38, v39, v40, 0, v56);
  v59[3] = v41;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v42 = @"_taskNameRight";
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;
  v51 = _BSAutoMember(v43, v44, v45, v46, v47, v48, v49, v50, 0, v57);
  v59[4] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:5];

  return v52;
}

void __32__BSProcessHandle_processHandle__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_25;
  _MergedGlobals_25 = v1;
}

- (id)succinctDescription
{
  v2 = [(BSProcessHandle *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

+ (id)processHandleForAuditToken:(id)a3
{
  v4 = a3;
  v5 = [v4 pid];
  if (v5 == getpid())
  {
    v6 = [a1 processHandle];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  if (v4)
  {
    v6 = [(BSProcessHandle *)[a1 alloc] _initWithAuditToken:v4 bundleID:0];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)_initWithAuditToken:(void *)a3 bundleID:
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = v6;
    if (v8)
    {
      NSClassFromString(&cfstr_Bsaudittoken.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSAuditTokenClass]"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = NSStringFromSelector(sel__initWithAuditToken_bundleID_);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138544642;
          v23 = v18;
          v24 = 2114;
          v25 = v20;
          v26 = 2048;
          v27 = a1;
          v28 = 2114;
          v29 = @"BSProcessHandle.m";
          v30 = 1024;
          v31 = 102;
          v32 = 2114;
          v33 = v17;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v21 = v17;
        qword_1EAD33B00 = [v17 UTF8String];
        __break(0);
        JUMPOUT(0x18FF60A00);
      }
    }

    v9 = -[BSProcessHandle _initWithPID:](a1, [v8 pid]);
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 3, a2);
      v11 = [BSMachPortTaskNameRight taskNameForPID:*(v10 + 3)];
      v12 = v10[5];
      v10[5] = v11;

      v13 = v7;
      if (!v7)
      {
        v13 = [(BSAuditToken *)v10[3] _bundleIDGeneratingIfNeeded:?];
      }

      v14 = [v13 copy];
      v15 = v10[2];
      v10[2] = v14;

      if (!v7)
      {
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)processHandleForXPCConnection:(id)a3
{
  v4 = a3;
  v5 = BSPIDForXPCConnection(v4);
  if (v5 == getpid())
  {
    v6 = [a1 processHandle];
  }

  else
  {
    v7 = [a1 alloc];
    v8 = _BSBundleIDForXPCConnectionAndIKnowWhatImDoingISwear(v4);
    v9 = v4;
    v10 = v8;
    if (v7)
    {
      v11 = BSPIDForXPCConnection(v9);
      v6 = [(BSProcessHandle *)v7 _initWithPID:v11];
      if (v6)
      {
        v12 = [BSMachPortTaskNameRight taskNameForPID:*(v6 + 12)];
        v13 = *(v6 + 40);
        *(v6 + 40) = v12;

        v14 = [BSAuditToken tokenFromXPCConnection:v9];
        v15 = *(v6 + 24);
        *(v6 + 24) = v14;

        v16 = v10;
        if (!v10)
        {
          v16 = [(BSAuditToken *)*(v6 + 24) _bundleIDGeneratingIfNeeded:?];
        }

        v17 = [v16 copy];
        v18 = *(v6 + 16);
        *(v6 + 16) = v17;

        if (!v10)
        {
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)processHandleForNSXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 processIdentifier];
  if (v5 == getpid())
  {
    v6 = [a1 processHandle];
  }

  else
  {
    v7 = [a1 alloc];
    v8 = [BSAuditToken tokenFromNSXPCConnection:v4];
    v6 = [(BSProcessHandle *)v7 _initWithAuditToken:v8 bundleID:0];
  }

  return v6;
}

+ (id)processHandleForPID:(int)a3
{
  v3 = [(BSProcessHandle *)[a1 alloc] _initWithPID:a3 bundleID:0];

  return v3;
}

- (_DWORD)_initWithPID:(void *)a3 bundleID:
{
  v5 = a3;
  if (a1)
  {
    v6 = [(BSProcessHandle *)a1 _initWithPID:a2];
    if (v6)
    {
      v7 = [BSMachPortTaskNameRight taskNameForPID:v6[3]];
      v8 = *(v6 + 5);
      *(v6 + 5) = v7;

      v9 = [*(v6 + 5) auditToken];
      v10 = *(v6 + 3);
      *(v6 + 3) = v9;

      v11 = v5;
      if (!v5)
      {
        v11 = [(BSAuditToken *)*(v6 + 3) _bundleIDGeneratingIfNeeded:?];
      }

      v12 = [v11 copy];
      v13 = *(v6 + 2);
      *(v6 + 2) = v12;

      if (!v5)
      {
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)processHandleForTaskNameRight:(id)a3
{
  v4 = a3;
  v5 = [(BSProcessHandle *)[a1 alloc] _initWithTaskNameRight:v4 bundleID:0];

  return v5;
}

- (_DWORD)_initWithTaskNameRight:(void *)a3 bundleID:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = v5;
    if (v7)
    {
      NSClassFromString(&cfstr_Bsmachporttask.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSMachPortTaskNameRightClass]"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = NSStringFromSelector(sel__initWithTaskNameRight_bundleID_);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138544642;
          v23 = v18;
          v24 = 2114;
          v25 = v20;
          v26 = 2048;
          v27 = a1;
          v28 = 2114;
          v29 = @"BSProcessHandle.m";
          v30 = 1024;
          v31 = 114;
          v32 = 2114;
          v33 = v17;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v21 = v17;
        qword_1EAD33B00 = [v17 UTF8String];
        __break(0);
        JUMPOUT(0x18FF610D0);
      }
    }

    v8 = -[BSProcessHandle _initWithPID:](a1, [v7 pid]);
    if (v8)
    {
      v9 = [v7 copy];
      v10 = *(v8 + 5);
      *(v8 + 5) = v9;

      v11 = [*(v8 + 5) auditToken];
      v12 = *(v8 + 3);
      *(v8 + 3) = v11;

      v13 = v6;
      if (!v6)
      {
        v13 = [(BSAuditToken *)*(v8 + 3) _bundleIDGeneratingIfNeeded:?];
      }

      v14 = [v13 copy];
      v15 = *(v8 + 2);
      *(v8 + 2) = v14;

      if (!v6)
      {
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)processHandleForPID:(int)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = [(BSProcessHandle *)[a1 alloc] _initWithPID:a3 bundleID:v6];

  return v7;
}

+ (id)processHandleForTaskNameRight:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSProcessHandle *)[a1 alloc] _initWithTaskNameRight:v6 bundleID:v7];

  return v8;
}

+ (id)processHandleForAuditToken:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSProcessHandle *)[a1 alloc] _initWithAuditToken:v6 bundleID:v7];

  return v8;
}

- (_DWORD)_initWithPID:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = BSProcessHandle;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[3] = a2;
    v5 = BSProcessNameForPID(a2);
    v6 = [v5 copy];
    v7 = *(v4 + 4);
    *(v4 + 4) = v6;
  }

  return v4;
}

- (id)_bundleIDGeneratingIfNeeded:(void *)a1
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (a2 && !*(v3 + 2) && (*(v3 + 8) & 1) == 0)
    {
      *(v3 + 8) = 1;
      v4 = *(v3 + 3);
      if (v4)
      {
        [(BSAuditToken *)v4 _bundleIDGeneratingIfNeeded:?];
      }

      else
      {
        BSBundleIDForPID(*(v3 + 3));
      }
      v5 = ;
      v6 = *(v3 + 2);
      *(v3 + 2) = v5;
    }

    v7 = *(v3 + 2);
    objc_sync_exit(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_isRunningWithCertainty:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 < 1)
    {
      result = 0;
    }

    else if (v4 == getpid())
    {
      result = 1;
    }

    else
    {
      v5 = *(v3 + 40);
      if (v5)
      {
        result = [v5 isUsable];
      }

      else
      {
        if (!BSSandboxCanGetProcessInfo(*(v3 + 12)))
        {
          v6 = 0;
          result = 1;
          if (!a2)
          {
            return result;
          }

LABEL_11:
          *a2 = v6;
          return result;
        }

        result = BSPIDExists(*(v3 + 12));
      }
    }

    v6 = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_11;
  }

  return result;
}

- (id)valueForEntitlement:(id)a3
{
  v3 = [(BSAuditToken *)self->_auditToken valueForEntitlement:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  LODWORD(self) = [(BSProcessHandle *)self pid];
  LOBYTE(self) = self == [v4 pid];

  return self;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSProcessHandle *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = [(BSProcessHandle *)self succinctDescriptionBuilder];

  return v3;
}

@end