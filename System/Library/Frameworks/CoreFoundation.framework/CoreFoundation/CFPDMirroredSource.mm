@interface CFPDMirroredSource
- (id)acceptMessage:(id)a3;
- (id)createDiskWrite;
- (void)clearCacheForReason:(__CFString *)a3;
- (void)dealloc;
- (void)drainPendingChanges;
- (void)enqueueMirrorSignatureForKey:(xpc_object_t)xdict fromMessage:;
- (void)handleWritingResult:(__CFDictionary *)a3;
- (void)lock;
- (void)unlock;
@end

@implementation CFPDMirroredSource

- (void)lock
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v4 lock];
  [(CFPDSource *)self->_mirrorSource lock];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)unlock
{
  v5 = *MEMORY[0x1E69E9840];
  [(CFPDSource *)self->_mirrorSource unlock];
  v4.receiver = self;
  v4.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v4 unlock];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  CFRelease(self->_mirroredKeys);

  v4.receiver = self;
  v4.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)enqueueMirrorSignatureForKey:(xpc_object_t)xdict fromMessage:
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(buffer, 0, sizeof(buffer));
    remote_connection = xpc_dictionary_get_remote_connection(xdict);
    if (!remote_connection)
    {
      value = xpc_dictionary_get_value(xdict, "connection");
      if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
      {
        [CFPDMirroredSource enqueueMirrorSignatureForKey:fromMessage:];
      }
    }

    pid = xpc_connection_get_pid(remote_connection);
    v9 = pid;
    v10 = "Unknown";
    if (pid != -1 && proc_name(pid, buffer, 0x40u) >= 0)
    {
      v10 = buffer;
    }

    v17.tv_sec = 0;
    *&v17.tv_usec = 0;
    memset(&v16, 0, sizeof(v16));
    gettimeofday(&v17, 0);
    localtime_r(&v17.tv_sec, &v16);
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s(%d): %04d-%02d-%02d %02d:%02d:%02d (%s)", v10, v9, (v16.tm_year + 1900), (v16.tm_mon + 1), v16.tm_mday, v16.tm_hour, v16.tm_min, v16.tm_sec, v16.tm_zone);
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s%@", "Sig_", a2);
    v13 = _CFXPCCreateXPCObjectFromCFObject(v12);
    v14 = _CFXPCCreateXPCObjectFromCFObject(v11);
    [*(a1 + 152) enqueueNewKey:v13 value:v14 encoding:0 inBatch:0 fromMessage:xdict];
    CFRelease(v11);
    CFRelease(v12);
    xpc_release(v13);
    xpc_release(v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)drainPendingChanges
{
  v5 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  [(CFPDSource *)self->_mirrorSource drainPendingChanges];
  v4.receiver = self;
  v4.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v4 drainPendingChanges];
  v3 = *MEMORY[0x1E69E9840];
}

- (id)createDiskWrite
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v8.receiver = self;
  v8.super_class = CFPDMirroredSource;
  result = [(CFPDSource *)&v8 createDiskWrite];
  if (result)
  {
    v4 = result;
    v5 = [(CFPDSource *)self->_mirrorSource createDiskWrite];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__CFPDMirroredSource_createDiskWrite__block_invoke;
    v7[3] = &unk_1E6DD1D50;
    v7[4] = v4;
    v7[5] = v5;
    result = [v7 copy];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __37__CFPDMirroredSource_createDiskWrite__block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v2 = (*(v3 + 16))();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)handleWritingResult:(__CFDictionary *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v6.receiver = self;
  v6.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v6 handleWritingResult:a3];
  [(CFPDSource *)self->_mirrorSource handleWritingResult:a3];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clearCacheForReason:(__CFString *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  [(CFPDSource *)self->_mirrorSource clearCacheForReason:?];
  v6.receiver = self;
  v6.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v6 clearCacheForReason:a3];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)acceptMessage:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CFPDMirroredSource;
  v5 = [(CFPDSource *)&v11 acceptMessage:?];
  if (xpc_dictionary_get_int64(a3, "CFPreferencesOperation") == 1 && !xpc_dictionary_get_value(v5, "CFPreferencesErrorType") && (_CFPrefsDecodeKeyValuePairFromXPCMessage(a3, 0, 0, 0) & 1) == 0)
  {
    v6 = [(CFPDSource *)self->_mirrorSource copyPropertyListValidatingPlist:0];
    v7 = [v6 copyXPCData];
    if (v7)
    {
      v8 = v7;
      xpc_dictionary_set_value(v5, "CFPreferencesValidationPropertyList", v7);
      xpc_release(v8);
    }
  }

  [(CFPDSource *)self->_mirrorSource closeFileDescriptors];
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

@end