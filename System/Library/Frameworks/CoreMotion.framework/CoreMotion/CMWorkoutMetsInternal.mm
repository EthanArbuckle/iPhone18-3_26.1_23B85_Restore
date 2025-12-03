@interface CMWorkoutMetsInternal
- (CMWorkoutMetsInternal)init;
- (void)_queryWorkoutMetsWithSessionId:(id)id handler:(id)handler;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMWorkoutMetsInternal

- (CMWorkoutMetsInternal)init
{
  if (!objc_msgSend_isAvailable(CMWorkoutMets, a2, v2))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CMWorkoutMetsInternal;
  v4 = [(CMWorkoutMetsInternal *)&v6 init];
  if (v4)
  {
    v4->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMWorkoutMets", 0);
    operator new();
  }

  return v4;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  self->fInternalQueue = 0;
  v3.receiver = self;
  v3.super_class = CMWorkoutMetsInternal;
  [(CMWorkoutMetsInternal *)&v3 dealloc];
}

- (void)_teardown
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_queryWorkoutMetsWithSessionId:(id)id handler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
  }

  v7 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = objc_msgSend_UUIDString(id, v8, v9);
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Workout Mets query for session: %@", buf, 0xCu);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
    }

    v17 = 138412290;
    v18 = objc_msgSend_UUIDString(id, v11, v12);
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutMetsInternal _queryWorkoutMetsWithSessionId:handler:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73B914;
  block[3] = &unk_1E7532C80;
  block[5] = self;
  block[6] = handler;
  block[4] = id;
  dispatch_async(fInternalQueue, block);
  v15 = *MEMORY[0x1E69E9840];
}

@end