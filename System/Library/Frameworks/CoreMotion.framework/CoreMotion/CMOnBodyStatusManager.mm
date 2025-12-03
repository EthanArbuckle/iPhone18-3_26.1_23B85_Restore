@interface CMOnBodyStatusManager
+ (BOOL)isOnBodyStatusDetectionAvailable;
+ (id)sharedOnBodyStatusManager;
- (CMOnBodyStatusManager)init;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)setPropertiesWithDictionary:(id)dictionary;
- (void)startOnBodyStatusDetectionPrivateToQueue:(id)queue withParameters:(id)parameters handler:(id)handler;
- (void)startOnBodyStatusDetectionToQueue:(id)queue withParameters:(id)parameters handler:(id)handler;
- (void)stopOnBodyStatusDetection;
- (void)stopOnBodyStatusDetectionPrivate;
@end

@implementation CMOnBodyStatusManager

- (CMOnBodyStatusManager)init
{
  v6.receiver = self;
  v6.super_class = CMOnBodyStatusManager;
  v4 = [(CMOnBodyStatusManager *)&v6 init];
  if (v4)
  {
    if (objc_msgSend_isOnBodyStatusDetectionAvailable(CMOnBodyStatusManager, v2, v3))
    {
      v4->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMOnBodyStatusManagerPrivateQueue", 0);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMOnBodyStatusManager;
  [(CMOnBodyStatusManager *)&v2 dealloc];
}

+ (BOOL)isOnBodyStatusDetectionAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B421620() >> 12) & 1;
  }

  return v2;
}

+ (id)sharedOnBodyStatusManager
{
  if (qword_1ED71CB28 != -1)
  {
    dispatch_once(&qword_1ED71CB28, &unk_1F0E29200);
  }

  return qword_1ED71CB20;
}

- (void)startOnBodyStatusDetectionToQueue:(id)queue withParameters:(id)parameters handler:(id)handler
{
  fPrivateQueue = self->fPrivateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6249BC;
  v6[3] = &unk_1E7533678;
  v6[4] = self;
  v6[5] = queue;
  v6[6] = parameters;
  v6[7] = handler;
  dispatch_async(fPrivateQueue, v6);
}

- (void)stopOnBodyStatusDetection
{
  fPrivateQueue = self->fPrivateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B624A40;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fPrivateQueue, block);
}

- (void)setPropertiesWithDictionary:(id)dictionary
{
  if (sub_19B6E9540(dictionary))
  {
    fPrivateQueue = self->fPrivateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B624AD4;
    v6[3] = &unk_1E7532A00;
    v6[4] = self;
    v6[5] = dictionary;
    dispatch_sync(fPrivateQueue, v6);
  }
}

- (void)connect
{
  if (!self->fLocationdConnection)
  {
    operator new();
  }
}

- (void)disconnect
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
    self->fLocationdConnection = 0;
  }
}

- (void)startOnBodyStatusDetectionPrivateToQueue:(id)queue withParameters:(id)parameters handler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  if (queue && handler)
  {
    fOnBodyStatusQueue = self->fOnBodyStatusQueue;
    if (fOnBodyStatusQueue != queue)
    {

      self->fOnBodyStatusQueue = queue;
    }

    fOnBodyStatusHandler = self->fOnBodyStatusHandler;
    if (fOnBodyStatusHandler != handler)
    {

      self->fOnBodyStatusHandler = objc_msgSend_copy(handler, v11, v12);
    }

    objc_msgSend_connect(self, a2, queue);
    if (sub_19B6E9540(parameters))
    {
      sub_19B44BE58();
    }

    if (!self->fSubscribedToOnBodyStatusDetection)
    {
      v18 = @"kCLConnectionMessageSubscribeKey";
      v19 = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, &v19, &v18, 1);
      sub_19B6258C4();
    }
  }

  else
  {
    if (qword_1EAFE2A48 != -1)
    {
      dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
    }

    v14 = qword_1EAFE2A50;
    if (os_log_type_enabled(qword_1EAFE2A50, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Neither the queue nor the handler can be nil", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A48 != -1)
      {
        dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOnBodyStatusManager startOnBodyStatusDetectionPrivateToQueue:withParameters:handler:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)stopOnBodyStatusDetectionPrivate
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->fOnBodyStatusQueue && self->fOnBodyStatusHandler)
  {
    v3 = @"kCLConnectionMessageSubscribeKey";
    v4[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
    sub_19B6258C4();
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end