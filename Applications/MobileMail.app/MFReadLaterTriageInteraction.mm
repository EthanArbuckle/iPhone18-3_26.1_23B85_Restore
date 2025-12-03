@interface MFReadLaterTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor state:(id)state;
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor state:(id)state;
+ (id)localizedStringForAction:(int64_t)action;
+ (id)mailMenuCommandsWithSelector:(SEL)selector;
- (BOOL)hasReadLater;
- (BOOL)isPresentCustom;
- (BOOL)isRemoveReadLater;
- (BOOL)messagesHaveReadLaterSet;
- (MFReadLaterTriageInteraction)init;
- (NSDate)selectedDate;
- (id)_alertControllerWithCompletion:(id)completion;
- (id)_iconImageName;
- (id)_initialReadLaterDate;
- (id)_menuWithPreparation:(id)preparation completion:(id)completion;
- (id)color;
- (id)menuWithCompletion:(id)completion;
- (id)shortTitle;
- (id)swipeActionWithPreparation:(id)preparation completion:(id)completion;
- (id)title;
- (id)triageAction;
- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion;
- (void)_presentCustomDatePickerWithPreparation:(id)preparation completion:(id)completion;
- (void)datePickerViewController:(id)controller didSelectDate:(id)date;
- (void)datePickerViewControllerDidDeleteDate:(id)date;
- (void)performReadLaterAction:(int64_t)action preparation:(id)preparation completion:(id)completion;
@end

@implementation MFReadLaterTriageInteraction

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  itemsCopy = items;
  managerCopy = manager;
  v11 = [_TtC10MobileMail33MFReadLaterTriageInteractionState stateWithMessageListItems:itemsCopy];
  v12 = [MFReadLaterTriageInteraction interactionWithMessageListItems:itemsCopy undoManager:managerCopy origin:origin actor:actor state:v11];

  return v12;
}

+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  selectionCopy = selection;
  managerCopy = manager;
  if ([selectionCopy isSelectAll])
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MFReadLaterTriageInteraction.m" lineNumber:37 description:@"Select all is not supported"];
  }

  messageListItems = [selectionCopy messageListItems];
  v14 = [_TtC10MobileMail33MFReadLaterTriageInteractionState stateWithMessageListItems:messageListItems];

  v15 = [MFReadLaterTriageInteraction interactionWithMessageListItemSelection:selectionCopy undoManager:managerCopy origin:origin actor:actor state:v14];

  return v15;
}

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor state:(id)state
{
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___MFReadLaterTriageInteraction;
  v13 = objc_msgSendSuper2(&v15, "interactionWithMessageListItems:undoManager:origin:actor:", items, manager, origin, actor);
  [v13 setState:stateCopy];

  return v13;
}

+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor state:(id)state
{
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___MFReadLaterTriageInteraction;
  v13 = objc_msgSendSuper2(&v15, "interactionWithMessageListItemSelection:undoManager:origin:actor:", selection, manager, origin, actor);
  [v13 setState:stateCopy];

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

- (id)_alertControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _EFLocalizedString();
  v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:0];

  [v6 setModalPresentationStyle:7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100208518;
  v12[3] = &unk_100655458;
  v7 = v6;
  v13 = v7;
  selfCopy = self;
  v8 = completionCopy;
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

+ (id)mailMenuCommandsWithSelector:(SEL)selector
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1002087B8;
  v10 = &unk_100653788;
  selectorCopy = selector;
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

- (id)menuWithCompletion:(id)completion
{
  v3 = [(MFReadLaterTriageInteraction *)self _menuWithPreparation:0 completion:completion];

  return v3;
}

- (id)_menuWithPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100208C24;
  v20[3] = &unk_1006554A8;
  v20[4] = self;
  v8 = preparationCopy;
  v21 = v8;
  v9 = completionCopy;
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

- (void)performReadLaterAction:(int64_t)action preparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  state = [(MFReadLaterTriageInteraction *)self state];
  [state perform:action];
  if ([state shouldPresentCustomDatePicker])
  {
    [(MFReadLaterTriageInteraction *)self _presentCustomDatePickerWithPreparation:0 completion:completionCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MFReadLaterTriageInteraction;
    [(MFTriageInteraction *)&v11 _performInteractionAfterPreparation:preparationCopy completion:completionCopy];
  }
}

- (id)swipeActionWithPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  objc_initWeak(&location, self);
  isDestructive = [(MFReadLaterTriageInteraction *)self isDestructive];
  shortTitle = [(MFReadLaterTriageInteraction *)self shortTitle];
  v10 = isDestructive;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100209108;
  v19[3] = &unk_1006554D0;
  objc_copyWeak(&v22, &location);
  v11 = preparationCopy;
  v20 = v11;
  v12 = completionCopy;
  v21 = v12;
  v19[4] = self;
  v13 = [UIContextualAction contextualActionWithStyle:v10 title:shortTitle handler:v19];

  color = [(MFReadLaterTriageInteraction *)self color];
  [v13 setBackgroundColor:color];

  swipeActionIcon = [(MFTriageInteraction *)self swipeActionIcon];
  [v13 setImage:swipeActionIcon];

  state = [(MFReadLaterTriageInteraction *)self state];
  LODWORD(v10) = [state isInitialState];

  if (v10)
  {
    v17 = [(MFReadLaterTriageInteraction *)self _menuWithPreparation:v11 completion:v12];
    [v13 _setMenu:v17];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v13;
}

- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002092F0;
  v10[3] = &unk_1006554F8;
  v10[4] = self;
  completionCopy = completion;
  v11 = completionCopy;
  v8 = preparationCopy;
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
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    origin = [(MFTriageInteraction *)self origin];
    actor = [(MFTriageInteraction *)self actor];
    state = [(MFReadLaterTriageInteraction *)self state];
    date = [state date];
    ec_integerDate = [date ec_integerDate];
    v11 = [v4 initWithMessageListSelection:messageListItemSelection origin:origin actor:actor delegate:self readLaterDate:ec_integerDate];
    v12 = self->_triageAction;
    self->_triageAction = v11;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

+ (id)localizedStringForAction:(int64_t)action
{
  if (action > 5)
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
    messagesHaveReadLaterSet = [(MFReadLaterTriageInteraction *)self messagesHaveReadLaterSet];
    v3 = &MFImageGlyphUpdateReadLater;
    if (!messagesHaveReadLaterSet)
    {
      v3 = &MFImageGlyphReadLater;
    }
  }

  v5 = *v3;

  return v5;
}

