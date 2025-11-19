@interface MFReadLaterTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 state:(id)a7;
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 state:(id)a7;
+ (id)localizedStringForAction:(int64_t)a3;
+ (id)mailMenuCommandsWithSelector:(SEL)a3;
- (BOOL)hasReadLater;
- (BOOL)isPresentCustom;
- (BOOL)isRemoveReadLater;
- (BOOL)messagesHaveReadLaterSet;
- (MFReadLaterTriageInteraction)init;
- (NSDate)selectedDate;
- (id)_alertControllerWithCompletion:(id)a3;
- (id)_iconImageName;
- (id)_initialReadLaterDate;
- (id)_menuWithPreparation:(id)a3 completion:(id)a4;
- (id)color;
- (id)menuWithCompletion:(id)a3;
- (id)shortTitle;
- (id)swipeActionWithPreparation:(id)a3 completion:(id)a4;
- (id)title;
- (id)triageAction;
- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4;
- (void)_presentCustomDatePickerWithPreparation:(id)a3 completion:(id)a4;
- (void)datePickerViewController:(id)a3 didSelectDate:(id)a4;
- (void)datePickerViewControllerDidDeleteDate:(id)a3;
- (void)performReadLaterAction:(int64_t)a3 preparation:(id)a4 completion:(id)a5;
@end

@implementation MFReadLaterTriageInteraction

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [_TtC10MobileMail33MFReadLaterTriageInteractionState stateWithMessageListItems:v9];
  v12 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v9 undoManager:v10 origin:a5 actor:a6 state:v11];

  return v12;
}

+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  if ([v11 isSelectAll])
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"MFReadLaterTriageInteraction.m" lineNumber:37 description:@"Select all is not supported"];
  }

  v13 = [v11 messageListItems];
  v14 = [_TtC10MobileMail33MFReadLaterTriageInteractionState stateWithMessageListItems:v13];

  v15 = [MFReadLaterTriageInteraction interactionWithMessageListItemSelection:v11 undoManager:v12 origin:a5 actor:a6 state:v14];

  return v15;
}

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 state:(id)a7
{
  v12 = a7;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___MFReadLaterTriageInteraction;
  v13 = objc_msgSendSuper2(&v15, "interactionWithMessageListItems:undoManager:origin:actor:", a3, a4, a5, a6);
  [v13 setState:v12];

  return v13;
}

+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 state:(id)a7
{
  v12 = a7;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___MFReadLaterTriageInteraction;
  v13 = objc_msgSendSuper2(&v15, "interactionWithMessageListItemSelection:undoManager:origin:actor:", a3, a4, a5, a6);
  [v13 setState:v12];

  return v13;
}

- (MFReadLaterTriageInteraction)init
{
  v3.receiver = self;
  v3.super_class = MFReadLaterTriageInteraction;
  result = [(MFTriageInteraction *)&v3 init];
  if (result)
  {
    result->_datePickerPresentationStyle = 7;
  }

  return result;
}

- (id)_alertControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _EFLocalizedString();
  v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:0];

  [v6 setModalPresentationStyle:7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100208518;
  v12[3] = &unk_100655458;
  v7 = v6;
  v13 = v7;
  v14 = self;
  v8 = v4;
  v15 = v8;
  v9 = objc_retainBlock(v12);
  if ([EMInternalPreferences preferenceEnabled:15])
  {
    (v9[2])(v9, 0, 0);
  }

  (v9[2])(v9, 1, 0);
  if ((+[MSSendLaterContext contextForCurrentDate]& 4) != 0)
  {
    (v9[2])(v9, 2, 0);
  }

  (v9[2])(v9, 3, 0);
  (v9[2])(v9, 4, 0);
  (v9[2])(v9, 5, 1);
  v10 = v7;

  return v7;
}

+ (id)mailMenuCommandsWithSelector:(SEL)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1002087B8;
  v10 = &unk_100653788;
  v12 = a3;
  v3 = objc_alloc_init(NSMutableArray);
  v11 = v3;
  v4 = objc_retainBlock(&v7);
  if ([EMInternalPreferences preferenceEnabled:15, v7, v8, v9, v10])
  {
    (v4[2])(v4, 0);
  }

  (v4[2])(v4, 1);
  if ((+[MSSendLaterContext contextForCurrentDate]& 4) != 0)
  {
    (v4[2])(v4, 2);
  }

  (v4[2])(v4, 3);
  (v4[2])(v4, 4);
  (v4[2])(v4, 5);
  v5 = [v3 copy];

  return v5;
}

