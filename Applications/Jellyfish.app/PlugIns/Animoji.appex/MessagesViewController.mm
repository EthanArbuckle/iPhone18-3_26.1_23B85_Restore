@interface MessagesViewController
- (BOOL)canPeelSticker;
- (BOOL)canTakeSendingAction;
- (BOOL)isLandcapeTrapOverlayShown;
- (BOOL)isLandscapeMode;
- (BOOL)presentsLaunchScreenInFullScreenModal;
- (BOOL)requestsExpandedOnLaunchScreenDismissal;
- (BOOL)shouldPerformSegueWithIdentifier:(id)a3 sender:(id)a4;
- (BOOL)shouldPresentPaddleView;
- (BOOL)shouldShowDisclosureAlertForSendingMessage;
- (BOOL)shouldShowLaunchScreen;
- (BOOL)shouldZoomWhileRecording;
- (CGSize)defaultVideoExportDimensions;
- (MessagesViewController)initWithCoder:(id)a3;
- (UIEdgeInsets)accessoryButtonContentInsets;
- (UIEdgeInsets)contentInsetForPuppetCollectionViewController:(id)a3;
- (double)carouselHeight;
- (double)edgeMargin;
- (double)horizontalCellSpacingForPuppetCollectionViewController:(id)a3;
- (double)verticalCellSpacingForPuppetCollectionViewController:(id)a3;
- (double)widthScaleFactor;
- (id)defaultExportVideoOptionsForSize:(CGSize)a3;
- (id)faceTrackingRecordingURL;
- (id)puppetSnapshotWithContentMode:(int64_t)a3;
- (id)retargetableSpringBehavior;
- (id)setRestorableValue:(id)a3 forKeyPath:(id)a4 onViews:(id)a5;
- (id)stickerImageUsingLargeSticker:(BOOL)a3;
- (id)stickerUsingLargeSticker:(BOOL)a3;
- (id)trackingLostReason;
- (int)widthExtent;
- (int64_t)puppetsPerRow;
- (unint64_t)actualPresentationStyle;
- (unint64_t)presentationStyle;
- (void)_launchTapToRadarWithAttachments:(id)a3;
- (void)addInternalARSessionObserverIfNecessary;
- (void)addPuppetCollectionViewControllerInNecessary;
- (void)afterExportMovie;
- (void)beforeExportMovie;
- (void)beginObservingFaceTrackingIfNecessary;
- (void)captureSnapshotMetricsIfNeeded;
- (void)carouselController:(id)a3 didFocusOnRecordView:(id)a4;
- (void)carouselController:(id)a3 didMoveTowardRecord:(id)a4 withFactor:(double)a5;
- (void)carouselController:(id)a3 didUpdateWithRecord:(id)a4;
- (void)carouselController:(id)a3 willEndFocusOnRecordView:(id)a4;
- (void)changeUserInfoLabelForTrackingState;
- (void)checkLightingAndObscuredSensorAfterTrackingLost;
- (void)checkLightingAndObscuredSensorWhileTracking;
- (void)cleanUpOnExit;
- (void)conditionallyPerformWithDisclosureAlertForSendingMessageWithConfirmTitle:(id)a3 result:(id)a4;
- (void)dealloc;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)disableIdleTimer;
- (void)discardRecording;
- (void)dismissAvatarUIControllerAnimated:(BOOL)a3;
- (void)dismissLaunchScreenIfNecessaryForPresentationStyle:(unint64_t)a3 controller:(id)a4;
- (void)dismissPaddleViewIfNecessary;
- (void)endObservingFaceTrackingIfNecessary;
- (void)exportVideoWithCompletion:(id)a3;
- (void)fadeIn:(id)a3;
- (void)fadeOut:(id)a3;
- (void)handleInterruptionEnded;
- (void)handleRecordingButtonTouchUp:(id)a3;
- (void)handleResumeTrackingTap:(id)a3;
- (void)handleSceneLongPress:(id)a3;
- (void)handleSceneShortPress:(id)a3;
- (void)hideUserInfoLabelWithDuration:(double)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)interfaceObscuredByOverlayOrPresentationChanged:(BOOL)a3;
- (void)launchTapToRadar;
- (void)launchViewControllerDidCancel:(id)a3;
- (void)launchViewControllerDidConfirm:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onCancelSendingMessage:(id)a3;
- (void)onConfirmSendingMessage:(id)a3;
- (void)onEditAvatar:(id)a3;
- (void)onReplayMessage:(id)a3;
- (void)onTapToRadarButtonPressed:(id)a3;
- (void)overlayPresentationNotification:(id)a3;
- (void)overrideUserInfoLabelStateWithText:(id)a3 alpha:(double)a4;
- (void)paddleViewTapped:(id)a3;
- (void)pauseFaceTrackingWithReason:(id)a3;
- (void)performWhileOverridingPresentationStyle:(unint64_t)a3 block:(id)a4;
- (void)performWithFadeAnimation:(id)a3 enabled:(BOOL)a4;
- (void)playPreviewOnce;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)preparePuppetViewForReuse;
- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4;
- (void)presentPaddleView;
- (void)puppetCollectionViewController:(id)a3 didSelectPuppetRecord:(id)a4;
- (void)recordView:(id)a3 previewDidChangeStatus:(int64_t)a4;
- (void)recordView:(id)a3 session:(id)a4 didFailWithError:(id)a5;
- (void)recordView:(id)a3 sessionInterruptionEnded:(id)a4;
- (void)recordView:(id)a3 sessionWasInterrupted:(id)a4;
- (void)recordingButton:(id)a3 didEndLongPress:(BOOL)a4;
- (void)recordingButtonDidStartLongPress:(id)a3;
- (void)recordingDidFinish:(BOOL)a3;
- (void)recordingWillStart;
- (void)removeInternalARSessionObserverIfNecessary;
- (void)removePuppetCollectionViewControllerIfNecessary;
- (void)requestPresentationStyle:(unint64_t)a3;
- (void)restoreIdleTimer;
- (void)resumeFaceTrackingIfNecessary;
- (void)sendVideoMessage;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)setAllowsCreate:(BOOL)a3 animated:(BOOL)a4;
- (void)setSingleAvatarMode:(BOOL)a3 animated:(BOOL)a4;
- (void)showAlertForDisclosureWarningWithConfirmTitle:(id)a3 completionBlock:(id)a4;
- (void)showFileRadarWarningPopup;
- (void)showUserInfoLabelWithText:(id)a3;
- (void)snapshottingEnabledChangedNotification:(id)a3;
- (void)startObservingBaseMessagesNotifications;
- (void)startTrackingLostTimer;
- (void)startTrackingStartTimerWithCounter:(unint64_t)a3;
- (void)stopObservingBaseMessagesNotifications;
- (void)stopOverridingUserInfoLabelState:(BOOL)a3;
- (void)stopPreviewing;
- (void)stopRecordingAndPlayPreview:(BOOL)a3;
- (void)strongPopupPresentationNotification:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)upateReplayButtonImageForContentSize;
- (void)updateARSessionStateResettingState:(BOOL)a3;
- (void)updateButtonsImages;
- (void)updateConstraintConstants;
- (void)updateEditButtonVisibilityForceHide:(BOOL)a3;
- (void)updateForNewPuppetView;
- (void)updateLayoutForPresentationStyle;
- (void)updatePaddleViewLayoutIfNecessary;
- (void)updatePuppetCollectionViewIfNecessary;
- (void)updatePuppetCollectionViewWithCurrentFocusedRecordIfNecessary;
- (void)updateRecording;
- (void)updateRecordingTime;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)updateTapToRadarVisibilityForceHide:(BOOL)a3;
- (void)updateUIState:(unint64_t)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willResignActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation MessagesViewController

- (MessagesViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = +[AVAudioSession sharedInstance];
  [v5 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:0 error:0];
  v11 = 0;
  [v5 setActive:1 error:&v11];
  v6 = v11;
  if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v6 localizedDescription];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = MessagesViewController;
  v8 = [(MessagesViewController *)&v10 initWithCoder:v4];

  return v8;
}

