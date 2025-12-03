@interface MFTriageInteraction
+ (MFTriageInteraction)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
+ (MFTriageInteraction)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor query:(id)query;
+ (MFTriageInteraction)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
+ (MFTriageInteraction)interactionWithQuery:(id)query undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
- (BOOL)isSelectAll;
- (BOOL)shouldOverrideFlagState;
- (MFTriageInteraction)init;
- (MFTriageInteraction)initWithQuery:(id)query;
- (MFTriageInteractionDelegate)delegate;
- (UIImage)previewImage;
- (UIImage)swipeActionIcon;
- (id)_cardActionWithTitle:(id)title shortTitle:(id)shortTitle preparation:(id)preparation completion:(id)completion;
- (id)_fillIconImageName;
- (id)_icon;
- (id)alertActionWithCompletion:(id)completion;
- (id)cardActionWithCompletion:(id)completion;
- (id)cardActionWithPreparation:(id)preparation completion:(id)completion;
- (id)menuActionWithCompletion:(id)completion;
- (id)menuActionWithPreparation:(id)preparation completion:(id)completion;
- (id)messageRepositoryForTriageAction:(id)action;
- (id)previewActionItemForSwipe:(BOOL)swipe;
- (id)swipeActionWithPreparation:(id)preparation completion:(id)completion;
- (int64_t)messageCount;
- (void)_dispatchInteractionWithCompletion:(id)completion;
- (void)_performAsynchronousInteractionBoilerplateWithBlock:(id)block completion:(id)completion;
- (void)_performContinuation:(id)continuation withAlertController:(id)controller title:(id)title shouldDismissPresentingViewController:(BOOL)viewController;
- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion;
- (void)_performInteractionBoilerplateWithBlock:(id)block completion:(id)completion;
- (void)_performInteractionIfPermittedWithContinuation:(id)continuation;
- (void)_presentConfirmationSheet:(id)sheet;
@end

@implementation MFTriageInteraction

+ (MFTriageInteraction)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor query:(id)query
{
  selectionCopy = selection;
  managerCopy = manager;
  queryCopy = query;
  v16 = queryCopy;
  if (selectionCopy && queryCopy)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MFTriageInteraction.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"!(query && selection)"}];
  }

  v17 = [[self alloc] initWithQuery:v16];
  [v17 setMessageListItemSelection:selectionCopy];
  [v17 setUndoManager:managerCopy];
  [v17 setOrigin:origin];
  [v17 setActor:actor];

  return v17;
}

+ (MFTriageInteraction)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  v6 = [self interactionWithMessageListItemSelection:selection undoManager:manager origin:origin actor:actor query:0];

  return v6;
}

+ (MFTriageInteraction)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  itemsCopy = items;
  managerCopy = manager;
  if (![itemsCopy count])
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MFTriageInteraction.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"messageListItems.count"}];
  }

  v13 = [[MSMessageListItemSelection alloc] initWithMessageListItems:itemsCopy];
  v14 = [self interactionWithMessageListItemSelection:v13 undoManager:managerCopy origin:origin actor:actor];

  return v14;
}

+ (MFTriageInteraction)interactionWithQuery:(id)query undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  v6 = [self interactionWithMessageListItemSelection:0 undoManager:manager origin:origin actor:actor query:query];

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

- (MFTriageInteraction)initWithQuery:(id)query
{
  queryCopy = query;
  v6 = [(MFTriageInteraction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, query);
  }

  return v7;
}

- (void)_performInteractionBoilerplateWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  if (blockCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10022C3A0;
    v9[3] = &unk_100655EE8;
    v10 = blockCopy;
    v8 = objc_retainBlock(v9);
  }

  else
  {
    v8 = 0;
  }

  [(MFTriageInteraction *)self _performAsynchronousInteractionBoilerplateWithBlock:v8 completion:completionCopy];
}

- (void)_performAsynchronousInteractionBoilerplateWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10022C5BC;
  v13[3] = &unk_10064D9D8;
  v13[4] = self;
  v14 = blockCopy != 0;
  v8 = objc_retainBlock(v13);
  v9 = v8;
  if (blockCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10022C64C;
    v10[3] = &unk_100655F10;
    v11 = v8;
    v12 = completionCopy;
    v10[4] = self;
    blockCopy[2](blockCopy, v10);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, self, 0);
  }

  if (![(MFTriageInteraction *)self shouldDelayContextualActionHandlerCompletion])
  {
    v9[2](v9);
  }
}

