@interface MailActionsViewDataSource
+ (id)log;
- (BOOL)isTargetValid;
- (BOOL)shouldShowICloudUnsubscribeAction;
- (ComposeCapable)scene;
- (MFFlagChangeTriageInteractionDelegate)flagChangeInteractionDelegate;
- (MFMessagePrinterDelegate)printerDelegate;
- (MFMoveToPredictionTriageInteractionDelegate)moveToPredictionTriageInteractionDelegate;
- (MFTriageInteractionDelegate)delegate;
- (MailActionsViewDataSource)initWithBuilderBlock:(id)block;
- (id)_archiveOrDeleteInteractionForMessageListItems:(id)items deleteOrArchive:(unint64_t)archive presentationSource:(id)source type:(int64_t)type shouldAskForConfirmation:(BOOL)confirmation;
- (id)_groupedSectionDataForMailActionsViewController:(id)controller;
- (id)_mailActionCardFlagActionsWithPresentationSource:(id)source preparation:(id)preparation completion:(id)completion;
- (id)_mailActionCardHorizontalActionsWithPresentationSource:(id)source preparation:(id)preparation completion:(id)completion;
- (id)_mailActionCardSendAgainAndUnreadActionsWithPresentationSource:(id)source preparation:(id)preparation completion:(id)completion;
- (id)_mailActionCardVerticalActionsWithPresentationSource:(id)source preparation:(id)preparation completion:(id)completion;
- (id)_sectionDataForMailActionsViewController:(id)controller;
- (id)allMessagesInConversation;
- (id)mailboxes;
- (id)messageListItem;
- (id)primaryMessage;
- (id)primaryMessageContentRequest;
- (id)sectionDataForMailActionsViewController:(id)controller;
- (id)selectedMessageContent;
- (id)targetedMessages;
- (id)undoManager;
- (int64_t)targetPreference;
@end

@implementation MailActionsViewDataSource

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8304;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DCF48 != -1)
  {
    dispatch_once(&qword_1006DCF48, block);
  }

  v2 = qword_1006DCF40;

  return v2;
}

- (MailActionsViewDataSource)initWithBuilderBlock:(id)block
{
  blockCopy = block;
  v7.receiver = self;
  v7.super_class = MailActionsViewDataSource;
  v5 = [(MailActionsViewDataSource *)&v7 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
  }

  return v5;
}

- (id)sectionDataForMailActionsViewController:(id)controller
{
  controllerCopy = controller;
  if (MUISolariumFeatureEnabled())
  {
    [(MailActionsViewDataSource *)self _groupedSectionDataForMailActionsViewController:controllerCopy];
  }

  else
  {
    [(MailActionsViewDataSource *)self _sectionDataForMailActionsViewController:controllerCopy];
  }
  v5 = ;

  return v5;
}