- (void)viewDidLoad
{
  v247.receiver = self;
  v247.super_class = MessagesViewController;
  [(MessagesViewController *)&v247 viewDidLoad];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] viewDidLoad", buf, 2u);
  }

  if (!self->_hasLoadedBefore)
  {
    kdebug_trace();
    self->_hasLoadedBefore = 1;
    v3 = +[AVTUIColorRepository appBackgroundColor];
    v4 = [(MessagesViewController *)self view];
    [v4 setBackgroundColor:v3];

    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 objectForKey:@"LastPuppetIdentifier"];

    v225 = v6;
    v7 = +[NSUserDefaults standardUserDefaults];
    LODWORD(v6) = [v7 BOOLForKey:@"kJFDefaults_AlwaysStartWithTiger"];

    v8 = v225;
    if (v6)
    {

      v8 = @"tiger";
    }

    v9 = [AVTAvatarRecordDataSource defaultUIDataSourceWithDomainIdentifier:AVTAvatarStoreDomainMessages];
    avatarDataSource = self->_avatarDataSource;
    self->_avatarDataSource = v9;

    [(AVTAvatarRecordDataSource *)self->_avatarDataSource addObserver:self];
    v11 = +[AVTUsageTracker currentSession];
    usageTrackingSession = self->_usageTrackingSession;
    self->_usageTrackingSession = v11;

    v13 = self->_usageTrackingSession;
    v14 = [(AVTAvatarRecordDataSource *)self->_avatarDataSource recordStore];
    [(AVTUsageTrackingSession *)v13 beginWithStore:v14];

    v15 = objc_alloc_init(AVTAvatarRecordImageProvider);
    imageProvider = self->_imageProvider;
    self->_imageProvider = v15;

    self->_ignoreViewWillDisappearCount = 0;
    self->_waitingOnPresentationStyleRequestFulfillment = 0;
    self->_lastPreviewStatus = 1;
    self->_isUpdatingAvatarMode = 0;
    self->_didStopPreviewBecauseOfOverlay = 0;
    self->_arSessionState = 5;
    self->_isTransitioningBetweenLayouts = 0;
    self->_hasAppeared = 0;
    self->_observingFacetracking = 0;
    self->_exportingMovie = 0;
    self->_usePresentationStyleOverride = 0;
    self->_userInfoIsBeingOverridden = 0;
    self->_capturedSnapshotMetrics = 0;
    v17 = [AVTCarouselController recordingCarouselForRecordDataSource:self->_avatarDataSource];
    avatarListController = self->_avatarListController;
    self->_avatarListController = v17;

    if ([(MessagesViewController *)self shouldShowLaunchScreen])
    {
      [(AVTRecordingCarouselController *)self->_avatarListController setIsPostponingBeginSession:1];
    }

    [(AVTRecordingCarouselController *)self->_avatarListController setRecordingDelegate:self];
    [(AVTRecordingCarouselController *)self->_avatarListController setPresenterDelegate:self];
    v19 = objc_alloc_init(UIView);
    carouselView = self->_carouselView;
    self->_carouselView = v19;

    [(UIView *)self->_carouselView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_carouselView setClipsToBounds:1];
    v21 = [(MessagesViewController *)self view];
    v22 = self->_carouselView;
    WeakRetained = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
    [v21 insertSubview:v22 belowSubview:WeakRetained];

    *buf = 0;
    v242 = buf;
    v243 = 0x3032000000;
    v244 = sub_1000079EC;
    v245 = sub_1000079FC;
    v246 = 0;
    v238[0] = _NSConcreteStackBlock;
    v238[1] = 3221225472;
    v238[2] = sub_100007A04;
    v238[3] = &unk_1000348F0;
    v240 = buf;
    v238[4] = self;
    v189 = v8;
    v239 = v189;
    [UIView performWithoutAnimation:v238];
    v24 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [AVTCircularButton alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    obj = [v25 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v29 = +[UIColor systemRedColor];
    [obj setTintColor:v29];

    [obj setTranslatesAutoresizingMaskIntoConstraints:0];
    [obj addTarget:self action:"onCancelSendingMessage:" forControlEvents:64];
    v30 = [(MessagesViewController *)self view];
    [v30 addSubview:obj];

    objc_storeStrong(&self->_cancelSendingMessageButton, obj);
    v231 = [[AVTCircularButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v231 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v231 addTarget:self action:"onEditAvatar:" forControlEvents:64];
    v31 = [(MessagesViewController *)self view];
    [v31 addSubview:v231];

    objc_storeStrong(&self->_editButton, v231);
    [(MessagesViewController *)self updateButtonsImages];
    v234 = [UIButton buttonWithType:1];
    [v234 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"sJFReplay" value:&stru_100035080 table:@"JFStrings"];
    [v234 setTitle:v33 forState:0];

    [v234 addTarget:self action:"onReplayMessage:" forControlEvents:64];
    v34 = [(MessagesViewController *)self view];
    v35 = [v34 tintColor];
    [v234 setTintColor:v35];

    v36 = [(MessagesViewController *)self view];
    [v36 insertSubview:v234 aboveSubview:*(v242 + 5)];

    objc_storeStrong(&self->_replayMessageButton, v234);
    [(MessagesViewController *)self upateReplayButtonImageForContentSize];
    v37 = [[AVTUserInfoView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v37 setAlpha:0.0];
    v38 = [(MessagesViewController *)self view];
    [v38 addSubview:v37];
    v199 = v37;

    objc_storeStrong(&self->_userInfoView, v37);
    v39 = [[RecordingTimeDisplayView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(RecordingTimeDisplayView *)v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RecordingTimeDisplayView *)v39 setAlpha:0.0];
    v40 = [(MessagesViewController *)self view];
    [v40 insertSubview:v39 aboveSubview:*(v242 + 5)];
    v198 = v39;

    objc_storeStrong(&self->_recordingTimeDisplayView, v39);
    v226 = objc_alloc_init(UIView);
    [v226 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = +[UIColor clearColor];
    [v226 setBackgroundColor:v41];

    v42 = [(MessagesViewController *)self view];
    [v42 insertSubview:v226 aboveSubview:*(v242 + 5)];

    objc_storeStrong(&self->_recordingButtonSuperview, v226);
    v232 = objc_alloc_init(AVTRecordingButton);
    [v232 setLongPressDelegate:self];
    [v232 addTarget:self action:"handleRecordingButtonTouchUp:" forControlEvents:64];
    v43 = +[NSUserDefaults standardUserDefaults];
    [v232 setEnabled:{objc_msgSend(v43, "BOOLForKey:", @"JFDefaults_NeverDisableRecordButton"}];

    [(UIView *)self->_recordingButtonSuperview addSubview:v232];
    objc_storeStrong(&self->_recordingButton, v232);
    v230 = [UIButton buttonWithType:0];
    [v230 setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [UIImage imageNamed:@"tap-to-radar-96"];
    [v230 setImage:v44 forState:0];

    [v230 addTarget:self action:"onTapToRadarButtonPressed:" forControlEvents:64];
    v45 = [(MessagesViewController *)self view];
    [v45 insertSubview:v230 aboveSubview:*(v242 + 5)];

    objc_storeStrong(&self->_tapToRadar, v230);
    v46 = +[NSFileManager defaultManager];
    v190 = [v46 URLsForDirectory:13 inDomains:0xFFFFLL];

    v47 = [v190 objectAtIndexedSubscript:0];
    stickerFolder = self->_stickerFolder;
    self->_stickerFolder = v47;

    v49 = +[NSFileManager defaultManager];
    [v49 createDirectoryAtURL:self->_stickerFolder withIntermediateDirectories:1 attributes:0 error:0];

    v50 = +[NSFileManager defaultManager];
    v51 = [v50 temporaryDirectory];
    videoLoggingFolder = self->_videoLoggingFolder;
    self->_videoLoggingFolder = v51;

    v53 = [(UIView *)self->_carouselView heightAnchor];
    v54 = [v53 constraintEqualToConstant:0.0];
    carouselHeightConstraint = self->_carouselHeightConstraint;
    self->_carouselHeightConstraint = v54;

    v257[0] = self->_carouselHeightConstraint;
    v213 = [(UIView *)self->_carouselView widthAnchor];
    v221 = [(MessagesViewController *)self view];
    v217 = [v221 safeAreaLayoutGuide];
    v209 = [v217 widthAnchor];
    v206 = [v213 constraintEqualToAnchor:v209];
    v257[1] = v206;
    v200 = [(UIView *)self->_carouselView centerXAnchor];
    v203 = [(MessagesViewController *)self view];
    v56 = [v203 safeAreaLayoutGuide];
    v57 = [v56 centerXAnchor];
    v58 = [v200 constraintEqualToAnchor:v57];
    v257[2] = v58;
    v59 = [(UIView *)self->_carouselView topAnchor];
    v60 = [(MessagesViewController *)self view];
    v61 = [v60 safeAreaLayoutGuide];
    v62 = [v61 topAnchor];
    v63 = [v59 constraintEqualToAnchor:v62];
    v257[3] = v63;
    v64 = [NSArray arrayWithObjects:v257 count:4];
    [NSLayoutConstraint activateConstraints:v64];

    v222 = [*(v242 + 5) widthAnchor];
    v218 = [(UIView *)self->_carouselView widthAnchor];
    v214 = [v222 constraintEqualToAnchor:v218 constant:0.0];
    v256[0] = v214;
    v210 = [*(v242 + 5) heightAnchor];
    v65 = [(UIView *)self->_carouselView heightAnchor];
    v66 = [v210 constraintEqualToAnchor:v65 constant:0.0];
    v256[1] = v66;
    v67 = [*(v242 + 5) centerXAnchor];
    v68 = [(UIView *)self->_carouselView centerXAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    v256[2] = v69;
    v70 = [*(v242 + 5) centerYAnchor];
    v71 = [(UIView *)self->_carouselView centerYAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    v256[3] = v72;
    v73 = [NSArray arrayWithObjects:v256 count:4];
    [NSLayoutConstraint activateConstraints:v73];

    v223 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
    v219 = [v223 topAnchor];
    v215 = [*(v242 + 5) bottomAnchor];
    v211 = [v219 constraintEqualToAnchor:v215 constant:0.0];
    v255[0] = v211;
    v207 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
    v196 = [v207 widthAnchor];
    v204 = [(MessagesViewController *)self view];
    v201 = [v204 safeAreaLayoutGuide];
    v195 = [v201 widthAnchor];
    v194 = [v196 constraintEqualToAnchor:v195];
    v255[1] = v194;
    v193 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
    v191 = [v193 bottomAnchor];
    v192 = [(MessagesViewController *)self view];
    v74 = [v192 bottomAnchor];
    v75 = [v191 constraintEqualToAnchor:v74];
    v255[2] = v75;
    v76 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
    v77 = [v76 centerXAnchor];
    v78 = [(MessagesViewController *)self view];
    v79 = [v78 safeAreaLayoutGuide];
    v80 = [v79 centerXAnchor];
    v81 = [v77 constraintEqualToAnchor:v80];
    v255[3] = v81;
    v82 = [NSArray arrayWithObjects:v255 count:4];
    [NSLayoutConstraint activateConstraints:v82];

    v83 = [(AVTUserInfoView *)self->_userInfoView widthAnchor];
    v84 = [(MessagesViewController *)self view];
    v85 = [v84 safeAreaLayoutGuide];
    v86 = [v85 widthAnchor];
    v87 = [v83 constraintLessThanOrEqualToAnchor:v86 constant:0.0];
    userInfoMaximumWidthConstraint = self->_userInfoMaximumWidthConstraint;
    self->_userInfoMaximumWidthConstraint = v87;

    v216 = [(AVTUserInfoView *)self->_userInfoView centerXAnchor];
    v227 = [(MessagesViewController *)self view];
    v224 = [v227 safeAreaLayoutGuide];
    v220 = [v224 centerXAnchor];
    v212 = [v216 constraintEqualToAnchor:v220];
    v254[0] = v212;
    v208 = [(AVTUserInfoView *)self->_userInfoView centerYAnchor];
    v205 = [(UIView *)self->_recordingButtonSuperview centerYAnchor];
    v202 = [v208 constraintEqualToAnchor:v205];
    v89 = self->_userInfoMaximumWidthConstraint;
    v254[1] = v202;
    v254[2] = v89;
    v197 = [(AVTUserInfoView *)self->_userInfoView leadingAnchor];
    v90 = [(AVTCircularButton *)self->_editButton trailingAnchor];
    v91 = [v197 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v90 multiplier:1.0];
    v254[3] = v91;
    v92 = [(AVTUserInfoView *)self->_userInfoView leadingAnchor];
    v93 = [(AVTCircularButton *)self->_cancelSendingMessageButton trailingAnchor];
    v94 = [v92 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v93 multiplier:1.0];
    v254[4] = v94;
    v95 = [(AVTUserInfoView *)self->_userInfoView trailingAnchor];
    v96 = [(UIView *)self->_recordingButtonSuperview leadingAnchor];
    v97 = [v95 constraintLessThanOrEqualToSystemSpacingAfterAnchor:v96 multiplier:1.0];
    v254[5] = v97;
    v98 = [NSArray arrayWithObjects:v254 count:6];
    [NSLayoutConstraint activateConstraints:v98];

    v228 = [(UIButton *)self->_replayMessageButton leadingAnchor];
    v229 = [(MessagesViewController *)self view];
    v99 = [v229 safeAreaLayoutGuide];
    v100 = [v99 leadingAnchor];
    v101 = [v228 constraintEqualToAnchor:v100];
    v253[0] = v101;
    v102 = [(UIButton *)self->_replayMessageButton topAnchor];
    v103 = [(MessagesViewController *)self view];
    v104 = [v103 safeAreaLayoutGuide];
    v105 = [v104 topAnchor];
    v106 = [v102 constraintEqualToAnchor:v105];
    v253[1] = v106;
    v107 = [NSArray arrayWithObjects:v253 count:2];
    [NSLayoutConstraint activateConstraints:v107];

    v108 = [(RecordingTimeDisplayView *)self->_recordingTimeDisplayView leadingAnchor];
    v109 = [(MessagesViewController *)self view];
    v110 = [v109 safeAreaLayoutGuide];
    v111 = [v110 leadingAnchor];
    v112 = [v108 constraintEqualToAnchor:v111 constant:0.0];
    recordingDisplayLeadingOffsetConstraint = self->_recordingDisplayLeadingOffsetConstraint;
    self->_recordingDisplayLeadingOffsetConstraint = v112;

    v252[0] = self->_recordingDisplayLeadingOffsetConstraint;
    v114 = [(RecordingTimeDisplayView *)self->_recordingTimeDisplayView centerYAnchor];
    v115 = [(UIButton *)self->_replayMessageButton centerYAnchor];
    v116 = [v114 constraintEqualToAnchor:v115];
    v252[1] = v116;
    v117 = [NSArray arrayWithObjects:v252 count:2];
    [NSLayoutConstraint activateConstraints:v117];

    v118 = [(UIView *)self->_recordingButtonSuperview bottomAnchor];
    v119 = [(UIView *)self->_carouselView bottomAnchor];
    v120 = [v118 constraintEqualToAnchor:v119];
    recordButtonBottomConstraint = self->_recordButtonBottomConstraint;
    self->_recordButtonBottomConstraint = v120;

    v122 = +[UIDevice currentDevice];
    if ([v122 userInterfaceIdiom] == 1)
    {
    }

    else
    {
      v123 = +[UIDevice currentDevice];
      v124 = [v123 userInterfaceIdiom] == 5;

      if (!v124)
      {
        v125 = [(UIView *)self->_recordingButtonSuperview trailingAnchor];
        v126 = [(MessagesViewController *)self view];
        v128 = [v126 safeAreaLayoutGuide];
        v129 = [v128 trailingAnchor];
        v130 = [v125 constraintEqualToAnchor:v129 constant:0.0];
        recordButtonHorizontalConstraint = self->_recordButtonHorizontalConstraint;
        self->_recordButtonHorizontalConstraint = v130;

        goto LABEL_15;
      }
    }

    v125 = [(UIView *)self->_recordingButtonSuperview trailingAnchor];
    v126 = [(UIView *)self->_carouselView trailingAnchor];
    v127 = [v125 constraintEqualToAnchor:v126 constant:0.0];
    v128 = self->_recordButtonHorizontalConstraint;
    self->_recordButtonHorizontalConstraint = v127;
LABEL_15:

    v132 = [(UIView *)self->_recordingButtonSuperview widthAnchor];
    v133 = [v132 constraintEqualToConstant:0.0];
    recordButtonWidthConstraint = self->_recordButtonWidthConstraint;
    self->_recordButtonWidthConstraint = v133;

    v135 = [(UIView *)self->_recordingButtonSuperview heightAnchor];
    v136 = [v135 constraintEqualToConstant:0.0];
    recordButtonHeightConstraint = self->_recordButtonHeightConstraint;
    self->_recordButtonHeightConstraint = v136;

    v138 = self->_recordButtonHorizontalConstraint;
    v139 = self->_recordButtonWidthConstraint;
    v251[0] = self->_recordButtonBottomConstraint;
    v251[1] = v138;
    v140 = self->_recordButtonHeightConstraint;
    v251[2] = v139;
    v251[3] = v140;
    v141 = [NSArray arrayWithObjects:v251 count:4];
    [NSLayoutConstraint activateConstraints:v141];

    v142 = [(AVTCircularButton *)self->_editButton widthAnchor];
    v143 = [v142 constraintEqualToConstant:0.0];
    editButtonWidthConstraint = self->_editButtonWidthConstraint;
    self->_editButtonWidthConstraint = v143;

    v145 = [(AVTCircularButton *)self->_editButton heightAnchor];
    v146 = [v145 constraintEqualToConstant:0.0];
    editButtonHeightConstraint = self->_editButtonHeightConstraint;
    self->_editButtonHeightConstraint = v146;

    v148 = [(AVTCircularButton *)self->_editButton leadingAnchor];
    v149 = [(MessagesViewController *)self view];
    v150 = [v149 leadingAnchor];
    v151 = [v148 constraintEqualToAnchor:v150 constant:0.0];
    editButtonLeadingOffsetConstraint = self->_editButtonLeadingOffsetConstraint;
    self->_editButtonLeadingOffsetConstraint = v151;

    v153 = self->_editButtonHeightConstraint;
    v250[0] = self->_editButtonWidthConstraint;
    v250[1] = v153;
    v250[2] = self->_editButtonLeadingOffsetConstraint;
    v154 = [(AVTCircularButton *)self->_editButton centerYAnchor];
    v155 = [(UIView *)self->_recordingButtonSuperview centerYAnchor];
    v156 = [v154 constraintEqualToAnchor:v155];
    v250[3] = v156;
    v157 = [NSArray arrayWithObjects:v250 count:4];
    [NSLayoutConstraint activateConstraints:v157];

    v158 = [(AVTCircularButton *)self->_cancelSendingMessageButton widthAnchor];
    v159 = [v158 constraintEqualToConstant:0.0];
    cancelSendingButtonWidthConstraint = self->_cancelSendingButtonWidthConstraint;
    self->_cancelSendingButtonWidthConstraint = v159;

    v161 = [(AVTCircularButton *)self->_cancelSendingMessageButton heightAnchor];
    v162 = [v161 constraintEqualToConstant:0.0];
    cancelSendingButtonHeightConstraint = self->_cancelSendingButtonHeightConstraint;
    self->_cancelSendingButtonHeightConstraint = v162;

    v164 = self->_cancelSendingButtonHeightConstraint;
    v249[0] = self->_cancelSendingButtonWidthConstraint;
    v249[1] = v164;
    v165 = [(AVTCircularButton *)self->_cancelSendingMessageButton leadingAnchor];
    v166 = [(AVTCircularButton *)self->_editButton leadingAnchor];
    v167 = [v165 constraintEqualToAnchor:v166];
    v249[2] = v167;
    v168 = [(AVTCircularButton *)self->_cancelSendingMessageButton topAnchor];
    v169 = [v231 topAnchor];
    v170 = [v168 constraintEqualToAnchor:v169];
    v249[3] = v170;
    v171 = [NSArray arrayWithObjects:v249 count:4];
    [NSLayoutConstraint activateConstraints:v171];

    v172 = [(UIButton *)self->_tapToRadar leadingAnchor];
    v173 = [(MessagesViewController *)self view];
    v174 = [v173 leadingAnchor];
    v175 = [v172 constraintEqualToAnchor:v174 constant:0.0];
    tapToRadarLeadingOffsetConstraint = self->_tapToRadarLeadingOffsetConstraint;
    self->_tapToRadarLeadingOffsetConstraint = v175;

    v248[0] = self->_tapToRadarLeadingOffsetConstraint;
    v177 = [(UIButton *)self->_tapToRadar topAnchor];
    v178 = [(RecordingTimeDisplayView *)self->_recordingTimeDisplayView bottomAnchor];
    v179 = [v177 constraintEqualToAnchor:v178 constant:20.0];
    v248[1] = v179;
    v180 = [(UIButton *)self->_tapToRadar widthAnchor];
    v181 = [v180 constraintEqualToConstant:32.0];
    v248[2] = v181;
    v182 = [(UIButton *)self->_tapToRadar heightAnchor];
    v183 = [v182 constraintEqualToConstant:32.0];
    v248[3] = v183;
    v184 = [NSArray arrayWithObjects:v248 count:4];
    [NSLayoutConstraint activateConstraints:v184];

    objc_initWeak(&location, self);
    v235[0] = _NSConcreteStackBlock;
    v235[1] = 3221225472;
    v235[2] = sub_100007B10;
    v235[3] = &unk_1000347D8;
    objc_copyWeak(&v236, &location);
    v185 = objc_retainBlock(v235);
    pendingLayoutUpdate = self->_pendingLayoutUpdate;
    self->_pendingLayoutUpdate = v185;

    [(MessagesViewController *)self updateConstraintConstants];
    v187 = [(MessagesViewController *)self view];
    [v187 setNeedsLayout];

    [(MessagesViewController *)self updateUIState:0 animated:0];
    v188 = +[NSNotificationCenter defaultCenter];
    [v188 addObserver:self selector:"contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    kdebug_trace();
    objc_destroyWeak(&v236);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] viewDidLoad already called, returning early", buf, 2u);
  }
}

- (double)edgeMargin
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];
  if (v5 != 1)
  {
    v2 = +[UIDevice currentDevice];
    if ([v2 userInterfaceIdiom] != 5)
    {
      v10 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v6 = [(MessagesViewController *)self view];
  [v6 bounds];
  if (v7 <= 400.0)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(MessagesViewController *)self view];
    v9 = [v8 traitCollection];
    v10 = [v9 horizontalSizeClass] == 2 || -[MessagesViewController presentationStyle](self, "presentationStyle") == 0;
  }

  if (v5 != 1)
  {
    goto LABEL_11;
  }

LABEL_12:

  result = 16.0;
  if (v10)
  {
    return 20.0;
  }

  return result;
}

- (UIEdgeInsets)accessoryButtonContentInsets
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];
  if (v5 != 1)
  {
    v2 = +[UIDevice currentDevice];
    if ([v2 userInterfaceIdiom] != 5)
    {
      v10 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v6 = [(MessagesViewController *)self view];
  [v6 bounds];
  if (v7 <= 400.0)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(MessagesViewController *)self view];
    v9 = [v8 traitCollection];
    v10 = [v9 horizontalSizeClass] == 2 || -[MessagesViewController presentationStyle](self, "presentationStyle") == 0;
  }

  if (v5 != 1)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (v10)
  {
    v11 = 15.0;
  }

  else
  {
    v11 = 12.0;
  }

  [(MessagesViewController *)self edgeMargin];
  v13 = v12;
  v14 = v11;
  v15 = v11;
  v16 = v13;
  result.right = v16;
  result.bottom = v15;
  result.left = v13;
  result.top = v14;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = MessagesViewController;
  [(MessagesViewController *)&v8 traitCollectionDidChange:a3];
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
    isTransitioningBetweenLayouts = self->_isTransitioningBetweenLayouts;

    if (isTransitioningBetweenLayouts)
    {
      return;
    }

LABEL_6:
    [(MessagesViewController *)self updateConstraintConstants];
    [(MessagesViewController *)self updateButtonsImages];
    return;
  }

  v6 = +[UIDevice currentDevice];
  if ([v6 userInterfaceIdiom] == 5)
  {
    v7 = self->_isTransitioningBetweenLayouts;

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }
}

- (void)updateButtonsImages
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];
  if (v5 != 1)
  {
    v2 = +[UIDevice currentDevice];
    if ([v2 userInterfaceIdiom] != 5)
    {
      goto LABEL_7;
    }
  }

  v6 = [(MessagesViewController *)self view];
  [v6 bounds];
  if (v7 <= 400.0)
  {

    if (v5 == 1)
    {
LABEL_8:

      goto LABEL_14;
    }

LABEL_7:

    goto LABEL_8;
  }

  v8 = [(MessagesViewController *)self view];
  v9 = [v8 traitCollection];
  v10 = [v9 horizontalSizeClass] == 2 || -[MessagesViewController presentationStyle](self, "presentationStyle") == 0;

  if (v5 != 1)
  {
  }

  if (v10)
  {
    v11 = 31.0;
    v12 = 36.0;
    goto LABEL_15;
  }

LABEL_14:
  v11 = 18.0;
  v12 = 21.0;
LABEL_15:
  v14 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:v12];
  v13 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:v11];
  [(AVTCircularButton *)self->_editButton setSymbolImageWithName:kAVTCircularButtonEllipsisImageName configuration:v14];
  [(AVTCircularButton *)self->_cancelSendingMessageButton setSymbolImageWithName:kAVTCircularButtonTrashImageName configuration:v13];
}

- (void)updateConstraintConstants
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];
  if (v5 != 1)
  {
    v2 = +[UIDevice currentDevice];
    if ([v2 userInterfaceIdiom] != 5)
    {
      v10 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v6 = [(MessagesViewController *)self view];
  [v6 bounds];
  if (v7 <= 400.0)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(MessagesViewController *)self view];
    v9 = [v8 traitCollection];
    v10 = [v9 horizontalSizeClass] == 2 || -[MessagesViewController presentationStyle](self, "presentationStyle") == 0;
  }

  if (v5 != 1)
  {
    goto LABEL_11;
  }

LABEL_12:

  [(MessagesViewController *)self edgeMargin];
  v12 = v11;
  [(MessagesViewController *)self carouselHeight];
  v14 = v13;
  [(MessagesViewController *)self accessoryButtonContentInsets];
  v16 = v15;
  v18 = -v17;
  v19 = -v15;
  v21 = -v20;
  v23 = -v22;
  [(AVTCircularButton *)self->_cancelSendingMessageButton _setTouchInsets:-v17, -v15, -v20, -v22];
  [(AVTCircularButton *)self->_editButton _setTouchInsets:v18, v19, v21, v23];
  if (v10)
  {
    v24 = 56.0;
  }

  else
  {
    v24 = 32.0;
  }

  if (v10)
  {
    v25 = 72.0;
  }

  else
  {
    v25 = 52.0;
  }

  if (v10)
  {
    v26 = -20.0;
  }

  else
  {
    v26 = -18.0;
  }

  [(NSLayoutConstraint *)self->_userInfoMaximumWidthConstraint setConstant:-(v12 + v12 + v24 * 2.0)];
  [(NSLayoutConstraint *)self->_carouselHeightConstraint setConstant:v14];
  [(AVTRecordingButton *)self->_recordingButton setFrame:0.0, 0.0, v25, v25];
  [(AVTRecordingButton *)self->_recordingButton setForceUsePhoneStyle:!v10];
  if ([(MessagesViewController *)self isExpanded])
  {
    v27 = v26;
  }

  else
  {
    v27 = 0.0;
  }

  [(NSLayoutConstraint *)self->_recordButtonBottomConstraint setConstant:v27];
  [(NSLayoutConstraint *)self->_recordButtonHorizontalConstraint setConstant:-v12];
  [(NSLayoutConstraint *)self->_recordButtonWidthConstraint setConstant:v25];
  [(NSLayoutConstraint *)self->_recordButtonHeightConstraint setConstant:v25];
  [(NSLayoutConstraint *)self->_recordingDisplayLeadingOffsetConstraint setConstant:v16];
  [(NSLayoutConstraint *)self->_editButtonWidthConstraint setConstant:v24];
  [(NSLayoutConstraint *)self->_editButtonHeightConstraint setConstant:v24];
  [(NSLayoutConstraint *)self->_editButtonLeadingOffsetConstraint setConstant:v16];
  [(NSLayoutConstraint *)self->_cancelSendingButtonWidthConstraint setConstant:v24];
  [(NSLayoutConstraint *)self->_cancelSendingButtonHeightConstraint setConstant:v24];
  tapToRadarLeadingOffsetConstraint = self->_tapToRadarLeadingOffsetConstraint;

  [(NSLayoutConstraint *)tapToRadarLeadingOffsetConstraint setConstant:v12];
}

