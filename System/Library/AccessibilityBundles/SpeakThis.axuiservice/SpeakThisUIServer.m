@interface SpeakThisUIServer
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(unint64_t)a3;
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)a3;
+ (id)sharedInstance;
- (BOOL)highlightSentences;
- (BOOL)highlightWords;
- (BOOL)isInSpeakUnderFingerModeWithEventProcessor:(id)a3;
- (BOOL)isSpeakingOrPaused;
- (CGPoint)convertPointToViewControllerSpace:(CGPoint)a3;
- (CGRect)speakThisUIFrameWithEventProcessor:(id)a3;
- (SpeakThisUIServer)init;
- (_NSRange)currentSentenceRange;
- (_NSRange)currentWordRange;
- (double)normalizeSpeed:(double)a3;
- (double)speakingRateAsMultiplier;
- (id)_assertionAttributesForFetchingMoreContent;
- (id)_assertionAttributesForStayingAlive;
- (id)_convertAXValueSceneReferenceRects:(id)a3 toView:(id)a4 fromElement:(id)a5;
- (id)_fetchNextElementsAndReturnContentStringUsingAppElement:(id)a3 startingWithPageTurnElement:(BOOL)a4 shouldScrollOpaqueProviderIfNecessary:(BOOL)a5 deviceOrientation:(int64_t)a6;
- (id)_handlePauseSpeaking;
- (id)_handleResumeSpeaking;
- (id)_handleSpeakFaster;
- (id)_handleSpeakSlower;
- (id)_handleToggleSpeaking;
- (id)_handleUnknownMessageIdentifier:(unint64_t)a3;
- (id)_handleUpdateSpeakingRate:(id)a3;
- (id)_speakingRangeForContentItem:(id)a3 withContentItemLength:(unint64_t)a4 andPreviousContentStringLength:(unint64_t)a5;
- (id)_systemApp;
- (id)_windowSceneForActiveDisplay;
- (id)currentAppTitle;
- (id)currentVoiceIdentifier;
- (id)mainDisplayWindow;
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (id)windowSceneIdentifierForWindowScene:(id)a3;
- (int64_t)_stsErrorCodeForOratorErrorCode:(int64_t)a3;
- (unint64_t)_findIndexOfRange:(_NSRange)a3;
- (unint64_t)speakFingerState;
- (void)_addContentViewControllerForWindowScene:(id)a3;
- (void)_appendContentFromElementsAndStrings:(id)a3 toContentString:(id)a4 speakingRanges:(id)a5 startWithPageTurnElement:(BOOL)a6 deviceOrientation:(int64_t)a7;
- (void)_clearAllAssertions;
- (void)_clearAssertions:(id)a3;
- (void)_didToggleHighlightContentSetting;
- (void)_didToggleSpeakScreenSetting;
- (void)_fetchContentStartingWithPageTurnElement:(BOOL)a3 shouldRefreshContent:(BOOL)a4 completion:(id)a5;
- (void)_fetchNextSpeakThisElementsAndScrollOpaqueProviderIfNecessary:(BOOL)a3 withCompletion:(id)a4;
- (void)_fetchTextRectsAndApplyHighlightToContent:(id)a3 withRange:(_NSRange)a4 elementRange:(id)a5 updateSentences:(BOOL)a6 scrollWords:(BOOL)a7 scrollSentences:(BOOL)a8;
- (void)_frontmostAppMayHaveChanged:(BOOL)a3;
- (void)_giveUpWaitingForPageToScroll;
- (void)_handleFastForward:(id)a3;
- (void)_handleFinishShowingUI;
- (void)_handleHideUI;
- (void)_handleIdleTimerReset;
- (void)_handleLoadSpeakUnderfingerUI;
- (void)_handleLoadUIAtAppPoint:(id)a3;
- (void)_handleLockButtonPress;
- (void)_handleNewPage;
- (void)_handleNoSpeakableContent:(id)a3;
- (void)_handleRewind:(id)a3;
- (void)_handleSpeakThisWithOptions:(int64_t)a3 appPoint:(id)a4 completion:(id)a5;
- (void)_handleSpeakingStopped;
- (void)_initializeUIIfNeccessary;
- (void)_kbFrameWillUpdate:(id)a3 withCompletion:(id)a4;
- (void)_pageDidScroll:(id)a3;
- (void)_readNextPageIfApplicableInForwardDirection:(BOOL)a3 completion:(id)a4;
- (void)_reallyHideUI;
- (void)_removeViewControllerForWindowScene:(id)a3;
- (void)_speakFingerStateChanged;
- (void)_startScreenLockDetector;
- (void)_stopScreenLockDetector;
- (void)_updateCurrentAppWithPoint:(id)a3 bundleID:(id)a4 sceneID:(id)a5 rootElementAccessibilityIdentifier:(id)a6;
- (void)_updateForContinuityStateChange;
- (void)_updateIsHighlightVisible;
- (void)_updateVCWithLatestHighlightColors;
- (void)_updateViewControllerForWindowScene:(id)a3 completion:(id)a4;
- (void)activeDisplayChangedWithContext:(id)a3;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3;
- (void)dealloc;
- (void)exitSpeakFingerModeWithEventProcessor:(id)a3;
- (void)externalDisplaySceneConnected:(id)a3;
- (void)externalDisplaySceneDisconnected:(id)a3;
- (void)fetchContentStringStartingWithPageTurnForUnitTest:(id)a3;
- (void)keyboardFocusChangedForSceneIdentifier:(id)a3;
- (void)orator:(id)a3 willSpeakRange:(_NSRange)a4 ofContent:(id)a5;
- (void)oratorDidCancelSpeaking:(id)a3;
- (void)oratorDidFinishSpeaking:(id)a3;
- (void)oratorDidPauseSpeaking:(id)a3;
- (void)oratorDidResumeSpeaking:(id)a3;
- (void)oratorDidStartSpeaking:(id)a3;
- (void)playButtonPressedForBundleID:(id)a3 sceneID:(id)a4 rootAccessibilityElementIdentifier:(id)a5;
- (void)processMessageAsynchronously:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 completion:(id)a6;
- (void)speakElementAtPoint:(CGPoint)a3 withEventProcessor:(id)a4;
- (void)speakUnderFingerButtonPressed;
- (void)speedButtonPressed;
- (void)speedButtonSelectionPressed:(double)a3;
- (void)startNewReadAllForBundleID:(id)a3 sceneID:(id)a4 rootAccessibilityElementIdentifier:(id)a5;
- (void)startNewReadAllFromGesture;
- (void)stopButtonPressed;
- (void)stopSpeakFingerButtonPressed;
- (void)updateSpeakScreenUI;
@end

@implementation SpeakThisUIServer

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32D0;
  block[3] = &unk_30A78;
  block[4] = a1;
  if (qword_384F0 != -1)
  {
    dispatch_once(&qword_384F0, block);
  }

  v2 = qword_384E8;

  return v2;
}

