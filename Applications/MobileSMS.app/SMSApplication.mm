@interface SMSApplication
- (BOOL)canRunTests;
- (BOOL)isNewConversationList;
- (BOOL)isRunningTest;
- (BOOL)runTest:(id)test options:(id)options;
- (BOOL)runTestNameOrFallback:(id)fallback;
- (BOOL)validateActionMenuWindowOrientationExpectedOrientation:(int64_t)orientation withResultsDictionary:(id)dictionary;
- (BOOL)validateAtConversationListInConversationListController:(id)controller previousSearchText:(id)text withResultsDictionary:(id)dictionary;
- (BOOL)validateBottomInsetGreaterThanIAVHeight:(id)height expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateEntryViewIsFirstResponder:(id)responder expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateIAVisExpanded:(id)expanded expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateNonzeroTranscriptInsets:(id)insets expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateNumberOfSearchResultsInConversationListController:(id)controller searchText:(id)text expectedNumber:(int64_t)number withResultsDictionary:(id)dictionary;
- (BOOL)validateRecipientSelectionControllerIsFirstResponder:(id)responder expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateTranscriptControllerIsFirstResponder:(id)responder expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateTranscriptIsScrolledToBottom:(id)bottom expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateTranscriptPreviewCacheHasResumed:(id)resumed expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateTranscriptShouldAutorotate:(id)autorotate expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (BOOL)validateTranscriptVendingIAV:(id)v expected:(BOOL)expected withResultsDictionary:(id)dictionary;
- (SMSApplication)init;
- (SMSApplicationPerformSearchProtocol)testPerformSearchDelegate;
- (id)_fsmIdentifierForTestName:(id)name;
- (id)messagesController;
- (id)sceneController;
- (unint64_t)mapSectionIdentifierForCurrentConversationListClass:(unint64_t)class;
- (void)IMCoreDeleteTopChat;
- (void)IMCoreSendNewCompose;
- (void)IMCoreToggleDisturb;
- (void)UITestActionMenuAfterRotationInVideoTaker;
- (void)UITestCancelNewComposeLandscape;
- (void)UITestDeleteTopChat;
- (void)UITestDismissRegistration;
- (void)UITestLaunchToTranscript;
- (void)UITestNewComposeDismissContactPicker;
- (void)UITestPresentNewCompose;
- (void)UITestPresentNewComposeWithDraft;
- (void)UITestPushTranscript;
- (void)UITestPushTranscriptAndDetails;
- (void)UITestPushTranscriptAndDetailsKeyboardUp;
- (void)UITestPushTranscriptKeyboardDownExpandTextEntry;
- (void)UITestPushTranscriptWithDraft;
- (void)UITestRotateTranscript;
- (void)UITestRotateTranscriptKeyboardUp;
- (void)UITestRotateTranscriptTwice;
- (void)UITestRotateTranscriptTwiceKeyboardUp;
- (void)UITestSearchForStrings;
- (void)UITestSearchForSubstringThenFullString;
- (void)UITestSearchResultNearTop;
- (void)UITestSearchResultsClearingAfterNotFound;
- (void)UITestSendAndPlayAudioMessage;
- (void)UITestSendNewComposeDraft;
- (void)UITestShowConversationWithAlertPresented;
- (void)UITestTapIntoAndOutOfConversations;
- (void)_cancelPeoplePicker;
- (void)_chatControllerDidRotate:(id)rotate;
- (void)_chatControllerWillRotate:(id)rotate;
- (void)_clearFailureBadge;
- (void)_clearSearchStringWithPreviousSearchText:(id)text resultsDictionary:(id)dictionary completion:(id)completion;
- (void)_connectToDaemon;
- (void)_detailsViewScrollingPerfTest:(id)test;
- (void)_dismissPeoplePickerWithCompletion:(id)completion completion:(id)a4;
- (void)_handleUnitTestInvocation:(id)invocation;
- (void)_keyboardDidShow:(id)show;
- (void)_keyboardWillShow:(id)show;
- (void)_resolveContactTest:(id)test;
- (void)_scrollPseudoContactTest:(id)test withOptions:(id)options;
- (void)_searchForString:(id)string validateExpectedSearchResults:(id)results resultsDictionary:(id)dictionary completion:(id)completion;
- (void)_searchForString:(id)string withCompletion:(id)completion;
- (void)_selectContact:(id)contact;
- (void)_showPeoplePickerTest:(id)test;
- (void)_startCancelPeoplePickerTest;
- (void)_startPeoplePickerTest;
- (void)_startResolveContactTest:(id)test;
- (void)_startSelectContactPeoplePickerTest;
- (void)_startcomposePseudoContactTest:(id)test withOptions:(id)options;
- (void)_stickerDragFired:(id)fired;
- (void)_willConfigureCellWithTranscriptPluginChatItem:(id)item;
- (void)buildMenuWithBuilder:(id)builder;
- (void)chatRegistryDidLoad:(id)load;
- (void)cleanupCurrentTest;
- (void)clearEntryView;
- (void)contactPickerDidHide;
- (void)dealloc;
- (void)deleteChat:(id)chat;
- (void)deleteTopChat;
- (void)didChangeOrientation:(id)orientation;
- (void)didDeleteChat;
- (void)didShowAMessage:(id)message;
- (void)didShowAMessageExtended:(id)extended;
- (void)didShowNewCompose;
- (void)didShowTranscriptList;
- (void)dissmissComposeSheet;
- (void)doPushToTranscriptTestForChatIdentifierPerformanceTest:(id)test testBlock:(id)block;
- (void)failedTest:(id)test;
- (void)failedTest:(id)test withFailure:(id)failure;
- (void)failedTest:(id)test withFailure:(id)failure withResults:(id)results;
- (void)finishedTest:(id)test extraResults:(id)results;
- (void)installNotificationObserverForNotificationName:(id)name notificationName:(id)notificationName forOneNotification:(BOOL)notification usingBlock:(id)block;
- (void)keyCommandCompose:(id)compose;
- (void)newComposeDismissContactPicker:(id)picker;
- (void)perfTestPushToTranscript;
- (void)playAudioMessage;
- (void)scrollPhotoPickerTestWithOptions:(id)options;
- (void)scrollPseudoContacts;
- (void)scrollTranscript;
- (void)sendAudioMessage;
- (void)sendMultipleMessagesEntryView:(id)view composition:(id)composition handler:(id)handler;
- (void)showConversationForChatIdentifier:(id)identifier forceReload:(BOOL)reload options:(id)options completion:(id)completion;
- (void)showConversationForChatIdentifier:(id)identifier willShowConversation:(id)conversation didShowConversation:(id)showConversation;
- (void)showKeyboard;
- (void)showMessagesApplicationAndStartTestForIdentifier:(id)identifier supportsLaunchSubtest:(BOOL)subtest;
- (void)showNextMessage;
- (void)showTransscriptAnimated:(BOOL)animated;
- (void)startAndFailTestNamed:(id)named withFailure:(id)failure;
- (void)startAudioBalloonPlaybackTest:(id)test;
- (void)startAudioWaveformFPSTest;
- (void)startCancelPeoplePickerTest:(id)test;
- (void)startComposeMessageToPseudoContactTest:(id)test;
- (void)startDetailsTest:(id)test;
- (void)startExtensionTest:(id)test launch:(BOOL)launch;
- (void)startFSMTest;
- (void)startGeneralStaticFPSTestWithDelay:(id)delay;
- (void)startGifPlaybackStaticFPSTest;
- (void)startInteractiveStickerDragTest:(id)test;
- (void)startInvisibleInkStaticFPSTest;
- (void)startKeyboardPresentationTest:(id)test;
- (void)startKeyboardResponsivenessTest:(id)test;
- (void)startLiveBubbleLoadingTest:(id)test;
- (void)startMarkAsReadLocallyTestWithOptions:(id)options;
- (void)startMarkAsReadReceivedTestWithOptions:(id)options;
- (void)startPPTSubtestForCurrentTest:(id)test;
- (void)startPriorityBoostingTestWithOptions:(id)options;
- (void)startQuicklookPresentationTest:(id)test;
- (void)startResizeTestWithOptions:(id)options;
- (void)startResolveContactTest:(id)test;
- (void)startRotationTest:(id)test;
- (void)startRotationTestWithTranscript:(id)transcript;
- (void)startScreenshotTestWithOptions:(id)options;
- (void)startScrollConversationsTest:(id)test;
- (void)startScrollForCollectionView:(id)view;
- (void)startScrollPseudoContactNamesTest:(id)test;
- (void)startScrollTranscriptTest:(id)test;
- (void)startSelectContactPeoplePickerTest:(id)test;
- (void)startSendAnimationExistingTest;
- (void)startSendAnimationNewComposeTest:(id)test;
- (void)startShowMessagesTest:(id)test;
- (void)startShowNewComposeTest:(id)test;
- (void)startShowPeoplePickerTest:(id)test;
- (void)startStaticFSMFPSTest:(id)test;
- (void)startStaticTranscriptFPSTest:(id)test;
- (void)startStuckAudioPillTest:(id)test;
- (void)startTranscriptOnlyScreenshotTestwithOptions:(id)options;
- (void)stopPPTSubtestForCurrentTest:(id)test;
- (void)tapFSMIfNecessary;
- (void)tearDownCancelPeoplePickerTest;
- (void)tearDownResolveContactTest:(id)test;
- (void)tearDownSelectContactPeoplePickerTest;
- (void)tearDownShowPeoplePickerTest;
- (void)tearDownShowPeoplePickerTest:(id)test;
- (void)typeInContactName:(id)name;
@end

@implementation SMSApplication

- (SMSApplication)init
{
  v25.receiver = self;
  v25.super_class = SMSApplication;
  v2 = [(SMSApplication *)&v25 init];
  if (!v2)
  {
    return v2;
  }

  if (CKIsRunningForDevelopmentOnSimulator())
  {
    v3 = 0;
  }

  else
  {
    v3 = CKIsRunningUITests() == 0;
  }

  if (((kFZListenerCapSendMessages | kFZListenerCapChats) & CKListenerCapabilities()) != 0 && !v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C8F4;
    block[3] = &unk_100031200;
    v20 = @"+15555648583";
    v21 = @"+18885551212";
    v22 = @"john-appleseed@mac.com";
    v23 = @"kate-bell@mac.com";
    v24 = @"+18885551213";
    if (qword_10003A220 != -1)
    {
      dispatch_once(&qword_10003A220, block);
    }

    if (CKIsRunningUITests())
    {
      v28[0] = qword_10003A1E0;
      v28[1] = qword_10003A1E8;
      v28[2] = qword_10003A1F0;
      v28[3] = qword_10003A1F8;
      v28[4] = qword_10003A200;
      v28[5] = qword_10003A208;
      v28[6] = qword_10003A210;
      v28[7] = qword_10003A218;
      v4 = v28;
      v5 = 8;
    }

    else
    {
      if (CKIsRunningForDevelopmentOnSimulator())
      {
        v6 = +[IMLockdownManager sharedInstance];
        isInternalInstall = [v6 isInternalInstall];

        if (isInternalInstall)
        {
          v8 = +[CKIMSimulatedChat prepopulatedChat];
          v27[0] = qword_10003A1E0;
          v27[1] = qword_10003A1E8;
          v27[2] = v8;
          v9 = [NSArray arrayWithObjects:v27 count:3];

LABEL_16:
          v10 = +[IMChatRegistry sharedRegistry];
          [v10 _setSimulatedChats:v9];

          v11 = +[IMDaemonController sharedController];
          [v11 setListeners:v9];

          goto LABEL_17;
        }
      }

      v26[0] = qword_10003A1E0;
      v26[1] = qword_10003A1E8;
      v4 = v26;
      v5 = 2;
    }

    v9 = [NSArray arrayWithObjects:v4 count:v5];
    goto LABEL_16;
  }

LABEL_17:
  [IMChat setChatItemRulesClass:objc_opt_class()];
  v12 = +[IMFeatureFlags sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [v12 isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    v14 = +[IMChatRegistry sharedRegistry];
    unreadCountController = [v14 unreadCountController];
    v16 = objc_alloc_init(CKUnreadCountFilterController);
    [unreadCountController replaceFilteringController:v16];
  }

  v17 = +[CKConversationList sharedConversationList];
  [(SMSApplication *)v2 _connectToDaemon];
  [(SMSApplication *)v2 _registerForAppleEventsIfNecessary];
  return v2;
}

- (void)_connectToDaemon
{
  v3 = +[IMDaemonController sharedController];
  [v3 setBlockMainThreadForNewSetup:1];

  v4 = CKListenerCapabilities() | 0x60400000;
  v10 = objc_alloc_init(NSMutableDictionary);
  v5 = +[IMPinnedConversationsController sharedInstance];
  pinnedConversationIdentifiers = [v5 pinnedConversationIdentifiers];
  [v10 setObject:pinnedConversationIdentifiers forKeyedSubscript:IMClientSetupContextPinnedChatIdentifiers];

  v7 = +[IMDaemonController sharedController];
  v8 = [v7 multiplexedConnectionWithLabel:@"MobileSMS" capabilities:v4 context:v10];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v8;
}

- (BOOL)isRunningTest
{
  v4.receiver = self;
  v4.super_class = SMSApplication;
  if ([(SMSApplication *)&v4 isRunningTest])
  {
    return 1;
  }

  else
  {
    return [(SMSApplication *)self isRunningViaTestRunner];
  }
}

- (void)cleanupCurrentTest
{
  v2 = __CurrentTestName;
  __CurrentTestName = 0;

  v3 = qword_10003A120;
  qword_10003A120 = 0;

  v4 = qword_10003A138;
  qword_10003A138 = 0;

  byte_10003A140 = 0;
  byte_10003A141 = 0;
}

- (void)startScreenshotTestWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy valueForKey:@"testName"];
  if (!IMIsRunningInScreenshotTesting())
  {
    exit(-1);
  }

  if (![SMSScreenshotTestInfo screenshotTestNameEnumValue:v4])
  {
    [(SMSApplication *)self startTranscriptOnlyScreenshotTestwithOptions:optionsCopy];
  }
}