- (void)upateReplayButtonImageForContentSize
{
  [(MessagesViewController *)self accessoryButtonContentInsets];
  [(UIButton *)self->_replayMessageButton setContentEdgeInsets:?];
  v3 = [UIApp preferredContentSizeCategory];
  v4 = [UIFont appropriateContentSizeCategoryForCategory:v3 maxCategory:UIContentSizeCategoryAccessibilityMedium];
  v5 = CTFontDescriptorCreateWithTextStyle();
  v20 = UIFontDescriptorTraitsAttribute;
  v18 = UIFontSymbolicTrait;
  v19 = &off_1000360B0;
  v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v8 = [v5 fontDescriptorByAddingAttributes:v7];

  v9 = [UIFont fontWithDescriptor:v8 size:0.0];
  v10 = [(UIButton *)self->_replayMessageButton titleLabel];
  [v10 setFont:v9];

  v11 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

  if (IsAccessibilityCategory)
  {
    [(UIButton *)self->_replayMessageButton setImage:0 forState:0];
    [(UIButton *)self->_replayMessageButton setTitleEdgeInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  }

  else
  {
    v13 = [UIImageSymbolConfiguration configurationWithFont:v9 scale:2];
    v14 = [UIImage systemImageNamed:@"arrow.clockwise" withConfiguration:v13];

    [(UIButton *)self->_replayMessageButton setImage:v14 forState:0];
    v15 = [(UIButton *)self->_replayMessageButton effectiveUserInterfaceLayoutDirection];
    if (v15 == 1)
    {
      v16 = -4.0;
    }

    else
    {
      v16 = 4.0;
    }

    if (v15 == 1)
    {
      v17 = 4.0;
    }

    else
    {
      v17 = -4.0;
    }

    [(UIButton *)self->_replayMessageButton setTitleEdgeInsets:0.0, v16, 0.0, v17];
  }

  [(UIButton *)self->_replayMessageButton sizeToFit];
}

- (void)updateTapToRadarVisibilityForceHide:(BOOL)a3
{
  if (a3 || !-[MessagesViewController isInternalBuild](self, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 BOOLForKey:@"JFDefaults_HideTapToRadar"], v4, v5))
  {
    tapToRadar = self->_tapToRadar;

    [(UIButton *)tapToRadar setAlpha:0.0];
  }

  else
  {
    [(UIButton *)self->_tapToRadar setAlpha:1.0];
    if (!self->_configuredTapToRadar)
    {
      self->_configuredTapToRadar = 1;
      v7 = +[NSUserDefaults standardUserDefaults];
      v8 = [v7 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"];

      if (v8)
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100008860;
        v9[3] = &unk_100034788;
        v9[4] = self;
        [UIView performWithoutAnimation:v9];
      }
    }
  }
}

- (void)updateEditButtonVisibilityForceHide:(BOOL)a3
{
  v5 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
  v6 = 0.0;
  v7 = v5;
  if (!a3 && v5)
  {
    v6 = [v5 isEditable];
  }

  [(AVTCircularButton *)self->_editButton setAlpha:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MessagesViewController;
  [(MessagesViewController *)&v7 viewWillAppear:a3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] viewWillAppear", v6, 2u);
  }

  self->_recordingStartTime = 0.0;
  self->_recordingElapsedTime = 0.0;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"JFDefaults_UseFacetrackingInternalPipeline"];

  [AVTRecordView setUsesInternalTrackingPipeline:v5];
  [(MessagesViewController *)self updateLayoutForPresentationStyle];
}

- (void)captureSnapshotMetricsIfNeeded
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ([(MessagesViewController *)self presentationStyle]|| [(MessagesViewController *)self isSpeculatingLayout]|| [(MessagesViewController *)self isLandscapeMode]&& !v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109632;
      *v20 = [(MessagesViewController *)self isLandscapeMode];
      *&v20[4] = 1024;
      *&v20[6] = [(MessagesViewController *)self presentationStyle]!= 0;
      LOWORD(v21) = 1024;
      *(&v21 + 2) = [(MessagesViewController *)self isSpeculatingLayout];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] not capturing snapshot metrics: landscape %i; compact %i; speculating %i", &v19, 0x14u);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MessagesViewController *)self view];
      [v5 bounds];
      v6 = NSStringFromCGRect(v22);
      v7 = [(AVTRecordingCarouselController *)self->_avatarListController view];
      [v7 frame];
      v8 = NSStringFromCGRect(v23);
      v19 = 138412546;
      *v20 = v6;
      *&v20[8] = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] capturing snapshot metrics, snapshotBounds %@; controllerFrame %@", &v19, 0x16u);
    }

    v9 = [(MessagesViewController *)self view];
    [v9 bounds];
    self->_snapshotBounds.origin.x = v10;
    self->_snapshotBounds.origin.y = v11;
    self->_snapshotBounds.size.width = v12;
    self->_snapshotBounds.size.height = v13;

    v14 = [(AVTRecordingCarouselController *)self->_avatarListController view];
    [v14 frame];
    self->_avatarControllerFrame.origin.x = v15;
    self->_avatarControllerFrame.origin.y = v16;
    self->_avatarControllerFrame.size.width = v17;
    self->_avatarControllerFrame.size.height = v18;

    self->_capturedSnapshotMetrics = 1;
  }
}

- (BOOL)requestsExpandedOnLaunchScreenDismissal
{
  v3 = [(MessagesViewController *)self presentsLaunchScreenInFullScreenModal];
  if (v3)
  {
    LOBYTE(v3) = [(MessagesViewController *)self actualPresentationStyle]== 0;
  }

  return v3;
}

- (BOOL)presentsLaunchScreenInFullScreenModal
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v3 = [v4 userInterfaceIdiom] == 5;
  }

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v33.receiver = self;
  v33.super_class = MessagesViewController;
  [(MessagesViewController *)&v33 viewDidAppear:a3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] viewDidAppear", buf, 2u);
  }

  self->_hasAppeared = 1;
  self->_isDisappearing = 0;
  if (self->_displaysLaunchScreen)
  {
    v4 = [(MessagesViewController *)self presentsLaunchScreenInFullScreenModal];
    if (v4)
    {
      v5 = [[LaunchViewController alloc] initWithNibName:0 bundle:0];
      [(LaunchViewController *)v5 setAdditionalSafeAreaInsets:44.0, 10.0, 0.0, 10.0];
      [(LaunchViewController *)v5 setDelegate:self];
      [BaseMessagesViewController setPendingChildViewController:v5];

      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    if (v6 == [(MessagesViewController *)self actualPresentationStyle])
    {
      objc_initWeak(buf, self);
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_100009234;
      v22 = &unk_1000347D8;
      objc_copyWeak(&v23, buf);
      v7 = objc_retainBlock(&v19);
      pendingLayoutUpdate = self->_pendingLayoutUpdate;
      self->_pendingLayoutUpdate = v7;

      objc_destroyWeak(&v23);
      p_location = buf;
    }

    else
    {
      [(MessagesViewController *)self setWaitingOnPresentationStyleRequestFulfillment:v4 ^ 1];
      [(MessagesViewController *)self requestPresentationStyle:v6];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] starting request expanded timer", buf, 2u);
      }

      objc_initWeak(&location, self);
      *buf = 0;
      v27 = buf;
      v28 = 0x3032000000;
      v29 = sub_1000090CC;
      v30 = sub_1000090F8;
      v31 = 0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100009100;
      v24[3] = &unk_100034918;
      objc_copyWeak(v25, &location);
      v25[1] = v6;
      v24[4] = buf;
      v10 = objc_retainBlock(v24);
      v11 = *(v27 + 5);
      *(v27 + 5) = v10;

      v12 = dispatch_time(0, 500000000);
      dispatch_after(v12, &_dispatch_main_q, *(v27 + 5));
      objc_destroyWeak(v25);
      _Block_object_dispose(buf, 8);

      p_location = &location;
    }

    objc_destroyWeak(p_location);
  }

  v13 = [NSDate date:v19];
  sessionStartDate = self->_sessionStartDate;
  self->_sessionStartDate = v13;

  lastExportError = self->_lastExportError;
  self->_lastExportError = 0;

  lastSendError = self->_lastSendError;
  self->_lastSendError = 0;

  lastInsertError = self->_lastInsertError;
  self->_lastInsertError = 0;

  lastMovieDoesNotExistError = self->_lastMovieDoesNotExistError;
  self->_lastMovieDoesNotExistError = @"NoError";
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = MessagesViewController;
  [(MessagesViewController *)&v13 viewWillDisappear:a3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ignoreViewWillDisappearCount = self->_ignoreViewWillDisappearCount;
    *buf = 134217984;
    v15 = ignoreViewWillDisappearCount;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] viewWillDisappear, ignoreCount %li", buf, 0xCu);
  }

  v5 = self->_ignoreViewWillDisappearCount;
  v6 = v5 < 1;
  v7 = v5 - 1;
  if (v6)
  {
    self->_isDisappearing = 1;
    [(MessagesViewController *)self cleanUpOnExit];
    [(NSTimer *)self->_trackingLostTimer invalidate];
    [(NSTimer *)self->_lightingCheckTimer invalidate];
    lightingCheckTimer = self->_lightingCheckTimer;
    self->_lightingCheckTimer = 0;

    [(AVTUsageTrackingSession *)self->_usageTrackingSession end];
    v9 = +[AVAudioSession sharedInstance];
    v12 = 0;
    [v9 setActive:0 withOptions:1 error:&v12];
    v10 = v12;
    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v10 localizedDescription];
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@", buf, 0xCu);
      }
    }
  }

  else
  {
    self->_ignoreViewWillDisappearCount = v7;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = MessagesViewController;
  v8 = a4;
  [(MessagesViewController *)&v15 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [(MessagesViewController *)self presentationStyle];
    v11 = [(MessagesViewController *)self view];
    [v11 bounds];
    v12 = NSStringFromCGRect(v22);
    *buf = 138412802;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@; style %lu; view.bounds %@", buf, 0x20u);
  }

  v13[4] = self;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000964C;
  v14[3] = &unk_100034940;
  v14[4] = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000096C4;
  v13[3] = &unk_100034940;
  [v8 animateAlongsideTransition:v14 completion:v13];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MessagesViewController;
  [(MessagesViewController *)&v13 viewWillLayoutSubviews];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(a2);
    v5 = [(MessagesViewController *)self presentationStyle];
    v6 = [(MessagesViewController *)self view];
    [v6 bounds];
    v7 = NSStringFromCGRect(v22);
    v8 = [(MessagesViewController *)self view];
    [v8 safeAreaInsets];
    v9 = NSStringFromUIEdgeInsets(v23);
    *buf = 138413058;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@; style %lu; view.bounds %@; insets %@", buf, 0x2Au);
  }

  pendingLayoutUpdate = self->_pendingLayoutUpdate;
  if (pendingLayoutUpdate)
  {
    v11 = objc_retainBlock(pendingLayoutUpdate);
    v12 = self->_pendingLayoutUpdate;
    self->_pendingLayoutUpdate = 0;

    v11[2](v11);
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = MessagesViewController;
  [(MessagesViewController *)&v9 viewDidLayoutSubviews];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(a2);
    v5 = [(MessagesViewController *)self presentationStyle];
    v6 = [(MessagesViewController *)self view];
    [v6 bounds];
    v7 = NSStringFromCGRect(v18);
    [(UIView *)self->_carouselView bounds];
    v8 = NSStringFromCGRect(v19);
    *buf = 138413058;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@; style %lu; view.bounds %@; carousel.bounds %@", buf, 0x2Au);
  }

  [(MessagesViewController *)self captureSnapshotMetricsIfNeeded];
}

- (void)requestPresentationStyle:(unint64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = [(MessagesViewController *)self presentationStyle];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@; requestPresentationStyle %lu", buf, 0x16u);
  }

  v7 = [(MessagesViewController *)self actualPresentationStyle]!= a3 && a3 != 3;
  if (a3 == 3)
  {
    self->_ignoreViewWillDisappearCount += 2;
  }

  v8.receiver = self;
  v8.super_class = MessagesViewController;
  [(MessagesViewController *)&v8 requestPresentationStyle:a3];
  if (v7)
  {
    self->_isTransitioningBetweenLayouts = 1;
  }
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v21 = v6;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@; style %lu", buf, 0x16u);
  }

  self->_isTransitioningBetweenLayouts = 1;
  [(MessagesViewController *)self setWaitingOnPresentationStyleRequestFulfillment:0];
  if (a3 == 1 || [(MessagesViewController *)self isLandcapeTrapOverlayShown])
  {
LABEL_12:
    v12 = +[UIDevice currentDevice];
    if ([v12 userInterfaceIdiom] == 1)
    {
    }

    else
    {
      v13 = +[UIDevice currentDevice];
      v14 = [v13 userInterfaceIdiom];

      if (v14 != 5)
      {
        if (a3 != 1)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    if (a3 != 1)
    {
      v15 = [(MessagesViewController *)self view];
      v16 = [v15 snapshotViewAfterScreenUpdates:0];
      presentationStyleTransitionSnapshotView = self->_presentationStyleTransitionSnapshotView;
      self->_presentationStyleTransitionSnapshotView = v16;

      v18 = [(MessagesViewController *)self view];
      [v18 addSubview:self->_presentationStyleTransitionSnapshotView];

      return;
    }

    [(MessagesViewController *)self setSingleAvatarMode:1 animated:1];
LABEL_19:
    [(AVTUsageTrackingSession *)self->_usageTrackingSession didShowExpandedMode];
    return;
  }

  if (self->_UIState != 1)
  {
    [(MessagesViewController *)self dismissPaddleViewIfNecessary];
    goto LABEL_12;
  }

  v7 = [(MessagesViewController *)self parentMessagesViewController];
  v8 = [v7 launchViewController];
  [v8 setFreezeLayout:1];

  if (![(MessagesViewController *)self shouldShowLaunchScreen])
  {
    v10 = [(MessagesViewController *)self parentMessagesViewController];
    v11 = [v10 launchViewController];
    [(MessagesViewController *)self dismissLaunchScreenIfNecessaryForPresentationStyle:a3 controller:v11];

    goto LABEL_12;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] Splash screen canceled via swipe. Exiting.", buf, 2u);
  }

  v9 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009E1C;
  block[3] = &unk_100034788;
  block[4] = self;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)performWhileOverridingPresentationStyle:(unint64_t)a3 block:(id)a4
{
  usePresentationStyleOverride = self->_usePresentationStyleOverride;
  presentationStyleOverride = self->_presentationStyleOverride;
  self->_usePresentationStyleOverride = 1;
  self->_presentationStyleOverride = a3;
  (*(a4 + 2))(a4, a2);
  self->_usePresentationStyleOverride = usePresentationStyleOverride;
  self->_presentationStyleOverride = presentationStyleOverride;
}

- (unint64_t)actualPresentationStyle
{
  v3.receiver = self;
  v3.super_class = MessagesViewController;
  return [(MessagesViewController *)&v3 presentationStyle];
}

- (unint64_t)presentationStyle
{
  if (self->_usePresentationStyleOverride)
  {
    return self->_presentationStyleOverride;
  }

  else
  {
    return [(MessagesViewController *)self actualPresentationStyle];
  }
}

- (BOOL)shouldPresentPaddleView
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    goto LABEL_4;
  }

  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 5)
  {

LABEL_4:
    goto LABEL_5;
  }

  v6 = [(MessagesViewController *)self isLandscapeMode];

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (AVTUIHasDisplayedPaddleView())
  {
LABEL_9:
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = [(MessagesViewController *)self isExpanded];
  if (v5)
  {
    LOBYTE(v5) = self->_paddleView == 0;
  }

  return v5;
}

- (void)presentPaddleView
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(a2);
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@", &v10, 0xCu);
  }

  v5 = [(MessagesViewController *)self view];
  [v5 layoutIfNeeded];

  v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:1];
  v7 = [[AVTPaddleView alloc] initWithLayoutDirection:0 symbolConfiguration:v6];
  paddleView = self->_paddleView;
  self->_paddleView = v7;

  [(AVTPaddleView *)self->_paddleView setDelegate:self];
  v9 = [(MessagesViewController *)self view];
  [v9 addSubview:self->_paddleView];

  [(MessagesViewController *)self updatePaddleViewLayoutIfNecessary];
  AVTUISetHasDisplayedPaddleView();
  [(AVTPaddleView *)self->_paddleView showAnimated:1];
}

- (void)updatePaddleViewLayoutIfNecessary
{
  if (self->_paddleView)
  {
    [(PuppetCollectionViewController *)self->_puppetCollectionViewController reloadData];
    v3 = [(PuppetCollectionViewController *)self->_puppetCollectionViewController puppetCollectionView];
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
    [v3 scrollToItemAtIndexPath:v4 atScrollPosition:1 animated:0];

    v5 = [(PuppetCollectionViewController *)self->_puppetCollectionViewController puppetCollectionView];
    [v5 layoutIfNeeded];

    paddleView = self->_paddleView;
    v7 = [(PuppetCollectionViewController *)self->_puppetCollectionViewController plusButtonView];
    [(AVTPaddleView *)paddleView updateLayoutFromPlusButtonView:v7 videoView:0];
  }
}

- (void)dismissPaddleViewIfNecessary
{
  paddleView = self->_paddleView;
  if (paddleView)
  {
    [(AVTPaddleView *)paddleView dismissAnimated:1];
    v4 = self->_paddleView;
    self->_paddleView = 0;
  }
}

- (void)paddleViewTapped:(id)a3
{
  [(MessagesViewController *)self dismissPaddleViewIfNecessary];
  avatarListController = self->_avatarListController;

  [(AVTRecordingCarouselController *)avatarListController presentEditorForCreatingAvatar:self];
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = [(MessagesViewController *)self view];
    [v7 bounds];
    v8 = NSStringFromCGRect(v21);
    v15 = 138412802;
    v16 = v6;
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@; style %lu; view.bounds %@", &v15, 0x20u);
  }

  self->_isTransitioningBetweenLayouts = 0;
  if (self->_displaysLaunchScreen)
  {
    UIState = self->_UIState;
    if (UIState == 1)
    {
      v10 = [(MessagesViewController *)self isLandcapeTrapOverlayShown];
      if (a3 == 1 && (v10 & 1) == 0)
      {
        v11 = [(MessagesViewController *)self parentMessagesViewController];
        v12 = [v11 launchViewController];
        [v12 setFreezeLayout:0];
      }
    }

    else if (!UIState)
    {
      [(MessagesViewController *)self updateUIState:1 animated:0];
    }
  }

  else
  {
    [(MessagesViewController *)self updateLayoutForPresentationStyle];
    if ([(MessagesViewController *)self shouldPresentPaddleView])
    {
      [(MessagesViewController *)self presentPaddleView];
    }
  }

  presentationStyleTransitionSnapshotView = self->_presentationStyleTransitionSnapshotView;
  if (presentationStyleTransitionSnapshotView)
  {
    [(UIView *)presentationStyleTransitionSnapshotView removeFromSuperview];
    v14 = self->_presentationStyleTransitionSnapshotView;
    self->_presentationStyleTransitionSnapshotView = 0;
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = MessagesViewController;
  [(MessagesViewController *)&v7 viewSafeAreaInsetsDidChange];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(a2);
    v5 = [(MessagesViewController *)self view];
    [v5 safeAreaInsets];
    v6 = NSStringFromUIEdgeInsets(v12);
    *buf = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@, insets %@", buf, 0x16u);
  }

  if (!self->_pendingLayoutUpdate && !self->_isTransitioningBetweenLayouts)
  {
    [(MessagesViewController *)self updateLayoutForPresentationStyle];
  }
}

