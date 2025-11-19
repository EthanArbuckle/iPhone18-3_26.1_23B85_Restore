@interface NSFileAccessProcessManager
+ (BOOL)needToManageConnection:(id)a3 forURLs:(id)a4;
- (NSArray)URLs;
- (NSFileAccessProcessManager)initWithClient:(id)a3 queue:(id)a4;
- (id)suspensionHandler;
- (void)_ensureMonitor;
- (void)allowSuspension;
- (void)dealloc;
- (void)invalidate;
- (void)killProcessWithMessage:(id)a3;
- (void)preventSuspensionWithActivityName:(id)a3;
- (void)processSuspended;
- (void)safelySendMessageWithReplyUsingBlock:(id)a3;
- (void)setSuspensionHandler:(id)a3;
- (void)setURLs:(id)a3;
@end

@implementation NSFileAccessProcessManager

- (void)invalidate
{
  [(NSFileAccessProcessManager *)self setSuspensionHandler:0];
  [+[NSFileAccessProcessMonitor sharedInstance](NSFileAccessProcessMonitor removeProcessManager:"removeProcessManager:forPID:" forPID:self, self->_pid];

  [(NSFileAccessProcessManager *)self allowSuspension];
}

- (void)allowSuspension
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _NSFCProcessMonitorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pid = xpc_connection_get_pid(self->_connection);
    v6[0] = 67109120;
    v6[1] = pid;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Re-allowing suspension for pid: %d", v6, 8u);
  }

  assertionToken = self->_assertionToken;
  if (assertionToken)
  {
    [+[_NSFileAccessAsynchronousProcessAssertionScheduler sharedInstance](_NSFileAccessAsynchronousProcessAssertionScheduler removeAssertionWithToken:"removeAssertionWithToken:", self->_assertionToken];
    assertionToken = self->_assertionToken;
  }

  self->_assertionToken = 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  [+[NSFileAccessProcessMonitor sharedInstance](NSFileAccessProcessMonitor removeProcessManager:"removeProcessManager:forPID:" forPID:self, self->_pid];
  connection = self->_connection;
  if (connection)
  {
    xpc_release(connection);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  assertionToken = self->_assertionToken;
  if (assertionToken)
  {
    [+[_NSFileAccessAsynchronousProcessAssertionScheduler sharedInstance](_NSFileAccessAsynchronousProcessAssertionScheduler removeAssertionWithToken:"removeAssertionWithToken:", self->_assertionToken];
    assertionToken = self->_assertionToken;
  }

  v6.receiver = self;
  v6.super_class = NSFileAccessProcessManager;
  [(NSFileAccessProcessManager *)&v6 dealloc];
}

- (void)_ensureMonitor
{
  if ((self->_suspensionHandler || self->_pendingMessageCount >= 1) && [NSFileAccessProcessManager needToManageConnection:self->_connection forURLs:self->_urls])
  {
    v3 = +[NSFileAccessProcessMonitor sharedInstance];
    pid = self->_pid;

    [(NSFileAccessProcessMonitor *)v3 addProcessManager:self forPID:pid];
  }

  else
  {
    v5 = +[NSFileAccessProcessMonitor sharedInstance];
    v6 = self->_pid;

    [(NSFileAccessProcessMonitor *)v5 removeProcessManager:self forPID:v6];
  }
}

+ (BOOL)needToManageConnection:(id)a3 forURLs:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  if (![a4 count])
  {
    return 0;
  }

  if (qword_1ED43FDC8 != -1)
  {
    dispatch_once(&qword_1ED43FDC8, &__block_literal_global_64);
  }

  if (!off_1ED43FDC0)
  {
    v19 = _NSFCProcessMonitorLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buffer = 0;
      _os_log_error_impl(&dword_18075C000, v19, OS_LOG_TYPE_ERROR, "Could not find SecTaskCopySigningIdentifier symbol", buffer, 2u);
    }

    return 1;
  }

  v41 = 0u;
  v42 = 0u;
  xpc_connection_get_audit_token();
  v5 = *MEMORY[0x1E695E4A8];
  *buffer = 0u;
  v40 = 0u;
  v6 = off_1ED43FDB8(v5, buffer);
  cf = 0;
  v7 = off_1ED43FDC0(v6, &cf);
  if (!v7)
  {
    v20 = _NSFCProcessMonitorLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buffer = 138412290;
      *&buffer[4] = cf;
      _os_log_error_impl(&dword_18075C000, v20, OS_LOG_TYPE_ERROR, "Could not get signing identifier: %@", buffer, 0xCu);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_41;
  }

  v8 = v7;
  if (!CFStringGetCStringPtr(v7, 0x8000100u) && !CFStringGetCString(v8, buffer, 1024, 0x8000100u))
  {
    v25 = _NSFCProcessMonitorLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v8;
      _os_log_error_impl(&dword_18075C000, v25, OS_LOG_TYPE_ERROR, "Could not convert signing identifier %{public}@", buf, 0xCu);
    }

LABEL_41:
    v24 = v6;
LABEL_42:
    CFRelease(v24);
    return 1;
  }

  v9 = container_create_or_lookup_path_for_current_user();
  if (!v9)
  {
    v22 = _NSFCProcessMonitorLog();
    v23 = v22;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v36 = v8;
      v37 = 2048;
      v38 = 1;
      _os_log_error_impl(&dword_18075C000, v23, OS_LOG_TYPE_ERROR, "Could not get container for signing identifier %{public}@. Error: %llu", buf, 0x16u);
    }

    CFRelease(v6);
    v24 = v8;
    goto LABEL_42;
  }

  v10 = [[NSString alloc] initWithBytesNoCopy:v9 length:strlen(v9) encoding:4 freeWhenDone:1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [a4 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v32;
    *&v12 = 138478083;
    v27 = v12;
    v28 = v6;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(a4);
        }

        v16 = [*(*(&v31 + 1) + 8 * i) path];
        if ([(__CFString *)v16 hasPrefix:@"/var"])
        {
          v16 = [@"/private" stringByAppendingString:v16];
        }

        if (![(__CFString *)v16 hasPrefix:v10]|| [(__CFString *)v16 containsString:@"/com.apple.watchconnectivity/"])
        {
          v21 = _NSFCProcessMonitorLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543619;
            v36 = v8;
            v37 = 2113;
            v38 = v16;
            _os_log_debug_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEBUG, "Will be managing connection for %{public}@ because path is not private %{private}@", buf, 0x16u);
          }

          v18 = 1;
          v6 = v28;
          goto LABEL_35;
        }

        v17 = _NSFCProcessMonitorLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = v27;
          v36 = v16;
          v37 = 2114;
          v38 = v8;
          _os_log_debug_impl(&dword_18075C000, v17, OS_LOG_TYPE_DEBUG, "Skipping path %{private}@ for %{public}@ because path it is private", buf, 0x16u);
        }
      }

      v13 = [a4 countByEnumeratingWithState:&v31 objects:v30 count:16];
      v18 = 0;
      v6 = v28;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_35:
  CFRelease(v6);
  CFRelease(v8);

  return v18;
}