- (SpeakThisUIServer)init
{
  v72.receiver = self;
  v72.super_class = SpeakThisUIServer;
  v2 = [(SpeakThisUIServer *)&v72 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXOrator);
    orator = v2->_orator;
    v2->_orator = v3;

    [(AXOrator *)v2->_orator setDelegate:v2];
    v5 = objc_alloc_init(SpeakThisEventProcessor);
    [(SpeakThisEventProcessor *)v5 setDelegate:v2];
    [(SpeakThisUIServer *)v2 setEventProcessor:v5];
    v6 = +[NSMutableDictionary dictionary];
    speakThisUIViewControllers = v2->_speakThisUIViewControllers;
    v2->_speakThisUIViewControllers = v6;

    v8 = +[NSMutableSet set];
    externalScenes = v2->_externalScenes;
    v2->_externalScenes = v8;

    v10 = objc_opt_new();
    focusManager = v2->_focusManager;
    v2->_focusManager = v10;

    v12 = +[SpeakThisUIStateManager sharedInstance];
    stateManager = v2->_stateManager;
    v2->_stateManager = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("speakscreen-fetch-queue", v14);
    fetchDispatchQueue = v2->_fetchDispatchQueue;
    v2->_fetchDispatchQueue = v15;

    v17 = objc_alloc_init(NSMutableArray);
    assertionsForStayingAlive = v2->_assertionsForStayingAlive;
    v2->_assertionsForStayingAlive = v17;

    v19 = objc_alloc_init(NSMutableArray);
    assertionsForFetchingContent = v2->_assertionsForFetchingContent;
    v2->_assertionsForFetchingContent = v19;

    v21 = objc_alloc_init(NSMutableArray);
    sentenceRanges = v2->_sentenceRanges;
    v2->_sentenceRanges = v21;

    v2->_currentSentenceRange = xmmword_23190;
    currentSentenceElement = v2->_currentSentenceElement;
    v2->_currentSentenceElement = 0;

    [(SpeakThisUIServer *)v2 _didToggleHighlightContentSetting];
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v2 selector:"_didToggleSpeakScreenSetting" name:kAXSSpeakThisEnabledNotification object:0];
    [v24 addObserver:v2 selector:"_didToggleHighlightContentSetting" name:kAXSQuickSpeakHighlightTextEnabledNotification object:0];
    objc_initWeak(&location, v2);
    v25 = +[AXSpringBoardServer server];
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_3B08;
    v69[3] = &unk_30AA0;
    v26 = v2;
    v70 = v26;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_3B1C;
    v67[3] = &unk_30AC8;
    objc_copyWeak(&v68, &location);
    [v25 registerSpringBoardActionHandler:v69 withIdentifierCallback:v67];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v26, sub_3B78, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v28 = +[AXSettings sharedInstance];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_3B98;
    v65[3] = &unk_30A30;
    objc_copyWeak(&v66, &location);
    v29 = objc_loadWeakRetained(&location);
    [v28 registerUpdateBlock:v65 forRetrieveSelector:"quickSpeakWordHighlightColor" withListener:v29];

    objc_destroyWeak(&v66);
    v30 = +[AXSettings sharedInstance];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_3BD8;
    v63[3] = &unk_30A30;
    objc_copyWeak(&v64, &location);
    v31 = objc_loadWeakRetained(&location);
    [v30 registerUpdateBlock:v63 forRetrieveSelector:"quickSpeakSentenceHighlightColor" withListener:v31];

    objc_destroyWeak(&v64);
    v32 = +[AXSettings sharedInstance];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_3C18;
    v61[3] = &unk_30A30;
    objc_copyWeak(&v62, &location);
    v33 = objc_loadWeakRetained(&location);
    [v32 registerUpdateBlock:v61 forRetrieveSelector:"speechControllerLongPressAction" withListener:v33];

    objc_destroyWeak(&v62);
    v34 = +[AXSettings sharedInstance];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_3C58;
    v59[3] = &unk_30A30;
    objc_copyWeak(&v60, &location);
    v35 = objc_loadWeakRetained(&location);
    [v34 registerUpdateBlock:v59 forRetrieveSelector:"speechControllerDoubleTapAction" withListener:v35];

    objc_destroyWeak(&v60);
    [AXUIElement applyElementAttributeCacheScheme:4];
    v57[1] = _NSConcreteStackBlock;
    v57[2] = 3221225472;
    v57[3] = sub_3C98;
    v57[4] = &unk_30AF0;
    v36 = v26;
    v58 = v36;
    AXPerformBlockAsynchronouslyOnMainThread();
    v55[1] = _NSConcreteStackBlock;
    v55[2] = 3221225472;
    v55[3] = sub_3CA4;
    v55[4] = &unk_30B18;
    objc_copyWeak(v57, &location);
    v37 = v36;
    v56 = v37;
    AXPerformBlockAsynchronouslyOnMainThread();
    _AXSSpeakThisEnabled();
    [(SpeakThisUIServer *)v37 _didToggleSpeakScreenSetting];
    v38 = objc_alloc_init(AXUpdateElementVisualsCoalescer);
    [v38 setThreshold:0.2];
    [v38 setProgressInterval:0.01];
    v51 = _NSConcreteStackBlock;
    v52 = 3221225472;
    v53 = sub_3E64;
    v54 = &unk_30A30;
    objc_copyWeak(v55, &location);
    v39 = objc_retainBlock(&v51);
    [v38 setUpdateVisualsSequenceDidBeginHandler:{v39, v51, v52, v53, v54}];
    [v38 setUpdateVisualsSequenceInProgressHandler:v39];
    [v38 setUpdateVisualsSequenceDidFinishHandler:v39];
    [(SpeakThisUIServer *)v37 setUpdateElementVisualsCoalescer:v38];
    v40 = dispatch_queue_create("com.apple.accessibility.speakScreen.update_listeners", 0);
    speakScreenListenersUpdateQueue = v37->_speakScreenListenersUpdateQueue;
    v37->_speakScreenListenersUpdateQueue = v40;

    v42 = +[NSMutableSet set];
    speakScreenListeners = v37->_speakScreenListeners;
    v37->_speakScreenListeners = v42;

    v44 = +[NSMutableSet set];
    suspendedSpeakScreenListeners = v37->_suspendedSpeakScreenListeners;
    v37->_suspendedSpeakScreenListeners = v44;

    v46 = objc_alloc_init(_TtC9SpeakThis20SpeakScreenUIManager);
    speakScreenHudUIManager = v37->_speakScreenHudUIManager;
    v37->_speakScreenHudUIManager = v46;

    [(SpeakThisUIServer *)v37 _updateForContinuityStateChange];
    v48 = dispatch_queue_create("Serial EventMonitor queue", 0);
    queue = v37->_queue;
    v37->_queue = v48;

    objc_destroyWeak(v55);
    objc_destroyWeak(v57);

    objc_destroyWeak(&v68);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(SpeakThisUIServer *)self _observeNotifications:0];
  [(AXOrator *)self->_orator setDelegate:0];
  v3 = +[AXSpringBoardServer server];
  v4 = [(SpeakThisUIServer *)self springBoardActionHandlerId];
  [v3 removeActionHandler:v4];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(SpeakThisUIServer *)self _clearAllAssertions];
  v6 = [(SpeakThisUIServer *)self hitTestCategoryAssertion];
  [v6 invalidate];

  v7.receiver = self;
  v7.super_class = SpeakThisUIServer;
  [(SpeakThisUIServer *)&v7 dealloc];
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = AXLogSpeakScreen();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 138412802;
    v18 = v9;
    v19 = 2048;
    v20 = a4;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "message: %@, identifier: %luu, client: %@", &v17, 0x20u);
  }

  if (a4 <= 8)
  {
    if (a4 <= 3)
    {
      if (a4 == 2)
      {
        v12 = [(SpeakThisUIServer *)self _handlePauseSpeaking];
        goto LABEL_28;
      }

      if (a4 == 3)
      {
        v12 = [(SpeakThisUIServer *)self _handleResumeSpeaking];
        goto LABEL_28;
      }
    }

    else
    {
      switch(a4)
      {
        case 4uLL:
          v12 = [(SpeakThisUIServer *)self _handleSpeakFaster];
          goto LABEL_28;
        case 5uLL:
          v12 = [(SpeakThisUIServer *)self _handleSpeakSlower];
          goto LABEL_28;
        case 8uLL:
          v12 = [(SpeakThisUIServer *)self _handleToggleSpeaking];
LABEL_28:
          v13 = v12;
          goto LABEL_32;
      }
    }

LABEL_27:
    v12 = [(SpeakThisUIServer *)self _handleUnknownMessageIdentifier:a4];
    goto LABEL_28;
  }

  if (a4 <= 10)
  {
    if (a4 == 9)
    {
      [(SpeakThisUIServer *)self _handleHideUI];
    }

    else
    {
      [(SpeakThisUIServer *)self _handleLoadSpeakUnderfingerUI];
      v14 = [(SpeakThisUIServer *)self eventProcessor];
      [v14 beginHandlingHIDEventsForReason:@"Speech controller was set to always be on by an external client"];

      [(SpeakThisUIServer *)self _startScreenLockDetector];
    }
  }

  else
  {
    if (a4 != 11)
    {
      if (a4 == 13)
      {
        v12 = [(SpeakThisUIServer *)self _handleUpdateSpeakingRate:v9];
        goto LABEL_28;
      }

      if (a4 == 14)
      {
        v13 = &off_31DB8;
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (([(AXOrator *)self->_orator isSpeaking]& 1) != 0 || ([(AXOrator *)self->_orator isPaused]& 1) != 0)
    {
      [(SpeakThisUIServer *)self _handleUpdateUIForSpeakUnderFingerSettingsChange];
    }

    else
    {
      [(SpeakThisUIServer *)self _handleHideUI];
    }

    [(SpeakThisUIServer *)self _stopScreenLockDetector];
    v15 = [(SpeakThisUIServer *)self eventProcessor];
    [v15 endHandlingHIDEventsForReason:@"Speech controller was set to always be on by an external client"];
  }

  v13 = 0;
LABEL_32:

  return v13;
}

- (void)processMessageAsynchronously:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = AXLogSpeakScreen();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v60 = v10;
    v61 = 2048;
    v62 = a4;
    v63 = 2112;
    v64 = v11;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "message: %@, identifier: %luu, client: %@", buf, 0x20u);
  }

  v14 = STSMessageKeyUUID;
  v15 = [v10 objectForKeyedSubscript:STSMessageKeyUUID];
  if (a4 > 6)
  {
    if (a4 == 7)
    {
      [(SpeakThisUIServer *)self _handleRewind:v12];
    }

    else if (a4 == 12)
    {
      [(SpeakThisUIServer *)self _kbFrameWillUpdate:v10 withCompletion:v12];
    }
  }

  else if (a4 == 1)
  {
    [(SpeakThisUIServer *)self setRootElementAccessibilityIdentifier:0];
    [(SpeakThisUIServer *)self setSceneIdentifier:0];
    v16 = STSMessageKeyAppPointX;
    v17 = [v10 objectForKeyedSubscript:STSMessageKeyAppPointX];
    if (v17 && (v18 = v17, v19 = STSMessageKeyAppPointY, [v10 objectForKeyedSubscript:STSMessageKeyAppPointY], v20 = objc_claimAutoreleasedReturnValue(), v20, v18, v20))
    {
      v21 = [v10 objectForKeyedSubscript:v16];
      [v21 doubleValue];
      v23 = v22;
      v24 = [v10 objectForKeyedSubscript:v19];
      [v24 doubleValue];
      v26 = v25;

      v27 = [NSValue valueWithCGPoint:v23, v26];
    }

    else
    {
      v27 = 0;
    }

    v28 = STSMessageKeyBundleID;
    v29 = [v10 objectForKeyedSubscript:STSMessageKeyBundleID];

    if (v29)
    {
      v30 = [v10 objectForKeyedSubscript:v28];
    }

    else
    {
      v30 = 0;
    }

    v31 = STSMessageKeySceneID;
    v32 = [v10 objectForKeyedSubscript:STSMessageKeySceneID];

    if (v32)
    {
      v33 = [v10 objectForKeyedSubscript:v31];
      [(SpeakThisUIServer *)self setSceneIdentifier:v33];
    }

    v34 = STSMessageKeyRootElementAccessibilityIdentifier;
    v35 = [v10 objectForKeyedSubscript:STSMessageKeyRootElementAccessibilityIdentifier];

    if (v35)
    {
      v36 = [v10 objectForKeyedSubscript:v34];
      [(SpeakThisUIServer *)self setRootElementAccessibilityIdentifier:v36];
    }

    v37 = +[AXSettings sharedInstance];
    v38 = [v37 showSpeechController];

    if ((v38 & 1) == 0)
    {
      v39 = [(SpeakThisUIServer *)self stateManager];
      [v39 setInTabMode:0];

      [(SpeakThisUIServer *)self updateSpeakScreenUI];
    }

    v40 = [(SpeakThisUIServer *)self sceneIdentifier];
    v41 = [(SpeakThisUIServer *)self rootElementAccessibilityIdentifier];
    v52 = v30;
    [(SpeakThisUIServer *)self _updateCurrentAppWithPoint:v27 bundleID:v30 sceneID:v40 rootElementAccessibilityIdentifier:v41];

    v42 = STSMessageKeyOptions;
    v43 = [v10 objectForKeyedSubscript:STSMessageKeyOptions];
    v44 = [v43 integerValue];

    if ((v44 & 0x30) == 0 && !self->_viewController)
    {
      [(SpeakThisUIServer *)self _handleLoadUIAtAppPoint:v27];
    }

    if (self->_currentApp)
    {
      v45 = [v10 objectForKeyedSubscript:v42];
      v46 = [v45 integerValue];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_4BA8;
      v53[3] = &unk_30B80;
      v54 = v11;
      v55 = v15;
      v56 = 1;
      [(SpeakThisUIServer *)self _handleSpeakThisWithOptions:v46 appPoint:v27 completion:v53];

      v47 = v54;
    }

    else
    {
      v48 = AXLogSpeakScreen();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "Could not find app/scene/view, returning without speaking", buf, 2u);
      }

      v57[0] = STSMessageReplyKeyErrorCode;
      v57[1] = v14;
      v49 = &stru_31408;
      if (v15)
      {
        v49 = v15;
      }

      v58[0] = &off_31C98;
      v58[1] = v49;
      v47 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
      v50 = [AXUIClientMessenger clientMessengerWithIdentifier:v11];
      v51 = +[AXAccessQueue mainAccessQueue];
      [v50 sendAsynchronousMessage:v47 withIdentifier:1 targetAccessQueue:v51 completion:0];
    }

    if (v12)
    {
      v12[2](v12, &__NSDictionary0__struct, 0);
    }
  }

  else if (a4 == 6)
  {
    [(SpeakThisUIServer *)self _handleFastForward:v12];
  }
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)a3
{
  if (((a3 - 10) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return @"com.apple.accessibility.SpeakThisServices";
  }

  else
  {
    return 0;
  }
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(unint64_t)a3
{
  if (a3 == 10)
  {
    v5 = [NSSet setWithArray:&off_31DA0, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = AXLogSpeakScreen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Connection will be interrupted for %@.", &v5, 0xCu);
  }
}

- (void)fetchContentStringStartingWithPageTurnForUnitTest:(id)a3
{
  v4 = a3;
  [(SpeakThisUIServer *)self _updateCurrentAppWithPoint:0 bundleID:0 sceneID:0 rootElementAccessibilityIdentifier:0];
  [(SpeakThisUIServer *)self _fetchContentStartingWithPageTurnElement:1 shouldRefreshContent:1 completion:v4];
}

- (void)_handleLockButtonPress
{
  if (!self->_viewController)
  {
    [(SpeakThisUIServer *)self stopButtonPressed];
  }

  [(SpeakThisUIServer *)self setIdleTimerDisabled:0];
  self->_lockButtonPressedSinceReadAllStart = 1;
}

- (void)_initializeUIIfNeccessary
{
  [(SpeakThisUIServer *)self _addContentViewControllerForWindowScene:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_externalScenes;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SpeakThisUIServer *)self _addContentViewControllerForWindowScene:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_handleHideUI
{
  v3 = AXLogSpeakScreen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1B270(self);
  }

  viewController = self->_viewController;
  self->_viewController = 0;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(NSMutableDictionary *)self->_speakThisUIViewControllers allKeys];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_speakThisUIViewControllers objectForKeyedSubscript:v10];
        HasJindo = AXDeviceHasJindo();
        v13 = [v11 speakScreenHudUIManager];
        v14 = v13;
        if (HasJindo)
        {
          [v13 endActivity];
        }

        else
        {
          [v13 hideUI];
        }

        v15 = [v11 speakScreenHudUIManager];
        [v15 hideUI];

        if ([v10 isEqualToString:@"MAIN-DISPLAY"])
        {
          [(SpeakThisUIServer *)self _removeViewControllerForWindowScene:0];
        }

        else
        {
          v16 = [v11 view];
          v17 = [v16 window];
          v18 = [v17 windowScene];
          [(SpeakThisUIServer *)self _removeViewControllerForWindowScene:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)_handleLoadSpeakUnderfingerUI
{
  [(SpeakThisUIServer *)self _initializeUIIfNeccessary];
  if (self->_viewController)
  {

    [(SpeakThisUIServer *)self _handleUpdateUIForSpeakUnderFingerSettingsChange];
  }

  else
  {
    v3 = [(SpeakThisUIServer *)self _windowSceneForActiveDisplay];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_5284;
    v4[3] = &unk_30AF0;
    v4[4] = self;
    [(SpeakThisUIServer *)self _updateViewControllerForWindowScene:v3 completion:v4];
  }
}

- (void)_handleLoadUIAtAppPoint:(id)a3
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_reallyHideUI" object:0];
  [(SpeakThisUIServer *)self _initializeUIIfNeccessary];
  v4 = [(SpeakThisUIServer *)self sentenceRanges];
  [v4 removeAllObjects];

  self->_currentSentenceRange = xmmword_23190;
  currentSentenceElement = self->_currentSentenceElement;
  self->_currentSentenceElement = 0;

  v6 = [(SpeakThisUIServer *)self _windowSceneForActiveDisplay];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5380;
  v7[3] = &unk_30AF0;
  v7[4] = self;
  [(SpeakThisUIServer *)self _updateViewControllerForWindowScene:v6 completion:v7];

  [(SpeakThisUIServer *)self _updateVCWithLatestHighlightColors];
}

- (void)_handleFinishShowingUI
{
  viewController = self->_viewController;
  if (viewController)
  {
    [(AXSpeakOverlayViewController *)viewController finishLoading];
  }
}

- (void)_handleNoSpeakableContent:(id)a3
{
  viewController = self->_viewController;
  if (viewController)
  {
    [(AXSpeakOverlayViewController *)viewController showErrorMessage:a3];
  }
}

- (void)_reallyHideUI
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_reallyHideUI" object:0];
  [(SpeakThisUIServer *)self _handleHideUI];

  [(SpeakThisUIServer *)self setIdleTimerDisabled:0];
}

- (CGPoint)convertPointToViewControllerSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXSpeakOverlayViewController *)self->_viewController view];
  v7 = [v6 window];

  [v7 _convertPointFromSceneReferenceSpace:{x, y}];
  v9 = v8;
  v11 = v10;
  v12 = [(AXSpeakOverlayViewController *)self->_viewController view];
  [v7 convertPoint:v12 toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)_updateVCWithLatestHighlightColors
{
  if ([(SpeakThisUIServer *)self highlightWords])
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 quickSpeakWordHighlightColor];

    if (v4)
    {
      v5 = [UIColor colorWithCGColor:AXSpeakHighlightColor()];
      v6 = [v5 colorWithAlphaComponent:0.2];
      [(AXSpeakOverlayViewController *)self->_viewController setHighlightColor:v6];
    }

    else
    {
      v7 = [(AXElement *)self->_currentApp uiElement];
      v8 = [v7 colorWithAXAttribute:2140];

      if (!v8)
      {
        goto LABEL_7;
      }

      v5 = [UIColor colorWithCGColor:v8];
      [(AXSpeakOverlayViewController *)self->_viewController setHighlightColor:v5];
    }
  }

