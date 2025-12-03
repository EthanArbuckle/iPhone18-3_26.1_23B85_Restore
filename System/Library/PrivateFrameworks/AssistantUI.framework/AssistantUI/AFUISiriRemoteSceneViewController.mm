@interface AFUISiriRemoteSceneViewController
+ (id)exportedInterface;
+ (id)remoteObjectInterface;
- (AFUISiriRemoteSceneViewController)init;
- (AFUISiriRemoteSceneViewControllerDataSource)dataSource;
- (AFUISiriRemoteSceneViewControllerDelegate)delegate;
- (id)_connection;
- (id)serviceViewControllerProxy;
- (id)serviceViewControllerProxyWithErrorHandler:(id)handler;
- (void)_audioCategoriesDisablingVolumeHUDDidChangeTo:(id)to;
- (void)_handleInvalidationForReason:(unint64_t)reason explanation:(id)explanation;
- (void)_handleSceneDidActivateWithIdentifier:(id)identifier;
- (void)_interrupted;
- (void)_invalidated;
- (void)animatedDisappearanceDidBeginWithDuration:(double)duration reason:(int64_t)reason;
- (void)applicationDidBecomeActive;
- (void)applicationWillEnterForeground;
- (void)applicationWillResignActive;
- (void)dealloc;
- (void)didDetectGestureEvent:(int64_t)event inRegion:(int64_t)region;
- (void)didReceiveBugButtonLongPress;
- (void)didReceiveHelpAction;
- (void)didReceiveOrbViewTapToCancelRequest;
- (void)didReceiveReportBugAction;
- (void)didReceiveShortTapActionWithRequestOptions:(id)options;
- (void)didSuccessfullyHandleCommandsInDelayedActionCommand:(id)command;
- (void)dismissSiriResults;
- (void)emitInstrumentationEvent:(id)event;
- (void)emitInstrumentationEvent:(id)event atTime:(unint64_t)time;
- (void)emitUIStateTransitionForSiriDismissalWithDismissalReason:(int)reason completion:(id)completion;
- (void)getScreenshotWithReplyHandler:(id)handler;
- (void)handlePasscodeUnlockWithClient:(unint64_t)client withCompletion:(id)completion;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)inputTypeDidChange:(int64_t)change;
- (void)invalidate;
- (void)invalidateSystemApertureAssertion;
- (void)noteApplicationTransition;
- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place completion:(id)completion;
- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place launchOptions:(id)options completion:(id)completion;
- (void)orientationWillChangeTo:(int64_t)to;
- (void)preloadPluginBundles;
- (void)preloadPresentationBundleWithIdentifier:(id)identifier;
- (void)presentationDidPresentKeyboard;
- (void)presentationStateUpdatedFromPresentationState:(int64_t)state toPresentationState:(int64_t)presentationState;
- (void)pulseHelpButton;
- (void)requestHostBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence;
- (void)requestSystemApertureCollapse;
- (void)sceneController:(id)controller didCreateSiriScene:(id)scene;
- (void)sceneController:(id)controller willInvalidateScene:(id)scene forReason:(unint64_t)reason;
- (void)serviceBulletinWithIdentifier:(id)identifier replyHandler:(id)handler;
- (void)serviceCancelHIDEventDefferal;
- (void)serviceDidDetectAudioRoutePickerTap;
- (void)serviceDidDetectMicButtonLongPressBegan;
- (void)serviceDidDetectMicButtonLongPressEnded;
- (void)serviceDidDetectMicButtonTap;
- (void)serviceDidDismissViewControllerWithStatusBarStyle:(int64_t)style;
- (void)serviceDidEndEditing;
- (void)serviceDidEnterUITrackingMode;
- (void)serviceDidExitUITrackingMode;
- (void)serviceDidPresentConversationFromBreadcrumb;
- (void)serviceDidPresentUserInterface;
- (void)serviceDidPresentViewControllerWithStatusBarStyle:(int64_t)style;
- (void)serviceDidRequestCurrentTextInput:(id)input;
- (void)serviceDidRequestKeyboard:(BOOL)keyboard;
- (void)serviceDidRequestKeyboard:(BOOL)keyboard minimized:(BOOL)minimized;
- (void)serviceDidResetTextInput;
- (void)servicePresentationDidChangePeekMode:(unint64_t)mode;
- (void)servicePresentationDidChangeVisualState:(unint64_t)state;
- (void)servicePresentedIntentWithBundleId:(id)id;
- (void)serviceRequestsActivationSourceWithReplyHandler:(id)handler;
- (void)serviceRequestsDismissalWithUserInfo:(id)info withReason:(int64_t)reason;
- (void)serviceRequestsHIDEventDefferal;
- (void)serviceStartGuidedAccess;
- (void)serviceStartRequestWithOptions:(id)options;
- (void)serviceUserRelevantEventDidOccur;
- (void)serviceViewControllerRequestsDismissalWithDismissalReason:(int64_t)reason completion:(id)completion;
- (void)serviceViewControllerRequestsKeyboardWithCompletion:(id)completion;
- (void)serviceViewControllerRequestsPresentation:(id)presentation;
- (void)serviceViewControllerWillChangeKeyboardVisibility:(BOOL)visibility;
- (void)serviceWillBeginEditing;
- (void)serviceWillDismissViewControllerWithStatusBarStyle:(int64_t)style;
- (void)serviceWillPresentViewControllerWithStatusBarStyle:(int64_t)style;
- (void)setBottomContentInset:(double)inset;
- (void)setBugReportingAvailable:(BOOL)available;
- (void)setDockFrame:(CGRect)frame;
- (void)setFullScreenDimmingLayerVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setHelpButtonEmphasized:(BOOL)emphasized;
- (void)setRequestHandlingStatus:(unint64_t)status;
- (void)setRequestOptions:(id)options;
- (void)setSession:(id)session;
- (void)setShouldDismissForSwipesOutsideContent:(BOOL)content;
- (void)setShouldDismissForTapOutsideContent:(BOOL)content;
- (void)setShouldDismissForTapsOutsideContent:(BOOL)content;
- (void)setShouldPassTouchesThroughToSpringBoard:(BOOL)board;
- (void)setStatusBarFrame:(CGRect)frame;
- (void)setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setStatusViewDisabled:(BOOL)disabled;
- (void)setStatusViewHeight:(double)height;
- (void)setStatusViewHidden:(BOOL)hidden;
- (void)setStatusViewUserInteractionEnabled:(BOOL)enabled;
- (void)setSystemContentFrame:(CGRect)frame;
- (void)setTypeToSiriViewHidden:(BOOL)hidden;
- (void)setWaitingForTelephonyToStart:(BOOL)start;
- (void)showAppUnlockForAppId:(id)id completion:(id)completion;
- (void)showPresentationWithIdentifier:(id)identifier properties:(id)properties lockState:(unint64_t)state;
- (void)siriDidActivateFromSource:(int64_t)source;
- (void)siriDidDeactivate;
- (void)siriDidHidePasscodeUnlock;
- (void)siriIdleAndQuietStatusDidChange:(BOOL)change;
- (void)siriKeyboardViewDidChange:(id *)change;
- (void)siriResultsDidDismissInTamale;
- (void)siriWillActivateFromSource:(int64_t)source;
- (void)siriWillBePresented:(int64_t)presented;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options;
- (void)siriWillHidePasscodeUnlockForResult:(int64_t)result;
- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)request;
- (void)startHostingSceneForConfiguration:(id)configuration withCompletionBlock:(id)block;
- (void)startRequestForText:(id)text;
- (void)takeScreenshotWithCompletion:(id)completion;
- (void)toggleHomeAffordanceHidden:(BOOL)hidden;
- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)control;
- (void)updateEdgeLightWindowLevel:(int64_t)level;
- (void)updateRemoteSceneWithFrontMostAppInterfaceOrientation:(int64_t)orientation;
- (void)updateToPresentationWithIdentifier:(id)identifier presentationProperties:(id)properties animated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
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
    remoteObjectInterface = [objc_opt_class() remoteObjectInterface];
    [(NSXPCConnection *)v13 setRemoteObjectInterface:remoteObjectInterface];

    v15 = self->_remoteConnection;
    exportedInterface = [objc_opt_class() exportedInterface];
    [(NSXPCConnection *)v15 setExportedInterface:exportedInterface];

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
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidPresentUserInterface:self];
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
  _connection = [(AFUISiriRemoteSceneViewController *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)serviceViewControllerProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(AFUISiriRemoteSceneViewController *)self _connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__AFUISiriRemoteSceneViewController_serviceViewControllerProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278CD57E0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_connection remoteObjectProxyWithErrorHandler:v9];

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
  processIdentifier = [(NSXPCConnection *)self->_remoteConnection processIdentifier];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Connection to Siri.app was invalidated pid=%d _remoteConnection=%@", processIdentifier, self->_remoteConnection];
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
  processIdentifier = [(NSXPCConnection *)self->_remoteConnection processIdentifier];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Connection to Siri.app was interrupted pid=%d _remoteConnection=%@", processIdentifier, self->_remoteConnection];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [AFUISiriRemoteSceneViewController _interrupted];
  }

  [(AFUISceneHostingViewController *)self invalidateSceneForReason:4 explanation:v4];
}

