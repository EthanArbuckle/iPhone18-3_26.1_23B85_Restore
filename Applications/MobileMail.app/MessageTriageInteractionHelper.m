@interface MessageTriageInteractionHelper
+ (id)log;
- (BOOL)flagStateForFlagChangeTriageInteraction:(id)a3;
- (BOOL)flagStateForTriageAction:(int64_t)a3 messageListItems:(id)a4 isSelectAll:(BOOL)a5 supportsSelectAll:(BOOL)a6;
- (ComposeCapable)scene;
- (EMMessage)primaryMessage;
- (EMMessageListItem)messageListItem;
- (MFTriageInteractionDelegate)delegate;
- (MessageTriageInteractionHelper)initWithDataSource:(id)a3 triageInteractionDelegate:(id)a4 scene:(id)a5 presentingViewController:(id)a6;
- (MessageTriageInteractionHelperDataSource)dataSource;
- (NSArray)allMessagesInConversation;
- (NSArray)mailboxes;
- (NSArray)targetedMessages;
- (id)_queryForObservedMailboxesWithPredicate:(id)a3 label:(id)a4;
- (id)archiveOrDeleteTriageInteractionWithPresentationSource:(id)a3 target:(id)a4 origin:(int64_t)a5;
- (id)messageRepositoryForTriageInteraction:(id)a3;
- (id)presentingViewControllerForTriageInteraction:(id)a3;
- (id)triageInteractionForTriageAction:(int64_t)a3 withMessageListItems:(id)a4 presentationSource:(id)a5 presentingViewController:(id)a6 moveInteractionDelegate:(id)a7 filterInteractionDelegate:(id)a8 forPreview:(BOOL)a9 origin:(int64_t)a10;
- (id)triageInteractionForTriageAction:(int64_t)a3 withMessageListItems:(id)a4 presentationSource:(id)a5 presentingViewController:(id)a6 moveInteractionDelegate:(id)a7 forPreview:(BOOL)a8 origin:(int64_t)a9;
- (id)undoManager;
- (int64_t)targetPreference;
- (void)_startObservingMailboxes;
- (void)didLongPressTrashButtonWithPresentationSource:(id)a3 presentFromViewController:(id)a4 target:(id)a5 completion:(id)a6;
- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5;
- (void)startObservingMailboxes:(id)a3;
@end

@implementation MessageTriageInteractionHelper

- (NSArray)mailboxes
{
  v2 = [(MessageTriageInteractionHelper *)self target];
  v3 = [v2 messageListItem];
  v4 = [v3 mailboxes];

  return v4;
}

- (void)_startObservingMailboxes
{
  v9 = [(MessageTriageInteractionHelper *)self observedMailboxes];
  v3 = [v9 count];

  if (v3)
  {
    v4 = [(MessageTriageInteractionHelper *)self unflaggedCountObserver];

    if (v4)
    {
      v10 = [(MessageTriageInteractionHelper *)self unflaggedCountObserver];
      [v10 cancel];

      [(MessageTriageInteractionHelper *)self setUnflaggedCountObserver:0];
    }

    v11 = +[EMMessageListItemPredicates predicateForUnflaggedMessages];
    v5 = [MessageTriageInteractionHelper _queryForObservedMailboxesWithPredicate:"_queryForObservedMailboxesWithPredicate:label:" label:?];
    unflaggedCountQuery = self->_unflaggedCountQuery;
    self->_unflaggedCountQuery = v5;

    v12 = [(MessageTriageInteractionHelper *)self messageRepository];
    v7 = [v12 startCountingQuery:self->_unflaggedCountQuery includingServerCountsForMailboxScope:0 withObserver:self];
    unflaggedCountObserver = self->_unflaggedCountObserver;
    self->_unflaggedCountObserver = v7;
  }
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019DCA8;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD398 != -1)
  {
    dispatch_once(&qword_1006DD398, block);
  }

  v2 = qword_1006DD390;

  return v2;
}

