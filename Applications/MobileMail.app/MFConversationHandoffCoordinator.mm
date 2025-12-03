@interface MFConversationHandoffCoordinator
+ (OS_os_log)log;
- (MFConversationHandoffCoordinator)initWithUserActivityProvider:(id)provider currentVisibleMessageStrategy:(id)strategy;
- (MFUserActivityProvider)userActivityProvider;
- (id)_createUserActivity;
- (void)_updateUserActivity:(id)activity withHandoffAvailabilityForContentRepresentation:(id)representation message:(id)message;
- (void)_updateUserActivity:(id)activity withPersistentIDForMessage:(id)message completion:(id)completion;
- (void)_updateUserActivity:(id)activity withSearchableItemAttributeSetForMessage:(id)message;
- (void)setHandoffMessageRequest:(id)request;
- (void)updateHandoffMessageBasedOnMessageVisibility;
- (void)updateUserActivityState:(BOOL)state;
@end

@implementation MFConversationHandoffCoordinator

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BAC2C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD488 != -1)
  {
    dispatch_once(&qword_1006DD488, block);
  }

  v2 = qword_1006DD480;

  return v2;
}

- (MFConversationHandoffCoordinator)initWithUserActivityProvider:(id)provider currentVisibleMessageStrategy:(id)strategy
{
  providerCopy = provider;
  strategyCopy = strategy;
  v11.receiver = self;
  v11.super_class = MFConversationHandoffCoordinator;
  v8 = [(MFConversationHandoffCoordinator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_userActivityProvider, providerCopy);
    objc_storeStrong(&v9->_currentVisibleMessageStrategy, strategy);
  }

  return v9;
}

- (void)updateUserActivityState:(BOOL)state
{
  handoffMessageRequest = [(MFConversationHandoffCoordinator *)self handoffMessageRequest];
  userActivityProvider = [(MFConversationHandoffCoordinator *)self userActivityProvider];
  userActivity = [userActivityProvider userActivity];
  if (!userActivity)
  {
    userActivity = [(MFConversationHandoffCoordinator *)self _createUserActivity];
  }

  [userActivity setPersistentIdentifier:0];
  objc_initWeak(&location, self);
  objc_initWeak(&from, userActivityProvider);
  messageFuture = [handoffMessageRequest messageFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BAF50;
  v11[3] = &unk_100653BB0;
  v9 = handoffMessageRequest;
  v12 = v9;
  objc_copyWeak(&v14, &location);
  v10 = userActivity;
  v13 = v10;
  objc_copyWeak(&v15, &from);
  stateCopy = state;
  [messageFuture addSuccessBlock:v11];
  [messageFuture addFailureBlock:&stru_100653BD0];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)setHandoffMessageRequest:(id)request
{
  requestCopy = request;
  if (([(MessageContentRepresentationRequest *)self->_handoffMessageRequest isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_handoffMessageRequest, request);
    [(MFConversationHandoffCoordinator *)self updateUserActivityState:1];
  }
}

- (void)updateHandoffMessageBasedOnMessageVisibility
{
  currentVisibleMessageStrategy = [(MFConversationHandoffCoordinator *)self currentVisibleMessageStrategy];
  currentVisibleMessageContentRequest = [currentVisibleMessageStrategy currentVisibleMessageContentRequest];
  [(MFConversationHandoffCoordinator *)self setHandoffMessageRequest:currentVisibleMessageContentRequest];
}

- (id)_createUserActivity
{
  v2 = [NSUserActivity alloc];
  v3 = [v2 initWithActivityType:MSMailActivityHandoffTypeDisplayMessage];

  return v3;
}

- (void)_updateUserActivity:(id)activity withSearchableItemAttributeSetForMessage:(id)message
{
  activityCopy = activity;
  messageCopy = message;
  v6 = [CSSearchableItemAttributeSet alloc];
  activityType = [activityCopy activityType];
  v8 = [v6 initWithItemContentType:activityType];

  contentID = [messageCopy contentID];
  if (contentID)
  {
    [v8 setRelatedUniqueIdentifier:contentID];
    [activityCopy setEligibleForSearch:1];
  }

  else
  {

    v8 = 0;
    [activityCopy setEligibleForSearch:0];
  }

  [activityCopy setContentAttributeSet:v8];
}

- (void)_updateUserActivity:(id)activity withHandoffAvailabilityForContentRepresentation:(id)representation message:(id)message
{
  activityCopy = activity;
  representationCopy = representation;
  messageCopy = message;
  v10 = +[UIApplication sharedApplication];
  accountsProvider = [v10 accountsProvider];
  mailboxes = [messageCopy mailboxes];
  firstObject = [mailboxes firstObject];
  account = [firstObject account];
  objectID = [account objectID];
  v16 = [accountsProvider legacyMailAccountForObjectID:objectID];

  v17 = MSMailActivityHandoffTypeDisplayMessage;
  v18 = [v16 supportsHandoffType:MSMailActivityHandoffTypeDisplayMessage];
  publicMessageURL = [representationCopy publicMessageURL];
  absoluteString = [publicMessageURL absoluteString];
  v21 = absoluteString;
  if (publicMessageURL)
  {
    v25[0] = MSMailActivityHandoffTypeKey;
    v25[1] = MSMailActivityHandoffDisplayMessageKeyURL;
    v26[0] = v17;
    v26[1] = absoluteString;
    v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    [activityCopy setUserInfo:v22];

    if (objc_opt_respondsToSelector())
    {
      [activityCopy set_canonicalURL:publicMessageURL];
    }
  }

  else
  {
    v18 = 0;
  }

  [activityCopy setEligibleForHandoff:v18];
  [activityCopy setPersistentIdentifier:v21];
  subject = [messageCopy subject];
  v24 = [ECSubjectFormatter subjectStringForDisplayForSubject:subject];
  [activityCopy setTitle:v24];
}

- (void)_updateUserActivity:(id)activity withPersistentIDForMessage:(id)message completion:(id)completion
{
  activityCopy = activity;
  messageCopy = message;
  completionCopy = completion;
  currentVisibleMessageStrategy = [(MFConversationHandoffCoordinator *)self currentVisibleMessageStrategy];
  objectID = [messageCopy objectID];
  v13 = [currentVisibleMessageStrategy persistentIDForEMMessageObjectID:objectID];

  v14 = +[EFScheduler mainThreadScheduler];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001BBB90;
  v23[3] = &unk_100653BF8;
  v15 = activityCopy;
  v24 = v15;
  v16 = completionCopy;
  v25 = v16;
  [v13 onScheduler:v14 addSuccessBlock:v23];

  v17 = +[EFScheduler mainThreadScheduler];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001BBC20;
  v20[3] = &unk_10064DB90;
  v18 = messageCopy;
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