- (void)startTranscriptOnlyScreenshotTestwithOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy valueForKey:@"chatIdentifier"];
  v6 = +[CKConversationList sharedConversationList];
  v7 = [v6 conversationForExistingChatWithChatIdentifier:v5];

  if (v7)
  {
    v8 = +[CKDraftManager sharedInstance];
    [v8 setDraft:0 forConversation:v7];

    v9 = +[CKDraftManager sharedInstance];
    [v9 saveCompositionAndFlushCache:1];

    messagesController = [(SMSApplication *)self messagesController];
    [messagesController showConversationListWithAnimation:0];

    v11 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002168;
    block[3] = &unk_1000309E8;
    block[4] = self;
    v13 = v7;
    v14 = optionsCopy;
    dispatch_after(v11, &_dispatch_main_q, block);
  }
}

- (id)sceneController
{
  delegate = [(SMSApplication *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sceneController = [delegate sceneController];
  }

  else
  {
    sceneController = 0;
  }

  return sceneController;
}

- (id)messagesController
{
  sceneController = [(SMSApplication *)self sceneController];
  messagesSceneDelegate = [sceneController messagesSceneDelegate];
  messagesController = [messagesSceneDelegate messagesController];

  return messagesController;
}

- (BOOL)runTestNameOrFallback:(id)fallback
{
  fallbackCopy = fallback;
  v5 = NSSelectorFromString(fallbackCopy);
  if (v5 && (v6 = v5, (objc_opt_respondsToSelector() & 1) != 0) || ([qword_10003A120 objectForKey:@"implementationMethodName"], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v6 = NSSelectorFromString(v7), v8, v6))
  {
    if ([(NSString *)fallbackCopy rangeOfString:@"Landscape"]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    if (([UIApp rotateIfNeeded:v9] & 1) == 0)
    {
      [(SMSApplication *)self performSelector:v6 withObject:0 afterDelay:0.5];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  [IMBalloonPluginManager setIsRunningPPT:1];
  v9 = IMGetDomainValueForKey();
  v10 = v9;
  if (v9 && [v9 BOOLValue])
  {
    if (qword_10003A128)
    {
      sub_10001C554(qword_10003A128, 0, 0);
    }

    qword_10003A128 = sub_10001C1A4();
  }

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"didShowAMessage:" name:@"PPTDidShowConversationEvent" object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"didChangeOrientation:" name:@"PPTDidTransitionToSize" object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"chatRegistryDidLoad:" name:IMChatRegistryDidLoadNotification object:0];

  objc_storeStrong(&__CurrentTestName, test);
  objc_storeStrong(&qword_10003A120, options);
  v14 = [qword_10003A120 objectForKey:@"iterations"];
  dword_10003A130 = [v14 intValue] + 1;

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002724;
  v22[3] = &unk_100030A10;
  v22[4] = self;
  v15 = testCopy;
  v23 = v15;
  v16 = optionsCopy;
  v24 = v16;
  v17 = objc_retainBlock(v22);
  if ([(SMSApplication *)self canRunTests])
  {
    v18 = (v17[2])(v17);
  }

  else
  {
    NSLog(@"No chats, deferring");
    v19 = objc_retainBlock(v17);
    v20 = qword_10003A138;
    qword_10003A138 = v19;

    v18 = 1;
  }

  return v18;
}

- (void)finishedTest:(id)test extraResults:(id)results
{
  resultsCopy = results;
  testCopy = test;
  sub_100001E2C(testCopy);
  v10.receiver = self;
  v10.super_class = SMSApplication;
  [(SMSApplication *)&v10 finishedTest:testCopy extraResults:resultsCopy];

  if (__CurrentTestName)
  {
    [(SMSApplication *)self showTranscriptListNotAnimated];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:@"PPTDidShowConversationEvent" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self name:UIWindowDidRotateNotification object:0];
  }

  [(SMSApplication *)self cleanupCurrentTest];
}

- (void)failedTest:(id)test withFailure:(id)failure withResults:(id)results
{
  resultsCopy = results;
  failureCopy = failure;
  testCopy = test;
  [(SMSApplication *)self cleanupCurrentTest];
  v11.receiver = self;
  v11.super_class = SMSApplication;
  [(SMSApplication *)&v11 failedTest:testCopy withFailure:failureCopy withResults:resultsCopy];
}

- (void)failedTest:(id)test withFailure:(id)failure
{
  failureCopy = failure;
  testCopy = test;
  [(SMSApplication *)self cleanupCurrentTest];
  v8.receiver = self;
  v8.super_class = SMSApplication;
  [(SMSApplication *)&v8 failedTest:testCopy withFailure:failureCopy];
}

- (void)failedTest:(id)test
{
  testCopy = test;
  [(SMSApplication *)self cleanupCurrentTest];
  v5.receiver = self;
  v5.super_class = SMSApplication;
  [(SMSApplication *)&v5 failedTest:testCopy];
}

- (void)showConversationForChatIdentifier:(id)identifier willShowConversation:(id)conversation didShowConversation:(id)showConversation
{
  identifierCopy = identifier;
  conversationCopy = conversation;
  showConversationCopy = showConversation;
  v11 = +[CKConversationList sharedConversationList];
  conversations = [v11 conversations];

  if ([conversations count])
  {
    [(SMSApplication *)self showTranscriptListNotAnimated];
    v13 = dispatch_time(0, 500000000);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003574;
    v14[3] = &unk_100030A60;
    v15 = identifierCopy;
    selfCopy = self;
    v17 = showConversationCopy;
    v18 = conversationCopy;
    dispatch_after(v13, &_dispatch_main_q, v14);
  }

  else
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)doPushToTranscriptTestForChatIdentifierPerformanceTest:(id)test testBlock:(id)block
{
  blockCopy = block;
  testCopy = test;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003830;
  v13[3] = &unk_1000309C0;
  v13[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003844;
  v10[3] = &unk_100030A88;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = blockCopy;
  v8 = v11;
  v9 = blockCopy;
  [(SMSApplication *)self showConversationForChatIdentifier:testCopy willShowConversation:v13 didShowConversation:v10];
}

- (void)showTransscriptAnimated:(BOOL)animated
{
  v5 = dispatch_time(0, 1000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000038FC;
  v6[3] = &unk_100030AB0;
  v6[4] = self;
  animatedCopy = animated;
  dispatch_after(v5, &_dispatch_main_q, v6);
}

- (void)showKeyboard
{
  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];
  [chatController showKeyboardForReply];
}

- (void)scrollPseudoContacts
{
  messagesController = [(SMSApplication *)self messagesController];
  ppt_chatController = [messagesController ppt_chatController];

  composeRecipientSelectionController = [ppt_chatController composeRecipientSelectionController];
  searchListController = [composeRecipientSelectionController searchListController];
  tableView = [searchListController tableView];

  v6 = [qword_10003A120 objectForKey:@"offset"];
  intValue = [v6 intValue];

  v8 = [qword_10003A120 objectForKey:@"iterations"];
  intValue2 = [v8 intValue];

  [tableView _performScrollTest:__CurrentTestName iterations:intValue2 delta:intValue];
}

- (void)tapFSMIfNecessary
{
  if ([__CurrentTestName rangeOfString:@"FSM"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    messagesController = [(SMSApplication *)self messagesController];
    chatController = [messagesController chatController];

    collectionViewController = [chatController collectionViewController];
    v18 = chatController;
    [chatController collectionView];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v22 = 0u;
    visibleCells = [v17 visibleCells];
    v7 = [visibleCells countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(visibleCells);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            statusButton = [v12 statusButton];
            if (statusButton)
            {
              v14 = statusButton;
              v15 = objc_opt_respondsToSelector();

              if (v15)
              {
                statusButton2 = [v12 statusButton];
                [collectionViewController touchUpInsideCellStatusButton:statusButton2];

                goto LABEL_15;
              }
            }
          }
        }

        v8 = [visibleCells countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

- (void)scrollTranscript
{
  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];
  collectionViewController = [chatController collectionViewController];
  collectionView = [collectionViewController collectionView];

  v5 = [qword_10003A120 objectForKey:@"recapBased"];
  LODWORD(chatController) = [v5 BOOLValue];

  if (chatController && [sub_100003E78() isRecapAvailable])
  {
    v6 = [objc_alloc(sub_100003F58()) initWithTestName:__CurrentTestName scrollView:collectionView completionHandler:0];
    [sub_100003E78() runTestWithParameters:v6];
  }

  else
  {
    if ([__CurrentTestName rangeOfString:kScrollTranscriptFullScreenTest] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [qword_10003A120 objectForKey:@"offset"];
      dword_10003A144 = [v7 intValue];

      v8 = dword_10003A144;
    }

    else
    {
      [collectionView frame];
      v8 = v9;
      dword_10003A144 = v9;
    }

    v10 = __CurrentTestName;
    v11 = dword_10003A130;
    [collectionView contentSize];
    [collectionView _performScrollTest:v10 iterations:v11 delta:v8 length:v12];
  }
}

- (void)didShowAMessage:(id)message
{
  messageCopy = message;
  if (__CurrentTestName)
  {
    if ([__CurrentTestName rangeOfString:kShowMessagesTest] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((+[UIDevice __ck_currentDeviceIsPadOrMac]& 1) == 0)
      {
        v7 = __CurrentTestName;
        v8 = [NSArray arrayWithObject:@"time"];
        [(SMSApplication *)self startedSubTest:@"Close Message Responsiveness" forTest:v7 withMetrics:v8];

        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100004260;
        v11[3] = &unk_1000309C0;
        v11[4] = self;
        [(SMSApplication *)self installCACommitCompletionBlock:v11];
      }

      v9 = "showTranscriptList";
      v10 = 0.0;
      goto LABEL_14;
    }

    if ([__CurrentTestName rangeOfString:@"ScrollTranscript"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([__CurrentTestName rangeOfString:@"WithKeyboard"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SMSApplication *)self showKeyboard];
      }

      [(SMSApplication *)self performSelector:"tapFSMIfNecessary" withObject:0 afterDelay:0.5];
      v9 = "scrollTranscript";
LABEL_13:
      v10 = 1.0;
LABEL_14:
      [(SMSApplication *)self performSelector:v9 withObject:0 afterDelay:v10];
      goto LABEL_15;
    }

    if ([__CurrentTestName rangeOfString:@"StaticTranscript"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([__CurrentTestName rangeOfString:@"FSM"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [qword_10003A120 objectForKey:@"runtime"];
        v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 intValue]);
        [(SMSApplication *)self performSelector:"startGeneralStaticFPSTestWithDelay:" withObject:v6 afterDelay:1.0];

        goto LABEL_15;
      }

      v9 = "startFSMTest";
      goto LABEL_13;
    }
  }

LABEL_15:
}

- (void)didShowAMessageExtended:(id)extended
{
  extendedCopy = extended;
  if (__CurrentTestName && [__CurrentTestName rangeOfString:kShowMessagesExtendedTest] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((+[UIDevice __ck_currentDeviceIsPadOrMac]& 1) == 0)
    {
      v5 = __CurrentTestName;
      v6 = [NSArray arrayWithObject:@"time"];
      [(SMSApplication *)self startedSubTest:@"Close Message Responsiveness" forTest:v5 withMetrics:v6];

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10000439C;
      v7[3] = &unk_1000309C0;
      v7[4] = self;
      [(SMSApplication *)self installCACommitCompletionBlock:v7];
    }

    [(SMSApplication *)self performSelector:"showTranscriptList" withObject:0 afterDelay:0.0];
  }
}

- (void)didShowNewCompose
{
  byte_10003A141 = 1;
  if (byte_10003A140 == 1 && [__CurrentTestName rangeOfString:kShowNewComposeTest] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SMSApplication *)self finishedTest:__CurrentTestName extraResults:0];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:UIKeyboardDidShowNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"PPTDidShowNewComposeEvent" object:0];
  }
}

- (void)didShowTranscriptList
{
  if (__CurrentTestName && ([__CurrentTestName rangeOfString:kShowMessagesTest] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(__CurrentTestName, "rangeOfString:", kShowMessagesExtendedTest) != 0x7FFFFFFFFFFFFFFFLL))
  {
    if (++qword_10003A148 >= qword_10003A150)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v3 = [NSNumber numberWithInteger:qword_10003A150];
      [v4 setObject:v3 forKey:@"messages"];

      [v4 setObject:@"messages" forKey:@"messagesUnits"];
      [(SMSApplication *)self finishedTest:__CurrentTestName extraResults:v4];
    }

    else
    {

      [(SMSApplication *)self performSelector:"showNextMessage" withObject:0 afterDelay:0.0];
    }
  }
}

- (void)deleteTopChat
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  if ([conversations count])
  {
    v5 = +[CKConversationList sharedConversationList];
    v6 = [v5 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

    messagesController = [(SMSApplication *)self messagesController];
    v10 = v6;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [messagesController conversationListIsDeletingConversations:v8];

    v9 = +[CKConversationList sharedConversationList];
    [v9 deleteConversation:v6];
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName withFailure:@"No converversations in transcript list"];
  }
}