- (BOOL)hasReadLater
{
  state = [(MFReadLaterTriageInteraction *)self state];
  hasReadLater = [state hasReadLater];

  return hasReadLater;
}

- (BOOL)isRemoveReadLater
{
  state = [(MFReadLaterTriageInteraction *)self state];
  isRemoveDate = [state isRemoveDate];

  return isRemoveDate;
}

- (BOOL)messagesHaveReadLaterSet
{
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v4 = [messageListItems ef_any:&stru_100655518];

  return v4;
}

- (id)_initialReadLaterDate
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];

  v4 = [messageListItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(messageListItems);
      }

      readLater = [*(*(&v10 + 1) + 8 * v6) readLater];
      date = [readLater date];

      if (date)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [messageListItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    date = 0;
  }

  return date;
}

- (BOOL)isPresentCustom
{
  state = [(MFReadLaterTriageInteraction *)self state];
  shouldPresentCustomDatePicker = [state shouldPresentCustomDatePicker];

  return shouldPresentCustomDatePicker;
}

- (void)_presentCustomDatePickerWithPreparation:(id)preparation completion:(id)completion
{
  completionCopy = completion;
  [(MFReadLaterTriageInteraction *)self setDatePickerPreparation:preparation];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100209CB8;
  v21 = &unk_100655540;
  selfCopy = self;
  v22 = selfCopy;
  v8 = completionCopy;
  v23 = v8;
  [(MFReadLaterTriageInteraction *)selfCopy setDatePickerCompletion:&v18];
  v9 = [MFDatePickerViewController alloc];
  v10 = [(MFReadLaterTriageInteraction *)selfCopy messagesHaveReadLaterSet:v18];
  _initialReadLaterDate = [(MFReadLaterTriageInteraction *)selfCopy _initialReadLaterDate];
  v12 = [v9 initWithType:1 shouldShowDeleteButton:v10 initialDate:_initialReadLaterDate];

  [v12 setDelegate:selfCopy];
  v13 = [[UINavigationController alloc] initWithRootViewController:v12];
  [v13 setModalPresentationStyle:{-[MFReadLaterTriageInteraction datePickerPresentationStyle](selfCopy, "datePickerPresentationStyle")}];
  presentationSource = [(MFTriageInteraction *)selfCopy presentationSource];
  popoverPresentationController = [v13 popoverPresentationController];
  [popoverPresentationController setSourceItem:presentationSource];

  delegate = [(MFTriageInteraction *)selfCopy delegate];
  v17 = [delegate presentingViewControllerForTriageInteraction:selfCopy];

  [v17 presentViewController:v13 animated:1 completion:0];
}

- (NSDate)selectedDate
{
  state = [(MFReadLaterTriageInteraction *)self state];
  date = [state date];

  return date;
}

- (void)datePickerViewController:(id)controller didSelectDate:(id)date
{
  controllerCopy = controller;
  dateCopy = date;
  state = [(MFReadLaterTriageInteraction *)self state];
  [state didSelectCustomDate:dateCopy];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  datePickerCompletion = [(MFReadLaterTriageInteraction *)self datePickerCompletion];
  datePickerPreparation = [(MFReadLaterTriageInteraction *)self datePickerPreparation];
  v11.receiver = self;
  v11.super_class = MFReadLaterTriageInteraction;
  [(MFTriageInteraction *)&v11 _performInteractionAfterPreparation:datePickerPreparation completion:datePickerCompletion];
}

- (void)datePickerViewControllerDidDeleteDate:(id)date
{
  dateCopy = date;
  state = [(MFReadLaterTriageInteraction *)self state];
  [state removeDate];

  [dateCopy dismissViewControllerAnimated:1 completion:0];
  datePickerCompletion = [(MFReadLaterTriageInteraction *)self datePickerCompletion];
  datePickerPreparation = [(MFReadLaterTriageInteraction *)self datePickerPreparation];
  v8.receiver = self;
  v8.super_class = MFReadLaterTriageInteraction;
  [(MFTriageInteraction *)&v8 _performInteractionAfterPreparation:datePickerPreparation completion:datePickerCompletion];

  [(MFReadLaterTriageInteraction *)self setDatePickerPreparation:0];
}

@end