LABEL_7:
  if (![(SpeakThisUIServer *)self highlightSentences])
  {
    return;
  }

  v9 = +[AXSettings sharedInstance];
  v10 = [v9 quickSpeakSentenceHighlightColor];

  v11 = [(AXElement *)self->_currentApp uiElement];
  v12 = [v11 colorWithAXAttribute:2140];

  if (v12)
  {
    v13 = [UIColor colorWithCGColor:v12];
    [(AXSpeakOverlayViewController *)self->_viewController setHighlightColor:v13];
  }

  if (v10)
  {
    v14 = AXSpeakHighlightColor();
  }

  else
  {
    v15 = [(AXElement *)self->_currentApp uiElement];
    v16 = [v15 colorWithAXAttribute:2141];

    if (!v16)
    {
      return;
    }

    v14 = v16;
  }

  v17 = [UIColor colorWithCGColor:v14];
  [(AXSpeakOverlayViewController *)self->_viewController setUnderlineColor:v17];
}

- (id)_speakingRangeForContentItem:(id)a3 withContentItemLength:(unint64_t)a4 andPreviousContentStringLength:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_alloc_init(AXSpeakingRange);
  v10 = [(AXOrator *)self->_orator content];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(AXSpeakingRange *)v9 setElement:v8];
  }

  -[AXSpeakingRange setRange:](v9, "setRange:", [v10 length] + a5, a4);

  return v9;
}

- (void)_appendContentFromElementsAndStrings:(id)a3 toContentString:(id)a4 speakingRanges:(id)a5 startWithPageTurnElement:(BOOL)a6 deviceOrientation:(int64_t)a7
{
  v10 = a3;
  v11 = a4;
  v67 = a5;
  if ([v10 count])
  {
    v12 = AXLogSpeakScreen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "AppendContent - no content: remove page turn element", buf, 2u);
    }

    currentPageTurnElement = self->_currentPageTurnElement;
    self->_currentPageTurnElement = 0;
  }

  _AXSetAllowsSuspendedAppServer();
  v14 = objc_alloc_init(NSMutableOrderedSet);
  v15 = +[AXSpringBoardServer server];
  v16 = [v15 isScreenLockedWithPasscode:0];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v78;
    v63 = UIAccessibilityTraitCausesPageTurn;
    v62 = *v78;
    v60 = v17;
    v58 = v16;
    v59 = a6;
    do
    {
      v21 = 0;
      v64 = v19;
      do
      {
        if (*v78 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v77 + 1) + 8 * v21);
        v23 = CFGetTypeID(v22);
        if (v23 == AXUIElementGetTypeID())
        {
          v65 = v21;
          if (v16)
          {
            AXUIElementSetMessagingTimeout(v22, 10.0);
          }

          v24 = [AXUIElement uiElementWithAXElement:v22];
          v25 = [AXElement elementWithUIElement:v24];
          v26 = [v25 traits];
          v27 = self->_currentPageTurnElement == 0;
          obj = v25;
          v28 = [v25 hasWebContent];
          if ((v63 & v26) != 0)
          {
            v27 = 1;
            objc_storeStrong(&self->_currentPageTurnElement, obj);
            v29 = AXLogSpeakScreen();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = self->_currentPageTurnElement;
              *buf = 138412290;
              v84 = v30;
              _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Reset page turn element: %@", buf, 0xCu);
            }
          }

          v21 = v65;
          if (v27)
          {
            if (!v28)
            {
              v42 = [v24 objectWithAXAttribute:2085];
              [v11 _speakThisAppendString:v42 withPause:{objc_msgSend(v11, "length") != 0}];
              v43 = [v42 length];
              v44 = v24;
              v45 = [v11 length];
              v46 = v45 - [v42 length];
              v24 = v44;
              v47 = v43;
              v20 = v62;
              v33 = [(SpeakThisUIServer *)self _speakingRangeForContentItem:v44 withContentItemLength:v47 andPreviousContentStringLength:v46];
              [v67 addObject:v33];
              goto LABEL_33;
            }

            if (([v14 containsObject:v24] & 1) == 0)
            {
              v31 = AXReadAllUtilitiesElementsToCombineForReadAll();
              v32 = [v11 length];
              [v14 addObject:v24];
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v33 = v31;
              v34 = [v33 countByEnumeratingWithState:&v73 objects:v82 count:16];
              if (v34)
              {
                v35 = v34;
                v61 = v24;
                v36 = v32 != 0;
                v37 = *v74;
                do
                {
                  for (i = 0; i != v35; i = i + 1)
                  {
                    if (*v74 != v37)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v39 = *(*(&v73 + 1) + 8 * i);
                    v40 = [v39 objectWithAXAttribute:2085];
                    [v11 _speakThisAppendString:v40 withPause:v36];
                    v41 = -[SpeakThisUIServer _speakingRangeForContentItem:withContentItemLength:andPreviousContentStringLength:](self, "_speakingRangeForContentItem:withContentItemLength:andPreviousContentStringLength:", v39, [v40 length], objc_msgSend(v11, "length") - objc_msgSend(v40, "length"));
                    [v67 addObject:v41];
                    [v14 addObject:v39];

                    v36 = 0;
                  }

                  v35 = [v33 countByEnumeratingWithState:&v73 objects:v82 count:16];
                  v36 = 0;
                }

                while (v35);
                v42 = v33;
                v17 = v60;
                v16 = v58;
                a6 = v59;
                v20 = v62;
                v24 = v61;
              }

              else
              {
                v42 = v33;
              }

LABEL_33:

              v21 = v65;
            }
          }

          v19 = v64;
          goto LABEL_35;
        }

        if (a6)
        {
          goto LABEL_36;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v57 = v22;
          _AXAssert();
        }

        [v11 _speakThisAppendString:v22 withPause:{objc_msgSend(v22, "length", v57) != 0}];
        v24 = -[SpeakThisUIServer _speakingRangeForContentItem:withContentItemLength:andPreviousContentStringLength:](self, "_speakingRangeForContentItem:withContentItemLength:andPreviousContentStringLength:", v22, [v22 length], objc_msgSend(v11, "length") - objc_msgSend(v22, "length"));
        [v67 addObject:v24];
        v20 = v62;
LABEL_35:

LABEL_36:
        v21 = v21 + 1;
      }

      while (v21 != v19);
      v48 = [v17 countByEnumeratingWithState:&v77 objects:v85 count:16];
      v19 = v48;
    }

    while (v48);
  }

  v49 = [v14 firstObject];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v50 = v14;
  v51 = [v50 countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v70;
    do
    {
      v54 = 0;
      v55 = v49;
      do
      {
        if (*v70 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v56 = *(*(&v69 + 1) + 8 * v54);
        if (([v17 containsObject:{objc_msgSend(v56, "axElement")}] & 1) == 0)
        {
          [v17 insertObject:objc_msgSend(v56 atIndex:{"axElement"), objc_msgSend(v17, "indexOfObject:", objc_msgSend(v55, "axElement")) + 1}];
        }

        v49 = v56;

        v54 = v54 + 1;
        v55 = v49;
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v69 objects:v81 count:16];
    }

    while (v52);
  }

  _AXSetAllowsSuspendedAppServer();
}