- (void)updateLayoutForPresentationStyle
{
  v3 = [(MessagesViewController *)self presentationStyle];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"EXPANDED";
    if (!v3)
    {
      v4 = @"COMPACT";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] updateLayoutForPresentationStyle using style: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
  v6 = WeakRetained;
  if (v3 == 1)
  {
    [WeakRetained setAlpha:1.0];

    [(MessagesViewController *)self addPuppetCollectionViewControllerInNecessary];
  }

  else
  {
    [WeakRetained setAlpha:0.0];

    [(MessagesViewController *)self removePuppetCollectionViewControllerIfNecessary];
  }

  [(MessagesViewController *)self updatePuppetCollectionViewIfNecessary];
  [(MessagesViewController *)self updateConstraintConstants];
  [(MessagesViewController *)self updateButtonsImages];
  [(MessagesViewController *)self setSingleAvatarMode:v3 == 1 animated:1];
}

- (void)setSingleAvatarMode:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138412802;
    v10 = v8;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] %@; singleMode %i; animated %i", &v9, 0x18u);
  }

  if ([(AVTRecordingCarouselController *)self->_avatarListController singleAvatarMode]!= v5)
  {
    self->_isUpdatingAvatarMode = 1;
    [(AVTRecordingCarouselController *)self->_avatarListController setSingleAvatarMode:v5 fillContainer:[(MessagesViewController *)self isExpanded] animated:v4];
  }
}

- (void)setAllowsCreate:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(AVTRecordingCarouselController *)self->_avatarListController allowsCreate]!= a3)
  {
    [(AVTRecordingCarouselController *)self->_avatarListController setAllowsCreate:v5 animated:v4];
  }

  puppetCollectionViewController = self->_puppetCollectionViewController;

  [(PuppetCollectionViewController *)puppetCollectionViewController setPlusButtonCellEnabled:v5];
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] dealloc", buf, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  [WeakRetained setRecordDelegate:0];

  v5.receiver = self;
  v5.super_class = MessagesViewController;
  [(MessagesViewController *)&v5 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = MessagesViewController;
  [(MessagesViewController *)&v2 didReceiveMemoryWarning];
}

- (void)cleanUpOnExit
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] cleanUpOnExit", v5, 2u);
  }

  UIState = self->_UIState;
  switch(UIState)
  {
    case 6uLL:
      WeakRetained = objc_loadWeakRetained(&self->_puppetView);
      [WeakRetained cancelMovieExport];
      break;
    case 5uLL:
      [(MessagesViewController *)self stopPreviewing];
      return;
    case 4uLL:
      [(MessagesViewController *)self stopRecordingAndPlayPreview:0];
      WeakRetained = objc_loadWeakRetained(&self->_puppetView);
      [WeakRetained cancelRecording];
      break;
    default:
      return;
  }
}

- (void)preparePuppetViewForReuse
{
  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  [WeakRetained removeAllGestureRecognizers];

  [(MessagesViewController *)self endObservingFaceTrackingIfNecessary];
}

- (void)updateForNewPuppetView
{
  WeakRetained = objc_loadWeakRetained(&self->_puppetView);

  if (!WeakRetained)
  {
    return;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"JFDefaults_DisableRecordingTimer"];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_puppetView);
    LODWORD(v7) = 1142292480;
    [v6 setMaxRecordingDuration:v7];
  }

  if (!self->_longPressGestureRecognizer)
  {
    v8 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleSceneLongPress:"];
    longPressGestureRecognizer = self->_longPressGestureRecognizer;
    self->_longPressGestureRecognizer = v8;

    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setMinimumPressDuration:0.300000012];
  }

  v10 = objc_loadWeakRetained(&self->_puppetView);
  [v10 addGestureRecognizer:self->_longPressGestureRecognizer];

  if (!self->_doubleTapGestureRecognizer)
  {
    v11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"doubleTap:"];
    doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
    self->_doubleTapGestureRecognizer = v11;

    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
  }

  v13 = objc_loadWeakRetained(&self->_puppetView);
  [v13 addGestureRecognizer:self->_doubleTapGestureRecognizer];

  if (!self->_tapGestureRecognizer)
  {
    v14 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleSceneShortPress:"];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v14;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setNumberOfTapsRequired:1];
  }

  v16 = objc_loadWeakRetained(&self->_puppetView);
  [v16 addGestureRecognizer:self->_tapGestureRecognizer];

  v17 = +[NSUserDefaults standardUserDefaults];
  if (![v17 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"])
  {

    goto LABEL_14;
  }

  videoLoggingFolder = self->_videoLoggingFolder;

  if (!videoLoggingFolder)
  {
LABEL_14:
    v19 = objc_loadWeakRetained(&self->_puppetView);
    [v19 setFaceTrackingRecordingURL:0];
    goto LABEL_15;
  }

  v19 = [(MessagesViewController *)self faceTrackingRecordingURL];
  v20 = objc_loadWeakRetained(&self->_puppetView);
  [v20 setFaceTrackingRecordingURL:v19];

LABEL_15:
  v21 = +[NSUserDefaults standardUserDefaults];
  v22 = [v21 BOOLForKey:@"JFDefaults_PlayBakedAnimation"];

  if (v22)
  {
    v23 = objc_loadWeakRetained(&self->_puppetView);
    [v23 setPlayBakedAnimation:1];
  }

  v24 = +[NSUserDefaults standardUserDefaults];
  v25 = [v24 BOOLForKey:@"JFDefaults_DisablePuppetRendering"];

  if (v25)
  {
    v26 = objc_loadWeakRetained(&self->_puppetView);
    [v26 setDisableRendering:1];
  }

  v27 = +[NSUserDefaults standardUserDefaults];
  v28 = [v27 BOOLForKey:@"JFDefaults_UseDirectRetargetingMode"];

  v29 = objc_loadWeakRetained(&self->_puppetView);
  [v29 setDirectRetargetingMode:v28];

  if (!self->_displaysLaunchScreen)
  {
    [(MessagesViewController *)self beginObservingFaceTrackingIfNecessary];
    if (self->_UIState == 2)
    {
      v30 = objc_loadWeakRetained(&self->_puppetView);
      v31 = [v30 isPreviewing];

      if (v31)
      {
        v32 = 5;
      }

      else
      {
        v32 = 3;
      }

      [(MessagesViewController *)self updateUIState:v32 animated:0];
    }
  }

  v33 = objc_loadWeakRetained(&self->_puppetView);
  [v33 setMute:0];

  v34 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AFE0;
  block[3] = &unk_100034788;
  block[4] = self;
  dispatch_after(v34, &_dispatch_main_q, block);
  [(MessagesViewController *)self checkLightingAndObscuredSensorWhileTracking];
  if (self->_UIState == 5 && !self->_isUpdatingAvatarMode)
  {
    [(MessagesViewController *)self playPreviewOnce];
  }
}

- (void)beginObservingFaceTrackingIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  if (WeakRetained)
  {
    observingFacetracking = self->_observingFacetracking;

    if (!observingFacetracking)
    {
      [(MessagesViewController *)self startTrackingStartTimerWithCounter:4];
      self->_observingFacetracking = 1;
      self->_exportingMovie = 0;
      v5 = objc_loadWeakRetained(&self->_puppetView);
      objc_storeWeak(&self->_puppetViewForKVO, v5);

      v6 = objc_loadWeakRetained(&self->_puppetView);
      [v6 addObserver:self forKeyPath:@"faceIsTracked" options:5 context:0];

      v8 = objc_loadWeakRetained(&self->_puppetView);
      v7 = [v8 arSession];
      [v7 addObserver:self forKeyPath:@"state" options:5 context:0];
    }
  }
}

- (void)endObservingFaceTrackingIfNecessary
{
  if (self->_observingFacetracking)
  {
    WeakRetained = objc_loadWeakRetained(&self->_puppetViewForKVO);
    [WeakRetained removeObserver:self forKeyPath:@"faceIsTracked"];

    v4 = objc_loadWeakRetained(&self->_puppetViewForKVO);
    v5 = [v4 arSession];
    [v5 removeObserver:self forKeyPath:@"state"];

    objc_storeWeak(&self->_puppetViewForKVO, 0);
    self->_observingFacetracking = 0;
  }
}

- (void)startObservingBaseMessagesNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"strongPopupPresentationNotification:" name:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"overlayPresentationNotification:" name:@"BaseMessagesViewControllerOverlayPresentationNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"snapshottingEnabledChangedNotification:" name:@"BaseMessagesViewControllerSnapshottingEnabledChangedNotification" object:0];
}

- (void)stopObservingBaseMessagesNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"BaseMessagesViewControllerOverlayPresentationNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"BaseMessagesViewControllerSnapshottingEnabledChangedNotification" object:0];
}

- (void)strongPopupPresentationNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"BaseMessagesViewControllerStrongPopupPresentedKey"];
  v6 = [v5 BOOLValue];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] strongPopupPresentationNotification, presentedOver %i", v8, 8u);
  }

  [(MessagesViewController *)self interfaceObscuredByOverlayOrPresentationChanged:v6];
  paddleView = self->_paddleView;
  if (paddleView)
  {
    if (v6)
    {
      [(AVTPaddleView *)paddleView pauseVideo];
    }

    else
    {
      [(AVTPaddleView *)paddleView playVideo];
    }
  }
}

- (void)overlayPresentationNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"BaseMessagesViewControllerOverlayPresentedKey"];
  v6 = [v5 BOOLValue];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] overlayPresentationNotification, shown %i", v7, 8u);
  }

  [(MessagesViewController *)self interfaceObscuredByOverlayOrPresentationChanged:v6];
}

- (void)interfaceObscuredByOverlayOrPresentationChanged:(BOOL)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B650;
  v4[3] = &unk_100034968;
  v4[4] = self;
  v5 = a3;
  v3 = objc_retainBlock(v4);
  if (+[NSThread isMainThread])
  {
    (v3[2])(v3);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v3);
  }
}

- (void)snapshottingEnabledChangedNotification:(id)a3
{
  v4 = [(MessagesViewController *)self parentMessagesViewController];
  v5 = [v4 snapshottingEnabled];

  if (v5)
  {

    [(MessagesViewController *)self captureSnapshotMetricsIfNeeded];
  }
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v13 = a3;
  v5 = [v13 identifier];
  v6 = [v5 isEqualToString:@"MessagesViewController"];

  if (v6)
  {
    v7 = [(MessagesViewController *)self parentMessagesViewController];
    v8 = [v7 messagesViewContainer];
    [v8 setAlpha:0.0];
  }

  else
  {
    v9 = [v13 identifier];
    v10 = [v9 isEqualToString:@"LaunchViewController"];

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = [(MessagesViewController *)self parentMessagesViewController];
    v12 = [v11 launchViewContainer];
    [v12 setAlpha:0.0];

    v7 = [(MessagesViewController *)self parentMessagesViewController];
    v8 = [v7 launchViewController];
    [v8 setDelegate:self];
  }

LABEL_6:
}

- (BOOL)shouldPerformSegueWithIdentifier:(id)a3 sender:(id)a4
{
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"JFDefaults_AlwaysShowLaunchScreen"];

  if (v7)
  {
    AVTUISetHasDisplayedAnimojiSplashScreen();
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 removeObjectForKey:@"LastPuppetIdentifier"];

    AVTUISetHasDisplayedSplashScreen();
  }

  if (![v5 isEqualToString:@"LaunchViewController"])
  {
    goto LABEL_9;
  }

  v9 = [(MessagesViewController *)self shouldShowLaunchScreen];
  self->_displaysLaunchScreen = v9;
  if (v9)
  {
    v10 = +[UIDevice currentDevice];
    if ([v10 userInterfaceIdiom] == 1)
    {

      goto LABEL_8;
    }

    v11 = +[UIDevice currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 5)
    {
      goto LABEL_8;
    }

LABEL_9:
    v16 = 1;
    goto LABEL_10;
  }

LABEL_8:
  v13 = [(MessagesViewController *)self parentMessagesViewController];
  v14 = [v13 launchViewContainer];
  [v14 removeFromSuperview];

  v15 = [(MessagesViewController *)self parentMessagesViewController];
  [v15 setLaunchViewContainer:0];

  v16 = 0;
LABEL_10:

  return v16;
}

- (BOOL)shouldShowLaunchScreen
{
  v2 = AVTUIHasDisplayedAnimojiSplashScreen();
  if ((AVTUIForceCameraDisclosures_once() & 1) != 0 || AVTDeviceIsGreenTea())
  {
    v3 = AVTUIHasDisplayedCameraDisclosureSplashScreen() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1 | ((v2 & 1) == 0);
}

- (void)addPuppetCollectionViewControllerInNecessary
{
  if (!self->_puppetCollectionViewController)
  {
    v3 = [[PuppetCollectionViewController alloc] initWithNibName:0 bundle:0];
    puppetCollectionViewController = self->_puppetCollectionViewController;
    self->_puppetCollectionViewController = v3;

    [(PuppetCollectionViewController *)self->_puppetCollectionViewController setDelegate:self];
    [(PuppetCollectionViewController *)self->_puppetCollectionViewController setAvatarDataSource:self->_avatarDataSource];
    v5 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
    [(PuppetCollectionViewController *)self->_puppetCollectionViewController setSelectedRecord:v5];

    [(PuppetCollectionViewController *)self->_puppetCollectionViewController setPlusButtonCellEnabled:[(AVTRecordingCarouselController *)self->_avatarListController allowsCreate]];
    [(MessagesViewController *)self addChildViewController:self->_puppetCollectionViewController];
    v8 = [(PuppetCollectionViewController *)self->_puppetCollectionViewController view];
    WeakRetained = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
    [WeakRetained bounds];
    [v8 setFrame:?];

    [v8 setAutoresizingMask:18];
    v7 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
    [v7 addSubview:v8];

    [(PuppetCollectionViewController *)self->_puppetCollectionViewController didMoveToParentViewController:self];
    [(PuppetCollectionViewController *)self->_puppetCollectionViewController reloadData];
  }
}

- (void)removePuppetCollectionViewControllerIfNecessary
{
  puppetCollectionViewController = self->_puppetCollectionViewController;
  if (puppetCollectionViewController)
  {
    [(PuppetCollectionViewController *)puppetCollectionViewController willMoveToParentViewController:0];
    v4 = [(PuppetCollectionViewController *)self->_puppetCollectionViewController view];
    [v4 removeFromSuperview];

    [(MessagesViewController *)self removeChildViewController:self->_puppetCollectionViewController];
    v5 = self->_puppetCollectionViewController;
    self->_puppetCollectionViewController = 0;
  }
}

- (void)onTapToRadarButtonPressed:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] tap to radar tapped", buf, 2u);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"];

  if (v6)
  {
    [(MessagesViewController *)self showFileRadarWarningPopup];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BFD4;
    block[3] = &unk_100034788;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)showFileRadarWarningPopup
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] showFileRadarWarningPopup", buf, 2u);
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"];

  if (v4)
  {
    v5 = [UIAlertController alertControllerWithTitle:@"File Radar" message:@"This will allow you to submit data associated with pictures of your face and renderings made by the camera and Pearl.  This data may include metadata generated during the capture or processing of such images or renderings. \n\nYou will have an opportunity to review the data that you are submitting before the Radar is filed.   Only submit data you are comfortable having attached to Radars and used by Apple.\n\n I agree that Apple and its strategic partners may use preferredStyle:adapt, modify, reproduce, and distribute internally in perpetuity, the images and videos that I am providing with this bug report (“Media”), for the purpose of improving Apple products and services.  Please do not submit any Media that contain third parties or for which you do not have sufficient rights.\n\nBy submitting a Radar, I agree to these terms.", 1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000C364;
    v12[3] = &unk_100034990;
    v12[4] = self;
    v6 = [UIAlertAction actionWithTitle:@"File Radar" style:0 handler:v12];
    [v5 addAction:v6];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000C3A4;
    v11[3] = &unk_100034990;
    v11[4] = self;
    v7 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:v11];
    [v5 addAction:v7];

    [v5 _setShouldAlignToKeyboard:0];
    [(MessagesViewController *)self requestPresentationStyle:1];
    v8 = [(MessagesViewController *)self view];
    v9 = [v8 window];
    v10 = [v9 rootViewController];
    [v10 presentViewController:v5 animated:0 completion:0];
  }

  else
  {
    [(MessagesViewController *)self launchTapToRadar];
  }
}

- (void)_launchTapToRadarWithAttachments:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"];

  if (v6)
  {
    v35 = [@"ComponentName=Purple AppleCVA" URLEncodedString_ch];
    v34 = [@"ComponentVersion=FaceKit Secure" URLEncodedString_ch];
    v32 = @"ComponentID=933150";
  }

  else
  {
    v35 = [@"ComponentName=Animoji App" URLEncodedString_ch];
    v32 = @"ComponentID=830570";
    v34 = @"ComponentVersion=All";
  }

  if ([v4 count])
  {
    v7 = 0;
    v8 = @"Attachments=";
    do
    {
      if (v7)
      {
        v9 = [(__CFString *)v8 stringByAppendingString:@", "];

        v8 = v9;
      }

      v10 = [v4 objectAtIndexedSubscript:v7];

      if (v10)
      {
        v11 = [v4 objectAtIndexedSubscript:v7];
        v12 = [(__CFString *)v8 stringByAppendingString:v11];

        v8 = v12;
      }

      ++v7;
    }

    while ([v4 count] > v7);
  }

  else
  {
    v8 = @"Attachments=";
  }

  v33 = +[NSDate date];
  [v33 timeIntervalSinceDate:self->_sessionStartDate];
  v14 = v13;
  if ([(MessagesViewController *)self presentationStyle])
  {
    v15 = @"Expanded";
  }

  else
  {
    v15 = @"Compact";
  }

  lastExportError = self->_lastExportError;
  if (lastExportError)
  {
    v17 = [(NSError *)lastExportError localizedDescription];
  }

  else
  {
    v17 = @"NoError";
  }

  lastSendError = self->_lastSendError;
  if (lastSendError)
  {
    v19 = [(NSError *)lastSendError localizedDescription];
  }

  else
  {
    v19 = @"NoError";
  }

  lastInsertError = self->_lastInsertError;
  if (lastInsertError)
  {
    v21 = [(NSError *)lastInsertError localizedDescription];
  }

  else
  {
    v21 = @"NoError";
  }

  v22 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
  v23 = [v22 identifier];
  v30 = [(__CFString *)v15 cStringUsingEncoding:4];
  v24 = ARKitBuildVersionString();
  v31 = v17;
  v25 = [NSString stringWithFormat:@"Description=Provide a detailed description of the issue including specific steps to reproduce.  Attachments you submit will be part of the Radar.  Only submit attachments you are comfortable having attached to Radars.\n\nANIMOJI SESSION INFO: puppet:%@ mode:%s sessionLength:%f  AnimojiVersion:%@  AvatarKitVersion:%i  SceneKitVersion:%i  ARKitVersion:%@  lastExportError:%s   lastSendError:%s  lastInsertError:%s   lastMovieExists:%s", v23, v30, v14, @"389.200.11", 356, 608, v24, [(__CFString *)v17 cStringUsingEncoding:4], [(__CFString *)v19 cStringUsingEncoding:4], [(__CFString *)v21 cStringUsingEncoding:4], [(NSString *)self->_lastMovieDoesNotExistError cStringUsingEncoding:4]];

  v26 = [v25 URLEncodedString_ch];

  v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"tap-to-radar://new?%s&%s&%s&%s&%s&%s&%s", [v35 cStringUsingEncoding:4], -[__CFString cStringUsingEncoding:](v32, "cStringUsingEncoding:", 4), -[__CFString cStringUsingEncoding:](v34, "cStringUsingEncoding:", 4), objc_msgSend(@"Classification=UI/Usability", "cStringUsingEncoding:", 4), objc_msgSend(@"Reproducibility=Always", "cStringUsingEncoding:", 4), -[__CFString cStringUsingEncoding:](v8, "cStringUsingEncoding:", 4), objc_msgSend(v26, "cStringUsingEncoding:", 4));
  v28 = [NSURL URLWithString:v27];
  v29 = +[LSApplicationWorkspace defaultWorkspace];
  [v29 openURL:v28 configuration:0 completionHandler:0];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] didSendTapToRadar", buf, 2u);
  }
}