- (void)startHostingSceneForConfiguration:(id)configuration withCompletionBlock:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__AFUISiriRemoteSceneViewController_startHostingSceneForConfiguration_withCompletionBlock___block_invoke;
  v10[3] = &unk_278CD5808;
  objc_copyWeak(&v12, &location);
  v8 = blockCopy;
  v11 = v8;
  v9.receiver = self;
  v9.super_class = AFUISiriRemoteSceneViewController;
  [(AFUISceneHostingViewController *)&v9 startHostingSceneForConfiguration:configurationCopy withCompletionBlock:v10];

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

- (void)sceneController:(id)controller didCreateSiriScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self didCreateSiriScene:sceneCopy];
}

- (void)sceneController:(id)controller willInvalidateScene:(id)scene forReason:(unint64_t)reason
{
  if (reason <= 5)
  {
    self->_expectingInvalidation = 0x1010100uLL >> (8 * reason);
  }
}

- (void)_handleInvalidationForReason:(unint64_t)reason explanation:(id)explanation
{
  explanationCopy = explanation;
  objc_initWeak(&location, self);
  objc_copyWeak(v8, &location);
  v8[1] = reason;
  v7 = explanationCopy;
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

- (void)_audioCategoriesDisablingVolumeHUDDidChangeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  audioCategoriesDisablingVolumeHUD = self->_audioCategoriesDisablingVolumeHUD;
  if (toCopy && audioCategoriesDisablingVolumeHUD)
  {
    if ([(NSArray *)toCopy isEqualToArray:?])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (audioCategoriesDisablingVolumeHUD != toCopy)
  {
LABEL_6:
    objc_storeStrong(&self->_audioCategoriesDisablingVolumeHUD, to);
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

- (void)_handleSceneDidActivateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v5 = identifierCopy;
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

- (void)viewDidAppear:(BOOL)appear
{
  v7 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = AFUISiriRemoteSceneViewController;
  [(AFUISiriRemoteSceneViewController *)&v4 viewDidAppear:appear];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[AFUISiriRemoteSceneViewController viewDidAppear:]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s AFUIRemoteViewController's view did appear", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(AFUISiriRemoteSceneViewController *)&v6 viewDidDisappear:disappearCopy];
}

void __52__AFUISiriRemoteSceneViewController_sessionDelegate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __52__AFUISiriRemoteSceneViewController_sessionDelegate__block_invoke_cold_1();
  }
}

- (void)serviceRequestsActivationSourceWithReplyHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
    (*(handler + 2))(handlerCopy, [delegate siriRemoteViewControllerRequestsActivationSource:self]);
  }
}