- (id)_fetchNextElementsAndReturnContentStringUsingAppElement:(id)a3 startingWithPageTurnElement:(BOOL)a4 shouldScrollOpaqueProviderIfNecessary:(BOOL)a5 deviceOrientation:(int64_t)a6
{
  v67 = a4;
  v68 = a5;
  v8 = a3;
  _AXSetAllowsSuspendedAppServer();
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v9 = &MKBGetDeviceLockState_ptr;
  v10 = +[NSMutableArray array];
  if (v8)
  {
    v11 = [v8 arrayWithAXAttribute:3046];
    v12 = [v11 mutableCopy];

    v13 = 0;
    v10 = v12;
  }

  else if ([(UIElementProtocol *)self->_currentElementForFetching BOOLWithAXAttribute:2065])
  {
    v14 = [(SpeakThisUIServer *)self _fetchNextElementsFromOpaqueProviderAndScroll:v68];

    v13 = [(UIElementProtocol *)self->_currentElementForFetching BOOLWithAXAttribute:2065];
    v10 = v14;
  }

  else
  {
    v13 = 0;
  }

  if (![v10 count])
  {
    if (!v68 & v13)
    {
      v13 = 1;
    }

    else
    {
      v15 = [(UIElementProtocol *)self->_currentElementForFetching arrayWithAXAttribute:2196];
      v16 = [v15 mutableCopy];

      v13 = 0;
      v10 = v16;
    }
  }

  if (![v10 count] && self->_currentElementForFetchingRemoteParent)
  {
    if (!v68 & v13)
    {
      v13 = 1;
    }

    else
    {
      v56 = a6;
      v57 = AXLogSpeakScreen();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        currentElementForFetching = self->_currentElementForFetching;
        currentElementForFetchingRemoteParent = self->_currentElementForFetchingRemoteParent;
        *buf = 138412546;
        v75 = currentElementForFetching;
        v76 = 2112;
        v77 = currentElementForFetchingRemoteParent;
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "The currently fetched element %@ could not be used for continued fetching, trying to recover using remote parent: %@", buf, 0x16u);
      }

      v60 = [(UIElementProtocol *)self->_currentElementForFetchingRemoteParent uiElementsWithAttribute:2197];
      v61 = v60;
      currentElementIndex = self->_currentElementIndex;
      if ((currentElementIndex & 0x8000000000000000) == 0 && currentElementIndex < [v60 count])
      {
        v63 = [v61 objectAtIndex:self->_currentElementIndex];
        v64 = self->_currentElementForFetching;
        self->_currentElementForFetching = v63;
      }

      v13 = 0;
      a6 = v56;
    }
  }

  v17 = [v10 lastObject];
  v18 = &MKBGetDeviceLockState_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v10 lastObject];
    v20 = [v19 isEqualToString:@"SpeakThis-LegacyMethodWasUsed"];

    v18 = &MKBGetDeviceLockState_ptr;
  }

  else
  {
    v20 = 0;
  }

  if ([v10 count] >= 6 && (v20 & 1) == 0)
  {
    v21 = [v10 subarrayWithRange:{0, 5}];
    v22 = [v21 mutableCopy];

    v18 = &MKBGetDeviceLockState_ptr;
    v10 = v22;
  }

  if (v20)
  {
    [v10 removeLastObject];
  }

  if (!(([v10 count] == 0) | v13 & 1))
  {
    v66 = v8;
    v23 = +[NSMutableArray array];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v24 = v10;
    v25 = [v24 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v25)
    {
      v26 = v25;
      v65 = a6;
      v27 = *v70;
      v28 = &MKBGetDeviceLockState_ptr;
      while (2)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v70 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v69 + 1) + 8 * i);
          v31 = v18[254];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v32 = [v28[223] uiElementWithAXElement:v30];
            objc_storeStrong(&self->_currentElementForFetching, v32);
            v33 = [(UIElementProtocol *)self->_currentElementForFetching objectWithAXAttribute:2092];
            v34 = v28;
            v35 = v33;
            if (v33)
            {
              v36 = [v34[223] uiElementWithAXElement:v33 cache:0];
              if (([v36 isEqual:self->_currentElementForFetchingRemoteParent] & 1) == 0)
              {
                objc_storeStrong(&self->_currentElementForFetchingRemoteParent, v36);
                self->_currentElementIndex = -1;
              }

              v37 = self->_currentElementIndex + 1;
              v18 = &MKBGetDeviceLockState_ptr;
            }

            else
            {
              v38 = self->_currentElementForFetchingRemoteParent;
              self->_currentElementForFetchingRemoteParent = 0;

              v37 = 0;
            }

            self->_currentElementIndex = v37;
            if ([(UIElementProtocol *)self->_currentElementForFetching BOOLWithAXAttribute:2065])
            {
              [(UIElementProtocol *)self->_currentElementForFetching performAXAction:2058 withValue:@"UIAccessibilitySpeakThisIdentifier"];

              v13 = 1;
              goto LABEL_40;
            }

            v28 = &MKBGetDeviceLockState_ptr;
          }

          [v23 addObject:v30];
        }

        v26 = [v24 countByEnumeratingWithState:&v69 objects:v73 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

      v13 = 0;
LABEL_40:
      a6 = v65;
      v9 = &MKBGetDeviceLockState_ptr;
    }

    else
    {
      v13 = 0;
    }

    v10 = v23;
    [(SpeakThisUIServer *)self _addFetchingContentAssertionForPid:[(UIElementProtocol *)self->_currentElementForFetching pid]];
    [(SpeakThisUIServer *)self _addFetchingContentAssertionForPid:[(AXElement *)self->_currentApp pid]];
    [(SpeakThisUIServer *)self _addStayingAliveAssertionForPid:[(UIElementProtocol *)self->_currentElementForFetching pid]];
    v39 = [(AXElement *)self->_currentApp pid];

    [(SpeakThisUIServer *)self _addStayingAliveAssertionForPid:v39];
    v8 = v66;
  }

  if (![v10 count] && v13)
  {
    goto LABEL_45;
  }

  if (![v10 count])
  {
    savedOpaqueParentForFetching = self->_savedOpaqueParentForFetching;
    if (savedOpaqueParentForFetching)
    {
      objc_storeStrong(&self->_currentElementForFetching, savedOpaqueParentForFetching);
      v55 = self->_savedOpaqueParentForFetching;
      self->_savedOpaqueParentForFetching = 0;

LABEL_45:
      v40 = [(SpeakThisUIServer *)self _fetchNextElementsFromOpaqueProviderAndScroll:v68];

      v10 = v40;
    }
  }

  if (!v13 || [v10 count] || v68)
  {
    v42 = v9;
    v41 = +[NSMutableString string];
    v43 = AXLogSpeakScreen();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v75 = v10;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Received elements and strings: %{public}@", buf, 0xCu);
    }

    v44 = [v42[271] array];
    v45 = [v10 count];
    [(SpeakThisUIServer *)self _appendContentFromElementsAndStrings:v10 toContentString:v41 speakingRanges:v44 startWithPageTurnElement:v67 deviceOrientation:a6];
    if ((v13 & 1) == 0 && [v10 count] > v45)
    {
      v46 = +[AXUIElement uiElementWithAXElement:](AXUIElement, "uiElementWithAXElement:", [v10 lastObject]);
      v47 = self->_currentElementForFetching;
      self->_currentElementForFetching = v46;
    }

    v48 = AXLogSpeakScreen();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v75 = v41;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "Content string was %{private}@", buf, 0xCu);
    }

    v49 = [(SpeakThisUIServer *)self speakingRangeAndElements];

    if (v49)
    {
      v50 = [(SpeakThisUIServer *)self speakingRangeAndElements];
      v51 = [v50 arrayByAddingObjectsFromArray:v44];
      [(SpeakThisUIServer *)self setSpeakingRangeAndElements:v51];
    }

    else
    {
      [(SpeakThisUIServer *)self setSpeakingRangeAndElements:v44];
    }

    v52 = AXLogSpeakScreen();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v75 = v44;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "Speaking ranges were %{private}@", buf, 0xCu);
    }

    _AXSetAllowsSuspendedAppServer();
    _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
  }

  else
  {
    v41 = [(SpeakThisUIServer *)self _fetchNextElementsAndReturnContentStringUsingAppElement:0 startingWithPageTurnElement:0 shouldScrollOpaqueProviderIfNecessary:1 deviceOrientation:a6];
  }

  return v41;
}

- (void)_fetchContentStartingWithPageTurnElement:(BOOL)a3 shouldRefreshContent:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(AXElement *)self->_currentApp uiElement];
  v10 = [v9 copy];

  self->_stopType = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_697C;
  v24 = &unk_30BA8;
  v25 = self;
  v26 = v27;
  AXPerformBlockSynchronouslyOnMainThread();
  v11 = [(SpeakThisUIServer *)self _dispatchQueueForFetches];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_69EC;
  block[3] = &unk_30BF8;
  v19 = a4;
  v15 = v10;
  v16 = self;
  v20 = a3;
  v17 = v8;
  v18 = v27;
  v12 = v8;
  v13 = v10;
  dispatch_async(v11, block);

  _Block_object_dispose(v27, 8);
}

- (void)_fetchNextSpeakThisElementsAndScrollOpaqueProviderIfNecessary:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_6D24;
  v20 = &unk_30BA8;
  v21 = self;
  v22 = v23;
  AXPerformBlockSynchronouslyOnMainThread();
  [(SpeakThisUIServer *)self setIsFetchingContent:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_6D94;
  v13[3] = &unk_30C70;
  v16 = a3;
  v13[4] = self;
  v15 = v23;
  v7 = v6;
  v14 = v7;
  v8 = objc_retainBlock(v13);
  v9 = [(SpeakThisUIServer *)self _dispatchQueueForFetches];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6F9C;
  block[3] = &unk_30C48;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, block);

  _Block_object_dispose(v23, 8);
}

- (void)_clearAssertions:(id)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138412290;
    v14 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = AXLogSpeakScreen();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v9 attributes];
          *buf = 134218242;
          v21 = v9;
          v22 = 2112;
          v23 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Clearing assertion for fetching more content. %p: %@", buf, 0x16u);
        }

        v15 = 0;
        [v9 invalidateWithError:&v15];
        v12 = v15;
        if (v12)
        {
          v13 = AXLogSpeakScreen();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v21 = v12;
            _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Invalidation error: %@", buf, 0xCu);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  [v3 removeAllObjects];
}

- (id)_assertionAttributesForStayingAlive
{
  v2 = [RBSDomainAttribute attributeWithDomain:@"com.apple.Accessibility" name:@"SpeakScreenStayAlive"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)_assertionAttributesForFetchingMoreContent
{
  v2 = [RBSDomainAttribute attributeWithDomain:@"com.apple.Accessibility" name:@"SpeakScreenFetchContent"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)_handleSpeakThisWithOptions:(int64_t)a3 appPoint:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!_AXSSpeakThisEnabled())
  {
    v10 = AXLogSpeakScreen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "We were asked to speak the screen, but the setting was off.  Bailing.", buf, 2u);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }

  if (!_AXSApplicationAccessibilityEnabled())
  {
    v11 = AXLogSpeakScreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "ERROR: Application accessibility was disabled even though Speak Screen was in use.  Please file a bug with details about what you were doing before you saw this message.", buf, 2u);
    }

    _AXSApplicationAccessibilitySetEnabled();
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_reallyHideUI" object:0];
  *&self->_lockButtonPressedSinceReadAllStart = 256;
  self->_forceRectsToScroll = 1;
  [(AXOrator *)self->_orator setContent:0];
  [(AXOrator *)self->_orator stopSpeaking:0];
  [(SpeakThisUIServer *)self setIsReadingFromFrontmostApp:1];
  [(SpeakThisUIServer *)self setNeedToRefreshContextIds:0];
  v12 = [(AXElement *)self->_currentApp uiElement];
  -[SpeakThisUIServer _addStayingAliveAssertionForPid:](self, "_addStayingAliveAssertionForPid:", [v12 pid]);

  v13 = AXLogSpeakScreen();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SpeakThis-FetchContent", "", buf, 2u);
  }

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_7B94;
  v19 = &unk_30CF8;
  v20 = self;
  v21 = v8;
  v22 = v9;
  v23 = a3;
  v14 = v9;
  v15 = v8;
  [(SpeakThisUIServer *)self _fetchContentStartingWithPageTurnElement:0 shouldRefreshContent:0 completion:&v16];
  [(SpeakThisUIServer *)self updateSpeakScreenUI:v16];
}

- (id)_handlePauseSpeaking
{
  orator = self->_orator;
  v10 = 0;
  v4 = [(AXOrator *)orator pauseSpeaking:&v10];
  v5 = v10;
  v6 = v5;
  v7 = 0;
  if ((v4 & 1) == 0)
  {
    v11 = STSMessageReplyKeyErrorCode;
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[SpeakThisUIServer _stsErrorCodeForOratorErrorCode:](self, "_stsErrorCodeForOratorErrorCode:", [v5 code]));
    v12 = v8;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  return v7;
}

- (id)_handleResumeSpeaking
{
  orator = self->_orator;
  v10 = 0;
  v4 = [(AXOrator *)orator resumeSpeaking:&v10];
  v5 = v10;
  v6 = v5;
  v7 = 0;
  if ((v4 & 1) == 0)
  {
    v11 = STSMessageReplyKeyErrorCode;
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[SpeakThisUIServer _stsErrorCodeForOratorErrorCode:](self, "_stsErrorCodeForOratorErrorCode:", [v5 code]));
    v12 = v8;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  return v7;
}

- (id)_handleToggleSpeaking
{
  if ([(AXOrator *)self->_orator isSpeaking])
  {
    v3 = [(SpeakThisUIServer *)self _handlePauseSpeaking];
  }

  else if ([(AXOrator *)self->_orator isPaused])
  {
    v3 = [(SpeakThisUIServer *)self _handleResumeSpeaking];
  }

  else
  {
    v5 = STSMessageReplyKeyErrorCode;
    v6 = &off_31CE0;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  return v3;
}

- (id)_handleSpeakFaster
{
  if (([(AXOrator *)self->_orator speakFaster]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v4 = STSMessageReplyKeyErrorCode;
    v5 = &off_31CF8;
    v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  }

  return v2;
}

- (id)_handleSpeakSlower
{
  if (([(AXOrator *)self->_orator speakSlower]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v4 = STSMessageReplyKeyErrorCode;
    v5 = &off_31D10;
    v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  }

  return v2;
}

- (id)_handleUpdateSpeakingRate:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:STSMessageKeySpeakingRate];
  v5 = [v4 intValue];

  [(SpeakThisUIServer *)self standardSpeakingRateAsInt];
  switch(v5)
  {
    case 4u:
      v6 = [(SpeakThisUIServer *)self doubleSpeakingRateAsInt];
      break;
    case 3u:
      v6 = [(SpeakThisUIServer *)self oneAndAHalfSpeakingRateAsInt];
      break;
    case 1u:
      v6 = [(SpeakThisUIServer *)self halfSpeakingRateAsInt];
      break;
    default:
      v6 = [(SpeakThisUIServer *)self standardSpeakingRateAsInt];
      break;
  }

  [(AXOrator *)self->_orator setSpeakingRate:v6 / 100000.0];
  [(SpeakThisUIServer *)self _handleRateChangeSpeechIfNeeded:1];
  v7 = AXLogSpeakScreen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1B4A8();
  }

  return 0;
}

