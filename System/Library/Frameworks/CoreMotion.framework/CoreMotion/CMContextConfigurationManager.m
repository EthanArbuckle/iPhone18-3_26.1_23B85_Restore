@interface CMContextConfigurationManager
- (CMContextConfigurationManager)init;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)writeContextConfiguration:(id)a3 withHandler:(id)a4;
@end

@implementation CMContextConfigurationManager

- (CMContextConfigurationManager)init
{
  v4.receiver = self;
  v4.super_class = CMContextConfigurationManager;
  v2 = [(CMContextConfigurationManager *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMContextConfigurationManager", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  objc_msgSend_disconnect(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CMContextConfigurationManager;
  [(CMContextConfigurationManager *)&v4 dealloc];
}

- (void)connect
{
  fLocationdConnection = self->fLocationdConnection;
  CLConnectionClient::setDefaultMessageHandler();
  objc_initWeak(&location, self);
  v4 = self->fLocationdConnection;
  objc_copyWeak(&v5, &location);
  CLConnectionClient::setInterruptionHandler();
  CLConnectionClient::start(self->fLocationdConnection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)disconnect
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
    self->fLocationdConnection = 0;
    dispatch_release(self->fInternalQueue);
    self->fInternalQueue = 0;
  }
}

- (void)writeContextConfiguration:(id)a3 withHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMContextConfigurationManager.mm", 83, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (self->fLocationdConnection)
  {
    v16 = @"CMContextConfigurationKey";
    v17 = a3;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v17, &v16, 1);
    sub_19B686E08();
  }

  if (qword_1EAFE2A68 != -1)
  {
    dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
  }

  v7 = qword_1EAFE2A70;
  if (os_log_type_enabled(qword_1EAFE2A70, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Error in writeContextConfiguration. Invalid locationd connection", buf, 2u);
  }

  v8 = sub_19B420058();
  if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A68 != -1)
    {
      dispatch_once(&qword_1EAFE2A68, &unk_1F0E28200);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMContextConfigurationManager writeContextConfiguration:withHandler:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v9, @"CMErrorDomain", 103, 0);
  (*(a4 + 2))(a4, v11);
  v12 = *MEMORY[0x1E69E9840];
}

@end