- (void)playAudioMessage
{
  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];

  collectionViewController = [chatController collectionViewController];
  collectionView = [collectionViewController collectionView];

  visibleCells = [collectionView visibleCells];
  reverseObjectEnumerator = [visibleCells reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004880;
  v11[3] = &unk_100030AD8;
  v12 = collectionView;
  v13 = chatController;
  v9 = chatController;
  v10 = collectionView;
  [allObjects enumerateObjectsUsingBlock:v11];
}

- (void)sendAudioMessage
{
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];

  if ([conversations count])
  {
    v7 = +[CKConversationList sharedConversationList];
    v8 = [v7 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

    messagesController2 = [(SMSApplication *)self messagesController];
    [messagesController2 showConversation:v8 animate:1];

    v10 = dispatch_time(0, 1000000000);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004AB4;
    v11[3] = &unk_100030B00;
    v12 = chatController;
    selfCopy = self;
    dispatch_after(v10, &_dispatch_main_q, v11);
  }
}

- (void)UITestSendAndPlayAudioMessage
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100004F08;
  v16[4] = sub_100004F18;
  v17 = 0;
  v3 = [NSAttributedString alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"This is a test" value:&stru_100031A40 table:0];
  v6 = [v3 initWithString:v5];

  v7 = [[CKComposition alloc] initWithText:v6 subject:0];
  v8 = [[NSArray alloc] initWithObjects:{@"bhaskar.test@icloud.com", 0}];
  v9 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004F20;
  block[3] = &unk_100030B78;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v15 = v16;
  v10 = v7;
  v11 = v8;
  dispatch_after(v9, &_dispatch_main_q, block);

  _Block_object_dispose(v16, 8);
}

- (void)UITestShowConversationWithAlertPresented
{
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  v5 = [conversations count];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  if (v5)
  {
    v6 = +[CKConversationList sharedConversationList];
    v7 = [v6 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

    v8 = dispatch_time(0, 1000000000);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100005544;
    v10[3] = &unk_100030B00;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    dispatch_after(v8, &_dispatch_main_q, v10);
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)UITestActionMenuAfterRotationInVideoTaker
{
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  v5 = [conversations count];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  if (v5)
  {
    v6 = +[CKConversationList sharedConversationList];
    v7 = [v6 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

    v8 = dispatch_time(0, 1000000000);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100005978;
    v10[3] = &unk_100030B00;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    dispatch_after(v8, &_dispatch_main_q, v10);
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)didDeleteChat
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005EA8;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)deleteChat:(id)chat
{
  chatCopy = chat;
  if (![(SMSApplication *)self isOldConversationList])
  {
    if ([(SMSApplication *)self isNewConversationList])
    {
      messagesController = [(SMSApplication *)self messagesController];
      conversationListController = [messagesController conversationListController];

      item = [chatCopy item];
      conversationList = [conversationListController conversationList];
      conversations = [conversationList conversations];
      v23 = [conversations count];

      if (item < v23)
      {
        [conversationListController setEditingMode:1 animated:0];
        collectionView = [conversationListController collectionView];
        [collectionView selectItemAtIndexPath:chatCopy animated:1 scrollPosition:0];

        collectionView2 = [conversationListController collectionView];
        delegate = [collectionView2 delegate];
        collectionView3 = [conversationListController collectionView];
        [delegate collectionView:collectionView3 didSelectItemAtIndexPath:chatCopy];

        v28 = dispatch_time(0, 1000000000);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100006340;
        v30[3] = &unk_1000309C0;
        v31 = conversationListController;
        dispatch_after(v28, &_dispatch_main_q, v30);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_12;
      }

      conversationListController = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(conversationListController, OS_LOG_TYPE_INFO))
      {
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, conversationListController, OS_LOG_TYPE_INFO, "The conversation list was not of type CKConversationListController or CKConversationListCollectionViewController.", v29, 2u);
      }
    }

    goto LABEL_12;
  }

  messagesController2 = [(SMSApplication *)self messagesController];
  conversationListController2 = [messagesController2 conversationListController];
  view = [conversationListController2 view];

  v8 = [chatCopy row];
  messagesController3 = [(SMSApplication *)self messagesController];
  conversationListController3 = [messagesController3 conversationListController];
  conversationList2 = [conversationListController3 conversationList];
  conversations2 = [conversationList2 conversations];
  v13 = [conversations2 count];

  if (v8 < v13)
  {
    messagesController4 = [(SMSApplication *)self messagesController];
    conversationListController4 = [messagesController4 conversationListController];
    [conversationListController4 setEditing:1 animated:0];

    [view selectRowAtIndexPath:chatCopy animated:1 scrollPosition:0];
    delegate2 = [view delegate];
    [delegate2 tableView:view didSelectRowAtIndexPath:chatCopy];

    v17 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000062E0;
    block[3] = &unk_1000309C0;
    block[4] = self;
    dispatch_after(v17, &_dispatch_main_q, block);
  }

LABEL_12:
}

- (BOOL)isNewConversationList
{
  v2 = +[CKUIBehavior sharedBehaviors];
  conversationListControllerClass = [v2 conversationListControllerClass];

  return conversationListControllerClass == objc_opt_class();
}

- (unint64_t)mapSectionIdentifierForCurrentConversationListClass:(unint64_t)class
{
  if (![(SMSApplication *)self isOldConversationList])
  {
    if (![(SMSApplication *)self isNewConversationList])
    {
      goto LABEL_42;
    }

    if (class <= 2)
    {
      if (!class)
      {
        return class;
      }

      if (class != 1)
      {
        if (class == 2)
        {
          return 1;
        }

        goto LABEL_42;
      }

      return 3;
    }

    if (class > 4)
    {
      if (class == 5)
      {
        return 4;
      }

      if (class == 6)
      {
        return 5;
      }

      goto LABEL_42;
    }

    if (class == 3)
    {
      return 2;
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_42;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v11 = 0;
    v6 = "Tried to map to the siri section in the new conversation list.";
    v7 = &v11;
LABEL_40:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    goto LABEL_41;
  }

  if (class > 2)
  {
    if (class <= 4)
    {
      if (class != 3)
      {
        return 1;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_42;
      }

      v5 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      v12 = 0;
      v6 = "Tried to map to the pinned section in the old conversation list.";
      v7 = &v12;
      goto LABEL_40;
    }

    if (class != 5)
    {
      if (class != 6)
      {
        goto LABEL_42;
      }

      return 3;
    }

    return 2;
  }

  if (!class)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_42;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v15 = 0;
    v6 = "Tried to map to the focus filter section in the old conversation list.";
    v7 = &v15;
    goto LABEL_40;
  }

  if (class != 1)
  {
    if (class != 2 || !IMOSLoggingEnabled())
    {
      goto LABEL_42;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v13 = 0;
    v6 = "Tried to map to the pinning onboarding title section in the old conversation list.";
    v7 = &v13;
    goto LABEL_40;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Tried to map to the TipKit section in the old conversation list.";
      v7 = buf;
      goto LABEL_40;
    }

LABEL_41:
  }

LABEL_42:
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No mapping could be made because the conversation list was not of type CKConversationListController or CKConversationListCollectionViewController.", v10, 2u);
    }
  }

  return -1;
}

- (void)UITestDeleteTopChat
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  if (conversations)
  {
    qword_10003A158 = [conversations count];
    v5 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006790;
    block[3] = &unk_1000309C0;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName withFailure:@"No conversations in list so cannot delete top one"];
  }
}

- (void)UITestPushTranscript
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = [qword_10003A120 objectForKey:@"chatIdentifier"];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"chat339741476857344860";
  }

  v6 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006904;
  block[3] = &unk_100030BA0;
  block[4] = self;
  v9 = v5;
  v10 = v4;
  v7 = v5;
  dispatch_after(v6, &_dispatch_main_q, block);
}

- (void)UITestLaunchToTranscript
{
  v3 = [qword_10003A120 objectForKey:@"chatIdentifier"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"+14087240720";
  }

  v5 = [NSString stringWithFormat:@"sms://open?groupid=%@", v4];
  v6 = [NSURL URLWithString:v5];

  [(SMSApplication *)self startedTest:__CurrentTestName];
  sceneController = [(SMSApplication *)self sceneController];
  messagesSceneDelegate = [sceneController messagesSceneDelegate];
  [messagesSceneDelegate openURL:v6 sourceApplication:0];

  v9 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006DFC;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)UITestPushTranscriptWithDraft
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006FFC;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestPushTranscriptKeyboardDownExpandTextEntry
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000074A8;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestPushTranscriptAndDetails
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007A94;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestPushTranscriptAndDetailsKeyboardUp
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000804C;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestDismissRegistration
{
  [(SMSApplication *)self startedTest:__CurrentTestName];
  if (+[IMServiceImpl smsEnabled])
  {
    v3 = __CurrentTestName;

    [(SMSApplication *)self finishedTest:v3];
  }

  else
  {
    sceneController = [(SMSApplication *)self sceneController];
    messagesSceneDelegate = [sceneController messagesSceneDelegate];
    [messagesSceneDelegate setShouldShowRegistrationOverride:1];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:IMAccountControllerOperationalAccountsChangedNotification object:0];

    v7 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008774;
    block[3] = &unk_1000309C0;
    block[4] = self;
    dispatch_after(v7, &_dispatch_main_q, block);
  }
}

- (void)UITestRotateTranscript
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008A24;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestRotateTranscriptKeyboardUp
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008EEC;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestRotateTranscriptTwice
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009474;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestRotateTranscriptTwiceKeyboardUp
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000099FC;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestPresentNewCompose
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A044;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestPresentNewComposeWithDraft
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = [NSAttributedString alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"This is a test" value:&stru_100031A40 table:0];
  v6 = [v3 initWithString:v5];

  v7 = [[CKComposition alloc] initWithText:v6 subject:0];
  v8 = [[NSArray alloc] initWithObjects:{@"bhaskar.test@icloud.com", 0}];
  v9 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A3D0;
  block[3] = &unk_1000309E8;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)UITestSendNewComposeDraft
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = [NSAttributedString alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"This is a test" value:&stru_100031A40 table:0];
  v6 = [v3 initWithString:v5];

  v7 = [[CKComposition alloc] initWithText:v6 subject:0];
  v8 = [[NSArray alloc] initWithObjects:{@"bhaskar.test@icloud.com", 0}];
  v9 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A758;
  block[3] = &unk_1000309E8;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)perfTestPushToTranscript
{
  v3 = [qword_10003A120 objectForKey:@"chatIdentifier"];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000ADF8;
  v4[3] = &unk_100030BC8;
  v4[4] = self;
  [(SMSApplication *)self doPushToTranscriptTestForChatIdentifierPerformanceTest:v3 testBlock:v4];
}