- (void)_handleFastForward:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8658;
  v4[3] = &unk_30D20;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SpeakThisUIServer *)v5 _readNextPageIfApplicableInForwardDirection:1 completion:v4];
}

- (void)_handleRewind:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8850;
  v4[3] = &unk_30D20;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SpeakThisUIServer *)v5 _readNextPageIfApplicableInForwardDirection:0 completion:v4];
}

- (void)_updateIsHighlightVisible
{
  v3 = [(AXSpeakOverlayViewController *)self->_viewController highlightSelectionRects];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AXSpeakOverlayViewController *)self->_viewController sentenceHighlightSelectionRects];
    v4 = [v5 count] != 0;
  }

  if (v4 != [(SpeakThisUIServer *)self cachedIsHighlightVisible])
  {
    v6 = AXLogSpeakScreen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Update is highlight visible: %i", v8, 8u);
    }

    v7 = +[AXBackBoardServer server];
    [v7 setIsSpeakScreenHighlightVisible:v4];

    [(SpeakThisUIServer *)self setCachedIsHighlightVisible:v4];
  }
}

- (id)_handleUnknownMessageIdentifier:(unint64_t)a3
{
  v3 = AXLogSpeakScreen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1B51C();
  }

  return 0;
}

- (void)_updateCurrentAppWithPoint:(id)a3 bundleID:(id)a4 sceneID:(id)a5 rootElementAccessibilityIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(SpeakThisUIServer *)self isContinuitySessionActive])
  {
    v14 = AXLogSpeakScreen();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v54) = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "forcing frontmost app to be SpringBoard due to Oneness", &v54, 2u);
    }

    v15 = +[AXElement systemWideElement];
    v16 = [v15 systemApplication];
LABEL_9:
    currentApp = self->_currentApp;
    self->_currentApp = v16;
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  if (v10)
  {
    v17 = AXLogSpeakScreen();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v10 debugDescription];
      v54 = 138412290;
      v55 = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "checking current app based on appPointValue %@", &v54, 0xCu);
    }

    v15 = [(SpeakThisUIServer *)self _systemApp];
    v16 = [v15 elementForAttribute:91700 parameter:v10];
    goto LABEL_9;
  }

  if (v11)
  {
    v23 = AXLogSpeakScreen();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v54 = 138412290;
      v55 = v11;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "checking current app based on bundleid %@", &v54, 0xCu);
    }

    v24 = [(SpeakThisUIServer *)self _systemApp];
    v25 = [v24 elementForAttribute:91510 parameter:v11];
    v26 = self->_currentApp;
    self->_currentApp = v25;

    v27 = self->_currentApp;
    if (!v27)
    {
      v15 = AXLogSpeakScreen();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B5EC();
      }

      goto LABEL_11;
    }

    if (v13)
    {
      v15 = [(AXElement *)v27 elementForAttribute:95255 parameter:v13];
      v28 = AXLogSpeakScreen();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v15 debugDescription];
        v54 = 138412290;
        v55 = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "AXElement with kAXSpeakThisRootElementParametrizedAttribute: %@", &v54, 0xCu);
      }

      v30 = AXLogSpeakScreen();
      v31 = v30;
      if (v15)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v54 = 138412290;
          v55 = v13;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "checking current app for accessibilityIdentifier: %@", &v54, 0xCu);
        }

        v32 = [(AXElement *)self->_currentApp uiElement];
        [v32 setAXAttribute:3060 withString:v13];
      }

      else
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1B584();
        }

        v32 = self->_currentApp;
        self->_currentApp = 0;
      }

      goto LABEL_48;
    }

    v38 = [(AXElement *)v27 uiElement];
    v15 = v38;
    v39 = 3060;
    v40 = 0;
LABEL_34:
    [v38 setAXAttribute:v39 withString:v40];
    goto LABEL_11;
  }

  if (!v12)
  {
    AXOverrideRequestingClientType();
    v41 = [(SpeakThisUIServer *)self focusManager];
    v15 = [v41 currentApplication];

    AXOverrideRequestingClientType();
    v42 = +[AXElement systemWideElement];
    v43 = [v42 elementForAttribute:1005 shouldFetchAttributes:0];
    v44 = [v43 isEqual:v15];

    if (v44)
    {
      currentApp = self->_currentApp;
      self->_currentApp = 0;
      goto LABEL_10;
    }

    AXOverrideRequestingClientType();
    v45 = [(SpeakThisUIServer *)self focusManager];
    v32 = [v45 currentApplication];

    AXOverrideRequestingClientType();
    v46 = [v32 bundleId];
    v47 = [v46 isEqualToString:AX_SiriBundleName];

    v48 = AXLogSpeakScreen();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
    if (v47)
    {
      if (v49)
      {
        LOWORD(v54) = 0;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "keyboard focused app was Siri, so defaulting to kAXDefaultSpeakThisApplicationAttribute", &v54, 2u);
      }

      v50 = [(SpeakThisUIServer *)self _systemApp];
      v51 = [v50 elementForAttribute:1104];
      v52 = self->_currentApp;
      self->_currentApp = v51;
    }

    else
    {
      if (v49)
      {
        LOWORD(v54) = 0;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "using keyboard focused app", &v54, 2u);
      }

      v53 = v32;
      v50 = self->_currentApp;
      self->_currentApp = v53;
    }

LABEL_48:
    goto LABEL_11;
  }

  v33 = AXLogSpeakScreen();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v54 = 138412290;
    v55 = v12;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "checking current app based on sceneid %@", &v54, 0xCu);
  }

  v34 = [(SpeakThisUIServer *)self _systemApp];
  v35 = [v34 elementForAttribute:91512 parameter:v12];
  v36 = self->_currentApp;
  self->_currentApp = v35;

  v37 = self->_currentApp;
  if (v37)
  {
    v38 = [(AXElement *)v37 uiElement];
    v15 = v38;
    v39 = 3061;
    v40 = v12;
    goto LABEL_34;
  }

LABEL_12:
  [(SpeakThisUIServer *)self updateSpeakScreenUI];
  v20 = AXLogSpeakScreen();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = self->_currentApp;
    v22 = [(AXElement *)v21 bundleId];
    v54 = 138412802;
    v55 = v21;
    v56 = 2114;
    v57 = v10;
    v58 = 2114;
    v59 = v22;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Updated current app %@ (app point: %{public}@) to %{public}@", &v54, 0x20u);
  }
}

- (int64_t)_stsErrorCodeForOratorErrorCode:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 7;
  }

  else
  {
    return qword_231A0[a3 - 1];
  }
}

- (void)_handleNewPage
{
  v3 = [(SpeakThisUIServer *)self sentenceRanges];
  [v3 removeAllObjects];

  self->_currentSentenceRange = xmmword_23190;
  currentSentenceElement = self->_currentSentenceElement;
  self->_currentSentenceElement = 0;

  v5 = [(AXOrator *)self->_orator content];
  [(AXOrator *)self->_orator setContent:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9378;
  v7[3] = &unk_30D48;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [(SpeakThisUIServer *)self _fetchContentStartingWithPageTurnElement:1 shouldRefreshContent:1 completion:v7];
}

- (void)_giveUpWaitingForPageToScroll
{
  v3 = AXLogSpeakScreen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = 0x3FF8000000000000;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Did not get page scroll notification in %f seconds.", &v4, 0xCu);
  }

  [(SpeakThisUIServer *)self _finishHandlingPageScroll:0];
}

- (void)_readNextPageIfApplicableInForwardDirection:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[AXSpringBoardServer server];
  v8 = [v7 isScreenLockedWithPasscode:0];

  v9 = AXLogSpeakScreen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    currentPageTurnElement = self->_currentPageTurnElement;
    v31 = 138412290;
    v32 = currentPageTurnElement;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Read next page if possible: %@", &v31, 0xCu);
  }

  if (self->_currentPageTurnElement)
  {
    v11 = AXLogSpeakScreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(AXElement *)self->_currentPageTurnElement uiElement];
      v31 = 138412290;
      v32 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Allowing suspended app AX while we turn the page. %@", &v31, 0xCu);
    }

    _AXSetAllowsSuspendedAppServer();
    v13 = AXLogSpeakScreen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Updating flags on assertion so that we can fetch more content.", &v31, 2u);
    }

    v14 = [(AXElement *)self->_currentPageTurnElement uiElement];
    -[SpeakThisUIServer _addFetchingContentAssertionForPid:](self, "_addFetchingContentAssertionForPid:", [v14 pid]);

    v15 = [(AXElement *)self->_currentPageTurnElement uiElement];
    -[SpeakThisUIServer _addStayingAliveAssertionForPid:](self, "_addStayingAliveAssertionForPid:", [v15 pid]);

    [(SpeakThisUIServer *)self _addFetchingContentAssertionForPid:[(AXElement *)self->_currentApp pid]];
    [(SpeakThisUIServer *)self _addStayingAliveAssertionForPid:[(AXElement *)self->_currentApp pid]];
    if (v8)
    {
      v16 = AXLogSpeakScreen();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Waiting extra long for page turn.", &v31, 2u);
      }

      v17 = [(AXElement *)self->_currentPageTurnElement uiElement];
      AXUIElementSetMessagingTimeout([v17 axElement], 5.0);
    }

    v18 = [(AXElement *)self->_currentPageTurnElement uiElement];
    v19 = v18;
    if (v4)
    {
      v20 = 2019;
    }

    else
    {
      v20 = 2020;
    }

    v21 = [v18 performAXAction:v20];

    v22 = AXLogSpeakScreen();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = self->_currentPageTurnElement;
      v24 = [NSNumber numberWithBool:v21];
      v31 = 138412546;
      v32 = v23;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Asking for page scroll: %@ %@", &v31, 0x16u);
    }

    if (v21 & 1) != 0 || ((-[AXElement uiElement](self->_currentPageTurnElement, "uiElement"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25, !v4) ? (v27 = 2008) : (v27 = 2009), v28 = [v25 performAXAction:v27], v26, (v28))
    {
      _AXSetAllowsSuspendedAppServer();
      [(SpeakThisUIServer *)self setReadNextPageCompletion:v6];
      [(SpeakThisUIServer *)self setIsWaitingForPageScroll:1];
      v29 = 1.5;
      if (v8)
      {
        v29 = 9.0;
      }

      [(SpeakThisUIServer *)self performSelector:"_giveUpWaitingForPageToScroll" withObject:0 afterDelay:v29];
      goto LABEL_30;
    }

    v30 = AXLogSpeakScreen();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Page returned NO for scroll action.", &v31, 2u);
    }

    _AXSetAllowsSuspendedAppServer();
  }

  if (v6)
  {
    v6[2](v6, 0);
  }

LABEL_30:
}

- (void)_clearAllAssertions
{
  v3 = AXLogSpeakScreen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Clear all assertions", v6, 2u);
  }

  v4 = [(SpeakThisUIServer *)self assertionsForFetchingContent];
  [(SpeakThisUIServer *)self _clearAssertions:v4];

  v5 = [(SpeakThisUIServer *)self assertionsForStayingAlive];
  [(SpeakThisUIServer *)self _clearAssertions:v5];
}

