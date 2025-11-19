@interface MFMoveToPredictionTriageInteraction
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 presentationSource:(id)a7 delegate:(id)a8 presentingViewController:(id)a9 predictedMailbox:(id)a10;
+ (id)predictMailboxForMovingMessages:(id)a3;
+ (id)predictMailboxForMovingMessages:(id)a3 completionHandler:(id)a4;
+ (id)predictMailboxForMovingMessagesWithIDs:(id)a3;
- (BOOL)hasPrediction;
- (id)_mailboxForObjectID:(id)a3;
- (id)alertActionsWithCompletion:(id)a3;
- (id)cardActionsWithCompletion:(id)a3;
- (id)lazyPreviewActionHandler;
- (id)lazyPreviewActions;
- (id)previewActionItemForSwipe:(BOOL)a3;
- (void)_enumeratePredictionActions:(id)a3;
- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4;
- (void)_presentFollowUpActionSheetWithCompletion:(id)a3;
- (void)_presentTransferUI;
- (void)moveToTargetEMMailbox:(id)a3;
@end

@implementation MFMoveToPredictionTriageInteraction

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 presentationSource:(id)a7 delegate:(id)a8 presentingViewController:(id)a9 predictedMailbox:(id)a10
{
  v16 = a3;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v31.receiver = a1;
  v31.super_class = &OBJC_METACLASS___MFMoveToPredictionTriageInteraction;
  v21 = objc_msgSendSuper2(&v31, "interactionWithMessageListItems:undoManager:origin:actor:", v16, a4, a5, a6);
  v22 = v21;
  if (v21)
  {
    [v21 setTransferUIViewController:v19];
    [v22 setDelegate:v18];
    [v22 setPresentationSource:v17];
    if (v20)
    {
      [v22 setPrediction:v20];
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
      v23 = [a1 predictMailboxForMovingMessages:v16 completionHandler:&v25];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    [v22 setCanHavePrediction:{1, v25, v26, v27, v28}];
  }

  return v22;
}

+ (id)predictMailboxForMovingMessages:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 daemonInterface];
  v9 = [v8 messageRepository];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FF704;
  v13[3] = &unk_1006551D0;
  v10 = v6;
  v14 = v10;
  v11 = [v9 predictMailboxForMovingMessages:v5 completionHandler:v13];

  return v11;
}

+ (id)predictMailboxForMovingMessages:(id)a3
{
  v3 = a3;
  v4 = +[EFPromise promise];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 daemonInterface];
  v7 = [v6 messageRepository];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FF9EC;
  v16[3] = &unk_1006551F8;
  v8 = v4;
  v17 = v8;
  v9 = v3;
  v18 = v9;
  v10 = [v7 predictMailboxForMovingMessages:v9 completionHandler:v16];

  v11 = [v8 future];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FFADC;
  v14[3] = &unk_10064D028;
  v12 = v10;
  v15 = v12;
  [v11 addFailureBlock:v14];

  return v11;
}

+ (id)predictMailboxForMovingMessagesWithIDs:(id)a3
{
  v3 = a3;
  v4 = +[EFPromise promise];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 daemonInterface];
  v7 = [v6 messageRepository];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FFD6C;
  v16[3] = &unk_1006551F8;
  v8 = v4;
  v17 = v8;
  v9 = v3;
  v18 = v9;
  v10 = [v7 predictMailboxForMovingMessagesWithIDs:v9 completionHandler:v16];

  v11 = [v8 future];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FFE40;
  v14[3] = &unk_10064D028;
  v12 = v10;
  v15 = v12;
  [v11 addFailureBlock:v14];

  return v11;
}

- (void)moveToTargetEMMailbox:(id)a3
{
  v4 = a3;
  [(MFMoveMessageTriageInteraction *)self setTargetMailbox:v4];
  v5.receiver = self;
  v5.super_class = MFMoveToPredictionTriageInteraction;
  [(MFTriageInteraction *)&v5 _performInteractionAfterPreparation:0 completion:0];
}

- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4
{
  v5 = a4;
  if ([(MFMoveToPredictionTriageInteraction *)self hasPrediction])
  {
    [(MFMoveToPredictionTriageInteraction *)self _presentFollowUpActionSheetWithCompletion:v5];
  }

  else
  {
    [(MFMoveToPredictionTriageInteraction *)self _presentTransferUI];
  }
}

