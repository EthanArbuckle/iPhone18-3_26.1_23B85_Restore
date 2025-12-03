@interface ComposeNavigationController
+ (OS_os_log)log;
+ (id)_dockedViewWithTitle:(id)title andFrame:(CGRect)frame;
+ (id)dockedViewForUserActivity:(id)activity withFrame:(CGRect)frame;
- (BOOL)shouldAutorotate;
- (CGRect)frameForAttachmentWithIdentifier:(id)identifier;
- (ComposeNavigationController)initWithComposition:(id)composition mailComposeControllerOptions:(unint64_t)options;
- (ComposeNavigationController)initWithUserActivity:(id)activity scene:(id)scene;
- (EMObjectID)originalMessageObjectID;
- (NSString)autosaveIdentifier;
- (UIPopoverPresentationControllerSourceItem)presentationSource;
- (id)composeTitle;
- (id)dockIdentifier;
- (id)dockedViewWithFrame:(CGRect)frame;
- (id)documentID;
- (id)userActivityForRestoration;
- (void)addZoomTransitionWithPresentationSourceView:(id)view;
- (void)didCancelDocking;
- (void)didCompleteDocking;
- (void)removeZoomTransition;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)securityScopeForURL:(id)l withHandler:(id)handler;
- (void)serializedPlaceholderForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d withHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBeginDocking;
@end

@implementation ComposeNavigationController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004AB44;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DCDD8 != -1)
  {
    dispatch_once(&qword_1006DCDD8, block);
  }

  v2 = qword_1006DCDD0;

  return v2;
}

- (ComposeNavigationController)initWithComposition:(id)composition mailComposeControllerOptions:(unint64_t)options
{
  compositionCopy = composition;
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

    v9 = [[MFMailComposeController alloc] initWithCompositionContext:compositionCopy options:options];
    originatingBundleID = [compositionCopy originatingBundleID];
    [v9 setOriginatingBundleID:originatingBundleID];

    [v9 setSourceAccountManagement:{objc_msgSend(compositionCopy, "sourceAccountManagement")}];
    [(ComposeNavigationController *)v8 pushViewController:v9 animated:0];
    composeViewController = v8->_composeViewController;
    v8->_composeViewController = v9;
  }

  return v8;
}

- (ComposeNavigationController)initWithUserActivity:(id)activity scene:(id)scene
{
  v5 = sub_10004ADBC(ComposeNavigationController, activity, scene);
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
  view = [(ComposeNavigationController *)self view];
  [view setDirectionalLayoutMargins:{v4, v6, v8, v10}];

  view2 = [(ComposeNavigationController *)self view];
  [view2 directionalLayoutMargins];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  topViewController = [(ComposeNavigationController *)self topViewController];
  view3 = [topViewController view];
  [view3 setDirectionalLayoutMargins:{v14, v16, v18, v20}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ComposeNavigationController;
  [(ComposeNavigationController *)&v7 viewDidAppear:appear];
  v4 = MSAccessibilityIdentifierComposeContainerView;
  view = [(ComposeNavigationController *)self view];
  [view setAccessibilityIdentifier:v4];

  if (objc_opt_respondsToSelector())
  {
    [(MFMailComposeController *)self->_composeViewController mf_updateAlertSuppressionContextsForReason:@"compose did appear"];
  }

  _mailComposeView = [(ComposeNavigationController *)self _mailComposeView];
  [_mailComposeView didAppear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = ComposeNavigationController;
  [(ComposeNavigationController *)&v6 viewWillDisappear:disappear];
  _mailComposeView = [(ComposeNavigationController *)self _mailComposeView];
  [_mailComposeView willDisappear];

  if ([(ComposeNavigationController *)self isQuickReply])
  {
    _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
    [_mailComposeController backUpDraft];
  }
}

- (CGRect)frameForAttachmentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_composeViewController;
  v6 = v5;
  if (v5)
  {
    [(MFMailComposeController *)v5 frameForAttachmentWithIdentifier:identifierCopy];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    view = [(ComposeNavigationController *)self view];
    view2 = [(MFMailComposeController *)v6 view];
    [view convertRect:view2 fromView:{v8, v10, v12, v14}];
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
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  autosaveIdentifier = [_mailComposeController autosaveIdentifier];

  v7 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
  [v4 setTargetContentIdentifier:v7];

  v17[0] = MSMailActivityHandoffTypeKey;
  v17[1] = MSMailActivityHandoffComposeKeyAutosaveID;
  v18[0] = MSMailActivityHandoffTypeComposeSansStreams;
  v18[1] = autosaveIdentifier;
  v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

  if (sub_10004B80C(self))
  {
    composeTitle = [(ComposeNavigationController *)self composeTitle];
    [v9 setObject:composeTitle forKeyedSubscript:MSMailActivityHandoffComposeKeySubject];
  }

  compositionContext = [(MFMailComposeController *)self->_composeViewController compositionContext];
  preferredSendingEmailAddress = [compositionContext preferredSendingEmailAddress];
  if (preferredSendingEmailAddress)
  {
    [v9 setObject:preferredSendingEmailAddress forKeyedSubscript:MSMailActivityHandoffComposeKeyPreferredSendingEmailAddress];
  }

  originalMessage = [compositionContext originalMessage];
  if ((*(EFIsNotNull + 16))(EFIsNotNull, originalMessage))
  {
    objectID = [originalMessage objectID];
    serializedRepresentation = [objectID serializedRepresentation];
    [v9 setObject:serializedRepresentation forKeyedSubscript:MSMailActivityHandoffComposeKeyOriginalMessageObjectID];
  }

  [v4 setUserInfo:v9];

  return v4;
}

- (id)dockIdentifier
{
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  autosaveIdentifier = [_mailComposeController autosaveIdentifier];

  return autosaveIdentifier;
}

+ (id)_dockedViewWithTitle:(id)title andFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleCopy = title;
  height = [[DockedPlaceholderView alloc] initWithFrame:x, y, width, height];
  v10 = +[UIColor mailDockedPlaceholderViewBackgroundColor];
  [(DockedPlaceholderView *)height setBackgroundColor:v10];

  v11 = sub_10004BA20(titleCopy);
  headerView = [(DockedPlaceholderView *)height headerView];
  [headerView setTitle:v11];

  return height;
}

+ (id)dockedViewForUserActivity:(id)activity withFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  userInfo = [activity userInfo];
  v10 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];

  v11 = sub_10004BA20(v10);
  v12 = [self _dockedViewWithTitle:v11 andFrame:{x, y, width, height}];

  return v12;
}