- (void)serviceRequestsDismissalWithUserInfo:(id)info withReason:(int64_t)reason
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
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

  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate dismissSiriRemoteViewController:self userInfo:infoCopy withReason:reason];
}

- (void)serviceStartGuidedAccess
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate startGuidedAccessForRemoteViewController:self];
}

- (void)serviceBulletinWithIdentifier:(id)identifier replyHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    identifierCopy = identifier;
    dataSource = [(AFUISiriRemoteSceneViewController *)self dataSource];
    v9 = [dataSource siriRemoteViewController:self bulletinWithIdentifier:identifierCopy];

    (*(handler + 2))(handlerCopy, v9);
  }
}

- (void)serviceStartRequestWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self startRequestWithOptions:optionsCopy];
}

- (void)serviceUserRelevantEventDidOccur
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate userRelevantEventDidOccurInSiriRemoteViewController:self];
}

- (void)serviceDidRequestCurrentTextInput:(id)input
{
  inputCopy = input;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self didRequestCurrentTextInputWithReplyHandler:inputCopy];
}

- (void)siriIdleAndQuietStatusDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self siriIdleAndQuietStatusDidChange:changeCopy];
}

- (void)setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setStatusViewHidden:hiddenCopy];
}

- (void)setTypeToSiriViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setTypeToSiriViewHidden:hiddenCopy];
}

- (void)setFullScreenDimmingLayerVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setFullScreenDimmingLayerVisible:visibleCopy animated:animatedCopy];
}

- (void)inputTypeDidChange:(int64_t)change
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self inputTypeDidChange:change];
}

- (void)setStatusViewDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setStatusViewDisabled:disabledCopy];
}

- (void)setStatusViewUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setStatusViewUserInteractionEnabled:enabledCopy];
}

- (void)serviceWillPresentViewControllerWithStatusBarStyle:(int64_t)style
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self willPresentViewControllerWithStatusBarStyle:style];
}

- (void)serviceDidPresentViewControllerWithStatusBarStyle:(int64_t)style
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self didPresentViewControllerWithStatusBarStyle:style];
}

- (void)serviceWillDismissViewControllerWithStatusBarStyle:(int64_t)style
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self willDismissViewControllerWithStatusBarStyle:style];
}

- (void)serviceDidDismissViewControllerWithStatusBarStyle:(int64_t)style
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self didDismissViewControllerWithStatusBarStyle:style];
}

- (void)setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setStatusBarHidden:hiddenCopy animated:animatedCopy];
}

- (void)setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setStatusBarHidden:hiddenCopy animated:animatedCopy completion:completionCopy];
}

- (void)setHelpButtonEmphasized:(BOOL)emphasized
{
  emphasizedCopy = emphasized;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setHelpButtonEmphasized:emphasizedCopy];
}

- (void)setBugReportingAvailable:(BOOL)available
{
  availableCopy = available;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setBugReportingAvailable:availableCopy];
}

- (void)setRequestHandlingStatus:(unint64_t)status
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self setRequestHandlingStatus:status];
}

- (void)getScreenshotWithReplyHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v4 = UICreateScreenImage();
    v6 = [MEMORY[0x277D755B8] imageWithCGImage:v4];
    v5 = UIImagePNGRepresentation(v6);
    handlerCopy[2](handlerCopy, v5);

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

- (void)handlePasscodeUnlockWithClient:(unint64_t)client withCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self handlePasscodeUnlockWithClient:client withCompletion:completionCopy];
}

- (void)pulseHelpButton
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerPulseHelpButton:self];
}

- (void)serviceDidRequestKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self didRequestKeyboard:keyboardCopy];
}

- (void)serviceDidRequestKeyboard:(BOOL)keyboard minimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  keyboardCopy = keyboard;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self didRequestKeyboard:keyboardCopy minimized:minimizedCopy];
}

- (void)serviceDidResetTextInput
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidResetTextInput:self];
}

- (void)serviceViewControllerRequestsKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)serviceWillBeginEditing
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerWillBeginEditing:self];
}

- (void)serviceDidEndEditing
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidEndEditing:self];
}

- (void)serviceRequestsHIDEventDefferal
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerRequestsHIDEventDefferal:self];
}

- (void)serviceCancelHIDEventDefferal
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerCancelHIDEventDefferal:self];
}

- (void)serviceDidEnterUITrackingMode
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidEnterUITrackingMode:self];
}

- (void)serviceDidExitUITrackingMode
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidExitUITrackingMode:self];
}

- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place completion:(id)completion
{
  placeCopy = place;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__AFUISiriRemoteSceneViewController_openURL_bundleId_inPlace_completion___block_invoke;
  v12[3] = &unk_278CD5880;
  v13 = completionCopy;
  v11 = completionCopy;
  [(AFUISiriRemoteSceneViewController *)self openURL:l bundleId:id inPlace:placeCopy launchOptions:0 completion:v12];
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

- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place launchOptions:(id)options completion:(id)completion
{
  placeCopy = place;
  completionCopy = completion;
  optionsCopy = options;
  idCopy = id;
  lCopy = l;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate openURL:lCopy bundleId:idCopy inPlace:placeCopy launchOptions:optionsCopy completion:completionCopy];
}

- (void)serviceDidDetectMicButtonTap
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidDetectMicButtonTap:self];
}

- (void)serviceDidDetectMicButtonLongPressBegan
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidDetectMicButtonLongPressBegan:self];
}

- (void)serviceDidDetectMicButtonLongPressEnded
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidDetectMicButtonLongPressEnded:self];
}

- (void)servicePresentationDidChangePeekMode:(unint64_t)mode
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self didChangePresentationPeekMode:mode];
}

- (void)servicePresentationDidChangeVisualState:(unint64_t)state
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [delegate2 siriRemoteViewController:self didChangePresentationVisualState:state];
  }
}

- (void)serviceDidPresentConversationFromBreadcrumb
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidPresentConversationFromBreadcrumb:self];
}

- (void)serviceDidDetectAudioRoutePickerTap
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewControllerDidDetectAudioRoutePickerTap:self];
}

- (void)serviceViewControllerRequestsPresentation:(id)presentation
{
  presentationCopy = presentation;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self requestsPresentation:presentationCopy];
}

- (void)serviceViewControllerRequestsDismissalWithDismissalReason:(int64_t)reason completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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

  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self requestsDismissalWithReason:reason withCompletion:completionCopy];
}

- (void)servicePresentedIntentWithBundleId:(id)id
{
  idCopy = id;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self presentedIntentWithBundleId:idCopy];
}

- (void)setShouldDismissForTapOutsideContent:(BOOL)content
{
  contentCopy = content;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [delegate2 setShouldDismissForTapOutsideContent:contentCopy];
  }
}

- (void)setShouldDismissForTapsOutsideContent:(BOOL)content
{
  contentCopy = content;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [delegate2 setShouldDismissForTapsOutsideContent:contentCopy];
  }
}

- (void)setShouldDismissForSwipesOutsideContent:(BOOL)content
{
  contentCopy = content;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [delegate2 setShouldDismissForSwipesOutsideContent:contentCopy];
  }
}

- (void)requestHostBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence
{
  fenceCopy = fence;
  v5 = fenceCopy;
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

- (void)setShouldPassTouchesThroughToSpringBoard:(BOOL)board
{
  boardCopy = board;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [delegate2 setShouldPassTouchesThroughToSpringBoard:boardCopy];
  }
}

- (void)requestSystemApertureCollapse
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [delegate2 requestSystemApertureCollapse];
  }
}

- (void)invalidateSystemApertureAssertion
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [delegate2 invalidateSystemApertureAssertion];
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

- (void)toggleHomeAffordanceHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate toggleHomeAffordanceHidden:hiddenCopy];
}

- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)control
{
  controlCopy = control;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate toggleSiriHomeAffordanceGestureControl:controlCopy];
}

