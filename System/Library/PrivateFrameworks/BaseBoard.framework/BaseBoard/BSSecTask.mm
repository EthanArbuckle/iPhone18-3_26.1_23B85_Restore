@interface BSSecTask
+ (id)_taskForAuditToken:(uint64_t)token;
+ (id)secTaskForAuditToken:(uint64_t)token;
+ (id)secTaskForCurrentProcess;
- (id)valueForEntitlement:(uint64_t)entitlement;
- (os_unfair_lock_s)representsPlatformBinary;
- (uint64_t)BOOLForEntitlement:(uint64_t)entitlement;
- (void)dealloc;
@end

@implementation BSSecTask

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  lock_taskRef = self->_lock_taskRef;
  if (lock_taskRef)
  {
    CFRelease(lock_taskRef);
  }

  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = BSSecTask;
  [(BSSecTask *)&v4 dealloc];
}

+ (id)secTaskForCurrentProcess
{
  objc_opt_self();
  if (qword_1ED44FF78 != -1)
  {
    dispatch_once(&qword_1ED44FF78, &__block_literal_global_29);
  }

  v0 = qword_1ED44FF80;

  return v0;
}

void __37__BSSecTask_secTaskForCurrentProcess__block_invoke()
{
  BSAuditTokenForCurrentProcess(v2);
  v0 = [BSSecTask _taskForAuditToken:v2];
  v1 = qword_1ED44FF80;
  qword_1ED44FF80 = v0;
}

+ (id)_taskForAuditToken:(uint64_t)token
{
  v22 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v3;
  v4 = BSVersionedPIDForAuditToken(&token);
  if (v4 == -1)
  {
    v15 = 0;
  }

  else
  {
    os_unfair_lock_lock(&_MergedGlobals_27);
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    v6 = [qword_1ED44FF88 objectForKey:v5];
    if (!v6)
    {
      v7 = [BSSecTask alloc];
      v8 = a2[1];
      *v21.val = *a2;
      *&v21.val[4] = v8;
      if (v7)
      {
        v20.receiver = v7;
        v20.super_class = BSSecTask;
        v9 = objc_msgSendSuper2(&v20, sel_init);
        v6 = v9;
        if (v9)
        {
          *(v9 + 4) = 0;
          token = v21;
          *(v9 + 1) = SecTaskCreateWithAuditToken(0, &token);
        }
      }

      else
      {
        v6 = 0;
      }

      v10 = qword_1ED44FF88;
      if (!qword_1ED44FF88)
      {
        strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
        v12 = qword_1ED44FF88;
        qword_1ED44FF88 = strongToWeakObjectsMapTable;

        v10 = qword_1ED44FF88;
      }

      [v10 setObject:v6 forKey:v5];
    }

    os_unfair_lock_unlock(&_MergedGlobals_27);
    v13 = dispatch_time(0, 1000000000);
    v14 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__BSSecTask__taskForAuditToken___block_invoke;
    block[3] = &unk_1E72CADE8;
    v15 = v6;
    v18 = v15;
    dispatch_after(v13, v14, block);
  }

  return v15;
}

+ (id)secTaskForAuditToken:(uint64_t)token
{
  objc_opt_self();
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v4 = [BSSecTask _taskForAuditToken:v6];

  return v4;
}

- (uint64_t)BOOLForEntitlement:(uint64_t)entitlement
{
  v3 = a2;
  if (entitlement)
  {
    v4 = [(BSSecTask *)entitlement valueForEntitlement:v3];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)valueForEntitlement:(uint64_t)entitlement
{
  v3 = a2;
  if (entitlement)
  {
    os_unfair_lock_lock((entitlement + 16));
    v4 = BSSecTaskCopyEntitlementValue(*(entitlement + 8), v3);
    os_unfair_lock_unlock((entitlement + 16));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (os_unfair_lock_s)representsPlatformBinary
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 4);
    CodeSignStatus = SecTaskGetCodeSignStatus(*&v1[2]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v1 + 4);
    return ((CodeSignStatus & 0xC000001) == 67108865);
  }

  return result;
}

@end