- (void)contactPickerDidHide
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AEF8;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)newComposeDismissContactPicker:(id)picker
{
  pickerCopy = picker;
  v5 = dispatch_time(0, 2000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B0B8;
  v7[3] = &unk_100030B00;
  v7[4] = self;
  v8 = pickerCopy;
  v6 = pickerCopy;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)UITestNewComposeDismissContactPicker
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B280;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestCancelNewComposeLandscape
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B518;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)UITestSearchForStrings
{
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v3 = [NSArray arrayWithContentsOfFile:@"/usr/local/share/chatkit/SearchTestCorpus.plist"];
  if (v3)
  {
    [(SMSApplication *)self showTranscriptListNotAnimated];
    v4 = v3;
    ck_dispatch_main_after_seconds();
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)UITestSearchResultsClearingAfterNotFound
{
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v3 = [NSArray arrayWithContentsOfFile:@"/usr/local/share/chatkit/SearchTestCorpus.plist"];
  if (v3)
  {
    [(SMSApplication *)self showTranscriptListNotAnimated];
    v4 = v3;
    ck_dispatch_main_after_seconds();
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)UITestSearchForSubstringThenFullString
{
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v3 = [NSArray arrayWithContentsOfFile:@"/usr/local/share/chatkit/SearchTestCorpus.plist"];
  if (v3)
  {
    [(SMSApplication *)self showTranscriptListNotAnimated];
    v4 = v3;
    ck_dispatch_main_after_seconds();
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)UITestTapIntoAndOutOfConversations
{
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v3 = [NSArray arrayWithContentsOfFile:@"/usr/local/share/chatkit/SearchTestCorpus.plist"];
  if (v3)
  {
    [(SMSApplication *)self showTranscriptListNotAnimated];
    v4 = v3;
    ck_dispatch_main_after_seconds();
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)UITestSearchResultNearTop
{
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000C07C;
  v3[3] = &unk_1000309C0;
  v3[4] = self;
  [(SMSApplication *)self _searchForString:@"#4813" withCompletion:v3];
}

- (void)_searchForString:(id)string validateExpectedSearchResults:(id)results resultsDictionary:(id)dictionary completion:(id)completion
{
  stringCopy = string;
  resultsCopy = results;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  messagesController = [(SMSApplication *)self messagesController];
  conversationListController = [messagesController conversationListController];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000D57C;
  v20[3] = &unk_100030D80;
  v21 = resultsCopy;
  selfCopy = self;
  v23 = stringCopy;
  v24 = dictionaryCopy;
  v25 = completionCopy;
  v16 = completionCopy;
  v17 = dictionaryCopy;
  v18 = stringCopy;
  v19 = resultsCopy;
  [conversationListController performSearch:v18 completion:v20];
}

- (void)_searchForString:(id)string withCompletion:(id)completion
{
  completionCopy = completion;
  stringCopy = string;
  messagesController = [(SMSApplication *)self messagesController];
  conversationListController = [messagesController conversationListController];
  [conversationListController performSearch:stringCopy completion:completionCopy];
}

- (void)_clearSearchStringWithPreviousSearchText:(id)text resultsDictionary:(id)dictionary completion:(id)completion
{
  textCopy = text;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  messagesController = [(SMSApplication *)self messagesController];
  conversationListController = [messagesController conversationListController];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000D8BC;
  v16[3] = &unk_100030DA8;
  v16[4] = self;
  v17 = textCopy;
  v18 = dictionaryCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = dictionaryCopy;
  v15 = textCopy;
  [conversationListController performSearch:0 completion:v16];
}

- (BOOL)validateNumberOfSearchResultsInConversationListController:(id)controller searchText:(id)text expectedNumber:(int64_t)number withResultsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  textCopy = text;
  searchResultsController = [controller searchResultsController];
  collectionView = [searchResultsController collectionView];
  v14 = [collectionView numberOfItemsInSection:0];
  v15 = v14 == number;
  textCopy = [NSString stringWithFormat:@"Search %@ number of results", textCopy];

  v17 = [NSString stringWithFormat:@"expected=%lld, actual=%lld", number, v14];
  [(SMSApplication *)self _recordResult:v15 forKey:textCopy comment:v17 resultsDictionary:dictionaryCopy];

  return v15;
}

- (BOOL)validateAtConversationListInConversationListController:(id)controller previousSearchText:(id)text withResultsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  textCopy = text;
  searchResultsController = [controller searchResultsController];
  collectionView = [searchResultsController collectionView];
  v12 = [collectionView numberOfItemsInSection:0];
  textCopy = [NSString stringWithFormat:@"After clearing %@ should have no results", textCopy];

  v14 = [NSString stringWithFormat:@"actual=%lld", v12];
  [(SMSApplication *)self _recordResult:v12 == 0 forKey:textCopy comment:v14 resultsDictionary:dictionaryCopy];

  return v12 == 0;
}

- (BOOL)validateTranscriptShouldAutorotate:(id)autorotate expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  v9 = [autorotate shouldAutorotate] ^ expectedCopy;
  [(SMSApplication *)self _recordResult:v9 ^ 1 forKey:@"Transcript should autorotate" comment:0 resultsDictionary:dictionaryCopy];

  return v9 ^ 1;
}

- (BOOL)validateTranscriptVendingIAV:(id)v expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  inputAccessoryView = [v inputAccessoryView];
  LODWORD(v) = inputAccessoryView == 0;

  [(SMSApplication *)self _recordResult:v ^ expectedCopy forKey:@"Transcript vending IAV" comment:0 resultsDictionary:dictionaryCopy];
  return v ^ expectedCopy;
}

- (BOOL)validateNonzeroTranscriptInsets:(id)insets expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  collectionViewController = [insets collectionViewController];
  collectionView = [collectionViewController collectionView];
  [collectionView contentInset];
  v12 = v11;
  v14 = v13;

  v15 = (v12 <= 0.0) ^ expectedCopy;
  v16 = [NSString stringWithFormat:@"%.2f", *&v12];
  [(SMSApplication *)self _recordResult:v15 forKey:@"Transcript top inset is nonzero" comment:v16 resultsDictionary:dictionaryCopy];
  v17 = (v14 <= 0.0) ^ expectedCopy;
  v18 = [NSString stringWithFormat:@"%.2f", *&v14];

  [(SMSApplication *)self _recordResult:v17 forKey:@"Transcript bottom inset is nonzero" comment:v18 resultsDictionary:dictionaryCopy];
  return v15 & v17;
}

- (BOOL)validateBottomInsetGreaterThanIAVHeight:(id)height expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  heightCopy = height;
  collectionViewController = [heightCopy collectionViewController];
  collectionView = [collectionViewController collectionView];
  [collectionView contentInset];
  v13 = v12;

  inputAccessoryView = [heightCopy inputAccessoryView];

  if (!inputAccessoryView)
  {
    [(SMSApplication *)self _recordResult:0 forKey:@"Bottom inset > IAV height (KB up)" comment:@"Transcript controller returned nil IAV resultsDictionary:FAIL", dictionaryCopy];
  }

  [inputAccessoryView frame];
  v16 = v13 <= v15;
  v17 = [NSString stringWithFormat:@"bottom inset %.2f. IAV %.2f", *&v13, *&v15];
  [(SMSApplication *)self _recordResult:v16 ^ expectedCopy forKey:@"Bottom inset > IAV height (KB up)" comment:v17 resultsDictionary:dictionaryCopy];

  return v16 ^ expectedCopy;
}

- (BOOL)validateIAVisExpanded:(id)expanded expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  inputAccessoryView = [expanded inputAccessoryView];
  if (!inputAccessoryView)
  {
    [(SMSApplication *)self _recordResult:0 forKey:@"IAV height > 44.0 (IAV is expanded)" comment:@"Transcript controller returned nil IAV resultsDictionary:FAIL", dictionaryCopy];
  }

  [inputAccessoryView frame];
  v11 = v10 <= 44.0;
  v12 = [NSString stringWithFormat:@"IAV height %.2f", *&v10];
  [(SMSApplication *)self _recordResult:v11 ^ expectedCopy forKey:@"IAV height > 44.0 (IAV is expanded)" comment:v12 resultsDictionary:dictionaryCopy];

  return v11 ^ expectedCopy;
}

- (BOOL)validateTranscriptControllerIsFirstResponder:(id)responder expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  responderCopy = responder;
  view = [responderCopy view];
  window = [view window];
  firstResponder = [window firstResponder];

  v13 = (firstResponder != responderCopy) ^ expectedCopy;
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = @"Transcript is FR when it should not be";
    if (expectedCopy)
    {
      v15 = @"Expected TranscriptController to be FR";
    }

    v14 = v15;
  }

  [(SMSApplication *)self _recordResult:v13 forKey:@"TranscriptController is First Responder" comment:v14 resultsDictionary:dictionaryCopy];

  return v13;
}

- (BOOL)validateEntryViewIsFirstResponder:(id)responder expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  entryView = [responder entryView];
  contentView = [entryView contentView];
  v11 = [contentView isActive] ^ expectedCopy;

  if (v11 == 1)
  {
    v12 = @"IAV is FR when it should not be, keyboard should be dismissed";
    if (expectedCopy)
    {
      v12 = @"Expected IAV to be FR, keyboard presented";
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [(SMSApplication *)self _recordResult:v11 ^ 1 forKey:@"Entry View is First Responder" comment:v13 resultsDictionary:dictionaryCopy];

  return v11 ^ 1;
}

- (BOOL)validateTranscriptIsScrolledToBottom:(id)bottom expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  collectionViewController = [bottom collectionViewController];
  collectionView = [collectionViewController collectionView];

  v11 = [collectionView __ck_isScrolledToBottom] ^ expectedCopy;
  if (v11 == 1)
  {
    [collectionView contentOffset];
    v13 = v12;
    [collectionView __ck_bottomOffset];
    if (expectedCopy)
    {
      [NSString stringWithFormat:@"Not scrolled to bottom. Current %.2f expected %.2f", v13, v14];
    }

    else
    {
      [NSString stringWithFormat:@"Scrolled to bottom when not expected to be. Current %.2f", v13, v18];
    }
    v15 = ;
  }

  else
  {
    v15 = 0;
  }

  if (expectedCopy)
  {
    v16 = @"Transcript scrolled to bottom";
  }

  else
  {
    v16 = @"Transcript not scrolled to bottom";
  }

  [(SMSApplication *)self _recordResult:v11 ^ 1 forKey:v16 comment:v15 resultsDictionary:dictionaryCopy];

  return v11 ^ 1;
}

- (BOOL)validateTranscriptPreviewCacheHasResumed:(id)resumed expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  v8 = +[CKPreviewDispatchCache transcriptPreviewCache];
  v9 = [v8 valueForKey:@"dispatchCache"];
  v10 = [v9 valueForKey:@"dispatchQueue"];
  v11 = [v10 isSuspended] ^ expectedCopy;
  if (expectedCopy)
  {
    v12 = @"Transcript preview cache resumed";
  }

  else
  {
    v12 = @"Transcript preview cache not resumed";
  }

  if (v11)
  {
    v13 = &stru_100031A40;
  }

  else
  {
    v13 = @"Transcript preview cache suspend state incorrect";
  }

  [(SMSApplication *)self _recordResult:v11 forKey:v12 comment:v13 resultsDictionary:dictionaryCopy];

  return v11;
}

- (BOOL)validateRecipientSelectionControllerIsFirstResponder:(id)responder expected:(BOOL)expected withResultsDictionary:(id)dictionary
{
  expectedCopy = expected;
  dictionaryCopy = dictionary;
  composeRecipientSelectionController = [responder composeRecipientSelectionController];
  v10 = [composeRecipientSelectionController toFieldIsFirstResponder] ^ expectedCopy;
  if (v10 == 1)
  {
    v11 = @"To: field is FR when it should not be";
    if (expectedCopy)
    {
      v11 = @"Expected To: field to be FR, keyboard presented";
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(SMSApplication *)self _recordResult:v10 ^ 1 forKey:@"To: field is first responder" comment:v12 resultsDictionary:dictionaryCopy];

  return v10 ^ 1;
}

- (BOOL)validateActionMenuWindowOrientationExpectedOrientation:(int64_t)orientation withResultsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  windows = [UIApp windows];
  v8 = [windows countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(windows);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        NSClassFromString(@"CKActionMenuWindow");
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 _orientationForViewTransform])
        {
          _orientationForViewTransform = [v12 _orientationForViewTransform];
          if (_orientationForViewTransform == orientation)
          {
            v15 = @"Orientation is correct";
          }

          else
          {
            v15 = @"Orientation is incorrect";
          }

          [(SMSApplication *)self _recordResult:_orientationForViewTransform == orientation forKey:@"CKActionMenuWindow orientation" comment:v15 resultsDictionary:dictionaryCopy];

          v13 = 1;
          goto LABEL_15;
        }
      }

      v9 = [windows countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [(SMSApplication *)self _recordResult:0 forKey:@"CKActionMenuWindow orientation" comment:@"No window found" resultsDictionary:dictionaryCopy];
  v13 = 0;
LABEL_15:

  return v13;
}

- (void)IMCoreSendNewCompose
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v3 = [NSAttributedString alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"This is a test" value:&stru_100031A40 table:0];
  v6 = [v3 initWithString:v5];

  v7 = [[CKComposition alloc] initWithText:v6 subject:0];
  v8 = [[NSArray alloc] initWithObjects:{@"bhaskar.test@icloud.com", 0}];
  v9 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E958;
  block[3] = &unk_1000309E8;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)IMCoreToggleDisturb
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  if ([conversations count])
  {
    v5 = +[CKConversationList sharedConversationList];
    v6 = [v5 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

    v7 = dispatch_time(0, 1000000000);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000EC44;
    v9[3] = &unk_100030B00;
    v10 = v6;
    selfCopy = self;
    v8 = v6;
    dispatch_after(v7, &_dispatch_main_q, v9);
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName withFailure:@"No converversations in transcript list"];
  }
}

- (void)IMCoreDeleteTopChat
{
  [(SMSApplication *)self showTranscriptListNotAnimated];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  if ([conversations count])
  {
    v5 = +[CKConversationList sharedConversationList];
    v6 = [v5 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

    messagesController = [(SMSApplication *)self messagesController];
    v12 = v6;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    [messagesController conversationListIsDeletingConversations:v8];

    v9 = +[CKConversationList sharedConversationList];
    [v9 deleteConversation:v6];

    v10 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EF48;
    block[3] = &unk_1000309C0;
    block[4] = self;
    dispatch_after(v10, &_dispatch_main_q, block);
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName withFailure:@"No converversations in transcript list"];
  }
}