- (id)menuWithCompletion:(id)a3
{
  v3 = [(MFReadLaterTriageInteraction *)self _menuWithPreparation:0 completion:a3];

  return v3;
}

- (id)_menuWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100208C24;
  v20[3] = &unk_1006554A8;
  v20[4] = self;
  v8 = v6;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = objc_retainBlock(v20);
  v11 = objc_alloc_init(NSMutableArray);
  if ([EMInternalPreferences preferenceEnabled:15])
  {
    v12 = (v10[2])(v10, 0);
    [v11 addObject:v12];
  }

  v13 = (v10[2])(v10, 1);
  [v11 addObject:v13];

  if ((+[MSSendLaterContext contextForCurrentDate]& 4) != 0)
  {
    v14 = (v10[2])(v10, 2);
    [v11 addObject:v14];
  }

  v15 = (v10[2])(v10, 3);
  [v11 addObject:v15];

  v16 = (v10[2])(v10, 4);
  [v11 addObject:v16];

  v17 = _EFLocalizedString();
  v18 = [UIMenu menuWithTitle:v17 image:0 identifier:0 options:0 children:v11];

  return v18;
}

- (void)performReadLaterAction:(int64_t)a3 preparation:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MFReadLaterTriageInteraction *)self state];
  [v10 perform:a3];
  if ([v10 shouldPresentCustomDatePicker])
  {
    [(MFReadLaterTriageInteraction *)self _presentCustomDatePickerWithPreparation:0 completion:v9];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MFReadLaterTriageInteraction;
    [(MFTriageInteraction *)&v11 _performInteractionAfterPreparation:v8 completion:v9];
  }
}

- (id)swipeActionWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MFReadLaterTriageInteraction *)self isDestructive];
  v9 = [(MFReadLaterTriageInteraction *)self shortTitle];
  v10 = v8;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100209108;
  v19[3] = &unk_1006554D0;
  objc_copyWeak(&v22, &location);
  v11 = v6;
  v20 = v11;
  v12 = v7;
  v21 = v12;
  v19[4] = self;
  v13 = [UIContextualAction contextualActionWithStyle:v10 title:v9 handler:v19];

  v14 = [(MFReadLaterTriageInteraction *)self color];
  [v13 setBackgroundColor:v14];

  v15 = [(MFTriageInteraction *)self swipeActionIcon];
  [v13 setImage:v15];

  v16 = [(MFReadLaterTriageInteraction *)self state];
  LODWORD(v10) = [v16 isInitialState];

  if (v10)
  {
    v17 = [(MFReadLaterTriageInteraction *)self _menuWithPreparation:v11 completion:v12];
    [v13 _setMenu:v17];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v13;
}

- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002092F0;
  v10[3] = &unk_1006554F8;
  v10[4] = self;
  v7 = a4;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  v9 = +[EFScheduler mainThreadScheduler];
  [v9 performBlock:v10];
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSReadLaterTriageAction alloc];
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [(MFTriageInteraction *)self origin];
    v7 = [(MFTriageInteraction *)self actor];
    v8 = [(MFReadLaterTriageInteraction *)self state];
    v9 = [v8 date];
    v10 = [v9 ec_integerDate];
    v11 = [v4 initWithMessageListSelection:v5 origin:v6 actor:v7 delegate:self readLaterDate:v10];
    v12 = self->_triageAction;
    self->_triageAction = v11;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

+ (id)localizedStringForAction:(int64_t)a3
{
  if (a3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = _EFLocalizedString();
  }

  return v4;
}

- (id)shortTitle
{
  [(MFReadLaterTriageInteraction *)self isRemoveReadLater];
  v2 = _EFLocalizedString();

  return v2;
}

- (id)title
{
  [(MFReadLaterTriageInteraction *)self messagesHaveReadLaterSet];
  v2 = _EFLocalizedString();

  return v2;
}

- (id)color
{
  if ([(MFReadLaterTriageInteraction *)self isRemoveReadLater])
  {
    +[UIColor mailRemoveReminderColor];
  }

  else
  {
    +[UIColor mailReadLaterActionColor];
  }
  v2 = ;

  return v2;
}

