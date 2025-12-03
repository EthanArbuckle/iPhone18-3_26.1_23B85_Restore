@interface MFCategorizationTriageInteraction
+ (OS_os_log)log;
+ (id)interactionWithMessageListItemSelection:(id)selection sender:(id)sender groupedSenderDisplayName:(id)name origin:(int64_t)origin actor:(int64_t)actor bucket:(int64_t)bucket avatarGenerator:(id)generator isAuthenticated:(BOOL)self0 changeOptions:(unint64_t)self1 showMenuWithOptions:(BOOL)self2;
+ (id)mailMenuCommandsWithSelector:(SEL)selector;
- (id)_iconImageName;
- (id)_menuWithPreparation:(id)preparation completion:(id)completion;
- (id)cardActionWithCompletion:(id)completion;
- (id)color;
- (id)previewTitle;
- (id)shortTitle;
- (id)swipeActionWithPreparation:(id)preparation completion:(id)completion;
- (id)title;
- (id)triageAction;
- (void)_performInteractionIfPermittedWithContinuation:(id)continuation;
@end

@implementation MFCategorizationTriageInteraction

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AEE14;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD430 != -1)
  {
    dispatch_once(&qword_1006DD430, block);
  }

  v2 = qword_1006DD428;

  return v2;
}

+ (id)interactionWithMessageListItemSelection:(id)selection sender:(id)sender groupedSenderDisplayName:(id)name origin:(int64_t)origin actor:(int64_t)actor bucket:(int64_t)bucket avatarGenerator:(id)generator isAuthenticated:(BOOL)self0 changeOptions:(unint64_t)self1 showMenuWithOptions:(BOOL)self2
{
  senderCopy = sender;
  nameCopy = name;
  generatorCopy = generator;
  v23.receiver = self;
  v23.super_class = &OBJC_METACLASS___MFCategorizationTriageInteraction;
  v21 = objc_msgSendSuper2(&v23, "interactionWithMessageListItemSelection:undoManager:origin:actor:", selection, 0, origin, actor);
  [v21 setBucket:bucket];
  [v21 setSender:senderCopy];
  [v21 setAvatarGenerator:generatorCopy];
  [v21 setChangeOptions:options];
  [v21 setShowMenuWithOptions:withOptions];
  [v21 setDisplayName:nameCopy];
  [v21 setIsAuthenticated:authenticated];

  return v21;
}

- (id)title
{
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];
  senderList = [firstObject senderList];
  firstObject2 = [senderList firstObject];

  if (firstObject2)
  {
    v7 = firstObject2;
    emailAddressValue = [v7 emailAddressValue];
    em_displayableString = [emailAddressValue em_displayableString];
    v10 = em_displayableString;
    if (em_displayableString)
    {
      v11 = em_displayableString;
    }

    else
    {
      simpleAddress = [emailAddressValue simpleAddress];
      v13 = simpleAddress;
      if (simpleAddress)
      {
        stringValue = simpleAddress;
      }

      else
      {
        stringValue = [v7 stringValue];
      }

      v11 = stringValue;
    }
  }

  else
  {
    v11 = &stru_100662A88;
  }

  if ([(__CFString *)v11 length])
  {
    v15 = _EFLocalizedStringFromTable();
    v16 = [NSString localizedStringWithFormat:v15, v11];
  }

  else
  {
    v16 = _EFLocalizedStringFromTable();
  }

  return v16;
}

- (void)_performInteractionIfPermittedWithContinuation:(id)continuation
{
  continuationCopy = continuation;
  delegate = [(MFTriageInteraction *)self delegate];
  v6 = [delegate presentingViewControllerForTriageInteraction:self];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001AF60C;
  v36[3] = &unk_100653698;
  v36[4] = self;
  v7 = continuationCopy;
  v38 = v7;
  v8 = v6;
  v37 = v8;
  v28 = objc_retainBlock(v36);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001AF668;
  v33[3] = &unk_1006536C0;
  v9 = v7;
  v35 = v9;
  v10 = v8;
  v34 = v10;
  v11 = objc_retainBlock(v33);
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v27 = a2;
  firstObject = [messageListItems firstObject];

  v15 = [MFCategorizationConfirmationViewController alloc];
  displayName = [(MFCategorizationTriageInteraction *)self displayName];
  bucket = [(MFCategoryTriageInteraction *)self bucket];
  v18 = +[UIApplication sharedApplication];
  avatarGenerator = [v18 avatarGenerator];
  v20 = [(MFCategorizationConfirmationViewController *)v15 initWithDisplayName:displayName bucket:bucket messageListItem:firstObject avatarGenerator:avatarGenerator continueActionHandler:v28 cancelActionHandler:v11];

  if (!v10)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:v27 object:self file:@"MFCategoryTriageInteraction.m" lineNumber:222 description:@"Presenting a triage interaction confirmation prompt requires a presentationSource."];
  }

  sheetPresentationController = [v10 sheetPresentationController];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001AF6B8;
  v29[3] = &unk_10064E348;
  v29[4] = self;
  v22 = v20;
  v30 = v22;
  v23 = v10;
  v31 = v23;
  v24 = sheetPresentationController;
  v32 = v24;
  [v24 animateChanges:v29];
  [v23 showViewController:v22 sender:0];
}

