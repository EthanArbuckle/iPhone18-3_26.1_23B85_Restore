@interface _PFRequestExecutor
- (BOOL)executeRequest:(id)request inContext:(id)context error:(id *)error;
- (BOOL)executeRequest:(id)request onMirroringDelegate:(id)delegate error:(id *)error;
- (BOOL)wait;
- (_PFRequestExecutor)init;
- (void)dealloc;
- (void)requestFinished;
@end

@implementation _PFRequestExecutor

- (_PFRequestExecutor)init
{
  v4.receiver = self;
  v4.super_class = _PFRequestExecutor;
  v2 = [(_PFRequestExecutor *)&v4 init];
  if (v2)
  {
    v2->_requestGroup = dispatch_group_create();
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_requestGroup);
  v3.receiver = self;
  v3.super_class = _PFRequestExecutor;
  [(_PFRequestExecutor *)&v3 dealloc];
}

- (BOOL)executeRequest:(id)request inContext:(id)context error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__21;
  v17 = __Block_byref_object_dispose__21;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53___PFRequestExecutor_executeRequest_inContext_error___block_invoke;
  v12[3] = &unk_1E6EC1900;
  v12[4] = context;
  v12[5] = self;
  v12[6] = request;
  v12[7] = &v13;
  v12[8] = &v19;
  [context performBlockAndWait:v12];
  if ((v20[3] & 1) == 0)
  {
    v9 = v14[5];
    if (v9)
    {
      if (error)
      {
        *error = v9;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v25 = 1024;
        v26 = 1988;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v25 = 1024;
        v26 = 1988;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v14[5] = 0;
  v6 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)executeRequest:(id)request onMirroringDelegate:(id)delegate error:(id *)error
{
  selfCopy = self;
  if (self)
  {
    self = self->_requestGroup;
  }

  dispatch_group_enter(&self->super);
  v9 = [(NSCloudKitMirroringDelegate *)delegate executeMirroringRequest:request error:error];
  if (!v9)
  {
    if (selfCopy)
    {
      requestGroup = selfCopy->_requestGroup;
    }

    else
    {
      requestGroup = 0;
    }

    dispatch_group_leave(requestGroup);
  }

  return v9 != 0;
}

- (BOOL)wait
{
  requestGroup = self->_requestGroup;
  v3 = dispatch_time(0, 600000000000);
  return dispatch_group_wait(requestGroup, v3) == 0;
}

- (void)requestFinished
{
  if (self)
  {
    self = self->_requestGroup;
  }

  dispatch_group_leave(&self->super);
}

@end