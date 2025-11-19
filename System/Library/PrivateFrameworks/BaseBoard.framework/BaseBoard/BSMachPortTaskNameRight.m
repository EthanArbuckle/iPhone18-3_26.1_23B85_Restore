@interface BSMachPortTaskNameRight
+ (id)taskNameForPID:(int)a3;
- (BSAuditToken)auditToken;
- (BSMachPortTaskNameRight)initWithCoder:(id)a3;
- (BSMachPortTaskNameRight)initWithPID:(int)a3;
- (BSMachPortTaskNameRight)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BSMachPortTaskNameRight

- (BSAuditToken)auditToken
{
  os_unfair_lock_lock(&self->_lock);
  lock_auditToken = self->_lock_auditToken;
  if (!lock_auditToken)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__BSMachPortTaskNameRight_auditToken__block_invoke;
    v6[3] = &unk_1E72CB750;
    v6[4] = self;
    [(BSMachPortRight *)self accessPort:v6];
    lock_auditToken = self->_lock_auditToken;
  }

  v4 = lock_auditToken;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

void __37__BSMachPortTaskNameRight_auditToken__block_invoke(uint64_t a1, task_name_t a2)
{
  if (a2 - 1 <= 0xFFFFFFFD)
  {
    v12 = v2;
    v13 = v3;
    *&v5 = -1;
    *(&v5 + 1) = -1;
    v10 = v5;
    v11 = v5;
    if (BSAuditTokenForTask(a2, &v10))
    {
      v9[0] = v10;
      v9[1] = v11;
      v6 = [BSAuditToken tokenFromAuditToken:v9];
      v7 = *(a1 + 32);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

+ (id)taskNameForPID:(int)a3
{
  if (a3 < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = *&a3;
    if (BSSandboxCanGetMachTaskName(a3))
    {
      v6 = [[a1 alloc] initWithPID:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BSMachPortTaskNameRight)initWithPID:(int)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 >= 1 && (v4 = *&a3, (BSSandboxCanGetMachTaskName(a3) & 1) != 0))
  {
    tn = 0;
    v5 = task_name_for_pid(*MEMORY[0x1E69E9A60], v4, &tn);
    if (v5)
    {
      v6 = BSLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = mach_error_string(v5);
        *buf = 67109634;
        v16 = v4;
        v17 = 2082;
        v18 = v13;
        v19 = 1024;
        v20 = v5;
        _os_log_error_impl(&dword_18FEF6000, v6, OS_LOG_TYPE_ERROR, "Unable to obtain a task name port right for pid %i: %{public}s (0x%x)", buf, 0x18u);
      }

      v7 = 0;
    }

    else
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = BSProcessDescriptionForPID(v4);
      v10 = [v8 stringWithFormat:@"task_name_for_pid:%@", v9];
      v6 = _BSMachPortRightDescription(3u, 0, v10, tn, 0);

      v11 = [(BSMachPortRight *)self _initWithPort:3 type:0 owner:v6 trace:?];
      if (v11)
      {
        v11[12] = 0;
        v11[13] = v4;
      }

      self = v11;
      v7 = self;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = BSMachPortTaskNameRight;
  v4 = [(BSMachPortSendRight *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v4[13] = self->_pid;
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(v5 + 5, self->_lock_auditToken);
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (BSMachPortTaskNameRight)initWithXPCDictionary:(id)a3
{
  v8.receiver = self;
  v8.super_class = BSMachPortTaskNameRight;
  v4 = [(BSMachPortRight *)&v8 initWithXPCDictionary:?];
  if (v4)
  {
    v4->_pid = xpc_dictionary_get_int64(a3, "pid");
    v5 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey(a3, "auditToken");
    lock_auditToken = v4->_lock_auditToken;
    v4->_lock_auditToken = v5;
  }

  return v4;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5.receiver = self;
  v5.super_class = BSMachPortTaskNameRight;
  [(BSMachPortRight *)&v5 encodeWithXPCDictionary:?];
  xpc_dictionary_set_int64(a3, "pid", self->_pid);
  os_unfair_lock_lock(&self->_lock);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey(self->_lock_auditToken, a3, "auditToken");
  os_unfair_lock_unlock(&self->_lock);
}

- (BSMachPortTaskNameRight)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = BSMachPortTaskNameRight;
  v4 = [(BSMachPortRight *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_pid = [a3 decodeIntForKey:@"pid"];
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
    lock_auditToken = v4->_lock_auditToken;
    v4->_lock_auditToken = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BSMachPortTaskNameRight;
  [(BSMachPortRight *)&v5 encodeWithCoder:?];
  [a3 encodeInt:self->_pid forKey:@"pid"];
  os_unfair_lock_lock(&self->_lock);
  [a3 encodeObject:self->_lock_auditToken forKey:@"auditToken"];
  os_unfair_lock_unlock(&self->_lock);
}

@end