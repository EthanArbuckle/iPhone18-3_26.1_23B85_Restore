@interface ACIXPCAccount
- (ACIXPCAccount)initWithXPCConnection:(id)connection delegate:(void *)delegate;
- (id).cxx_construct;
- (void)activateService:(id)service uuid:(id)uuid withReply:(id)reply;
- (void)allServices:(id)services;
- (void)deactivateService:(id)service uuid:(id)uuid withReply:(id)reply;
- (void)dealloc;
- (void)prepareService:(id)service uuid:(id)uuid withReply:(id)reply;
- (void)startService:(id)service uuid:(id)uuid withReply:(id)reply;
- (void)stopService:(id)service uuid:(id)uuid withReply:(id)reply;
- (void)subscribeService:(id)service uuid:(id)uuid endpoint:(id)endpoint withReply:(id)reply;
- (void)unprepareService:(id)service uuid:(id)uuid withReply:(id)reply;
- (void)unsubscribeService:(id)service uuid:(id)uuid withReply:(id)reply;
@end

@implementation ACIXPCAccount

- (ACIXPCAccount)initWithXPCConnection:(id)connection delegate:(void *)delegate
{
  connectionCopy = connection;
  v8 = [(ACIXPCAccount *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::setPtr(&v9->_delegate, delegate);
    aci::ACIObjectSP<aci::Dictionary>();
  }

  return 0;
}

- (void)dealloc
{
  ptr = self->_subscribers._ptr;
  aci::Dictionary::enumerateKeysAndObjectsUsingBlock();
  aci::Dictionary::removeAllObjects(self->_subscribers._ptr);
  v4.receiver = self;
  v4.super_class = ACIXPCAccount;
  [(ACIXPCAccount *)&v4 dealloc];
}

- (void)allServices:(id)services
{
  servicesCopy = services;
  (*(*self->_delegate._ptr + 112))(&v6);
  v5 = objc_opt_new();
  aci::Array::enumerateObjectsUsingBlock();
  servicesCopy[2](servicesCopy, v5);

  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(&v6);
}

uint64_t __29__ACIXPCAccount_allServices___block_invoke(uint64_t a1, aci::Dictionary *a2)
{
  v3 = aci::_ACIDynamicCast<aci::Dictionary,aci::Object>(a2);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = aci2nsJSONString(v3);
    [v4 addObject:v5];
  }

  return 0;
}

