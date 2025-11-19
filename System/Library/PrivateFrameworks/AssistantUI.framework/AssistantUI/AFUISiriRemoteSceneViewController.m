@interface AFUISiriRemoteSceneViewController
+ (id)exportedInterface;
+ (id)remoteObjectInterface;
- (AFUISiriRemoteSceneViewController)init;
- (AFUISiriRemoteSceneViewControllerDataSource)dataSource;
- (AFUISiriRemoteSceneViewControllerDelegate)delegate;
- (id)_connection;
- (id)serviceViewControllerProxy;
- (id)serviceViewControllerProxyWithErrorHandler:(id)a3;
- (void)_audioCategoriesDisablingVolumeHUDDidChangeTo:(id)a3;
- (void)_handleInvalidationForReason:(unint64_t)a3 explanation:(id)a4;
- (void)_handleSceneDidActivateWithIdentifier:(id)a3;
- (void)_interrupted;
- (void)_invalidated;
- (void)animatedDisappearanceDidBeginWithDuration:(double)a3 reason:(int64_t)a4;
- (void)applicationDidBecomeActive;
- (void)applicationWillEnterForeground;
- (void)applicationWillResignActive;
- (void)dealloc;
- (void)didDetectGestureEvent:(int64_t)a3 inRegion:(int64_t)a4;
- (void)didReceiveBugButtonLongPress;
- (void)didReceiveHelpAction;
- (void)didReceiveOrbViewTapToCancelRequest;
- (void)didReceiveReportBugAction;
- (void)didReceiveShortTapActionWithRequestOptions:(id)a3;
- (void)didSuccessfullyHandleCommandsInDelayedActionCommand:(id)a3;
- (void)dismissSiriResults;
- (void)emitInstrumentationEvent:(id)a3;
- (void)emitInstrumentationEvent:(id)a3 atTime:(unint64_t)a4;
- (void)emitUIStateTransitionForSiriDismissalWithDismissalReason:(int)a3 completion:(id)a4;
- (void)getScreenshotWithReplyHandler:(id)a3;
- (void)handlePasscodeUnlockWithClient:(unint64_t)a3 withCompletion:(id)a4;
- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4;
- (void)inputTypeDidChange:(int64_t)a3;
- (void)invalidate;
- (void)invalidateSystemApertureAssertion;
- (void)noteApplicationTransition;
- (void)openURL:(id)a3 bundleId:(id)a4 inPlace:(BOOL)a5 completion:(id)a6;
- (void)openURL:(id)a3 bundleId:(id)a4 inPlace:(BOOL)a5 launchOptions:(id)a6 completion:(id)a7;
- (void)orientationWillChangeTo:(int64_t)a3;
- (void)preloadPluginBundles;
- (void)preloadPresentationBundleWithIdentifier:(id)a3;
- (void)presentationDidPresentKeyboard;
- (void)presentationStateUpdatedFromPresentationState:(int64_t)a3 toPresentationState:(int64_t)a4;
- (void)pulseHelpButton;
- (void)requestHostBlurVisible:(BOOL)a3 reason:(int64_t)a4 fence:(id)a5;
- (void)requestSystemApertureCollapse;
- (void)sceneController:(id)a3 didCreateSiriScene:(id)a4;
- (void)sceneController:(id)a3 willInvalidateScene:(id)a4 forReason:(unint64_t)a5;
- (void)serviceBulletinWithIdentifier:(id)a3 replyHandler:(id)a4;
- (void)serviceCancelHIDEventDefferal;
- (void)serviceDidDetectAudioRoutePickerTap;
- (void)serviceDidDetectMicButtonLongPressBegan;
- (void)serviceDidDetectMicButtonLongPressEnded;
- (void)serviceDidDetectMicButtonTap;
- (void)serviceDidDismissViewControllerWithStatusBarStyle:(int64_t)a3;
- (void)serviceDidEndEditing;
- (void)serviceDidEnterUITrackingMode;
- (void)serviceDidExitUITrackingMode;
- (void)serviceDidPresentConversationFromBreadcrumb;
- (void)serviceDidPresentUserInterface;
- (void)serviceDidPresentViewControllerWithStatusBarStyle:(int64_t)a3;
- (void)serviceDidRequestCurrentTextInput:(id)a3;
- (void)serviceDidRequestKeyboard:(BOOL)a3;
- (void)serviceDidRequestKeyboard:(BOOL)a3 minimized:(BOOL)a4;
- (void)serviceDidResetTextInput;
- (void)servicePresentationDidChangePeekMode:(unint64_t)a3;
- (void)servicePresentationDidChangeVisualState:(unint64_t)a3;
- (void)servicePresentedIntentWithBundleId:(id)a3;
- (void)serviceRequestsActivationSourceWithReplyHandler:(id)a3;
- (void)serviceRequestsDismissalWithUserInfo:(id)a3 withReason:(int64_t)a4;
- (void)serviceRequestsHIDEventDefferal;
- (void)serviceStartGuidedAccess;
- (void)serviceStartRequestWithOptions:(id)a3;
- (void)serviceUserRelevantEventDidOccur;
- (void)serviceViewControllerRequestsDismissalWithDismissalReason:(int64_t)a3 completion:(id)a4;
- (void)serviceViewControllerRequestsKeyboardWithCompletion:(id)a3;
- (void)serviceViewControllerRequestsPresentation:(id)a3;
- (void)serviceViewControllerWillChangeKeyboardVisibility:(BOOL)a3;
- (void)serviceWillBeginEditing;
- (void)serviceWillDismissViewControllerWithStatusBarStyle:(int64_t)a3;
- (void)serviceWillPresentViewControllerWithStatusBarStyle:(int64_t)a3;
- (void)setBottomContentInset:(double)a3;
- (void)setBugReportingAvailable:(BOOL)a3;
- (void)setDockFrame:(CGRect)a3;
- (void)setFullScreenDimmingLayerVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setHelpButtonEmphasized:(BOOL)a3;
- (void)setRequestHandlingStatus:(unint64_t)a3;
- (void)setRequestOptions:(id)a3;
- (void)setSession:(id)a3;
- (void)setShouldDismissForSwipesOutsideContent:(BOOL)a3;
- (void)setShouldDismissForTapOutsideContent:(BOOL)a3;
- (void)setShouldDismissForTapsOutsideContent:(BOOL)a3;
- (void)setShouldPassTouchesThroughToSpringBoard:(BOOL)a3;
- (void)setStatusBarFrame:(CGRect)a3;
- (void)setStatusBarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setStatusBarHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setStatusViewDisabled:(BOOL)a3;
- (void)setStatusViewHeight:(double)a3;
- (void)setStatusViewHidden:(BOOL)a3;
- (void)setStatusViewUserInteractionEnabled:(BOOL)a3;
- (void)setSystemContentFrame:(CGRect)a3;
- (void)setTypeToSiriViewHidden:(BOOL)a3;
- (void)setWaitingForTelephonyToStart:(BOOL)a3;
- (void)showAppUnlockForAppId:(id)a3 completion:(id)a4;
- (void)showPresentationWithIdentifier:(id)a3 properties:(id)a4 lockState:(unint64_t)a5;
- (void)siriDidActivateFromSource:(int64_t)a3;
- (void)siriDidDeactivate;
- (void)siriDidHidePasscodeUnlock;
- (void)siriIdleAndQuietStatusDidChange:(BOOL)a3;
- (void)siriKeyboardViewDidChange:(id *)a3;
- (void)siriResultsDidDismissInTamale;
- (void)siriWillActivateFromSource:(int64_t)a3;
- (void)siriWillBePresented:(int64_t)a3;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)a3 withOriginalDismissalOptions:(id)a4;
- (void)siriWillHidePasscodeUnlockForResult:(int64_t)a3;
- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)a3;
- (void)startHostingSceneForConfiguration:(id)a3 withCompletionBlock:(id)a4;
- (void)startRequestForText:(id)a3;
- (void)takeScreenshotWithCompletion:(id)a3;
- (void)toggleHomeAffordanceHidden:(BOOL)a3;
- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)a3;
- (void)updateEdgeLightWindowLevel:(int64_t)a3;
- (void)updateRemoteSceneWithFrontMostAppInterfaceOrientation:(int64_t)a3;
- (void)updateToPresentationWithIdentifier:(id)a3 presentationProperties:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation AFUISiriRemoteSceneViewController

