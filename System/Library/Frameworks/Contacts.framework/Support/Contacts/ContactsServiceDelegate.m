@interface ContactsServiceDelegate
+ (id)os_log;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ContactsServiceDelegate)init;
- (ContactsServiceDelegate)initWithServiceProvider:(id)a3 scheduler:(id)a4 highPriorityScheduler:(id)a5 tccServices:(id)a6;
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

- (ContactsServiceDelegate)initWithServiceProvider:(id)a3 scheduler:(id)a4 highPriorityScheduler:(id)a5 tccServices:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ContactsServiceDelegate;
  v14 = [(ContactsServiceDelegate *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, a4);
    objc_storeStrong(&v15->_highPriorityWorkQueue, a5);
    v16 = [v10 copy];
    serviceProvider = v15->_serviceProvider;
    v15->_serviceProvider = v16;

    v18 = [CNContactsAPIServiceAuthorizationCheck alloc];
    v19 = +[ContactsServiceDelegate os_log];
    v20 = [v18 initWithLog:v19 tccServices:v13];
    serviceAuthorizationCheck = v15->_serviceAuthorizationCheck;
    v15->_serviceAuthorizationCheck = v20;

    v22 = v15;
  }

  return v15;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[CNXPCDataMapper serviceProtocolInterface];
  [v5 setExportedInterface:v6];
  v7 = [(CNContactsAPIServiceAuthorizationCheck *)self->_serviceAuthorizationCheck isAuthorized:v5];
  if (v7)
  {
    v8 = [(ContactsServiceDelegate *)self serviceProvider];
    v9 = [(ContactsServiceDelegate *)self workQueue];
    v10 = [(ContactsServiceDelegate *)self highPriorityWorkQueue];
    v11 = (v8)[2](v8, v9, v10, v5);

    [v5 setExportedObject:v11];
    [v5 resume];
  }

  else
  {
    [v5 invalidate];
  }

  return v7;
}

@end