- (MessageTriageInteractionHelper)initWithDataSource:(id)a3 triageInteractionDelegate:(id)a4 scene:(id)a5 presentingViewController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = MessageTriageInteractionHelper;
  v14 = [(MessageTriageInteractionHelper *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_dataSource, v10);
    objc_storeWeak(&v15->_delegate, v11);
    objc_storeWeak(&v15->_scene, v12);
    objc_storeStrong(&v15->_presentingViewController, a6);
    v16 = [v12 daemonInterface];
    v17 = [v16 messageRepository];
    messageRepository = v15->_messageRepository;
    v15->_messageRepository = v17;
  }

  return v15;
}

- (EMMessage)primaryMessage
{
  v2 = [(MessageTriageInteractionHelper *)self target];
  v3 = [v2 primaryMessage];

  return v3;
}

- (EMMessageListItem)messageListItem
{
  v2 = [(MessageTriageInteractionHelper *)self target];
  v3 = [v2 messageListItem];

  return v3;
}

- (NSArray)targetedMessages
{
  if ([(MessageTriageInteractionHelper *)self targetPreference]== 1)
  {
    v3 = [(MessageTriageInteractionHelper *)self messageListItem];
    v11 = v3;
    v4 = [NSArray arrayWithObjects:&v11 count:1];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(MessageTriageInteractionHelper *)self primaryMessage];
  v3 = v5;
  if (v5)
  {
    v10 = v5;
    v4 = [NSArray arrayWithObjects:&v10 count:1];
    goto LABEL_5;
  }

  v8 = [(MessageTriageInteractionHelper *)self messageListItem];
  v9 = v8;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

LABEL_6:

  return v6;
}

- (NSArray)allMessagesInConversation
{
  if ([(MessageTriageInteractionHelper *)self targetPreference])
  {
    v3 = [(MessageTriageInteractionHelper *)self messageListItem];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = [(MessageTriageInteractionHelper *)self targetedMessages];
  }

  return v4;
}

- (int64_t)targetPreference
{
  v2 = [(MessageTriageInteractionHelper *)self target];
  v3 = [v2 targetPreference];

  return v3;
}

- (id)undoManager
{
  v2 = [(MessageTriageInteractionHelper *)self scene];
  v3 = [v2 undoManager];

  return v3;
}

- (void)didLongPressTrashButtonWithPresentationSource:(id)a3 presentFromViewController:(id)a4 target:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [(MessageTriageInteractionHelper *)self setTarget:a5];
  v13 = [(MessageTriageInteractionHelper *)self primaryMessage];
  if (v13)
  {
    v45 = v11;
    v46 = v10;
    v48 = v12;
    v44 = v13;
    v43 = [(MessageTriageInteractionHelper *)self messageListItem];
    v14 = [v43 count];
    v15 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"ARCHIVE_EMAIL" value:&stru_100662A88 table:@"Main"];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10019E9C8;
    v61[3] = &unk_100653058;
    v61[4] = self;
    v18 = v13;
    v62 = v18;
    v19 = v10;
    v63 = v19;
    v20 = v11;
    v64 = v20;
    v21 = v48;
    v65 = v21;
    v49 = [UIAlertAction actionWithTitle:v17 style:0 handler:v61];

    v22 = [(MessageTriageInteractionHelper *)self mailboxes];
    LODWORD(v16) = [EMMailbox deleteMovesToTrashForMailboxes:v22];

    v23 = +[NSBundle mainBundle];
    if (v16)
    {
      [v23 localizedStringForKey:@"TRASH_EMAIL" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v23 localizedStringForKey:@"DELETE_EMAIL" value:&stru_100662A88 table:@"Main"];
    }
    v47 = ;

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10019EAAC;
    v56[3] = &unk_100653058;
    v56[4] = self;
    v24 = v18;
    v57 = v24;
    v25 = v19;
    v58 = v25;
    v26 = v20;
    v59 = v26;
    v27 = v21;
    v60 = v27;
    v28 = [UIAlertAction actionWithTitle:v47 style:2 handler:v56];
    if ([v24 shouldArchiveByDefault])
    {
      [v15 addAction:v49];
      v29 = v28;
      if (v14 >= 2)
      {
        v30 = [(MessageTriageInteractionHelper *)self allMessagesInConversation];
        v31 = [(MessageTriageInteractionHelper *)self triageInteractionForTriageAction:9 withMessageListItems:v30 presentationSource:v25 presentingViewController:v26 moveInteractionDelegate:0 forPreview:0 origin:3];

        v32 = [v31 title];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10019EB90;
        v53[3] = &unk_100650800;
        v33 = v31;
        v54 = v33;
        v55 = v27;
        v34 = [UIAlertAction actionWithTitle:v32 style:0 handler:v53];
        [v15 addAction:v34];
        v35 = &v54;
        v36 = &v55;
        v29 = v28;
LABEL_10:
      }
    }

    else
    {
      [v15 addAction:v28];
      v29 = v49;
      if (v14 >= 2)
      {
        v37 = [(MessageTriageInteractionHelper *)self allMessagesInConversation];
        v38 = [(MessageTriageInteractionHelper *)self triageInteractionForTriageAction:8 withMessageListItems:v37 presentationSource:v25 presentingViewController:v26 moveInteractionDelegate:0 forPreview:0 origin:3];

        v32 = [v38 title];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10019EB9C;
        v50[3] = &unk_100650800;
        v33 = v38;
        v51 = v33;
        v52 = v27;
        v34 = [UIAlertAction actionWithTitle:v32 style:2 handler:v50];
        [v15 addAction:v34];
        v35 = &v51;
        v36 = &v52;
        v29 = v49;
        goto LABEL_10;
      }
    }

    [v15 addAction:v29];
    v39 = +[NSBundle mainBundle];
    v40 = [v39 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
    v41 = [UIAlertAction actionWithTitle:v40 style:1 handler:0];
    [v15 addAction:v41];

    v42 = [v15 popoverPresentationController];
    [v42 setSourceItem:v25];

    [v26 presentViewController:v15 animated:1 completion:0];
    v11 = v45;
    v10 = v46;
    v12 = v48;
    v13 = v44;
  }
}