- (void)subscribeService:(id)service uuid:(id)uuid endpoint:(id)endpoint withReply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  uuidCopy = uuid;
  endpointCopy = endpoint;
  replyCopy = reply;
  v14 = _aciLogGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ACIXPCAccount subscribeService:uuid:endpoint:withReply:]";
    v21 = 1024;
    v22 = 175;
    _os_log_impl(&dword_23C3F5000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v15 = serviceCopy;
  uTF8String = [serviceCopy UTF8String];
  *buf = aci::String::stringWithCString(uTF8String, v17);
  if (aci::Provider::serviceForKey(self->_delegate._ptr, *buf))
  {
    aci::ACIObjectSP<aci::camera::XPCAccountReceiver,NSXPCListenerEndpoint * {__strong}>(endpointCopy);
  }

  v19 = _aciLogGeneral();
  [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

  replyCopy[2](replyCopy, 4294967289, 0);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(buf);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeService:(id)service uuid:(id)uuid withReply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  uuidCopy = uuid;
  replyCopy = reply;
  v11 = _aciLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ACIXPCAccount unsubscribeService:uuid:withReply:]";
    v25 = 1024;
    v26 = 194;
    _os_log_impl(&dword_23C3F5000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v12 = serviceCopy;
  uTF8String = [serviceCopy UTF8String];
  *buf = aci::String::stringWithCString(uTF8String, v14);
  v15 = aci::Provider::serviceForKey(self->_delegate._ptr, *buf);
  if (v15)
  {
    v16 = uuidCopy;
    uTF8String2 = [uuidCopy UTF8String];
    v23 = aci::String::stringWithCString(uTF8String2, v18);
    v19 = aci::Service::unsubscribe(v15, v23);
    if (v19)
    {
      _aciLogGeneral();
      objc_claimAutoreleasedReturnValue();
      [ACIXPCAccount unsubscribeService:uuid:withReply:];
    }

    else
    {
      ptr = self->_subscribers._ptr;
      aci::Dictionary::removeObject();
      v19 = 0;
    }

    replyCopy[2](replyCopy, v19);
    aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&v23);
  }

  else
  {
    v22 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    replyCopy[2](replyCopy, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(buf);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)startService:(id)service uuid:(id)uuid withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  replyCopy = reply;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount startService:uuid:withReply:]";
    v18 = 1024;
    v19 = 210;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = serviceCopy;
  uTF8String = [serviceCopy UTF8String];
  *v17 = aci::String::stringWithCString(uTF8String, v12);
  v13 = aci::Provider::serviceForKey(self->_delegate._ptr, *v17);
  if (v13)
  {
    v14 = aci::Service::start(v13);
    if (v14)
    {
      _aciLogGeneral();
      objc_claimAutoreleasedReturnValue();
      [ACIXPCAccount startService:uuid:withReply:];
    }

    replyCopy[2](replyCopy, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    replyCopy[2](replyCopy, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopService:(id)service uuid:(id)uuid withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  replyCopy = reply;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount stopService:uuid:withReply:]";
    v18 = 1024;
    v19 = 225;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = serviceCopy;
  uTF8String = [serviceCopy UTF8String];
  *v17 = aci::String::stringWithCString(uTF8String, v12);
  v13 = aci::Provider::serviceForKey(self->_delegate._ptr, *v17);
  if (v13)
  {
    v14 = aci::Service::stop(v13);
    if (v14)
    {
      _aciLogGeneral();
      objc_claimAutoreleasedReturnValue();
      [ACIXPCAccount stopService:uuid:withReply:];
    }

    replyCopy[2](replyCopy, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    replyCopy[2](replyCopy, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)prepareService:(id)service uuid:(id)uuid withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  replyCopy = reply;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount prepareService:uuid:withReply:]";
    v18 = 1024;
    v19 = 240;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = serviceCopy;
  uTF8String = [serviceCopy UTF8String];
  *v17 = aci::String::stringWithCString(uTF8String, v12);
  v13 = aci::Provider::serviceForKey(self->_delegate._ptr, *v17);
  if (v13)
  {
    v14 = aci::Service::prepare(v13);
    if (v14)
    {
      _aciLogGeneral();
      objc_claimAutoreleasedReturnValue();
      [ACIXPCAccount prepareService:uuid:withReply:];
    }

    replyCopy[2](replyCopy, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    replyCopy[2](replyCopy, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)unprepareService:(id)service uuid:(id)uuid withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  replyCopy = reply;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount unprepareService:uuid:withReply:]";
    v18 = 1024;
    v19 = 255;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = serviceCopy;
  uTF8String = [serviceCopy UTF8String];
  *v17 = aci::String::stringWithCString(uTF8String, v12);
  v13 = aci::Provider::serviceForKey(self->_delegate._ptr, *v17);
  if (v13)
  {
    v14 = aci::Service::unprepare(v13);
    if (v14)
    {
      _aciLogGeneral();
      objc_claimAutoreleasedReturnValue();
      [ACIXPCAccount unprepareService:uuid:withReply:];
    }

    replyCopy[2](replyCopy, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    replyCopy[2](replyCopy, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)activateService:(id)service uuid:(id)uuid withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  replyCopy = reply;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount activateService:uuid:withReply:]";
    v18 = 1024;
    v19 = 270;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = serviceCopy;
  uTF8String = [serviceCopy UTF8String];
  *v17 = aci::String::stringWithCString(uTF8String, v12);
  v13 = aci::Provider::serviceForKey(self->_delegate._ptr, *v17);
  if (v13)
  {
    v14 = aci::Service::activate(v13);
    if (v14)
    {
      _aciLogGeneral();
      objc_claimAutoreleasedReturnValue();
      [ACIXPCAccount activateService:uuid:withReply:];
    }

    replyCopy[2](replyCopy, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    replyCopy[2](replyCopy, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deactivateService:(id)service uuid:(id)uuid withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  replyCopy = reply;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount deactivateService:uuid:withReply:]";
    v18 = 1024;
    v19 = 285;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = serviceCopy;
  uTF8String = [serviceCopy UTF8String];
  *v17 = aci::String::stringWithCString(uTF8String, v12);
  v13 = aci::Provider::serviceForKey(self->_delegate._ptr, *v17);
  if (v13)
  {
    v14 = aci::Service::deactivate(v13);
    if (v14)
    {
      _aciLogGeneral();
      objc_claimAutoreleasedReturnValue();
      [ACIXPCAccount deactivateService:uuid:withReply:];
    }

    replyCopy[2](replyCopy, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    replyCopy[2](replyCopy, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

uint64_t __24__ACIXPCAccount_dealloc__block_invoke(uint64_t a1, uint64_t a2, aci::Service *a3)
{
  v3 = aci::_ACIDynamicCast<aci::Service,aci::Object>(a3);
  if (v3)
  {
    aci::Service::deactivate(v3);
  }

  return 0;
}

- (void)subscribeService:uuid:endpoint:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)subscribeService:uuid:endpoint:withReply:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeService:uuid:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startService:uuid:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopService:uuid:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepareService:uuid:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unprepareService:uuid:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)activateService:uuid:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deactivateService:uuid:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end