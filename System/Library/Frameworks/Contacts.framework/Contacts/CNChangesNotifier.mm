@interface CNChangesNotifier
+ (id)sharedNotifier;
+ (id)sharedNotifierWithNotificationWrapper:(id)a3 schedulerProvider:(id)a4 loggerProvider:(id)a5;
+ (void)flushSharedNotifier;
- (CNChangesNotifier)initWithNotificationWrapper:(id)a3 schedulerProvider:(id)a4 loggerProvider:(id)a5;
- (void)dealloc;
- (void)didChangeMeContactSuccessfully:(BOOL)a3 fromContactStore:(id)a4 requestIdentifier:(id)a5;
- (void)didSaveChangesSuccessfully:(BOOL)a3 fromContactStore:(id)a4 requestIdentifier:(id)a5;
- (void)waitForCurrentTasksToFinish;
@end

@implementation CNChangesNotifier

+ (id)sharedNotifier
{
  v3 = [MEMORY[0x1E6996820] defaultProvider];
  v4 = +[CNContactsLoggerProvider defaultProvider];
  v5 = [a1 sharedNotifierWithNotificationWrapper:0 schedulerProvider:v3 loggerProvider:v4];

  return v5;
}

+ (id)sharedNotifierWithNotificationWrapper:(id)a3 schedulerProvider:(id)a4 loggerProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__CNChangesNotifier_sharedNotifierWithNotificationWrapper_schedulerProvider_loggerProvider___block_invoke;
  v18[3] = &unk_1E7415BC8;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = a1;
  v11 = s_onceToken_0;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (CNChangesNotifier)initWithNotificationWrapper:(id)a3 schedulerProvider:(id)a4 loggerProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CNChangesNotifier;
  v11 = [(CNChangesNotifier *)&v25 init];
  if (v11)
  {
    v13 = [[CNChangesNotifierProxy alloc] initWithSchedulerProvider:v9 loggerProvider:v10];
    v14 = *(v11 + 1);
    *(v11 + 1) = v13;

    if (!v8)
    {
      v8 = objc_alloc_init(CNChangeNotifierDistributedCenterWrapper);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__CNChangesNotifier_initWithNotificationWrapper_schedulerProvider_loggerProvider___block_invoke;
    aBlock[3] = &unk_1E7415BF0;
    v15 = v8;
    v24 = v15;
    v16 = _Block_copy(aBlock);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__CNChangesNotifier_initWithNotificationWrapper_schedulerProvider_loggerProvider___block_invoke_2;
    v21[3] = &unk_1E7415BF0;
    v8 = v15;
    v22 = v8;
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

- (void)didSaveChangesSuccessfully:(BOOL)a3 fromContactStore:(id)a4 requestIdentifier:(id)a5
{
  if (a3)
  {
    [(CNChangesNotifierProxy *)self->_notifierProxy postNotificationName:a4 fromSender:a5 saveIdentifier:0 isFromExternalProcess:?];
  }

  notifierProxy = self->_notifierProxy;

  [(CNChangesNotifierProxy *)notifierProxy stopSupressionOfNotificationName:?];
}

- (void)didChangeMeContactSuccessfully:(BOOL)a3 fromContactStore:(id)a4 requestIdentifier:(id)a5
{
  if (a3)
  {
    [(CNChangesNotifierProxy *)self->_notifierProxy postNotificationName:a4 fromSender:a5 saveIdentifier:0 isFromExternalProcess:?];
  }
}

- (void)waitForCurrentTasksToFinish
{
  v2 = [(CNChangesNotifier *)self notifierProxy];
  [v2 waitForCurrentTasksToFinish];
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