- (id)_sectionDataForMailActionsViewController:(id)controller
{
  if ([(MailActionsViewDataSource *)self isTargetValid])
  {
    primaryMessageContentRequest = [(MailActionsViewDataSource *)self primaryMessageContentRequest];

    if (primaryMessageContentRequest)
    {
      presentationSource = [(MailActionsViewDataSource *)self presentationSource];
      completion = [(MailActionsViewDataSource *)self completion];
      preparation = [(MailActionsViewDataSource *)self preparation];
      predictedMailbox = [(MailActionsViewDataSource *)self predictedMailbox];
      resultIfAvailable = [predictedMailbox resultIfAvailable];

      moveToPredictionTriageInteractionDelegate = [(MailActionsViewDataSource *)self moveToPredictionTriageInteractionDelegate];
      presentingViewControllerForTransferUI = [(MailActionsViewDataSource *)self presentingViewControllerForTransferUI];
      delegate = [(MailActionsViewDataSource *)self delegate];
      undoManager = [(MailActionsViewDataSource *)self undoManager];
      allMessagesInConversation = [(MailActionsViewDataSource *)self allMessagesInConversation];
      v10 = objc_opt_new();
      v68 = [(MailActionsViewDataSource *)self _mailActionCardHorizontalActionsWithPresentationSource:presentationSource preparation:preparation completion:completion];
      v11 = [[MFCardActionSectionData alloc] initWithActions:v68 viewLayout:1];
      [v10 addObject:v11];

      if ([(MailActionsViewDataSource *)self includeReadLaterAction])
      {
        v12 = [MFReadLaterTriageInteraction interactionWithMessageListItems:allMessagesInConversation undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
        [v12 setPresentationSource:presentationSource];
        [v12 setDelegate:delegate];
        selectedDate = [v12 selectedDate];
        v14 = selectedDate != 0;

        v15 = [v12 cardActionWithPreparation:preparation completion:completion];
        [v15 setShouldDismissCardBeforeExecuteHandler:1];
        [v15 setShouldDeferDismissHandler:1];
        v16 = [MFCardActionSectionData alloc];
        v77 = v15;
        v17 = [NSArray arrayWithObjects:&v77 count:1];
        v18 = [(MFCardActionSectionData *)v16 initWithActions:v17 viewLayout:0];
        [v10 addObject:v18];
      }

      else
      {
        v14 = 0;
      }

      v59 = [(MFDestructiveTriageInteraction *)MFRemoveFollowUpTriageInteraction interactionWithMessageListItems:allMessagesInConversation undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
      if (!(v14 | (([v59 isPermitted] & 1) == 0)))
      {
        v19 = [v59 cardActionWithPreparation:preparation completion:completion];
        v20 = [MFCardActionSectionData alloc];
        v76 = v19;
        v21 = [NSArray arrayWithObjects:&v76 count:1];
        v22 = [(MFCardActionSectionData *)v20 initWithActions:v21 viewLayout:0];
        [v10 addObject:v22];
      }

      v61 = [(MailActionsViewDataSource *)self _mailActionCardFlagActionsWithPresentationSource:presentationSource preparation:preparation completion:completion];
      if ([v61 count])
      {
        v23 = [[MFCardActionSectionData alloc] initWithActions:v61 viewLayout:2];
        [v10 addObject:v23];
      }

      v64 = [(MailActionsViewDataSource *)self _mailActionCardSendAgainAndUnreadActionsWithPresentationSource:presentationSource preparation:preparation completion:completion];
      v24 = [[MFCardActionSectionData alloc] initWithActions:v64 viewLayout:0];
      [v10 addObject:v24];

      allMessagesInConversation2 = [(MailActionsViewDataSource *)self allMessagesInConversation];
      undoManager2 = [(MailActionsViewDataSource *)self undoManager];
      v63 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:allMessagesInConversation2 undoManager:undoManager2 origin:[(MailActionsViewDataSource *)self origin] actor:2 presentationSource:presentationSource delegate:moveToPredictionTriageInteractionDelegate presentingViewController:presentingViewControllerForTransferUI predictedMailbox:resultIfAvailable];

      v62 = [v63 cardActionsWithCompletion:completion];
      v27 = [[MFCardActionSectionData alloc] initWithActions:v62 viewLayout:2];
      [v10 addObject:v27];

      v28 = [(MailActionsViewDataSource *)self _mailActionCardVerticalActionsWithPresentationSource:presentationSource preparation:preparation completion:completion];
      v29 = [[MFCardActionSectionData alloc] initWithActions:v28 viewLayout:0];
      [v10 addObject:v29];

      if ([(MailActionsViewDataSource *)self origin]== 2)
      {
        if (_os_feature_enabled_impl())
        {
          if (EMIsGreymatterSupported())
          {
            if (_os_feature_enabled_impl())
            {
              targetedMessages = [(MailActionsViewDataSource *)self targetedMessages];
              firstObject = [targetedMessages firstObject];
              generatedSummary = [firstObject generatedSummary];
              v33 = generatedSummary == 0;

              if (!v33)
              {
                targetedMessages2 = [(MailActionsViewDataSource *)self targetedMessages];
                v57 = [(MFTriageInteraction *)MFCatchUpFeedbackTriageInteraction interactionWithMessageListItems:targetedMessages2 undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];

                [v57 setDelegate:delegate];
                if (+[MUICatchUpFeedbackController isFeedbackRestricted])
                {
                  v35 = [MFCardActionSectionData alloc];
                  v55 = [v57 cardActionWithCompletion:completion];
                  v75 = v55;
                  feedbackAction = [NSArray arrayWithObjects:&v75 count:1];
                  v37 = [(MFCardActionSectionData *)v35 initWithActions:feedbackAction viewLayout:0];
                  [v10 addObject:v37];
                }

                else
                {
                  v55 = [v57 cardActionWithCompletion:completion];
                  v41 = [MFCardActionSectionData alloc];
                  v74[0] = v55;
                  feedbackAction = [v55 feedbackAction];
                  v74[1] = feedbackAction;
                  v37 = [NSArray arrayWithObjects:v74 count:2];
                  v42 = [(MFCardActionSectionData *)v41 initWithActions:v37 viewLayout:2];
                  [v10 addObject:v42];
                }
              }
            }
          }
        }
      }

      if (EMBlackPearlIsFeatureEnabled())
      {
        v43 = +[EFDevice currentDevice];
        isInternal = [v43 isInternal];

        if (isInternal)
        {
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_1000C918C;
          v71[3] = &unk_10064F4F0;
          v72 = completion;
          v58 = objc_retainBlock(v71);
          v45 = [[MSMessageListItemSelection alloc] initWithMessageListItems:allMessagesInConversation];
          v56 = [(MFTriageInteraction *)MFCategoryFeedbackTriageInteraction interactionWithMessageListItemSelection:v45 undoManager:0 origin:[(MailActionsViewDataSource *)self origin] actor:2];
          v46 = [MFCardActionSectionData alloc];
          v47 = (v58[2])(v58, v56);
          v48 = [(MFCardActionSectionData *)v46 initWithActions:v47 viewLayout:2];
          [v10 addObject:v48];

          if (([v45 isActingOnSender] & 1) == 0)
          {
            v54 = [MFCategoryHighImpactFeedbackTriageInteraction interactionWithMessageListItemSelection:v45 origin:[(MailActionsViewDataSource *)self origin] actor:2];
            v49 = [MFCardActionSectionData alloc];
            cardAction = [v54 cardAction];
            v73 = cardAction;
            v51 = [NSArray arrayWithObjects:&v73 count:1];
            v52 = [(MFCardActionSectionData *)v49 initWithActions:v51 viewLayout:0];
            [v10 addObject:v52];
          }
        }
      }
    }

    else
    {
      presentationSource = +[MailActionsViewDataSource log];
      if (os_log_type_enabled(presentationSource, OS_LOG_TYPE_ERROR))
      {
        primaryMessage = [(MailActionsViewDataSource *)self primaryMessage];
        itemID = [primaryMessage itemID];
        v40 = NSStringFromSelector(a2);
        *buf = 138543618;
        v79 = itemID;
        v80 = 2114;
        v81 = v40;
        _os_log_error_impl(&_mh_execute_header, presentationSource, OS_LOG_TYPE_ERROR, "No contentRequest for %{public}@ in %{public}@", buf, 0x16u);
      }

      v10 = &__NSArray0__struct;
    }
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)_groupedSectionDataForMailActionsViewController:(id)controller
{
  if (![(MailActionsViewDataSource *)self isTargetValid])
  {
    v7 = &__NSArray0__struct;
    goto LABEL_53;
  }

  primaryMessageContentRequest = [(MailActionsViewDataSource *)self primaryMessageContentRequest];

  if (!primaryMessageContentRequest)
  {
    v13 = +[MailActionsViewDataSource log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      primaryMessage = [(MailActionsViewDataSource *)self primaryMessage];
      itemID = [primaryMessage itemID];
      v70 = NSStringFromSelector(a2);
      *buf = 138543618;
      v129 = itemID;
      v130 = 2114;
      v131 = v70;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No contentRequest for %{public}@ in %{public}@", buf, 0x16u);
    }

    v7 = &__NSArray0__struct;
    goto LABEL_52;
  }

  presentationSource = [(MailActionsViewDataSource *)self presentationSource];
  completion = [(MailActionsViewDataSource *)self completion];
  preparation = [(MailActionsViewDataSource *)self preparation];
  predictedMailbox = [(MailActionsViewDataSource *)self predictedMailbox];
  resultIfAvailable = [predictedMailbox resultIfAvailable];

  moveToPredictionTriageInteractionDelegate = [(MailActionsViewDataSource *)self moveToPredictionTriageInteractionDelegate];
  presentingViewControllerForTransferUI = [(MailActionsViewDataSource *)self presentingViewControllerForTransferUI];
  delegate = [(MailActionsViewDataSource *)self delegate];
  scene = [(MailActionsViewDataSource *)self scene];
  undoManager = [(MailActionsViewDataSource *)self undoManager];
  primaryMessage2 = [(MailActionsViewDataSource *)self primaryMessage];
  allMessagesInConversation = [(MailActionsViewDataSource *)self allMessagesInConversation];
  primaryMessageContentRequest2 = [(MailActionsViewDataSource *)self primaryMessageContentRequest];
  v7 = objc_opt_new();
  v101 = [(MailActionsViewDataSource *)self _mailActionCardHorizontalActionsWithPresentationSource:presentationSource preparation:preparation completion:completion];
  v8 = [[MFCardActionSectionData alloc] initWithActions:v101 viewLayout:1];
  [v7 addObject:v8];

  v108 = objc_opt_new();
  if ([(MailActionsViewDataSource *)self includeReadLaterAction])
  {
    v9 = [MFReadLaterTriageInteraction interactionWithMessageListItems:allMessagesInConversation undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v9 setPresentationSource:presentationSource];
    [v9 setDelegate:delegate];
    selectedDate = [v9 selectedDate];
    v11 = selectedDate != 0;

    v12 = [v9 cardActionWithPreparation:preparation completion:completion];
    [v12 setShouldDismissCardBeforeExecuteHandler:1];
    [v12 setShouldDeferDismissHandler:1];
    [v108 addObject:v12];
  }

  else
  {
    v11 = 0;
  }

  v95 = [(MFDestructiveTriageInteraction *)MFRemoveFollowUpTriageInteraction interactionWithMessageListItems:allMessagesInConversation undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
  if (!(v11 | (([v95 isPermitted] & 1) == 0)))
  {
    v14 = [v95 cardActionWithPreparation:preparation completion:completion];
    [v108 addObject:v14];
  }

  v96 = [(MailActionsViewDataSource *)self _mailActionCardFlagActionsWithPresentationSource:presentationSource preparation:preparation completion:completion];
  if ([v96 count])
  {
    [v108 addObjectsFromArray:v96];
  }

  v92 = [(MailActionsViewDataSource *)self _mailActionCardSendAgainAndUnreadActionsWithPresentationSource:presentationSource preparation:preparation completion:completion];
  [v108 addObjectsFromArray:?];
  v15 = [[MFCardActionSectionData alloc] initWithActions:v108 viewLayout:2];
  [v7 addObject:v15];

  v109 = objc_opt_new();
  allMessagesInConversation2 = [(MailActionsViewDataSource *)self allMessagesInConversation];
  undoManager2 = [(MailActionsViewDataSource *)self undoManager];
  v18 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:allMessagesInConversation2 undoManager:undoManager2 origin:[(MailActionsViewDataSource *)self origin] actor:2 presentationSource:presentationSource delegate:moveToPredictionTriageInteractionDelegate presentingViewController:presentingViewControllerForTransferUI predictedMailbox:resultIfAvailable];

  v89 = v18;
  v91 = [v18 cardActionsWithCompletion:completion];
  [v109 addObjectsFromArray:?];
  v90 = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItems:allMessagesInConversation undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];
  v19 = [v90 cardActionWithPreparation:preparation completion:completion];
  [v109 addObject:v19];

  if ([primaryMessage2 shouldArchiveByDefault])
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v88 = [(MailActionsViewDataSource *)self _archiveOrDeleteInteractionForMessageListItems:allMessagesInConversation deleteOrArchive:v20 presentationSource:presentationSource type:1 shouldAskForConfirmation:0];
  v21 = [v88 cardActionWithPreparation:preparation completion:completion];
  [v109 addObject:v21];

  if (EMBlackPearlIsFeatureEnabled() && [(MailActionsViewDataSource *)self includeCategorizationAction])
  {
    v22 = [[MSMessageListItemSelection alloc] initWithMessageListItems:allMessagesInConversation];
    v23 = [(MFTriageInteraction *)MFCategorizationMenuTriageInteraction interactionWithMessageListItemSelection:v22 undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v23 setDelegate:delegate];
    [v23 setPresentationSource:presentationSource];
    v24 = [v23 cardActionWithCompletion:completion];
    [v24 setShouldDismissCardBeforeExecuteHandler:1];
    [v109 addObject:v24];
  }

  v25 = [[MFCardActionSectionData alloc] initWithActions:v109 viewLayout:2];
  [v7 addObject:v25];

  v103 = objc_opt_new();
  v118[0] = _NSConcreteStackBlock;
  v118[1] = 3221225472;
  v118[2] = sub_1000CA88C;
  v118[3] = &unk_10064F518;
  v13 = presentationSource;
  v119 = v13;
  v26 = delegate;
  v120 = v26;
  v104 = preparation;
  v121 = v104;
  v106 = completion;
  v122 = v106;
  v102 = objc_retainBlock(v118);
  target = [(MailActionsViewDataSource *)self target];
  targetedMessages = [target targetedMessages];
  v29 = [targetedMessages ef_any:&stru_10064F538];

  if ((v29 & 1) == 0)
  {
    v30 = [(MFConversationFlagTriageInteraction *)MFMuteTriageInteraction interactionWithReferenceMessage:primaryMessage2 undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v30 setPresentationSource:v13];
    [v30 setDelegate:v26];
    if ([v30 isPermitted])
    {
      v31 = [v30 cardActionWithPreparation:v104 completion:v106];
      [v103 addObject:v31];
    }

    v32 = [(MFConversationFlagTriageInteraction *)MFNotifyTriageInteraction interactionWithReferenceMessage:primaryMessage2 undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    (v102[2])(v102, v32, v103);
  }

  v33 = [[MFCardActionSectionData alloc] initWithActions:v103 viewLayout:2];
  [v7 addObject:v33];

  if (+[UIPrintInteractionController isPrintingAvailable]&& ![(MailActionsViewDataSource *)self targetPreference])
  {
    printerDelegate = [(MailActionsViewDataSource *)self printerDelegate];
    v35 = [MFPrintTriageInteraction interactionWithContentRequest:primaryMessageContentRequest2 scene:scene delegate:printerDelegate];

    [v35 setDelegate:v26];
    [v35 setPresentationSource:v13];
    v36 = [v35 cardActionWithPreparation:v104 completion:v106];
    [v36 setShouldDismissCardBeforeExecuteHandler:1];
    v37 = [MFCardActionSectionData alloc];
    v127 = v36;
    v38 = [NSArray arrayWithObjects:&v127 count:1];
    v39 = [(MFCardActionSectionData *)v37 initWithActions:v38 viewLayout:2];
    [v7 addObject:v39];
  }

  v107 = objc_opt_new();
  unsubscribeType = [primaryMessage2 unsubscribeType];
  if ([(MailActionsViewDataSource *)self shouldShowICloudUnsubscribeAction])
  {
    origin = [(MailActionsViewDataSource *)self origin];
    v42 = +[UIApplication sharedApplication];
    getiCloudMailCleanupService = [v42 getiCloudMailCleanupService];
    v44 = [(MFUnsubscribeTriageInteraction *)MFUnsubscribeAndDeleteTriageInteraction interactionWithReferenceMessageListItemsAndConfirmation:allMessagesInConversation origin:origin actor:2 shouldAskForConfirmation:1 icloudMailCleanupService:getiCloudMailCleanupService];

    [v44 setIsMailto:{objc_msgSend(primaryMessage2, "unsubscribeType") & 1}];
    [v44 setIsPost:{(objc_msgSend(primaryMessage2, "unsubscribeType") >> 2) & 1}];
    (v102[2])(v102, v44, v107);
  }

  else
  {
    if ((unsubscribeType & 5) == 0 || !_os_feature_enabled_impl())
    {
      goto LABEL_33;
    }

    v44 = [MFUnsubscribeTriageInteraction interactionWithReferenceMessageListItems:allMessagesInConversation origin:[(MailActionsViewDataSource *)self origin] actor:2];
    (v102[2])(v102, v44, v107);
  }

LABEL_33:
  if ([v107 count])
  {
    v45 = [[MFCardActionSectionData alloc] initWithActions:v107 viewLayout:2];
    [v7 addObject:v45];
  }

  v105 = objc_opt_new();
  v46 = +[MFSenderBlockingTriageInteraction interactionWithMessageListItems:undoManager:origin:actor:blockSender:](MFSenderBlockingTriageInteraction, "interactionWithMessageListItems:undoManager:origin:actor:blockSender:", allMessagesInConversation, undoManager, -[MailActionsViewDataSource origin](self, "origin"), 2, [primaryMessage2 isBlocked] ^ 1);
  [v46 setShouldAskForConfirmation:1];
  [v46 setDelegate:v26];
  [v46 setPresentationSource:v13];
  v47 = [v46 cardActionWithPreparation:v104 completion:v106];
  [v47 setShouldDismissCardBeforeExecuteHandler:1];
  [v47 setShouldDeferDismissHandler:1];
  [v105 addObject:v47];
  v48 = [[MFCardActionSectionData alloc] initWithActions:v105 viewLayout:2];
  [v7 addObject:v48];

  v49 = +[NSUserDefaults standardUserDefaults];
  v50 = mf_defaultsKeyForFeature();
  v51 = [v49 BOOLForKey:v50];

  v52 = +[NSUserDefaults standardUserDefaults];
  v53 = [v52 BOOLForKey:@"ShowSendEmlToTriageTeam"];

  if ((v51 | v53))
  {
    v54 = [(MFTriageInteraction *)MFShareAsEMLTriageInteraction interactionWithMessageListItems:allMessagesInConversation undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v54 setDelegate:v26];
    [v54 setForTriageTeam:v53];
    [v54 setPresentationSource:v13];
    v55 = [v54 cardActionWithPreparation:v104 completion:v106];
    [v55 setShouldDismissCardBeforeExecuteHandler:1];
    v56 = [MFCardActionSectionData alloc];
    v126 = v55;
    v57 = [NSArray arrayWithObjects:&v126 count:1];
    v58 = [(MFCardActionSectionData *)v56 initWithActions:v57 viewLayout:2];
    [v7 addObject:v58];
  }

  if ([(MailActionsViewDataSource *)self origin]== 2)
  {
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterSupported())
      {
        if (_os_feature_enabled_impl())
        {
          targetedMessages2 = [(MailActionsViewDataSource *)self targetedMessages];
          firstObject = [targetedMessages2 firstObject];
          generatedSummary = [firstObject generatedSummary];
          v62 = generatedSummary == 0;

          if (!v62)
          {
            targetedMessages3 = [(MailActionsViewDataSource *)self targetedMessages];
            v64 = [(MFTriageInteraction *)MFCatchUpFeedbackTriageInteraction interactionWithMessageListItems:targetedMessages3 undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];

            [v64 setDelegate:v26];
            if (+[MUICatchUpFeedbackController isFeedbackRestricted])
            {
              v65 = [MFCardActionSectionData alloc];
              v86 = [v64 cardActionWithCompletion:v106];
              v125 = v86;
              feedbackAction = [NSArray arrayWithObjects:&v125 count:1];
              v67 = [(MFCardActionSectionData *)v65 initWithActions:feedbackAction viewLayout:2];
              [v7 addObject:v67];
            }

            else
            {
              v86 = [v64 cardActionWithCompletion:v106];
              v71 = [MFCardActionSectionData alloc];
              v124[0] = v86;
              feedbackAction = [v86 feedbackAction];
              v124[1] = feedbackAction;
              v67 = [NSArray arrayWithObjects:v124 count:2];
              v72 = [(MFCardActionSectionData *)v71 initWithActions:v67 viewLayout:2];
              [v7 addObject:v72];
            }
          }
        }
      }
    }
  }

  if (EMBlackPearlIsFeatureEnabled())
  {
    v73 = +[EFDevice currentDevice];
    isInternal = [v73 isInternal];

    if (isInternal)
    {
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_1000CA9A8;
      v116[3] = &unk_10064F4F0;
      v117 = v106;
      v75 = objc_retainBlock(v116);
      v76 = [[MSMessageListItemSelection alloc] initWithMessageListItems:allMessagesInConversation];
      v87 = [(MFTriageInteraction *)MFCategoryFeedbackTriageInteraction interactionWithMessageListItemSelection:v76 undoManager:0 origin:[(MailActionsViewDataSource *)self origin] actor:2];
      v77 = [MFCardActionSectionData alloc];
      v78 = (v75[2])(v75, v87);
      v79 = [(MFCardActionSectionData *)v77 initWithActions:v78 viewLayout:2];
      [v7 addObject:v79];

      if (([v76 isActingOnSender] & 1) == 0)
      {
        v85 = [MFCategoryHighImpactFeedbackTriageInteraction interactionWithMessageListItemSelection:v76 origin:[(MailActionsViewDataSource *)self origin] actor:2];
        v80 = [MFCardActionSectionData alloc];
        cardAction = [v85 cardAction];
        v123 = cardAction;
        v82 = [NSArray arrayWithObjects:&v123 count:1];
        v83 = [(MFCardActionSectionData *)v80 initWithActions:v82 viewLayout:2];
        [v7 addObject:v83];
      }
    }
  }

LABEL_52:
LABEL_53:

  return v7;
}

