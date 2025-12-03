@interface MessageTriageInteractionHelper
+ (id)log;
- (BOOL)flagStateForFlagChangeTriageInteraction:(id)interaction;
- (BOOL)flagStateForTriageAction:(int64_t)action messageListItems:(id)items isSelectAll:(BOOL)all supportsSelectAll:(BOOL)selectAll;
- (ComposeCapable)scene;
- (EMMessage)primaryMessage;
- (EMMessageListItem)messageListItem;
- (MFTriageInteractionDelegate)delegate;
- (MessageTriageInteractionHelper)initWithDataSource:(id)source triageInteractionDelegate:(id)delegate scene:(id)scene presentingViewController:(id)controller;
- (MessageTriageInteractionHelperDataSource)dataSource;
- (NSArray)allMessagesInConversation;
- (NSArray)mailboxes;
- (NSArray)targetedMessages;
- (id)_queryForObservedMailboxesWithPredicate:(id)predicate label:(id)label;
- (id)archiveOrDeleteTriageInteractionWithPresentationSource:(id)source target:(id)target origin:(int64_t)origin;
- (id)messageRepositoryForTriageInteraction:(id)interaction;
- (id)presentingViewControllerForTriageInteraction:(id)interaction;
- (id)triageInteractionForTriageAction:(int64_t)action withMessageListItems:(id)items presentationSource:(id)source presentingViewController:(id)controller moveInteractionDelegate:(id)delegate filterInteractionDelegate:(id)interactionDelegate forPreview:(BOOL)preview origin:(int64_t)self0;
- (id)triageInteractionForTriageAction:(int64_t)action withMessageListItems:(id)items presentationSource:(id)source presentingViewController:(id)controller moveInteractionDelegate:(id)delegate forPreview:(BOOL)preview origin:(int64_t)origin;
- (id)undoManager;
- (int64_t)targetPreference;
- (void)_startObservingMailboxes;
- (void)didLongPressTrashButtonWithPresentationSource:(id)source presentFromViewController:(id)controller target:(id)target completion:(id)completion;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)startObservingMailboxes:(id)mailboxes;
@end

@implementation MessageTriageInteractionHelper

- (NSArray)mailboxes
{
  target = [(MessageTriageInteractionHelper *)self target];
  messageListItem = [target messageListItem];
  mailboxes = [messageListItem mailboxes];

  return mailboxes;
}

