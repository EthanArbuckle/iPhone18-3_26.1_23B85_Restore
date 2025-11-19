@interface MFConversationHandoffCoordinator
+ (OS_os_log)log;
- (MFConversationHandoffCoordinator)initWithUserActivityProvider:(id)a3 currentVisibleMessageStrategy:(id)a4;
- (MFUserActivityProvider)userActivityProvider;
- (id)_createUserActivity;
- (void)_updateUserActivity:(id)a3 withHandoffAvailabilityForContentRepresentation:(id)a4 message:(id)a5;
- (void)_updateUserActivity:(id)a3 withPersistentIDForMessage:(id)a4 completion:(id)a5;
- (void)_updateUserActivity:(id)a3 withSearchableItemAttributeSetForMessage:(id)a4;
- (void)setHandoffMessageRequest:(id)a3;
- (void)updateHandoffMessageBasedOnMessageVisibility;
- (void)updateUserActivityState:(BOOL)a3;
@end

@implementation MFConversationHandoffCoordinator

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BAC2C;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD488 != -1)
  {
    dispatch_once(&qword_1006DD488, block);
  }

  v2 = qword_1006DD480;

  return v2;
}

- (MFConversationHandoffCoordinator)initWithUserActivityProvider:(id)a3 currentVisibleMessageStrategy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MFConversationHandoffCoordinator;
  v8 = [(MFConversationHandoffCoordinator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_userActivityProvider, v6);
    objc_storeStrong(&v9->_currentVisibleMessageStrategy, a4);
  }

  return v9;
}

- (void)updateUserActivityState:(BOOL)a3
{
  v5 = [(MFConversationHandoffCoordinator *)self handoffMessageRequest];
  v6 = [(MFConversationHandoffCoordinator *)self userActivityProvider];
  v7 = [v6 userActivity];
  if (!v7)
  {
    v7 = [(MFConversationHandoffCoordinator *)self _createUserActivity];
  }

  [v7 setPersistentIdentifier:0];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v8 = [v5 messageFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BAF50;
  v11[3] = &unk_100653BB0;
  v9 = v5;
  v12 = v9;
  objc_copyWeak(&v14, &location);
  v10 = v7;
  v13 = v10;
  objc_copyWeak(&v15, &from);
  v16 = a3;
  [v8 addSuccessBlock:v11];
  [v8 addFailureBlock:&stru_100653BD0];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)setHandoffMessageRequest:(id)a3
{
  v5 = a3;
  if (([(MessageContentRepresentationRequest *)self->_handoffMessageRequest isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_handoffMessageRequest, a3);
    [(MFConversationHandoffCoordinator *)self updateUserActivityState:1];
  }
}

- (void)updateHandoffMessageBasedOnMessageVisibility
{
  v4 = [(MFConversationHandoffCoordinator *)self currentVisibleMessageStrategy];
  v3 = [v4 currentVisibleMessageContentRequest];
  [(MFConversationHandoffCoordinator *)self setHandoffMessageRequest:v3];
}

- (id)_createUserActivity
{
  v2 = [NSUserActivity alloc];
  v3 = [v2 initWithActivityType:MSMailActivityHandoffTypeDisplayMessage];

  return v3;
}

- (void)_updateUserActivity:(id)a3 withSearchableItemAttributeSetForMessage:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [CSSearchableItemAttributeSet alloc];
  v7 = [v10 activityType];
  v8 = [v6 initWithItemContentType:v7];

  v9 = [v5 contentID];
  if (v9)
  {
    [v8 setRelatedUniqueIdentifier:v9];
    [v10 setEligibleForSearch:1];
  }

  else
  {

    v8 = 0;
    [v10 setEligibleForSearch:0];
  }

  [v10 setContentAttributeSet:v8];
}

- (void)_updateUserActivity:(id)a3 withHandoffAvailabilityForContentRepresentation:(id)a4 message:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[UIApplication sharedApplication];
  v11 = [v10 accountsProvider];
  v12 = [v9 mailboxes];
  v13 = [v12 firstObject];
  v14 = [v13 account];
  v15 = [v14 objectID];
  v16 = [v11 legacyMailAccountForObjectID:v15];

  v17 = MSMailActivityHandoffTypeDisplayMessage;
  v18 = [v16 supportsHandoffType:MSMailActivityHandoffTypeDisplayMessage];
  v19 = [v8 publicMessageURL];
  v20 = [v19 absoluteString];
  v21 = v20;
  if (v19)
  {
    v25[0] = MSMailActivityHandoffTypeKey;
    v25[1] = MSMailActivityHandoffDisplayMessageKeyURL;
    v26[0] = v17;
    v26[1] = v20;
    v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v7 setUserInfo:v22];

    if (objc_opt_respondsToSelector())
    {
      [v7 set_canonicalURL:v19];
    }
  }

  else
  {
    v18 = 0;
  }

  [v7 setEligibleForHandoff:v18];
  [v7 setPersistentIdentifier:v21];
  v23 = [v9 subject];
  v24 = [ECSubjectFormatter subjectStringForDisplayForSubject:v23];
  [v7 setTitle:v24];
}

- (void)_updateUserActivity:(id)a3 withPersistentIDForMessage:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MFConversationHandoffCoordinator *)self currentVisibleMessageStrategy];
  v12 = [v9 objectID];
  v13 = [v11 persistentIDForEMMessageObjectID:v12];

  v14 = +[EFScheduler mainThreadScheduler];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001BBB90;
  v23[3] = &unk_100653BF8;
  v15 = v8;
  v24 = v15;
  v16 = v10;
  v25 = v16;
  [v13 onScheduler:v14 addSuccessBlock:v23];

  v17 = +[EFScheduler mainThreadScheduler];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001BBC20;
  v20[3] = &unk_10064DB90;
  v18 = v9;
  v21 = v18;
  v19 = v16;
  v22 = v19;
  [v13 onScheduler:v17 addFailureBlock:v20];
}

- (MFUserActivityProvider)userActivityProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_userActivityProvider);

  return WeakRetained;
}

@end