- (id)dockedViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_opt_class();
  composeTitle = [(ComposeNavigationController *)self composeTitle];
  v10 = [v8 _dockedViewWithTitle:composeTitle andFrame:{x, y, width, height}];

  return v10;
}

- (void)willBeginDocking
{
  [(ComposeNavigationController *)self removeZoomTransition];
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  [_mailComposeController saveFirstResponder];

  _mailComposeController2 = [(ComposeNavigationController *)self _mailComposeController];
  [_mailComposeController2 autosaveWithHandler:0];
}

- (void)didCancelDocking
{
  presentationSource = [(ComposeNavigationController *)self presentationSource];
  [(ComposeNavigationController *)self addZoomTransitionWithPresentationSourceView:?];
}

- (void)didCompleteDocking
{
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  [_mailComposeController backUpDraft];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004BE00;
  v4[3] = &unk_10064C570;
  v4[4] = self;
  sub_10004BF08(self, v4);
}

- (id)composeTitle
{
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  navigationBarTitle = [_mailComposeController navigationBarTitle];

  return navigationBarTitle;
}

- (id)documentID
{
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  documentID = [_mailComposeController documentID];

  return documentID;
}

- (BOOL)shouldAutorotate
{
  if (+[UIDevice mf_isPadIdiom])
  {
    parentViewController = [(ComposeNavigationController *)self parentViewController];
    v4 = parentViewController;
    if (parentViewController)
    {
      shouldAutorotate = [parentViewController shouldAutorotate];
    }

    else
    {
      shouldAutorotate = 1;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ComposeNavigationController;
    return [(ComposeNavigationController *)&v7 shouldAutorotate];
  }

  return shouldAutorotate;
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  mailComposeView = [(MFMailComposeController *)self->_composeViewController mailComposeView];
  [mailComposeView scrollToTopAnimated:animatedCopy];
}

- (void)serializedPlaceholderForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d withHandler:(id)handler
{
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  handlerCopy = handler;
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004C334;
  v18[3] = &unk_10064C5C0;
  v17 = handlerCopy;
  v19 = v17;
  [_mailComposeController serializedPlaceholderForFileName:nameCopy fileSize:size mimeType:typeCopy contentID:dCopy withHandler:v18];
}

- (void)securityScopeForURL:(id)l withHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004C434;
  v10[3] = &unk_10064C5C0;
  v9 = handlerCopy;
  v11 = v9;
  [_mailComposeController securityScopeForURL:lCopy withHandler:v10];
}

- (void)addZoomTransitionWithPresentationSourceView:(id)view
{
  viewCopy = view;
  v5 = MUISolariumFeatureEnabled();
  if (viewCopy)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(ComposeNavigationController *)self setPresentationSource:viewCopy];
    [(ComposeNavigationController *)self setModalPresentationStyle:2];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004C558;
    v8[3] = &unk_10064C5E8;
    v9 = viewCopy;
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
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  autosaveIdentifier = [_mailComposeController autosaveIdentifier];

  return autosaveIdentifier;
}

- (EMObjectID)originalMessageObjectID
{
  _mailComposeController = [(ComposeNavigationController *)self _mailComposeController];
  originalMessageObjectID = [_mailComposeController originalMessageObjectID];

  return originalMessageObjectID;
}

- (UIPopoverPresentationControllerSourceItem)presentationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationSource);

  return WeakRetained;
}

@end