- (void)_handleSpeakingStopped
{
  currentPageTurnElement = self->_currentPageTurnElement;
  self->_currentPageTurnElement = 0;

  v4 = AXLogSpeakScreen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "speaking stopped, clearing", buf, 2u);
  }

  [(SpeakThisUIServer *)self setIsWaitingForPageScroll:0];
  [(SpeakThisUIServer *)self setReadNextPageCompletion:0];
  v5 = [(SpeakThisUIServer *)self sentenceRanges];
  [v5 removeAllObjects];

  self->_currentSentenceRange = xmmword_23190;
  currentSentenceElement = self->_currentSentenceElement;
  self->_currentSentenceElement = 0;

  [(AXSpeakOverlayViewController *)self->_viewController didStop];
  [(SpeakThisUIServer *)self _updateIsHighlightVisible];
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 showSpeechController];

  if (!self->_waitingForNewReadAll)
  {
    [(SpeakThisUIServer *)self _clearAllAssertions];
  }

  stopType = self->_stopType;
  if ((stopType != 1) | v8 & 1)
  {
    v10 = 0.0;
    if (stopType != 3)
    {
      self->_stopType = 2;
      v10 = 2.0;
    }
  }

  else
  {
    v20[5] = _NSConcreteStackBlock;
    v20[6] = 3221225472;
    v20[7] = sub_9F34;
    v20[8] = &unk_30AF0;
    v20[9] = self;
    AXPerformBlockAsynchronouslyOnMainThread();
    v10 = 0.5;
  }

  v11 = self->_stopType;
  if (v8)
  {
    if (v11 == 2)
    {
      v12 = [(SpeakThisUIServer *)self stateManager];
      [v12 setCurrentState:0];

      v13 = [(SpeakThisUIServer *)self _windowSceneForActiveDisplay];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_9FC4;
      v20[3] = &unk_30AF0;
      v20[4] = self;
      [(SpeakThisUIServer *)self _updateViewControllerForWindowScene:v13 completion:v20];
    }
  }

  else if (v11 != 3 && !self->_waitingForNewReadAll)
  {
    [(SpeakThisUIServer *)self performSelector:"_reallyHideUI" withObject:0 afterDelay:v10];
  }

  if ([(SpeakThisUIServer *)self isPausingAssistiveTechnology])
  {
    [UIAccessibilityNotification postNotification:UIAccessibilityResumeAssistiveTechnologyNotification withData:UIAccessibilityNotificationSwitchControlIdentifier];
    [(SpeakThisUIServer *)self setIsPausingAssistiveTechnology:0];
  }

  v14 = [(SpeakThisUIServer *)self rootElementAccessibilityIdentifier];

  if (v14)
  {
    v15 = AXLogSpeakScreen();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "setting the app's speak this root element accessibility identifier to nil.", buf, 2u);
    }

    v16 = [(AXElement *)self->_currentApp uiElement];
    [v16 setAXAttribute:3060 withString:0];

    [(SpeakThisUIServer *)self setRootElementAccessibilityIdentifier:0];
  }

  v17 = [(SpeakThisUIServer *)self sceneIdentifier];

  if (v17)
  {
    v18 = AXLogSpeakScreen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "setting the app's speak this scene to nil.", buf, 2u);
    }

    v19 = [(AXElement *)self->_currentApp uiElement];
    [v19 setAXAttribute:3061 withString:0];

    [(SpeakThisUIServer *)self setSceneIdentifier:0];
  }
}

- (unint64_t)_findIndexOfRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(SpeakThisUIServer *)self speakingRangeAndElements];
  v7 = [v6 count];

  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(SpeakThisUIServer *)self speakingRangeAndElements];
  v9 = [v8 count] >> 1;

  v10 = [(SpeakThisUIServer *)self speakingRangeAndElements];
  v11 = [v10 objectAtIndexedSubscript:v9];

  v12 = 0;
  while (1)
  {
    if ([v11 range] <= location)
    {
      v13 = [v11 range];
      if (v13 + v14 > location)
      {
        break;
      }
    }

    v15 = [v11 range];
    if (v15 + v16 <= location)
    {
      v17 = v12 + v7;
      v12 = v9 + 1;
      v7 = v17 - (v9 + 1);
      if (v17 <= v9 + 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (location + length > [v11 range])
      {
        v20 = AXLogSpeakScreen();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v28.location = location;
          v28.length = length;
          v21 = NSStringFromRange(v28);
          v29.location = [v11 range];
          v22 = NSStringFromRange(v29);
          v24 = 138412546;
          v25 = v21;
          v26 = 2112;
          v27 = v22;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Somehow spoke a string range %@ that contained an entire element's portion of our content string %@.", &v24, 0x16u);
        }

LABEL_15:
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }

      v7 = v9 - v12;
      if (v9 == v12)
      {
        goto LABEL_15;
      }
    }

    v9 = v12 + (v7 >> 1);
    v18 = [(SpeakThisUIServer *)self speakingRangeAndElements];
    v19 = [v18 objectAtIndexedSubscript:v9];

    v11 = v19;
  }

  return v9;
}

- (id)_convertAXValueSceneReferenceRects:(id)a3 toView:(id)a4 fromElement:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [AXElement elementWithUIElement:a5];
  v10 = [v9 windowContextId];

  if (v7)
  {
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v44;
      size = CGRectZero.size;
      origin = CGRectZero.origin;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v43 + 1) + 8 * i);
          valuePtr = origin;
          v42 = size;
          AXValueGetValue(v17, kAXValueTypeCGRect, &valuePtr);
          v18 = +[AXElement systemWideElement];
          [v18 convertRect:v10 fromContextId:{valuePtr, v42}];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;

          v27 = [v8 window];
          [v27 _convertRectFromSceneReferenceSpace:{v20, v22, v24, v26}];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          [v8 convertRect:0 fromView:{v29, v31, v33, v35}];
          v36 = [NSValue valueWithCGRect:?];
          [v11 addObject:v36];
        }

        v14 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v14);
    }

    v7 = v38;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_systemApp
{
  systemApp = self->_systemApp;
  if (!systemApp)
  {
    v4 = +[AXElement systemWideElement];
    v5 = [v4 uiElement];
    v6 = +[AXElement elementWithAXUIElement:](AXElement, "elementWithAXUIElement:", [v5 objectWithAXAttribute:1001]);
    v7 = self->_systemApp;
    self->_systemApp = v6;

    systemApp = self->_systemApp;
  }

  return systemApp;
}

- (void)_handleIdleTimerReset
{
  if (CFAbsoluteTimeGetCurrent() - *&qword_384F8 > 4.0)
  {
    if (!self->_lockButtonPressedSinceReadAllStart)
    {
      v3 = +[AXElement systemWideElement];
      [v3 sendUserEventOccurred];
    }

    qword_384F8 = CFAbsoluteTimeGetCurrent();
  }
}

- (void)_kbFrameWillUpdate:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  [(AXSpeakOverlayViewController *)self->_viewController handleKBFrameWillUpdate:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
    v6 = v7;
  }
}

- (void)oratorDidFinishSpeaking:(id)a3
{
  v4 = +[AXSpeakFingerManager sharedInstance];
  if ([v4 speakFingerState] == &dword_0 + 2 && !-[SpeakThisUIServer isFetchingContent](self, "isFetchingContent"))
  {
    v5 = [(SpeakThisUIServer *)self isWaitingForPageScroll];

    if ((v5 & 1) == 0)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_A690;
      v6[3] = &unk_30D70;
      v6[4] = self;
      [(SpeakThisUIServer *)self _readNextPageIfApplicableInForwardDirection:1 completion:v6];
    }
  }

  else
  {
  }

  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (void)oratorDidPauseSpeaking:(id)a3
{
  [(AXSpeakOverlayViewController *)self->_viewController didPause];
  [(SpeakThisUIServer *)self setIdleTimerDisabled:0];

  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (void)oratorDidResumeSpeaking:(id)a3
{
  [(AXSpeakOverlayViewController *)self->_viewController didResume];
  [(SpeakThisUIServer *)self setIdleTimerDisabled:1];

  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (void)oratorDidStartSpeaking:(id)a3
{
  v4 = AXLogSpeakScreen();
  if (os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SpeakThis-StartSpeaking", "", v7, 2u);
  }

  [(SpeakThisUIServer *)self setIdleTimerDisabled:1];
  v5 = +[AXSpeakFingerManager sharedInstance];
  v6 = [v5 speakFingerState];

  if (v6 == &dword_0 + 2)
  {
    [(AXSpeakOverlayViewController *)self->_viewController didResume];
  }

  self->_stopType = 0;
  self->_waitingForNewReadAll = 0;
  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (void)oratorDidCancelSpeaking:(id)a3
{
  [(SpeakThisUIServer *)self _handleSpeakingStopped];

  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (void)orator:(id)a3 willSpeakRange:(_NSRange)a4 ofContent:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  [(SpeakThisUIServer *)self _handleIdleTimerReset];
  self->_currentWordRange.location = location;
  self->_currentWordRange.length = length;
  objc_storeStrong(&self->_currentContent, a5);
  v10 = AXLogSpeakScreen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v59.location = location;
    v59.length = length;
    v22 = NSStringFromRange(v59);
    v23 = [v9 length];
    v24 = v9;
    if (location + length <= v23)
    {
      v24 = [v9 substringWithRange:{location, length}];
    }

    *buf = 138543618;
    v56 = v22;
    v57 = 2114;
    v58 = v24;
    _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Will speak range %{public}@ corresponding to %{public}@", buf, 0x16u);
    if (location + length <= v23)
    {
    }
  }

  if (!_AXSQuickSpeakHighlightTextEnabled())
  {
    goto LABEL_14;
  }

  v11 = [(SpeakThisUIServer *)self speakingRangeAndElements];
  v12 = [v11 count];

  if (!v12)
  {
    goto LABEL_14;
  }

  if (![(SpeakThisUIServer *)self isReadingFromFrontmostApp])
  {
    v16 = AXLogSpeakScreen();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1B654();
    }

    goto LABEL_13;
  }

  v13 = [(SpeakThisUIServer *)self _findIndexOfRange:location, length];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    [(AXSpeakOverlayViewController *)self->_viewController setHighlightSelectionRects:0];
    [(SpeakThisUIServer *)self _updateIsHighlightVisible];
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [(SpeakThisUIServer *)self speakingRangeAndElements];
  v16 = [v15 objectAtIndexedSubscript:v14];

  objc_storeStrong(&self->_currentSpeakingRange, v16);
  v17 = [v16 element];

  if (!v17)
  {
LABEL_13:

    goto LABEL_14;
  }

  v18 = self->_currentSentenceRange.location;
  if (location < v18 || location - v18 >= self->_currentSentenceRange.length)
  {
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = [(SpeakThisUIServer *)self sentenceRanges];
      v26 = [v25 count];

      if (v26)
      {
        v27 = [(SpeakThisUIServer *)self sentenceRanges];
        [v27 removeObjectAtIndex:0];
      }
    }

    v28 = [(SpeakThisUIServer *)self sentenceRanges];
    v29 = [v28 firstObject];
    self->_currentSentenceRange.location = [v29 rangeValue];
    self->_currentSentenceRange.length = v30;

    goto LABEL_25;
  }

  v19 = [v16 element];
  v20 = [v19 isEqual:self->_currentSentenceElement];

  if ((v20 & 1) == 0)
  {
LABEL_25:
    v31 = [v16 element];
    currentSentenceElement = self->_currentSentenceElement;
    self->_currentSentenceElement = v31;

    v21 = 1;
    goto LABEL_26;
  }

  v21 = 0;
LABEL_26:
  if (self->_forceRectsToScroll)
  {
    v33 = 1;
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = [(AXSpeakOverlayViewController *)self->_viewController highlightSelectionRects];
    v33 = [v34 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v33)
    {
      v35 = *v51;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v51 != v35)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v50 + 1) + 8 * i) rectValue];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;
          [(AXElement *)self->_currentApp frame];
          v61.origin.x = v45;
          v61.origin.y = v46;
          v61.size.width = v47;
          v61.size.height = v48;
          v60.origin.x = v38;
          v60.origin.y = v40;
          v60.size.width = v42;
          v60.size.height = v44;
          if (CGRectIntersectsRect(v60, v61))
          {
            v33 = 1;
            goto LABEL_38;
          }
        }

        v33 = [v34 countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_38:
  }

  LOBYTE(v49) = v21 & v33;
  [(SpeakThisUIServer *)self _fetchTextRectsAndApplyHighlightToContent:v9 withRange:location elementRange:length updateSentences:v16 scrollWords:v21 scrollSentences:v33, v49];
  self->_forceRectsToScroll = 0;

LABEL_15:
}