- (id)primaryMessage
{
  target = [(MailActionsViewDataSource *)self target];
  primaryMessage = [target primaryMessage];

  return primaryMessage;
}

- (id)selectedMessageContent
{
  target = [(MailActionsViewDataSource *)self target];
  selectedMessageContent = [target selectedMessageContent];

  return selectedMessageContent;
}

- (id)primaryMessageContentRequest
{
  target = [(MailActionsViewDataSource *)self target];
  primaryMessageContentRequest = [target primaryMessageContentRequest];

  return primaryMessageContentRequest;
}

- (id)messageListItem
{
  target = [(MailActionsViewDataSource *)self target];
  messageListItem = [target messageListItem];

  return messageListItem;
}

- (id)mailboxes
{
  target = [(MailActionsViewDataSource *)self target];
  messageListItem = [target messageListItem];
  mailboxes = [messageListItem mailboxes];

  return mailboxes;
}

- (id)targetedMessages
{
  target = [(MailActionsViewDataSource *)self target];
  targetedMessages = [target targetedMessages];

  return targetedMessages;
}

- (id)allMessagesInConversation
{
  if ([(MailActionsViewDataSource *)self targetPreference])
  {
    messageListItem = [(MailActionsViewDataSource *)self messageListItem];
    v6 = messageListItem;
    targetedMessages = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    targetedMessages = [(MailActionsViewDataSource *)self targetedMessages];
  }

  return targetedMessages;
}