- (void)_startObservingMailboxes
{
  observedMailboxes = [(MessageTriageInteractionHelper *)self observedMailboxes];
  v3 = [observedMailboxes count];

  if (v3)
  {
    unflaggedCountObserver = [(MessageTriageInteractionHelper *)self unflaggedCountObserver];

    if (unflaggedCountObserver)
    {
      unflaggedCountObserver2 = [(MessageTriageInteractionHelper *)self unflaggedCountObserver];
      [unflaggedCountObserver2 cancel];

      [(MessageTriageInteractionHelper *)self setUnflaggedCountObserver:0];
    }

    v11 = +[EMMessageListItemPredicates predicateForUnflaggedMessages];
    v5 = [MessageTriageInteractionHelper _queryForObservedMailboxesWithPredicate:"_queryForObservedMailboxesWithPredicate:label:" label:?];
    unflaggedCountQuery = self->_unflaggedCountQuery;
    self->_unflaggedCountQuery = v5;

    messageRepository = [(MessageTriageInteractionHelper *)self messageRepository];
    v7 = [messageRepository startCountingQuery:self->_unflaggedCountQuery includingServerCountsForMailboxScope:0 withObserver:self];
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
  block[4] = self;
  if (qword_1006DD398 != -1)
  {
    dispatch_once(&qword_1006DD398, block);
  }

  v2 = qword_1006DD390;

  return v2;
}

- (MessageTriageInteractionHelper)initWithDataSource:(id)source triageInteractionDelegate:(id)delegate scene:(id)scene presentingViewController:(id)controller
{
  sourceCopy = source;
  delegateCopy = delegate;
  sceneCopy = scene;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = MessageTriageInteractionHelper;
  v14 = [(MessageTriageInteractionHelper *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_dataSource, sourceCopy);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeWeak(&v15->_scene, sceneCopy);
    objc_storeStrong(&v15->_presentingViewController, controller);
    daemonInterface = [sceneCopy daemonInterface];
    messageRepository = [daemonInterface messageRepository];
    messageRepository = v15->_messageRepository;
    v15->_messageRepository = messageRepository;
  }

  return v15;
}

- (EMMessage)primaryMessage
{
  target = [(MessageTriageInteractionHelper *)self target];
  primaryMessage = [target primaryMessage];

  return primaryMessage;
}

- (EMMessageListItem)messageListItem
{
  target = [(MessageTriageInteractionHelper *)self target];
  messageListItem = [target messageListItem];

  return messageListItem;
}

- (NSArray)targetedMessages
{
  if ([(MessageTriageInteractionHelper *)self targetPreference]== 1)
  {
    messageListItem = [(MessageTriageInteractionHelper *)self messageListItem];
    v11 = messageListItem;
    v4 = [NSArray arrayWithObjects:&v11 count:1];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  primaryMessage = [(MessageTriageInteractionHelper *)self primaryMessage];
  messageListItem = primaryMessage;
  if (primaryMessage)
  {
    v10 = primaryMessage;
    v4 = [NSArray arrayWithObjects:&v10 count:1];
    goto LABEL_5;
  }

  messageListItem2 = [(MessageTriageInteractionHelper *)self messageListItem];
  v9 = messageListItem2;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

LABEL_6:

  return v6;
}

- (NSArray)allMessagesInConversation
{
  if ([(MessageTriageInteractionHelper *)self targetPreference])
  {
    messageListItem = [(MessageTriageInteractionHelper *)self messageListItem];
    v6 = messageListItem;
    targetedMessages = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    targetedMessages = [(MessageTriageInteractionHelper *)self targetedMessages];
  }

  return targetedMessages;
}

- (int64_t)targetPreference
{
  target = [(MessageTriageInteractionHelper *)self target];
  targetPreference = [target targetPreference];

  return targetPreference;
}

- (id)undoManager
{
  scene = [(MessageTriageInteractionHelper *)self scene];
  undoManager = [scene undoManager];

  return undoManager;
}

- (void)didLongPressTrashButtonWithPresentationSource:(id)source presentFromViewController:(id)controller target:(id)target completion:(id)completion
{
  sourceCopy = source;
  controllerCopy = controller;
  completionCopy = completion;
  [(MessageTriageInteractionHelper *)self setTarget:target];
  primaryMessage = [(MessageTriageInteractionHelper *)self primaryMessage];
  if (primaryMessage)
  {
    v45 = controllerCopy;
    v46 = sourceCopy;
    v48 = completionCopy;
    v44 = primaryMessage;
    messageListItem = [(MessageTriageInteractionHelper *)self messageListItem];
    v14 = [messageListItem count];
    v15 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"ARCHIVE_EMAIL" value:&stru_100662A88 table:@"Main"];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10019E9C8;
    v61[3] = &unk_100653058;
    v61[4] = self;
    v18 = primaryMessage;
    v62 = v18;
    v19 = sourceCopy;
    v63 = v19;
    v20 = controllerCopy;
    v64 = v20;
    v21 = v48;
    v65 = v21;
    v49 = [UIAlertAction actionWithTitle:v17 style:0 handler:v61];

    mailboxes = [(MessageTriageInteractionHelper *)self mailboxes];
    LODWORD(v16) = [EMMailbox deleteMovesToTrashForMailboxes:mailboxes];

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
        allMessagesInConversation = [(MessageTriageInteractionHelper *)self allMessagesInConversation];
        v31 = [(MessageTriageInteractionHelper *)self triageInteractionForTriageAction:9 withMessageListItems:allMessagesInConversation presentationSource:v25 presentingViewController:v26 moveInteractionDelegate:0 forPreview:0 origin:3];

        title = [v31 title];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10019EB90;
        v53[3] = &unk_100650800;
        v33 = v31;
        v54 = v33;
        v55 = v27;
        v34 = [UIAlertAction actionWithTitle:title style:0 handler:v53];
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
        allMessagesInConversation2 = [(MessageTriageInteractionHelper *)self allMessagesInConversation];
        v38 = [(MessageTriageInteractionHelper *)self triageInteractionForTriageAction:8 withMessageListItems:allMessagesInConversation2 presentationSource:v25 presentingViewController:v26 moveInteractionDelegate:0 forPreview:0 origin:3];

        title = [v38 title];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10019EB9C;
        v50[3] = &unk_100650800;
        v33 = v38;
        v51 = v33;
        v52 = v27;
        v34 = [UIAlertAction actionWithTitle:title style:2 handler:v50];
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

    popoverPresentationController = [v15 popoverPresentationController];
    [popoverPresentationController setSourceItem:v25];

    [v26 presentViewController:v15 animated:1 completion:0];
    controllerCopy = v45;
    sourceCopy = v46;
    completionCopy = v48;
    primaryMessage = v44;
  }
}

- (id)archiveOrDeleteTriageInteractionWithPresentationSource:(id)source target:(id)target origin:(int64_t)origin
{
  sourceCopy = source;
  [(MessageTriageInteractionHelper *)self setTarget:target];
  primaryMessage = [(MessageTriageInteractionHelper *)self primaryMessage];
  v10 = primaryMessage;
  if (primaryMessage)
  {
    shouldArchiveByDefault = [primaryMessage shouldArchiveByDefault];
    undoManager = [(MessageTriageInteractionHelper *)self undoManager];
    delegate = [(MessageTriageInteractionHelper *)self delegate];
    if (shouldArchiveByDefault)
    {
      v19 = v10;
      v14 = [NSArray arrayWithObjects:&v19 count:1];
      v15 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItems:v14 undoManager:undoManager origin:origin actor:2];
    }

    else
    {
      v18 = v10;
      v14 = [NSArray arrayWithObjects:&v18 count:1];
      v15 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItems:v14 undoManager:undoManager origin:origin actor:2];
    }

    v16 = v15;

    [v16 setDelegate:delegate];
    [v16 setPresentationSource:sourceCopy];
    [v16 setType:0];
    [v16 setShouldAskForConfirmation:1];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)triageInteractionForTriageAction:(int64_t)action withMessageListItems:(id)items presentationSource:(id)source presentingViewController:(id)controller moveInteractionDelegate:(id)delegate forPreview:(BOOL)preview origin:(int64_t)origin
{
  LOBYTE(v11) = preview;
  v9 = [(MessageTriageInteractionHelper *)self triageInteractionForTriageAction:action withMessageListItems:items presentationSource:source presentingViewController:controller moveInteractionDelegate:delegate filterInteractionDelegate:0 forPreview:v11 origin:origin];

  return v9;
}