- (id)archiveOrDeleteTriageInteractionWithPresentationSource:(id)a3 target:(id)a4 origin:(int64_t)a5
{
  v8 = a3;
  [(MessageTriageInteractionHelper *)self setTarget:a4];
  v9 = [(MessageTriageInteractionHelper *)self primaryMessage];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 shouldArchiveByDefault];
    v12 = [(MessageTriageInteractionHelper *)self undoManager];
    v13 = [(MessageTriageInteractionHelper *)self delegate];
    if (v11)
    {
      v19 = v10;
      v14 = [NSArray arrayWithObjects:&v19 count:1];
      v15 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItems:v14 undoManager:v12 origin:a5 actor:2];
    }

    else
    {
      v18 = v10;
      v14 = [NSArray arrayWithObjects:&v18 count:1];
      v15 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItems:v14 undoManager:v12 origin:a5 actor:2];
    }

    v16 = v15;

    [v16 setDelegate:v13];
    [v16 setPresentationSource:v8];
    [v16 setType:0];
    [v16 setShouldAskForConfirmation:1];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)triageInteractionForTriageAction:(int64_t)a3 withMessageListItems:(id)a4 presentationSource:(id)a5 presentingViewController:(id)a6 moveInteractionDelegate:(id)a7 forPreview:(BOOL)a8 origin:(int64_t)a9
{
  LOBYTE(v11) = a8;
  v9 = [(MessageTriageInteractionHelper *)self triageInteractionForTriageAction:a3 withMessageListItems:a4 presentationSource:a5 presentingViewController:a6 moveInteractionDelegate:a7 filterInteractionDelegate:0 forPreview:v11 origin:a9];

  return v9;
}

