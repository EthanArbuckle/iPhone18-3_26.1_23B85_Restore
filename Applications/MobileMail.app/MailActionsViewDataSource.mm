@interface MailActionsViewDataSource
+ (id)log;
- (BOOL)isTargetValid;
- (BOOL)shouldShowICloudUnsubscribeAction;
- (ComposeCapable)scene;
- (MFFlagChangeTriageInteractionDelegate)flagChangeInteractionDelegate;
- (MFMessagePrinterDelegate)printerDelegate;
- (MFMoveToPredictionTriageInteractionDelegate)moveToPredictionTriageInteractionDelegate;
- (MFTriageInteractionDelegate)delegate;
- (MailActionsViewDataSource)initWithBuilderBlock:(id)a3;
- (id)_archiveOrDeleteInteractionForMessageListItems:(id)a3 deleteOrArchive:(unint64_t)a4 presentationSource:(id)a5 type:(int64_t)a6 shouldAskForConfirmation:(BOOL)a7;
- (id)_groupedSectionDataForMailActionsViewController:(id)a3;
- (id)_mailActionCardFlagActionsWithPresentationSource:(id)a3 preparation:(id)a4 completion:(id)a5;
- (id)_mailActionCardHorizontalActionsWithPresentationSource:(id)a3 preparation:(id)a4 completion:(id)a5;
- (id)_mailActionCardSendAgainAndUnreadActionsWithPresentationSource:(id)a3 preparation:(id)a4 completion:(id)a5;
- (id)_mailActionCardVerticalActionsWithPresentationSource:(id)a3 preparation:(id)a4 completion:(id)a5;
- (id)_sectionDataForMailActionsViewController:(id)a3;
- (id)allMessagesInConversation;
- (id)mailboxes;
- (id)messageListItem;
- (id)primaryMessage;
- (id)primaryMessageContentRequest;
- (id)sectionDataForMailActionsViewController:(id)a3;
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
  block[4] = a1;
  if (qword_1006DCF48 != -1)
  {
    dispatch_once(&qword_1006DCF48, block);
  }

  v2 = qword_1006DCF40;

  return v2;
}

