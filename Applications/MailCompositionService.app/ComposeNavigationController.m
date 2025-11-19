@interface ComposeNavigationController
+ (OS_os_log)log;
+ (id)_dockedViewWithTitle:(id)a3 andFrame:(CGRect)a4;
+ (id)dockedViewForUserActivity:(id)a3 withFrame:(CGRect)a4;
- (BOOL)shouldAutorotate;
- (CGRect)frameForAttachmentWithIdentifier:(id)a3;
- (ComposeNavigationController)initWithComposition:(id)a3 mailComposeControllerOptions:(unint64_t)a4;
- (ComposeNavigationController)initWithUserActivity:(id)a3 scene:(id)a4;
- (EMObjectID)originalMessageObjectID;
- (NSString)autosaveIdentifier;
- (UIPopoverPresentationControllerSourceItem)presentationSource;
- (id)composeTitle;
- (id)dockIdentifier;
- (id)dockedViewWithFrame:(CGRect)a3;
- (id)documentID;
- (id)userActivityForRestoration;
- (void)addZoomTransitionWithPresentationSourceView:(id)a3;
- (void)didCancelDocking;
- (void)didCompleteDocking;
- (void)removeZoomTransition;
- (void)securityScopeForURL:(id)a3 withHandler:(id)a4;
- (void)serializedPlaceholderForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6 withHandler:(id)a7;
- (void)viewDidLayoutSubviews;
- (void)willBeginDocking;
@end

@implementation ComposeNavigationController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000013D8;
  block[3] = &unk_1000184E8;
  block[4] = a1;
  if (qword_10001F1F8 != -1)
  {
    dispatch_once(&qword_10001F1F8, block);
  }

  v2 = qword_10001F1F0;

  return v2;
}

- (ComposeNavigationController)initWithComposition:(id)a3 mailComposeControllerOptions:(unint64_t)a4
{
  v6 = a3;
  if (MFIsMobileMail())
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = self;
  v13.super_class = ComposeNavigationController;
  v8 = [(ComposeNavigationController *)&v13 initWithNavigationBarClass:v7 toolbarClass:0];
  if (v8)
  {
    if (+[UIDevice mf_isPadIdiom])
    {
      [(ComposeNavigationController *)v8 setModalPresentationStyle:1];
    }

    v9 = [[MFMailComposeController alloc] initWithCompositionContext:v6 options:a4];
    v10 = [v6 originatingBundleID];
    [v9 setOriginatingBundleID:v10];

    [v9 setSourceAccountManagement:{objc_msgSend(v6, "sourceAccountManagement")}];
    [(ComposeNavigationController *)v8 pushViewController:v9 animated:0];
    composeViewController = v8->_composeViewController;
    v8->_composeViewController = v9;
  }

  return v8;
}

- (ComposeNavigationController)initWithUserActivity:(id)a3 scene:(id)a4
{
  v5 = sub_100001650(ComposeNavigationController, a3, a4);
  v6 = [(ComposeNavigationController *)self initWithComposition:v5];

  return v6;
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = ComposeNavigationController;
  [(ComposeNavigationController *)&v23 viewDidLayoutSubviews];
  [(ComposeNavigationController *)self systemMinimumLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ComposeNavigationController *)self view];
  [v11 setDirectionalLayoutMargins:{v4, v6, v8, v10}];

  v12 = [(ComposeNavigationController *)self view];
  [v12 directionalLayoutMargins];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(ComposeNavigationController *)self topViewController];
  v22 = [v21 view];
  [v22 setDirectionalLayoutMargins:{v14, v16, v18, v20}];
}

- (CGRect)frameForAttachmentWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_composeViewController;
  v6 = v5;
  if (v5)
  {
    [(MFMailComposeController *)v5 frameForAttachmentWithIdentifier:v4];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(ComposeNavigationController *)self view];
    v16 = [(MFMailComposeController *)v6 view];
    [v15 convertRect:v16 fromView:{v8, v10, v12, v14}];
    x = v17;
    y = v19;
    width = v21;
    height = v23;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)userActivityForRestoration
{
  v3 = [NSUserActivity alloc];
  v4 = [v3 initWithActivityType:MSMailActivityHandoffTypeComposeWithStreams];
  v5 = [(ComposeNavigationController *)self _mailComposeController];
  v6 = [v5 autosaveIdentifier];

  v7 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
  [v4 setTargetContentIdentifier:v7];

  v17[0] = MSMailActivityHandoffTypeKey;
  v17[1] = MSMailActivityHandoffComposeKeyAutosaveID;
  v18[0] = MSMailActivityHandoffTypeComposeSansStreams;
  v18[1] = v6;
  v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

  if (sub_1000020A0(self))
  {
    v10 = [(ComposeNavigationController *)self composeTitle];
    [v9 setObject:v10 forKeyedSubscript:MSMailActivityHandoffComposeKeySubject];
  }

  v11 = [(MFMailComposeController *)self->_composeViewController compositionContext];
  v12 = [v11 preferredSendingEmailAddress];
  if (v12)
  {
    [v9 setObject:v12 forKeyedSubscript:MSMailActivityHandoffComposeKeyPreferredSendingEmailAddress];
  }

  v13 = [v11 originalMessage];
  if ((*(EFIsNotNull + 16))(EFIsNotNull, v13))
  {
    v14 = [v13 objectID];
    v15 = [v14 serializedRepresentation];
    [v9 setObject:v15 forKeyedSubscript:MSMailActivityHandoffComposeKeyOriginalMessageObjectID];
  }

  [v4 setUserInfo:v9];

  return v4;
}