- (void)_dispatchInteractionWithCompletion:(id)completion
{
  completionCopy = completion;
  triageAction = [(MFTriageInteraction *)self triageAction];
  undoManager = [(MFTriageInteraction *)self undoManager];
  undoTitle = [(MFTriageInteraction *)self undoTitle];
  [triageAction performWithUndoManager:undoManager actionName:undoTitle completion:completionCopy];
}

- (void)_performContinuation:(id)continuation withAlertController:(id)controller title:(id)title shouldDismissPresentingViewController:(BOOL)viewController
{
  continuationCopy = continuation;
  controllerCopy = controller;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10022C9AC;
  v25[3] = &unk_1006507D8;
  v12 = continuationCopy;
  v26 = v12;
  v13 = [UIAlertController mf_actionSheetWithTitle:title cancellationHandler:v25];
  _preferredAlertActionStyle = [(MFTriageInteraction *)self _preferredAlertActionStyle];
  title = [(MFTriageInteraction *)self title];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10022C9C0;
  v21 = &unk_100655F38;
  v16 = v12;
  viewControllerCopy = viewController;
  selfCopy = self;
  v23 = v16;
  v17 = [UIAlertAction actionWithTitle:title style:_preferredAlertActionStyle handler:&v18];
  [v13 addAction:{v17, v18, v19, v20, v21}];

  controllerCopy[2](controllerCopy, v13);
}

- (void)_performInteractionIfPermittedWithContinuation:(id)continuation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10022CAEC;
  v3[3] = &unk_100655F60;
  v3[4] = self;
  [(MFTriageInteraction *)self _performContinuation:continuation withAlertController:v3];
}

- (void)_presentConfirmationSheet:(id)sheet
{
  sheetCopy = sheet;
  presentationSource = [(MFTriageInteraction *)self presentationSource];

  if (!presentationSource)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFTriageInteraction.m" lineNumber:169 description:@"Presenting a triage interaction confirmation prompt requires a presentationSource."];
  }

  delegate = [(MFTriageInteraction *)self delegate];
  v7 = [delegate presentingViewControllerForTriageInteraction:self];

  presentationSource2 = [(MFTriageInteraction *)self presentationSource];
  [sheetCopy mf_presentFromViewController:v7 withSource:presentationSource2];
}

