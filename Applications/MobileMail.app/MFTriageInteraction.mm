@interface MFTriageInteraction
+ (MFTriageInteraction)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
+ (MFTriageInteraction)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 query:(id)a7;
+ (MFTriageInteraction)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
+ (MFTriageInteraction)interactionWithQuery:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
- (BOOL)isSelectAll;
- (BOOL)shouldOverrideFlagState;
- (MFTriageInteraction)init;
- (MFTriageInteraction)initWithQuery:(id)a3;
- (MFTriageInteractionDelegate)delegate;
- (UIImage)previewImage;
- (UIImage)swipeActionIcon;
- (id)_cardActionWithTitle:(id)a3 shortTitle:(id)a4 preparation:(id)a5 completion:(id)a6;
- (id)_fillIconImageName;
- (id)_icon;
- (id)alertActionWithCompletion:(id)a3;
- (id)cardActionWithCompletion:(id)a3;
- (id)cardActionWithPreparation:(id)a3 completion:(id)a4;
- (id)menuActionWithCompletion:(id)a3;
- (id)menuActionWithPreparation:(id)a3 completion:(id)a4;
- (id)messageRepositoryForTriageAction:(id)a3;
- (id)previewActionItemForSwipe:(BOOL)a3;
- (id)swipeActionWithPreparation:(id)a3 completion:(id)a4;
- (int64_t)messageCount;
- (void)_dispatchInteractionWithCompletion:(id)a3;
- (void)_performAsynchronousInteractionBoilerplateWithBlock:(id)a3 completion:(id)a4;
- (void)_performContinuation:(id)a3 withAlertController:(id)a4 title:(id)a5 shouldDismissPresentingViewController:(BOOL)a6;
- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4;
- (void)_performInteractionBoilerplateWithBlock:(id)a3 completion:(id)a4;
- (void)_performInteractionIfPermittedWithContinuation:(id)a3;
- (void)_presentConfirmationSheet:(id)a3;
@end

@implementation MFTriageInteraction

+ (MFTriageInteraction)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 query:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = v15;
  if (v13 && v15)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"MFTriageInteraction.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"!(query && selection)"}];
  }

  v17 = [[a1 alloc] initWithQuery:v16];
  [v17 setMessageListItemSelection:v13];
  [v17 setUndoManager:v14];
  [v17 setOrigin:a5];
  [v17 setActor:a6];

  return v17;
}

+ (MFTriageInteraction)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v6 = [a1 interactionWithMessageListItemSelection:a3 undoManager:a4 origin:a5 actor:a6 query:0];

  return v6;
}

+ (MFTriageInteraction)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  if (![v11 count])
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"MFTriageInteraction.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"messageListItems.count"}];
  }

  v13 = [[MSMessageListItemSelection alloc] initWithMessageListItems:v11];
  v14 = [a1 interactionWithMessageListItemSelection:v13 undoManager:v12 origin:a5 actor:a6];

  return v14;
}

+ (MFTriageInteraction)interactionWithQuery:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v6 = [a1 interactionWithMessageListItemSelection:0 undoManager:a4 origin:a5 actor:a6 query:a3];

  return v6;
}

- (MFTriageInteraction)init
{
  v3.receiver = self;
  v3.super_class = MFTriageInteraction;
  result = [(MFTriageInteraction *)&v3 init];
  if (result)
  {
    *&result->_includeTitleInMenuAction = 257;
  }

  return result;
}

- (MFTriageInteraction)initWithQuery:(id)a3
{
  v5 = a3;
  v6 = [(MFTriageInteraction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, a3);
  }

  return v7;
}

- (void)_performInteractionBoilerplateWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10022C3A0;
    v9[3] = &unk_100655EE8;
    v10 = v6;
    v8 = objc_retainBlock(v9);
  }

  else
  {
    v8 = 0;
  }

  [(MFTriageInteraction *)self _performAsynchronousInteractionBoilerplateWithBlock:v8 completion:v7];
}

- (void)_performAsynchronousInteractionBoilerplateWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10022C5BC;
  v13[3] = &unk_10064D9D8;
  v13[4] = self;
  v14 = v6 != 0;
  v8 = objc_retainBlock(v13);
  v9 = v8;
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10022C64C;
    v10[3] = &unk_100655F10;
    v11 = v8;
    v12 = v7;
    v10[4] = self;
    v6[2](v6, v10);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, self, 0);
  }

  if (![(MFTriageInteraction *)self shouldDelayContextualActionHandlerCompletion])
  {
    v9[2](v9);
  }
}

