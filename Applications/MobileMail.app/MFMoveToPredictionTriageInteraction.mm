@interface MFMoveToPredictionTriageInteraction
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor presentationSource:(id)source delegate:(id)delegate presentingViewController:(id)controller predictedMailbox:(id)self0;
+ (id)predictMailboxForMovingMessages:(id)messages;
+ (id)predictMailboxForMovingMessages:(id)messages completionHandler:(id)handler;
+ (id)predictMailboxForMovingMessagesWithIDs:(id)ds;
- (BOOL)hasPrediction;
- (id)_mailboxForObjectID:(id)d;
- (id)alertActionsWithCompletion:(id)completion;
- (id)cardActionsWithCompletion:(id)completion;
- (id)lazyPreviewActionHandler;
- (id)lazyPreviewActions;
- (id)previewActionItemForSwipe:(BOOL)swipe;
- (void)_enumeratePredictionActions:(id)actions;
- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion;
- (void)_presentFollowUpActionSheetWithCompletion:(id)completion;
- (void)_presentTransferUI;
- (void)moveToTargetEMMailbox:(id)mailbox;
@end

@implementation MFMoveToPredictionTriageInteraction

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor presentationSource:(id)source delegate:(id)delegate presentingViewController:(id)controller predictedMailbox:(id)self0
{
  itemsCopy = items;
  sourceCopy = source;
  delegateCopy = delegate;
  controllerCopy = controller;
  mailboxCopy = mailbox;
  v31.receiver = self;
  v31.super_class = &OBJC_METACLASS___MFMoveToPredictionTriageInteraction;
  v21 = objc_msgSendSuper2(&v31, "interactionWithMessageListItems:undoManager:origin:actor:", itemsCopy, manager, origin, actor);
  v22 = v21;
  if (v21)
  {
    [v21 setTransferUIViewController:controllerCopy];
    [v22 setDelegate:delegateCopy];
    [v22 setPresentationSource:sourceCopy];
    if (mailboxCopy)
    {
      [v22 setPrediction:mailboxCopy];
    }

    else
    {
      [v22 setPrediction:0];
      objc_initWeak(&location, v22);
      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_1001FF53C;
      v28 = &unk_1006551A8;
      objc_copyWeak(&v29, &location);
      v23 = [self predictMailboxForMovingMessages:itemsCopy completionHandler:&v25];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    [v22 setCanHavePrediction:{1, v25, v26, v27, v28}];
  }

  return v22;
}

+ (id)predictMailboxForMovingMessages:(id)messages completionHandler:(id)handler
{
  messagesCopy = messages;
  handlerCopy = handler;
  v7 = +[UIApplication sharedApplication];
  daemonInterface = [v7 daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FF704;
  v13[3] = &unk_1006551D0;
  v10 = handlerCopy;
  v14 = v10;
  v11 = [messageRepository predictMailboxForMovingMessages:messagesCopy completionHandler:v13];

  return v11;
}

+ (id)predictMailboxForMovingMessages:(id)messages
{
  messagesCopy = messages;
  v4 = +[EFPromise promise];
  v5 = +[UIApplication sharedApplication];
  daemonInterface = [v5 daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FF9EC;
  v16[3] = &unk_1006551F8;
  v8 = v4;
  v17 = v8;
  v9 = messagesCopy;
  v18 = v9;
  v10 = [messageRepository predictMailboxForMovingMessages:v9 completionHandler:v16];

  future = [v8 future];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FFADC;
  v14[3] = &unk_10064D028;
  v12 = v10;
  v15 = v12;
  [future addFailureBlock:v14];

  return future;
}

+ (id)predictMailboxForMovingMessagesWithIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[EFPromise promise];
  v5 = +[UIApplication sharedApplication];
  daemonInterface = [v5 daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FFD6C;
  v16[3] = &unk_1006551F8;
  v8 = v4;
  v17 = v8;
  v9 = dsCopy;
  v18 = v9;
  v10 = [messageRepository predictMailboxForMovingMessagesWithIDs:v9 completionHandler:v16];

  future = [v8 future];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FFE40;
  v14[3] = &unk_10064D028;
  v12 = v10;
  v15 = v12;
  [future addFailureBlock:v14];

  return future;
}

- (void)moveToTargetEMMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  [(MFMoveMessageTriageInteraction *)self setTargetMailbox:mailboxCopy];
  v5.receiver = self;
  v5.super_class = MFMoveToPredictionTriageInteraction;
  [(MFTriageInteraction *)&v5 _performInteractionAfterPreparation:0 completion:0];
}

- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion
{
  completionCopy = completion;
  if ([(MFMoveToPredictionTriageInteraction *)self hasPrediction])
  {
    [(MFMoveToPredictionTriageInteraction *)self _presentFollowUpActionSheetWithCompletion:completionCopy];
  }

  else
  {
    [(MFMoveToPredictionTriageInteraction *)self _presentTransferUI];
  }
}

- (id)previewActionItemForSwipe:(BOOL)swipe
{
  if (swipe)
  {
    v7.receiver = self;
    v7.super_class = MFMoveToPredictionTriageInteraction;
    v4 = [(MFTriageInteraction *)&v7 previewActionItemForSwipe:1];
  }

  else
  {
    title = [(MFMoveMessageTriageInteraction *)self title];
    v4 = [_MFLazyPreviewActionItem previewActionItemWithTitle:title dataSource:self];
  }

  return v4;
}

- (id)lazyPreviewActions
{
  if (!self->_previewActions)
  {
    if ([(MFMoveToPredictionTriageInteraction *)self hasPrediction])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10020016C;
      v10[3] = &unk_100655248;
      v3 = objc_alloc_init(NSMutableArray);
      v11 = v3;
      [(MFMoveToPredictionTriageInteraction *)self _enumeratePredictionActions:v10];
      previewActions = self->_previewActions;
      self->_previewActions = v3;
      v5 = v3;
    }

    else
    {
      v6 = objc_alloc_init(NSArray);
      v7 = self->_previewActions;
      self->_previewActions = v6;
    }
  }

  v8 = self->_previewActions;

  return v8;
}

- (id)lazyPreviewActionHandler
{
  previewActionHandler = self->_previewActionHandler;
  if (!previewActionHandler)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100200360;
    v8[3] = &unk_100655270;
    objc_copyWeak(&v9, &location);
    v4 = [v8 copy];
    v5 = self->_previewActionHandler;
    self->_previewActionHandler = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    previewActionHandler = self->_previewActionHandler;
  }

  v6 = objc_retainBlock(previewActionHandler);

  return v6;
}