- (AFUISiriRemoteSceneViewController)init
{
  v10 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = AFUISiriRemoteSceneViewController;
  v2 = [(AFUISceneHostingViewController *)&v5 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = "[AFUISiriRemoteSceneViewController init]";
      v8 = 2112;
      v9 = v2;
      _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }
  }

  return v2;
}

- (id)_connection
{
  v29 = *MEMORY[0x277D85DE8];
  remoteConnection = self->_remoteConnection;
  if (!remoteConnection)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[AFUISiriRemoteSceneViewController _connection]";
      _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp Setting up new XPC connection to Siri.app", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.app" options:0];
    v6 = self->_remoteConnection;
    self->_remoteConnection = v5;

    self->_connectionHasBeenResumed = 0;
    objc_initWeak(buf, self);
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v9 = self->_remoteConnection;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __48__AFUISiriRemoteSceneViewController__connection__block_invoke;
    v24[3] = &unk_278CD57B8;
    v10 = v7;
    v25 = v7;
    objc_copyWeak(&v26, buf);
    [(NSXPCConnection *)v9 setInvalidationHandler:v24];
    v11 = self->_remoteConnection;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __48__AFUISiriRemoteSceneViewController__connection__block_invoke_3;
    v21 = &unk_278CD57B8;
    v12 = v7;
    v22 = v7;
    objc_copyWeak(&v23, buf);
    [(NSXPCConnection *)v11 setInterruptionHandler:&v18];
    v13 = self->_remoteConnection;
    v14 = [objc_opt_class() remoteObjectInterface];
    [(NSXPCConnection *)v13 setRemoteObjectInterface:v14];

    v15 = self->_remoteConnection;
    v16 = [objc_opt_class() exportedInterface];
    [(NSXPCConnection *)v15 setExportedInterface:v16];

    [(NSXPCConnection *)self->_remoteConnection setExportedObject:self];
    [(NSXPCConnection *)self->_remoteConnection _setQueue:MEMORY[0x277D85CD0]];
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
    remoteConnection = self->_remoteConnection;
  }

  return remoteConnection;
}

- (void)preloadPluginBundles
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_186];
  [v2 preloadPluginBundles];
}

- (AFUISiriRemoteSceneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)serviceDidPresentUserInterface
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidPresentUserInterface:self];
}

+ (id)remoteObjectInterface
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853680E0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853469E8];
  [v2 setInterface:v3 forSelector:sel_setSession_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v6 = [v4 setWithArray:v5];

  [v2 setClasses:v6 forSelector:sel_siriSessionGetRequestContextWithCompletionHandler_ argumentIndex:0 ofReply:1];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_siriSessionDidUpdateRecognitionWithPhrases_utterances_refId_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_siriSessionDidUpdateRecognitionWithPhrases_utterances_refId_ argumentIndex:1 ofReply:0];

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:sel_siriSessionDidInitializeSessionInfo_ argumentIndex:0 ofReply:0];

  v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_siriSessionDidUpdateSessionInfo_ argumentIndex:0 ofReply:0];

  v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v15 forSelector:sel_siriSessionDidReceivePlayContentCommand_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)exportedInterface
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853443F0];
  v3 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v3 setWithArray:v4];

  [v2 setClasses:v5 forSelector:sel_serviceStartRequestWithOptions_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AFUISiriRemoteSceneViewController invalidate]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp Asked to invalidate XPC connection to Siri.app", &v4, 0xCu);
  }

  [(NSXPCConnection *)self->_remoteConnection invalidate];
}

