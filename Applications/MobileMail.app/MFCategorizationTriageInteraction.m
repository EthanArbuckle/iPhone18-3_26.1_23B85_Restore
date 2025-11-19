@interface MFCategorizationTriageInteraction
+ (OS_os_log)log;
+ (id)interactionWithMessageListItemSelection:(id)a3 sender:(id)a4 groupedSenderDisplayName:(id)a5 origin:(int64_t)a6 actor:(int64_t)a7 bucket:(int64_t)a8 avatarGenerator:(id)a9 isAuthenticated:(BOOL)a10 changeOptions:(unint64_t)a11 showMenuWithOptions:(BOOL)a12;
+ (id)mailMenuCommandsWithSelector:(SEL)a3;
- (id)_iconImageName;
- (id)_menuWithPreparation:(id)a3 completion:(id)a4;
- (id)cardActionWithCompletion:(id)a3;
- (id)color;
- (id)previewTitle;
- (id)shortTitle;
- (id)swipeActionWithPreparation:(id)a3 completion:(id)a4;
- (id)title;
- (id)triageAction;
- (void)_performInteractionIfPermittedWithContinuation:(id)a3;
@end

@implementation MFCategorizationTriageInteraction

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AEE14;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD430 != -1)
  {
    dispatch_once(&qword_1006DD430, block);
  }

  v2 = qword_1006DD428;

  return v2;
}

+ (id)interactionWithMessageListItemSelection:(id)a3 sender:(id)a4 groupedSenderDisplayName:(id)a5 origin:(int64_t)a6 actor:(int64_t)a7 bucket:(int64_t)a8 avatarGenerator:(id)a9 isAuthenticated:(BOOL)a10 changeOptions:(unint64_t)a11 showMenuWithOptions:(BOOL)a12
{
  v18 = a4;
  v19 = a5;
  v20 = a9;
  v23.receiver = a1;
  v23.super_class = &OBJC_METACLASS___MFCategorizationTriageInteraction;
  v21 = objc_msgSendSuper2(&v23, "interactionWithMessageListItemSelection:undoManager:origin:actor:", a3, 0, a6, a7);
  [v21 setBucket:a8];
  [v21 setSender:v18];
  [v21 setAvatarGenerator:v20];
  [v21 setChangeOptions:a11];
  [v21 setShowMenuWithOptions:a12];
  [v21 setDisplayName:v19];
  [v21 setIsAuthenticated:a10];

  return v21;
}

- (id)title
{
  v2 = [(MFTriageInteraction *)self messageListItemSelection];
  v3 = [v2 messageListItems];
  v4 = [v3 firstObject];
  v5 = [v4 senderList];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = v6;
    v8 = [v7 emailAddressValue];
    v9 = [v8 em_displayableString];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [v8 simpleAddress];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [v7 stringValue];
      }

      v11 = v14;
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

- (void)_performInteractionIfPermittedWithContinuation:(id)a3
{
  v26 = a3;
  v5 = [(MFTriageInteraction *)self delegate];
  v6 = [v5 presentingViewControllerForTriageInteraction:self];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001AF60C;
  v36[3] = &unk_100653698;
  v36[4] = self;
  v7 = v26;
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
  v12 = [(MFTriageInteraction *)self messageListItemSelection];
  v13 = [v12 messageListItems];
  v27 = a2;
  v14 = [v13 firstObject];

  v15 = [MFCategorizationConfirmationViewController alloc];
  v16 = [(MFCategorizationTriageInteraction *)self displayName];
  v17 = [(MFCategoryTriageInteraction *)self bucket];
  v18 = +[UIApplication sharedApplication];
  v19 = [v18 avatarGenerator];
  v20 = [(MFCategorizationConfirmationViewController *)v15 initWithDisplayName:v16 bucket:v17 messageListItem:v14 avatarGenerator:v19 continueActionHandler:v28 cancelActionHandler:v11];

  if (!v10)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:v27 object:self file:@"MFCategoryTriageInteraction.m" lineNumber:222 description:@"Presenting a triage interaction confirmation prompt requires a presentationSource."];
  }

  v21 = [v10 sheetPresentationController];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001AF6B8;
  v29[3] = &unk_10064E348;
  v29[4] = self;
  v22 = v20;
  v30 = v22;
  v23 = v10;
  v31 = v23;
  v24 = v21;
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
  v2 = [(MFCategoryTriageInteraction *)self bucket];
  if (v2 <= 5)
  {
    if (((1 << v2) & 0x1C) != 0)
    {
      +[UIColor systemYellowColor];
    }

    else
    {
      +[UIColor mailDarkGrayColor];
    }
    v2 = ;
  }

  return v2;
}

