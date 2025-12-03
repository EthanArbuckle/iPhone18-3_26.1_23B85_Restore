@interface ContactProviderService
+ (id)sharedInstance;
- (ContactProviderService)init;
- (ContactProviderService)initWithSchedulerProvider:(id)provider;
- (void)handleBundleIdentifiers:(id)identifiers;
@end

@implementation ContactProviderService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010AC0;
  block[3] = &unk_100045580;
  block[4] = self;
  if (qword_10004E1A0 != -1)
  {
    dispatch_once(&qword_10004E1A0, block);
  }

  v2 = qword_10004E1A8;

  return v2;
}

- (ContactProviderService)init
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(ContactProviderService *)self initWithSchedulerProvider:v3];

  return v4;
}

- (ContactProviderService)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = ContactProviderService;
  v5 = [(ContactProviderService *)&v13 init];
  if (v5)
  {
    v6 = [providerCopy newSerialSchedulerWithName:@"com.apple.contactsd.ContactProviderService"];
    v7 = [[CNQualityOfServiceSchedulerDecorator alloc] initWithScheduler:v6 qualityOfService:2];
    workQueue = v5->_workQueue;
    v5->_workQueue = v7;

    v9 = os_log_create("com.apple.contacts.provider", "ContactProviderService");
    log = v5->_log;
    v5->_log = v9;

    v11 = v5;
  }

  return v5;
}

- (void)handleBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  workQueue = [(ContactProviderService *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010CC0;
  v7[3] = &unk_100045690;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  [workQueue performBlock:v7];
}

@end