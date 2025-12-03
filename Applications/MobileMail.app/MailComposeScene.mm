@interface MailComposeScene
+ (OS_os_log)log;
- (id)composeViewDelegate;
- (id)stateRestorationActivityForMailScene;
- (void)mailSceneDidBecomeActive;
- (void)mailSceneDidConnectWithOptions:(id)options;
- (void)mailSceneDidDisconnect;
- (void)mailSceneDidEnterBackground;
- (void)mailSceneWillResignActive;
- (void)resumeCompositionOfDraft:(id)draft legacyDraft:(id)legacyDraft;
- (void)showComposeWithContext:(id)context animated:(BOOL)animated initialTitle:(id)title presentationSource:(id)source completionBlock:(id)block;
@end

@implementation MailComposeScene

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B420;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD080 != -1)
  {
    dispatch_once(&qword_1006DD080, block);
  }

  v2 = qword_1006DD078;

  return v2;
}

- (void)mailSceneDidConnectWithOptions:(id)options
{
  optionsCopy = options;
  v25.receiver = self;
  v25.super_class = MailComposeScene;
  [(MailScene *)&v25 mailSceneDidConnectWithOptions:optionsCopy];
  [CATransaction setFrameStallSkipRequest:1];
  v5 = sub_10010B7F0(self, optionsCopy);
  v6 = [MFMailComposeControllerViewDelegateHandler alloc];
  v7 = +[UIApplication sharedApplication];
  v8 = +[UIApplication sharedApplication];
  daemonInterface = [v8 daemonInterface];
  v10 = [(MFMailComposeControllerViewDelegateHandler *)v6 initWithUICoordinator:v7 daemonInterface:daemonInterface];
  sub_100488810(self, v10);

  v11 = [[ComposeNavigationController alloc] initWithComposition:v5];
  [(MailComposeScene *)self setComposeNavigationController:v11];

  delegateHandler = self->_delegateHandler;
  composeNavigationController = [(MailComposeScene *)self composeNavigationController];
  [composeNavigationController setMailComposeDelegate:delegateHandler];

  composeNavigationController2 = [(MailComposeScene *)self composeNavigationController];
  autosaveIdentifier = [composeNavigationController2 autosaveIdentifier];

  composeNavigationController3 = [(MailComposeScene *)self composeNavigationController];
  originalMessageObjectID = [composeNavigationController3 originalMessageObjectID];

  v18 = [[MFActiveDraft alloc] initWithIdentifier:autosaveIdentifier andOriginalMessageIdentifier:originalMessageObjectID];
  session = [(MailComposeScene *)self session];
  [session mf_setActiveDraft:v18];

  uUIDString = autosaveIdentifier;
  if (!autosaveIdentifier)
  {
    session = +[NSUUID UUID];
    uUIDString = [session UUIDString];
  }

  v21 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
  v22 = [NSPredicate predicateWithFormat:@"self == %@", v21];

  if (!autosaveIdentifier)
  {
  }

  activationConditions = [(MailComposeScene *)self activationConditions];
  [activationConditions setCanActivateForTargetContentIdentifierPredicate:v22];

  activationConditions2 = [(MailComposeScene *)self activationConditions];
  [activationConditions2 setPrefersToActivateForTargetContentIdentifierPredicate:v22];

  sub_10010BB8C(self, v5);
}

- (void)mailSceneWillResignActive
{
  v7.receiver = self;
  v7.super_class = MailComposeScene;
  [(MailScene *)&v7 mailSceneWillResignActive];
  composeNavigationController = [(MailComposeScene *)self composeNavigationController];
  if (![composeNavigationController resolution])
  {

    goto LABEL_5;
  }

  composeNavigationController2 = [(MailComposeScene *)self composeNavigationController];
  resolution = [composeNavigationController2 resolution];

  if (resolution == 2)
  {
LABEL_5:
    composeNavigationController3 = [(MailComposeScene *)self composeNavigationController];
    [composeNavigationController3 willBeginDocking];
  }
}

- (void)mailSceneDidEnterBackground
{
  v9.receiver = self;
  v9.super_class = MailComposeScene;
  [(MailScene *)&v9 mailSceneDidEnterBackground];
  composeNavigationController = [(MailComposeScene *)self composeNavigationController];
  if ([composeNavigationController resolution])
  {
    composeNavigationController2 = [(MailComposeScene *)self composeNavigationController];
    resolution = [composeNavigationController2 resolution];

    if (resolution != 2)
    {
      return;
    }
  }

  else
  {
  }

  composeNavigationController3 = [(MailComposeScene *)self composeNavigationController];
  [composeNavigationController3 didCompleteDocking];

  if (self)
  {
    delegateHandler = self->_delegateHandler;
  }

  else
  {
    delegateHandler = 0;
  }

  delegate = [(MFMailComposeControllerViewDelegateHandler *)delegateHandler delegate];
  [delegate composeFinishedWithResult:1];
}

- (id)stateRestorationActivityForMailScene
{
  composeNavigationController = [(MailComposeScene *)self composeNavigationController];
  userActivityForRestoration = [composeNavigationController userActivityForRestoration];

  return userActivityForRestoration;
}

- (void)mailSceneDidDisconnect
{
  v8.receiver = self;
  v8.super_class = MailComposeScene;
  [(MailScene *)&v8 mailSceneDidDisconnect];
  composeNavigationController = [(MailComposeScene *)self composeNavigationController];
  resolution = [composeNavigationController resolution];

  if (!resolution)
  {
    composeNavigationController2 = [(MailComposeScene *)self composeNavigationController];
    [composeNavigationController2 _setCompositionContext:0];

    v6 = +[UIApplication sharedApplication];
    dockPersistence = [v6 dockPersistence];
    [dockPersistence recoverAbandonedDrafts];
  }
}

- (void)resumeCompositionOfDraft:(id)draft legacyDraft:(id)legacyDraft
{
  draftCopy = draft;
  legacyDraftCopy = legacyDraft;
  v7 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:draftCopy legacyMessage:legacyDraftCopy];
  composeNavigationController = [(MailComposeScene *)self composeNavigationController];
  [composeNavigationController _setCompositionContext:v7];
}

- (void)showComposeWithContext:(id)context animated:(BOOL)animated initialTitle:(id)title presentationSource:(id)source completionBlock:(id)block
{
  contextCopy = context;
  titleCopy = title;
  blockCopy = block;
  composeNavigationController = [(MailComposeScene *)self composeNavigationController];
  [composeNavigationController _setCompositionContext:contextCopy];

  composeNavigationController2 = [(MailComposeScene *)self composeNavigationController];
  [composeNavigationController2 setInitialTitle:titleCopy];

  blockCopy[2](blockCopy);
}

- (void)mailSceneDidBecomeActive
{
  v2.receiver = self;
  v2.super_class = MailComposeScene;
  [(MailScene *)&v2 mailSceneDidBecomeActive];
}

- (id)composeViewDelegate
{
  if (self)
  {
    self = self->_delegateHandler;
  }

  return self;
}

@end