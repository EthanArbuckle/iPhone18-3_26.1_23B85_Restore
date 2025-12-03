@interface ContactsServiceDelegate
+ (id)os_log;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ContactsServiceDelegate)init;
- (ContactsServiceDelegate)initWithServiceProvider:(id)provider scheduler:(id)scheduler highPriorityScheduler:(id)priorityScheduler tccServices:(id)services;
@end

@implementation ContactsServiceDelegate

+ (id)os_log
{
  if (qword_10004E1F0 != -1)
  {
    sub_10002D768();
  }

  v3 = qword_10004E1F8;

  return v3;
}

- (ContactsServiceDelegate)init
{
  v3 = +[ContactsServiceSchedulerFactory makeScheduler];
  v4 = +[ContactsServiceSchedulerFactory makeHighPriorityScheduler];
  v5 = +[CNTCCFactory defaultTCC];
  v6 = [(ContactsServiceDelegate *)self initWithServiceProvider:&stru_100045E18 scheduler:v3 highPriorityScheduler:v4 tccServices:v5];

  return v6;
}

- (ContactsServiceDelegate)initWithServiceProvider:(id)provider scheduler:(id)scheduler highPriorityScheduler:(id)priorityScheduler tccServices:(id)services
{
  providerCopy = provider;
  schedulerCopy = scheduler;
  prioritySchedulerCopy = priorityScheduler;
  servicesCopy = services;
  v24.receiver = self;
  v24.super_class = ContactsServiceDelegate;
  v14 = [(ContactsServiceDelegate *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, scheduler);
    objc_storeStrong(&v15->_highPriorityWorkQueue, priorityScheduler);
    v16 = [providerCopy copy];
    serviceProvider = v15->_serviceProvider;
    v15->_serviceProvider = v16;

    v18 = [CNContactsAPIServiceAuthorizationCheck alloc];
    v19 = +[ContactsServiceDelegate os_log];
    v20 = [v18 initWithLog:v19 tccServices:servicesCopy];
    serviceAuthorizationCheck = v15->_serviceAuthorizationCheck;
    v15->_serviceAuthorizationCheck = v20;

    v22 = v15;
  }

  return v15;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[CNXPCDataMapper serviceProtocolInterface];
  [connectionCopy setExportedInterface:v6];
  v7 = [(CNContactsAPIServiceAuthorizationCheck *)self->_serviceAuthorizationCheck isAuthorized:connectionCopy];
  if (v7)
  {
    serviceProvider = [(ContactsServiceDelegate *)self serviceProvider];
    workQueue = [(ContactsServiceDelegate *)self workQueue];
    highPriorityWorkQueue = [(ContactsServiceDelegate *)self highPriorityWorkQueue];
    v11 = (serviceProvider)[2](serviceProvider, workQueue, highPriorityWorkQueue, connectionCopy);

    [connectionCopy setExportedObject:v11];
    [connectionCopy resume];
  }

  else
  {
    [connectionCopy invalidate];
  }

  return v7;
}

@end