- (id)previewActionItemForSwipe:(BOOL)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = MFMoveToPredictionTriageInteraction;
    v4 = [(MFTriageInteraction *)&v7 previewActionItemForSwipe:1];
  }

  else
  {
    v5 = [(MFMoveMessageTriageInteraction *)self title];
    v4 = [_MFLazyPreviewActionItem previewActionItemWithTitle:v5 dataSource:self];
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

- (id)cardActionsWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MFMoveToPredictionTriageInteraction *)self hasPrediction])
  {
    v5 = objc_alloc_init(NSMutableArray);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100200650;
    v22[3] = &unk_1006552C0;
    v22[4] = self;
    v24 = v4;
    v6 = v5;
    v23 = v6;
    [(MFMoveToPredictionTriageInteraction *)self _enumeratePredictionActions:v22];
    v7 = [v6 copy];

    v8 = v24;
  }

  else
  {
    v9 = [(MFMoveMessageTriageInteraction *)self cardTitle];
    v6 = [v9 ef_stringByTrimmingWhitespaceAndNewlineCharacters];

    v10 = [(MFMoveMessageTriageInteraction *)self _iconImageName];
    v11 = [(MFTriageInteraction *)self _tintColor];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100200874;
    v19 = &unk_100653818;
    v20 = self;
    v21 = v4;
    v12 = [MFCardAction cardActionWithTitle:v6 shortTitle:0 imageName:v10 tintColor:v11 handler:&v16];

    v13 = [(MFMoveMessageTriageInteraction *)self accessibilityIdentifier];
    [v12 setAccessibilityIdentifier:v13];

    v14 = [NSArray alloc];
    v7 = [v14 initWithObjects:{v12, 0, v16, v17, v18, v19}];

    v8 = v21;
  }

  return v7;
}

- (id)alertActionsWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MFMoveToPredictionTriageInteraction *)self hasPrediction])
  {
    v5 = objc_alloc_init(NSMutableArray);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100200A60;
    v9[3] = &unk_100655310;
    v11 = v4;
    v9[4] = self;
    v6 = v5;
    v10 = v6;
    [(MFMoveToPredictionTriageInteraction *)self _enumeratePredictionActions:v9];
    v7 = [v6 copy];
  }

  else
  {
    v6 = [(MFTriageInteraction *)self alertActionWithCompletion:v4];
    v12 = v6;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
  }

  return v7;
}

- (BOOL)hasPrediction
{
  v2 = [(MFMoveToPredictionTriageInteraction *)self prediction];
  v3 = v2 != 0;

  return v3;
}

- (id)_mailboxForObjectID:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 daemonInterface];
  v6 = [v5 mailboxRepository];
  v7 = [v6 mailboxForObjectID:v3];
  v8 = [v7 result];

  return v8;
}

- (void)_enumeratePredictionActions:(id)a3
{
  v4 = a3;
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
  (*(v4 + 2))(v4, v9, 0, v17);

  v10 = [(MFMoveToPredictionTriageInteraction *)self prediction];
  if (v10)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"MOVE_TO" value:&stru_100662A88 table:@"Main"];
    v13 = [v10 name];
    v14 = [NSString stringWithFormat:v12, v13];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100200FCC;
    v15[3] = &unk_10064C660;
    v15[4] = self;
    v16 = v10;
    (*(v4 + 2))(v4, v14, 1, v15);
  }
}

- (void)_presentTransferUI
{
  v9.receiver = self;
  v9.super_class = MFMoveToPredictionTriageInteraction;
  v3 = [(MFTriageInteraction *)&v9 delegate];
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___MFMoveToPredictionTriageInteractionDelegate])
  {
    [(MFMoveMessageTriageInteraction *)self setDidPresentTransferUI:1];
    objc_initWeak(&location, self);
    v4 = [(MFMoveToPredictionTriageInteraction *)self prediction];
    v5 = [(MFMoveToPredictionTriageInteraction *)self transferUIViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100201174;
    v6[3] = &unk_10064C838;
    objc_copyWeak(&v7, &location);
    [v3 presentTransferUIWithMoveInteraction:self prediction:v4 fromViewController:v5 didDismissHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_presentFollowUpActionSheetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = &stru_100655350;
  if (v4)
  {
    v5 = v4;
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
  v15 = self;
  v16 = v8;
  [(MFMoveToPredictionTriageInteraction *)self _enumeratePredictionActions:v13];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"MFMoveToPredictionTriageInteractionPredictionPresented" object:self];

  v10 = [(MFTriageInteraction *)self delegate];
  v11 = [v10 presentingViewControllerForTriageInteraction:self];

  v12 = [(MFTriageInteraction *)self presentationSource];
  [v7 mf_presentFromViewController:v11 withSource:v12];
}

@end