void __48__AFUISiriRemoteSceneViewController__connection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AFUISiriRemoteSceneViewController__connection__block_invoke_2;
  block[3] = &unk_278CD55A0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __48__AFUISiriRemoteSceneViewController__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidated];
}

void __48__AFUISiriRemoteSceneViewController__connection__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AFUISiriRemoteSceneViewController__connection__block_invoke_4;
  block[3] = &unk_278CD55A0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __48__AFUISiriRemoteSceneViewController__connection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _interrupted];
}

- (id)serviceViewControllerProxy
{
  v2 = [(AFUISiriRemoteSceneViewController *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)serviceViewControllerProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self _connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__AFUISiriRemoteSceneViewController_serviceViewControllerProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278CD57E0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __80__AFUISiriRemoteSceneViewController_serviceViewControllerProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __80__AFUISiriRemoteSceneViewController_serviceViewControllerProxyWithErrorHandler___block_invoke_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_invalidated
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(NSXPCConnection *)self->_remoteConnection processIdentifier];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Connection to Siri.app was invalidated pid=%d _remoteConnection=%@", v3, self->_remoteConnection];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[AFUISiriRemoteSceneViewController _invalidated]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp %@", buf, 0x16u);
  }

  [(NSXPCConnection *)self->_remoteConnection setExportedObject:0];
  [(AFUISceneHostingViewController *)self invalidateSceneForReason:5 explanation:v4];
}

- (void)_interrupted
{
  v3 = [(NSXPCConnection *)self->_remoteConnection processIdentifier];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Connection to Siri.app was interrupted pid=%d _remoteConnection=%@", v3, self->_remoteConnection];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [AFUISiriRemoteSceneViewController _interrupted];
  }

  [(AFUISceneHostingViewController *)self invalidateSceneForReason:4 explanation:v4];
}

- (void)startHostingSceneForConfiguration:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__AFUISiriRemoteSceneViewController_startHostingSceneForConfiguration_withCompletionBlock___block_invoke;
  v10[3] = &unk_278CD5808;
  objc_copyWeak(&v12, &location);
  v8 = v7;
  v11 = v8;
  v9.receiver = self;
  v9.super_class = AFUISiriRemoteSceneViewController;
  [(AFUISceneHostingViewController *)&v9 startHostingSceneForConfiguration:v6 withCompletionBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __91__AFUISiriRemoteSceneViewController_startHostingSceneForConfiguration_withCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    objc_copyWeak(&v7, (a1 + 40));
    SiriUIInvokeOnMainQueue();
    objc_destroyWeak(&v7);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }
}

void __91__AFUISiriRemoteSceneViewController_startHostingSceneForConfiguration_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _connection];
  if ((WeakRetained[1160] & 1) == 0)
  {
    WeakRetained[1160] = 1;
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[AFUISiriRemoteSceneViewController startHostingSceneForConfiguration:withCompletionBlock:]_block_invoke_2";
      _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp resuming connection after startHostingSceneForConfiguration", &v4, 0xCu);
    }

    [v2 resume];
  }
}

- (void)sceneController:(id)a3 didCreateSiriScene:(id)a4
{
  v5 = a4;
  v6 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v6 siriRemoteViewController:self didCreateSiriScene:v5];
}

- (void)sceneController:(id)a3 willInvalidateScene:(id)a4 forReason:(unint64_t)a5
{
  if (a5 <= 5)
  {
    self->_expectingInvalidation = 0x1010100uLL >> (8 * a5);
  }
}

- (void)_handleInvalidationForReason:(unint64_t)a3 explanation:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v7 = v6;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __78__AFUISiriRemoteSceneViewController__handleInvalidationForReason_explanation___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(WeakRetained + 1176);
      v5 = *(a1 + 48);
      v6 = v3;
      v7 = [AFUISceneConfiguration stringForInvalidationReason:v5];
      v8 = *(a1 + 32);
      v11 = 136315906;
      v12 = "[AFUISiriRemoteSceneViewController _handleInvalidationForReason:explanation:]_block_invoke";
      v13 = 1024;
      v14 = v4;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp expectingInvalidation=%i reason=%@ explanation=%@", &v11, 0x26u);
    }

    [WeakRetained[151] invalidate];
    v9 = [WeakRetained delegate];
    v10 = v9;
    if (*(WeakRetained + 1176) == 1)
    {
      [v9 siriRemoteViewControllerDidFinishDismissing:WeakRetained];
      *(WeakRetained + 1176) = 0;
    }

    else
    {
      [v9 siriRemoteViewController:WeakRetained invalidatedForReason:*(a1 + 48) explanation:*(a1 + 32)];
    }
  }
}

- (void)_audioCategoriesDisablingVolumeHUDDidChangeTo:(id)a3
{
  v5 = a3;
  v6 = v5;
  audioCategoriesDisablingVolumeHUD = self->_audioCategoriesDisablingVolumeHUD;
  if (v5 && audioCategoriesDisablingVolumeHUD)
  {
    if ([(NSArray *)v5 isEqualToArray:?])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (audioCategoriesDisablingVolumeHUD != v5)
  {
LABEL_6:
    objc_storeStrong(&self->_audioCategoriesDisablingVolumeHUD, a3);
    objc_initWeak(&location, self);
    objc_copyWeak(&v9, &location);
    v8 = v6;
    SiriUIInvokeOnMainQueue();

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

LABEL_7:
}

void __83__AFUISiriRemoteSceneViewController__audioCategoriesDisablingVolumeHUDDidChangeTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 siriRemoteViewController:v4 didUpdateAudioCategoriesDisablingVolumeHUD:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_handleSceneDidActivateWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v5 = v4;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __75__AFUISiriRemoteSceneViewController__handleSceneDidActivateWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v4 siriRemoteViewController:v5 sceneDidActivateWithIdentifier:*(a1 + 32)];
      }

      WeakRetained = v5;
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = AFUISiriRemoteSceneViewController;
  [(AFUISiriRemoteSceneViewController *)&v4 viewDidAppear:a3];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[AFUISiriRemoteSceneViewController viewDidAppear:]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s AFUIRemoteViewController's view did appear", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[AFUISiriRemoteSceneViewController viewDidDisappear:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = AFUISiriRemoteSceneViewController;
  [(AFUISiriRemoteSceneViewController *)&v6 viewDidDisappear:v3];
}