- (void)_fetchTextRectsAndApplyHighlightToContent:(id)a3 withRange:(_NSRange)a4 elementRange:(id)a5 updateSentences:(BOOL)a6 scrollWords:(BOOL)a7 scrollSentences:(BOOL)a8
{
  length = a4.length;
  location = a4.location;
  v14 = a3;
  v15 = a5;
  v16 = AXLogSpeakScreen();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SpeakThis-FetchRects", "", buf, 2u);
  }

  v17 = location - [v15 range];
  v18 = [v15 range];
  v20 = &v18[v19];
  if (&v18[v19] >= location + length)
  {
    v20 = (location + length);
  }

  v21 = &v20[-location];
  v22 = AXLogSpeakScreen();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v42.location = v17;
    v42.length = v21;
    sub_1B690(v42);
  }

  *buf = 0;
  v39 = buf;
  v40 = 0x2020000000;
  v41 = a8;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = a7;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = a6;
  v23 = [(SpeakThisUIServer *)self _dispatchQueueForFetches];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_AEB4;
  v26[3] = &unk_30DC0;
  v26[4] = self;
  v27 = v15;
  v28 = v14;
  v29 = buf;
  v32 = v17;
  v33 = v21;
  v30 = v36;
  v31 = v34;
  v24 = v14;
  v25 = v15;
  dispatch_async(v23, v26);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(buf, 8);
}

- (BOOL)highlightWords
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 quickSpeakHighlightOption];

  return (v3 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

- (BOOL)highlightSentences
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 quickSpeakHighlightOption];

  return (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (void)startNewReadAllFromGesture
{
  v3 = +[AXSpeakFingerManager sharedInstance];
  v4 = [v3 speakFingerState];

  if (v4 != &dword_0 + 2)
  {
    v5 = +[AXSpeakFingerManager sharedInstance];
    [v5 userManuallyExitedSpeakUnderFingerMode];
  }

  [(SpeakThisUIServer *)self _updateCurrentAppWithPoint:0 bundleID:0 sceneID:0 rootElementAccessibilityIdentifier:0];
  [(SpeakThisUIServer *)self _handleLoadUIAtAppPoint:0];

  [(SpeakThisUIServer *)self _handleSpeakThisWithOptions:12 appPoint:0 completion:0];
}

- (void)startNewReadAllForBundleID:(id)a3 sceneID:(id)a4 rootAccessibilityElementIdentifier:(id)a5
{
  v8 = a4;
  v9 = a3;
  [(SpeakThisUIServer *)self setRootElementAccessibilityIdentifier:a5];
  [(SpeakThisUIServer *)self setSceneIdentifier:v8];

  v10 = [(SpeakThisUIServer *)self sceneIdentifier];
  v11 = [(SpeakThisUIServer *)self rootElementAccessibilityIdentifier];
  [(SpeakThisUIServer *)self _updateCurrentAppWithPoint:0 bundleID:v9 sceneID:v10 rootElementAccessibilityIdentifier:v11];

  if (self->_currentApp)
  {

    [(SpeakThisUIServer *)self _handleSpeakThisWithOptions:0 appPoint:0 completion:0];
  }

  else
  {
    v12 = AXLogSpeakScreen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Could not find app/scene/view, returning without speaking", v13, 2u);
    }
  }
}

- (void)playButtonPressedForBundleID:(id)a3 sceneID:(id)a4 rootAccessibilityElementIdentifier:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[AXSpeakFingerManager sharedInstance];
  v11 = [v10 speakFingerState];

  if (v11 != &dword_0 + 2)
  {
    v12 = +[AXSpeakFingerManager sharedInstance];
    [v12 userManuallyExitedSpeakUnderFingerMode];
  }

  orator = self->_orator;
  v14 = [(AXOrator *)orator content];
  LOBYTE(orator) = [(AXOrator *)orator canResumeWithContent:v14];

  if (orator)
  {
    [(AXOrator *)self->_orator resumeSpeaking:0];
  }

  else
  {
    [(SpeakThisUIServer *)self setSceneIdentifier:v8];
    [(SpeakThisUIServer *)self setRootElementAccessibilityIdentifier:v9];
    [(SpeakThisUIServer *)self _updateCurrentAppWithPoint:0 bundleID:v15 sceneID:v8 rootElementAccessibilityIdentifier:v9];
    [(SpeakThisUIServer *)self _handleSpeakThisWithOptions:12 appPoint:0 completion:0];
  }

  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (void)stopButtonPressed
{
  self->_stopType = 1;
  [(AXOrator *)self->_orator stopSpeaking:0];

  [(SpeakThisUIServer *)self _handleSpeakingStopped];
}

- (void)stopSpeakFingerButtonPressed
{
  v2 = +[AXSpeakFingerManager sharedInstance];
  [v2 userManuallyExitedSpeakUnderFingerMode];
}

- (id)currentVoiceIdentifier
{
  v3 = +[AXSettings sharedInstance];
  v4 = [(AXOrator *)self->_orator lastUtteranceLanguageCode];
  v5 = [v3 speechVoiceIdentifierForLanguage:v4 sourceKey:AXSpeechSourceKeySpeechFeatures exists:0];

  return v5;
}

- (void)speedButtonPressed
{
  [(AXOrator *)self->_orator currentSpeechRateForAdjustment];
  v4 = vcvtad_u64_f64(v3 * 100000.0);
  if ([(SpeakThisUIServer *)self halfSpeakingRateAsInt]> v4 || [(SpeakThisUIServer *)self doubleSpeakingRateAsInt]<= v4)
  {
    v5 = [(SpeakThisUIServer *)self halfSpeakingRateAsInt];
    goto LABEL_7;
  }

  if ([(SpeakThisUIServer *)self halfSpeakingRateAsInt]<= v4 && [(SpeakThisUIServer *)self standardSpeakingRateAsInt]> v4)
  {
    v5 = [(SpeakThisUIServer *)self standardSpeakingRateAsInt];
LABEL_7:
    v4 = v5;
    goto LABEL_8;
  }

  if ([(SpeakThisUIServer *)self standardSpeakingRateAsInt]<= v4 && [(SpeakThisUIServer *)self oneAndAHalfSpeakingRateAsInt]> v4)
  {
    v5 = [(SpeakThisUIServer *)self oneAndAHalfSpeakingRateAsInt];
    goto LABEL_7;
  }

  if ([(SpeakThisUIServer *)self oneAndAHalfSpeakingRateAsInt]<= v4 && [(SpeakThisUIServer *)self doubleSpeakingRateAsInt]> v4)
  {
    v5 = [(SpeakThisUIServer *)self doubleSpeakingRateAsInt];
    goto LABEL_7;
  }

LABEL_8:
  [(AXOrator *)self->_orator setSpeakingRate:v4 / 100000.0];
  [(SpeakThisUIServer *)self _handleRateChangeSpeechIfNeeded:1];

  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (double)normalizeSpeed:(double)a3
{
  if (a3 <= 1.0)
  {
    return (a3 + -0.5 + a3 + -0.5) * (AVSpeechUtteranceDefaultSpeechRate - AVSpeechUtteranceMinimumSpeechRate);
  }

  else
  {
    return AVSpeechUtteranceDefaultSpeechRate + (a3 + -1.0) / 3.0 * (AVSpeechUtteranceMaximumSpeechRate - AVSpeechUtteranceDefaultSpeechRate);
  }
}

- (void)speedButtonSelectionPressed:(double)a3
{
  [(SpeakThisUIServer *)self normalizeSpeed:a3];
  v5 = vcvtad_u64_f64(v4 * 100000.0);
  v6 = [(SpeakThisUIServer *)self halfSpeakingRateAsInt];
  v7 = [(SpeakThisUIServer *)self halfSpeakingRateAsInt];
  if (v6 < v5)
  {
    if (v7 < v5 && [(SpeakThisUIServer *)self threeQuartersSpeakingRateAsInt]>= v5)
    {
      v7 = [(SpeakThisUIServer *)self threeQuartersSpeakingRateAsInt];
    }

    else if ([(SpeakThisUIServer *)self threeQuartersSpeakingRateAsInt]< v5 && [(SpeakThisUIServer *)self standardSpeakingRateAsInt]>= v5)
    {
      v7 = [(SpeakThisUIServer *)self standardSpeakingRateAsInt];
    }

    else if ([(SpeakThisUIServer *)self standardSpeakingRateAsInt]< v5 && [(SpeakThisUIServer *)self oneAndAQuarterSpeakingRateAsInt]>= v5)
    {
      v7 = [(SpeakThisUIServer *)self oneAndAQuarterSpeakingRateAsInt];
    }

    else if ([(SpeakThisUIServer *)self oneAndAQuarterSpeakingRateAsInt]< v5 && [(SpeakThisUIServer *)self oneAndAHalfSpeakingRateAsInt]>= v5)
    {
      v7 = [(SpeakThisUIServer *)self oneAndAHalfSpeakingRateAsInt];
    }

    else if ([(SpeakThisUIServer *)self oneAndAHalfSpeakingRateAsInt]< v5 && [(SpeakThisUIServer *)self oneAndThreeQuarterSpeakingRateAsInt]>= v5)
    {
      v7 = [(SpeakThisUIServer *)self oneAndThreeQuarterSpeakingRateAsInt];
    }

    else if ([(SpeakThisUIServer *)self oneAndThreeQuarterSpeakingRateAsInt]>= v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [(SpeakThisUIServer *)self doubleSpeakingRateAsInt];
      v7 = v5;
      if (v8 > v5)
      {
        v7 = [(SpeakThisUIServer *)self doubleSpeakingRateAsInt];
      }
    }
  }

  [(AXOrator *)self->_orator setSpeakingRate:v7 / 100000.0];
  [(SpeakThisUIServer *)self _handleRateChangeSpeechIfNeeded:1];

  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (void)speakUnderFingerButtonPressed
{
  [(AXOrator *)self->_orator stopSpeaking:0];
  self->_stopType = 3;
  v3 = +[AXSpeakFingerManager sharedInstance];
  v4 = [v3 speakFingerState];

  v5 = [(SpeakThisUIServer *)self eventProcessor];
  v6 = v5;
  if (v4 == &dword_0 + 1)
  {
    [v5 endHandlingHIDEventsForReason:{@"Speak under finger mode activated, need to steal all touches."}];

    v7 = +[AXSpeakFingerManager sharedInstance];
    [v7 userManuallyExitedSpeakUnderFingerMode];
  }

  else
  {
    [v5 beginHandlingHIDEventsForReason:{@"Speak under finger mode activated, need to steal all touches."}];

    v7 = +[AXSpeakFingerManager sharedInstance];
    [v7 speakUnderFingerModeStarted];
  }
}

- (BOOL)isSpeakingOrPaused
{
  if (([(AXOrator *)self->_orator isSpeaking]& 1) != 0)
  {
    return 1;
  }

  orator = self->_orator;

  return [(AXOrator *)orator isPaused];
}

- (unint64_t)speakFingerState
{
  v2 = +[AXSpeakFingerManager sharedInstance];
  v3 = [v2 speakFingerState];

  return v3;
}

- (id)currentAppTitle
{
  v3 = [(AXElement *)self->_currentApp label];
  if ([(AXElement *)self->_currentApp isSpringBoard])
  {
    v4 = AXSpeakThisLocString(@"HOME_SCREEN");

    v3 = v4;
  }

  return v3;
}

- (double)speakingRateAsMultiplier
{
  v3 = [(AXOrator *)self->_orator currentVoiceIdentifier];
  [(AXOrator *)self->_orator currentSpeechRateForAdjustment];
  v5 = round(v4 * 100000.0) / 100000.0;
  if (v5 <= 0.5)
  {
    v6 = v5 + v5;
  }

  else
  {
    v6 = (v5 + -0.5) * 6.0 + 1.0;
  }

  return v6;
}

- (void)_updateForContinuityStateChange
{
  v3 = +[AXSpringBoardServer server];
  -[SpeakThisUIServer setIsContinuitySessionActive:](self, "setIsContinuitySessionActive:", [v3 isContinuitySessionActive]);

  v4 = AXLogSpeakScreen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(SpeakThisUIServer *)self isContinuitySessionActive];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v7 = 136315394;
    v8 = "[SpeakThisUIServer _updateForContinuityStateChange]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s isContinuitySessionActive: %@", &v7, 0x16u);
  }
}

- (void)_didToggleSpeakScreenSetting
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C57C;
  block[3] = &unk_30AF0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_didToggleHighlightContentSetting
{
  if (_AXSQuickSpeakHighlightTextEnabled())
  {
    [(SpeakThisUIServer *)self _frontmostAppMayHaveChanged:0];
  }

  else
  {
    [(AXSpeakOverlayViewController *)self->_viewController setHighlightSelectionRects:0];
    [(AXSpeakOverlayViewController *)self->_viewController setSentenceHighlightSelectionRects:0];
    [(SpeakThisUIServer *)self _updateIsHighlightVisible];
  }

  v3 = AXLogSpeakScreen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = _AXSQuickSpeakHighlightTextEnabled();
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Setting highlight content: %d", v4, 8u);
  }
}