- (void)showNextMessage
{
  v3 = [qword_10003A120 objectForKey:@"chatIdentifier"];
  v4 = v3;
  if (!v3 || ![v3 length])
  {
    qword_10003A148 = [NSString stringWithFormat:@"chatIdentifier%ld", qword_10003A148];
    v6 = [qword_10003A120 objectForKey:qword_10003A148];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [&off_100034CA8 objectAtIndex:qword_10003A148];
    }

    v9 = v8;

    v4 = v9;
  }

  v10 = +[CKConversationList sharedConversationList];
  v11 = [v10 conversationForExistingChatWithChatIdentifier:v4];

  messagesController = [(SMSApplication *)self messagesController];
  currentConversation = [messagesController currentConversation];

  if (v11 == currentConversation)
  {
    ++qword_10003A148;
    [(SMSApplication *)self performSelector:"showNextMessage" withObject:0 afterDelay:1.0];
  }

  else
  {
    v14 = __CurrentTestName;
    v15 = [NSArray arrayWithObject:@"time"];
    [(SMSApplication *)self startedSubTest:@"Open Message Responsiveness" forTest:v14 withMetrics:v15];

    v16 = +[NSNotificationCenter defaultCenter];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000F21C;
    v21[3] = &unk_100030BF0;
    v21[4] = self;
    [(SMSApplication *)self installNotificationObserverForNotificationName:v16 notificationName:@"PPTDidLayoutConversationEvent" forOneNotification:1 usingBlock:v21];

    messagesController2 = [(SMSApplication *)self messagesController];
    conversationListController = [messagesController2 conversationListController];
    [conversationListController beginHoldingConversationListUpdatesForPPTTests];

    messagesController3 = [(SMSApplication *)self messagesController];
    [messagesController3 showConversation:v11 animate:1];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F238;
    block[3] = &unk_1000309C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)startShowMessagesTest:(id)test
{
  testCopy = test;
  v5 = +[CKConversationList sharedConversationList];
  conversations = [v5 conversations];

  v6 = [conversations count];
  v7 = [testCopy objectForKey:@"numMessages"];

  qword_10003A150 = [v7 integerValue];
  v8 = qword_10003A150;
  if (qword_10003A150 > v6)
  {
    qword_10003A150 = v6;
    v8 = v6;
  }

  qword_10003A148 = 0;
  if (v8 < 1)
  {
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self showNextMessage];
  }
}

- (void)dissmissComposeSheet
{
  messagesController = [(SMSApplication *)self messagesController];
  presentedViewController = [messagesController presentedViewController];

  if (presentedViewController)
  {
    messagesController2 = [(SMSApplication *)self messagesController];
    [messagesController2 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)_dismissPeoplePickerWithCompletion:(id)completion completion:(id)a4
{
  v6 = a4;
  [completion _dismissPeoplePicker];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F4D4;
  v8[3] = &unk_100030DD0;
  v9 = v6;
  v7 = v6;
  [(SMSApplication *)self installCACommitCompletionBlock:v8];
}

- (void)tearDownShowPeoplePickerTest:(id)test
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F580;
  v4[3] = &unk_100030B00;
  selfCopy = self;
  testCopy = test;
  v3 = testCopy;
  [(SMSApplication *)selfCopy installCACommitCompletionBlock:v4];
}

- (void)tearDownShowPeoplePickerTest
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F8C4;
  v2[3] = &unk_1000309C0;
  v2[4] = self;
  [(SMSApplication *)self installCACommitCompletionBlock:v2];
}

- (void)_showPeoplePickerTest:(id)test
{
  testCopy = test;
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  v6 = CNContactPickerViewControllerPickerDidShowNotification;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10000FB98;
  v12 = &unk_100030C18;
  selfCopy = self;
  v14 = testCopy;
  v7 = testCopy;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v5 notificationName:v6 forOneNotification:1 usingBlock:&v9];

  [(SMSApplication *)self startedSubTest:@"ShowPeoplePicker" forTest:__CurrentTestName, v9, v10, v11, v12, selfCopy];
  toField = [v7 toField];
  [v7 composeRecipientViewRequestAddRecipient:toField];
}

- (void)_startPeoplePickerTest
{
  messagesController = [(SMSApplication *)self messagesController];
  ppt_chatController = [messagesController ppt_chatController];

  composeRecipientSelectionController = [ppt_chatController composeRecipientSelectionController];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  [(SMSApplication *)self _showPeoplePickerTest:composeRecipientSelectionController];
}

- (void)startShowPeoplePickerTest:(id)test
{
  [(SMSApplication *)self dissmissComposeSheet];
  v4 = +[NSNotificationCenter defaultCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FCFC;
  v6[3] = &unk_100030BF0;
  v6[4] = self;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v4 notificationName:@"PPTDidShowConversationEvent" forOneNotification:1 usingBlock:v6];

  messagesController = [(SMSApplication *)self messagesController];
  [messagesController showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
}

- (void)tearDownSelectContactPeoplePickerTest
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000FD70;
  v2[3] = &unk_1000309C0;
  v2[4] = self;
  [(SMSApplication *)self installCACommitCompletionBlock:v2];
}

- (void)_selectContact:(id)contact
{
  contactCopy = contact;
  v5 = [qword_10003A120 objectForKey:@"contactNumber"];
  if (v5)
  {
    v6 = +[IMContactStore sharedInstance];
    getContactStore = [v6 getContactStore];

    v8 = [CNPhoneNumber phoneNumberWithStringValue:v5];
    v9 = [CNContact predicateForContactsMatchingPhoneNumber:v8];
    v10 = +[CNContactViewController descriptorForRequiredKeys];
    v38 = v10;
    v11 = [NSArray arrayWithObjects:&v38 count:1];
    v37 = 0;
    v12 = [getContactStore unifiedContactsMatchingPredicate:v9 keysToFetch:v11 error:&v37];
    v20 = v37;

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_100004F08;
    v35 = sub_100004F18;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_100004F08;
    v29 = sub_100004F18;
    v30 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100010288;
    v21[3] = &unk_100030E20;
    v13 = v8;
    v22 = v13;
    v23 = &v31;
    v24 = &v25;
    [v12 enumerateObjectsUsingBlock:v21];
    v14 = v32[5];
    identifier = [v26[5] identifier];
    v16 = [CNContactProperty contactPropertyWithContact:v14 propertyKey:CNContactPhoneNumbersKey identifier:identifier];

    v17 = __CurrentTestName;
    v18 = [NSArray arrayWithObject:@"time"];
    [(SMSApplication *)self startedSubTest:@"SelectContact" forTest:v17 withMetrics:v18];

    contactPickerViewController = [contactCopy contactPickerViewController];
    [contactCopy contactPicker:contactPickerViewController didSelectContactProperty:v16];

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName withFailure:@"Contact Number missing."];
  }
}

- (void)_startSelectContactPeoplePickerTest
{
  messagesController = [(SMSApplication *)self messagesController];
  ppt_chatController = [messagesController ppt_chatController];

  composeRecipientSelectionController = [ppt_chatController composeRecipientSelectionController];
  v6 = +[NSDistributedNotificationCenter defaultCenter];
  v7 = CNContactPickerViewControllerPickerDidShowNotification;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000105A4;
  v12[3] = &unk_100030C18;
  v12[4] = self;
  v13 = composeRecipientSelectionController;
  v8 = composeRecipientSelectionController;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v6 notificationName:v7 forOneNotification:1 usingBlock:v12];

  v9 = +[NSDistributedNotificationCenter defaultCenter];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000105B0;
  v11[3] = &unk_100030BF0;
  v11[4] = self;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v9 notificationName:CNContactPickerViewControllerPickerDidHideNotification forOneNotification:1 usingBlock:v11];

  toField = [v8 toField];
  [v8 composeRecipientViewRequestAddRecipient:toField];
}

- (void)startSelectContactPeoplePickerTest:(id)test
{
  [(SMSApplication *)self dissmissComposeSheet];
  v4 = +[NSNotificationCenter defaultCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010698;
  v6[3] = &unk_100030BF0;
  v6[4] = self;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v4 notificationName:@"PPTDidShowConversationEvent" forOneNotification:1 usingBlock:v6];

  [(SMSApplication *)self startedTest:__CurrentTestName];
  messagesController = [(SMSApplication *)self messagesController];
  [messagesController showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
}

- (void)tearDownCancelPeoplePickerTest
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000107A0;
  v2[3] = &unk_1000309C0;
  v2[4] = self;
  [(SMSApplication *)self installCACommitCompletionBlock:v2];
}

- (void)_cancelPeoplePicker
{
  messagesController = [(SMSApplication *)self messagesController];
  ppt_chatController = [messagesController ppt_chatController];

  composeRecipientSelectionController = [ppt_chatController composeRecipientSelectionController];
  if (composeRecipientSelectionController)
  {
    v5 = __CurrentTestName;
    v6 = [NSArray arrayWithObject:@"time"];
    [(SMSApplication *)self startedSubTest:@"CancelPeoplePicker" forTest:v5 withMetrics:v6];

    [composeRecipientSelectionController contactPickerDidCancel:0];
  }
}

- (void)_startCancelPeoplePickerTest
{
  messagesController = [(SMSApplication *)self messagesController];
  ppt_chatController = [messagesController ppt_chatController];

  composeRecipientSelectionController = [ppt_chatController composeRecipientSelectionController];
  v6 = +[NSDistributedNotificationCenter defaultCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100010B90;
  v10[3] = &unk_100030BF0;
  v10[4] = self;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v6 notificationName:CNContactPickerViewControllerPickerDidShowNotification forOneNotification:1 usingBlock:v10];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010B98;
  v9[3] = &unk_100030BF0;
  v9[4] = self;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v7 notificationName:CNContactPickerViewControllerPickerDidHideNotification forOneNotification:1 usingBlock:v9];

  toField = [composeRecipientSelectionController toField];
  [composeRecipientSelectionController composeRecipientViewRequestAddRecipient:toField];
}

- (void)startCancelPeoplePickerTest:(id)test
{
  [(SMSApplication *)self dissmissComposeSheet];
  v4 = +[NSNotificationCenter defaultCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010C80;
  v6[3] = &unk_100030BF0;
  v6[4] = self;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v4 notificationName:@"PPTDidShowConversationEvent" forOneNotification:1 usingBlock:v6];

  [(SMSApplication *)self startedTest:__CurrentTestName];
  messagesController = [(SMSApplication *)self messagesController];
  [messagesController showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
}

- (void)tearDownResolveContactTest:(id)test
{
  testCopy = test;
  [(SMSApplication *)self finishedSubTest:@"ResolveContact" forTest:__CurrentTestName];
  if (+[UIDevice __ck_currentDeviceIsPadOrMac])
  {
    messagesController = [(SMSApplication *)self messagesController];
    ppt_chatController = [messagesController ppt_chatController];
    [ppt_chatController performSelector:"cancelButtonTapped:" withObject:0];
  }

  else
  {
    [(SMSApplication *)self dissmissComposeSheet];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010D94;
  v8[3] = &unk_100030DD0;
  v9 = testCopy;
  v7 = testCopy;
  [(SMSApplication *)self installCACommitCompletionBlock:v8];
}

- (void)_resolveContactTest:(id)test
{
  testCopy = test;
  messagesController = [(SMSApplication *)self messagesController];
  ppt_chatController = [messagesController ppt_chatController];

  composeRecipientSelectionController = [ppt_chatController composeRecipientSelectionController];
  toField = [composeRecipientSelectionController toField];
  textView = [toField textView];
  [textView setText:testCopy];

  [composeRecipientSelectionController composeRecipientView:toField textDidChange:testCopy];
}

- (void)typeInContactName:(id)name
{
  nameCopy = name;
  messagesController = [(SMSApplication *)self messagesController];
  ppt_chatController = [messagesController ppt_chatController];

  composeRecipientSelectionController = [ppt_chatController composeRecipientSelectionController];
  toField = [composeRecipientSelectionController toField];
  textView = [toField textView];
  [textView setText:nameCopy];

  [composeRecipientSelectionController composeRecipientView:toField textDidChange:nameCopy];
}

- (void)startComposeMessageToPseudoContactTest:(id)test
{
  testCopy = test;
  [(SMSApplication *)self dissmissComposeSheet];
  v5 = [testCopy objectForKey:@"contactName"];

  if (v5)
  {
    [(SMSApplication *)self _startcomposePseudoContactTest:__CurrentTestName withOptions:v5];
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName withFailure:@"Contact Name is missing."];
  }
}

- (void)_startcomposePseudoContactTest:(id)test withOptions:(id)options
{
  testCopy = test;
  optionsCopy = options;
  [(SMSApplication *)self dissmissComposeSheet];
  v8 = +[NSNotificationCenter defaultCenter];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100011168;
  v16[3] = &unk_100030E48;
  v16[4] = self;
  v9 = testCopy;
  v17 = v9;
  v18 = optionsCopy;
  v10 = optionsCopy;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v8 notificationName:@"PPTDidShowConversationEvent" forOneNotification:1 usingBlock:v16];

  v11 = +[NSNotificationCenter defaultCenter];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001126C;
  v14[3] = &unk_100030C18;
  v14[4] = self;
  v15 = v9;
  v12 = v9;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v11 notificationName:@"PPTSearchListDidShowOrHideNotification" forOneNotification:1 usingBlock:v14];

  messagesController = [(SMSApplication *)self messagesController];
  [messagesController showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
}