void *__61__NSFileAccessProcessManager_needToManageConnection_forURLs___block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Security.framework/Security", 256);
  if (result)
  {
    v1 = result;
    off_1ED43FDB8 = dlsym(result, "SecTaskCreateWithAuditToken");
    result = dlsym(v1, "SecTaskCopySigningIdentifier");
    off_1ED43FDC0 = result;
  }

  return result;
}

- (NSFileAccessProcessManager)initWithClient:(id)a3 queue:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFileAccessProcessManager;
  v6 = [(NSFileAccessProcessManager *)&v8 init];
  if (v6)
  {
    v6->_connection = xpc_retain(a3);
    v6->_pid = xpc_connection_get_pid(a3);
    v6->_queue = a4;
    dispatch_retain(a4);
  }

  return v6;
}

- (void)setSuspensionHandler:(id)a3
{
  suspensionHandler = self->_suspensionHandler;
  if (suspensionHandler != a3)
  {

    self->_suspensionHandler = [a3 copy];

    [(NSFileAccessProcessManager *)self _ensureMonitor];
  }
}

- (void)processSuspended
{
  v3[5] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__NSFileAccessProcessManager_processSuspended__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  dispatch_async(queue, v3);
}

uint64_t __46__NSFileAccessProcessManager_processSuspended__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProcessMonitorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16);
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Detected process suspension: %i", v7, 8u);
  }

  v4 = *(a1 + 32);
  result = *(v4 + 32);
  if (result)
  {
    result = (*(result + 16))();
    v4 = *(a1 + 32);
  }

  if (*(v4 + 56) >= 1)
  {
    v6 = _NSFCProcessMonitorLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEFAULT, "Killing process because it has oustanding messages", v7, 2u);
    }

    return [*(a1 + 32) killProcessWithMessage:@"The process did not finish responding to an NSFilePresenter message before being suspended"];
  }

  return result;
}

- (id)suspensionHandler
{
  v2 = self->_suspensionHandler;

  return v2;
}

- (void)setURLs:(id)a3
{
  urls = self->_urls;
  if (urls != a3)
  {

    self->_urls = [a3 copy];

    [(NSFileAccessProcessManager *)self _ensureMonitor];
  }
}

- (NSArray)URLs
{
  v2 = self->_urls;

  return v2;
}

- (void)killProcessWithMessage:(id)a3
{
  pid = xpc_connection_get_pid(self->_connection);
  if (qword_1ED43FDE8 != -1)
  {
    dispatch_once(&qword_1ED43FDE8, &__block_literal_global_106);
  }

  if (off_1ED43FDD0)
  {
    off_1ED43FDD0(pid, 0, a3);
  }

  kill(pid, 9);
}