- (void)updateEdgeLightWindowLevel:(int64_t)level
{
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate updateEdgeLightWindowLevel:level];
}

- (void)updateToPresentationWithIdentifier:(id)identifier presentationProperties:(id)properties animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  identifierCopy = identifier;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __115__AFUISiriRemoteSceneViewController_updateToPresentationWithIdentifier_presentationProperties_animated_completion___block_invoke;
  v17[3] = &unk_278CD58D0;
  v18 = identifierCopy;
  v11 = identifierCopy;
  completionCopy = completion;
  propertiesCopy = properties;
  v14 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v17];
  v15 = v14;
  if (completionCopy)
  {
    v16 = completionCopy;
  }

  else
  {
    v16 = &__block_literal_global_174;
  }

  [v14 updateToPresentationWithIdentifier:v11 presentationProperties:propertiesCopy animated:animatedCopy completion:v16];
}

void __115__AFUISiriRemoteSceneViewController_updateToPresentationWithIdentifier_presentationProperties_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __115__AFUISiriRemoteSceneViewController_updateToPresentationWithIdentifier_presentationProperties_animated_completion___block_invoke_cold_1();
  }
}

- (void)setDockFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)updateRemoteSceneWithFrontMostAppInterfaceOrientation:(int64_t)orientation
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_179];
  [v4 setHostFrontMostAppOrientation:orientation];
}

void __91__AFUISiriRemoteSceneViewController_updateRemoteSceneWithFrontMostAppInterfaceOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __91__AFUISiriRemoteSceneViewController_updateRemoteSceneWithFrontMostAppInterfaceOrientation___block_invoke_cold_1();
  }
}

- (void)siriWillActivateFromSource:(int64_t)source
{
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_181];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [v5 setHostFrontMostAppOrientation:{objc_msgSend(mEMORY[0x277D75128], "_frontMostAppOrientation")}];

  [v5 siriWillActivateFromSource:source];
}

void __64__AFUISiriRemoteSceneViewController_siriWillActivateFromSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __64__AFUISiriRemoteSceneViewController_siriWillActivateFromSource___block_invoke_cold_1();
  }
}

- (void)siriDidActivateFromSource:(int64_t)source
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_184];
  [v4 siriDidActivateFromSource:source];
}

void __63__AFUISiriRemoteSceneViewController_siriDidActivateFromSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __63__AFUISiriRemoteSceneViewController_siriDidActivateFromSource___block_invoke_cold_1();
  }
}

- (void)setRequestOptions:(id)options
{
  optionsCopy = options;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__AFUISiriRemoteSceneViewController_setRequestOptions___block_invoke;
  v7[3] = &unk_278CD58D0;
  v8 = optionsCopy;
  v5 = optionsCopy;
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

- (void)preloadPresentationBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__AFUISiriRemoteSceneViewController_preloadPresentationBundleWithIdentifier___block_invoke;
  v7[3] = &unk_278CD58D0;
  v8 = identifierCopy;
  v5 = identifierCopy;
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

- (void)showPresentationWithIdentifier:(id)identifier properties:(id)properties lockState:(unint64_t)state
{
  propertiesCopy = properties;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__AFUISiriRemoteSceneViewController_showPresentationWithIdentifier_properties_lockState___block_invoke;
  v12[3] = &unk_278CD58D0;
  v13 = propertiesCopy;
  v9 = propertiesCopy;
  identifierCopy = identifier;
  v11 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v12];
  [v11 showPresentationWithIdentifier:identifierCopy properties:v9 lockState:state];
}

void __89__AFUISiriRemoteSceneViewController_showPresentationWithIdentifier_properties_lockState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __89__AFUISiriRemoteSceneViewController_showPresentationWithIdentifier_properties_lockState___block_invoke_cold_1();
  }
}