- (void)_dispatchInteractionWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MFTriageInteraction *)self triageAction];
  v5 = [(MFTriageInteraction *)self undoManager];
  v6 = [(MFTriageInteraction *)self undoTitle];
  [v4 performWithUndoManager:v5 actionName:v6 completion:v7];
}

- (void)_performContinuation:(id)a3 withAlertController:(id)a4 title:(id)a5 shouldDismissPresentingViewController:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10022C9AC;
  v25[3] = &unk_1006507D8;
  v12 = v10;
  v26 = v12;
  v13 = [UIAlertController mf_actionSheetWithTitle:a5 cancellationHandler:v25];
  v14 = [(MFTriageInteraction *)self _preferredAlertActionStyle];
  v15 = [(MFTriageInteraction *)self title];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10022C9C0;
  v21 = &unk_100655F38;
  v16 = v12;
  v24 = a6;
  v22 = self;
  v23 = v16;
  v17 = [UIAlertAction actionWithTitle:v15 style:v14 handler:&v18];
  [v13 addAction:{v17, v18, v19, v20, v21}];

  v11[2](v11, v13);
}

- (void)_performInteractionIfPermittedWithContinuation:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10022CAEC;
  v3[3] = &unk_100655F60;
  v3[4] = self;
  [(MFTriageInteraction *)self _performContinuation:a3 withAlertController:v3];
}

- (void)_presentConfirmationSheet:(id)a3
{
  v10 = a3;
  v5 = [(MFTriageInteraction *)self presentationSource];

  if (!v5)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFTriageInteraction.m" lineNumber:169 description:@"Presenting a triage interaction confirmation prompt requires a presentationSource."];
  }

  v6 = [(MFTriageInteraction *)self delegate];
  v7 = [v6 presentingViewControllerForTriageInteraction:self];

  v8 = [(MFTriageInteraction *)self presentationSource];
  [v10 mf_presentFromViewController:v7 withSource:v8];
}

- (id)_icon
{
  v2 = [(MFTriageInteraction *)self _fillIconImageName];
  if (v2)
  {
    v3 = [UIImage mf_systemImageNamed:v2 textStyle:UIFontTextStyleSubheadline scale:2 weight:7];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)swipeActionIcon
{
  v2 = [(MFTriageInteraction *)self _fillIconImageName];
  if (v2)
  {
    v3 = [UIImage systemImageNamed:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)previewImage
{
  v2 = [(MFTriageInteraction *)self _previewImageName];
  if (v2)
  {
    v3 = [UIImage systemImageNamed:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_fillIconImageName
{
  v2 = [(MFTriageInteraction *)self _iconImageName];
  v3 = v2;
  if (v2 && [v2 rangeOfString:@".fill"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [NSString stringWithFormat:@"%@.fill", v3];

    v3 = v4;
  }

  return v3;
}

- (BOOL)isSelectAll
{
  if (![(MFTriageInteraction *)self supportsSelectAll])
  {
    return 0;
  }

  v3 = [(MFTriageInteraction *)self messageListItemSelection];
  v4 = [v3 isSelectAll];

  return v4;
}

- (int64_t)messageCount
{
  v2 = [(MFTriageInteraction *)self messageListItemSelection];
  v3 = [v2 messageListItems];
  v4 = [v3 em_messageListItemTotalCount];

  return v4;
}

- (BOOL)shouldOverrideFlagState
{
  if ([(MFTriageInteraction *)self isSelectAll])
  {
    return 1;
  }

  v4 = [(MFTriageInteraction *)self messageListItemSelection];
  if ([v4 isActingOnSender])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(MFTriageInteraction *)self query];
    v3 = v5 != 0;
  }

  return v3;
}

- (id)alertActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MFTriageInteraction *)self _preferredAlertActionStyle];
  v6 = [(MFTriageInteraction *)self alertTitle];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10022D148;
  v10[3] = &unk_100650800;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v8 = [UIAlertAction actionWithTitle:v6 style:v5 handler:v10];

  return v8;
}

- (id)swipeActionWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFTriageInteraction *)self swipeTitle];
  v9 = [(MFTriageInteraction *)self swipeActionIcon];
  v10 = [(MFTriageInteraction *)self _swipeColor];
  v11 = [(MFTriageInteraction *)self isDestructive];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10022D380;
  v19[3] = &unk_100655F88;
  v19[4] = self;
  v12 = v6;
  v20 = v12;
  v13 = v7;
  v21 = v13;
  v14 = objc_retainBlock(v19);
  v15 = [UIContextualAction contextualActionWithStyle:v11 title:v8 handler:v14];
  v16 = +[UIColor whiteColor];
  v17 = [v9 imageWithTintColor:v16 renderingMode:1];
  [v15 setImage:v17];

  [v15 setBackgroundColor:v10];

  return v15;
}

