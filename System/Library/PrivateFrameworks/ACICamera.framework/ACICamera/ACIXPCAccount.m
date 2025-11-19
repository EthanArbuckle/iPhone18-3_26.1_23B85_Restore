@interface ACIXPCAccount
- (ACIXPCAccount)initWithXPCConnection:(id)a3 delegate:(void *)a4;
- (id).cxx_construct;
- (void)activateService:(id)a3 uuid:(id)a4 withReply:(id)a5;
- (void)allServices:(id)a3;
- (void)deactivateService:(id)a3 uuid:(id)a4 withReply:(id)a5;
- (void)dealloc;
- (void)prepareService:(id)a3 uuid:(id)a4 withReply:(id)a5;
- (void)startService:(id)a3 uuid:(id)a4 withReply:(id)a5;
- (void)stopService:(id)a3 uuid:(id)a4 withReply:(id)a5;
- (void)subscribeService:(id)a3 uuid:(id)a4 endpoint:(id)a5 withReply:(id)a6;
- (void)unprepareService:(id)a3 uuid:(id)a4 withReply:(id)a5;
- (void)unsubscribeService:(id)a3 uuid:(id)a4 withReply:(id)a5;
@end

@implementation ACIXPCAccount

- (ACIXPCAccount)initWithXPCConnection:(id)a3 delegate:(void *)a4
{
  v7 = a3;
  v8 = [(ACIXPCAccount *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a3);
    aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::setPtr(&v9->_delegate, a4);
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

- (void)allServices:(id)a3
{
  v4 = a3;
  (*(*self->_delegate._ptr + 112))(&v6);
  v5 = objc_opt_new();
  aci::Array::enumerateObjectsUsingBlock();
  v4[2](v4, v5);

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

- (void)subscribeService:(id)a3 uuid:(id)a4 endpoint:(id)a5 withReply:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _aciLogGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ACIXPCAccount subscribeService:uuid:endpoint:withReply:]";
    v21 = 1024;
    v22 = 175;
    _os_log_impl(&dword_23C3F5000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v15 = v10;
  v16 = [v10 UTF8String];
  *buf = aci::String::stringWithCString(v16, v17);
  if (aci::Provider::serviceForKey(self->_delegate._ptr, *buf))
  {
    aci::ACIObjectSP<aci::camera::XPCAccountReceiver,NSXPCListenerEndpoint * {__strong}>(v12);
  }

  v19 = _aciLogGeneral();
  [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

  v13[2](v13, 4294967289, 0);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(buf);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeService:(id)a3 uuid:(id)a4 withReply:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _aciLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ACIXPCAccount unsubscribeService:uuid:withReply:]";
    v25 = 1024;
    v26 = 194;
    _os_log_impl(&dword_23C3F5000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v12 = v8;
  v13 = [v8 UTF8String];
  *buf = aci::String::stringWithCString(v13, v14);
  v15 = aci::Provider::serviceForKey(self->_delegate._ptr, *buf);
  if (v15)
  {
    v16 = v9;
    v17 = [v9 UTF8String];
    v23 = aci::String::stringWithCString(v17, v18);
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

    v10[2](v10, v19);
    aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&v23);
  }

  else
  {
    v22 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    v10[2](v10, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(buf);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)startService:(id)a3 uuid:(id)a4 withReply:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount startService:uuid:withReply:]";
    v18 = 1024;
    v19 = 210;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = v7;
  v11 = [v7 UTF8String];
  *v17 = aci::String::stringWithCString(v11, v12);
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

    v8[2](v8, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    v8[2](v8, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopService:(id)a3 uuid:(id)a4 withReply:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount stopService:uuid:withReply:]";
    v18 = 1024;
    v19 = 225;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = v7;
  v11 = [v7 UTF8String];
  *v17 = aci::String::stringWithCString(v11, v12);
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

    v8[2](v8, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    v8[2](v8, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)prepareService:(id)a3 uuid:(id)a4 withReply:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount prepareService:uuid:withReply:]";
    v18 = 1024;
    v19 = 240;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = v7;
  v11 = [v7 UTF8String];
  *v17 = aci::String::stringWithCString(v11, v12);
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

    v8[2](v8, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    v8[2](v8, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)unprepareService:(id)a3 uuid:(id)a4 withReply:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount unprepareService:uuid:withReply:]";
    v18 = 1024;
    v19 = 255;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = v7;
  v11 = [v7 UTF8String];
  *v17 = aci::String::stringWithCString(v11, v12);
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

    v8[2](v8, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    v8[2](v8, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)activateService:(id)a3 uuid:(id)a4 withReply:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount activateService:uuid:withReply:]";
    v18 = 1024;
    v19 = 270;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = v7;
  v11 = [v7 UTF8String];
  *v17 = aci::String::stringWithCString(v11, v12);
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

    v8[2](v8, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    v8[2](v8, 4294967289);
  }

  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v17);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deactivateService:(id)a3 uuid:(id)a4 withReply:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "[ACIXPCAccount deactivateService:uuid:withReply:]";
    v18 = 1024;
    v19 = 285;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", v17, 0x12u);
  }

  v10 = v7;
  v11 = [v7 UTF8String];
  *v17 = aci::String::stringWithCString(v11, v12);
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

    v8[2](v8, v14);
  }

  else
  {
    v16 = _aciLogGeneral();
    [ACIXPCAccount subscribeService:uuid:endpoint:withReply:];

    v8[2](v8, 4294967289);
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