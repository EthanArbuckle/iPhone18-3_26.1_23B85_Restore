@interface RFSelfAuthExtensionHelper
- (BOOL)loadTestConfigFromUserDefaults;
- (RFSelfAuthExtensionHelper)init;
- (id).cxx_construct;
- (int64_t)getPersonalizationInfo;
- (int64_t)getSignedTicketAndStore:(BOOL)a3;
- (void)dealloc;
- (void)resetAll;
@end

@implementation RFSelfAuthExtensionHelper

- (RFSelfAuthExtensionHelper)init
{
  v8.receiver = self;
  v8.super_class = RFSelfAuthExtensionHelper;
  v2 = [(RFSelfAuthExtensionHelper *)&v8 init];
  BasebandRFDiagnostics::create(&v7, v2);
  v3 = v7;
  v7 = 0uLL;
  v4 = *(v2 + 2);
  *(v2 + 8) = v3;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(&v7 + 1);
  if (!*(&v7 + 1) || atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    return v2;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return v2;
}

- (void)dealloc
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RFSelfAuthExtensionHelper dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = RFSelfAuthExtensionHelper;
  [(RFSelfAuthExtensionHelper *)&v4 dealloc];
}

- (void)resetAll
{
  ptr = self->fBasebandDiagnostics.__ptr_;
  if (ptr)
  {
    BasebandRFDiagnostics::resetAll(ptr);
  }

  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RFSelfAuthExtensionHelper reset", v4, 2u);
  }
}

- (int64_t)getSignedTicketAndStore:(BOOL)a3
{
  v3 = a3;
  SignedTicketAndStore = BasebandRFDiagnostics::getSignedTicketAndStore(self->fBasebandDiagnostics.__ptr_, a3);
  if (SignedTicketAndStore > 5)
  {
    v5 = -99;
  }

  else
  {
    v5 = qword_100002760[SignedTicketAndStore];
  }

  v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = v3;
    v9 = 2080;
    v10 = BasebandRFDiagnostics::asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Get signed tiket with APTag(=%d) and store:  %s", v8, 0x12u);
  }

  return v5;
}

- (int64_t)getPersonalizationInfo
{
  PersonalizationInfo = BasebandRFDiagnostics::getPersonalizationInfo(self->fBasebandDiagnostics.__ptr_);
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = BasebandRFDiagnostics::asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Get personalization info: %s", &v5, 0xCu);
  }

  return PersonalizationInfo != 0;
}

- (BOOL)loadTestConfigFromUserDefaults
{
  ptr = self->fBasebandDiagnostics.__ptr_;
  __p = operator new(0x20uLL);
  v11 = xmmword_100002740;
  strcpy(__p, "overrideTestConfigEnable");
  self->testConfig.overrideTestConfigEnable = BasebandDiagnostics::readIntegerFromUserDefaults() != 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  v4 = self->fBasebandDiagnostics.__ptr_;
  __p = operator new(0x20uLL);
  v11 = xmmword_100002750;
  strcpy(__p, "override_addAPTagToTicket");
  self->testConfig.override_addAPTagToTicket = BasebandDiagnostics::readIntegerFromUserDefaults() != 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  v5 = [ABMDiagnosticExtensionLogging getOSLogHandler:__p];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    overrideTestConfigEnable = self->testConfig.overrideTestConfigEnable;
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = overrideTestConfigEnable;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Test config: overrides test config enabled = %d", &__p, 8u);
  }

  if (self->testConfig.overrideTestConfigEnable)
  {
    v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      override_addAPTagToTicket = self->testConfig.override_addAPTagToTicket;
      LODWORD(__p) = 67109120;
      HIDWORD(__p) = override_addAPTagToTicket;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\taddTagToTicket=%d", &__p, 8u);
    }
  }

  return self->testConfig.overrideTestConfigEnable;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end