- (id)_icon
{
  _fillIconImageName = [(MFTriageInteraction *)self _fillIconImageName];
  if (_fillIconImageName)
  {
    v3 = [UIImage mf_systemImageNamed:_fillIconImageName textStyle:UIFontTextStyleSubheadline scale:2 weight:7];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)swipeActionIcon
{
  _fillIconImageName = [(MFTriageInteraction *)self _fillIconImageName];
  if (_fillIconImageName)
  {
    v3 = [UIImage systemImageNamed:_fillIconImageName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)previewImage
{
  _previewImageName = [(MFTriageInteraction *)self _previewImageName];
  if (_previewImageName)
  {
    v3 = [UIImage systemImageNamed:_previewImageName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_fillIconImageName
{
  _iconImageName = [(MFTriageInteraction *)self _iconImageName];
  v3 = _iconImageName;
  if (_iconImageName && [_iconImageName rangeOfString:@".fill"] == 0x7FFFFFFFFFFFFFFFLL)
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

  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  isSelectAll = [messageListItemSelection isSelectAll];

  return isSelectAll;
}

- (int64_t)messageCount
{
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  em_messageListItemTotalCount = [messageListItems em_messageListItemTotalCount];

  return em_messageListItemTotalCount;
}

- (BOOL)shouldOverrideFlagState
{
  if ([(MFTriageInteraction *)self isSelectAll])
  {
    return 1;
  }

  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  if ([messageListItemSelection isActingOnSender])
  {
    v3 = 1;
  }

  else
  {
    query = [(MFTriageInteraction *)self query];
    v3 = query != 0;
  }

  return v3;
}

- (id)alertActionWithCompletion:(id)completion
{
  completionCopy = completion;
  _preferredAlertActionStyle = [(MFTriageInteraction *)self _preferredAlertActionStyle];
  alertTitle = [(MFTriageInteraction *)self alertTitle];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10022D148;
  v10[3] = &unk_100650800;
  v10[4] = self;
  v7 = completionCopy;
  v11 = v7;
  v8 = [UIAlertAction actionWithTitle:alertTitle style:_preferredAlertActionStyle handler:v10];

  return v8;
}

- (id)swipeActionWithPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  swipeTitle = [(MFTriageInteraction *)self swipeTitle];
  swipeActionIcon = [(MFTriageInteraction *)self swipeActionIcon];
  _swipeColor = [(MFTriageInteraction *)self _swipeColor];
  isDestructive = [(MFTriageInteraction *)self isDestructive];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10022D380;
  v19[3] = &unk_100655F88;
  v19[4] = self;
  v12 = preparationCopy;
  v20 = v12;
  v13 = completionCopy;
  v21 = v13;
  v14 = objc_retainBlock(v19);
  v15 = [UIContextualAction contextualActionWithStyle:isDestructive title:swipeTitle handler:v14];
  v16 = +[UIColor whiteColor];
  v17 = [swipeActionIcon imageWithTintColor:v16 renderingMode:1];
  [v15 setImage:v17];

  [v15 setBackgroundColor:_swipeColor];

  return v15;
}

- (id)menuActionWithCompletion:(id)completion
{
  v3 = [(MFTriageInteraction *)self menuActionWithPreparation:0 completion:completion];

  return v3;
}

- (id)menuActionWithPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  if ([(MFTriageInteraction *)self includeTitleInMenuAction])
  {
    previewTitle = [(MFTriageInteraction *)self previewTitle];
  }

  else
  {
    previewTitle = &stru_100662A88;
  }

  previewImage = [(MFTriageInteraction *)self previewImage];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10022D68C;
  v18[3] = &unk_100653760;
  v18[4] = self;
  v10 = preparationCopy;
  v19 = v10;
  v11 = completionCopy;
  v20 = v11;
  v12 = [UIAction actionWithTitle:previewTitle image:previewImage identifier:0 handler:v18];

  if ([(MFTriageInteraction *)self isDestructive])
  {
    [v12 setAttributes:2];
  }

  query = [(MFTriageInteraction *)self query];
  if (query || [(MFTriageInteraction *)self isSelectAll])
  {
  }

  else
  {
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    messageListItems = [messageListItemSelection messageListItems];
    v17 = [messageListItems count];

    if (!v17)
    {
      [v12 setAttributes:{objc_msgSend(v12, "attributes") | 1}];
    }
  }

  return v12;
}

- (id)previewActionItemForSwipe:(BOOL)swipe
{
  if (swipe)
  {
    _icon = [(MFTriageInteraction *)self _icon];
    color = [(MFTriageInteraction *)self color];
    shortTitle = [(MFTriageInteraction *)self shortTitle];
  }

  else
  {
    shortTitle = [(MFTriageInteraction *)self title];
    color = 0;
    _icon = 0;
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
  v8 = [UIPreviewAction _actionWithTitle:shortTitle style:v7 color:color image:_icon handler:v10];

  return v8;
}

- (id)cardActionWithCompletion:(id)completion
{
  v3 = [(MFTriageInteraction *)self cardActionWithPreparation:0 completion:completion];

  return v3;
}

- (id)cardActionWithPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  cardTitle = [(MFTriageInteraction *)self cardTitle];
  cardShortTitle = [(MFTriageInteraction *)self cardShortTitle];
  v10 = [(MFTriageInteraction *)self _cardActionWithTitle:cardTitle shortTitle:cardShortTitle preparation:preparationCopy completion:completionCopy];

  return v10;
}

- (id)_cardActionWithTitle:(id)title shortTitle:(id)shortTitle preparation:(id)preparation completion:(id)completion
{
  titleCopy = title;
  shortTitleCopy = shortTitle;
  preparationCopy = preparation;
  completionCopy = completion;
  _iconImageName = [(MFTriageInteraction *)self _iconImageName];
  _tintColor = [(MFTriageInteraction *)self _tintColor];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10022DB80;
  v21[3] = &unk_100656000;
  v16 = completionCopy;
  v21[4] = self;
  v22 = v16;
  v17 = preparationCopy;
  v23 = v17;
  v18 = [MFCardAction cardActionWithTitle:titleCopy shortTitle:shortTitleCopy imageName:_iconImageName tintColor:_tintColor handler:v21];

  objc_opt_class();
  [v18 setDestructive:objc_opt_isKindOfClass() & 1];
  accessibilityIdentifier = [(MFTriageInteraction *)self accessibilityIdentifier];
  [v18 setAccessibilityIdentifier:accessibilityIdentifier];

  return v18;
}

- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10022DEC0;
  v14[3] = &unk_100655540;
  v14[4] = self;
  completionCopy = completion;
  v15 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10022DF98;
  v11[3] = &unk_100656050;
  v11[4] = self;
  v8 = objc_retainBlock(v14);
  v12 = v8;
  v9 = preparationCopy;
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

- (id)messageRepositoryForTriageAction:(id)action
{
  delegate = [(MFTriageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate messageRepositoryForTriageInteraction:self];
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