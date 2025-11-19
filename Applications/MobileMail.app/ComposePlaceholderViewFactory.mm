@interface ComposePlaceholderViewFactory
- (ComposePlaceholderViewFactory)initWithDaemonInterface:(id)a3;
- (id)_placeholderContentWithMessage:(id)a3;
- (id)_requestContentForActivity:(id)a3;
- (id)placeholderViewForUserActivity:(id)a3 frame:(CGRect)a4 parentMargins:(UIEdgeInsets)a5;
@end

@implementation ComposePlaceholderViewFactory

- (ComposePlaceholderViewFactory)initWithDaemonInterface:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ComposePlaceholderViewFactory;
  v5 = [(ComposePlaceholderViewFactory *)&v17 init];
  if (v5)
  {
    v6 = [v4 messageRepository];
    messageRepository = v5->_messageRepository;
    v5->_messageRepository = v6;

    v8 = [[MFComposeWebView alloc] initWithFrame:0 isQuickReply:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    webview = v5->_webview;
    v5->_webview = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    contentFuturesByID = v5->_contentFuturesByID;
    v5->_contentFuturesByID = v10;

    v12 = [EFScheduler serialDispatchQueueSchedulerWithName:@"ComposePlaceholderSnapshotQueue"];
    snapshotQueue = v5->_snapshotQueue;
    v5->_snapshotQueue = v12;

    v14 = [v4 accountRepository];
    v15 = [v14 deliveryAccounts];
    v5->_showSenderField = [v15 count] > 1;
  }

  return v5;
}

- (id)placeholderViewForUserActivity:(id)a3 frame:(CGRect)a4 parentMargins:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = [v14 userInfo];
  v16 = [v15 objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];

  v17 = [(ComposePlaceholderViewFactory *)self _requestContentForActivity:v14];
  v18 = [[ComposePlaceholderView alloc] initWithFrame:v16 subject:v17 modelFuture:x, y, width, height];
  [(ComposePlaceholderView *)v18 setLayoutMargins:top, left, bottom, right];
  v19 = [(ComposePlaceholderViewFactory *)self snapshotQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004E8B4;
  v23[3] = &unk_10064C660;
  v20 = v18;
  v24 = v20;
  v25 = self;
  [v19 performBlock:v23];

  v21 = v20;
  return v20;
}

- (id)_requestContentForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];

  v7 = [(ComposePlaceholderViewFactory *)self contentFuturesByID];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = +[EFPromise promise];
    v10 = +[EFScheduler globalAsyncScheduler];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004EB48;
    v15[3] = &unk_10064C6B0;
    v11 = v6;
    v16 = v11;
    v12 = v9;
    v17 = v12;
    v18 = self;
    [v10 performBlock:v15];

    v8 = [v12 future];
    v13 = [(ComposePlaceholderViewFactory *)self contentFuturesByID];
    [v13 setObject:v8 forKeyedSubscript:v11];
  }

  return v8;
}

- (id)_placeholderContentWithMessage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ComposePlaceholderViewModel);
  [(ComposePlaceholderViewModel *)v5 setShowSenderAddress:[(ComposePlaceholderViewFactory *)self showSenderField]];
  v6 = [v4 firstSender];
  v7 = [v6 emailAddressValue];
  v8 = [v7 simpleAddress];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 stringValue];
  }

  v11 = v10;

  [(ComposePlaceholderViewModel *)v5 setSenderAddress:v11];
  v12 = [v4 to];
  v13 = sub_10004EE7C(v12);
  [(ComposePlaceholderViewModel *)v5 setToRecipients:v13];

  v14 = [v4 cc];
  v15 = sub_10004EE7C(v14);
  [(ComposePlaceholderViewModel *)v5 setCcRecipients:v15];

  v16 = [v4 bcc];
  v17 = sub_10004EE7C(v16);
  [(ComposePlaceholderViewModel *)v5 setBccRecipients:v17];

  v18 = [v4 bestAlternativePart];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_100662A88;
  }

  [(ComposePlaceholderViewModel *)v5 setHtmlContent:v20];

  return v5;
}

@end