- (void)safelySendMessageWithReplyUsingBlock:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FDF0 != -1)
  {
    dispatch_once(&qword_1ED43FDF0, &__block_literal_global_110);
  }

  if (_MergedGlobals_138 == 1 && [NSFileAccessProcessManager needToManageConnection:self->_connection forURLs:self->_urls])
  {
    v5 = xpc_connection_copy_bundle_id();
    if (v5)
    {
      ++self->_pendingMessageCount;
      [(NSFileAccessProcessManager *)self _ensureMonitor];
      pid = xpc_connection_get_pid(self->_connection);
      v7 = [+[NSFileAccessProcessMonitor sharedInstance](NSFileAccessProcessMonitor processWithPIDIsSuspended:"processWithPIDIsSuspended:", pid];
      v8 = _NSFCProcessMonitorLog();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = pid;
          _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Killing %d because it was suspended when we tried to send it an NSFilePresenter message", &buf, 8u);
        }

        -[NSFileAccessProcessManager killProcessWithMessage:](self, "killProcessWithMessage:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Tried to send an NSFilePresenter message requiring a response, but process was suspended. You should unregister NSFilePresenters when a process is no longer active. The NSFilePresenter being messaged has a presentedItemURL of '%@'", [-[NSArray firstObject](self->_urls "firstObject")]));
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke_31;
        v15[3] = &unk_1E69F2C00;
        v15[4] = self;
        (*(a3 + 2))(a3, v15);
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v5;
          _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "Taking assertion for %{public}s while sending it an NSFilePresenter message", &buf, 0xCu);
        }

        v11 = _NSFCProcessMonitorLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = strdup(v5);
        }

        else
        {
          v12 = 0;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v20 = 0x3052000000;
        v21 = __Block_byref_object_copy__22;
        v22 = __Block_byref_object_dispose__22;
        v23 = 0;
        v13 = objc_alloc(objc_lookUpClass("BKSProcessAssertion"));
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke;
        v18[3] = &unk_1E69F6D08;
        v18[4] = self;
        v18[5] = a3;
        v18[6] = &buf;
        v18[7] = v12;
        v14 = [v13 initWithPID:pid flags:3 reason:4 name:@"filecoordinationd waiting for response from NSFilePresenter" withHandler:v18];
        *(*(&buf + 1) + 40) = v14;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke_24;
        v16[3] = &unk_1E69F3538;
        v17 = pid;
        v16[4] = self;
        [v14 setInvalidationHandler:v16];
        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      (*(a3 + 2))(a3, 0);
    }

    free(v5);
  }

  else
  {
    v10 = *(a3 + 2);

    v10(a3, 0);
  }
}

void __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 24);
  block[2] = __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke_2;
  block[3] = &unk_1E69F6CE0;
  v5 = v1;
  v6 = v2;
  dispatch_async(v3, block);
}

uint64_t __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke_3;
  v3[3] = &unk_1E69F6CB8;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  return (*(v1 + 16))(v1, v3);
}

void __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProcessMonitorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 48);
    v4 = 136446210;
    v5 = v3;
    _os_log_debug_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEBUG, "Releasing assertion after sending message to %{public}s", &v4, 0xCu);
  }

  --*(*(a1 + 32) + 56);
  [*(a1 + 32) _ensureMonitor];
  [*(*(*(a1 + 40) + 8) + 40) setInvalidationHandler:0];
  [*(*(*(a1 + 40) + 8) + 40) invalidate];

  free(*(a1 + 48));
}

uint64_t __67__NSFileAccessProcessManager_safelySendMessageWithReplyUsingBlock___block_invoke_24(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProcessMonitorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Killing %d because it was suspended before replying to an NSFilePresenter method", v5, 8u);
  }

  return [*(a1 + 32) killProcessWithMessage:@"The process did not finish responding to an NSFilePresenter message before being suspended."];
}

- (void)preventSuspensionWithActivityName:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FDF0 != -1)
  {
    dispatch_once(&qword_1ED43FDF0, &__block_literal_global_110);
  }

  if (_MergedGlobals_138 == 1 && [NSFileAccessProcessManager needToManageConnection:self->_connection forURLs:self->_urls]&& !self->_assertionToken)
  {
    v5 = xpc_connection_copy_bundle_id();
    if (v5)
    {
      pid = xpc_connection_get_pid(self->_connection);
      v7 = _NSFCProcessMonitorLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8[0] = 67109378;
        v8[1] = pid;
        v9 = 2114;
        v10 = a3;
        _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "Scheduling suspension prevention of pid %d for activity: %{public}@", v8, 0x12u);
      }

      self->_assertionToken = [+[_NSFileAccessAsynchronousProcessAssertionScheduler sharedInstance](_NSFileAccessAsynchronousProcessAssertionScheduler addAssertionWithName:"addAssertionWithName:forPID:" forPID:a3, pid];
    }

    free(v5);
  }
}

@end