- (id)menuActionWithCompletion:(id)a3
{
  v3 = [(MFTriageInteraction *)self menuActionWithPreparation:0 completion:a3];

  return v3;
}

- (id)menuActionWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MFTriageInteraction *)self includeTitleInMenuAction])
  {
    v8 = [(MFTriageInteraction *)self previewTitle];
  }

  else
  {
    v8 = &stru_100662A88;
  }

  v9 = [(MFTriageInteraction *)self previewImage];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10022D68C;
  v18[3] = &unk_100653760;
  v18[4] = self;
  v10 = v6;
  v19 = v10;
  v11 = v7;
  v20 = v11;
  v12 = [UIAction actionWithTitle:v8 image:v9 identifier:0 handler:v18];

  if ([(MFTriageInteraction *)self isDestructive])
  {
    [v12 setAttributes:2];
  }

  v13 = [(MFTriageInteraction *)self query];
  if (v13 || [(MFTriageInteraction *)self isSelectAll])
  {
  }

  else
  {
    v15 = [(MFTriageInteraction *)self messageListItemSelection];
    v16 = [v15 messageListItems];
    v17 = [v16 count];

    if (!v17)
    {
      [v12 setAttributes:{objc_msgSend(v12, "attributes") | 1}];
    }
  }

  return v12;
}

- (id)previewActionItemForSwipe:(BOOL)a3
{
  if (a3)
  {
    v4 = [(MFTriageInteraction *)self _icon];
    v5 = [(MFTriageInteraction *)self color];
    v6 = [(MFTriageInteraction *)self shortTitle];
  }

  else
  {
    v6 = [(MFTriageInteraction *)self title];
    v5 = 0;
    v4 = 0;
  }

  if ([(MFTriageInteraction *)self isDestructive])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10022D860;
  v10[3] = &unk_100655FB0;
  v10[4] = self;
  v8 = [UIPreviewAction _actionWithTitle:v6 style:v7 color:v5 image:v4 handler:v10];

  return v8;
}

- (id)cardActionWithCompletion:(id)a3
{
  v3 = [(MFTriageInteraction *)self cardActionWithPreparation:0 completion:a3];

  return v3;
}

- (id)cardActionWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFTriageInteraction *)self cardTitle];
  v9 = [(MFTriageInteraction *)self cardShortTitle];
  v10 = [(MFTriageInteraction *)self _cardActionWithTitle:v8 shortTitle:v9 preparation:v6 completion:v7];

  return v10;
}

- (id)_cardActionWithTitle:(id)a3 shortTitle:(id)a4 preparation:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MFTriageInteraction *)self _iconImageName];
  v15 = [(MFTriageInteraction *)self _tintColor];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10022DB80;
  v21[3] = &unk_100656000;
  v16 = v13;
  v21[4] = self;
  v22 = v16;
  v17 = v12;
  v23 = v17;
  v18 = [MFCardAction cardActionWithTitle:v10 shortTitle:v11 imageName:v14 tintColor:v15 handler:v21];

  objc_opt_class();
  [v18 setDestructive:objc_opt_isKindOfClass() & 1];
  v19 = [(MFTriageInteraction *)self accessibilityIdentifier];
  [v18 setAccessibilityIdentifier:v19];

  return v18;
}

- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10022DEC0;
  v14[3] = &unk_100655540;
  v14[4] = self;
  v7 = a4;
  v15 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10022DF98;
  v11[3] = &unk_100656050;
  v11[4] = self;
  v8 = objc_retainBlock(v14);
  v12 = v8;
  v9 = v6;
  v13 = v9;
  v10 = objc_retainBlock(v11);
  if ([(MFTriageInteraction *)self _requiresConfirmationPrompt]&& [(MFTriageInteraction *)self shouldAskForConfirmation])
  {
    [(MFTriageInteraction *)self _performInteractionIfPermittedWithContinuation:v10];
  }

  else
  {
    (v10[2])(v10, 1);
  }
}

- (id)messageRepositoryForTriageAction:(id)a3
{
  v4 = [(MFTriageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 messageRepositoryForTriageInteraction:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MFTriageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end