- (void)launchTapToRadar
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] willSendTapToRadar", buf, 2u);
  }

  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"];

  if (v5)
  {
    v42 = v3;
    v6 = +[NSFileManager defaultManager];
    v41 = self;
    v7 = [(NSURL *)self->_stickerFolder path];
    v8 = [v6 contentsOfDirectoryAtPath:v7 error:0];

    v43 = +[NSMutableArray array];
    v9 = +[NSMutableArray array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          v16 = [v15 pathExtension];
          v17 = [v16 isEqualToString:@"mov"];

          if (v17)
          {
            [v43 addObject:v15];
          }

          v18 = [v15 pathExtension];
          v19 = [v18 isEqualToString:@"png"];

          if (v19)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v12);
    }

    v20 = [v43 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
    v21 = [v9 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
    v22 = [v20 lastObject];
    v23 = [v21 lastObject];
    if (v22)
    {
      v24 = [(NSURL *)v41->_stickerFolder path];
      v25 = [v24 stringByAppendingString:@"/"];
      v26 = [v25 stringByAppendingString:v22];

      [v42 addObject:v26];
    }

    self = v41;
    if (v23)
    {
      v27 = [(NSURL *)v41->_stickerFolder path];
      v28 = [v27 stringByAppendingString:@"/"];
      v29 = [v28 stringByAppendingString:v23];

      [v42 addObject:v29];
    }

    v3 = v42;
  }

  v30 = +[NSUserDefaults standardUserDefaults];
  if ([v30 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"])
  {
    v31 = +[NSFileManager defaultManager];
    WeakRetained = objc_loadWeakRetained(&self->_puppetView);
    v33 = [WeakRetained faceTrackingRecordingURL];
    v34 = [v33 path];
    v35 = [v31 fileExistsAtPath:v34];

    if (!v35)
    {
      goto LABEL_24;
    }

    v30 = objc_loadWeakRetained(&self->_puppetView);
    v36 = [v30 faceTrackingRecordingURL];
    v37 = [v36 path];
    v38 = [v37 URLEncodedString_ch];
    [v3 addObject:v38];
  }

LABEL_24:
  v39 = +[NSUserDefaults standardUserDefaults];
  if (![v39 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"])
  {

    goto LABEL_28;
  }

  UIState = self->_UIState;

  if (UIState != 5)
  {
LABEL_28:
    [(MessagesViewController *)self _launchTapToRadarWithAttachments:v3];
    goto LABEL_29;
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10000CD88;
  v44[3] = &unk_1000349F8;
  v45 = v3;
  v46 = self;
  [(MessagesViewController *)self exportVideoWithCompletion:v44];

LABEL_29:
}

- (BOOL)canTakeSendingAction
{
  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)onCancelSendingMessage:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] onCancelSendingMessage", v5, 2u);
  }

  if ([(MessagesViewController *)self canTakeSendingAction])
  {
    [(MessagesViewController *)self discardRecording];
    [(AVTUsageTrackingSession *)self->_usageTrackingSession didDiscardVideoWithDuration:self->_recordingElapsedTime];
  }
}

- (void)discardRecording
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] discardRecording", buf, 2u);
  }

  [(MessagesViewController *)self updateUIState:3 animated:1];
  [(MessagesViewController *)self hideUserInfoLabel];
  [(MessagesViewController *)self stopPreviewing];
  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CFA0;
  block[3] = &unk_100034788;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)onConfirmSendingMessage:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] onConfirmSendingMessage", buf, 2u);
  }

  if ([(MessagesViewController *)self canTakeSendingAction])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"JFDefaults_DontExitPreviewOnSend"];

    if ((v6 & 1) == 0)
    {
      [(MessagesViewController *)self stopPreviewing];
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000D160;
    v7[3] = &unk_100034A20;
    v7[4] = self;
    [(MessagesViewController *)self conditionallyPerformWithDisclosureAlertForSendingMessageWithConfirmTitle:@"Send" result:v7];
  }
}

- (void)onReplayMessage:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] onReplayMessage", v5, 2u);
  }

  if ([(MessagesViewController *)self canTakeSendingAction])
  {
    [(MessagesViewController *)self playPreviewOnce];
    [(AVTUsageTrackingSession *)self->_usageTrackingSession didReplayVideo];
  }
}

- (BOOL)shouldShowDisclosureAlertForSendingMessage
{
  if (AVTUIMemojiClassicShowDisclosureWarning_once() && (-[AVTRecordingCarouselController focusedRecord](self->_avatarListController, "focusedRecord"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEditable], v3, v4))
  {
    return !self->_hasConfirmedDisclosureWarning;
  }

  else
  {
    return 0;
  }
}

- (void)conditionallyPerformWithDisclosureAlertForSendingMessageWithConfirmTitle:(id)a3 result:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(MessagesViewController *)self shouldShowDisclosureAlertForSendingMessage])
  {
    [(MessagesViewController *)self showAlertForDisclosureWarningWithConfirmTitle:v7 completionBlock:v6];
  }

  else
  {
    v6[2](v6, 1);
  }
}

- (void)showAlertForDisclosureWarningWithConfirmTitle:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [UIAlertController alertControllerWithTitle:0 message:@"Please ensure all recipients are disclosed on pre-release Memoji features prior to sending." preferredStyle:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D4BC;
  v15[3] = &unk_100034A70;
  v9 = v6;
  v16 = v9;
  v10 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:v15];
  [v8 addAction:v10];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D560;
  v13[3] = &unk_100034A98;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  v12 = [UIAlertAction actionWithTitle:v7 style:0 handler:v13];

  [v8 addAction:v12];
  [v8 _setShouldAlignToKeyboard:0];
  [(MessagesViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (CGSize)defaultVideoExportDimensions
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"JFDefaults_VideoExportWidth"];

  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 integerForKey:@"JFDefaults_VideoExportWidth"];
  }

  else
  {
    v5 = 640.0;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"JFDefaults_VideoExportHeight"];

  if (v7)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 integerForKey:@"JFDefaults_VideoExportHeight"];
  }

  else
  {
    v9 = 480.0;
  }

  v10 = 100.0;
  if (v5 >= 100.0)
  {
    v11 = v5;
  }

  else
  {
    v11 = 100.0;
  }

  if (v9 >= 100.0)
  {
    v10 = v9;
  }

  result.height = v10;
  result.width = v11;
  return result;
}

- (id)defaultExportVideoOptionsForSize:(CGSize)a3
{
  v6[0] = @"size";
  v3 = [NSValue valueWithCGSize:a3.width, a3.height];
  v7[0] = v3;
  v7[1] = &off_1000360C8;
  v6[1] = @"rate";
  v6[2] = AVVideoCodecKey;
  v7[2] = AVVideoCodecTypeH264;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (void)exportVideoWithCompletion:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] exporting video for TTR", buf, 2u);
  }

  v5 = [(NSURL *)self->_stickerFolder path];
  v6 = [NSString stringWithFormat:@"/EmojiMovieExport.mov"];
  v7 = [v5 stringByAppendingString:v6];

  v8 = [NSURL fileURLWithPath:v7];
  [(MessagesViewController *)self defaultVideoExportDimensions];
  v9 = [(MessagesViewController *)self defaultExportVideoOptionsForSize:?];
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000D9D0;
  v14[3] = &unk_100034AC0;
  v16 = v7;
  v17 = v4;
  v15 = v8;
  v11 = v7;
  v12 = v4;
  v13 = v8;
  [WeakRetained exportMovieToURL:v13 options:v9 completionHandler:v14];
}

- (void)sendVideoMessage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] will send video", buf, 2u);
  }

  [(MessagesViewController *)self updateUIState:6 animated:1];
  v28 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
  v3 = [(NSURL *)self->_stickerFolder path];
  v4 = [NSString stringWithFormat:@"/EmojiMovie%d.mov", self->_recordingStartTime];
  v5 = [v3 stringByAppendingString:v4];

  v29 = v5;
  v6 = [NSURL fileURLWithPath:v5];
  [(MessagesViewController *)self defaultVideoExportDimensions];
  v7 = [(MessagesViewController *)self defaultExportVideoOptionsForSize:?];
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"JFDefaults_SaveVideosToCameraRoll"];
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v27 = v10;
  if (v10 == 1)
  {
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 BOOLForKey:@"JFDefaults_SaveVideosUsingMatte"];
  }

  else
  {
    v12 = 0;
  }

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 objectForKey:@"JFDefaults_SendVideosWithAlpha"];

  if (v14)
  {
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  if (v12)
  {
    v16 = [(NSURL *)self->_stickerFolder path];
    v17 = [NSString stringWithFormat:@"/AlphaMatteEmojiMovie%d.mov", self->_recordingStartTime];
    v18 = [v16 stringByAppendingString:v17];

    v19 = [NSURL fileURLWithPath:v18];
    v20 = [NSMutableDictionary dictionaryWithDictionary:v7];
    [v20 setObject:v19 forKeyedSubscript:AVTMovieGenerateAlphaMask];

    v7 = v20;
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v19 = 0;
  if (v15)
  {
LABEL_16:
    v21 = [NSMutableDictionary dictionaryWithDictionary:v7];
    [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:AVTMovieTransparentBackground];

    v7 = v21;
  }

LABEL_17:
  kdebug_trace();
  [(MessagesViewController *)self beforeExportMovie];
  v22 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DFA4;
  block[3] = &unk_100034BD8;
  block[4] = self;
  v31 = v6;
  v32 = v7;
  v33 = v28;
  v35 = v27;
  v34 = v19;
  v36 = v12;
  v23 = v19;
  v24 = v28;
  v25 = v7;
  v26 = v6;
  dispatch_async(v22, block);
}

- (void)afterExportMovie
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] afterExportMovie", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ECF0;
  block[3] = &unk_100034788;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"JFDefaults_DontExitPreviewOnSend"];

  if (v4)
  {
    [(MessagesViewController *)self updateUIState:5 animated:0];
  }

  else
  {
    [(MessagesViewController *)self updateUIState:3 animated:1];
    v5 = dispatch_time(0, 1000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000ECF8;
    v6[3] = &unk_100034788;
    v6[4] = self;
    dispatch_after(v5, &_dispatch_main_q, v6);
  }

  self->_exportingMovie = 0;
}

- (void)beforeExportMovie
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] beforeExportMovie", v3, 2u);
  }

  self->_exportingMovie = 1;
  if ([(MessagesViewController *)self isExpanded])
  {
    [(MessagesViewController *)self requestPresentationStyle:0];
  }
}

- (void)onEditAvatar:(id)a3
{
  v4 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
  if (v4)
  {
    v5 = v4;
    if ([v4 isEditable])
    {
      [(AVTRecordingCarouselController *)self->_avatarListController presentActionsForAvatar:v5];
    }
  }

  _objc_release_x1();
}

- (void)carouselController:(id)a3 didFocusOnRecordView:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_storeWeak(&self->_puppetView, v6);
    [v6 updateInterfaceOrientation];

    WeakRetained = objc_loadWeakRetained(&self->_puppetView);
    [WeakRetained setRecordDelegate:self];

    [(MessagesViewController *)self updateForNewPuppetView];
    [(MessagesViewController *)self resumeFaceTrackingIfNecessary];
  }

  else
  {
    if (self->_UIState == 5)
    {
      [(MessagesViewController *)self stopPreviewing];
    }

    [(MessagesViewController *)self updateUIState:2 animated:0];
  }

  self->_isUpdatingAvatarMode = 0;
}

- (void)carouselController:(id)a3 didUpdateWithRecord:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 identifier];
    [v8 setValue:v9 forKey:@"LastPuppetIdentifier"];
  }

  else
  {
    [v7 removeObjectForKey:@"LastPuppetIdentifier"];
  }

  puppetCollectionViewController = self->_puppetCollectionViewController;
  if (puppetCollectionViewController)
  {
    v11 = [(PuppetCollectionViewController *)puppetCollectionViewController selectedRecord];

    if (v11 != v6)
    {
      [(PuppetCollectionViewController *)self->_puppetCollectionViewController setSelectedRecord:v6];
      [(PuppetCollectionViewController *)self->_puppetCollectionViewController reloadSelection];
    }
  }

  if (self->_UIState == 3)
  {
    [(MessagesViewController *)self updateEditButtonVisibilityForceHide:0];
  }
}

- (void)carouselController:(id)a3 willEndFocusOnRecordView:(id)a4
{
  [(MessagesViewController *)self preparePuppetViewForReuse:a3];
  if (!self->_isUpdatingAvatarMode)
  {
    [(MessagesViewController *)self fadeOut:self->_replayMessageButton];
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  [WeakRetained setRecordDelegate:0];

  objc_storeWeak(&self->_puppetView, 0);
}

- (void)carouselController:(id)a3 didMoveTowardRecord:(id)a4 withFactor:(double)a5
{
  v25 = a3;
  v8 = a4;
  if (self->_UIState == 3)
  {
    [(MessagesViewController *)self resumeFaceTrackingIfNecessary];
    v9 = fmin(a5 * 5.0 + -3.0, 1.0);
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    if (v8)
    {
      v11 = [v8 isEditable];
      p_userInfoIsBeingOverridden = &self->_userInfoIsBeingOverridden;
    }

    else
    {
      p_userInfoIsBeingOverridden = &self->_userInfoIsBeingOverridden;
      if (self->_userInfoIsBeingOverridden)
      {
        v11 = 0;
      }

      else
      {
        v24 = [v25 focusedRecord];

        v11 = 0;
        if (a5 < 0.5 && v24)
        {
          goto LABEL_36;
        }
      }
    }

    if (!*p_userInfoIsBeingOverridden || ([v25 focusedRecord], v13 = objc_claimAutoreleasedReturnValue(), v13, a5 >= 0.5) || v13 != v8)
    {
      if (v11)
      {
        [(AVTCircularButton *)self->_editButton alpha];
        if (v10 >= v14)
        {
          v14 = v10;
        }
      }

      else
      {
        [(AVTCircularButton *)self->_editButton alpha];
        if (1.0 - v10 < v14)
        {
          v14 = 1.0 - v10;
        }
      }

      [(AVTCircularButton *)self->_editButton setAlpha:v14];
      if (v8)
      {
        [(UIView *)self->_recordingButtonSuperview alpha];
        if (v10 >= v15)
        {
          v15 = v10;
        }

        [(UIView *)self->_recordingButtonSuperview setAlpha:v15];
        if (*p_userInfoIsBeingOverridden)
        {
          [(MessagesViewController *)self stopOverridingUserInfoLabelState:1];
        }

        v16 = self->_userInfoAlpha > 0.0;
        [(AVTUserInfoView *)self->_userInfoView alpha];
        if (1.0 - v10 < v17 != v16)
        {
          v17 = 1.0 - v10;
        }

        [(AVTUserInfoView *)self->_userInfoView setAlpha:v17];
      }

      else
      {
        [(UIView *)self->_recordingButtonSuperview alpha];
        if (1.0 - v10 < v18)
        {
          v18 = 1.0 - v10;
        }

        [(UIView *)self->_recordingButtonSuperview setAlpha:v18];
        [(AVTUserInfoView *)self->_userInfoView alpha];
        if (v10 >= v19)
        {
          v20 = v10;
        }

        else
        {
          v20 = v19;
        }

        if (!*p_userInfoIsBeingOverridden || ([(AVTUserInfoView *)self->_userInfoView alpha], v21 != v20))
        {
          v22 = +[NSBundle mainBundle];
          v23 = [v22 localizedStringForKey:@"sJFNewMemoji" value:&stru_100035080 table:@"JFStrings"];
          [(MessagesViewController *)self overrideUserInfoLabelStateWithText:v23 alpha:v20];
        }
      }
    }
  }

LABEL_36:
}

- (void)dismissLaunchScreenIfNecessaryForPresentationStyle:(unint64_t)a3 controller:(id)a4
{
  v6 = a4;
  AVTUISetHasDisplayedAnimojiSplashScreen();
  AVTUISetHasDisplayedAnimojiCameraDisclosureSplashScreen();
  self->_displaysLaunchScreen = 0;
  v7 = [(MessagesViewController *)self presentsLaunchScreenInFullScreenModal];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000F708;
  v25[3] = &unk_100034C28;
  v26 = v7;
  v25[4] = self;
  v25[5] = &v27;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000F764;
  v22[3] = &unk_100034C50;
  v24 = v7;
  v8 = objc_retainBlock(v25);
  v23 = v8;
  [(MessagesViewController *)self performWhileOverridingPresentationStyle:a3 block:v22];
  [(MessagesViewController *)self beginObservingFaceTrackingIfNecessary];
  if (v7)
  {
    v9 = [v6 parentViewController];
    [v9 dismiss];
    if ([(MessagesViewController *)self requestsExpandedOnLaunchScreenDismissal])
    {
      v10 = dispatch_time(0, 300000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F794;
      block[3] = &unk_100034788;
      block[4] = self;
      dispatch_after(v10, &_dispatch_main_q, block);
    }
  }

  else
  {
    v11 = [(MessagesViewController *)self parentMessagesViewController];
    v12 = [v11 launchViewContainer];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000F7A0;
    v17[3] = &unk_100034800;
    v13 = v6;
    v18 = v13;
    v19 = self;
    v9 = v12;
    v20 = v9;
    v14 = objc_retainBlock(v17);
    v15 = [LaunchTransitionController controllerForTransitioningBetweenMessagesController:self andLaunchController:v13];
    v16 = v15;
    if (*(v28 + 24) == 1)
    {
      [v15 performAnimatedTransitionByMovingVideo:v14];
    }

    else
    {
      [v15 performAnimatedTransitionByFadingSplash:v14];
    }
  }

  _Block_object_dispose(&v27, 8);
}

- (void)launchViewControllerDidConfirm:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] launchViewControllerDidConfirm", v5, 2u);
  }

  [(AVTRecordingCarouselController *)self->_avatarListController setIsPostponingBeginSession:0];
  [(MessagesViewController *)self dismissLaunchScreenIfNecessaryForPresentationStyle:[(MessagesViewController *)self presentationStyle] controller:v4];
}

