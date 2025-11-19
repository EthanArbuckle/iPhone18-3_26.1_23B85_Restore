@interface MailComposeScene
+ (OS_os_log)log;
- (id)composeViewDelegate;
- (id)stateRestorationActivityForMailScene;
- (void)mailSceneDidBecomeActive;
- (void)mailSceneDidConnectWithOptions:(id)a3;
- (void)mailSceneDidDisconnect;
- (void)mailSceneDidEnterBackground;
- (void)mailSceneWillResignActive;
- (void)resumeCompositionOfDraft:(id)a3 legacyDraft:(id)a4;
- (void)showComposeWithContext:(id)a3 animated:(BOOL)a4 initialTitle:(id)a5 presentationSource:(id)a6 completionBlock:(id)a7;
@end

@implementation MailComposeScene

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B420;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD080 != -1)
  {
    dispatch_once(&qword_1006DD080, block);
  }

  v2 = qword_1006DD078;

  return v2;
}

- (void)mailSceneDidConnectWithOptions:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MailComposeScene;
  [(MailScene *)&v25 mailSceneDidConnectWithOptions:v4];
  [CATransaction setFrameStallSkipRequest:1];
  v5 = sub_10010B7F0(self, v4);
  v6 = [MFMailComposeControllerViewDelegateHandler alloc];
  v7 = +[UIApplication sharedApplication];
  v8 = +[UIApplication sharedApplication];
  v9 = [v8 daemonInterface];
  v10 = [(MFMailComposeControllerViewDelegateHandler *)v6 initWithUICoordinator:v7 daemonInterface:v9];
  sub_100488810(self, v10);

  v11 = [[ComposeNavigationController alloc] initWithComposition:v5];
  [(MailComposeScene *)self setComposeNavigationController:v11];

  delegateHandler = self->_delegateHandler;
  v13 = [(MailComposeScene *)self composeNavigationController];
  [v13 setMailComposeDelegate:delegateHandler];

  v14 = [(MailComposeScene *)self composeNavigationController];
  v15 = [v14 autosaveIdentifier];

  v16 = [(MailComposeScene *)self composeNavigationController];
  v17 = [v16 originalMessageObjectID];

  v18 = [[MFActiveDraft alloc] initWithIdentifier:v15 andOriginalMessageIdentifier:v17];
  v19 = [(MailComposeScene *)self session];
  [v19 mf_setActiveDraft:v18];

  v20 = v15;
  if (!v15)
  {
    v19 = +[NSUUID UUID];
    v20 = [v19 UUIDString];
  }

  v21 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
  v22 = [NSPredicate predicateWithFormat:@"self == %@", v21];

  if (!v15)
  {
  }

  v23 = [(MailComposeScene *)self activationConditions];
  [v23 setCanActivateForTargetContentIdentifierPredicate:v22];

  v24 = [(MailComposeScene *)self activationConditions];
  [v24 setPrefersToActivateForTargetContentIdentifierPredicate:v22];

  sub_10010BB8C(self, v5);
}

- (void)mailSceneWillResignActive
{
  v7.receiver = self;
  v7.super_class = MailComposeScene;
  [(MailScene *)&v7 mailSceneWillResignActive];
  v3 = [(MailComposeScene *)self composeNavigationController];
  if (![v3 resolution])
  {

    goto LABEL_5;
  }

  v4 = [(MailComposeScene *)self composeNavigationController];
  v5 = [v4 resolution];

  if (v5 == 2)
  {
LABEL_5:
    v6 = [(MailComposeScene *)self composeNavigationController];
    [v6 willBeginDocking];
  }
}

- (void)mailSceneDidEnterBackground
{
  v9.receiver = self;
  v9.super_class = MailComposeScene;
  [(MailScene *)&v9 mailSceneDidEnterBackground];
  v3 = [(MailComposeScene *)self composeNavigationController];
  if ([v3 resolution])
  {
    v4 = [(MailComposeScene *)self composeNavigationController];
    v5 = [v4 resolution];

    if (v5 != 2)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [(MailComposeScene *)self composeNavigationController];
  [v6 didCompleteDocking];

  if (self)
  {
    delegateHandler = self->_delegateHandler;
  }

  else
  {
    delegateHandler = 0;
  }

  v8 = [(MFMailComposeControllerViewDelegateHandler *)delegateHandler delegate];
  [v8 composeFinishedWithResult:1];
}

- (id)stateRestorationActivityForMailScene
{
  v2 = [(MailComposeScene *)self composeNavigationController];
  v3 = [v2 userActivityForRestoration];

  return v3;
}

- (void)mailSceneDidDisconnect
{
  v8.receiver = self;
  v8.super_class = MailComposeScene;
  [(MailScene *)&v8 mailSceneDidDisconnect];
  v3 = [(MailComposeScene *)self composeNavigationController];
  v4 = [v3 resolution];

  if (!v4)
  {
    v5 = [(MailComposeScene *)self composeNavigationController];
    [v5 _setCompositionContext:0];

    v6 = +[UIApplication sharedApplication];
    v7 = [v6 dockPersistence];
    [v7 recoverAbandonedDrafts];
  }
}

- (void)resumeCompositionOfDraft:(id)a3 legacyDraft:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:v9 legacyMessage:v6];
  v8 = [(MailComposeScene *)self composeNavigationController];
  [v8 _setCompositionContext:v7];
}

- (void)showComposeWithContext:(id)a3 animated:(BOOL)a4 initialTitle:(id)a5 presentationSource:(id)a6 completionBlock:(id)a7
{
  v14 = a3;
  v10 = a5;
  v11 = a7;
  v12 = [(MailComposeScene *)self composeNavigationController];
  [v12 _setCompositionContext:v14];

  v13 = [(MailComposeScene *)self composeNavigationController];
  [v13 setInitialTitle:v10];

  v11[2](v11);
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