- (void)_frontmostAppMayHaveChanged:(BOOL)a3
{
  if ((([(AXOrator *)self->_orator isSpeaking]& 1) != 0 || [(AXOrator *)self->_orator isPaused]) && _AXSQuickSpeakHighlightTextEnabled())
  {
    v5 = [(SpeakThisUIServer *)self _systemApp];
    v6 = [v5 uiElement];

    [v6 updateCache:1103];
    [v6 arrayWithAXAttribute:1103];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          pid[0] = 0;
          AXUIElementGetPid(v11, pid);
          v12 = pid[0];
          v13 = [(AXElement *)self->_currentApp uiElement];
          v14 = [v13 pid];

          if (v12 == v14)
          {
            v8 = &dword_0 + 1;
            goto LABEL_14;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    [(SpeakThisUIServer *)self setIsReadingFromFrontmostApp:v8];
    v15 = AXLogSpeakScreen();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(SpeakThisUIServer *)self isReadingFromFrontmostApp];
      pid[0] = 67109120;
      pid[1] = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Is reading from frontmost app: %i", pid, 8u);
    }

    if (a3 || ![(SpeakThisUIServer *)self isReadingFromFrontmostApp])
    {
      [(AXSpeakOverlayViewController *)self->_viewController setHighlightSelectionRects:0, v17];
      [(AXSpeakOverlayViewController *)self->_viewController setSentenceHighlightSelectionRects:0];
      [(SpeakThisUIServer *)self _updateIsHighlightVisible];
      self->_currentSentenceRange = xmmword_23190;
    }

    if (![(SpeakThisUIServer *)self isReadingFromFrontmostApp])
    {
      [(SpeakThisUIServer *)self setNeedToRefreshContextIds:1];
    }
  }
}

- (void)_pageDidScroll:(id)a3
{
  v4 = a3;
  if ([(SpeakThisUIServer *)self isWaitingForPageScroll])
  {
    if ([v4 isEqual:kAXPageScrollFailed])
    {
      v5 = AXLogSpeakScreen();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Page scroll sent notification of failure.", buf, 2u);
      }

      [(SpeakThisUIServer *)self _finishHandlingPageScroll:0];
    }

    else
    {
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_giveUpWaitingForPageToScroll" object:0];
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

- (void)_speakFingerStateChanged
{
  v3 = +[AXSpeakFingerManager sharedInstance];
  v4 = [v3 speakFingerState];

  [(AXSpeakOverlayViewController *)self->_viewController updateSpeakUnderFingerState:v4];
  if (v4 == &dword_0 + 2)
  {
    self->_stopType = 2;
    [(SpeakThisUIServer *)self _handleSpeakingStopped];
  }

  [(SpeakThisUIServer *)self updateSpeakScreenUI];
}

- (void)_addContentViewControllerForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SpeakThisUIServer *)self windowSceneIdentifierForWindowScene:v4];
  v6 = [(NSMutableDictionary *)self->_speakThisUIViewControllers objectForKeyedSubscript:v5];
  v7 = AXLogSpeakScreen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1B83C();
  }

  if (v6)
  {
    v8 = AXLogSpeakScreen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1B8A8();
    }
  }

  else
  {
    v9 = objc_alloc_init(AXSpeakOverlayViewController);
    [(AXSpeakOverlayViewController *)v9 setDelegate:self];
    [(AXSpeakOverlayViewController *)v9 setSpeakScreenHudUIManager:self->_speakScreenHudUIManager];
    [(NSMutableDictionary *)self->_speakThisUIViewControllers setObject:v9 forKeyedSubscript:v5];
    [(AXSpeakOverlayViewController *)v9 temporarilyHideUI];
    v10 = +[AXUIDisplayManager sharedDisplayManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_CD6C;
    v11[3] = &unk_30E08;
    v6 = v9;
    p_super = &v6->super.super.super;
    v13 = self;
    [v10 addContentViewController:v6 withUserInteractionEnabled:1 forService:self context:0 userInterfaceStyle:1 forWindowScene:v4 completion:v11];

    v8 = p_super;
  }
}

- (void)_startScreenLockDetector
{
  if (![(SpeakThisUIServer *)self screenDetectorRunning])
  {
    viewController = self->_viewController;
    if (viewController)
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_CE80;
      v4[3] = &unk_30E30;
      v4[4] = self;
      [(AXSpeakOverlayViewController *)viewController startWithCompletion:v4];
    }
  }
}

- (void)_stopScreenLockDetector
{
  if ([(SpeakThisUIServer *)self screenDetectorRunning])
  {
    objc_initWeak(&location, self->_viewController);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_CFE8;
    block[3] = &unk_30B18;
    objc_copyWeak(&v6, &location);
    block[4] = self;
    dispatch_async(queue, block);
    v4 = AXLogSpeakScreen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B980();
    }

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_removeViewControllerForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SpeakThisUIServer *)self windowSceneIdentifierForWindowScene:v4];
  v6 = [(NSMutableDictionary *)self->_speakThisUIViewControllers objectForKeyedSubscript:v5];
  v7 = AXLogSpeakScreen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1B9C0();
  }

  if (v6)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_D26C;
    v19[3] = &unk_30E58;
    v19[4] = self;
    v8 = v6;
    v20 = v8;
    v21 = v5;
    v9 = objc_retainBlock(v19);
    v10 = v9;
    if (self->_viewController == v8)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_D2F4;
      v17[3] = &unk_30BD0;
      v11 = &v18;
      v17[4] = self;
      v18 = v9;
      v14 = v9;
      [(SpeakThisUIServer *)self _updateViewControllerForWindowScene:0 completion:v17];
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_D33C;
      v15[3] = &unk_30C48;
      v11 = &v16;
      v16 = v9;
      v12 = v9;
      [(AXSpeakOverlayViewController *)v8 hideWithCompletion:v15];
    }
  }

  else
  {
    v13 = AXLogSpeakScreen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1BA2C();
    }
  }
}

- (void)_updateViewControllerForWindowScene:(id)a3 completion:(id)a4
{
  v6 = a4;
  viewController = self->_viewController;
  v8 = a3;
  [(AXSpeakOverlayViewController *)viewController unregisterNubbit:0];
  v9 = [(SpeakThisUIServer *)self windowSceneIdentifierForWindowScene:v8];

  [(NSMutableDictionary *)self->_speakThisUIViewControllers objectForKeyedSubscript:v9];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_D530;
  v17[3] = &unk_30E80;
  v10 = v17[4] = self;
  v18 = v10;
  v11 = v6;
  v19 = v11;
  v12 = objc_retainBlock(v17);
  v13 = AXLogSpeakScreen();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1BA94();
  }

  v14 = self->_viewController;
  if (v14)
  {
    if (!v10 || v14 == v10)
    {
      if (v11 && v14 == v10)
      {
        v11[2](v11);
      }
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_D6E8;
      v15[3] = &unk_30C48;
      v16 = v12;
      [(AXSpeakOverlayViewController *)v14 hideWithCompletion:v15];
    }
  }

  else
  {
    (v12[2])(v12);
  }
}

- (void)keyboardFocusChangedForSceneIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[AXSpringBoardServer server];
  v6 = [v5 displayIdentifierForSceneIdentifier:v4];

  v7 = [v6 unsignedIntegerValue];
  v8 = [(SpeakThisUIServer *)self eventProcessor];
  v9 = [v8 activeDisplayId];

  if (v9 != v7)
  {
    v10 = [(SpeakThisUIServer *)self eventProcessor];
    [v10 setActiveDisplayId:v7];

    if (![(SpeakThisUIServer *)self isSpeaking])
    {
      v12 = [(SpeakThisUIServer *)self eventProcessor];
      v11 = [v12 contextForDisplayID:v7];
      [(SpeakThisUIServer *)self activeDisplayChangedWithContext:v11];
    }
  }
}

- (void)activeDisplayChangedWithContext:(id)a3
{
  v4 = a3;
  v5 = AXLogSpeakScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1BB00();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableDictionary *)self->_speakThisUIViewControllers allKeys];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_speakThisUIViewControllers objectForKeyedSubscript:v11];
        v13 = [v12 contextID];
        if (v13 == [v4 contextID])
        {
          v14 = [v11 isEqualToString:@"MAIN-DISPLAY"];
          if (v14)
          {
            v15 = 0;
          }

          else
          {
            v8 = [v12 view];
            v13 = [v8 window];
            v15 = [v13 windowScene];
          }

          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_DA3C;
          v16[3] = &unk_30AF0;
          v16[4] = self;
          [(SpeakThisUIServer *)self _updateViewControllerForWindowScene:v15 completion:v16];
          if ((v14 & 1) == 0)
          {
          }

          goto LABEL_18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (id)_windowSceneForActiveDisplay
{
  v3 = [(SpeakThisUIServer *)self eventProcessor];
  v4 = [v3 contextIdForActiveDisplay];

  if (v4 == -1)
  {
    v12 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(NSMutableDictionary *)self->_speakThisUIViewControllers allKeys];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_speakThisUIViewControllers objectForKeyedSubscript:v10];
          if ([v11 contextID] == v4)
          {
            if ([v10 isEqualToString:@"MAIN-DISPLAY"])
            {
              v12 = 0;
            }

            else
            {
              v13 = [v11 view];
              v14 = [v13 window];
              v12 = [v14 windowScene];
            }

            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_16:
  }

  return v12;
}

- (id)windowSceneIdentifierForWindowScene:(id)a3
{
  if (a3)
  {
    v4 = [a3 _sceneIdentifier];
  }

  else
  {
    v4 = @"MAIN-DISPLAY";
  }

  return v4;
}

- (id)mainDisplayWindow
{
  v2 = [(NSMutableDictionary *)self->_speakThisUIViewControllers objectForKeyedSubscript:@"MAIN-DISPLAY"];
  v3 = [v2 view];
  v4 = [v3 window];

  return v4;
}

- (void)externalDisplaySceneConnected:(id)a3
{
  v4 = a3;
  v5 = AXLogSpeakScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1BB3C();
  }

  [(NSMutableSet *)self->_externalScenes addObject:v4];
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 showSpeechController];

  if (v7)
  {
    [(SpeakThisUIServer *)self _addContentViewControllerForWindowScene:v4];
  }
}

- (void)externalDisplaySceneDisconnected:(id)a3
{
  v4 = a3;
  v5 = AXLogSpeakScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1BB78();
  }

  [(NSMutableSet *)self->_externalScenes removeObject:v4];
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 showSpeechController];

  if (v7)
  {
    [(SpeakThisUIServer *)self _removeViewControllerForWindowScene:v4];
  }
}

- (void)speakElementAtPoint:(CGPoint)a3 withEventProcessor:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = +[AXSpeakFingerManager sharedInstance];
  [v6 speakElementAtLocation:{x, y}];
}

- (void)exitSpeakFingerModeWithEventProcessor:(id)a3
{
  v4 = +[AXSpeakFingerManager sharedInstance];
  [v4 fingerWasLiftedInSpeakUnderFingerMode];

  v5 = [(SpeakThisUIServer *)self eventProcessor];
  [v5 endHandlingHIDEventsForReason:{@"Speak under finger mode activated, need to steal all touches."}];
}

- (BOOL)isInSpeakUnderFingerModeWithEventProcessor:(id)a3
{
  v3 = +[AXSpeakFingerManager sharedInstance];
  if ([v3 speakFingerState] == &dword_0 + 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[AXSpeakFingerManager sharedInstance];
    v4 = [v5 speakFingerState] == &dword_4;
  }

  return v4;
}

- (CGRect)speakThisUIFrameWithEventProcessor:(id)a3
{
  [(AXSpeakOverlayViewController *)self->_viewController overlayFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_NSRange)currentSentenceRange
{
  length = self->_currentSentenceRange.length;
  location = self->_currentSentenceRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)currentWordRange
{
  length = self->_currentWordRange.length;
  location = self->_currentWordRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)updateSpeakScreenUI
{
  sub_1A614();
  sub_1A76C(&qword_382B8);
  v3 = self;
  sub_1BEB4();
  sub_1BEC4();
}

@end