- (void)showAppUnlockForAppId:(id)id completion:(id)completion
{
  idCopy = id;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__AFUISiriRemoteSceneViewController_showAppUnlockForAppId_completion___block_invoke;
  v10[3] = &unk_278CD58D0;
  v11 = idCopy;
  v7 = idCopy;
  completionCopy = completion;
  v9 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v10];
  [v9 showAppUnlockForAppId:v7 completion:completionCopy];
}

void __70__AFUISiriRemoteSceneViewController_showAppUnlockForAppId_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __70__AFUISiriRemoteSceneViewController_showAppUnlockForAppId_completion___block_invoke_cold_1();
  }
}

- (void)siriWillBePresented:(int64_t)presented
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_188];
  [v4 siriWillBePresented:presented];
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
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AFUISiriRemoteSceneViewController *)self delegate];
    [delegate2 siriRemoteViewControllerDidDeactivateScene:self];
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

- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)request
{
  requestCopy = request;
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_198];
  [v4 siriWillShowPasscodeUnlockAndCancelRequest:requestCopy];
}

void __80__AFUISiriRemoteSceneViewController_siriWillShowPasscodeUnlockAndCancelRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __80__AFUISiriRemoteSceneViewController_siriWillShowPasscodeUnlockAndCancelRequest___block_invoke_cold_1();
  }
}

- (void)siriWillHidePasscodeUnlockForResult:(int64_t)result
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_200];
  [v4 siriWillHidePasscodeUnlockForResult:result];
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

- (void)startRequestForText:(id)text
{
  textCopy = text;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_204];
  [v5 startRequestForText:textCopy];
}

void __57__AFUISiriRemoteSceneViewController_startRequestForText___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __57__AFUISiriRemoteSceneViewController_startRequestForText___block_invoke_cold_1();
  }
}

- (void)siriKeyboardViewDidChange:(id *)change
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_206];
  [v4 siriKeyboardViewDidChange:change];
}

void __63__AFUISiriRemoteSceneViewController_siriKeyboardViewDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __63__AFUISiriRemoteSceneViewController_siriKeyboardViewDidChange___block_invoke_cold_1();
  }
}

- (void)setStatusBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setStatusViewHeight:(double)height
{
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_210];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:height];
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

- (void)setBottomContentInset:(double)inset
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_213];
  [v4 setBottomContentInset:inset];
}

void __59__AFUISiriRemoteSceneViewController_setBottomContentInset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __59__AFUISiriRemoteSceneViewController_setBottomContentInset___block_invoke_cold_1();
  }
}

- (void)setSystemContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setSession:(id)session
{
  sessionCopy = session;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_217];
  [v5 setSession:sessionCopy];
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

- (void)didReceiveShortTapActionWithRequestOptions:(id)options
{
  optionsCopy = options;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_225];
  [v5 didReceiveShortTapActionWIthRequestOptions:optionsCopy];
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

- (void)setWaitingForTelephonyToStart:(BOOL)start
{
  startCopy = start;
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_233];
  [v4 setWaitingForTelephonyToStart:startCopy];
}

void __67__AFUISiriRemoteSceneViewController_setWaitingForTelephonyToStart___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __67__AFUISiriRemoteSceneViewController_setWaitingForTelephonyToStart___block_invoke_cold_1();
  }
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
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
  v12 = completionCopy;
  v10 = completionCopy;
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

- (void)didDetectGestureEvent:(int64_t)event inRegion:(int64_t)region
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__AFUISiriRemoteSceneViewController_didDetectGestureEvent_inRegion___block_invoke;
  v7[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v7[4] = event;
  v7[5] = region;
  v6 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
  [v6 didDetectGestureEvent:event inRegion:region];
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

- (void)orientationWillChangeTo:(int64_t)to
{
  v4 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_239];
  [v4 orientationWillChangeTo:to];
}

void __61__AFUISiriRemoteSceneViewController_orientationWillChangeTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __61__AFUISiriRemoteSceneViewController_orientationWillChangeTo___block_invoke_cold_1();
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106__AFUISiriRemoteSceneViewController_siriWillBeginTearDownForDismissalReason_withOriginalDismissalOptions___block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = reason;
  optionsCopy = options;
  v7 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v8];
  [v7 siriWillBeginTearDownForDismissalReason:reason withOriginalDismissalOptions:optionsCopy];
}