- (void)launchViewControllerDidCancel:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] launchViewControllerDidCancel", v4, 2u);
  }

  [(MessagesViewController *)self dismiss];
}

- (void)puppetCollectionViewController:(id)a3 didSelectPuppetRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v7 identifier];
    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] puppetCollectionViewController: %@ identifier: %@", &v18, 0x16u);
  }

  kdebug_trace();
  [(MessagesViewController *)self resumeFaceTrackingIfNecessary];
  if (v7)
  {
    v9 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
    if (!v9 || (v10 = v9, -[AVTRecordingCarouselController focusedRecord](self->_avatarListController, "focusedRecord"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:v7], v11, v10, (v12 & 1) == 0))
    {
      v13 = +[NSUserDefaults standardUserDefaults];
      v14 = [v7 identifier];
      [v13 setValue:v14 forKey:@"LastPuppetIdentifier"];

      avatarListController = self->_avatarListController;
      v16 = [v7 identifier];
      [(AVTRecordingCarouselController *)avatarListController displayAvatarRecordWithIdentifier:v16 animated:1];

      if (self->_UIState == 5)
      {
        [(MessagesViewController *)self playPreviewOnce];
      }
    }
  }

  else
  {
    v17 = +[NSUserDefaults standardUserDefaults];
    [v17 removeObjectForKey:@"LastPuppetIdentifier"];
  }

  kdebug_trace();
}

- (double)verticalCellSpacingForPuppetCollectionViewController:(id)a3
{
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    result = 16.0;
    if (v6 != 5)
    {
      return result;
    }
  }

  [(MessagesViewController *)self isLandscapeMode];
  return 20.0;
}

- (double)horizontalCellSpacingForPuppetCollectionViewController:(id)a3
{
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    result = 16.0;
    if (v6 != 5)
    {
      return result;
    }
  }

  [(MessagesViewController *)self isLandscapeMode];
  return 20.0;
}

- (UIEdgeInsets)contentInsetForPuppetCollectionViewController:(id)a3
{
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {

LABEL_4:
    [(MessagesViewController *)self isLandscapeMode];
    goto LABEL_5;
  }

  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7 = 16.0;
  v8 = 16.0;
  v9 = 16.0;
  v10 = 16.0;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (int)widthExtent
{
  v3 = [(MessagesViewController *)self isLandscapeMode];
  v4 = [(MessagesViewController *)self view];
  v5 = [v4 window];
  [v5 bounds];
  Width = CGRectGetWidth(v28);

  v7 = [(MessagesViewController *)self view];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = [v9 screen];
  [v10 _referenceBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  if (v3)
  {
    v23 = Width / CGRectGetHeight(*&v19);
    if (fabs(v23 + -1.0) <= 0.05)
    {
      return 0;
    }

    if (fabs(v23 + -0.75) <= 0.05)
    {
      return 1;
    }

    if (fabs(v23 + -0.5) <= 0.05)
    {
      return 2;
    }

    v24 = fabs(v23 + -0.25) > 0.05;
    v25 = 3;
  }

  else
  {
    v26 = Width / CGRectGetWidth(*&v19);
    if (fabs(v26 + -1.0) <= 0.05)
    {
      return 4;
    }

    if (fabs(v26 + -0.6) <= 0.05)
    {
      return 5;
    }

    v24 = fabs(v26 + -0.36) > 0.05;
    v25 = 6;
  }

  if (v24)
  {
    return 7;
  }

  else
  {
    return v25;
  }
}

- (int64_t)puppetsPerRow
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 5)
    {
      return 4;
    }
  }

  v6 = [(MessagesViewController *)self widthExtent];
  if (v6 < 7)
  {
    return qword_10002EE80[v6];
  }

  v8 = [(MessagesViewController *)self view];
  v9 = [v8 window];
  [v9 bounds];
  v7 = (CGRectGetWidth(v11) / 100.0);

  return v7;
}

- (double)widthScaleFactor
{
  v3 = [(MessagesViewController *)self isLandscapeMode];
  v4 = [(MessagesViewController *)self view];
  v5 = [v4 window];
  [v5 bounds];
  Width = CGRectGetWidth(v25);

  v7 = [(MessagesViewController *)self view];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = [v9 screen];
  [v10 _referenceBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  if (v3)
  {
    Height = CGRectGetHeight(*&v19);
  }

  else
  {
    Height = CGRectGetWidth(*&v19);
  }

  return Width / Height;
}

- (double)carouselHeight
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];
  if (v5 != 1)
  {
    v2 = +[UIDevice currentDevice];
    if ([v2 userInterfaceIdiom] != 5)
    {
      v10 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v6 = [(MessagesViewController *)self view];
  [v6 bounds];
  if (v7 <= 400.0)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(MessagesViewController *)self view];
    v9 = [v8 traitCollection];
    v10 = [v9 horizontalSizeClass] == 2 || -[MessagesViewController presentationStyle](self, "presentationStyle") == 0;
  }

  if (v5 != 1)
  {
    goto LABEL_11;
  }

LABEL_12:

  v11 = [(MessagesViewController *)self isSpeculatingLayout];
  if ([(MessagesViewController *)self presentationStyle]!= 1)
  {
    if (v11)
    {
      v19 = &__NSArray0__struct;
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    v23 = [(MessagesViewController *)self view];
    v24 = [v23 window];

    v25 = [v24 _rootSheetPresentationController];
    v19 = [v25 _detentValues];
    if ([v19 count] <= 1)
    {

      if (v10)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = [v19 objectAtIndexedSubscript:1];
      [v26 doubleValue];
      v28 = v27;

      if (v28 != UISheetPresentationControllerDetentInactive)
      {
        v34 = [(MessagesViewController *)self view];
        [v34 safeAreaInsets];
        v36 = v35;

        v37 = [v19 objectAtIndexedSubscript:1];
        [v37 doubleValue];
        v16 = v38 - v36;

        goto LABEL_42;
      }

      if (v10)
      {
LABEL_30:
        v29 = [(MessagesViewController *)self isLandscapeMode];
        v30 = +[UIScreen mainScreen];
        [v30 _referenceBounds];
        v32 = v31;

        if (v29)
        {
          if (v32 > 1194.0)
          {
            v16 = 406.0;
LABEL_42:

            return v16;
          }

          *&v33 = 336.0;
        }

        else
        {
          if (v32 > 1194.0)
          {
            v16 = 311.0;
            goto LABEL_42;
          }

          *&v33 = 248.0;
        }

        v16 = *&v33;
        goto LABEL_42;
      }
    }

LABEL_25:
    v20 = +[UIScreen mainScreen];
    [v20 _referenceBounds];
    v22 = v21;

    if (v22 <= 812.0)
    {
      v16 = 233.0;
    }

    else
    {
      v16 = 243.0;
    }

    goto LABEL_42;
  }

  if (v10)
  {
    v12 = 480.0;
  }

  else
  {
    v12 = 292.0;
  }

  v13 = +[UIScreen mainScreen];
  [v13 _referenceBounds];
  v15 = v14;

  if (v15 <= 812.0)
  {
    v16 = v12;
  }

  else
  {
    v16 = 311.0;
  }

  if (!(v11 & 1 | !v10))
  {
    [(MessagesViewController *)self widthScaleFactor];
    v18 = v16 * v17;
    if (v16 * 0.65 >= v18)
    {
      return v16 * 0.65;
    }

    else
    {
      return v18;
    }
  }

  return v16;
}

- (void)updatePuppetCollectionViewIfNecessary
{
  if (self->_puppetCollectionViewController)
  {
    [(PuppetCollectionViewController *)self->_puppetCollectionViewController setPuppetsPerRow:[(MessagesViewController *)self puppetsPerRow]];

    [(MessagesViewController *)self updatePaddleViewLayoutIfNecessary];
  }
}

- (void)updatePuppetCollectionViewWithCurrentFocusedRecordIfNecessary
{
  if (self->_puppetCollectionViewController)
  {
    v3 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
    [(PuppetCollectionViewController *)self->_puppetCollectionViewController setSelectedRecord:v3];
    [(MessagesViewController *)self updatePuppetCollectionViewIfNecessary];
  }
}

- (void)recordView:(id)a3 previewDidChangeStatus:(int64_t)a4
{
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] recordView:previewDidChangeStatus", buf, 2u);
  }

  if (a4 == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] AVTPuppetPreviewStatusDidFinishPlaying", v7, 2u);
    }

    [(MessagesViewController *)self fadeIn:self->_replayMessageButton];
  }

  else if (!a4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] AVTPuppetPreviewStatusDidStartPlaying", v8, 2u);
    }

    [(MessagesViewController *)self fadeOut:self->_replayMessageButton];
  }

  self->_lastPreviewStatus = a4;
}

- (void)recordView:(id)a3 session:(id)a4 didFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] ARSession didFailWithError", v18, 2u);
  }

  self->_arSessionState = 2;
  [(NSTimer *)self->_trackingLostTimer invalidate];
  trackingLostTimer = self->_trackingLostTimer;
  self->_trackingLostTimer = 0;

  [(NSTimer *)self->_trackingStartTimer invalidate];
  trackingStartTimer = self->_trackingStartTimer;
  self->_trackingStartTimer = 0;

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 BOOLForKey:@"JFDefaults_NeverDisableRecordButton"];

  if ((v14 & 1) == 0)
  {
    [(AVTRecordingButton *)self->_recordingButton setEnabled:0];
  }

  UIState = self->_UIState;
  if (UIState == 3)
  {
    goto LABEL_8;
  }

  if (UIState == 4)
  {
    [(MessagesViewController *)self stopRecordingAndPlayPreview:0];
    [(MessagesViewController *)self discardRecording];
LABEL_8:
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"sJFARSessionFailed" value:&stru_100035080 table:@"JFStrings"];
    [(MessagesViewController *)self pauseFaceTrackingWithReason:v17];
  }
}

- (void)recordView:(id)a3 sessionWasInterrupted:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] sessionWasInterrupted", v15, 2u);
  }

  self->_arSessionState = 3;
  [(NSTimer *)self->_trackingLostTimer invalidate];
  trackingLostTimer = self->_trackingLostTimer;
  self->_trackingLostTimer = 0;

  [(NSTimer *)self->_trackingStartTimer invalidate];
  trackingStartTimer = self->_trackingStartTimer;
  self->_trackingStartTimer = 0;

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"JFDefaults_NeverDisableRecordButton"];

  if ((v11 & 1) == 0)
  {
    [(AVTRecordingButton *)self->_recordingButton setEnabled:0];
  }

  UIState = self->_UIState;
  if (UIState == 3)
  {
    goto LABEL_8;
  }

  if (UIState == 4)
  {
    [(MessagesViewController *)self stopRecordingAndPlayPreview:0];
    [(MessagesViewController *)self discardRecording];
LABEL_8:
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"sJFARSessionWasInterrupted" value:&stru_100035080 table:@"JFStrings"];
    [(MessagesViewController *)self showUserInfoLabelWithText:v14];
  }

  [(MessagesViewController *)self addInternalARSessionObserverIfNecessary];
}

- (void)recordView:(id)a3 sessionInterruptionEnded:(id)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] sessionInterruptionEnded", v5, 2u);
  }

  [(MessagesViewController *)self handleInterruptionEnded];
}

- (void)handleInterruptionEnded
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] handleInterruptionEnded", v6, 2u);
  }

  [(MessagesViewController *)self removeInternalARSessionObserverIfNecessary];
  [(MessagesViewController *)self updateARSessionStateResettingState:1];
  if (self->_arSessionState)
  {
    [(AVTRecordingButton *)self->_recordingButton setEnabled:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_puppetView);
    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_puppetView);
      if ([v4 faceIsTracked])
      {
        v5 = objc_loadWeakRetained(&self->_puppetView);
        -[AVTRecordingButton setEnabled:](self->_recordingButton, "setEnabled:", [v5 faceIsFullyActive]);
      }

      else
      {
        [(AVTRecordingButton *)self->_recordingButton setEnabled:0];
      }
    }

    else
    {
      [(AVTRecordingButton *)self->_recordingButton setEnabled:0];
    }
  }

  if (self->_UIState - 3 <= 1)
  {
    [(MessagesViewController *)self hideUserInfoLabel];
    [(MessagesViewController *)self startTrackingStartTimerWithCounter:3];
  }
}

- (void)addInternalARSessionObserverIfNecessary
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_observingSession);
    v7 = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] addInternalARSessionObserverIfNecessary observing %@", &v7, 0xCu);
  }

  v4 = objc_loadWeakRetained(&self->_observingSession);

  if (!v4)
  {
    v5 = objc_loadWeakRetained(&self->_puppetView);
    v6 = [v5 arSession];

    if (v6)
    {
      [v6 _addObserver:self];
      objc_storeWeak(&self->_observingSession, v6);
    }
  }
}

- (void)removeInternalARSessionObserverIfNecessary
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_observingSession);
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] removeInternalARSessionObserverIfNecessary observing %@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained(&self->_observingSession);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_observingSession);
    [v5 _removeObserver:self];

    objc_storeWeak(&self->_observingSession, 0);
  }
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] session didChangeState %lu", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010E8C;
  v6[3] = &unk_1000348C8;
  v6[4] = self;
  v6[5] = a4;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)updateARSessionStateResettingState:(BOOL)a3
{
  if (a3)
  {
    self->_arSessionState = 5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  if (WeakRetained || ([(AVTRecordingCarouselController *)self->_avatarListController focusedRecordingView], (WeakRetained = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (self->_arSessionState == 5)
    {
      v8 = WeakRetained;
      v5 = [WeakRetained arSession];
      v6 = [v5 state];

      if (v6)
      {
        if (v6 == 2)
        {
          v7 = 3;
        }

        else
        {
          WeakRetained = v8;
          if (v6 != 1)
          {
            v7 = 5;
            goto LABEL_14;
          }

          v7 = [v8 faceIsTracked] ^ 1;
        }
      }

      else
      {
        v7 = 4;
      }

      WeakRetained = v8;
LABEL_14:
      self->_arSessionState = v7;
    }
  }
}

- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] presentAvatarViewController:animated:", buf, 2u);
  }

  if (self->_UIState != 5)
  {
    v6 = +[AVTUIControllerPresentation pendingGlobalPresentation];

    if (!v6)
    {
      [AVTUIControllerPresentation setPendingGlobalPresentation:v5];
      [(MessagesViewController *)self requestPresentationStyle:3];
      goto LABEL_12;
    }

    if (self->_UIState != 5)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v9 = 0;
      v7 = "[Jellyfish] ignoring presentAvatarViewController:animated: since we already have a pending presentation";
      v8 = &v9;
      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    v7 = "[Jellyfish] ignoring presentAvatarViewController:animated: since we are recording or confirming send";
    v8 = v10;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
  }

LABEL_12:
}

- (void)dismissAvatarUIControllerAnimated:(BOOL)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] dismissAvatarViewControllerAnimated:", buf, 2u);
  }

  if (!self->_isDismissingAvatarUIController)
  {
    self->_isDismissingAvatarUIController = 1;
    [(MessagesViewController *)self updatePuppetCollectionViewIfNecessary];
    v4 = +[AVTUIControllerPresentation pendingGlobalPresentation];
    v5 = [v4 modalMessagesController];
    [v5 dismiss];

    v6 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011228;
    block[3] = &unk_100034788;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }
}

- (void)updateUIState:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v48 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] updateUIState (%lu)", buf, 0xCu);
  }

  [(UIView *)self->_carouselView setUserInteractionEnabled:1];
  WeakRetained = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
  [WeakRetained setUserInteractionEnabled:1];

  v8 = [(MessagesViewController *)self presentationStyle];
  self->_UIState = a3;
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        v22 = v8;
        [(AVTRecordingButton *)self->_recordingButton setUIState:0];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100011B34;
        v44[3] = &unk_100034788;
        v44[4] = self;
        [(MessagesViewController *)self performWithFadeAnimation:v44 enabled:v4];
        v23 = [(MessagesViewController *)self parentMessagesViewController];
        v24 = [v23 launchViewContainer];
        v25 = v24;
        if (v4)
        {
          [(MessagesViewController *)self fadeIn:v24];

          v26 = [(MessagesViewController *)self parentMessagesViewController];
          v27 = [v26 messagesViewContainer];
          [(MessagesViewController *)self fadeIn:v27];

          [(MessagesViewController *)self fadeIn:self->_carouselView];
          v28 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
          if (v22 == 1)
          {
            [(MessagesViewController *)self fadeIn:v28];
          }

          else
          {
            [(MessagesViewController *)self fadeOut:v28];
          }

          [(MessagesViewController *)self fadeIn:self->_recordingButtonSuperview];
          [(MessagesViewController *)self fadeOut:self->_cancelSendingMessageButton];
          [(MessagesViewController *)self fadeOut:self->_replayMessageButton];
          [(MessagesViewController *)self fadeOut:self->_recordingTimeDisplayView];
        }

        else
        {
          v29 = 1.0;
          [v24 setAlpha:1.0];

          v30 = [(MessagesViewController *)self parentMessagesViewController];
          v31 = [v30 messagesViewContainer];
          [v31 setAlpha:1.0];

          [(UIView *)self->_carouselView setAlpha:1.0];
          if (v22 != 1)
          {
            v29 = 0.0;
          }

          v32 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
          [v32 setAlpha:v29];

          [(UIView *)self->_recordingButtonSuperview setAlpha:1.0];
          [(AVTCircularButton *)self->_cancelSendingMessageButton setAlpha:0.0];
          [(UIButton *)self->_replayMessageButton setAlpha:0.0];
          [(RecordingTimeDisplayView *)self->_recordingTimeDisplayView setAlpha:0.0];
        }

        v10 = self;
        v11 = 1;
      }

      else
      {
        [(AVTRecordingButton *)self->_recordingButton setUIState:1];
        [(UIView *)self->_carouselView setUserInteractionEnabled:0];
        v9 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
        [v9 setUserInteractionEnabled:0];

        [(MessagesViewController *)self fadeIn:self->_recordingTimeDisplayView];
        [(MessagesViewController *)self fadeIn:self->_recordingButtonSuperview];
        [(MessagesViewController *)self fadeOut:self->_cancelSendingMessageButton];
        [(MessagesViewController *)self fadeOut:self->_replayMessageButton];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_100011B78;
        v43[3] = &unk_100034788;
        v43[4] = self;
        [(MessagesViewController *)self performWithFadeAnimation:v43 enabled:v4];
        v10 = self;
        v11 = 0;
      }

      [(MessagesViewController *)v10 setAllowsCreate:v11 animated:v4];
      return;
    }

    if (a3 != 5)
    {
      if (a3 != 6)
      {
        return;
      }

      [(AVTRecordingButton *)self->_recordingButton setUIState:3];
      [(MessagesViewController *)self fadeIn:self->_recordingButtonSuperview];
      [(MessagesViewController *)self fadeOut:self->_cancelSendingMessageButton];
      [(MessagesViewController *)self fadeOut:self->_replayMessageButton];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"sJFSendingVideoMessage" value:&stru_100035080 table:@"JFStrings"];
      [(MessagesViewController *)self showUserInfoLabelWithText:v13];

      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_100011B90;
      v36 = &unk_100034788;
      v37 = self;
      v14 = &v33;
      v15 = self;
      v16 = 1;
      goto LABEL_21;
    }

    [(AVTRecordingButton *)self->_recordingButton setUIState:2];
    [(MessagesViewController *)self fadeIn:self->_cancelSendingMessageButton];
    [(MessagesViewController *)self fadeIn:self->_recordingButtonSuperview];
    [(MessagesViewController *)self fadeOut:self->_recordingTimeDisplayView];
    [(MessagesViewController *)self fadeOut:self->_replayMessageButton];
    [(MessagesViewController *)self hideUserInfoLabel];
    v38 = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_100011B84;
    v41 = &unk_100034788;
    v42 = self;
    v14 = &v38;