void __52__AFUISiriRemoteSceneViewController_sessionDelegate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __52__AFUISiriRemoteSceneViewController_sessionDelegate__block_invoke_cold_1();
  }
}

- (void)serviceRequestsActivationSourceWithReplyHandler:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(AFUISiriRemoteSceneViewController *)self delegate];
    (*(a3 + 2))(v5, [v6 siriRemoteViewControllerRequestsActivationSource:self]);
  }
}

- (void)serviceRequestsDismissalWithUserInfo:(id)a3 withReason:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SASDismissalReasonGetName();
    v11 = 136315394;
    v12 = "[AFUISiriRemoteSceneViewController serviceRequestsDismissalWithUserInfo:withReason:]";
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation %@", &v11, 0x16u);
  }

  v10 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v10 dismissSiriRemoteViewController:self userInfo:v6 withReason:a4];
}

- (void)serviceStartGuidedAccess
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 startGuidedAccessForRemoteViewController:self];
}

- (void)serviceBulletinWithIdentifier:(id)a3 replyHandler:(id)a4
{
  if (a4)
  {
    v7 = a4;
    v8 = a3;
    v10 = [(AFUISiriRemoteSceneViewController *)self dataSource];
    v9 = [v10 siriRemoteViewController:self bulletinWithIdentifier:v8];

    (*(a4 + 2))(v7, v9);
  }
}

- (void)serviceStartRequestWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self startRequestWithOptions:v4];
}

- (void)serviceUserRelevantEventDidOccur
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 userRelevantEventDidOccurInSiriRemoteViewController:self];
}

- (void)serviceDidRequestCurrentTextInput:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self didRequestCurrentTextInputWithReplyHandler:v4];
}

- (void)siriIdleAndQuietStatusDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self siriIdleAndQuietStatusDidChange:v3];
}

- (void)setStatusViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self setStatusViewHidden:v3];
}

- (void)setTypeToSiriViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self setTypeToSiriViewHidden:v3];
}

- (void)setFullScreenDimmingLayerVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v7 siriRemoteViewController:self setFullScreenDimmingLayerVisible:v5 animated:v4];
}

- (void)inputTypeDidChange:(int64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self inputTypeDidChange:a3];
}

- (void)setStatusViewDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self setStatusViewDisabled:v3];
}

- (void)setStatusViewUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self setStatusViewUserInteractionEnabled:v3];
}

- (void)serviceWillPresentViewControllerWithStatusBarStyle:(int64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self willPresentViewControllerWithStatusBarStyle:a3];
}

- (void)serviceDidPresentViewControllerWithStatusBarStyle:(int64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self didPresentViewControllerWithStatusBarStyle:a3];
}

- (void)serviceWillDismissViewControllerWithStatusBarStyle:(int64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self willDismissViewControllerWithStatusBarStyle:a3];
}

- (void)serviceDidDismissViewControllerWithStatusBarStyle:(int64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self didDismissViewControllerWithStatusBarStyle:a3];
}

- (void)setStatusBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v7 siriRemoteViewController:self setStatusBarHidden:v5 animated:v4];
}

- (void)setStatusBarHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v9 siriRemoteViewController:self setStatusBarHidden:v6 animated:v5 completion:v8];
}

- (void)setHelpButtonEmphasized:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self setHelpButtonEmphasized:v3];
}

- (void)setBugReportingAvailable:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self setBugReportingAvailable:v3];
}

- (void)setRequestHandlingStatus:(unint64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self setRequestHandlingStatus:a3];
}

- (void)getScreenshotWithReplyHandler:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = UICreateScreenImage();
    v6 = [MEMORY[0x277D755B8] imageWithCGImage:v4];
    v5 = UIImagePNGRepresentation(v6);
    v3[2](v3, v5);

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

- (void)handlePasscodeUnlockWithClient:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v7 siriRemoteViewController:self handlePasscodeUnlockWithClient:a3 withCompletion:v6];
}

- (void)pulseHelpButton
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerPulseHelpButton:self];
}

- (void)serviceDidRequestKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self didRequestKeyboard:v3];
}

- (void)serviceDidRequestKeyboard:(BOOL)a3 minimized:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v7 siriRemoteViewController:self didRequestKeyboard:v5 minimized:v4];
}

- (void)serviceDidResetTextInput
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidResetTextInput:self];
}

- (void)serviceViewControllerRequestsKeyboardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self requestsKeyboardWithCompletion:v4];
}

- (void)serviceWillBeginEditing
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerWillBeginEditing:self];
}

- (void)serviceDidEndEditing
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidEndEditing:self];
}

- (void)serviceRequestsHIDEventDefferal
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerRequestsHIDEventDefferal:self];
}

- (void)serviceCancelHIDEventDefferal
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerCancelHIDEventDefferal:self];
}

- (void)serviceDidEnterUITrackingMode
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidEnterUITrackingMode:self];
}

- (void)serviceDidExitUITrackingMode
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidExitUITrackingMode:self];
}

- (void)openURL:(id)a3 bundleId:(id)a4 inPlace:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__AFUISiriRemoteSceneViewController_openURL_bundleId_inPlace_completion___block_invoke;
  v12[3] = &unk_278CD5880;
  v13 = v10;
  v11 = v10;
  [(AFUISiriRemoteSceneViewController *)self openURL:a3 bundleId:a4 inPlace:v6 launchOptions:0 completion:v12];
}