void __106__AFUISiriRemoteSceneViewController_siriWillBeginTearDownForDismissalReason_withOriginalDismissalOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __106__AFUISiriRemoteSceneViewController_siriWillBeginTearDownForDismissalReason_withOriginalDismissalOptions___block_invoke_cold_1(a1, v4, a2);
  }
}

- (void)presentationStateUpdatedFromPresentationState:(int64_t)state toPresentationState:(int64_t)presentationState
{
  v6 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_242];
  [v6 hostApplicationPresentationStateUpdatedFromPresentationState:state toPresentationState:presentationState];
}

void __103__AFUISiriRemoteSceneViewController_presentationStateUpdatedFromPresentationState_toPresentationState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __103__AFUISiriRemoteSceneViewController_presentationStateUpdatedFromPresentationState_toPresentationState___block_invoke_cold_1();
  }
}

- (void)animatedDisappearanceDidBeginWithDuration:(double)duration reason:(int64_t)reason
{
  v6 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_244];
  [v6 animatedDisappearanceDidBeginWithDuration:reason reason:duration];
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
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriResultsDidDismissInTamale];
}

- (void)serviceViewControllerWillChangeKeyboardVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  delegate = [(AFUISiriRemoteSceneViewController *)self delegate];
  [delegate siriRemoteViewController:self willChangeKeyboardVisibility:visibilityCopy];
}

- (void)emitUIStateTransitionForSiriDismissalWithDismissalReason:(int)reason completion:(id)completion
{
  v4 = *&reason;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __105__AFUISiriRemoteSceneViewController_emitUIStateTransitionForSiriDismissalWithDismissalReason_completion___block_invoke;
  v8[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
  reasonCopy = reason;
  completionCopy = completion;
  v7 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:v8];
  [v7 hostApplicationRequestsEmitUIStateTransitionForSiriDismissalWithReason:v4 completion:completionCopy];
}

void __105__AFUISiriRemoteSceneViewController_emitUIStateTransitionForSiriDismissalWithDismissalReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __105__AFUISiriRemoteSceneViewController_emitUIStateTransitionForSiriDismissalWithDismissalReason_completion___block_invoke_cold_1();
  }
}

- (void)emitInstrumentationEvent:(id)event
{
  eventCopy = event;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_249];
  [v5 hostApplicationRequestsEmitInstrumentationEvent:eventCopy];
}

void __62__AFUISiriRemoteSceneViewController_emitInstrumentationEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __62__AFUISiriRemoteSceneViewController_emitInstrumentationEvent___block_invoke_cold_1();
  }
}

- (void)emitInstrumentationEvent:(id)event atTime:(unint64_t)time
{
  eventCopy = event;
  v7 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_251];
  [v7 hostApplicationRequestsEmitInstrumentationEvent:eventCopy atTime:time];
}

void __69__AFUISiriRemoteSceneViewController_emitInstrumentationEvent_atTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __69__AFUISiriRemoteSceneViewController_emitInstrumentationEvent_atTime___block_invoke_cold_1();
  }
}

- (void)didSuccessfullyHandleCommandsInDelayedActionCommand:(id)command
{
  commandCopy = command;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_253];
  [v5 hostApplicationDidSuccessfullyHandleCommandsInDelayedActionCommand:commandCopy];
}

void __89__AFUISiriRemoteSceneViewController_didSuccessfullyHandleCommandsInDelayedActionCommand___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __89__AFUISiriRemoteSceneViewController_didSuccessfullyHandleCommandsInDelayedActionCommand___block_invoke_cold_1();
  }
}

- (void)takeScreenshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(AFUISiriRemoteSceneViewController *)self serviceViewControllerProxyWithErrorHandler:&__block_literal_global_255];
  [v5 hostApplicationRequestsScreenshotWithCompletion:completionCopy];
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
    selfCopy = self;
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