LABEL_20:
    v15 = self;
    v16 = v4;
LABEL_21:
    [(MessagesViewController *)v15 performWithFadeAnimation:v14 enabled:v16, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42];
    return;
  }

  switch(a3)
  {
    case 0uLL:
      v17 = [(MessagesViewController *)self parentMessagesViewController];
      v18 = [v17 messagesViewContainer];
      [v18 setAlpha:0.0];

      v19 = [(MessagesViewController *)self parentMessagesViewController];
      v20 = [v19 launchViewContainer];
      [v20 setAlpha:0.0];

      v21 = objc_loadWeakRetained(&self->_puppetCollectionViewContainer);
      [v21 setAlpha:0.0];

      [(UIView *)self->_carouselView setAlpha:0.0];
      [(MessagesViewController *)self updateTapToRadarVisibilityForceHide:1];
      [(MessagesViewController *)self updateEditButtonVisibilityForceHide:1];
      [(RecordingTimeDisplayView *)self->_recordingTimeDisplayView setAlpha:0.0];
      [(UIView *)self->_recordingButtonSuperview setAlpha:0.0];
      [(AVTCircularButton *)self->_cancelSendingMessageButton setAlpha:0.0];
      [(UIButton *)self->_replayMessageButton setAlpha:0.0];
      return;
    case 1uLL:
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100011A90;
      v46[3] = &unk_100034788;
      v46[4] = self;
      v14 = v46;
      goto LABEL_20;
    case 2uLL:
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100011B28;
      v45[3] = &unk_100034788;
      v45[4] = self;
      [(MessagesViewController *)self performWithFadeAnimation:v45 enabled:1];
      [(MessagesViewController *)self fadeOut:self->_recordingButtonSuperview];
      [(MessagesViewController *)self fadeOut:self->_cancelSendingMessageButton];
      [(MessagesViewController *)self fadeOut:self->_replayMessageButton];
      [(MessagesViewController *)self fadeOut:self->_recordingTimeDisplayView];
      [(MessagesViewController *)self fadeOut:self->_userInfoView];
      break;
  }
}

- (void)handleResumeTrackingTap:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] handleResumeTrackingTap", v4, 2u);
  }

  [(MessagesViewController *)self resumeFaceTrackingIfNecessary];
}

- (void)resumeFaceTrackingIfNecessary
{
  if (self->_resumeTrackingTapGestureRecognizer)
  {
    [(UIView *)self->_carouselView removeGestureRecognizer:?];
    resumeTrackingTapGestureRecognizer = self->_resumeTrackingTapGestureRecognizer;
    self->_resumeTrackingTapGestureRecognizer = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else
  {
    v6 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecordingView];
  }

  v11 = v6;

  if (([v11 faceTrackingIsPaused] & 1) != 0 || self->_arSessionState == 4)
  {
    [v11 setFaceTrackingPaused:0];
    [(AVTUsageTrackingSession *)self->_usageTrackingSession didResumeFaceTracking];
    [(MessagesViewController *)self updateARSessionStateResettingState:1];
    arSessionState = self->_arSessionState;
    if (arSessionState)
    {
      if (arSessionState != 4 || v11 == 0)
      {
        goto LABEL_18;
      }
    }

    else if (!v11)
    {
      v11 = 0;
      goto LABEL_21;
    }

    if (([v11 faceIsTracked] & 1) == 0)
    {
      self->_arSessionState = 1;
      [(MessagesViewController *)self startTrackingLostTimer];
    }

LABEL_18:
    if (self->_arSessionState)
    {
      [(MessagesViewController *)self changeUserInfoLabelForTrackingState];
LABEL_22:
      if (self->_arSessionState == 3)
      {
        v9 = +[NSUserDefaults standardUserDefaults];
        v10 = [v9 BOOLForKey:@"JFDefaults_NeverDisableRecordButton"];

        if ((v10 & 1) == 0)
        {
          [(AVTRecordingButton *)self->_recordingButton setEnabled:0];
        }
      }

      goto LABEL_25;
    }

LABEL_21:
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:1];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setEnabled:1];
    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setEnabled:1];
    [(MessagesViewController *)self hideUserInfoLabel];
    [(MessagesViewController *)self startTrackingStartTimerWithCounter:3];
    goto LABEL_22;
  }

LABEL_25:
}

- (void)handleSceneShortPress:(id)a3
{
  v4 = a3;
  if ([(MessagesViewController *)self canPeelSticker])
  {
    self->_isMakingSticker = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] handleSceneShortPress", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_puppetView);
    v6 = [WeakRetained superview];
    [v4 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = objc_loadWeakRetained(&self->_puppetView);
    [v11 center];
    v13 = v12;
    v15 = v14;

    v16 = sqrt((v10 - v15) * (v10 - v15) + (v8 - v13) * (v8 - v13));
    if (([(MessagesViewController *)self presentationStyle]|| v16 <= 100.0) && (![(MessagesViewController *)self isExpanded]|| v16 <= 160.0))
    {
      v17 = objc_loadWeakRetained(&self->_puppetView);
      v18 = [v17 superview];
      [(UIView *)self->_recordingButtonSuperview center];
      v20 = v19;
      v22 = v21;
      v23 = objc_loadWeakRetained(&self->_puppetView);
      v24 = [v23 superview];
      [v18 convertPoint:v24 toView:{v20, v22}];
      v26 = v25;
      v28 = v27;

      if (sqrt((v10 - v28) * (v10 - v28) + (v8 - v26) * (v8 - v26)) >= 40.0 && [v4 state] == 3)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10001205C;
        v29[3] = &unk_100034A20;
        v29[4] = self;
        [(MessagesViewController *)self conditionallyPerformWithDisclosureAlertForSendingMessageWithConfirmTitle:@"Send" result:v29];
      }
    }

    else
    {
      self->_isMakingSticker = 0;
    }
  }
}

- (void)handleSceneLongPress:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] handleSceneLongPress", buf, 2u);
  }

  if ([v4 state] == 1)
  {
    if ([(MessagesViewController *)self shouldShowDisclosureAlertForSendingMessage])
    {
      [v4 setEnabled:0];
      [v4 setEnabled:1];
      [(MessagesViewController *)self showAlertForDisclosureWarningWithConfirmTitle:@"OK" completionBlock:0];
    }

    else if ([(MessagesViewController *)self canPeelSticker])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] sticker peeled", buf, 2u);
      }

      editButton = self->_editButton;
      v61[0] = self->_recordingButton;
      v61[1] = editButton;
      v14 = [NSArray arrayWithObjects:v61 count:2];
      v15 = [(MessagesViewController *)self setRestorableValue:&__kCFBooleanFalse forKeyPath:@"enabled" onViews:v14];

      v16 = dispatch_time(0, 300000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100012EC0;
      block[3] = &unk_100034D18;
      v59 = v15;
      v17 = v4;
      v57 = v17;
      v58 = self;
      v50 = v15;
      dispatch_after(v16, &_dispatch_main_q, block);
      [(AVTUserInfoView *)self->_userInfoView setHidden:1];
      v18 = [(MessagesViewController *)self stickerUsingLargeSticker:0];
      v19 = [MSStickerView alloc];
      y = CGPointZero.y;
      WeakRetained = objc_loadWeakRetained(&self->_puppetView);
      [WeakRetained bounds];
      v22 = [v19 initWithFrame:v18 sticker:{CGPointZero.x, y}];

      v23 = +[UIColor clearColor];
      [(MSStickerView *)v22 setBackgroundColor:v23];

      [(MSStickerView *)v22 setUserInteractionEnabled:0];
      v24 = [(MessagesViewController *)self view];
      [v24 addSubview:v22];

      [(MSStickerView *)v22 sizeToFit];
      [(MSStickerView *)v22 frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = objc_loadWeakRetained(&self->_puppetView);
      [v33 frame];
      Width = CGRectGetWidth(v62);

      v35 = objc_loadWeakRetained(&self->_puppetView);
      [v35 frame];
      Height = CGRectGetHeight(v63);

      if (Width < Height)
      {
        Height = Width;
      }

      v64.origin.x = v26;
      v64.origin.y = v28;
      v64.size.width = v30;
      v64.size.height = v32;
      v37 = CGRectGetWidth(v64);
      v65.origin.x = v26;
      v65.origin.y = v28;
      v65.size.width = v30;
      v65.size.height = v32;
      v38 = CGRectGetHeight(v65);
      if (v37 < v38)
      {
        v38 = v37;
      }

      [(MSStickerView *)v22 setFrame:v26, v28, v30 * (Height / v38), v32 * (Height / v38), v50];
      v39 = [(MSStickerView *)v22 superview];
      v40 = objc_loadWeakRetained(&self->_puppetView);
      [v40 center];
      v42 = v41;
      v44 = v43;
      v45 = objc_loadWeakRetained(&self->_puppetView);
      v46 = [v45 superview];
      [v39 convertPoint:v46 fromView:{v42, v44}];
      [(MSStickerView *)v22 setCenter:?];

      v47 = objc_loadWeakRetained(&self->_puppetView);
      [v47 setAlpha:0.0];

      v48 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
      [(AVTUsageTrackingSession *)self->_usageTrackingSession didSendStickerWithAvatar:v48];
      [(MSStickerView *)v22 layoutIfNeeded];
      [(MSStickerView *)v22 handleLongPress:v17];
      stickerView = self->_stickerView;
      self->_stickerView = v22;
    }
  }

  else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 5 || objc_msgSend(v4, "state") == 4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] sticker dropped on transcript", buf, 2u);
    }

    v5 = self->_stickerView;
    if (v5)
    {
      v6 = v5;
      v7 = [(AVTRecordingCarouselController *)self->_avatarListController view];
      [v7 center];
      [(MSStickerView *)v6 setCenter:?];

      v8 = self->_stickerView;
      self->_stickerView = 0;

      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100012FC8;
      v54[3] = &unk_100034AE8;
      v54[4] = self;
      v55 = v6;
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100013024;
      v52[3] = &unk_100034D40;
      v52[4] = self;
      v9 = v55;
      v53 = v9;
      [UIView animateWithDuration:0 delay:v54 options:v52 animations:0.3 completion:0.85];
      v10 = objc_retainBlock(self->_stickerHiddenViewsRestorationBlock);
      stickerHiddenViewsRestorationBlock = self->_stickerHiddenViewsRestorationBlock;
      self->_stickerHiddenViewsRestorationBlock = 0;

      if (v10)
      {
        v12 = dispatch_time(0, 1000000000);
        dispatch_after(v12, &_dispatch_main_q, v10);
      }
    }
  }
}

- (void)playPreviewOnce
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] playPreviewOnce", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  [WeakRetained playPreviewOnce];
}

- (void)stopPreviewing
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] stopPreviewing", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  [WeakRetained stopPreviewing];
}

- (void)handleRecordingButtonTouchUp:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] handleRecordingButtonTouchUp", v8, 2u);
  }

  UIState = self->_UIState;
  switch(UIState)
  {
    case 3uLL:
      WeakRetained = objc_loadWeakRetained(&self->_puppetView);
      v7 = [WeakRetained faceIsTracked];

      if (v7)
      {
        [(MessagesViewController *)self recordingWillStart];
        [(MessagesViewController *)self updateUIState:4 animated:1];
        [(MessagesViewController *)self updateRecording];
        break;
      }

      UIState = self->_UIState;
      break;
    case 5uLL:
      [(MessagesViewController *)self onConfirmSendingMessage:v4];
      break;
    case 4uLL:
      [(MessagesViewController *)self stopRecordingAndPlayPreview:1];
      break;
  }
}

- (void)recordingButtonDidStartLongPress:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] recordingButtonDidStartLongPress", v7, 2u);
  }

  if (self->_UIState == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_puppetView);
    v6 = [WeakRetained faceIsTracked];

    if (v6)
    {
      [(MessagesViewController *)self recordingWillStart];
      [(MessagesViewController *)self updateUIState:4 animated:1];
      [(MessagesViewController *)self updateRecording];
    }
  }
}

- (void)recordingButton:(id)a3 didEndLongPress:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] recordingButtonDidEndLongPress cancelled:%d", v7, 8u);
  }

  if (self->_UIState == 4)
  {
    [(AVTRecordingButton *)self->_recordingButton cancelTrackingWithEvent:0];
    if (v4)
    {
      [(MessagesViewController *)self stopRecordingAndPlayPreview:0];
      [(MessagesViewController *)self discardRecording];
    }

    else
    {
      [(MessagesViewController *)self stopRecordingAndPlayPreview:1];
    }
  }
}

- (void)updateRecording
{
  if (self->_recording)
  {
    [(NSTimer *)self->_recordTimer invalidate];
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"JFDefaults_DisableRecordingTimer"];

    if (v4)
    {
      recordingTimeDisplayView = self->_recordingTimeDisplayView;

      [(RecordingTimeDisplayView *)recordingTimeDisplayView setHidden:1];
    }

    else
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10001358C;
      v8[3] = &unk_100034D68;
      v8[4] = self;
      v6 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v8 block:0.0166666667];
      recordTimer = self->_recordTimer;
      self->_recordTimer = v6;
    }
  }
}

- (void)stopRecordingAndPlayPreview:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] stopRecording", v6, 2u);
  }

  [(NSTimer *)self->_recordTimer invalidate];
  recordTimer = self->_recordTimer;
  self->_recordTimer = 0;

  [(MessagesViewController *)self recordingDidFinish:v3];
}

- (void)updateRecordingTime
{
  if (self->_recordingElapsedTime <= 30.0)
  {
    recordingElapsedTime = self->_recordingElapsedTime;
  }

  else
  {
    recordingElapsedTime = 30.0;
  }

  v11 = objc_alloc_init(NSDateComponentsFormatter);
  [v11 setUnitsStyle:0];
  [v11 setAllowedUnits:192];
  [v11 setZeroFormattingBehavior:0x10000];
  v4 = [v11 stringFromTimeInterval:(60 * (recordingElapsedTime / 60) - recordingElapsedTime + 30)];
  v5 = [v4 substringWithRange:{0, 1}];
  v6 = [v4 substringWithRange:{0, 2}];
  v7 = [v5 stringByAppendingString:v5];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(RecordingTimeDisplayView *)self->_recordingTimeDisplayView timerLabel];
    [v9 setText:v4];
  }

  else
  {
    v9 = [v5 stringByAppendingString:v4];
    v10 = [(RecordingTimeDisplayView *)self->_recordingTimeDisplayView timerLabel];
    [v10 setText:v9];
  }

  if (self->_recording && recordingElapsedTime == 30.0)
  {
    [(MessagesViewController *)self stopRecordingAndPlayPreview:1];
  }
}

- (id)retargetableSpringBehavior
{
  v2 = objc_alloc_init(UIViewSpringAnimationBehavior);

  return v2;
}

- (BOOL)shouldZoomWhileRecording
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (void)disableIdleTimer
{
  if (!self->_idleTimerAssertion)
  {
    v3 = +[ITIdleTimerState sharedInstance];
    v8 = 0;
    v4 = [v3 newAssertionToDisableIdleTimerForReason:@"RecordingAnimojiClip" error:&v8];
    v5 = v8;
    idleTimerAssertion = self->_idleTimerAssertion;
    self->_idleTimerAssertion = v4;

    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 localizedDescription];
        *buf = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] disableIdleTimer: Failed to disable idle timer with error %@", buf, 0xCu);
      }
    }
  }
}

- (void)restoreIdleTimer
{
  idleTimerAssertion = self->_idleTimerAssertion;
  if (idleTimerAssertion)
  {
    [(BSInvalidatable *)idleTimerAssertion invalidate];
    v4 = self->_idleTimerAssertion;
    self->_idleTimerAssertion = 0;
  }
}

- (void)recordingWillStart
{
  self->_recording = 1;
  self->_recordingElapsedTime = 0.0;
  self->_recordingStartTime = CFAbsoluteTimeGetCurrent();
  recordingDisableTimerBlock = self->_recordingDisableTimerBlock;
  if (recordingDisableTimerBlock)
  {
    recordingDisableTimerBlock[2]();
    v4 = self->_recordingDisableTimerBlock;
    self->_recordingDisableTimerBlock = 0;
  }

  [(MessagesViewController *)self disableIdleTimer];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    recordingStartTime = self->_recordingStartTime;
    *buf = 67109120;
    v13 = recordingStartTime;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] recordingWillStart: %d", buf, 8u);
  }

  [(MessagesViewController *)self setSingleAvatarMode:1 animated:1];
  v6 = +[NSUserDefaults standardUserDefaults];
  if ([v6 BOOLForKey:@"JFDefaults_ShouldLogFacetracking"])
  {
    videoLoggingFolder = self->_videoLoggingFolder;

    if (!videoLoggingFolder)
    {
      goto LABEL_9;
    }

    v6 = [(MessagesViewController *)self faceTrackingRecordingURL];
    WeakRetained = objc_loadWeakRetained(&self->_puppetView);
    [WeakRetained setFaceTrackingRecordingURL:v6];
  }

LABEL_9:
  v9 = objc_loadWeakRetained(&self->_puppetView);
  [v9 startRecording];

  if ([(MessagesViewController *)self shouldZoomWhileRecording])
  {
    v10 = [(MessagesViewController *)self retargetableSpringBehavior];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013CA8;
    v11[3] = &unk_100034788;
    v11[4] = self;
    [UIView _animateUsingSpringBehavior:v10 tracking:0 animations:v11 completion:0];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] recordingDidStart", buf, 2u);
  }
}