uint64_t __73__AFUISiriRemoteSceneViewController_openURL_bundleId_inPlace_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openURL:(id)a3 bundleId:(id)a4 inPlace:(BOOL)a5 launchOptions:(id)a6 completion:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v16 openURL:v15 bundleId:v14 inPlace:v8 launchOptions:v13 completion:v12];
}

- (void)serviceDidDetectMicButtonTap
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidDetectMicButtonTap:self];
}

- (void)serviceDidDetectMicButtonLongPressBegan
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidDetectMicButtonLongPressBegan:self];
}

- (void)serviceDidDetectMicButtonLongPressEnded
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidDetectMicButtonLongPressEnded:self];
}

- (void)servicePresentationDidChangePeekMode:(unint64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self didChangePresentationPeekMode:a3];
}

- (void)servicePresentationDidChangeVisualState:(unint64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [v7 siriRemoteViewController:self didChangePresentationVisualState:a3];
  }
}

- (void)serviceDidPresentConversationFromBreadcrumb
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidPresentConversationFromBreadcrumb:self];
}

- (void)serviceDidDetectAudioRoutePickerTap
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v3 siriRemoteViewControllerDidDetectAudioRoutePickerTap:self];
}

- (void)serviceViewControllerRequestsPresentation:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self requestsPresentation:v4];
}

- (void)serviceViewControllerRequestsDismissalWithDismissalReason:(int64_t)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SASDismissalReasonGetName();
    v11 = 136315394;
    v12 = "[AFUISiriRemoteSceneViewController serviceViewControllerRequestsDismissalWithDismissalReason:completion:]";
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation dismissal requested %@", &v11, 0x16u);
  }

  v10 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v10 siriRemoteViewController:self requestsDismissalWithReason:a3 withCompletion:v6];
}

- (void)servicePresentedIntentWithBundleId:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self presentedIntentWithBundleId:v4];
}

- (void)setShouldDismissForTapOutsideContent:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [v7 setShouldDismissForTapOutsideContent:v3];
  }
}

- (void)setShouldDismissForTapsOutsideContent:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [v7 setShouldDismissForTapsOutsideContent:v3];
  }
}

- (void)setShouldDismissForSwipesOutsideContent:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [v7 setShouldDismissForSwipesOutsideContent:v3];
  }
}

- (void)requestHostBlurVisible:(BOOL)a3 reason:(int64_t)a4 fence:(id)a5
{
  v6 = a5;
  v5 = v6;
  SiriUIInvokeOnMainQueue();
}

void __73__AFUISiriRemoteSceneViewController_requestHostBlurVisible_reason_fence___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 requestBlurVisible:*(a1 + 56) reason:*(a1 + 48) fence:*(a1 + 40)];
}

void __54__AFUISiriRemoteSceneViewController_reduceOrbOpacity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 siriRemoteViewController:*(a1 + 32) reduceOrbOpacity:*(a1 + 40)];
}

- (void)setShouldPassTouchesThroughToSpringBoard:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [v7 setShouldPassTouchesThroughToSpringBoard:v3];
  }
}

- (void)requestSystemApertureCollapse
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [v5 requestSystemApertureCollapse];
  }
}

- (void)invalidateSystemApertureAssertion
{
  v3 = [(AFUISiriRemoteSceneViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [v5 invalidateSystemApertureAssertion];
  }
}

- (void)presentationDidPresentKeyboard
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 siriRemoteViewControllerDidPresentKeyboard:self];
  }
}

- (void)toggleHomeAffordanceHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v4 toggleHomeAffordanceHidden:v3];
}

- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)a3
{
  v3 = a3;
  v4 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v4 toggleSiriHomeAffordanceGestureControl:v3];
}

- (void)updateEdgeLightWindowLevel:(int64_t)a3
{
  v4 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v4 updateEdgeLightWindowLevel:a3];
}

- (void)updateToPresentationWithIdentifier:(id)a3 presentationProperties:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __115__AFUISiriRemoteSceneViewController_updateToPresentationWithIdentifier_presentationProperties_animated_completion___block_invoke;
  v17[3] = &unk_278CD58D0;
  v18 = v10;
  v11 = v10;
  v12 = a6;
  v13 = a4;
  v14 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v17];
  v15 = v14;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = &__block_literal_global_174;
  }

  [v14 updateToPresentationWithIdentifier:v11 presentationProperties:v13 animated:v7 completion:v16];
}

void __115__AFUISiriRemoteSceneViewController_updateToPresentationWithIdentifier_presentationProperties_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __115__AFUISiriRemoteSceneViewController_updateToPresentationWithIdentifier_presentationProperties_animated_completion___block_invoke_cold_1();
  }
}

- (void)setDockFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_176];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [v8 setDockFrameValue:v7];
}

void __50__AFUISiriRemoteSceneViewController_setDockFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __50__AFUISiriRemoteSceneViewController_setDockFrame___block_invoke_cold_1();
  }
}

- (void)updateRemoteSceneWithFrontMostAppInterfaceOrientation:(int64_t)a3
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_179];
  [v4 setHostFrontMostAppOrientation:a3];
}

void __91__AFUISiriRemoteSceneViewController_updateRemoteSceneWithFrontMostAppInterfaceOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __91__AFUISiriRemoteSceneViewController_updateRemoteSceneWithFrontMostAppInterfaceOrientation___block_invoke_cold_1();
  }
}

- (void)siriWillActivateFromSource:(int64_t)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_181];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  [v5 setHostFrontMostAppOrientation:{objc_msgSend(v4, "_frontMostAppOrientation")}];

  [v5 siriWillActivateFromSource:a3];
}