- (id)_iconImageName
{
  if ([(MFReadLaterTriageInteraction *)self isRemoveReadLater])
  {
    v3 = &MFImageGlyphRemoveReadLater;
  }

  else
  {
    v4 = [(MFReadLaterTriageInteraction *)self messagesHaveReadLaterSet];
    v3 = &MFImageGlyphUpdateReadLater;
    if (!v4)
    {
      v3 = &MFImageGlyphReadLater;
    }
  }

  v5 = *v3;

  return v5;
}

- (BOOL)hasReadLater
{
  v2 = [(MFReadLaterTriageInteraction *)self state];
  v3 = [v2 hasReadLater];

  return v3;
}

- (BOOL)isRemoveReadLater
{
  v2 = [(MFReadLaterTriageInteraction *)self state];
  v3 = [v2 isRemoveDate];

  return v3;
}

- (BOOL)messagesHaveReadLaterSet
{
  v2 = [(MFTriageInteraction *)self messageListItemSelection];
  v3 = [v2 messageListItems];
  v4 = [v3 ef_any:&stru_100655518];

  return v4;
}

- (id)_initialReadLaterDate
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(MFTriageInteraction *)self messageListItemSelection];
  v3 = [v2 messageListItems];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = [*(*(&v10 + 1) + 8 * v6) readLater];
      v8 = [v7 date];

      if (v8)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  return v8;
}

- (BOOL)isPresentCustom
{
  v2 = [(MFReadLaterTriageInteraction *)self state];
  v3 = [v2 shouldPresentCustomDatePicker];

  return v3;
}

- (void)_presentCustomDatePickerWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(MFReadLaterTriageInteraction *)self setDatePickerPreparation:a3];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100209CB8;
  v21 = &unk_100655540;
  v7 = self;
  v22 = v7;
  v8 = v6;
  v23 = v8;
  [(MFReadLaterTriageInteraction *)v7 setDatePickerCompletion:&v18];
  v9 = [MFDatePickerViewController alloc];
  v10 = [(MFReadLaterTriageInteraction *)v7 messagesHaveReadLaterSet:v18];
  v11 = [(MFReadLaterTriageInteraction *)v7 _initialReadLaterDate];
  v12 = [v9 initWithType:1 shouldShowDeleteButton:v10 initialDate:v11];

  [v12 setDelegate:v7];
  v13 = [[UINavigationController alloc] initWithRootViewController:v12];
  [v13 setModalPresentationStyle:{-[MFReadLaterTriageInteraction datePickerPresentationStyle](v7, "datePickerPresentationStyle")}];
  v14 = [(MFTriageInteraction *)v7 presentationSource];
  v15 = [v13 popoverPresentationController];
  [v15 setSourceItem:v14];

  v16 = [(MFTriageInteraction *)v7 delegate];
  v17 = [v16 presentingViewControllerForTriageInteraction:v7];

  [v17 presentViewController:v13 animated:1 completion:0];
}

- (NSDate)selectedDate
{
  v2 = [(MFReadLaterTriageInteraction *)self state];
  v3 = [v2 date];

  return v3;
}

- (void)datePickerViewController:(id)a3 didSelectDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFReadLaterTriageInteraction *)self state];
  [v8 didSelectCustomDate:v7];

  [v6 dismissViewControllerAnimated:1 completion:0];
  v9 = [(MFReadLaterTriageInteraction *)self datePickerCompletion];
  v10 = [(MFReadLaterTriageInteraction *)self datePickerPreparation];
  v11.receiver = self;
  v11.super_class = MFReadLaterTriageInteraction;
  [(MFTriageInteraction *)&v11 _performInteractionAfterPreparation:v10 completion:v9];
}

- (void)datePickerViewControllerDidDeleteDate:(id)a3
{
  v4 = a3;
  v5 = [(MFReadLaterTriageInteraction *)self state];
  [v5 removeDate];

  [v4 dismissViewControllerAnimated:1 completion:0];
  v6 = [(MFReadLaterTriageInteraction *)self datePickerCompletion];
  v7 = [(MFReadLaterTriageInteraction *)self datePickerPreparation];
  v8.receiver = self;
  v8.super_class = MFReadLaterTriageInteraction;
  [(MFTriageInteraction *)&v8 _performInteractionAfterPreparation:v7 completion:v6];

  [(MFReadLaterTriageInteraction *)self setDatePickerPreparation:0];
}

@end