- (id)_iconImageName
{
  [(MFCategoryTriageInteraction *)self bucket];

  return MUIImageNameForBucket();
}

- (id)swipeActionWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFCategorizationTriageInteraction *)self shortTitle];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001AFB34;
  v14[3] = &unk_100653710;
  v14[4] = self;
  v9 = [UIContextualAction contextualActionWithStyle:0 title:v8 handler:v14];

  v10 = [(MFCategorizationTriageInteraction *)self color];
  [v9 setBackgroundColor:v10];

  v11 = [(MFTriageInteraction *)self swipeActionIcon];
  [v9 setImage:v11];

  v12 = [(MFCategorizationTriageInteraction *)self _menuWithPreparation:v6 completion:v7];
  [v9 _setMenu:v12];

  return v9;
}

- (id)_menuWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = _EFLocalizedStringFromTable();
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001AFEEC;
  v27[3] = &unk_100653738;
  v10 = v6;
  v28 = v10;
  v11 = v7;
  v29 = v11;
  v27[4] = self;
  v12 = [UIAction actionWithTitle:v9 image:0 identifier:0 handler:v27];
  [v8 addObject:v12];

  v13 = _EFLocalizedStringFromTable();
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1001AFF2C;
  v23 = &unk_100653760;
  v24 = self;
  v14 = v10;
  v25 = v14;
  v15 = v11;
  v26 = v15;
  v16 = [UIAction actionWithTitle:v13 image:0 identifier:0 handler:&v20];
  [v8 addObject:{v16, v20, v21, v22, v23, v24}];

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

- (id)cardActionWithCompletion:(id)a3
{
  v4 = a3;
  [(MFCategoryTriageInteraction *)self bucket];
  v5 = MUILocalizedStringFromBucket();
  [(MFCategoryTriageInteraction *)self bucket];
  v6 = MUISelectedImageNameForBucket();
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1001B01D4;
  v20 = &unk_100653520;
  v21 = self;
  v7 = v4;
  v22 = v7;
  v8 = [MFRecategorizationCardAction cardActionWithTitle:v5 shortTitle:0 imageName:v6 tintColor:0 handler:&v17];

  v9 = [(MFCategoryTriageInteraction *)self bucket:v17];
  v10 = [(MFTriageInteraction *)self messageListItemSelection];
  v11 = [v10 messageListItems];
  v12 = [v11 firstObject];
  v13 = [v12 category];

  if ([v13 state] == 3)
  {
    [v13 type];
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
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [(MFTriageInteraction *)self origin];
    v7 = [(MFTriageInteraction *)self actor];
    [(MFCategoryTriageInteraction *)self bucket];
    v8 = [v4 initWithMessageListSelection:v5 origin:v6 actor:v7 delegate:0 categoryType:EMCategoryTypeForBucket() changeOptions:{-[MFCategoryTriageInteraction changeOptions](self, "changeOptions")}];
    v9 = self->_triageAction;
    self->_triageAction = v8;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

+ (id)mailMenuCommandsWithSelector:(SEL)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B0440;
  v8[3] = &unk_100653788;
  v10 = a3;
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