- (void)startScrollPseudoContactNamesTest:(id)test
{
  testCopy = test;
  [(SMSApplication *)self dissmissComposeSheet];
  v5 = [testCopy objectForKey:@"contactName"];

  if (v5)
  {
    [(SMSApplication *)self _scrollPseudoContactTest:__CurrentTestName withOptions:v5];
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName withFailure:@"Contact Name is missing."];
  }
}

- (void)_scrollPseudoContactTest:(id)test withOptions:(id)options
{
  testCopy = test;
  optionsCopy = options;
  [(SMSApplication *)self dissmissComposeSheet];
  messagesController = [(SMSApplication *)self messagesController];
  ppt_chatController = [messagesController ppt_chatController];

  composeRecipientSelectionController = [ppt_chatController composeRecipientSelectionController];
  v11 = +[NSNotificationCenter defaultCenter];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000114FC;
  v21[3] = &unk_100030C18;
  v21[4] = self;
  v22 = optionsCopy;
  v12 = optionsCopy;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v11 notificationName:@"PPTDidShowConversationEvent" forOneNotification:1 usingBlock:v21];

  v13 = +[NSNotificationCenter defaultCenter];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000115B4;
  v17[3] = &unk_100030E48;
  v18 = composeRecipientSelectionController;
  selfCopy = self;
  v20 = testCopy;
  v14 = testCopy;
  v15 = composeRecipientSelectionController;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v13 notificationName:@"PPTSearchListDidShowOrHideNotification" forOneNotification:1 usingBlock:v17];

  messagesController2 = [(SMSApplication *)self messagesController];
  [messagesController2 showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
}

- (void)_startResolveContactTest:(id)test
{
  testCopy = test;
  [(SMSApplication *)self dissmissComposeSheet];
  v5 = +[NSNotificationCenter defaultCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011768;
  v10[3] = &unk_100030C18;
  v10[4] = self;
  v11 = testCopy;
  v6 = testCopy;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v5 notificationName:@"PPTDidShowConversationEvent" forOneNotification:1 usingBlock:v10];

  v7 = +[NSNotificationCenter defaultCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001185C;
  v9[3] = &unk_100030BF0;
  v9[4] = self;
  [(SMSApplication *)self installNotificationObserverForNotificationName:v7 notificationName:@"PPTSearchListDidShowOrHideNotification" forOneNotification:1 usingBlock:v9];

  messagesController = [(SMSApplication *)self messagesController];
  [messagesController showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
}

- (void)startResolveContactTest:(id)test
{
  v4 = [test objectForKey:@"contactNumber"];
  if (v4)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self _startResolveContactTest:v4];
  }

  else
  {
    [(SMSApplication *)self failedTest:__CurrentTestName withFailure:@"Contact Number missing."];
  }
}

- (void)startShowNewComposeTest:(id)test
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000119E4;
  v8[3] = &unk_1000309C0;
  v8[4] = self;
  v4 = objc_retainBlock(v8);
  messagesController = [(SMSApplication *)self messagesController];
  presentedViewController = [messagesController presentedViewController];

  if (presentedViewController)
  {
    messagesController2 = [(SMSApplication *)self messagesController];
    [messagesController2 dismissViewControllerAnimated:0 completion:v4];
  }

  else
  {
    (v4[2])(v4);
  }
}

- (void)startStuckAudioPillTest:(id)test
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100004F08;
  v7[4] = sub_100004F18;
  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];

  v5 = dispatch_time(0, 1000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011BC8;
  v6[3] = &unk_100030B50;
  v6[4] = self;
  v6[5] = v7;
  dispatch_after(v5, &_dispatch_main_q, v6);
  _Block_object_dispose(v7, 8);
}

- (void)sendMultipleMessagesEntryView:(id)view composition:(id)composition handler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  [viewCopy setComposition:composition];
  v10 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001203C;
  block[3] = &unk_100030EC0;
  block[4] = self;
  v14 = viewCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = viewCopy;
  dispatch_after(v10, &_dispatch_main_q, block);
}

- (void)startDetailsTest:(id)test
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100004F08;
  v7[4] = sub_100004F18;
  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];

  v5 = dispatch_time(0, 1000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001240C;
  v6[3] = &unk_100030B50;
  v6[4] = self;
  v6[5] = v7;
  dispatch_after(v5, &_dispatch_main_q, v6);
  _Block_object_dispose(v7, 8);
}

- (void)_detailsViewScrollingPerfTest:(id)test
{
  testCopy = test;
  view = [testCopy view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  view2 = [testCopy view];
  v7 = [qword_10003A120 objectForKey:@"iterations"];
  intValue = [v7 intValue];

  v9 = __CurrentTestName;
  [view2 frame];
  [view2 _performScrollTest:v9 iterations:intValue delta:(v10 + v10)];
}

- (void)startSendAnimationNewComposeTest:(id)test
{
  v4 = [NSAttributedString alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"This is a long text" value:&stru_100031A40 table:0];
  v7 = [v4 initWithString:v6];

  v8 = [[CKComposition alloc] initWithText:v7 subject:0];
  v9 = [[NSArray alloc] initWithObjects:{@"jake.chase.dev1@icloud.com", 0}];
  v10 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012B30;
  block[3] = &unk_1000309E8;
  block[4] = self;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_after(v10, &_dispatch_main_q, block);
}

- (void)startSendAnimationExistingTest
{
  v15 = [[NSAttributedString alloc] initWithString:@"This is a long text #longText"];
  v3 = [[CKComposition alloc] initWithText:v15 subject:0];
  v4 = +[CKConversationList sharedConversationList];
  v5 = [v4 conversationForExistingChatWithChatIdentifier:@"jake.chase.dev1@icloud.com"];

  messagesController = [(SMSApplication *)self messagesController];
  [messagesController showConversation:v5 animate:0];

  CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.5, 0);
  messagesController2 = [(SMSApplication *)self messagesController];
  presentedViewController = [messagesController2 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    messagesController3 = [(SMSApplication *)self messagesController];
    [messagesController3 dismissViewControllerAnimated:0 completion:0];

    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
  }

  messagesController4 = [(SMSApplication *)self messagesController];
  chatController = [messagesController4 chatController];

  entryView = [chatController entryView];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  [entryView setComposition:v3];
  CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.5, 0);
  [entryView touchUpInsideSendButton:0];
  CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.5, 0);
  v14 = objc_alloc_init(NSMutableDictionary);
  [(SMSApplication *)self finishedTest:__CurrentTestName extraResults:v14];
}

- (void)startScrollTranscriptTest:(id)test
{
  v4 = [test objectForKey:@"chatIdentifier"];
  v5 = +[CKConversationList sharedConversationList];
  conversations = [v5 conversations];

  v7 = +[CKConversationList sharedConversationList];
  v8 = [v7 conversationForExistingChatWithChatIdentifier:v4];

  if ([conversations count])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    if (v8 == currentConversation)
    {
      if ([__CurrentTestName rangeOfString:@"WithKeyboard"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SMSApplication *)self showKeyboard];
      }

      [(SMSApplication *)self performSelector:"tapFSMIfNecessary" withObject:0 afterDelay:0.5];
      [(SMSApplication *)self performSelector:"scrollTranscript" withObject:0 afterDelay:1.0];
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v12 = dispatch_time(0, 1000000000);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000133F4;
      v13[3] = &unk_100030B00;
      v13[4] = self;
      v14 = v8;
      dispatch_after(v12, &_dispatch_main_q, v13);
    }
  }
}

- (void)chatRegistryDidLoad:(id)load
{
  loadCopy = load;
  v5 = loadCopy;
  if (qword_10003A138)
  {
    v6 = loadCopy;
    loadCopy = [(SMSApplication *)self canRunTests];
    v5 = v6;
    if (loadCopy)
    {
      dispatch_async(&_dispatch_main_q, &stru_100030F28);
      v5 = v6;
    }
  }

  _objc_release_x1(loadCopy, v5);
}

- (BOOL)canRunTests
{
  v2 = +[IMChatRegistry sharedRegistry];
  cachedChats = [v2 cachedChats];
  v4 = [cachedChats count];

  v5 = [__CurrentTestName rangeOfString:@"MessageSendLatency"];
  v6 = +[IMChatRegistry sharedRegistry];
  v7 = [v6 _isLoading] ^ 1;

  if (v4 > 50)
  {
    return 1;
  }

  else
  {
    return (v5 != 0x7FFFFFFFFFFFFFFFLL) & v7;
  }
}

- (void)startStaticTranscriptFPSTest:(id)test
{
  testCopy = test;
  v5 = [testCopy objectForKey:@"chatIdentifier"];
  v6 = +[CKConversationList sharedConversationList];
  conversations = [v6 conversations];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:v5];

  v10 = [testCopy objectForKey:@"runtime"];

  intValue = [v10 intValue];
  if ([conversations count])
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    if (v9 == currentConversation)
    {
      v16 = [NSNumber numberWithInteger:intValue];
      [(SMSApplication *)self performSelector:"startGeneralStaticFPSTestWithDelay:" withObject:v16 afterDelay:1.0];
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v15 = dispatch_time(0, 1000000000);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100013780;
      v17[3] = &unk_100030B00;
      v17[4] = self;
      v18 = v9;
      dispatch_after(v15, &_dispatch_main_q, v17);
    }
  }
}

- (void)startGeneralStaticFPSTestWithDelay:(id)delay
{
  v4 = __CurrentTestName;
  delayCopy = delay;
  [(SMSApplication *)self startedTest:v4];
  LODWORD(v4) = [delayCopy intValue];

  v6 = dispatch_time(0, 1000000000 * v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000138A4;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v6, &_dispatch_main_q, block);
}

- (void)startStaticFSMFPSTest:(id)test
{
  v4 = [test objectForKey:@"chatIdentifier"];
  v5 = +[CKConversationList sharedConversationList];
  conversations = [v5 conversations];

  v7 = +[CKConversationList sharedConversationList];
  v8 = [v7 conversationForExistingChatWithChatIdentifier:v4];

  if ([conversations count])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    if (v8 == currentConversation)
    {
      [(SMSApplication *)self performSelector:"startFSMTest" withObject:0 afterDelay:1.0];
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v12 = dispatch_time(0, 1000000000);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100013A6C;
      v13[3] = &unk_100030B00;
      v13[4] = self;
      v14 = v8;
      dispatch_after(v12, &_dispatch_main_q, v13);
    }
  }
}

- (void)startFSMTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"fsmDidFinish:" name:CKEffectManagerEffectDidEndForPPT object:0];

  [(SMSApplication *)self tapFSMIfNecessary];
  v4 = [(SMSApplication *)self _fsmIdentifierForTestName:__CurrentTestName];
  [CKFullScreenEffectManager delayBeforeEffectWithIdentifier:v4];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013BCC;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v6, &_dispatch_main_q, block);
}

- (id)_fsmIdentifierForTestName:(id)name
{
  nameCopy = name;
  if ([nameCopy containsString:@"Confetti"])
  {
    v4 = &CKFullScreenEffectConfettiIdentifier;
LABEL_19:
    v5 = *v4;
    goto LABEL_20;
  }

  if ([nameCopy containsString:@"Heart"])
  {
    v4 = &CKFullScreenEffectLoveIdentifier;
    goto LABEL_19;
  }

  if ([nameCopy containsString:@"Balloon"])
  {
    v4 = &CKFullScreenEffectHappyBirthdayIdentifier;
    goto LABEL_19;
  }

  if ([nameCopy containsString:@"Laser"])
  {
    v4 = &CKFullScreenEffectLasersIdentifier;
    goto LABEL_19;
  }

  if ([nameCopy containsString:@"Fireworks"])
  {
    v4 = &CKFullScreenEffectFireworksIdentifier;
    goto LABEL_19;
  }

  if ([nameCopy containsString:@"ShootingStar"])
  {
    v4 = &CKFullScreenEffectShootingStarIdentifier;
    goto LABEL_19;
  }

  if ([nameCopy containsString:@"Sparkles"])
  {
    v4 = &CKFullScreenEffectCelebrationIdentifier;
    goto LABEL_19;
  }

  if ([nameCopy containsString:@"Echo"])
  {
    v4 = &CKFullScreenEffectEchoIdentifier;
    goto LABEL_19;
  }

  if ([nameCopy containsString:@"Spotlight"])
  {
    v4 = &CKFullScreenEffectSpotlightIdentifier;
    goto LABEL_19;
  }

  v5 = 0;
LABEL_20:

  return v5;
}

