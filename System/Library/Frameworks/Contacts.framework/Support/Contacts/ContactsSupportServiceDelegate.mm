@interface ContactsSupportServiceDelegate
+ (id)os_log;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ContactsSupportServiceDelegate)init;
- (ContactsSupportServiceDelegate)initWithServiceProvider:(id)a3 schedulerProvider:(id)a4 tccServices:(id)a5;
@end

@implementation ContactsSupportServiceDelegate

+ (id)os_log
{
  if (qword_10004E0B0 != -1)
  {
    sub_10002C9B0();
  }

  v3 = qword_10004E0B8;

  return v3;
}

- (ContactsSupportServiceDelegate)init
{
  v3 = [CNSchedulerProvider providerWithBackgroundConcurrencyLimit:3];
  v4 = +[CNTCCFactory defaultTCC];
  v5 = [(ContactsSupportServiceDelegate *)self initWithServiceProvider:&stru_100045858 schedulerProvider:v3 tccServices:v4];

  return v5;
}

- (ContactsSupportServiceDelegate)initWithServiceProvider:(id)a3 schedulerProvider:(id)a4 tccServices:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = ContactsSupportServiceDelegate;
  v11 = [(ContactsSupportServiceDelegate *)&v22 init];
  if (v11)
  {
    v12 = [v9 backgroundScheduler];
    workQueue = v11->_workQueue;
    v11->_workQueue = v12;

    v14 = [v8 copy];
    serviceProvider = v11->_serviceProvider;
    v11->_serviceProvider = v14;

    v16 = [CNContactsAPIServiceAuthorizationCheck alloc];
    v17 = +[ContactsSupportServiceDelegate os_log];
    v18 = [v16 initWithLog:v17 tccServices:v10];
    serviceAuthorizationCheck = v11->_serviceAuthorizationCheck;
    v11->_serviceAuthorizationCheck = v18;

    v20 = v11;
  }

  return v11;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 serviceName];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection: service name = %@", &v13, 0xCu);
  }

  v8 = +[CNXPCContactsSupport serviceProtocolInterface];
  [v5 setExportedInterface:v8];
  v9 = [(ContactsSupportServiceDelegate *)self serviceProvider];
  v10 = [(ContactsSupportServiceDelegate *)self workQueue];
  v11 = (v9)[2](v9, v10, v5);

  [v5 setExportedObject:v11];
  [v5 resume];

  return 1;
}

@end