- (id)triageInteractionForTriageAction:(int64_t)action withMessageListItems:(id)items presentationSource:(id)source presentingViewController:(id)controller moveInteractionDelegate:(id)delegate filterInteractionDelegate:(id)interactionDelegate forPreview:(BOOL)preview origin:(int64_t)self0
{
  itemsCopy = items;
  sourceCopy = source;
  controllerCopy = controller;
  delegateCopy = delegate;
  interactionDelegateCopy = interactionDelegate;
  v47 = itemsCopy;
  firstObject = [itemsCopy firstObject];
  if (action == 16)
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
      action = 8;
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
      action = 9;
    }
  }

  scene = [(MessageTriageInteractionHelper *)self scene];
  dataSource = [(MessageTriageInteractionHelper *)self dataSource];
  delegate = [(MessageTriageInteractionHelper *)self delegate];
  undoManager = [(MessageTriageInteractionHelper *)self undoManager];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10019F5C8;
  v48[3] = &unk_100653080;
  v23 = firstObject;
  v49 = v23;
  v24 = dataSource;
  v50 = v24;
  selfCopy = self;
  v25 = scene;
  v52 = v25;
  v26 = sourceCopy;
  v53 = v26;
  previewCopy = preview;
  v27 = objc_retainBlock(v48);
  v28 = 0;
  v29 = off_100647178;
  v30 = off_100647190;
  switch(action)
  {
    case 2:
      goto LABEL_15;
    case 6:
      v28 = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItems:v47 undoManager:undoManager origin:origin actor:2 reason:4];
      [v28 setDelegate:self];
      goto LABEL_44;
    case 7:
      v31 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v47 undoManager:undoManager origin:origin actor:2 presentationSource:v26 delegate:delegateCopy presentingViewController:controllerCopy predictedMailbox:0];
      goto LABEL_31;
    case 8:
      goto LABEL_26;
    case 9:
      v29 = off_100647170;
LABEL_26:
      v31 = [(__objc2_class *)*v29 interactionWithMessageListItems:v47 undoManager:undoManager origin:origin actor:2];
      goto LABEL_31;
    case 10:
      v32 = [(MFConversationFlagTriageInteraction *)MFNotifyTriageInteraction interactionWithMessageListItems:v47 undoManager:undoManager origin:origin actor:2];
      isPermitted = [v32 isPermitted];
      goto LABEL_23;
    case 11:
      v32 = [(MFConversationFlagTriageInteraction *)MFMuteTriageInteraction interactionWithMessageListItems:v47 undoManager:undoManager origin:origin actor:2];
      isPermitted = [v32 isPermitted];
LABEL_23:
      if ((isPermitted & 1) == 0)
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
        [v28 setDelegate:delegate];
      }

      goto LABEL_44;
    case 15:
      v30 = off_100647188;