- (void)recordingDidFinish:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] recordingWillFinish", buf, 2u);
  }

  self->_recording = 0;
  if ([(MessagesViewController *)self shouldZoomWhileRecording])
  {
    v5 = [(MessagesViewController *)self retargetableSpringBehavior];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013F7C;
    v12[3] = &unk_100034788;
    v12[4] = self;
    [UIView _animateUsingSpringBehavior:v5 tracking:0 animations:v12 completion:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  [WeakRetained stopRecording];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] recordingDidFinish", buf, 2u);
  }

  [(MessagesViewController *)self setSingleAvatarMode:[(MessagesViewController *)self isExpanded] animated:1];
  [(MessagesViewController *)self restoreIdleTimer];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"JFDefaults_SaveLogVideosToCameraRoll"];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_puppetView);
    v10 = [v9 faceTrackingRecordingURL];

    if (v10)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100013FE0;
      v11[3] = &unk_100034D90;
      v11[4] = self;
      [PHPhotoLibrary requestAuthorization:v11];
    }
  }

  [(AVTUsageTrackingSession *)self->_usageTrackingSession didRecordVideo];
  if (v3)
  {
    [(MessagesViewController *)self playPreviewOnce];
    [(MessagesViewController *)self updateUIState:5 animated:1];
  }
}

- (BOOL)canPeelSticker
{
  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  if ([WeakRetained faceIsTracked] && !self->_recording)
  {
    v5 = objc_loadWeakRetained(&self->_puppetView);
    v4 = [v5 faceIsFullyActive] && !self->_isTransitioningBetweenLayouts && !self->_isMakingSticker && !self->_exportingMovie && self->_UIState == 3 && self->_arSessionState == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stickerImageUsingLargeSticker:(BOOL)a3
{
  if (a3)
  {
    [(MessagesViewController *)self defaultVideoExportDimensions];
    v5 = v4;
    v6 = +[UIScreen mainScreen];
    [v6 scale];
    v8 = v7;

    v9 = (v5 / v8);
    v10 = v8;
  }

  else
  {
    v9 = 375;
    v10 = 1.0;
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 objectForKey:@"JFDefaults_StickerExportWidth"];

  v13 = v9;
  if (v12)
  {
    v14 = +[NSUserDefaults standardUserDefaults];
    v13 = [v14 integerForKey:@"JFDefaults_StickerExportWidth"];
  }

  v15 = +[NSUserDefaults standardUserDefaults];
  v16 = [v15 objectForKey:@"JFDefaults_StickerExportHeight"];

  if (v16)
  {
    v17 = +[NSUserDefaults standardUserDefaults];
    v9 = [v17 integerForKey:@"JFDefaults_StickerExportHeight"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  *&v19 = v10;
  v20 = [WeakRetained snapshotWithSize:v13 scaleFactor:{v9, v19}];

  return v20;
}

- (id)stickerUsingLargeSticker:(BOOL)a3
{
  v4 = [(MessagesViewController *)self stickerImageUsingLargeSticker:a3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] stickerUsingLargeSticker  image: %@", buf, 0xCu);
  }

  v5 = UIImagePNGRepresentation(v4);
  v6 = [(NSURL *)self->_stickerFolder path];
  v7 = [NSString stringWithFormat:@"/View%d.png", CFAbsoluteTimeGetCurrent()];
  v8 = [v6 stringByAppendingString:v7];

  v9 = [NSURL fileURLWithPath:v8];
  [v5 writeToURL:v9 atomically:1];
  v10 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
  v11 = [AXUIAvatarUtilities descriptionForAvatarWithRecord:v10 includeVideoPrefix:0];

  v12 = [[MSSticker alloc] initWithContentsOfFileURL:v9 localizedDescription:v11 error:0];

  return v12;
}

- (id)puppetSnapshotWithContentMode:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  v6 = [WeakRetained snapshot];

  v7 = [UIImageView alloc];
  v8 = objc_loadWeakRetained(&self->_puppetView);
  [v8 frame];
  v9 = [v7 initWithFrame:?];

  [v9 setImage:v6];
  [v9 setContentMode:a3];

  return v9;
}

- (void)performWithFadeAnimation:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100014990;
    v7[3] = &unk_100034A48;
    v8 = v5;
    [UIView animateWithDuration:v7 animations:0.2];
  }

  else
  {
    v5[2](v5);
  }
}

- (void)fadeIn:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014A38;
  v5[3] = &unk_100034788;
  v6 = a3;
  v4 = v6;
  [(MessagesViewController *)self performWithFadeAnimation:v5 enabled:1];
}

- (void)fadeOut:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014ADC;
  v5[3] = &unk_100034788;
  v6 = a3;
  v4 = v6;
  [(MessagesViewController *)self performWithFadeAnimation:v5 enabled:1];
}

- (void)showUserInfoLabelWithText:(id)a3
{
  v5 = a3;
  if (!self->_displaysLaunchScreen && self->_UIState != 2)
  {
    self->_userInfoAlpha = 1.0;
    objc_storeStrong(&self->_userInfoText, a3);
    if (!self->_userInfoIsBeingOverridden)
    {
      [(AVTUserInfoView *)self->_userInfoView setText:v5];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100014BF4;
      v6[3] = &unk_100034788;
      v6[4] = self;
      [UIView animateWithDuration:v6 animations:0.65];
    }
  }
}

- (void)hideUserInfoLabelWithDuration:(double)a3
{
  self->_userInfoAlpha = 0.0;
  userInfoText = self->_userInfoText;
  self->_userInfoText = 0;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014CCC;
  v6[3] = &unk_100034788;
  v6[4] = self;
  [UIView animateWithDuration:v6 animations:0 completion:a3];
}

- (void)overrideUserInfoLabelStateWithText:(id)a3 alpha:(double)a4
{
  v6 = a3;
  self->_userInfoIsBeingOverridden = 1;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100014DB8;
  v11 = &unk_100034AE8;
  v12 = self;
  v13 = v6;
  v7 = v6;
  [UIView performWithoutAnimation:&v8];
  [(AVTUserInfoView *)self->_userInfoView setAlpha:a4, v8, v9, v10, v11, v12];
}

- (void)stopOverridingUserInfoLabelState:(BOOL)a3
{
  self->_userInfoIsBeingOverridden = 0;
  if (a3 && self->_userInfoAlpha > 0.0 && self->_userInfoText)
  {
    [(AVTUserInfoView *)self->_userInfoView setText:?];
    userInfoAlpha = self->_userInfoAlpha;
    userInfoView = self->_userInfoView;

    [(AVTUserInfoView *)userInfoView setAlpha:userInfoAlpha];
  }
}

- (id)setRestorableValue:(id)a3 forKeyPath:(id)a4 onViews:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100015044;
  v22[3] = &unk_100034DB8;
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v23 = v10;
  v11 = v8;
  v24 = v11;
  v25 = v7;
  v12 = v7;
  [v9 enumerateObjectsUsingBlock:v22];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000150C0;
  v18[3] = &unk_100034800;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = objc_retainBlock(v18);

  return v16;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  if ([v7 isEqualToString:@"faceIsTracked"])
  {
    v8 = +[NSThread isMainThread];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000152DC;
    v11[3] = &unk_100034788;
    v11[4] = self;
    v9 = objc_retainBlock(v11);
    v10 = v9;
    if (v8)
    {
      (v9[2])(v9);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, v9);
    }
  }

  else if ([v7 isEqualToString:@"state"])
  {
    [(MessagesViewController *)self updateARSessionStateResettingState:1];
  }
}

- (void)startTrackingLostTimer
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] startTrackingLostTimer", buf, 2u);
  }

  if (self->_arSessionState)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015684;
    block[3] = &unk_100034788;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)startTrackingStartTimerWithCounter:(unint64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] startTrackingStartTimer", buf, 2u);
  }

  if (self->_arSessionState)
  {
    [(NSTimer *)self->_trackingStartTimer invalidate];
    trackingStartTimer = self->_trackingStartTimer;
    self->_trackingStartTimer = 0;

    self->_trackingStartCounter = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100015954;
    v8[3] = &unk_100034E08;
    v8[4] = self;
    v8[5] = a3;
    v6 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v8 block:1.0];
    v7 = self->_trackingStartTimer;
    self->_trackingStartTimer = v6;
  }
}

- (void)changeUserInfoLabelForTrackingState
{
  arSessionState = self->_arSessionState;
  if (arSessionState > 2)
  {
    if (arSessionState != 5)
    {
      if (arSessionState != 3)
      {
        return;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] JFARSessionInterrupted", v11, 2u);
      }

      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"sJFARSessionWasInterrupted";
      goto LABEL_12;
    }
  }

  else if (arSessionState != 1)
  {
    if (arSessionState != 2)
    {
      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] JFARSessionFailed", buf, 2u);
    }

    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"sJFARSessionFailed";
LABEL_12:
    v7 = [v4 localizedStringForKey:v6 value:&stru_100035080 table:@"JFStrings"];
    [(MessagesViewController *)self showUserInfoLabelWithText:v7];

    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] JFARSessionUndefined || JFARSessionLost", v9, 2u);
  }

  v8 = [(MessagesViewController *)self trackingLostReason];
  [(MessagesViewController *)self showUserInfoLabelWithText:v8];

  [(MessagesViewController *)self checkLightingAndObscuredSensorAfterTrackingLost];
}

- (id)trackingLostReason
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] != 1)
  {

    goto LABEL_5;
  }

  v4 = [(MessagesViewController *)self parentMessagesViewController];
  v5 = [v4 currentOrientation];

  if (v5 != 2)
  {
LABEL_5:
    WeakRetained = objc_loadWeakRetained(&self->_puppetView);
    v11 = [WeakRetained isSensorCovered];

    if (v11)
    {
      v12 = +[NSBundle mainBundle];
      v6 = v12;
      v13 = @"sJFCameraCovered";
    }

    else
    {
      v14 = objc_loadWeakRetained(&self->_puppetView);
      v15 = [v14 captureImageIsTooDark];

      v12 = +[NSBundle mainBundle];
      v6 = v12;
      if (v15)
      {
        v13 = @"sJFLowLight";
      }

      else
      {
        v13 = @"sJFLookAtCameraMessage";
      }
    }

    v9 = [v12 localizedStringForKey:v13 value:&stru_100035080 table:@"JFStrings"];
    goto LABEL_11;
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"sJFUpsideDownFormat" value:&stru_100035080 table:@"JFStrings"];
  v8 = MGCopyAnswer();
  v9 = [NSString localizedStringWithFormat:v7, v8];

LABEL_11:

  return v9;
}

- (void)checkLightingAndObscuredSensorAfterTrackingLost
{
  if (self->_arSessionState)
  {
    v3 = [(AVTUserInfoView *)self->_userInfoView text];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"sJFLowLight" value:&stru_100035080 table:@"JFStrings"];
    if (([v3 isEqualToString:v5] & 1) == 0)
    {
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"sJFCameraCovered" value:&stru_100035080 table:@"JFStrings"];
      if (([v3 isEqualToString:v7] & 1) == 0)
      {
        v8 = +[NSBundle mainBundle];
        v9 = [v8 localizedStringForKey:@"sJFLookAtCameraMessage" value:&stru_100035080 table:@"JFStrings"];
        if (([v3 isEqualToString:v9] & 1) == 0)
        {
          v25 = +[NSBundle mainBundle];
          [v25 localizedStringForKey:@"sJFUpsideDownFormat" value:&stru_100035080 table:@"JFStrings"];
          v21 = v26 = v8;
          v22 = MGCopyAnswer();
          v23 = [NSString localizedStringWithFormat:v21, v22];
          v24 = [v3 isEqualToString:v23];

          if ((v24 & 1) == 0)
          {
            goto LABEL_27;
          }

LABEL_8:
          v10 = [(MessagesViewController *)self trackingLostReason];
          if ([v3 isEqualToString:v10])
          {
LABEL_26:
            [(MessagesViewController *)self performSelector:"checkLightingAndObscuredSensorAfterTrackingLost" withObject:0 afterDelay:1.0];

LABEL_27:
            return;
          }

          v11 = +[UIDevice currentDevice];
          if ([v11 userInterfaceIdiom] == 1)
          {
            v12 = [(MessagesViewController *)self parentMessagesViewController];
            v13 = [v12 currentOrientation];

            if (v13 == 2)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v30 = 0;
                v14 = "[Jellyfish] showUserInfoLabelWithText:USER_INFO_UPSIDE_DOWN";
                v15 = &v30;
LABEL_24:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
                goto LABEL_25;
              }

              goto LABEL_25;
            }
          }

          else
          {
          }

          WeakRetained = objc_loadWeakRetained(&self->_puppetView);
          v17 = [WeakRetained captureImageIsTooDark];

          if (v17)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v29 = 0;
              v14 = "[Jellyfish] showUserInfoLabelWithText:USER_INFO_LOW_LIGHT";
              v15 = &v29;
              goto LABEL_24;
            }
          }

          else
          {
            v18 = objc_loadWeakRetained(&self->_puppetView);
            v19 = [v18 isSensorCovered];

            v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              if (v20)
              {
                v28 = 0;
                v14 = "[Jellyfish] showUserInfoLabelWithText:USER_INFO_CAMERA_COVERED";
                v15 = &v28;
                goto LABEL_24;
              }
            }

            else if (v20)
            {
              *buf = 0;
              v14 = "[Jellyfish] showUserInfoLabelWithText:USER_INFO_LOOK_AT_CAMERA";
              v15 = buf;
              goto LABEL_24;
            }
          }

LABEL_25:
          [(MessagesViewController *)self showUserInfoLabelWithText:v10];
          goto LABEL_26;
        }
      }
    }

    goto LABEL_8;
  }
}

- (void)checkLightingAndObscuredSensorWhileTracking
{
  [(NSTimer *)self->_lightingCheckTimer invalidate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016248;
  v5[3] = &unk_100034D68;
  v5[4] = self;
  v3 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v5 block:1.0];
  lightingCheckTimer = self->_lightingCheckTimer;
  self->_lightingCheckTimer = v3;
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] willBecomeActiveWithConversation", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = MessagesViewController;
  [(MessagesViewController *)&v5 willBecomeActiveWithConversation:v4];
  [STDynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:@"com.apple.Jellyfish"];
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] didBecomeActiveWithConversation", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = MessagesViewController;
  [(MessagesViewController *)&v6 didBecomeActiveWithConversation:v4];
  conversation = self->_conversation;
  self->_conversation = v4;

  [(MessagesViewController *)self startObservingBaseMessagesNotifications];
}

- (void)willResignActiveWithConversation:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] willResignActiveWithConversation", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  [WeakRetained setFaceTrackingPaused:1];

  [(AVTUsageTrackingSession *)self->_usageTrackingSession didPauseFaceTracking];
  [(MessagesViewController *)self restoreIdleTimer];
  [(MessagesViewController *)self endObservingFaceTrackingIfNecessary];
  [(MessagesViewController *)self stopObservingBaseMessagesNotifications];
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    displaysLaunchScreen = self->_displaysLaunchScreen;
    capturedSnapshotMetrics = self->_capturedSnapshotMetrics;
    isDisappearing = self->_isDisappearing;
    *buf = 67109632;
    *v31 = displaysLaunchScreen;
    *&v31[4] = 1024;
    *&v31[6] = capturedSnapshotMetrics;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = isDisappearing;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] updateSnapshotWithCompletionBlock, splash %i; metric %i; disappearing %i", buf, 0x14u);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000079EC;
  v28 = sub_1000079FC;
  v8 = [(MessagesViewController *)self parentMessagesViewController];
  v29 = [v8 emptySnapshotImage];

  if (!self->_displaysLaunchScreen && self->_capturedSnapshotMetrics && self->_isDisappearing)
  {
    v9 = [(AVTRecordingCarouselController *)self->_avatarListController focusedRecord];
    v10 = [v9 identifier];
    v11 = v10;
    v12 = @"mouse";
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromCGRect(self->_snapshotBounds);
      v16 = NSStringFromCGRect(self->_avatarControllerFrame);
      v17 = [(MessagesViewController *)self view];
      [v17 bounds];
      v18 = NSStringFromCGRect(v39);
      v19 = [(AVTRecordingCarouselController *)self->_avatarListController view];
      [v19 frame];
      v20 = NSStringFromCGRect(v40);
      *buf = 138413314;
      *v31 = v13;
      *&v31[8] = 2112;
      v32 = v15;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] updateSnapshot: taking snapshot of animoji %@, bounds %@; controllerFrame %@ self bounds %@, self.controllerFrame %@", buf, 0x34u);
    }

    v21 = [(AVTRecordingCarouselController *)self->_avatarListController snapshotProviderFocusedOnRecordWithIdentifier:v13 size:self->_avatarControllerFrame.size.width, self->_avatarControllerFrame.size.height];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100016BB0;
    v23[3] = &unk_100034E30;
    v23[4] = self;
    v23[5] = &v24;
    [v21 snapshotInBlock:v23];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v25[5];
    *buf = 138412290;
    *v31 = v22;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] updateSnapshot: with image %@", buf, 0xCu);
  }

  v4[2](v4, v25[5]);
  _Block_object_dispose(&v24, 8);
}

- (BOOL)isLandcapeTrapOverlayShown
{
  v2 = [(MessagesViewController *)self parentMessagesViewController];
  v3 = [v2 isLandcapeTrapOverlayShown];

  return v3;
}

- (BOOL)isLandscapeMode
{
  v2 = [(MessagesViewController *)self parentMessagesViewController];
  v3 = [v2 isLandscapeMode];

  return v3;
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v5 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] imagePickerController", buf, 2u);
  }

  v6 = [v5 objectForKeyedSubscript:UIImagePickerControllerPHAsset];
  v7 = +[PHImageManager defaultManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016E70;
  v8[3] = &unk_100034E58;
  v8[4] = self;
  [v7 requestAVAssetForVideo:v6 options:0 resultHandler:v8];
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] imagePickerControllerDidCancel", v4, 2u);
  }

  [(MessagesViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)faceTrackingRecordingURL
{
  v3 = NSTemporaryDirectory();
  v4 = [NSString stringWithFormat:@"/EmojiMovieLogFacetracking%d.mov", self->_recordingStartTime];
  v5 = [v3 stringByAppendingPathComponent:v4];
  v6 = [NSURL fileURLWithPath:v5];

  return v6;
}

- (void)pauseFaceTrackingWithReason:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] pauseFaceTrackingWithReason: %@", &v10, 0xCu);
  }

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:0];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setEnabled:0];
  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setEnabled:0];
  if (!self->_resumeTrackingTapGestureRecognizer)
  {
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleResumeTrackingTap:"];
    resumeTrackingTapGestureRecognizer = self->_resumeTrackingTapGestureRecognizer;
    self->_resumeTrackingTapGestureRecognizer = v5;

    [(UIView *)self->_carouselView addGestureRecognizer:self->_resumeTrackingTapGestureRecognizer];
  }

  WeakRetained = objc_loadWeakRetained(&self->_puppetView);
  [WeakRetained setFaceTrackingPaused:1];

  [(AVTUsageTrackingSession *)self->_usageTrackingSession didPauseFaceTracking];
  self->_arSessionState = 4;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"sJFTrackingPausedMessage" value:&stru_100035080 table:@"JFStrings"];
  [(MessagesViewController *)self showUserInfoLabelWithText:v9];
}

@end