- (id)dockIdentifier
{
  v2 = [(ComposeNavigationController *)self _mailComposeController];
  v3 = [v2 autosaveIdentifier];

  return v3;
}

+ (id)_dockedViewWithTitle:(id)a3 andFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = [[DockedPlaceholderView alloc] initWithFrame:x, y, width, height];
  v10 = +[UIColor mailDockedPlaceholderViewBackgroundColor];
  [(DockedPlaceholderView *)v9 setBackgroundColor:v10];

  v11 = sub_1000022B4(v8);
  v12 = [(DockedPlaceholderView *)v9 headerView];
  [v12 setTitle:v11];

  return v9;
}

+ (id)dockedViewForUserActivity:(id)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [a3 userInfo];
  v10 = [v9 objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];

  v11 = sub_1000022B4(v10);
  v12 = [a1 _dockedViewWithTitle:v11 andFrame:{x, y, width, height}];

  return v12;
}

- (id)dockedViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  v9 = [(ComposeNavigationController *)self composeTitle];
  v10 = [v8 _dockedViewWithTitle:v9 andFrame:{x, y, width, height}];

  return v10;
}

- (void)willBeginDocking
{
  [(ComposeNavigationController *)self removeZoomTransition];
  v3 = [(ComposeNavigationController *)self _mailComposeController];
  [v3 saveFirstResponder];

  v4 = [(ComposeNavigationController *)self _mailComposeController];
  [v4 autosaveWithHandler:0];
}

- (void)didCancelDocking
{
  v3 = [(ComposeNavigationController *)self presentationSource];
  [(ComposeNavigationController *)self addZoomTransitionWithPresentationSourceView:?];
}

- (void)didCompleteDocking
{
  v3 = [(ComposeNavigationController *)self _mailComposeController];
  [v3 backUpDraft];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002694;
  v4[3] = &unk_100018510;
  v4[4] = self;
  sub_10000279C(self, v4);
}

- (id)composeTitle
{
  v2 = [(ComposeNavigationController *)self _mailComposeController];
  v3 = [v2 navigationBarTitle];

  return v3;
}

- (id)documentID
{
  v2 = [(ComposeNavigationController *)self _mailComposeController];
  v3 = [v2 documentID];

  return v3;
}

- (BOOL)shouldAutorotate
{
  if (+[UIDevice mf_isPadIdiom])
  {
    v3 = [(ComposeNavigationController *)self parentViewController];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 shouldAutorotate];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ComposeNavigationController;
    return [(ComposeNavigationController *)&v7 shouldAutorotate];
  }

  return v5;
}

- (void)serializedPlaceholderForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6 withHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(ComposeNavigationController *)self _mailComposeController];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002BC8;
  v18[3] = &unk_100018560;
  v17 = v15;
  v19 = v17;
  [v16 serializedPlaceholderForFileName:v12 fileSize:a4 mimeType:v13 contentID:v14 withHandler:v18];
}

- (void)securityScopeForURL:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ComposeNavigationController *)self _mailComposeController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002CC8;
  v10[3] = &unk_100018560;
  v9 = v7;
  v11 = v9;
  [v8 securityScopeForURL:v6 withHandler:v10];
}

- (void)addZoomTransitionWithPresentationSourceView:(id)a3
{
  v4 = a3;
  v5 = MUISolariumFeatureEnabled();
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(ComposeNavigationController *)self setPresentationSource:v4];
    [(ComposeNavigationController *)self setModalPresentationStyle:2];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100002DEC;
    v8[3] = &unk_100018588;
    v9 = v4;
    v7 = [UIViewControllerTransition _zoomWithOptions:0 sourceItemProvider:v8];
    [(ComposeNavigationController *)self setPreferredTransition:v7];
  }
}

- (void)removeZoomTransition
{
  if (MUISolariumFeatureEnabled())
  {

    [(ComposeNavigationController *)self setPreferredTransition:0];
  }
}

- (NSString)autosaveIdentifier
{
  v2 = [(ComposeNavigationController *)self _mailComposeController];
  v3 = [v2 autosaveIdentifier];

  return v3;
}

- (EMObjectID)originalMessageObjectID
{
  v2 = [(ComposeNavigationController *)self _mailComposeController];
  v3 = [v2 originalMessageObjectID];

  return v3;
}

- (UIPopoverPresentationControllerSourceItem)presentationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationSource);

  return WeakRetained;
}

@end