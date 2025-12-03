@interface CNChangesNotifier
+ (id)sharedNotifier;
+ (id)sharedNotifierWithNotificationWrapper:(id)wrapper schedulerProvider:(id)provider loggerProvider:(id)loggerProvider;
+ (void)flushSharedNotifier;
- (CNChangesNotifier)initWithNotificationWrapper:(id)wrapper schedulerProvider:(id)provider loggerProvider:(id)loggerProvider;
- (void)dealloc;
- (void)didChangeMeContactSuccessfully:(BOOL)successfully fromContactStore:(id)store requestIdentifier:(id)identifier;
- (void)didSaveChangesSuccessfully:(BOOL)successfully fromContactStore:(id)store requestIdentifier:(id)identifier;
- (void)waitForCurrentTasksToFinish;
@end

@implementation CNChangesNotifier

+ (id)sharedNotifier
{
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v4 = +[CNContactsLoggerProvider defaultProvider];
  v5 = [self sharedNotifierWithNotificationWrapper:0 schedulerProvider:defaultProvider loggerProvider:v4];

  return v5;
}

+ (id)sharedNotifierWithNotificationWrapper:(id)wrapper schedulerProvider:(id)provider loggerProvider:(id)loggerProvider
{
  wrapperCopy = wrapper;
  providerCopy = provider;
  loggerProviderCopy = loggerProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__CNChangesNotifier_sharedNotifierWithNotificationWrapper_schedulerProvider_loggerProvider___block_invoke;
  v18[3] = &unk_1E7415BC8;
  v19 = wrapperCopy;
  v20 = providerCopy;
  v21 = loggerProviderCopy;
  selfCopy = self;
  v11 = s_onceToken_0;
  v12 = loggerProviderCopy;
  v13 = providerCopy;
  v14 = wrapperCopy;
  if (v11 != -1)
  {
    dispatch_once(&s_onceToken_0, v18);
  }

  v15 = s_sharedNotifier;
  v16 = s_sharedNotifier;

  return v15;
}

uint64_t __92__CNChangesNotifier_sharedNotifierWithNotificationWrapper_schedulerProvider_loggerProvider___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 56)) initWithNotificationWrapper:*(a1 + 32) schedulerProvider:*(a1 + 40) loggerProvider:*(a1 + 48)];
  v2 = s_sharedNotifier;
  s_sharedNotifier = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (CNChangesNotifier)initWithNotificationWrapper:(id)wrapper schedulerProvider:(id)provider loggerProvider:(id)loggerProvider
{
  wrapperCopy = wrapper;
  providerCopy = provider;
  loggerProviderCopy = loggerProvider;
  v25.receiver = self;
  v25.super_class = CNChangesNotifier;
  v11 = [(CNChangesNotifier *)&v25 init];
  if (v11)
  {
    v13 = [[CNChangesNotifierProxy alloc] initWithSchedulerProvider:providerCopy loggerProvider:loggerProviderCopy];
    v14 = *(v11 + 1);
    *(v11 + 1) = v13;

    if (!wrapperCopy)
    {
      wrapperCopy = objc_alloc_init(CNChangeNotifierDistributedCenterWrapper);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__CNChangesNotifier_initWithNotificationWrapper_schedulerProvider_loggerProvider___block_invoke;
    aBlock[3] = &unk_1E7415BF0;
    v15 = wrapperCopy;
    v24 = v15;
    v16 = _Block_copy(aBlock);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__CNChangesNotifier_initWithNotificationWrapper_schedulerProvider_loggerProvider___block_invoke_2;
    v21[3] = &unk_1E7415BF0;
    wrapperCopy = v15;
    v22 = wrapperCopy;
    v17 = _Block_copy(v21);
    v18 = *MEMORY[0x1E698A0D0];
    [(CNChangesNotifierProxy *)*(v11 + 1) addListenerForNotificationName:v16 registration:v17 removal:?];
    [(CNChangesNotifierProxy *)*(v11 + 1) forwardNotificationName:v18 asNotificationName:@"CNContactStoreDidChangeNotification"];
    v19 = *MEMORY[0x1E698A0C8];
    [(CNChangesNotifierProxy *)*(v11 + 1) addListenerForNotificationName:v16 registration:v17 removal:?];
    [(CNChangesNotifierProxy *)*(v11 + 1) forwardNotificationName:v19 asNotificationName:@"CNContactStoreMeContactDidChangeNotification"];
    [(CNChangesNotifierProxy *)*(v11 + 1) coalesceNotificationName:v18];
    [(CNChangesNotifierProxy *)*(v11 + 1) addListenerForNotificationName:v16 registration:v17 removal:?];
    [(CNChangesNotifierProxy *)*(v11 + 1) forwardNotificationName:@"com.apple.contacts.posters.did-change" asNotificationName:?];
    [(CNChangesNotifierProxy *)*(v11 + 1) forwardNotificationName:@"CNContactStoreDidChangeNotification" asNotificationName:?];
    v20 = v11;
  }

  return v11;
}

- (void)didSaveChangesSuccessfully:(BOOL)successfully fromContactStore:(id)store requestIdentifier:(id)identifier
{
  if (successfully)
  {
    [(CNChangesNotifierProxy *)self->_notifierProxy postNotificationName:store fromSender:identifier saveIdentifier:0 isFromExternalProcess:?];
  }

  notifierProxy = self->_notifierProxy;

  [(CNChangesNotifierProxy *)notifierProxy stopSupressionOfNotificationName:?];
}

- (void)didChangeMeContactSuccessfully:(BOOL)successfully fromContactStore:(id)store requestIdentifier:(id)identifier
{
  if (successfully)
  {
    [(CNChangesNotifierProxy *)self->_notifierProxy postNotificationName:store fromSender:identifier saveIdentifier:0 isFromExternalProcess:?];
  }
}

- (void)waitForCurrentTasksToFinish
{
  notifierProxy = [(CNChangesNotifier *)self notifierProxy];
  [notifierProxy waitForCurrentTasksToFinish];
}

+ (void)flushSharedNotifier
{
  v2 = s_sharedNotifier;
  s_sharedNotifier = 0;

  s_onceToken_0 = 0;
}

- (void)dealloc
{
  [(CNChangesNotifierProxy *)self->_notifierProxy removeAllRegisteredNotificationSources];
  v3.receiver = self;
  v3.super_class = CNChangesNotifier;
  [(CNChangesNotifier *)&v3 dealloc];
}

@end