void __64__AFUISiriRemoteSceneViewController_siriWillActivateFromSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __64__AFUISiriRemoteSceneViewController_siriWillActivateFromSource___block_invoke_cold_1();
  }
}

- (void)siriDidActivateFromSource:(int64_t)a3
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_184];
  [v4 siriDidActivateFromSource:a3];
}

void __63__AFUISiriRemoteSceneViewController_siriDidActivateFromSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __63__AFUISiriRemoteSceneViewController_siriDidActivateFromSource___block_invoke_cold_1();
  }
}

- (void)setRequestOptions:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__AFUISiriRemoteSceneViewController_setRequestOptions___block_invoke;
  v7[3] = &unk_278CD58D0;
  v8 = v4;
  v5 = v4;
  v6 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
  [v6 setRequestOptions:v5];
}

void __55__AFUISiriRemoteSceneViewController_setRequestOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __55__AFUISiriRemoteSceneViewController_setRequestOptions___block_invoke_cold_1();
  }
}

- (void)preloadPresentationBundleWithIdentifier:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__AFUISiriRemoteSceneViewController_preloadPresentationBundleWithIdentifier___block_invoke;
  v7[3] = &unk_278CD58D0;
  v8 = v4;
  v5 = v4;
  v6 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
  [v6 preloadPresentationBundleWithIdentifier:v5];
}

void __77__AFUISiriRemoteSceneViewController_preloadPresentationBundleWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __77__AFUISiriRemoteSceneViewController_preloadPresentationBundleWithIdentifier___block_invoke_cold_1();
  }
}

void __57__AFUISiriRemoteSceneViewController_preloadPluginBundles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __57__AFUISiriRemoteSceneViewController_preloadPluginBundles__block_invoke_cold_1();
  }
}

- (void)showPresentationWithIdentifier:(id)a3 properties:(id)a4 lockState:(unint64_t)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__AFUISiriRemoteSceneViewController_showPresentationWithIdentifier_properties_lockState___block_invoke;
  v12[3] = &unk_278CD58D0;
  v13 = v8;
  v9 = v8;
  v10 = a3;
  v11 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v12];
  [v11 showPresentationWithIdentifier:v10 properties:v9 lockState:a5];
}

void __89__AFUISiriRemoteSceneViewController_showPresentationWithIdentifier_properties_lockState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __89__AFUISiriRemoteSceneViewController_showPresentationWithIdentifier_properties_lockState___block_invoke_cold_1();
  }
}

- (void)showAppUnlockForAppId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__AFUISiriRemoteSceneViewController_showAppUnlockForAppId_completion___block_invoke;
  v10[3] = &unk_278CD58D0;
  v11 = v6;
  v7 = v6;
  v8 = a4;
  v9 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v10];
  [v9 showAppUnlockForAppId:v7 completion:v8];
}

void __70__AFUISiriRemoteSceneViewController_showAppUnlockForAppId_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __70__AFUISiriRemoteSceneViewController_showAppUnlockForAppId_completion___block_invoke_cold_1();
  }
}

- (void)siriWillBePresented:(int64_t)a3
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_188];
  [v4 siriWillBePresented:a3];
}

void __57__AFUISiriRemoteSceneViewController_siriWillBePresented___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __57__AFUISiriRemoteSceneViewController_siriWillBePresented___block_invoke_cold_1();
  }
}

- (void)siriDidDeactivate
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__AFUISiriRemoteSceneViewController_siriDidDeactivate__block_invoke;
  aBlock[3] = &unk_278CD55A0;
  objc_copyWeak(&v15, &location);
  v3 = _Block_copy(aBlock);
  v4 = [(AFUISiriRemoteSceneViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [v6 siriRemoteViewControllerDidDeactivateScene:self];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__AFUISiriRemoteSceneViewController_siriDidDeactivate__block_invoke_2;
  v12[3] = &unk_278CD57E0;
  v7 = v3;
  v13 = v7;
  v8 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v12];
  [v8 setHostFrontMostAppOrientation:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__AFUISiriRemoteSceneViewController_siriDidDeactivate__block_invoke_194;
  v10[3] = &unk_278CD5690;
  v9 = v7;
  v11 = v9;
  [v8 siriDidDeactivateWithCompletion:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __54__AFUISiriRemoteSceneViewController_siriDidDeactivate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invalidate];
    [v2 invalidateSceneForReason:1 explanation:@"Invalidating because [AFUISiriRemoteSceneViewController siriDidDeactivate]"];
    WeakRetained = v2;
  }
}

void __54__AFUISiriRemoteSceneViewController_siriDidDeactivate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __54__AFUISiriRemoteSceneViewController_siriDidDeactivate__block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)didReceiveOrbViewTapToCancelRequest
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_196];
  [v2 didReceiveOrbViewTapToCancelRequest];
}

void __72__AFUISiriRemoteSceneViewController_didReceiveOrbViewTapToCancelRequest__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __72__AFUISiriRemoteSceneViewController_didReceiveOrbViewTapToCancelRequest__block_invoke_cold_1();
  }
}

- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)a3
{
  v3 = a3;
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_198];
  [v4 siriWillShowPasscodeUnlockAndCancelRequest:v3];
}

void __80__AFUISiriRemoteSceneViewController_siriWillShowPasscodeUnlockAndCancelRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __80__AFUISiriRemoteSceneViewController_siriWillShowPasscodeUnlockAndCancelRequest___block_invoke_cold_1();
  }
}

- (void)siriWillHidePasscodeUnlockForResult:(int64_t)a3
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_200];
  [v4 siriWillHidePasscodeUnlockForResult:a3];
}

void __73__AFUISiriRemoteSceneViewController_siriWillHidePasscodeUnlockForResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __73__AFUISiriRemoteSceneViewController_siriWillHidePasscodeUnlockForResult___block_invoke_cold_1();
  }
}

- (void)siriDidHidePasscodeUnlock
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_202];
  [v2 siriDidHidePasscodeUnlock];
}