- (id)triageInteractionForTriageAction:(int64_t)a3 withMessageListItems:(id)a4 presentationSource:(id)a5 presentingViewController:(id)a6 moveInteractionDelegate:(id)a7 filterInteractionDelegate:(id)a8 forPreview:(BOOL)a9 origin:(int64_t)a10
{
  v16 = a4;
  v17 = a5;
  v43 = a6;
  v44 = a7;
  v42 = a8;
  v47 = v16;
  v18 = [v16 firstObject];
  if (a3 == 16)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v19 = v47;
    v20 = [v19 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v20)
    {
      v21 = *v56;
      a3 = 8;
LABEL_4:
      v22 = 0;
      while (1)
      {
        if (*v56 != v21)
        {
          objc_enumerationMutation(v19);
        }

        if ([*(*(&v55 + 1) + 8 * v22) shouldArchiveByDefault])
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v19 countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v20)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      a3 = 9;
    }
  }

  v41 = [(MessageTriageInteractionHelper *)self scene];
  v40 = [(MessageTriageInteractionHelper *)self dataSource];
  v45 = [(MessageTriageInteractionHelper *)self delegate];
  v46 = [(MessageTriageInteractionHelper *)self undoManager];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10019F5C8;
  v48[3] = &unk_100653080;
  v23 = v18;
  v49 = v23;
  v24 = v40;
  v50 = v24;
  v51 = self;
  v25 = v41;
  v52 = v25;
  v26 = v17;
  v53 = v26;
  v54 = a9;
  v27 = objc_retainBlock(v48);
  v28 = 0;
  v29 = off_100647178;
  v30 = off_100647190;
  switch(a3)
  {
    case 2:
      goto LABEL_15;
    case 6:
      v28 = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItems:v47 undoManager:v46 origin:a10 actor:2 reason:4];
      [v28 setDelegate:self];
      goto LABEL_44;
    case 7:
      v31 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v47 undoManager:v46 origin:a10 actor:2 presentationSource:v26 delegate:v44 presentingViewController:v43 predictedMailbox:0];
      goto LABEL_31;
    case 8:
      goto LABEL_26;
    case 9:
      v29 = off_100647170;
LABEL_26:
      v31 = [(__objc2_class *)*v29 interactionWithMessageListItems:v47 undoManager:v46 origin:a10 actor:2];
      goto LABEL_31;
    case 10:
      v32 = [(MFConversationFlagTriageInteraction *)MFNotifyTriageInteraction interactionWithMessageListItems:v47 undoManager:v46 origin:a10 actor:2];
      v33 = [v32 isPermitted];
      goto LABEL_23;
    case 11:
      v32 = [(MFConversationFlagTriageInteraction *)MFMuteTriageInteraction interactionWithMessageListItems:v47 undoManager:v46 origin:a10 actor:2];
      v33 = [v32 isPermitted];
LABEL_23:
      if ((v33 & 1) == 0)
      {
        goto LABEL_42;
      }

      v28 = v32;
      goto LABEL_44;
    case 12:
    case 13:
      v37 = objc_opt_class();
      v31 = (v27[2])(v27, v37);
      goto LABEL_31;
    case 14:
      v35 = objc_opt_class();
      v36 = (v27[2])(v27, v35);
      v28 = v36;
      if (v36)
      {
        [v36 setAttachmentPolicy:1];
        [v28 setPresentationSource:v26];
        [v28 setDelegate:v45];
      }

      goto LABEL_44;
    case 15:
      v30 = off_100647188;
LABEL_15:
      v31 = [(__objc2_class *)*v30 interactionWithMessageListItems:v47 undoManager:v46 origin:a10 actor:2 reason:4];
LABEL_31:
      v28 = v31;
      goto LABEL_44;
    case 17:
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_36;
      }

      v32 = [v24 messageListForMessageTriageInteractionHelper:self messageListItem:v23];
      if (v32)
      {
        v34 = [MFOpenWindowTriageInteraction interactionWithMessageListItem:v23 origin:a10 actor:2 messageList:v32];
        goto LABEL_35;
      }

      v38 = +[MessageTriageInteractionHelper log];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    case 18:
    case 19:
      v28 = [MFSenderBlockingTriageInteraction interactionWithMessageListItems:v47 undoManager:v46 origin:a10 actor:2 blockSender:a3 == 18];
      [v28 setPresentationSource:v26];
      [v28 setShouldAskForConfirmation:1];
      [v28 setDelegate:v45];
      goto LABEL_44;
    case 20:
      v28 = [MFUnsubscribeTriageInteraction interactionWithReferenceMessageListItems:v47 origin:a10 actor:2];
      [v28 setPresentationSource:v26];
      [v28 setShouldAskForConfirmation:1];
      [v28 setDelegate:v45];
      goto LABEL_44;
    case 22:
      if (objc_opt_respondsToSelector())
      {
        v32 = [v24 messageListForMessageTriageInteractionHelper:self messageListItem:v23];
        if (v32)
        {
          v34 = [MFFilterTriageInteraction interactionWithMessageListItem:v23 origin:a10 actor:2 messageList:v32 delegate:v42];
LABEL_35:
          v28 = v34;
        }

        else
        {
          v38 = +[MessageTriageInteractionHelper log];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
LABEL_40:
            [v23 itemID];
            objc_claimAutoreleasedReturnValue();
            sub_10048AA88();
          }

LABEL_41:

LABEL_42:
          v28 = 0;
        }
      }

      else
      {
LABEL_36:
        v28 = 0;
      }

