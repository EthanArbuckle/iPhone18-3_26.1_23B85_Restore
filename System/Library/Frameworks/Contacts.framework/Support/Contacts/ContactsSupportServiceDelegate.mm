@interface ContactsSupportServiceDelegate
+ (id)os_log;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ContactsSupportServiceDelegate)init;
- (ContactsSupportServiceDelegate)initWithServiceProvider:(id)provider schedulerProvider:(id)schedulerProvider tccServices:(id)services;
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

- (ContactsSupportServiceDelegate)initWithServiceProvider:(id)provider schedulerProvider:(id)schedulerProvider tccServices:(id)services
{
  providerCopy = provider;
  schedulerProviderCopy = schedulerProvider;
  servicesCopy = services;
  v22.receiver = self;
  v22.super_class = ContactsSupportServiceDelegate;
  v11 = [(ContactsSupportServiceDelegate *)&v22 init];
  if (v11)
  {
    backgroundScheduler = [schedulerProviderCopy backgroundScheduler];
    workQueue = v11->_workQueue;
    v11->_workQueue = backgroundScheduler;

    v14 = [providerCopy copy];
    serviceProvider = v11->_serviceProvider;
    v11->_serviceProvider = v14;

    v16 = [CNContactsAPIServiceAuthorizationCheck alloc];
    v17 = +[ContactsSupportServiceDelegate os_log];
    v18 = [v16 initWithLog:v17 tccServices:servicesCopy];
    serviceAuthorizationCheck = v11->_serviceAuthorizationCheck;
    v11->_serviceAuthorizationCheck = v18;

    v20 = v11;
  }

  return v11;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [connectionCopy serviceName];
    v13 = 138412290;
    v14 = serviceName;
    _os_log_impl(&_mh_execute_header, os_log, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection: service name = %@", &v13, 0xCu);
  }

  v8 = +[CNXPCContactsSupport serviceProtocolInterface];
  [connectionCopy setExportedInterface:v8];
  serviceProvider = [(ContactsSupportServiceDelegate *)self serviceProvider];
  workQueue = [(ContactsSupportServiceDelegate *)self workQueue];
  v11 = (serviceProvider)[2](serviceProvider, workQueue, connectionCopy);

  [connectionCopy setExportedObject:v11];
  [connectionCopy resume];

  return 1;
}

@end