- (MailActionsViewDataSource)initWithBuilderBlock:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MailActionsViewDataSource;
  v5 = [(MailActionsViewDataSource *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

- (id)sectionDataForMailActionsViewController:(id)a3
{
  v4 = a3;
  if (MUISolariumFeatureEnabled())
  {
    [(MailActionsViewDataSource *)self _groupedSectionDataForMailActionsViewController:v4];
  }

  else
  {
    [(MailActionsViewDataSource *)self _sectionDataForMailActionsViewController:v4];
  }
  v5 = ;

  return v5;
}

- (id)_sectionDataForMailActionsViewController:(id)a3
{
  if ([(MailActionsViewDataSource *)self isTargetValid])
  {
    v5 = [(MailActionsViewDataSource *)self primaryMessageContentRequest];

    if (v5)
    {
      v6 = [(MailActionsViewDataSource *)self presentationSource];
      v7 = [(MailActionsViewDataSource *)self completion];
      v8 = [(MailActionsViewDataSource *)self preparation];
      v9 = [(MailActionsViewDataSource *)self predictedMailbox];
      v65 = [v9 resultIfAvailable];

      v67 = [(MailActionsViewDataSource *)self moveToPredictionTriageInteractionDelegate];
      v66 = [(MailActionsViewDataSource *)self presentingViewControllerForTransferUI];
      v60 = [(MailActionsViewDataSource *)self delegate];
      v69 = [(MailActionsViewDataSource *)self undoManager];
      v70 = [(MailActionsViewDataSource *)self allMessagesInConversation];
      v10 = objc_opt_new();
      v68 = [(MailActionsViewDataSource *)self _mailActionCardHorizontalActionsWithPresentationSource:v6 preparation:v8 completion:v7];
      v11 = [[MFCardActionSectionData alloc] initWithActions:v68 viewLayout:1];
      [v10 addObject:v11];

      if ([(MailActionsViewDataSource *)self includeReadLaterAction])
      {
        v12 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v70 undoManager:v69 origin:[(MailActionsViewDataSource *)self origin] actor:2];
        [v12 setPresentationSource:v6];
        [v12 setDelegate:v60];
        v13 = [v12 selectedDate];
        v14 = v13 != 0;

        v15 = [v12 cardActionWithPreparation:v8 completion:v7];
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

      v59 = [(MFDestructiveTriageInteraction *)MFRemoveFollowUpTriageInteraction interactionWithMessageListItems:v70 undoManager:v69 origin:[(MailActionsViewDataSource *)self origin] actor:2];
      if (!(v14 | (([v59 isPermitted] & 1) == 0)))
      {
        v19 = [v59 cardActionWithPreparation:v8 completion:v7];
        v20 = [MFCardActionSectionData alloc];
        v76 = v19;
        v21 = [NSArray arrayWithObjects:&v76 count:1];
        v22 = [(MFCardActionSectionData *)v20 initWithActions:v21 viewLayout:0];
        [v10 addObject:v22];
      }

      v61 = [(MailActionsViewDataSource *)self _mailActionCardFlagActionsWithPresentationSource:v6 preparation:v8 completion:v7];
      if ([v61 count])
      {
        v23 = [[MFCardActionSectionData alloc] initWithActions:v61 viewLayout:2];
        [v10 addObject:v23];
      }

      v64 = [(MailActionsViewDataSource *)self _mailActionCardSendAgainAndUnreadActionsWithPresentationSource:v6 preparation:v8 completion:v7];
      v24 = [[MFCardActionSectionData alloc] initWithActions:v64 viewLayout:0];
      [v10 addObject:v24];

      v25 = [(MailActionsViewDataSource *)self allMessagesInConversation];
      v26 = [(MailActionsViewDataSource *)self undoManager];
      v63 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v25 undoManager:v26 origin:[(MailActionsViewDataSource *)self origin] actor:2 presentationSource:v6 delegate:v67 presentingViewController:v66 predictedMailbox:v65];

      v62 = [v63 cardActionsWithCompletion:v7];
      v27 = [[MFCardActionSectionData alloc] initWithActions:v62 viewLayout:2];
      [v10 addObject:v27];

      v28 = [(MailActionsViewDataSource *)self _mailActionCardVerticalActionsWithPresentationSource:v6 preparation:v8 completion:v7];
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
              v30 = [(MailActionsViewDataSource *)self targetedMessages];
              v31 = [v30 firstObject];
              v32 = [v31 generatedSummary];
              v33 = v32 == 0;

              if (!v33)
              {
                v34 = [(MailActionsViewDataSource *)self targetedMessages];
                v57 = [(MFTriageInteraction *)MFCatchUpFeedbackTriageInteraction interactionWithMessageListItems:v34 undoManager:v69 origin:[(MailActionsViewDataSource *)self origin] actor:2];

                [v57 setDelegate:v60];
                if (+[MUICatchUpFeedbackController isFeedbackRestricted])
                {
                  v35 = [MFCardActionSectionData alloc];
                  v55 = [v57 cardActionWithCompletion:v7];
                  v75 = v55;
                  v36 = [NSArray arrayWithObjects:&v75 count:1];
                  v37 = [(MFCardActionSectionData *)v35 initWithActions:v36 viewLayout:0];
                  [v10 addObject:v37];
                }

                else
                {
                  v55 = [v57 cardActionWithCompletion:v7];
                  v41 = [MFCardActionSectionData alloc];
                  v74[0] = v55;
                  v36 = [v55 feedbackAction];
                  v74[1] = v36;
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
        v44 = [v43 isInternal];

        if (v44)
        {
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_1000C918C;
          v71[3] = &unk_10064F4F0;
          v72 = v7;
          v58 = objc_retainBlock(v71);
          v45 = [[MSMessageListItemSelection alloc] initWithMessageListItems:v70];
          v56 = [(MFTriageInteraction *)MFCategoryFeedbackTriageInteraction interactionWithMessageListItemSelection:v45 undoManager:0 origin:[(MailActionsViewDataSource *)self origin] actor:2];
          v46 = [MFCardActionSectionData alloc];
          v47 = (v58[2])(v58, v56);
          v48 = [(MFCardActionSectionData *)v46 initWithActions:v47 viewLayout:2];
          [v10 addObject:v48];

          if (([v45 isActingOnSender] & 1) == 0)
          {
            v54 = [MFCategoryHighImpactFeedbackTriageInteraction interactionWithMessageListItemSelection:v45 origin:[(MailActionsViewDataSource *)self origin] actor:2];
            v49 = [MFCardActionSectionData alloc];
            v50 = [v54 cardAction];
            v73 = v50;
            v51 = [NSArray arrayWithObjects:&v73 count:1];
            v52 = [(MFCardActionSectionData *)v49 initWithActions:v51 viewLayout:0];
            [v10 addObject:v52];
          }
        }
      }
    }

    else
    {
      v6 = +[MailActionsViewDataSource log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v38 = [(MailActionsViewDataSource *)self primaryMessage];
        v39 = [v38 itemID];
        v40 = NSStringFromSelector(a2);
        *buf = 138543618;
        v79 = v39;
        v80 = 2114;
        v81 = v40;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No contentRequest for %{public}@ in %{public}@", buf, 0x16u);
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

- (id)_groupedSectionDataForMailActionsViewController:(id)a3
{
  if (![(MailActionsViewDataSource *)self isTargetValid])
  {
    v7 = &__NSArray0__struct;
    goto LABEL_53;
  }

  v5 = [(MailActionsViewDataSource *)self primaryMessageContentRequest];

  if (!v5)
  {
    v13 = +[MailActionsViewDataSource log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v68 = [(MailActionsViewDataSource *)self primaryMessage];
      v69 = [v68 itemID];
      v70 = NSStringFromSelector(a2);
      *buf = 138543618;
      v129 = v69;
      v130 = 2114;
      v131 = v70;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No contentRequest for %{public}@ in %{public}@", buf, 0x16u);
    }

    v7 = &__NSArray0__struct;
    goto LABEL_52;
  }

  v112 = [(MailActionsViewDataSource *)self presentationSource];
  v115 = [(MailActionsViewDataSource *)self completion];
  v113 = [(MailActionsViewDataSource *)self preparation];
  v6 = [(MailActionsViewDataSource *)self predictedMailbox];
  v100 = [v6 resultIfAvailable];

  v98 = [(MailActionsViewDataSource *)self moveToPredictionTriageInteractionDelegate];
  v99 = [(MailActionsViewDataSource *)self presentingViewControllerForTransferUI];
  v97 = [(MailActionsViewDataSource *)self delegate];
  v93 = [(MailActionsViewDataSource *)self scene];
  v111 = [(MailActionsViewDataSource *)self undoManager];
  v110 = [(MailActionsViewDataSource *)self primaryMessage];
  v114 = [(MailActionsViewDataSource *)self allMessagesInConversation];
  v94 = [(MailActionsViewDataSource *)self primaryMessageContentRequest];
  v7 = objc_opt_new();
  v101 = [(MailActionsViewDataSource *)self _mailActionCardHorizontalActionsWithPresentationSource:v112 preparation:v113 completion:v115];
  v8 = [[MFCardActionSectionData alloc] initWithActions:v101 viewLayout:1];
  [v7 addObject:v8];

  v108 = objc_opt_new();
  if ([(MailActionsViewDataSource *)self includeReadLaterAction])
  {
    v9 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v114 undoManager:v111 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v9 setPresentationSource:v112];
    [v9 setDelegate:v97];
    v10 = [v9 selectedDate];
    v11 = v10 != 0;

    v12 = [v9 cardActionWithPreparation:v113 completion:v115];
    [v12 setShouldDismissCardBeforeExecuteHandler:1];
    [v12 setShouldDeferDismissHandler:1];
    [v108 addObject:v12];
  }

  else
  {
    v11 = 0;
  }

  v95 = [(MFDestructiveTriageInteraction *)MFRemoveFollowUpTriageInteraction interactionWithMessageListItems:v114 undoManager:v111 origin:[(MailActionsViewDataSource *)self origin] actor:2];
  if (!(v11 | (([v95 isPermitted] & 1) == 0)))
  {
    v14 = [v95 cardActionWithPreparation:v113 completion:v115];
    [v108 addObject:v14];
  }

  v96 = [(MailActionsViewDataSource *)self _mailActionCardFlagActionsWithPresentationSource:v112 preparation:v113 completion:v115];
  if ([v96 count])
  {
    [v108 addObjectsFromArray:v96];
  }

  v92 = [(MailActionsViewDataSource *)self _mailActionCardSendAgainAndUnreadActionsWithPresentationSource:v112 preparation:v113 completion:v115];
  [v108 addObjectsFromArray:?];
  v15 = [[MFCardActionSectionData alloc] initWithActions:v108 viewLayout:2];
  [v7 addObject:v15];

  v109 = objc_opt_new();
  v16 = [(MailActionsViewDataSource *)self allMessagesInConversation];
  v17 = [(MailActionsViewDataSource *)self undoManager];
  v18 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v16 undoManager:v17 origin:[(MailActionsViewDataSource *)self origin] actor:2 presentationSource:v112 delegate:v98 presentingViewController:v99 predictedMailbox:v100];

  v89 = v18;
  v91 = [v18 cardActionsWithCompletion:v115];
  [v109 addObjectsFromArray:?];
  v90 = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItems:v114 undoManager:v111 origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];
  v19 = [v90 cardActionWithPreparation:v113 completion:v115];
  [v109 addObject:v19];

  if ([v110 shouldArchiveByDefault])
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v88 = [(MailActionsViewDataSource *)self _archiveOrDeleteInteractionForMessageListItems:v114 deleteOrArchive:v20 presentationSource:v112 type:1 shouldAskForConfirmation:0];
  v21 = [v88 cardActionWithPreparation:v113 completion:v115];
  [v109 addObject:v21];

  if (EMBlackPearlIsFeatureEnabled() && [(MailActionsViewDataSource *)self includeCategorizationAction])
  {
    v22 = [[MSMessageListItemSelection alloc] initWithMessageListItems:v114];
    v23 = [(MFTriageInteraction *)MFCategorizationMenuTriageInteraction interactionWithMessageListItemSelection:v22 undoManager:v111 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v23 setDelegate:v97];
    [v23 setPresentationSource:v112];
    v24 = [v23 cardActionWithCompletion:v115];
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
  v13 = v112;
  v119 = v13;
  v26 = v97;
  v120 = v26;
  v104 = v113;
  v121 = v104;
  v106 = v115;
  v122 = v106;
  v102 = objc_retainBlock(v118);
  v27 = [(MailActionsViewDataSource *)self target];
  v28 = [v27 targetedMessages];
  v29 = [v28 ef_any:&stru_10064F538];

  if ((v29 & 1) == 0)
  {
    v30 = [(MFConversationFlagTriageInteraction *)MFMuteTriageInteraction interactionWithReferenceMessage:v110 undoManager:v111 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v30 setPresentationSource:v13];
    [v30 setDelegate:v26];
    if ([v30 isPermitted])
    {
      v31 = [v30 cardActionWithPreparation:v104 completion:v106];
      [v103 addObject:v31];
    }

    v32 = [(MFConversationFlagTriageInteraction *)MFNotifyTriageInteraction interactionWithReferenceMessage:v110 undoManager:v111 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    (v102[2])(v102, v32, v103);
  }

  v33 = [[MFCardActionSectionData alloc] initWithActions:v103 viewLayout:2];
  [v7 addObject:v33];

  if (+[UIPrintInteractionController isPrintingAvailable]&& ![(MailActionsViewDataSource *)self targetPreference])
  {
    v34 = [(MailActionsViewDataSource *)self printerDelegate];
    v35 = [MFPrintTriageInteraction interactionWithContentRequest:v94 scene:v93 delegate:v34];

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
  v40 = [v110 unsubscribeType];
  if ([(MailActionsViewDataSource *)self shouldShowICloudUnsubscribeAction])
  {
    v41 = [(MailActionsViewDataSource *)self origin];
    v42 = +[UIApplication sharedApplication];
    v43 = [v42 getiCloudMailCleanupService];
    v44 = [(MFUnsubscribeTriageInteraction *)MFUnsubscribeAndDeleteTriageInteraction interactionWithReferenceMessageListItemsAndConfirmation:v114 origin:v41 actor:2 shouldAskForConfirmation:1 icloudMailCleanupService:v43];

    [v44 setIsMailto:{objc_msgSend(v110, "unsubscribeType") & 1}];
    [v44 setIsPost:{(objc_msgSend(v110, "unsubscribeType") >> 2) & 1}];
    (v102[2])(v102, v44, v107);
  }

  else
  {
    if ((v40 & 5) == 0 || !_os_feature_enabled_impl())
    {
      goto LABEL_33;
    }

    v44 = [MFUnsubscribeTriageInteraction interactionWithReferenceMessageListItems:v114 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    (v102[2])(v102, v44, v107);
  }

LABEL_33:
  if ([v107 count])
  {
    v45 = [[MFCardActionSectionData alloc] initWithActions:v107 viewLayout:2];
    [v7 addObject:v45];
  }

  v105 = objc_opt_new();
  v46 = +[MFSenderBlockingTriageInteraction interactionWithMessageListItems:undoManager:origin:actor:blockSender:](MFSenderBlockingTriageInteraction, "interactionWithMessageListItems:undoManager:origin:actor:blockSender:", v114, v111, -[MailActionsViewDataSource origin](self, "origin"), 2, [v110 isBlocked] ^ 1);
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
    v54 = [(MFTriageInteraction *)MFShareAsEMLTriageInteraction interactionWithMessageListItems:v114 undoManager:v111 origin:[(MailActionsViewDataSource *)self origin] actor:2];
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
          v59 = [(MailActionsViewDataSource *)self targetedMessages];
          v60 = [v59 firstObject];
          v61 = [v60 generatedSummary];
          v62 = v61 == 0;

          if (!v62)
          {
            v63 = [(MailActionsViewDataSource *)self targetedMessages];
            v64 = [(MFTriageInteraction *)MFCatchUpFeedbackTriageInteraction interactionWithMessageListItems:v63 undoManager:v111 origin:[(MailActionsViewDataSource *)self origin] actor:2];

            [v64 setDelegate:v26];
            if (+[MUICatchUpFeedbackController isFeedbackRestricted])
            {
              v65 = [MFCardActionSectionData alloc];
              v86 = [v64 cardActionWithCompletion:v106];
              v125 = v86;
              v66 = [NSArray arrayWithObjects:&v125 count:1];
              v67 = [(MFCardActionSectionData *)v65 initWithActions:v66 viewLayout:2];
              [v7 addObject:v67];
            }

            else
            {
              v86 = [v64 cardActionWithCompletion:v106];
              v71 = [MFCardActionSectionData alloc];
              v124[0] = v86;
              v66 = [v86 feedbackAction];
              v124[1] = v66;
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
    v74 = [v73 isInternal];

    if (v74)
    {
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_1000CA9A8;
      v116[3] = &unk_10064F4F0;
      v117 = v106;
      v75 = objc_retainBlock(v116);
      v76 = [[MSMessageListItemSelection alloc] initWithMessageListItems:v114];
      v87 = [(MFTriageInteraction *)MFCategoryFeedbackTriageInteraction interactionWithMessageListItemSelection:v76 undoManager:0 origin:[(MailActionsViewDataSource *)self origin] actor:2];
      v77 = [MFCardActionSectionData alloc];
      v78 = (v75[2])(v75, v87);
      v79 = [(MFCardActionSectionData *)v77 initWithActions:v78 viewLayout:2];
      [v7 addObject:v79];

      if (([v76 isActingOnSender] & 1) == 0)
      {
        v85 = [MFCategoryHighImpactFeedbackTriageInteraction interactionWithMessageListItemSelection:v76 origin:[(MailActionsViewDataSource *)self origin] actor:2];
        v80 = [MFCardActionSectionData alloc];
        v81 = [v85 cardAction];
        v123 = v81;
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
  v2 = [(MailActionsViewDataSource *)self target];
  v3 = [v2 primaryMessage];

  return v3;
}

- (id)selectedMessageContent
{
  v2 = [(MailActionsViewDataSource *)self target];
  v3 = [v2 selectedMessageContent];

  return v3;
}

- (id)primaryMessageContentRequest
{
  v2 = [(MailActionsViewDataSource *)self target];
  v3 = [v2 primaryMessageContentRequest];

  return v3;
}

- (id)messageListItem
{
  v2 = [(MailActionsViewDataSource *)self target];
  v3 = [v2 messageListItem];

  return v3;
}

- (id)mailboxes
{
  v2 = [(MailActionsViewDataSource *)self target];
  v3 = [v2 messageListItem];
  v4 = [v3 mailboxes];

  return v4;
}

- (id)targetedMessages
{
  v2 = [(MailActionsViewDataSource *)self target];
  v3 = [v2 targetedMessages];

  return v3;
}

- (id)allMessagesInConversation
{
  if ([(MailActionsViewDataSource *)self targetPreference])
  {
    v3 = [(MailActionsViewDataSource *)self messageListItem];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = [(MailActionsViewDataSource *)self targetedMessages];
  }

  return v4;
}

- (int64_t)targetPreference
{
  v2 = [(MailActionsViewDataSource *)self target];
  v3 = [v2 targetPreference];

  return v3;
}

- (id)undoManager
{
  v2 = [(MailActionsViewDataSource *)self scene];
  v3 = [v2 undoManager];

  return v3;
}

- (BOOL)shouldShowICloudUnsubscribeAction
{
  v3 = [(MailActionsViewDataSource *)self primaryMessage];
  v4 = [v3 unsubscribeType];

  v5 = [(MailActionsViewDataSource *)self primaryMessage];
  v6 = [v5 mailboxes];
  v7 = [v6 ef_any:&stru_10064F558];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 getiCloudMailCleanupService];
  if ([v9 shouldShowICloudUnsubscribe])
  {
    v10 = [(MailActionsViewDataSource *)self includeICloudUnsubscribeAction];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(MailActionsViewDataSource *)self messageListItem];
  v12 = [v11 category];
  if ([v12 type] == 3)
  {
    v13 = 1;
  }

  else
  {
    v14 = [(MailActionsViewDataSource *)self messageListItem];
    v15 = [v14 category];
    v13 = [v15 type] == 2;
  }

  if ((+[MUIiCloudMailCleanupService isFeatureAvailable]& v7) == 1)
  {
    return v10 & (v13 || (v4 & 5) != 0);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isTargetValid
{
  v4 = [(MailActionsViewDataSource *)self delegate];
  if (!v4)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MailActionsViewDataSource.m" lineNumber:445 description:@"MessageTriageInteractionHelper requires delegate to create triage interactions"];
  }

  v5 = [(MailActionsViewDataSource *)self messageListItem];
  v6 = [(MailActionsViewDataSource *)self primaryMessage];
  if (!v6)
  {
    v8 = +[MailActionsViewDataSource log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      sub_100488024(v9, v13, v8);
    }

    goto LABEL_10;
  }

  if (!v5)
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

- (id)_mailActionCardHorizontalActionsWithPresentationSource:(id)a3 preparation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v31 = a4;
  v30 = a5;
  v37 = [(MailActionsViewDataSource *)self primaryMessage];
  v9 = [(MailActionsViewDataSource *)self primaryMessageContentRequest];
  v36 = v9;
  v29 = [(MailActionsViewDataSource *)self delegate];
  v39 = [(MailActionsViewDataSource *)self scene];
  v38 = objc_opt_new();
  v28 = [(MailActionsViewDataSource *)self selectedMessageContent];
  [(MailActionsViewDataSource *)self mailboxes];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000CB6A8;
  v35 = v40[3] = &unk_10064F580;
  v41 = v35;
  v10 = v8;
  v42 = v10;
  v33 = v29;
  v43 = v33;
  v32 = v28;
  v44 = v32;
  v45 = self;
  v11 = v31;
  v46 = v11;
  v12 = v30;
  v47 = v12;
  v13 = objc_retainBlock(v40);
  v34 = [(MFMessageCompositionTriageInteraction *)MFReplyTriageInteraction interactionWithContentRequest:v9 scene:v39];
  v14 = (v13[2])(v13, v34);
  [v38 addObject:v14];

  v15 = [(MFMessageCompositionTriageInteraction *)MFReplyAllTriageInteraction interactionWithContentRequest:v9 scene:v39];
  if ([v15 isPermitted])
  {
    v16 = (v13[2])(v13, v15);
    [v38 addObject:v16];
  }

  v17 = [(MFMessageCompositionTriageInteraction *)MFForwardTriageInteraction interactionWithContentRequest:v9 scene:v39];
  v18 = (v13[2])(v13, v17);
  [v38 addObject:v18];

  v19 = [v37 shouldArchiveByDefault];
  v20 = [(MailActionsViewDataSource *)self targetPreference];
  v21 = [(MailActionsViewDataSource *)self targetedMessages];
  if (v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v23 = [(MailActionsViewDataSource *)self _archiveOrDeleteInteractionForMessageListItems:v21 deleteOrArchive:v22 presentationSource:v10 type:v20 != 0 shouldAskForConfirmation:0];

  v24 = [v23 cardActionWithPreparation:v11 completion:v12];
  v25 = v24;
  v26 = &MFImageGlyphArchiveFill;
  if (!v19)
  {
    v26 = &MFImageGlyphTrashFill;
  }

  [v24 setImageName:*v26];
  [v38 addObject:v25];

  return v38;
}

- (id)_mailActionCardFlagActionsWithPresentationSource:(id)a3 preparation:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(MailActionsViewDataSource *)self undoManager];
  v8 = objc_opt_new();
  v9 = [(MailActionsViewDataSource *)self targetedMessages];
  v10 = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItems:v9 undoManager:v7 origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];
  if ([v10 isPermitted])
  {
    v11 = [(MailActionsViewDataSource *)self flagChangeInteractionDelegate];
    [v10 setDelegate:v11];

    v12 = [v10 cardActionWithCompletion:v6];
    [v8 addObject:v12];

    v13 = [(MFFlagChangeTriageInteraction *)MFFlagColorTriageInteraction interactionWithMessageListItems:v9 undoManager:v7 origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];
    v14 = [v13 cardActionWithCompletion:v6];
    [v8 addObject:v14];

    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_mailActionCardSendAgainAndUnreadActionsWithPresentationSource:(id)a3 preparation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MailActionsViewDataSource *)self delegate];
  v12 = objc_opt_new();
  if (![(MailActionsViewDataSource *)self targetPreference])
  {
    v13 = [(MailActionsViewDataSource *)self primaryMessageContentRequest];
    v14 = [(MailActionsViewDataSource *)self scene];
    v15 = [(MFMessageCompositionTriageInteraction *)MFSendAgainTriageInteraction interactionWithContentRequest:v13 scene:v14];

    v16 = [(MailActionsViewDataSource *)self mailboxes];
    [v15 setMessageSourceMailboxes:v16];

    if ([v15 isPermitted])
    {
      [v15 setPresentationSource:v8];
      [v15 setDelegate:v11];
      v17 = [v15 cardActionWithPreparation:v9 completion:v10];
      [v12 addObject:v17];
    }
  }

  v18 = [(MailActionsViewDataSource *)self targetedMessages];
  v19 = [(MailActionsViewDataSource *)self undoManager];
  v20 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItems:v18 undoManager:v19 origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];

  v21 = [v20 cardActionWithPreparation:v9 completion:v10];
  [v12 addObject:v21];

  return v12;
}

- (id)_mailActionCardVerticalActionsWithPresentationSource:(id)a3 preparation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v50 = a4;
  v49 = a5;
  v45 = [(MailActionsViewDataSource *)self delegate];
  v9 = [(MailActionsViewDataSource *)self scene];
  v48 = v9;
  v55 = [(MailActionsViewDataSource *)self undoManager];
  v57 = [(MailActionsViewDataSource *)self primaryMessage];
  v56 = [(MailActionsViewDataSource *)self allMessagesInConversation];
  v44 = objc_opt_new();
  v51 = [(MailActionsViewDataSource *)self primaryMessageContentRequest];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000CC580;
  v58[3] = &unk_10064F5A8;
  v10 = v8;
  v59 = v10;
  v53 = v45;
  v60 = v53;
  v11 = v44;
  v61 = v11;
  v54 = v50;
  v62 = v54;
  v12 = v49;
  v63 = v12;
  v52 = objc_retainBlock(v58);
  if ([v57 shouldArchiveByDefault])
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v47 = [(MailActionsViewDataSource *)self _archiveOrDeleteInteractionForMessageListItems:v56 deleteOrArchive:v13 presentationSource:v10 type:1 shouldAskForConfirmation:0];
  v14 = [v47 cardActionWithPreparation:v54 completion:v12];
  [v11 addObject:v14];

  if (EMBlackPearlIsFeatureEnabled() && [(MailActionsViewDataSource *)self includeCategorizationAction])
  {
    v15 = [[MSMessageListItemSelection alloc] initWithMessageListItems:v56];
    v16 = [(MFTriageInteraction *)MFCategorizationMenuTriageInteraction interactionWithMessageListItemSelection:v15 undoManager:v55 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v16 setDelegate:v53];
    [v16 setPresentationSource:v10];
    v17 = [v16 cardActionWithCompletion:v12];
    [v17 setShouldDismissCardBeforeExecuteHandler:1];
    [v11 addObject:v17];
  }

  v46 = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItems:v56 undoManager:v55 origin:[(MailActionsViewDataSource *)self origin] actor:2 reason:4];
  v18 = [v46 cardActionWithPreparation:v54 completion:v12];
  [v11 addObject:v18];

  v19 = [(MailActionsViewDataSource *)self target];
  v20 = [v19 targetedMessages];
  v21 = [v20 ef_any:&stru_10064F5C8];

  if ((v21 & 1) == 0)
  {
    v22 = [(MFConversationFlagTriageInteraction *)MFMuteTriageInteraction interactionWithReferenceMessage:v57 undoManager:v55 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    [v22 setPresentationSource:v10];
    [v22 setDelegate:v53];
    if ([v22 isPermitted])
    {
      v23 = [v22 cardActionWithPreparation:v54 completion:v12];
      [v11 addObject:v23];
    }

    v24 = [(MFConversationFlagTriageInteraction *)MFNotifyTriageInteraction interactionWithReferenceMessage:v57 undoManager:v55 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    (v52[2])(v52, v24);
  }

  if (+[UIPrintInteractionController isPrintingAvailable]&& ![(MailActionsViewDataSource *)self targetPreference])
  {
    v25 = [(MailActionsViewDataSource *)self printerDelegate];
    v26 = [MFPrintTriageInteraction interactionWithContentRequest:v51 scene:v9 delegate:v25];

    [v26 setDelegate:v53];
    [v26 setPresentationSource:v10];
    v27 = [v26 cardActionWithPreparation:v54 completion:v12];
    [v27 setShouldDismissCardBeforeExecuteHandler:1];
    [v11 addObject:v27];
  }

  v28 = [v57 unsubscribeType];
  if ([(MailActionsViewDataSource *)self shouldShowICloudUnsubscribeAction])
  {
    v29 = [(MailActionsViewDataSource *)self origin];
    v30 = +[UIApplication sharedApplication];
    v31 = [v30 getiCloudMailCleanupService];
    v32 = [(MFUnsubscribeTriageInteraction *)MFUnsubscribeAndDeleteTriageInteraction interactionWithReferenceMessageListItemsAndConfirmation:v56 origin:v29 actor:2 shouldAskForConfirmation:1 icloudMailCleanupService:v31];

    [v32 setIsMailto:{objc_msgSend(v57, "unsubscribeType") & 1}];
    [v32 setIsPost:{(objc_msgSend(v57, "unsubscribeType") >> 2) & 1}];
    (v52[2])(v52, v32);
LABEL_19:

    goto LABEL_20;
  }

  if ((v28 & 5) != 0 && _os_feature_enabled_impl())
  {
    v32 = [MFUnsubscribeTriageInteraction interactionWithReferenceMessageListItems:v56 origin:[(MailActionsViewDataSource *)self origin] actor:2];
    (v52[2])(v52, v32);
    goto LABEL_19;
  }

LABEL_20:
  v33 = +[MFSenderBlockingTriageInteraction interactionWithMessageListItems:undoManager:origin:actor:blockSender:](MFSenderBlockingTriageInteraction, "interactionWithMessageListItems:undoManager:origin:actor:blockSender:", v56, v55, -[MailActionsViewDataSource origin](self, "origin"), 2, [v57 isBlocked] ^ 1);
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
    v40 = [(MFTriageInteraction *)MFShareAsEMLTriageInteraction interactionWithMessageListItems:v56 undoManager:v55 origin:[(MailActionsViewDataSource *)self origin] actor:2];
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

- (id)_archiveOrDeleteInteractionForMessageListItems:(id)a3 deleteOrArchive:(unint64_t)a4 presentationSource:(id)a5 type:(int64_t)a6 shouldAskForConfirmation:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a5;
  v14 = [(MailActionsViewDataSource *)self undoManager];
  v15 = [(MailActionsViewDataSource *)self delegate];
  if (a4 == 2)
  {
    v16 = MFArchiveTriageInteraction;
  }

  else
  {
    v16 = MFDeleteTriageInteraction;
  }

  v17 = [(__objc2_class *)v16 interactionWithMessageListItems:v12 undoManager:v14 origin:[(MailActionsViewDataSource *)self origin] actor:2];
  [v17 setDelegate:v15];
  [v17 setPresentationSource:v13];
  [v17 setType:a6];
  [v17 setShouldAskForConfirmation:v7];

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