LABEL_44:

      return v28;
    default:
      goto LABEL_44;
  }
}

- (void)startObservingMailboxes:(id)a3
{
  v8 = a3;
  v4 = [(MessageTriageInteractionHelper *)self mailboxes];
  v5 = [v4 isEqualToArray:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [v8 copy];
    observedMailboxes = self->_observedMailboxes;
    self->_observedMailboxes = v6;

    [(MessageTriageInteractionHelper *)self _startObservingMailboxes];
  }
}

- (id)_queryForObservedMailboxesWithPredicate:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageTriageInteractionHelper *)self observedMailboxes];
  v9 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v8];

  v14[0] = v9;
  v14[1] = v6;
  v10 = [NSArray arrayWithObjects:v14 count:2];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  v12 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v11 sortDescriptors:&__NSArray0__struct queryOptions:0 label:v7];

  return v12;
}

- (id)presentingViewControllerForTriageInteraction:(id)a3
{
  v3 = [(MessageTriageInteractionHelper *)self presentingViewController];

  return v3;
}

- (BOOL)flagStateForFlagChangeTriageInteraction:(id)a3
{
  v5 = a3;
  if (![v5 supportsSelectAll] || !objc_msgSend(v5, "shouldOverrideFlagState"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 messageListItemSelection];
      v9 = [v8 messageListItems];
      v7 = [v9 ef_any:&stru_1006530A0];

      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(MessageTriageInteractionHelper *)self unflaggedCount]> 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = [(MessageTriageInteractionHelper *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MessageTriageInteractionHelper.m" lineNumber:374 description:@"dataSource needs to implement unreadBadgeCountForMessageTriageInteractionHelper:."];
  }

  v7 = [v6 unreadBadgeCountForMessageTriageInteractionHelper:self] == 0;

LABEL_12:
  return v7;
}

- (BOOL)flagStateForTriageAction:(int64_t)a3 messageListItems:(id)a4 isSelectAll:(BOOL)a5 supportsSelectAll:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = a4;
  v12 = v11;
  if (!v7 || !v6)
  {
    if (a3 == 2)
    {
      v15 = [v11 ef_all:&stru_1006530E0];
    }

    else
    {
      if (a3 != 6)
      {
LABEL_11:
        v14 = 0;
        goto LABEL_15;
      }

      v15 = [v11 ef_any:&stru_1006530C0];
    }

    v14 = v15;
    goto LABEL_15;
  }

  if (a3 == 6)
  {
    v14 = [(MessageTriageInteractionHelper *)self unflaggedCount]> 0;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    goto LABEL_11;
  }

  v13 = [(MessageTriageInteractionHelper *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MessageTriageInteractionHelper.m" lineNumber:395 description:@"dataSource needs to implement unreadBadgeCountForMessageTriageInteractionHelper:."];
  }

  v14 = [v13 unreadBadgeCountForMessageTriageInteractionHelper:self] == 0;

LABEL_15:
  return v14;
}

- (id)messageRepositoryForTriageInteraction:(id)a3
{
  v3 = [(MessageTriageInteractionHelper *)self messageRepository];

  return v3;
}

- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5
{
  v9 = a4;
  v7 = [(MessageTriageInteractionHelper *)self unflaggedCountQuery];
  v8 = [v7 isEqual:v9];

  if (v8)
  {
    [(MessageTriageInteractionHelper *)self setUnflaggedCount:a5];
  }
}

- (MessageTriageInteractionHelperDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (MFTriageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end