- (id)previewTitle
{
  if ([(MFCategoryTriageInteraction *)self bucket]> 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = _EFLocalizedString();
  }

  return v2;
}

- (id)shortTitle
{
  [(MFCategoryTriageInteraction *)self bucket];

  return MUILocalizedStringFromBucket();
}

- (id)color
{
  bucket = [(MFCategoryTriageInteraction *)self bucket];
  if (bucket <= 5)
  {
    if (((1 << bucket) & 0x1C) != 0)
    {
      +[UIColor systemYellowColor];
    }

    else
    {
      +[UIColor mailDarkGrayColor];
    }
    bucket = ;
  }

  return bucket;
}

- (id)_iconImageName
{
  [(MFCategoryTriageInteraction *)self bucket];

  return MUIImageNameForBucket();
}

- (id)swipeActionWithPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  shortTitle = [(MFCategorizationTriageInteraction *)self shortTitle];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001AFB34;
  v14[3] = &unk_100653710;
  v14[4] = self;
  v9 = [UIContextualAction contextualActionWithStyle:0 title:shortTitle handler:v14];

  color = [(MFCategorizationTriageInteraction *)self color];
  [v9 setBackgroundColor:color];

  swipeActionIcon = [(MFTriageInteraction *)self swipeActionIcon];
  [v9 setImage:swipeActionIcon];

  v12 = [(MFCategorizationTriageInteraction *)self _menuWithPreparation:preparationCopy completion:completionCopy];
  [v9 _setMenu:v12];

  return v9;
}

- (id)_menuWithPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  v8 = objc_opt_new();
  v9 = _EFLocalizedStringFromTable();
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001AFEEC;
  v27[3] = &unk_100653738;
  v10 = preparationCopy;
  v28 = v10;
  v11 = completionCopy;
  v29 = v11;
  v27[4] = self;
  v12 = [UIAction actionWithTitle:v9 image:0 identifier:0 handler:v27];
  [v8 addObject:v12];

  v13 = _EFLocalizedStringFromTable();
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1001AFF2C;
  v23 = &unk_100653760;
  selfCopy = self;
  v14 = v10;
  v25 = v14;
  v15 = v11;
  v26 = v15;
  v16 = [UIAction actionWithTitle:v13 image:0 identifier:0 handler:&v20];
  [v8 addObject:{v16, v20, v21, v22, v23, selfCopy}];

  if ([(MFCategoryTriageInteraction *)self bucket]- 2 >= 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = _EFLocalizedStringFromTable();
  }

  v18 = [UIMenu menuWithTitle:v17 image:0 identifier:0 options:0 children:v8];

  return v18;
}

- (id)cardActionWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MFCategoryTriageInteraction *)self bucket];
  v5 = MUILocalizedStringFromBucket();
  [(MFCategoryTriageInteraction *)self bucket];
  v6 = MUISelectedImageNameForBucket();
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1001B01D4;
  v20 = &unk_100653520;
  selfCopy = self;
  v7 = completionCopy;
  v22 = v7;
  v8 = [MFRecategorizationCardAction cardActionWithTitle:v5 shortTitle:0 imageName:v6 tintColor:0 handler:&v17];

  v9 = [(MFCategoryTriageInteraction *)self bucket:v17];
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];
  category = [firstObject category];

  if ([category state] == 3)
  {
    [category type];
    v14 = MUIBucketFromEMCategoryType();
  }

  else
  {
    v14 = 0;
  }

  if (v9 == v14)
  {
    [v8 setIsSelected:1];
  }

  [v8 setCategoryType:v9];
  v15 = MUIPlatformColorForBucket();
  [v8 setTintColor:v15];

  return v8;
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSCategoryTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    origin = [(MFTriageInteraction *)self origin];
    actor = [(MFTriageInteraction *)self actor];
    [(MFCategoryTriageInteraction *)self bucket];
    v8 = [v4 initWithMessageListSelection:messageListItemSelection origin:origin actor:actor delegate:0 categoryType:EMCategoryTypeForBucket() changeOptions:{-[MFCategoryTriageInteraction changeOptions](self, "changeOptions")}];
    v9 = self->_triageAction;
    self->_triageAction = v8;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

+ (id)mailMenuCommandsWithSelector:(SEL)selector
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B0440;
  v8[3] = &unk_100653788;
  selectorCopy = selector;
  v3 = objc_alloc_init(NSMutableArray);
  v9 = v3;
  v4 = objc_retainBlock(v8);
  (v4[2])(v4, 0);
  v7 = v4;
  MUIBucketEnumerateAllBuckets();
  v5 = [v3 copy];

  return v5;
}

@end