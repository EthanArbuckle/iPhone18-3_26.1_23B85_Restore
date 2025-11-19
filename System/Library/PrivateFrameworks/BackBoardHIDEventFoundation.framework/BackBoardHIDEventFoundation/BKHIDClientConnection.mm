@interface BKHIDClientConnection
+ (id)connectionWithConnection:(__IOHIDEventSystemConnection *)a3;
- (BKHIDClientConnection)initWithConnection:(__IOHIDEventSystemConnection *)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (__IOHIDEventSystemConnection)connection;
- (__IOHIDEventSystemConnection)copyConnection;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
- (void)sendEvent:(uint64_t)a1;
@end

@implementation BKHIDClientConnection

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendPointer:self->_lock_connection withName:@"IOHIDEventSystemConnectionRef"];
  versionedPID = self->_versionedPID;
  v6 = NSStringFromBSVersionedPID();
  v7 = [v3 appendObject:v6 withName:@"vpid"];

  v8 = [v3 appendUnsignedInteger:self->_task withName:@"taskPort" format:1];
  v9 = [v3 appendObject:self->_bundleID withName:@"bundleID"];
  v10 = [v3 build];

  return v10;
}

- (void)dealloc
{
  [(BKHIDClientConnection *)self invalidate];
  v3.receiver = self;
  v3.super_class = BKHIDClientConnection;
  [(BKHIDClientConnection *)&v3 dealloc];
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalid._Value, 1u) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_connection = self->_lock_connection;
    if (lock_connection)
    {
      CFRelease(lock_connection);
      self->_lock_connection = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (__IOHIDEventSystemConnection)copyConnection
{
  os_unfair_lock_lock(&self->_lock);
  lock_connection = self->_lock_connection;
  if (lock_connection)
  {
    CFRetain(self->_lock_connection);
  }

  os_unfair_lock_unlock(&self->_lock);
  return lock_connection;
}

- (__IOHIDEventSystemConnection)connection
{
  v2 = [(BKHIDClientConnection *)self copyConnection];
  CFAutorelease(v2);
  return v2;
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_lock);
  lock_connection = self->_lock_connection;
  if (lock_connection)
  {
    v4 = CFHash(lock_connection);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v7 = [(BKHIDClientConnection *)self copyConnection];
  v8 = [v6 copyConnection];
  v9 = v8;
  if ((v7 != 0) != (v8 != 0))
  {
    v10 = 0;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!(v7 | v8))
    {
      v10 = 1;
      goto LABEL_15;
    }

    v10 = CFEqual(v7, v8) != 0;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  CFRelease(v7);
LABEL_8:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_15:

  return v10;
}

- (BKHIDClientConnection)initWithConnection:(__IOHIDEventSystemConnection *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = BKHIDClientConnection;
  v4 = [(BKHIDClientConnection *)&v27 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    v16 = BKLogHID();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223CBE000, v16, OS_LOG_TYPE_ERROR, "trying to create a BKHIDClientConnection with a nil connection", buf, 2u);
    }

    goto LABEL_13;
  }

  v4->_lock._os_unfair_lock_opaque = 0;
  v6 = IOHIDEventSystemConnectionGetAttribute();
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v5->_task = IOHIDEventSystemConnectionGetTaskNamePort();
  v5->_pid = [IOHIDEventSystemConnectionGetAttribute() intValue];
  v8 = v5->_bundleID;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSString *)v5->_bundleID length])
  {
    v9 = BKLogHID();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    *&buf[4] = a3;
    v12 = "ignoring connection; bundleID is missing (or invalid) from the attributes: %{public}@";
LABEL_22:
    v13 = buf;
    v14 = v9;
    v15 = 12;
    goto LABEL_23;
  }

  if (v5->_task + 1 <= 1)
  {
    v9 = BKLogHID();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      pid = v5->_pid;
      v11 = v5->_bundleID;
      *buf = 67109634;
      *&buf[4] = pid;
      *&buf[8] = 2114;
      *&buf[10] = v11;
      *&buf[18] = 2114;
      *&buf[20] = a3;
      v12 = "ignoring connection; pid:%d bundleID:%{public}@ doesn't have a valid task port: %{public}@";
      v13 = buf;
      v14 = v9;
      v15 = 28;
LABEL_23:
      _os_log_error_impl(&dword_223CBE000, v14, OS_LOG_TYPE_ERROR, v12, v13, v15);
    }