LABEL_15:
      v31 = [(__objc2_class *)*v30 interactionWithMessageListItems:v47 undoManager:undoManager origin:origin actor:2 reason:4];
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
        v34 = [MFOpenWindowTriageInteraction interactionWithMessageListItem:v23 origin:origin actor:2 messageList:v32];
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
      v28 = [MFSenderBlockingTriageInteraction interactionWithMessageListItems:v47 undoManager:undoManager origin:origin actor:2 blockSender:action == 18];
      [v28 setPresentationSource:v26];
      [v28 setShouldAskForConfirmation:1];
      [v28 setDelegate:delegate];
      goto LABEL_44;
    case 20:
      v28 = [MFUnsubscribeTriageInteraction interactionWithReferenceMessageListItems:v47 origin:origin actor:2];
      [v28 setPresentationSource:v26];
      [v28 setShouldAskForConfirmation:1];
      [v28 setDelegate:delegate];
      goto LABEL_44;
    case 22:
      if (objc_opt_respondsToSelector())
      {
        v32 = [v24 messageListForMessageTriageInteractionHelper:self messageListItem:v23];
        if (v32)
        {
          v34 = [MFFilterTriageInteraction interactionWithMessageListItem:v23 origin:origin actor:2 messageList:v32 delegate:interactionDelegateCopy];
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

- (void)startObservingMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  mailboxes = [(MessageTriageInteractionHelper *)self mailboxes];
  v5 = [mailboxes isEqualToArray:mailboxesCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [mailboxesCopy copy];
    observedMailboxes = self->_observedMailboxes;
    self->_observedMailboxes = v6;

    [(MessageTriageInteractionHelper *)self _startObservingMailboxes];
  }
}

- (id)_queryForObservedMailboxesWithPredicate:(id)predicate label:(id)label
{
  predicateCopy = predicate;
  labelCopy = label;
  observedMailboxes = [(MessageTriageInteractionHelper *)self observedMailboxes];
  v9 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:observedMailboxes];

  v14[0] = v9;
  v14[1] = predicateCopy;
  v10 = [NSArray arrayWithObjects:v14 count:2];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  v12 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v11 sortDescriptors:&__NSArray0__struct queryOptions:0 label:labelCopy];

  return v12;
}

- (id)presentingViewControllerForTriageInteraction:(id)interaction
{
  presentingViewController = [(MessageTriageInteractionHelper *)self presentingViewController];

  return presentingViewController;
}

- (BOOL)flagStateForFlagChangeTriageInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (![interactionCopy supportsSelectAll] || !objc_msgSend(interactionCopy, "shouldOverrideFlagState"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      messageListItemSelection = [interactionCopy messageListItemSelection];
      messageListItems = [messageListItemSelection messageListItems];
      v7 = [messageListItems ef_any:&stru_1006530A0];

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

  dataSource = [(MessageTriageInteractionHelper *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MessageTriageInteractionHelper.m" lineNumber:374 description:@"dataSource needs to implement unreadBadgeCountForMessageTriageInteractionHelper:."];
  }

  v7 = [dataSource unreadBadgeCountForMessageTriageInteractionHelper:self] == 0;

LABEL_12:
  return v7;
}

- (BOOL)flagStateForTriageAction:(int64_t)action messageListItems:(id)items isSelectAll:(BOOL)all supportsSelectAll:(BOOL)selectAll
{
  selectAllCopy = selectAll;
  allCopy = all;
  itemsCopy = items;
  v12 = itemsCopy;
  if (!allCopy || !selectAllCopy)
  {
    if (action == 2)
    {
      v15 = [itemsCopy ef_all:&stru_1006530E0];
    }

    else
    {
      if (action != 6)
      {
LABEL_11:
        v14 = 0;
        goto LABEL_15;
      }

      v15 = [itemsCopy ef_any:&stru_1006530C0];
    }

    v14 = v15;
    goto LABEL_15;
  }

  if (action == 6)
  {
    v14 = [(MessageTriageInteractionHelper *)self unflaggedCount]> 0;
    goto LABEL_15;
  }

  if (action != 2)
  {
    goto LABEL_11;
  }

  dataSource = [(MessageTriageInteractionHelper *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MessageTriageInteractionHelper.m" lineNumber:395 description:@"dataSource needs to implement unreadBadgeCountForMessageTriageInteractionHelper:."];
  }

  v14 = [dataSource unreadBadgeCountForMessageTriageInteractionHelper:self] == 0;

LABEL_15:
  return v14;
}

- (id)messageRepositoryForTriageInteraction:(id)interaction
{
  messageRepository = [(MessageTriageInteractionHelper *)self messageRepository];

  return messageRepository;
}

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  queryCopy = query;
  unflaggedCountQuery = [(MessageTriageInteractionHelper *)self unflaggedCountQuery];
  v8 = [unflaggedCountQuery isEqual:queryCopy];

  if (v8)
  {
    [(MessageTriageInteractionHelper *)self setUnflaggedCount:change];
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