void __62__AFUISiriRemoteSceneViewController_siriDidHidePasscodeUnlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __62__AFUISiriRemoteSceneViewController_siriDidHidePasscodeUnlock__block_invoke_cold_1();
  }
}

- (void)startRequestForText:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_204];
  [v5 startRequestForText:v4];
}

void __57__AFUISiriRemoteSceneViewController_startRequestForText___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __57__AFUISiriRemoteSceneViewController_startRequestForText___block_invoke_cold_1();
  }
}

- (void)siriKeyboardViewDidChange:(id *)a3
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_206];
  [v4 siriKeyboardViewDidChange:a3];
}

void __63__AFUISiriRemoteSceneViewController_siriKeyboardViewDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __63__AFUISiriRemoteSceneViewController_siriKeyboardViewDidChange___block_invoke_cold_1();
  }
}

- (void)setStatusBarFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_208];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [v8 setStatusBarFrameValue:v7];
}

void __55__AFUISiriRemoteSceneViewController_setStatusBarFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __55__AFUISiriRemoteSceneViewController_setStatusBarFrame___block_invoke_cold_1();
  }
}

- (void)setStatusViewHeight:(double)a3
{
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_210];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setStatusViewHeightNumber:v4];
}

void __57__AFUISiriRemoteSceneViewController_setStatusViewHeight___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __57__AFUISiriRemoteSceneViewController_setStatusViewHeight___block_invoke_cold_1();
  }
}

- (void)setBottomContentInset:(double)a3
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_213];
  [v4 setBottomContentInset:a3];
}

void __59__AFUISiriRemoteSceneViewController_setBottomContentInset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __59__AFUISiriRemoteSceneViewController_setBottomContentInset___block_invoke_cold_1();
  }
}

- (void)setSystemContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_215];
  [v7 setSystemContentFrame:{x, y, width, height}];
}

void __59__AFUISiriRemoteSceneViewController_setSystemContentFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __59__AFUISiriRemoteSceneViewController_setSystemContentFrame___block_invoke_cold_1();
  }
}

- (void)setSession:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_217];
  [v5 setSession:v4];
}

void __48__AFUISiriRemoteSceneViewController_setSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __48__AFUISiriRemoteSceneViewController_setSession___block_invoke_cold_1();
  }
}

- (void)didReceiveHelpAction
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_219];
  [v2 didReceiveHelpAction];
}

void __57__AFUISiriRemoteSceneViewController_didReceiveHelpAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __57__AFUISiriRemoteSceneViewController_didReceiveHelpAction__block_invoke_cold_1();
  }
}

- (void)didReceiveReportBugAction
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_221];
  [v2 didReceiveReportBugAction];
}

void __62__AFUISiriRemoteSceneViewController_didReceiveReportBugAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __62__AFUISiriRemoteSceneViewController_didReceiveReportBugAction__block_invoke_cold_1();
  }
}

- (void)didReceiveBugButtonLongPress
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_223];
  [v2 didReceiveBugButtonLongPress];
}

void __65__AFUISiriRemoteSceneViewController_didReceiveBugButtonLongPress__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __65__AFUISiriRemoteSceneViewController_didReceiveBugButtonLongPress__block_invoke_cold_1();
  }
}

- (void)didReceiveShortTapActionWithRequestOptions:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_225];
  [v5 didReceiveShortTapActionWIthRequestOptions:v4];
}

void __80__AFUISiriRemoteSceneViewController_didReceiveShortTapActionWithRequestOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __80__AFUISiriRemoteSceneViewController_didReceiveShortTapActionWithRequestOptions___block_invoke_cold_1();
  }
}

- (void)applicationWillResignActive
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_227];
  [v2 hostApplicationWillResignActive];
}

void __64__AFUISiriRemoteSceneViewController_applicationWillResignActive__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __64__AFUISiriRemoteSceneViewController_applicationWillResignActive__block_invoke_cold_1();
  }
}

- (void)applicationWillEnterForeground
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_229];
  [v2 hostApplicationWillEnterForeground];
}

void __67__AFUISiriRemoteSceneViewController_applicationWillEnterForeground__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __67__AFUISiriRemoteSceneViewController_applicationWillEnterForeground__block_invoke_cold_1();
  }
}

- (void)applicationDidBecomeActive
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_231];
  [v2 hostApplicationDidBecomeActive];
}

void __63__AFUISiriRemoteSceneViewController_applicationDidBecomeActive__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __63__AFUISiriRemoteSceneViewController_applicationDidBecomeActive__block_invoke_cold_1();
  }
}

- (void)setWaitingForTelephonyToStart:(BOOL)a3
{
  v3 = a3;
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_233];
  [v4 setWaitingForTelephonyToStart:v3];
}

void __67__AFUISiriRemoteSceneViewController_setWaitingForTelephonyToStart___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __67__AFUISiriRemoteSceneViewController_setWaitingForTelephonyToStart___block_invoke_cold_1();
  }
}

- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__AFUISiriRemoteSceneViewController_hasContentAtPoint_completion___block_invoke;
  v13[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  *&v13[4] = x;
  *&v13[5] = y;
  v8 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v13];
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__AFUISiriRemoteSceneViewController_hasContentAtPoint_completion___block_invoke_235;
  v11[3] = &unk_278CD5938;
  v12 = v7;
  v10 = v7;
  [v8 hasContentAtPoint:v9 completion:v11];
}

void __66__AFUISiriRemoteSceneViewController_hasContentAtPoint_completion___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __66__AFUISiriRemoteSceneViewController_hasContentAtPoint_completion___block_invoke_cold_1(a1, v2);
  }
}