- (id)cardActionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MFMoveToPredictionTriageInteraction *)self hasPrediction])
  {
    v5 = objc_alloc_init(NSMutableArray);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100200650;
    v22[3] = &unk_1006552C0;
    v22[4] = self;
    v24 = completionCopy;
    ef_stringByTrimmingWhitespaceAndNewlineCharacters = v5;
    v23 = ef_stringByTrimmingWhitespaceAndNewlineCharacters;
    [(MFMoveToPredictionTriageInteraction *)self _enumeratePredictionActions:v22];
    v7 = [ef_stringByTrimmingWhitespaceAndNewlineCharacters copy];

    v8 = v24;
  }

  else
  {
    cardTitle = [(MFMoveMessageTriageInteraction *)self cardTitle];
    ef_stringByTrimmingWhitespaceAndNewlineCharacters = [cardTitle ef_stringByTrimmingWhitespaceAndNewlineCharacters];

    _iconImageName = [(MFMoveMessageTriageInteraction *)self _iconImageName];
    _tintColor = [(MFTriageInteraction *)self _tintColor];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100200874;
    v19 = &unk_100653818;
    selfCopy = self;
    v21 = completionCopy;
    v12 = [MFCardAction cardActionWithTitle:ef_stringByTrimmingWhitespaceAndNewlineCharacters shortTitle:0 imageName:_iconImageName tintColor:_tintColor handler:&v16];

    accessibilityIdentifier = [(MFMoveMessageTriageInteraction *)self accessibilityIdentifier];
    [v12 setAccessibilityIdentifier:accessibilityIdentifier];

    v14 = [NSArray alloc];
    v7 = [v14 initWithObjects:{v12, 0, v16, v17, v18, v19}];

    v8 = v21;
  }

  return v7;
}

