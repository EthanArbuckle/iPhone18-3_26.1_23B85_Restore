@interface ComposePlaceholderViewFactory
- (ComposePlaceholderViewFactory)initWithDaemonInterface:(id)interface;
- (id)_placeholderContentWithMessage:(id)message;
- (id)_requestContentForActivity:(id)activity;
- (id)placeholderViewForUserActivity:(id)activity frame:(CGRect)frame parentMargins:(UIEdgeInsets)margins;
@end

@implementation ComposePlaceholderViewFactory

- (ComposePlaceholderViewFactory)initWithDaemonInterface:(id)interface
{
  interfaceCopy = interface;
  v17.receiver = self;
  v17.super_class = ComposePlaceholderViewFactory;
  v5 = [(ComposePlaceholderViewFactory *)&v17 init];
  if (v5)
  {
    messageRepository = [interfaceCopy messageRepository];
    messageRepository = v5->_messageRepository;
    v5->_messageRepository = messageRepository;

    v8 = [[MFComposeWebView alloc] initWithFrame:0 isQuickReply:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    webview = v5->_webview;
    v5->_webview = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    contentFuturesByID = v5->_contentFuturesByID;
    v5->_contentFuturesByID = v10;

    v12 = [EFScheduler serialDispatchQueueSchedulerWithName:@"ComposePlaceholderSnapshotQueue"];
    snapshotQueue = v5->_snapshotQueue;
    v5->_snapshotQueue = v12;

    accountRepository = [interfaceCopy accountRepository];
    deliveryAccounts = [accountRepository deliveryAccounts];
    v5->_showSenderField = [deliveryAccounts count] > 1;
  }

  return v5;
}

- (id)placeholderViewForUserActivity:(id)activity frame:(CGRect)frame parentMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v16 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];

  v17 = [(ComposePlaceholderViewFactory *)self _requestContentForActivity:activityCopy];
  height = [[ComposePlaceholderView alloc] initWithFrame:v16 subject:v17 modelFuture:x, y, width, height];
  [(ComposePlaceholderView *)height setLayoutMargins:top, left, bottom, right];
  snapshotQueue = [(ComposePlaceholderViewFactory *)self snapshotQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100005148;
  v23[3] = &unk_100018600;
  v20 = height;
  v24 = v20;
  selfCopy = self;
  [snapshotQueue performBlock:v23];

  v21 = v20;
  return v20;
}

- (id)_requestContentForActivity:(id)activity
{
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];

  contentFuturesByID = [(ComposePlaceholderViewFactory *)self contentFuturesByID];
  future = [contentFuturesByID objectForKeyedSubscript:v6];

  if (!future)
  {
    v9 = +[EFPromise promise];
    v10 = +[EFScheduler globalAsyncScheduler];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000053DC;
    v15[3] = &unk_100018650;
    v11 = v6;
    v16 = v11;
    v12 = v9;
    v17 = v12;
    selfCopy = self;
    [v10 performBlock:v15];

    future = [v12 future];
    contentFuturesByID2 = [(ComposePlaceholderViewFactory *)self contentFuturesByID];
    [contentFuturesByID2 setObject:future forKeyedSubscript:v11];
  }

  return future;
}

- (id)_placeholderContentWithMessage:(id)message
{
  messageCopy = message;
  v5 = objc_alloc_init(ComposePlaceholderViewModel);
  [(ComposePlaceholderViewModel *)v5 setShowSenderAddress:[(ComposePlaceholderViewFactory *)self showSenderField]];
  firstSender = [messageCopy firstSender];
  emailAddressValue = [firstSender emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v9 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [firstSender stringValue];
  }

  v11 = stringValue;

  [(ComposePlaceholderViewModel *)v5 setSenderAddress:v11];
  v12 = [messageCopy to];
  v13 = sub_100005710(v12);
  [(ComposePlaceholderViewModel *)v5 setToRecipients:v13];

  v14 = [messageCopy cc];
  v15 = sub_100005710(v14);
  [(ComposePlaceholderViewModel *)v5 setCcRecipients:v15];

  v16 = [messageCopy bcc];
  v17 = sub_100005710(v16);
  [(ComposePlaceholderViewModel *)v5 setBccRecipients:v17];

  bestAlternativePart = [messageCopy bestAlternativePart];
  v19 = bestAlternativePart;
  if (bestAlternativePart)
  {
    v20 = bestAlternativePart;
  }

  else
  {
    v20 = &stru_1000188C0;
  }

  [(ComposePlaceholderViewModel *)v5 setHtmlContent:v20];

  return v5;
}

@end