- (int64_t)targetPreference
{
  target = [(MailActionsViewDataSource *)self target];
  targetPreference = [target targetPreference];

  return targetPreference;
}

- (id)undoManager
{
  scene = [(MailActionsViewDataSource *)self scene];
  undoManager = [scene undoManager];

  return undoManager;
}

- (BOOL)shouldShowICloudUnsubscribeAction
{
  primaryMessage = [(MailActionsViewDataSource *)self primaryMessage];
  unsubscribeType = [primaryMessage unsubscribeType];

  primaryMessage2 = [(MailActionsViewDataSource *)self primaryMessage];
  mailboxes = [primaryMessage2 mailboxes];
  v7 = [mailboxes ef_any:&stru_10064F558];

  v8 = +[UIApplication sharedApplication];
  getiCloudMailCleanupService = [v8 getiCloudMailCleanupService];
  if ([getiCloudMailCleanupService shouldShowICloudUnsubscribe])
  {
    includeICloudUnsubscribeAction = [(MailActionsViewDataSource *)self includeICloudUnsubscribeAction];
  }

  else
  {
    includeICloudUnsubscribeAction = 0;
  }

  messageListItem = [(MailActionsViewDataSource *)self messageListItem];
  category = [messageListItem category];
  if ([category type] == 3)
  {
    v13 = 1;
  }

  else
  {
    messageListItem2 = [(MailActionsViewDataSource *)self messageListItem];
    category2 = [messageListItem2 category];
    v13 = [category2 type] == 2;
  }

  if ((+[MUIiCloudMailCleanupService isFeatureAvailable]& v7) == 1)
  {
    return includeICloudUnsubscribeAction & (v13 || (unsubscribeType & 5) != 0);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isTargetValid
{
  delegate = [(MailActionsViewDataSource *)self delegate];
  if (!delegate)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MailActionsViewDataSource.m" lineNumber:445 description:@"MessageTriageInteractionHelper requires delegate to create triage interactions"];
  }

  messageListItem = [(MailActionsViewDataSource *)self messageListItem];
  primaryMessage = [(MailActionsViewDataSource *)self primaryMessage];
  if (!primaryMessage)
  {
    v8 = +[MailActionsViewDataSource log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      sub_100488024(v9, v13, v8);
    }

    goto LABEL_10;
  }

  if (!messageListItem)
  {
    v8 = +[MailActionsViewDataSource log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      sub_100487FCC(v10, v13, v8);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)_mailActionCardHorizontalActionsWithPresentationSource:(id)source preparation:(id)preparation completion:(id)completion
{
  sourceCopy = source;
  preparationCopy = preparation;
  completionCopy = completion;
  primaryMessage = [(MailActionsViewDataSource *)self primaryMessage];
  primaryMessageContentRequest = [(MailActionsViewDataSource *)self primaryMessageContentRequest];
  v36 = primaryMessageContentRequest;
  delegate = [(MailActionsViewDataSource *)self delegate];
  scene = [(MailActionsViewDataSource *)self scene];
  v38 = objc_opt_new();
  selectedMessageContent = [(MailActionsViewDataSource *)self selectedMessageContent];
  [(MailActionsViewDataSource *)self mailboxes];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000CB6A8;
  v35 = v40[3] = &unk_10064F580;
  v41 = v35;
  v10 = sourceCopy;
  v42 = v10;
  v33 = delegate;
  v43 = v33;
  v32 = selectedMessageContent;
  v44 = v32;
  selfCopy = self;
  v11 = preparationCopy;
  v46 = v11;
  v12 = completionCopy;
  v47 = v12;
  v13 = objc_retainBlock(v40);
  v34 = [(MFMessageCompositionTriageInteraction *)MFReplyTriageInteraction interactionWithContentRequest:primaryMessageContentRequest scene:scene];
  v14 = (v13[2])(v13, v34);
  [v38 addObject:v14];

  v15 = [(MFMessageCompositionTriageInteraction *)MFReplyAllTriageInteraction interactionWithContentRequest:primaryMessageContentRequest scene:scene];
  if ([v15 isPermitted])
  {
    v16 = (v13[2])(v13, v15);
    [v38 addObject:v16];
  }

  v17 = [(MFMessageCompositionTriageInteraction *)MFForwardTriageInteraction interactionWithContentRequest:primaryMessageContentRequest scene:scene];
  v18 = (v13[2])(v13, v17);
  [v38 addObject:v18];

  shouldArchiveByDefault = [primaryMessage shouldArchiveByDefault];
  targetPreference = [(MailActionsViewDataSource *)self targetPreference];
  targetedMessages = [(MailActionsViewDataSource *)self targetedMessages];
  if (shouldArchiveByDefault)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v23 = [(MailActionsViewDataSource *)self _archiveOrDeleteInteractionForMessageListItems:targetedMessages deleteOrArchive:v22 presentationSource:v10 type:targetPreference != 0 shouldAskForConfirmation:0];

  v24 = [v23 cardActionWithPreparation:v11 completion:v12];
  v25 = v24;
  v26 = &MFImageGlyphArchiveFill;
  if (!shouldArchiveByDefault)
  {
    v26 = &MFImageGlyphTrashFill;
  }

  [v24 setImageName:*v26];
  [v38 addObject:v25];

  return v38;
}

- (id)_mailActionCardFlagActionsWithPresentationSource:(id)source preparation:(id)preparation completion:(id)completion
{
  completionCopy = completion;
  undoManager = [(MailActionsViewDataSource *)self undoManager];
  v8 = objc_opt_new();
  targetedMessages = [(MailActionsViewDataSource *)self targetedMessages];
  v10 = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItems:targetedMessages undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];
  if ([v10 isPermitted])
  {
    flagChangeInteractionDelegate = [(MailActionsViewDataSource *)self flagChangeInteractionDelegate];
    [v10 setDelegate:flagChangeInteractionDelegate];

    v12 = [v10 cardActionWithCompletion:completionCopy];
    [v8 addObject:v12];

    v13 = [(MFFlagChangeTriageInteraction *)MFFlagColorTriageInteraction interactionWithMessageListItems:targetedMessages undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];
    v14 = [v13 cardActionWithCompletion:completionCopy];
    [v8 addObject:v14];

    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_mailActionCardSendAgainAndUnreadActionsWithPresentationSource:(id)source preparation:(id)preparation completion:(id)completion
{
  sourceCopy = source;
  preparationCopy = preparation;
  completionCopy = completion;
  delegate = [(MailActionsViewDataSource *)self delegate];
  v12 = objc_opt_new();
  if (![(MailActionsViewDataSource *)self targetPreference])
  {
    primaryMessageContentRequest = [(MailActionsViewDataSource *)self primaryMessageContentRequest];
    scene = [(MailActionsViewDataSource *)self scene];
    v15 = [(MFMessageCompositionTriageInteraction *)MFSendAgainTriageInteraction interactionWithContentRequest:primaryMessageContentRequest scene:scene];

    mailboxes = [(MailActionsViewDataSource *)self mailboxes];
    [v15 setMessageSourceMailboxes:mailboxes];

    if ([v15 isPermitted])
    {
      [v15 setPresentationSource:sourceCopy];
      [v15 setDelegate:delegate];
      v17 = [v15 cardActionWithPreparation:preparationCopy completion:completionCopy];
      [v12 addObject:v17];
    }
  }

  targetedMessages = [(MailActionsViewDataSource *)self targetedMessages];
  undoManager = [(MailActionsViewDataSource *)self undoManager];
  v20 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItems:targetedMessages undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];

  v21 = [v20 cardActionWithPreparation:preparationCopy completion:completionCopy];
  [v12 addObject:v21];

  return v12;
}

- (id)_mailActionCardVerticalActionsWithPresentationSource:(id)source preparation:(id)preparation completion:(id)completion
{
  sourceCopy = source;
  preparationCopy = preparation;
  completionCopy = completion;
  delegate = [(MailActionsViewDataSource *)self delegate];
  scene = [(MailActionsViewDataSource *)self scene];
  v48 = scene;
  undoManager = [(MailActionsViewDataSource *)self undoManager];
  primaryMessage = [(MailActionsViewDataSource *)self primaryMessage];
  allMessagesInConversation = [(MailActionsViewDataSource *)self allMessagesInConversation];
  v44 = objc_opt_new();
  primaryMessageContentRequest = [(MailActionsViewDataSource *)self primaryMessageContentRequest];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000CC580;
  v58[3] = &unk_10064F5A8;
  v10 = sourceCopy;
  v59 = v10;
  v53 = delegate;
  v60 = v53;
  v11 = v44;
  v61 = v11;
  v54 = preparationCopy;
  v62 = v54;
  v12 = completionCopy;
  v63 = v12;
  v52 = objc_retainBlock(v58);
  if ([primaryMessage shouldArchiveByDefault])
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v47 = [(MailActionsViewDataSource *)self _archiveOrDeleteInteractionForMessageListItems:allMessagesInConversation deleteOrArchive:v13 presentationSource:v10 type:1 shouldAskForConfirmation:0];
  v14 = [v47 cardActionWithPreparation:v54 completion:v12];
  [v11 addObject:v14];

  if (EMBlackPearlIsFeatureEnabled() && [(MailActionsViewDataSource *)self includeCategorizationAction])
  {
    v15 = [[MSMessageListItemSelection alloc] initWithMessageListItems:allMessagesInConversation];
    v16 = [(MFTriageInteraction *)MFCategorizationMenuTriageInteraction interactionWithMessageListItemSelection:v15 undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v16 setDelegate:v53];
    [v16 setPresentationSource:v10];
    v17 = [v16 cardActionWithCompletion:v12];
    [v17 setShouldDismissCardBeforeExecuteHandler:1];
    [v11 addObject:v17];
  }

  v46 = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItems:allMessagesInConversation undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];
  v18 = [v46 cardActionWithPreparation:v54 completion:v12];
  [v11 addObject:v18];

  target = [(MailActionsViewDataSource *)self target];
  targetedMessages = [target targetedMessages];
  v21 = [targetedMessages ef_any:&stru_10064F5C8];

  if ((v21 & 1) == 0)
  {
    v22 = [(MFConversationFlagTriageInteraction *)MFMuteTriageInteraction interactionWithReferenceMessage:primaryMessage undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v22 setPresentationSource:v10];
    [v22 setDelegate:v53];
    if ([v22 isPermitted])
    {
      v23 = [v22 cardActionWithPreparation:v54 completion:v12];
      [v11 addObject:v23];
    }

    v24 = [(MFConversationFlagTriageInteraction *)MFNotifyTriageInteraction interactionWithReferenceMessage:primaryMessage undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    (v52[2])(v52, v24);
  }

  if (+[UIPrintInteractionController isPrintingAvailable]&& ![(MailActionsViewDataSource *)self targetPreference])
  {
    printerDelegate = [(MailActionsViewDataSource *)self printerDelegate];
    v26 = [MFPrintTriageInteraction interactionWithContentRequest:primaryMessageContentRequest scene:scene delegate:printerDelegate];

    [v26 setDelegate:v53];
    [v26 setPresentationSource:v10];
    v27 = [v26 cardActionWithPreparation:v54 completion:v12];
    [v27 setShouldDismissCardBeforeExecuteHandler:1];
    [v11 addObject:v27];
  }

  unsubscribeType = [primaryMessage unsubscribeType];
  if ([(MailActionsViewDataSource *)self shouldShowICloudUnsubscribeAction])
  {
    origin = [(MailActionsViewDataSource *)self origin];
    v30 = +[UIApplication sharedApplication];
    getiCloudMailCleanupService = [v30 getiCloudMailCleanupService];
    v32 = [(MFUnsubscribeTriageInteraction *)MFUnsubscribeAndDeleteTriageInteraction interactionWithReferenceMessageListItemsAndConfirmation:allMessagesInConversation origin:origin actor:2 shouldAskForConfirmation:1 icloudMailCleanupService:getiCloudMailCleanupService];

    [v32 setIsMailto:{objc_msgSend(primaryMessage, "unsubscribeType") & 1}];
    [v32 setIsPost:{(objc_msgSend(primaryMessage, "unsubscribeType") >> 2) & 1}];
    (v52[2])(v52, v32);
LABEL_19:

    goto LABEL_20;
  }

  if ((unsubscribeType & 5) != 0 && _os_feature_enabled_impl())
  {
    v32 = [MFUnsubscribeTriageInteraction interactionWithReferenceMessageListItems:allMessagesInConversation origin:[(MailActionsViewDataSource *)self origin] actor:2];
    (v52[2])(v52, v32);
    goto LABEL_19;
  }

LABEL_20:
  v33 = +[MFSenderBlockingTriageInteraction interactionWithMessageListItems:undoManager:origin:actor:blockSender:](MFSenderBlockingTriageInteraction, "interactionWithMessageListItems:undoManager:origin:actor:blockSender:", allMessagesInConversation, undoManager, -[MailActionsViewDataSource origin](self, "origin"), 2, [primaryMessage isBlocked] ^ 1);
  [v33 setShouldAskForConfirmation:1];
  [v33 setDelegate:v53];
  [v33 setPresentationSource:v10];
  v34 = [v33 cardActionWithCompletion:v12];
  [v34 setShouldDismissCardBeforeExecuteHandler:1];
  [v11 addObject:v34];
  v35 = +[NSUserDefaults standardUserDefaults];
  v36 = mf_defaultsKeyForFeature();
  v37 = [v35 BOOLForKey:v36];

  v38 = +[NSUserDefaults standardUserDefaults];
  v39 = [v38 BOOLForKey:@"ShowSendEmlToTriageTeam"];

  if ((v37 | v39))
  {
    v40 = [(MFTriageInteraction *)MFShareAsEMLTriageInteraction interactionWithMessageListItems:allMessagesInConversation undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v40 setDelegate:v53];
    [v40 setForTriageTeam:v39];
    [v40 setPresentationSource:v10];
    v41 = [v40 cardActionWithPreparation:v54 completion:v12];
    [v41 setShouldDismissCardBeforeExecuteHandler:1];
    [v11 addObject:v41];
  }

  v42 = v11;

  return v11;
}

- (id)_archiveOrDeleteInteractionForMessageListItems:(id)items deleteOrArchive:(unint64_t)archive presentationSource:(id)source type:(int64_t)type shouldAskForConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  itemsCopy = items;
  sourceCopy = source;
  undoManager = [(MailActionsViewDataSource *)self undoManager];
  delegate = [(MailActionsViewDataSource *)self delegate];
  if (archive == 2)
  {
    v16 = MFArchiveTriageInteraction;
  }

  else
  {
    v16 = MFDeleteTriageInteraction;
  }

  v17 = [(__objc2_class *)v16 interactionWithMessageListItems:itemsCopy undoManager:undoManager origin:[(MailActionsViewDataSource *)self origin] actor:2];
  [v17 setDelegate:delegate];
  [v17 setPresentationSource:sourceCopy];
  [v17 setType:type];
  [v17 setShouldAskForConfirmation:confirmationCopy];

  return v17;
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (MFTriageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MFFlagChangeTriageInteractionDelegate)flagChangeInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flagChangeInteractionDelegate);

  return WeakRetained;
}

- (MFMoveToPredictionTriageInteractionDelegate)moveToPredictionTriageInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_moveToPredictionTriageInteractionDelegate);

  return WeakRetained;
}

- (MFMessagePrinterDelegate)printerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_printerDelegate);

  return WeakRetained;
}

@end