- (void)startInteractiveStickerDragTest:(id)test
{
  v4 = [test objectForKey:@"runtime"];
  intValue = [v4 intValue];

  v6 = [CKBrowserDragWindow alloc];
  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v8 = [v6 initWithFrame:0 allowsRotation:0 allowsStatusBarChanges:0 restrictedToPortraitOrientation:?];

  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v11 = v10;
  v35.width = 100.0;
  v35.height = 100.0;
  UIGraphicsBeginImageContextWithOptions(v35, 1, v11);

  CurrentContext = UIGraphicsGetCurrentContext();
  v13 = +[UIColor redColor];
  CGContextSetFillColorWithColor(CurrentContext, [v13 CGColor]);

  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = 100.0;
  v36.size.height = 100.0;
  CGContextFillRect(CurrentContext, v36);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v15 = [CKAnimatedImage alloc];
  v34 = v14;
  v16 = [NSArray arrayWithObjects:&v34 count:1];
  v17 = [v15 initWithImages:v16 durations:&off_100034CD8];

  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = 100.0;
  v37.size.height = 100.0;
  MidX = CGRectGetMidX(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = 100.0;
  v38.size.height = 100.0;
  MidY = CGRectGetMidY(v38);
  v20 = [[CKBrowserDragViewController alloc] initWithDragImage:v17 inSourceRect:0 withSourcePoint:0.0 keyboardSourceRect:0.0 keyboardSourcePoint:100.0 withGestureRecognizer:{100.0, MidX, MidY, 0, 0, 0x4059000000000000, 0x4059000000000000, *&MidX, *&MidY}];
  [v8 setHidden:0];
  rootViewController = [v8 rootViewController];
  [rootViewController presentViewController:v20 animated:0 completion:0];
  v22 = qword_10003A160;
  qword_10003A160 = v20;
  v23 = v20;

  *&xmmword_10003A170 = MidX;
  *(&xmmword_10003A170 + 1) = MidY;
  v24 = +[UIScreen mainScreen];
  v25 = [v24 displayLinkWithTarget:self selector:"_stickerDragFired:"];

  v26 = +[NSRunLoop currentRunLoop];
  [v25 addToRunLoop:v26 forMode:NSRunLoopCommonModes];

  [v23 manuallyInitializeDragAtPoint:{MidX, MidY}];
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v27 = dispatch_time(0, 1000000000 * intValue);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014118;
  block[3] = &unk_1000309E8;
  v31 = v25;
  v32 = v8;
  selfCopy = self;
  v28 = v8;
  v29 = v25;
  dispatch_after(v27, &_dispatch_main_q, block);
}

- (void)_stickerDragFired:(id)fired
{
  [qword_10003A160 manuallyUpdateDragPositionToPoint:{fired, xmmword_10003A170}];
  __asm { FMOV            V1.2D, #2.0 }

  xmmword_10003A170 = vaddq_f64(xmmword_10003A170, _Q1);
}

- (void)startRotationTest:(id)test
{
  [(SMSApplication *)self startedTest:__CurrentTestName];
  --dword_10003A130;
  v3 = UIApp;

  [v3 rotateIfNeeded:3];
}

- (void)startRotationTestWithTranscript:(id)transcript
{
  v4 = +[CKConversationList sharedConversationList];
  conversations = [v4 conversations];

  v6 = +[CKConversationList sharedConversationList];
  v7 = [v6 conversationForExistingChatWithChatIdentifier:@"madrid64@apple.com"];

  if ([conversations count])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100014420;
    v17[3] = &unk_1000309C0;
    v17[4] = self;
    v11 = objc_retainBlock(v17);
    v12 = v11;
    if (v7 == currentConversation)
    {
      (v11[2])(v11);
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v13 = dispatch_time(0, 1000000000);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000144C8;
      v14[3] = &unk_100030EC0;
      v14[4] = self;
      v15 = v7;
      v16 = v12;
      dispatch_after(v13, &_dispatch_main_q, v14);
    }
  }
}

- (void)_chatControllerWillRotate:(id)rotate
{
  v4 = dispatch_time(0, 10000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014630;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_chatControllerDidRotate:(id)rotate
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:kPPTChatControllerWillRotateNotification object:0];
  [v4 removeObserver:self name:kPPTChatControllerDidRotateNotification object:0];
  [(SMSApplication *)self finishedTest:__CurrentTestName];
}

- (void)startAudioWaveformFPSTest
{
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  v5 = +[CKConversationList sharedConversationList];
  v6 = [v5 conversationForExistingChatWithChatIdentifier:@"madrid64@apple.com"];

  if ([conversations count])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000148D0;
    v16[3] = &unk_1000309C0;
    v16[4] = self;
    v10 = objc_retainBlock(v16);
    v11 = v10;
    if (v6 == currentConversation)
    {
      (v10[2])(v10);
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v12 = dispatch_time(0, 1000000000);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100014A4C;
      v13[3] = &unk_100030EC0;
      v13[4] = self;
      v14 = v6;
      v15 = v11;
      dispatch_after(v12, &_dispatch_main_q, v13);
    }
  }
}

- (void)startInvisibleInkStaticFPSTest
{
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  v5 = +[CKConversationList sharedConversationList];
  v6 = [v5 conversationForExistingChatWithChatIdentifier:@"chatF4855F71-ABE9-45C6-93CF-647E4D741734"];

  if ([conversations count])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100014D18;
    v16[3] = &unk_1000309C0;
    v16[4] = self;
    v10 = objc_retainBlock(v16);
    v11 = v10;
    if (v6 == currentConversation)
    {
      (v10[2])(v10);
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v12 = dispatch_time(0, 1000000000);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100014DDC;
      v13[3] = &unk_100030EC0;
      v13[4] = self;
      v14 = v6;
      v15 = v11;
      dispatch_after(v12, &_dispatch_main_q, v13);
    }
  }
}

- (void)startGifPlaybackStaticFPSTest
{
  v3 = +[CKConversationList sharedConversationList];
  conversations = [v3 conversations];

  v5 = +[CKConversationList sharedConversationList];
  v6 = [v5 conversationForExistingChatWithChatIdentifier:@"eugene@bistolas.info"];

  if ([conversations count])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000150A8;
    v16[3] = &unk_1000309C0;
    v16[4] = self;
    v10 = objc_retainBlock(v16);
    v11 = v10;
    if (v6 == currentConversation)
    {
      (v10[2])(v10);
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v12 = dispatch_time(0, 1000000000);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001516C;
      v13[3] = &unk_100030EC0;
      v13[4] = self;
      v14 = v6;
      v15 = v11;
      dispatch_after(v12, &_dispatch_main_q, v13);
    }
  }
}

- (void)startKeyboardPresentationTest:(id)test
{
  v4 = +[CKConversationList sharedConversationList];
  conversations = [v4 conversations];

  v6 = +[CKConversationList sharedConversationList];
  v7 = [v6 conversationForExistingChatWithChatIdentifier:@"+14088969566"];

  if ([conversations count])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100015474;
    v18[3] = &unk_1000309C0;
    v18[4] = self;
    v11 = objc_retainBlock(v18);
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v12 preferencesActions];
    [preferencesActions setPredictionEnabled:0];

    if (v7 == currentConversation)
    {
      (v11[2])(v11);
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v14 = dispatch_time(0, 2000000000);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100015510;
      v15[3] = &unk_100030EC0;
      v15[4] = self;
      v16 = v7;
      v17 = v11;
      dispatch_after(v14, &_dispatch_main_q, v15);
    }
  }
}

- (void)startKeyboardResponsivenessTest:(id)test
{
  v4 = +[CKConversationList sharedConversationList];
  conversations = [v4 conversations];

  v6 = +[CKConversationList sharedConversationList];
  v7 = [v6 conversationForExistingChatWithChatIdentifier:@"+14088969566"];

  if ([conversations count])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100015814;
    v18[3] = &unk_1000309C0;
    v18[4] = self;
    v11 = objc_retainBlock(v18);
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v12 preferencesActions];
    [preferencesActions setPredictionEnabled:0];

    if (v7 == currentConversation)
    {
      (v11[2])(v11);
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v14 = dispatch_time(0, 2000000000);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000158A0;
      v15[3] = &unk_100030EC0;
      v15[4] = self;
      v16 = v7;
      v17 = v11;
      dispatch_after(v14, &_dispatch_main_q, v15);
    }
  }
}

- (void)_keyboardWillShow:(id)show
{
  if ([__CurrentTestName isEqualToString:@"PresentKeyboardTest"])
  {
    v4 = __CurrentTestName;

    [(SMSApplication *)self startedTest:v4];
  }
}

- (void)_keyboardDidShow:(id)show
{
  byte_10003A140 = 1;
  if (([__CurrentTestName isEqualToString:@"PresentKeyboardTest"] & 1) != 0 || (objc_msgSend(__CurrentTestName, "isEqualToString:", @"PresentKeyboardResponsivenessTest") & 1) != 0 || byte_10003A141 == 1 && objc_msgSend(__CurrentTestName, "rangeOfString:", kShowNewComposeTest) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = __CurrentTestName;

    [(SMSApplication *)self finishedTest:v4];
  }
}

- (void)startQuicklookPresentationTest:(id)test
{
  v4 = +[CKConversationList sharedConversationList];
  conversations = [v4 conversations];

  v6 = +[CKConversationList sharedConversationList];
  v7 = [v6 conversationForExistingChatWithChatIdentifier:@"+14088383543"];

  if ([conversations count])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100015C7C;
    v17[3] = &unk_1000309C0;
    v17[4] = self;
    v11 = objc_retainBlock(v17);
    v12 = v11;
    if (v7 == currentConversation)
    {
      (v11[2])(v11);
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v13 = dispatch_time(0, 1000000000);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100015F38;
      v14[3] = &unk_100030EC0;
      v14[4] = self;
      v15 = v7;
      v16 = v12;
      dispatch_after(v13, &_dispatch_main_q, v14);
    }
  }
}

- (void)startAudioBalloonPlaybackTest:(id)test
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_audioBalloonPlaybackWillStart:" name:kAudioBalloonViewPlaybackWillStartNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_audioBalloonPlaybackDidFinish:" name:kAudioBalloonViewPlaybackDidFinishNotification object:0];

  v6 = +[CKConversationList sharedConversationList];
  v7 = [v6 conversationForExistingChatWithChatIdentifier:@"jake.chase.dev2@icloud.com"];

  if (v7)
  {
    messagesController = [(SMSApplication *)self messagesController];
    [messagesController showConversation:v7 animate:0];

    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
    messagesController2 = [(SMSApplication *)self messagesController];
    chatController = [messagesController2 chatController];

    collectionViewController = [chatController collectionViewController];
    [collectionViewController __setCurrentTestName:__CurrentTestName];
    collectionView = [chatController collectionView];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    visibleCells = [collectionView visibleCells];
    balloonView2 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (balloonView2)
    {
      v21 = collectionViewController;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != balloonView2; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(visibleCells);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            balloonView = [v18 balloonView];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              balloonView2 = [v18 balloonView];

              goto LABEL_15;
            }
          }
        }

        balloonView2 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (balloonView2)
        {
          continue;
        }

        break;
      }

LABEL_15:
      collectionViewController = v21;
    }

    [collectionViewController balloonViewTapped:balloonView2 withModifierFlags:0 selectedText:0];
  }

  else
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)startScrollConversationsTest:(id)test
{
  testCopy = test;
  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];

  [chatController _backbuttonPressed];
  v7 = dispatch_time(0, 6000000000);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100016408;
  v9[3] = &unk_100030B00;
  v9[4] = self;
  v10 = testCopy;
  v8 = testCopy;
  dispatch_after(v7, &_dispatch_main_q, v9);
}

- (void)clearEntryView
{
  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];

  entryView = [chatController entryView];
  [entryView setComposition:0];

  [(SMSApplication *)self showTranscriptListNotAnimated];
}

- (void)startScrollForCollectionView:(id)view
{
  v3 = qword_10003A120;
  viewCopy = view;
  v4 = [v3 objectForKey:@"offset"];
  intValue = [v4 intValue];

  if (intValue)
  {
    v6 = intValue;
  }

  else
  {
    v6 = 18;
  }

  [viewCopy _performScrollTest:__CurrentTestName iterations:dword_10003A130 delta:v6 scrollAxis:1];
}

- (void)scrollPhotoPickerTestWithOptions:(id)options
{
  optionsCopy = options;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001692C;
  v21[3] = &unk_1000309C0;
  v21[4] = self;
  v5 = objc_retainBlock(v21);
  v6 = +[CKConversationList sharedConversationList];
  conversations = [v6 conversations];

  if ([conversations count])
  {
    v8 = +[CKConversationList sharedConversationList];
    v9 = [v8 conversationForExistingChatWithChatIdentifier:@"madrid64@apple.com"];

    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100016978;
    v18[3] = &unk_100030F78;
    v18[4] = self;
    v20 = v5;
    v19 = optionsCopy;
    v12 = objc_retainBlock(v18);
    v13 = v12;
    if (v9 == currentConversation)
    {
      (v12[2])(v12);
    }

    else
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v14 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100016C68;
      block[3] = &unk_100030EC0;
      block[4] = self;
      v16 = v9;
      v17 = v13;
      dispatch_after(v14, &_dispatch_main_q, block);
    }
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)startExtensionTest:(id)test launch:(BOOL)launch
{
  testCopy = test;
  [testCopy objectForKey:@"chatIdentifier"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100016E04;
  v9[3] = &unk_100030FC8;
  launchCopy = launch;
  v10 = testCopy;
  v12 = v11 = self;
  v7 = v12;
  v8 = testCopy;
  [(SMSApplication *)self showConversationForChatIdentifier:v7 forceReload:1 options:v8 completion:v9];
}

- (void)startPriorityBoostingTestWithOptions:(id)options
{
  [(SMSApplication *)self startedTest:__CurrentTestName];
  v5 = __CurrentTestName;
  v4 = +[IMDaemonController sharedController];
  [v4 blockUntilConnected];

  [(SMSApplication *)self finishedTest:v5];
}

- (void)startMarkAsReadLocallyTestWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [qword_10003A120 objectForKey:@"chatIdentifier"];
  v6 = IMCopyGUIDForChat();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "mark as unread locally start", &v13, 2u);
    }
  }

  v8 = +[IMChatRegistry sharedRegistry];
  v9 = [v8 existingChatWithGUID:v6];

  if (v9)
  {
    [v9 _automation_markAsRead:0 messageGUID:0 forChatGUID:v6 fromMe:0];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "mark as unread locally finished", &v13, 2u);
      }
    }

    [(SMSApplication *)self startedTest:__CurrentTestName];
    [v9 _automation_markAsRead:1 messageGUID:0 forChatGUID:v6 fromMe:0];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "mark as read locally finished", &v13, 2u);
      }
    }

    [(SMSApplication *)self finishedTest:__CurrentTestName];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Failed to find chat: %@", &v13, 0xCu);
      }
    }

    [(SMSApplication *)self startAndFailTestNamed:__CurrentTestName withFailure:@"Failed to find chat"];
  }
}

- (void)startMarkAsReadReceivedTestWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [qword_10003A120 objectForKey:@"chatIdentifier"];
  v6 = IMCopyGUIDForChat();
  v7 = [qword_10003A120 objectForKey:@"sentGUID"];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "mark as unread received start", &v15, 2u);
    }
  }

  v9 = +[IMChatRegistry sharedRegistry];
  v10 = [v9 existingChatWithGUID:v6];

  if (v10)
  {
    [v10 _automation_markAsRead:0 messageGUID:0 forChatGUID:v6 fromMe:1];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "mark as unread received finished", &v15, 2u);
      }
    }

    [(SMSApplication *)self startedTest:__CurrentTestName];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "mark as read received start", &v15, 2u);
      }
    }

    [v10 _automation_markAsRead:1 messageGUID:v7 forChatGUID:v6 fromMe:1];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "mark as read received finished", &v15, 2u);
      }
    }

    [(SMSApplication *)self finishedTest:__CurrentTestName];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Failed to find chat: %@", &v15, 0xCu);
      }
    }

    [(SMSApplication *)self startAndFailTestNamed:__CurrentTestName withFailure:@"Failed to find chat"];
  }
}

- (void)showMessagesApplicationAndStartTestForIdentifier:(id)identifier supportsLaunchSubtest:(BOOL)subtest
{
  subtestCopy = subtest;
  identifierCopy = identifier;
  messagesController = [(SMSApplication *)self messagesController];
  chatController = [messagesController chatController];
  inputController = [chatController inputController];

  v9 = +[IMBalloonPluginManager sharedInstance];
  v10 = [v9 balloonPluginForBundleID:identifierCopy];

  if (v10)
  {
    if ([__CurrentTestName rangeOfString:@"ExtensionLaunch"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SMSApplication *)self startedTest:__CurrentTestName];
      if (subtestCopy)
      {
        [(SMSApplication *)self startedSubTest:@"PluginLaunchSubtest" forTest:__CurrentTestName];
      }
    }

LABEL_13:
    if ([identifierCopy isEqualToString:IMBalloonPluginIdentifierDT])
    {
      [inputController showDTCompose];
    }

    else if ([identifierCopy isEqualToString:IMBalloonPluginIdentifierPhotos])
    {
      [inputController showPhotosBrowser];
    }

    else if ([identifierCopy isEqualToString:IMBalloonPluginIdentifierHandwriting])
    {
      [inputController showHandwritingBrowser];
    }

    else
    {
      [inputController showBrowserForPlugin:v10 dataSource:0 style:1];
    }

    goto LABEL_22;
  }

  v11 = [identifierCopy substringFromIndex:{objc_msgSend(identifierCopy, "rangeOfString:options:", @".", 4) + 1}];
  v12 = [NSString stringWithFormat:@"%@-%@", v11, @"ExtensionLaunch"];
  if ([__CurrentTestName isEqualToString:v12])
  {
    if (qword_10003A1A0 != -1)
    {
      sub_10001D348();
    }

    v13 = [qword_10003A198 pluginKitProxyForIdentifier:identifierCopy];
    containingBundle = [v13 containingBundle];
    teamID = [containingBundle teamID];
    v16 = teamID;
    v17 = @"0000000000";
    if (teamID)
    {
      v17 = teamID;
    }

    v18 = v17;

    identifierCopy = [NSString stringWithFormat:@"%@:%@:%@", IMBalloonPluginIdentifierMessageExtension, v18, identifierCopy];

    v20 = +[IMBalloonPluginManager sharedInstance];
    v10 = [v20 balloonPluginForBundleID:identifierCopy];

    if (v10)
    {
      if ([__CurrentTestName rangeOfString:@"ExtensionLaunch"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SMSApplication *)self startedIPTest:__CurrentTestName];
      }

      goto LABEL_13;
    }

    [(SMSApplication *)self startAndFailTestNamed:__CurrentTestName withFailure:@"Plugin not found for identifier %@", identifierCopy];
  }

  else
  {
    [(SMSApplication *)self startAndFailTestNamed:__CurrentTestName withFailure:v12];
  }

LABEL_22:
}

- (void)didChangeOrientation:(id)orientation
{
  if ([__CurrentTestName rangeOfString:kShowMessagesTest] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([__CurrentTestName rangeOfString:@"ScrollConversations"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([__CurrentTestName rangeOfString:@"ScrollTranscript"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([__CurrentTestName isEqualToString:@"Rotation"])
        {
          v4 = dword_10003A130;
          v5 = [qword_10003A120 objectForKey:@"iterations"];
          v6 = [v5 intValue] + 1;

          if (v4 == v6)
          {
            [(SMSApplication *)self startRotationTest:qword_10003A120];
          }
        }

        else
        {
          if (![__CurrentTestName isEqualToString:@"RotateTranscript"])
          {
            return;
          }

          v10 = dword_10003A130;
          v11 = [qword_10003A120 objectForKey:@"iterations"];
          v12 = [v11 intValue] + 1;

          if (v10 == v12)
          {
            [(SMSApplication *)self startRotationTestWithTranscript:qword_10003A120];
          }
        }

        if (dword_10003A130 < 1)
        {
          v13 = __CurrentTestName;

          [(SMSApplication *)self finishedTest:v13 extraResults:0];
        }

        else
        {
          --dword_10003A130;
          if (([UIApp rotateIfNeeded:1] & 1) == 0)
          {
            v14 = UIApp;

            [v14 rotateIfNeeded:3];
          }
        }
      }

      else
      {
        v9 = qword_10003A120;

        [(SMSApplication *)self startScrollTranscriptTest:v9];
      }
    }

    else
    {
      v8 = qword_10003A120;

      [(SMSApplication *)self startScrollConversationsTest:v8];
    }
  }

  else
  {
    v7 = qword_10003A120;

    [(SMSApplication *)self startShowMessagesTest:v7];
  }
}

- (void)startLiveBubbleLoadingTest:(id)test
{
  v4 = [qword_10003A120 objectForKey:@"chatIdentifier"];
  v5 = +[CKConversationList sharedConversationList];
  v6 = [v5 conversationForExistingChatWithChatIdentifier:v4];

  if (v6)
  {
    [(SMSApplication *)self showTranscriptListNotAnimated];
    v7 = dispatch_time(0, 1000000000);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100017D9C;
    v8[3] = &unk_100030B00;
    v8[4] = self;
    v9 = v6;
    dispatch_after(v7, &_dispatch_main_q, v8);
  }

  else
  {
    [(SMSApplication *)self startedTest:__CurrentTestName];
    [(SMSApplication *)self failedTest:__CurrentTestName];
  }
}

- (void)startResizeTestWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [qword_10003A120 objectForKey:@"recapBased"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    sceneController = [(SMSApplication *)self sceneController];
    messagesSceneDelegate = [sceneController messagesSceneDelegate];
    window = [messagesSceneDelegate window];

    if (([window isKeyWindow] & 1) == 0)
    {
      [(SMSApplication *)self startAndFailTestNamed:__CurrentTestName withFailure:@"The MessagesSceneDelegate's window isn't key for some reason"];
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v10 = qword_10003A1A8;
    v18 = qword_10003A1A8;
    if (!qword_10003A1A8)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100018A70;
      v14[3] = &unk_100031018;
      v14[4] = &v15;
      sub_100018A70(v14);
      v10 = v16[3];
    }

    v11 = v10;
    _Block_object_dispose(&v15, 8);
    v12 = [v10 alloc];
    v13 = [v12 initWithTestName:__CurrentTestName window:window completionHandler:0];
    [v13 setMinimumWindowSize:{300.0, 300.0}];
    [v13 setMaximumWindowSize:{600.0, 600.0}];
    [sub_100003E78() runTestWithParameters:v13];
  }
}

- (void)_willConfigureCellWithTranscriptPluginChatItem:(id)item
{
  v3 = CKPluginChatItemPPTName;
  if ([__CurrentTestName isEqualToString:CKPluginChatItemPPTName])
  {
    v4 = +[UIApplication sharedApplication];
    [v4 startedTest:v3];
  }
}

- (void)startPPTSubtestForCurrentTest:(id)test
{
  if (test)
  {
    v3 = __CurrentTestName;
    if (__CurrentTestName)
    {
      testCopy = test;
      v6 = [NSArray arrayWithObject:@"time"];
      [(SMSApplication *)self startedSubTest:testCopy forTest:v3 withMetrics:v6];
    }
  }
}

- (void)stopPPTSubtestForCurrentTest:(id)test
{
  if (test)
  {
    if (__CurrentTestName)
    {
      [SMSApplication finishedSubTest:"finishedSubTest:forTest:" forTest:?];
    }
  }
}

- (void)installNotificationObserverForNotificationName:(id)name notificationName:(id)notificationName forOneNotification:(BOOL)notification usingBlock:(id)block
{
  nameCopy = name;
  notificationNameCopy = notificationName;
  blockCopy = block;
  v12 = +[NSOperationQueue mainQueue];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100004F08;
  v26 = sub_100004F18;
  v27 = 0;
  objc_initWeak(&location, nameCopy);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000183F4;
  v16[3] = &unk_100030FF0;
  v18 = &v22;
  notificationCopy = notification;
  objc_copyWeak(&v19, &location);
  v13 = blockCopy;
  v17 = v13;
  v14 = [nameCopy addObserverForName:notificationNameCopy object:0 queue:v12 usingBlock:v16];
  v15 = v23[5];
  v23[5] = v14;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v22, 8);
}

- (void)showConversationForChatIdentifier:(id)identifier forceReload:(BOOL)reload options:(id)options completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v11 = +[CKConversationList sharedConversationList];
  conversations = [v11 conversations];

  v13 = +[CKConversationList sharedConversationList];
  v14 = [v13 conversationForExistingChatWithChatIdentifier:identifierCopy];

  if ([conversations count])
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    messagesController = [(SMSApplication *)self messagesController];
    currentConversation = [messagesController currentConversation];

    if (reload || v14 != currentConversation)
    {
      [(SMSApplication *)self showTranscriptListNotAnimated];
      v18 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100018660;
      block[3] = &unk_100030EC0;
      block[4] = self;
      v20 = v14;
      v21 = completionCopy;
      dispatch_after(v18, &_dispatch_main_q, block);
    }

    else
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

- (void)startAndFailTestNamed:(id)named withFailure:(id)failure
{
  v5 = __CurrentTestName;
  failureCopy = failure;
  [(SMSApplication *)self startedTest:v5];
  v7 = __CurrentTestName;
  v8 = [[NSString alloc] initWithFormat:failureCopy arguments:&v9];

  [(SMSApplication *)self failedTest:v7 withFailure:v8];
}

- (void)_clearFailureBadge
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kMessagesBadgeControllerClearFailureBadgeNotification", 0, 0, 1u);
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  if (CKIsRunningInMacCatalyst() || _CKUIEnhancedMainMenuEnabled())
  {
    v3 = +[CKMenuBarManager sharedInstance];
    [v3 buildMenuWithBuilder:builderCopy];
  }
}

- (void)keyCommandCompose:(id)compose
{
  v3 = +[CKDraftManager sharedInstance];
  [v3 setDraftForPendingConversation:0 withRecipients:0];

  v4 = +[CKDraftManager sharedInstance];
  [v4 saveCompositionAndFlushCache:0];

  v5 = [NSURL URLWithString:@"messages://open?addresses="];
  [UIApp openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(IMDaemonMultiplexedConnectionManaging *)self->_daemonConnection invalidate];
  [(BKSProcessAssertion *)self->_backgroundAssertion setInvalidationHandler:0];
  [(BKSProcessAssertion *)self->_backgroundAssertion invalidate];
  v4.receiver = self;
  v4.super_class = SMSApplication;
  [(SMSApplication *)&v4 dealloc];
}

- (void)_handleUnitTestInvocation:(id)invocation
{
  invocationCopy = invocation;
  [(SMSApplication *)self setRunningViaTestRunner:1];
  v5 = dispatch_time(0, 5000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CF9C;
  v7[3] = &unk_100030B00;
  v8 = invocationCopy;
  selfCopy = self;
  v6 = invocationCopy;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (SMSApplicationPerformSearchProtocol)testPerformSearchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testPerformSearchDelegate);

  return WeakRetained;
}

@end