LABEL_9:

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  if (v5->_pid <= 0)
  {
    v9 = BKLogHID();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    *&buf[4] = a3;
    v12 = "ignoring connection; pid is missing from the attributes: %{public}@";
    goto LABEL_22;
  }

  memset(buf, 0, 32);
  if ((BSAuditTokenForTask() & 1) == 0)
  {
    v9 = BKLogHID();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v24 = v5->_pid;
    *v28 = 67109378;
    *&v28[4] = v24;
    *&v28[8] = 2114;
    *&v28[10] = a3;
    v12 = "ignoring connection; BSAuditTokenForTask returned NO (expected pid:%d) connection:%{public}@";
    v13 = v28;
    v14 = v9;
    v15 = 18;
    goto LABEL_23;
  }

  *v28 = *buf;
  *&v28[16] = *&buf[16];
  v5->_versionedPID = BSVersionedPIDForAuditToken();
  v19 = BSPIDForAuditToken();
  if (v5->_pid != v19)
  {
    v25 = v19;
    v9 = BKLogHID();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v26 = v5->_pid;
    *v28 = 67109634;
    *&v28[4] = v25;
    *&v28[8] = 1024;
    *&v28[10] = v26;
    *&v28[14] = 2114;
    *&v28[16] = a3;
    v12 = "ignoring connection; audit pid (%d) doesn't match attribute pid (%d): %{public}@";
    v13 = v28;
    v14 = v9;
    v15 = 24;
    goto LABEL_23;
  }

  CFRetain(a3);
  v5->_lock_connection = a3;
  v20 = BKLogHID();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    versionedPID = v5->_versionedPID;
    v22 = NSStringFromBSVersionedPID();
    v23 = v5->_bundleID;
    *buf = 138543874;
    *&buf[4] = v22;
    *&buf[12] = 2114;
    *&buf[14] = v23;
    *&buf[22] = 2114;
    *&buf[24] = a3;
    _os_log_impl(&dword_223CBE000, v20, OS_LOG_TYPE_INFO, "HID connection vpid:%{public}@ bundleID:%{public}@ successfully initialized: %{public}@", buf, 0x20u);
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)connectionWithConnection:(__IOHIDEventSystemConnection *)a3
{
  v3 = [[BKHIDClientConnection alloc] initWithConnection:a3];

  return v3;
}

- (void)sendEvent:(uint64_t)a1
{
  *&v10[5] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRetain(*(a1 + 16));
  }

  os_unfair_lock_unlock((a1 + 8));
  v3 = BKLogSendHIDEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138543362;
    *v10 = v2;
    _os_log_debug_impl(&dword_223CBE000, v3, OS_LOG_TYPE_DEBUG, "#BKSendHIDEvent: Sending event to client connection: %{public}@", &v9, 0xCu);
  }

  if (v2)
  {
    v4 = IOHIDEventSystemConnectionDispatchEvent();
    if (v4)
    {
      v5 = v4;
      v6 = BKLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        IOHIDEventGetType();
        Name = IOHIDEventTypeGetName();
        v9 = 67109378;
        v10[0] = v5;
        LOWORD(v10[1]) = 2114;
        *(&v10[1] + 2) = Name;
        _os_log_impl(&dword_223CBE000, v6, OS_LOG_TYPE_DEFAULT, "#BKSendHIDEvent: IOHIDEventSystemConnectionDispatchEvent error:0x%X -- %{public}@ event dropped", &v9, 0x12u);
      }
    }

    CFRelease(v2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end