- (id)alertActionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MFMoveToPredictionTriageInteraction *)self hasPrediction])
  {
    v5 = objc_alloc_init(NSMutableArray);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100200A60;
    v9[3] = &unk_100655310;
    v11 = completionCopy;
    v9[4] = self;
    v6 = v5;
    v10 = v6;
    [(MFMoveToPredictionTriageInteraction *)self _enumeratePredictionActions:v9];
    v7 = [v6 copy];
  }

  else
  {
    v6 = [(MFTriageInteraction *)self alertActionWithCompletion:completionCopy];
    v12 = v6;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
  }

  return v7;
}

- (BOOL)hasPrediction
{
  prediction = [(MFMoveToPredictionTriageInteraction *)self prediction];
  v3 = prediction != 0;

  return v3;
}

- (id)_mailboxForObjectID:(id)d
{
  dCopy = d;
  v4 = +[UIApplication sharedApplication];
  daemonInterface = [v4 daemonInterface];
  mailboxRepository = [daemonInterface mailboxRepository];
  v7 = [mailboxRepository mailboxForObjectID:dCopy];
  result = [v7 result];

  return result;
}

- (void)_enumeratePredictionActions:(id)actions
{
  actionsCopy = actions;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"MOVE_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  v7 = [NSString localizedStringWithFormat:v6, [(MFTriageInteraction *)self messageCount]];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:v7 value:&stru_100662A88 table:@"Main"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100200FC4;
  v17[3] = &unk_10064C7E8;
  v17[4] = self;
  (*(actionsCopy + 2))(actionsCopy, v9, 0, v17);

  prediction = [(MFMoveToPredictionTriageInteraction *)self prediction];
  if (prediction)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"MOVE_TO" value:&stru_100662A88 table:@"Main"];
    name = [prediction name];
    v14 = [NSString stringWithFormat:v12, name];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100200FCC;
    v15[3] = &unk_10064C660;
    v15[4] = self;
    v16 = prediction;
    (*(actionsCopy + 2))(actionsCopy, v14, 1, v15);
  }
}

- (void)_presentTransferUI
{
  v9.receiver = self;
  v9.super_class = MFMoveToPredictionTriageInteraction;
  delegate = [(MFTriageInteraction *)&v9 delegate];
  if ([delegate conformsToProtocol:&OBJC_PROTOCOL___MFMoveToPredictionTriageInteractionDelegate])
  {
    [(MFMoveMessageTriageInteraction *)self setDidPresentTransferUI:1];
    objc_initWeak(&location, self);
    prediction = [(MFMoveToPredictionTriageInteraction *)self prediction];
    transferUIViewController = [(MFMoveToPredictionTriageInteraction *)self transferUIViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100201174;
    v6[3] = &unk_10064C838;
    objc_copyWeak(&v7, &location);
    [delegate presentTransferUIWithMoveInteraction:self prediction:prediction fromViewController:transferUIViewController didDismissHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_presentFollowUpActionSheetWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = &stru_100655350;
  if (completionCopy)
  {
    v5 = completionCopy;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10020147C;
  v17[3] = &unk_100655378;
  v6 = v5;
  v17[4] = self;
  v18 = v6;
  [UIAlertController mf_actionSheetWithTitle:0 cancellationHandler:v17];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100201494;
  v7 = v13[3] = &unk_1006552C0;
  v14 = v7;
  v8 = v6;
  selfCopy = self;
  v16 = v8;
  [(MFMoveToPredictionTriageInteraction *)self _enumeratePredictionActions:v13];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"MFMoveToPredictionTriageInteractionPredictionPresented" object:self];

  delegate = [(MFTriageInteraction *)self delegate];
  v11 = [delegate presentingViewControllerForTriageInteraction:self];

  presentationSource = [(MFTriageInteraction *)self presentationSource];
  [v7 mf_presentFromViewController:v11 withSource:presentationSource];
}

@end