uint64_t __66__AFUISiriRemoteSceneViewController_hasContentAtPoint_completion___block_invoke_235(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)didDetectGestureEvent:(int64_t)a3 inRegion:(int64_t)a4
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__AFUISiriRemoteSceneViewController_didDetectGestureEvent_inRegion___block_invoke;
  v7[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v7[4] = a3;
  v7[5] = a4;
  v6 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
  [v6 didDetectGestureEvent:a3 inRegion:a4];
}

void __68__AFUISiriRemoteSceneViewController_didDetectGestureEvent_inRegion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __68__AFUISiriRemoteSceneViewController_didDetectGestureEvent_inRegion___block_invoke_cold_1(a1, v4, v3);
  }
}

- (void)noteApplicationTransition
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_237];
  [v2 noteApplicationTransition];
}

void __62__AFUISiriRemoteSceneViewController_noteApplicationTransition__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __62__AFUISiriRemoteSceneViewController_noteApplicationTransition__block_invoke_cold_1();
  }
}

- (void)orientationWillChangeTo:(int64_t)a3
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_239];
  [v4 orientationWillChangeTo:a3];
}

void __61__AFUISiriRemoteSceneViewController_orientationWillChangeTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __61__AFUISiriRemoteSceneViewController_orientationWillChangeTo___block_invoke_cold_1();
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)a3 withOriginalDismissalOptions:(id)a4
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106__AFUISiriRemoteSceneViewController_siriWillBeginTearDownForDismissalReason_withOriginalDismissalOptions___block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = a3;
  v6 = a4;
  v7 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v8];
  [v7 siriWillBeginTearDownForDismissalReason:a3 withOriginalDismissalOptions:v6];
}

void __106__AFUISiriRemoteSceneViewController_siriWillBeginTearDownForDismissalReason_withOriginalDismissalOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __106__AFUISiriRemoteSceneViewController_siriWillBeginTearDownForDismissalReason_withOriginalDismissalOptions___block_invoke_cold_1(a1, v4, a2);
  }
}

- (void)presentationStateUpdatedFromPresentationState:(int64_t)a3 toPresentationState:(int64_t)a4
{
  v6 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_242];
  [v6 hostApplicationPresentationStateUpdatedFromPresentationState:a3 toPresentationState:a4];
}

void __103__AFUISiriRemoteSceneViewController_presentationStateUpdatedFromPresentationState_toPresentationState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __103__AFUISiriRemoteSceneViewController_presentationStateUpdatedFromPresentationState_toPresentationState___block_invoke_cold_1();
  }
}

- (void)animatedDisappearanceDidBeginWithDuration:(double)a3 reason:(int64_t)a4
{
  v6 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_244];
  [v6 animatedDisappearanceDidBeginWithDuration:a4 reason:a3];
}

void __86__AFUISiriRemoteSceneViewController_animatedDisappearanceDidBeginWithDuration_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __86__AFUISiriRemoteSceneViewController_animatedDisappearanceDidBeginWithDuration_reason___block_invoke_cold_1();
  }
}

- (void)dismissSiriResults
{
  v2 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_246];
  [v2 dismissSiriResults];
}

void __55__AFUISiriRemoteSceneViewController_dismissSiriResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __55__AFUISiriRemoteSceneViewController_dismissSiriResults__block_invoke_cold_1();
  }
}

- (void)siriResultsDidDismissInTamale
{
  v2 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v2 siriResultsDidDismissInTamale];
}

- (void)serviceViewControllerWillChangeKeyboardVisibility:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self delegate];
  [v5 siriRemoteViewController:self willChangeKeyboardVisibility:v3];
}

- (void)emitUIStateTransitionForSiriDismissalWithDismissalReason:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __105__AFUISiriRemoteSceneViewController_emitUIStateTransitionForSiriDismissalWithDismissalReason_completion___block_invoke;
  v8[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
  v9 = a3;
  v6 = a4;
  v7 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v8];
  [v7 hostApplicationRequestsEmitUIStateTransitionForSiriDismissalWithReason:v4 completion:v6];
}

void __105__AFUISiriRemoteSceneViewController_emitUIStateTransitionForSiriDismissalWithDismissalReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __105__AFUISiriRemoteSceneViewController_emitUIStateTransitionForSiriDismissalWithDismissalReason_completion___block_invoke_cold_1();
  }
}

- (void)emitInstrumentationEvent:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_249];
  [v5 hostApplicationRequestsEmitInstrumentationEvent:v4];
}

void __62__AFUISiriRemoteSceneViewController_emitInstrumentationEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __62__AFUISiriRemoteSceneViewController_emitInstrumentationEvent___block_invoke_cold_1();
  }
}

- (void)emitInstrumentationEvent:(id)a3 atTime:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_251];
  [v7 hostApplicationRequestsEmitInstrumentationEvent:v6 atTime:a4];
}

void __69__AFUISiriRemoteSceneViewController_emitInstrumentationEvent_atTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __69__AFUISiriRemoteSceneViewController_emitInstrumentationEvent_atTime___block_invoke_cold_1();
  }
}

- (void)didSuccessfullyHandleCommandsInDelayedActionCommand:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_253];
  [v5 hostApplicationDidSuccessfullyHandleCommandsInDelayedActionCommand:v4];
}

void __89__AFUISiriRemoteSceneViewController_didSuccessfullyHandleCommandsInDelayedActionCommand___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __89__AFUISiriRemoteSceneViewController_didSuccessfullyHandleCommandsInDelayedActionCommand___block_invoke_cold_1();
  }
}

- (void)takeScreenshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_255];
  [v5 hostApplicationRequestsScreenshotWithCompletion:v4];
}

void __66__AFUISiriRemoteSceneViewController_takeScreenshotWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __66__AFUISiriRemoteSceneViewController_takeScreenshotWithCompletion___block_invoke_cold_1();
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[AFUISiriRemoteSceneViewController dealloc]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = AFUISiriRemoteSceneViewController;
  [(AFUISiriRemoteSceneViewController *)&v4 dealloc];
}

- (AFUISiriRemoteSceneViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end