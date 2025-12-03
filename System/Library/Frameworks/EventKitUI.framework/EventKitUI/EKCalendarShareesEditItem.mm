@interface EKCalendarShareesEditItem
- (BOOL)configureWithCalendar:(id)calendar;
- (BOOL)saveStateToCalendar:(id)calendar;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)_colorForShareeStatus:(unint64_t)status;
- (id)_filteredSharees:(id)sharees byRemovingDuplicatesFoundIn:(id)in;
- (id)_iconForSharee:(id)sharee;
- (id)_shareeCellForName:(id)name detailText:(id)text icon:(id)icon iconColor:(id)color;
- (id)_stringForShareeAccessLevel:(unint64_t)level;
- (id)addPersonCell;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)headerTitle;
- (unint64_t)numberOfSubitems;
- (void)_dismissShareePicker;
- (void)_popBackToCalendarEditorChangesMade:(BOOL)made changesSaved:(BOOL)saved;
- (void)addSharee:(id)sharee;
- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)reloadData;
- (void)removeSharee:(id)sharee;
- (void)reset;
- (void)setCalendar:(id)calendar store:(id)store;
- (void)shareePickerViewController:(id)controller didCompleteWithAction:(int)action;
- (void)shareeViewController:(id)controller didCompleteWithAction:(int)action;
- (void)shareeViewControllerDidChangeAccessLevel:(id)level;
@end

@implementation EKCalendarShareesEditItem

- (void)setCalendar:(id)calendar store:(id)store
{
  v5.receiver = self;
  v5.super_class = EKCalendarShareesEditItem;
  [(EKCalendarEditItem *)&v5 setCalendar:calendar store:store];
  [(EKCalendarShareesEditItem *)self reloadData];
}

- (void)reloadData
{
  v3 = MEMORY[0x1E695DF70];
  sharees = [(EKCalendar *)self->super._calendar sharees];
  allObjects = [sharees allObjects];
  v5 = [v3 arrayWithArray:allObjects];
  orderedSharees = self->_orderedSharees;
  self->_orderedSharees = v5;
}

- (void)reset
{
  v3 = objc_opt_new();
  orderedSharees = self->_orderedSharees;
  self->_orderedSharees = v3;
}

- (void)addSharee:(id)sharee
{
  orderedSharees = self->_orderedSharees;
  shareeCopy = sharee;
  [(NSMutableArray *)orderedSharees addObject:shareeCopy];
  [(EKCalendar *)self->super._calendar addSharee:shareeCopy];
}

- (void)removeSharee:(id)sharee
{
  orderedSharees = self->_orderedSharees;
  shareeCopy = sharee;
  [(NSMutableArray *)orderedSharees removeObject:shareeCopy];
  [(EKCalendar *)self->super._calendar removeSharee:shareeCopy];
}

- (id)_iconForSharee:(id)sharee
{
  shareeCopy = sharee;
  if ([shareeCopy isNew])
  {
    goto LABEL_2;
  }

  shareeStatus = [shareeCopy shareeStatus];
  switch(shareeStatus)
  {
    case 1:
      v6 = @"checkmark.circle.fill";
      break;
    case 5:
      v6 = @"questionmark.circle.fill";
      break;
    case 2:
      v6 = @"xmark.circle.fill";
      break;
    default:
LABEL_2:
      v4 = 0;
      goto LABEL_10;
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6];
LABEL_10:

  return v4;
}

- (id)_colorForShareeStatus:(unint64_t)status
{
  switch(status)
  {
    case 5uLL:
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      break;
    case 2uLL:
      secondaryLabelColor = [MEMORY[0x1E69DC888] systemRedColor];
      break;
    case 1uLL:
      secondaryLabelColor = [MEMORY[0x1E69DC888] systemGreenColor];
      break;
    default:
      secondaryLabelColor = 0;
      break;
  }

  return secondaryLabelColor;
}

- (id)_stringForShareeAccessLevel:(unint64_t)level
{
  if (level == 1)
  {
    v3 = @"View Only";
    goto LABEL_5;
  }

  if (level == 2)
  {
    v3 = @"View & Edit";
LABEL_5:
    v4 = EventKitUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F4EF6790 table:0];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)addPersonCell
{
  v2 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"addPerson"];
  defaultContentConfiguration = [(EKUITableViewCell *)v2 defaultContentConfiguration];
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Add Person cell text" value:@"Add Person" table:0];
  [defaultContentConfiguration setText:v5];

  v6 = EKUIMainWindowForMultiwindowError();
  ekui_tintColor = [v6 ekui_tintColor];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:ekui_tintColor];

  textProperties2 = [defaultContentConfiguration textProperties];
  color = [textProperties2 color];
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setTintColor:color];

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person"];
  [defaultContentConfiguration setImage:v12];

  [defaultContentConfiguration setImageToTextPadding:12.0];
  [(EKUITableViewCell *)v2 setContentConfiguration:defaultContentConfiguration];

  return v2;
}

- (id)_shareeCellForName:(id)name detailText:(id)text icon:(id)icon iconColor:(id)color
{
  iconCopy = icon;
  colorCopy = color;
  textCopy = text;
  nameCopy = name;
  v13 = [(EKUITableViewCell *)[SubtitleCellWithAdditionalIcon alloc] initWithStyle:3 reuseIdentifier:@"shareeCell"];
  [(SubtitleCellWithAdditionalIcon *)v13 setAccessoryType:1];
  textLabel = [(SubtitleCellWithAdditionalIcon *)v13 textLabel];
  [textLabel setText:nameCopy];

  detailTextLabel = [(SubtitleCellWithAdditionalIcon *)v13 detailTextLabel];
  [detailTextLabel setText:textCopy];

  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  detailTextLabel2 = [(SubtitleCellWithAdditionalIcon *)v13 detailTextLabel];
  [detailTextLabel2 setFont:v16];

  if (iconCopy)
  {
    icon = [(SubtitleCellWithAdditionalIcon *)v13 icon];
    [icon setImage:iconCopy];

    icon2 = [(SubtitleCellWithAdditionalIcon *)v13 icon];
    [icon2 setTintColor:colorCopy];
  }

  [(SubtitleCellWithAdditionalIcon *)v13 setSelectionStyle:3];

  return v13;
}

- (BOOL)configureWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v10.receiver = self;
  v10.super_class = EKCalendarShareesEditItem;
  [(EKCalendarEditItem *)&v10 configureWithCalendar:calendarCopy];
  source = [calendarCopy source];
  constraints = [source constraints];
  if (![constraints supportsSharedCalendars])
  {
    goto LABEL_6;
  }

  if (([calendarCopy canBeShared] & 1) == 0)
  {
    if ([calendarCopy sharingStatus])
    {
      sharees = [calendarCopy sharees];
      v7 = [sharees count] != 0;

      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if ([(EKCalendar *)self->super._calendar sharingStatus]== 2)
  {
    sharedOwnerName = [(EKCalendar *)self->super._calendar sharedOwnerName];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Owner" value:&stru_1F4EF6790 table:0];
    addPersonCell = [(EKCalendarShareesEditItem *)self _shareeCellForName:sharedOwnerName detailText:v7 icon:0 iconColor:0];

LABEL_5:
    goto LABEL_7;
  }

  orderedSharees = [(EKCalendarShareesEditItem *)self orderedSharees];
  v10 = [orderedSharees count];

  if (v10 > index)
  {
    orderedSharees2 = [(EKCalendarShareesEditItem *)self orderedSharees];
    sharedOwnerName = [orderedSharees2 objectAtIndexedSubscript:index];

    v6 = DisplayStringForIdentity(sharedOwnerName, 1, 0);
    v12 = -[EKCalendarShareesEditItem _stringForShareeAccessLevel:](self, "_stringForShareeAccessLevel:", [sharedOwnerName shareeAccessLevel]);
    v13 = [(EKCalendarShareesEditItem *)self _iconForSharee:sharedOwnerName];
    v14 = -[EKCalendarShareesEditItem _colorForShareeStatus:](self, "_colorForShareeStatus:", [sharedOwnerName shareeStatus]);
    addPersonCell = [(EKCalendarShareesEditItem *)self _shareeCellForName:v6 detailText:v12 icon:v13 iconColor:v14];

    [addPersonCell setSource:sharedOwnerName];
    goto LABEL_5;
  }

  addPersonCell = [(EKCalendarShareesEditItem *)self addPersonCell];
LABEL_7:

  return addPersonCell;
}

- (unint64_t)numberOfSubitems
{
  if ([(EKCalendar *)self->super._calendar sharingStatus]== 2)
  {
    return 1;
  }

  orderedSharees = [(EKCalendarShareesEditItem *)self orderedSharees];
  v3 = [orderedSharees count] + 1;

  return v3;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  if ([(EKCalendar *)self->super._calendar sharingStatus]!= 2)
  {
    orderedSharees = [(EKCalendarShareesEditItem *)self orderedSharees];
    v7 = [orderedSharees count];

    if (v7 > index)
    {
      return 55.0;
    }
  }

  if (EKUIUnscaledCatalyst())
  {

    return EKUIUnscaledCatalystTableRowHeightDefault();
  }

  else
  {

    return EKUITableRowHeightDefault();
  }
}

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Shared With" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (BOOL)saveStateToCalendar:(id)calendar
{
  v19 = *MEMORY[0x1E69E9840];
  sharees = [(EKCalendar *)self->super._calendar sharees];
  v5 = [sharees count];

  if (v5)
  {
    [(EKCalendar *)self->super._calendar setSharingStatus:1];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sharees2 = [(EKCalendar *)self->super._calendar sharees];
  v7 = [sharees2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(sharees2);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isNew] & 1) != 0 || (objc_msgSend(v11, "hasChanges"))
        {
          v12 = 1;
          goto LABEL_15;
        }
      }

      v8 = [sharees2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_15:

  return v12;
}

- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  if ([(EKCalendar *)self->super._calendar sharingStatus]== 2)
  {
    v6 = MEMORY[0x1E6966AE8];
    sharedOwnerName = [(EKCalendar *)self->super._calendar sharedOwnerName];
    sharedOwnerEmail = [(EKCalendar *)self->super._calendar sharedOwnerEmail];
    sharedOwnerPhoneNumber = [(EKCalendar *)self->super._calendar sharedOwnerPhoneNumber];
    view = [v6 shareeWithName:sharedOwnerName emailAddress:sharedOwnerEmail phoneNumber:sharedOwnerPhoneNumber];

    v10 = [[EKIdentityViewController alloc] initWithIdentity:view];
LABEL_3:
    delegate = [(EKCalendarEditItem *)self delegate];
    owningNavigationController = [delegate owningNavigationController];
    [owningNavigationController pushViewController:v10 animated:1];
    goto LABEL_12;
  }

  orderedSharees = [(EKCalendarShareesEditItem *)self orderedSharees];
  v14 = [orderedSharees count];

  if (v14 > subitem)
  {
    orderedSharees2 = [(EKCalendarShareesEditItem *)self orderedSharees];
    view = [orderedSharees2 objectAtIndex:subitem];

    v10 = [[EKShareeViewController alloc] initWithSharee:view];
    [(EKIdentityViewController *)v10 setDelegate:self];
    if ([view isNew])
    {
      [(EKIdentityViewController *)v10 setAllowStopSharing:0];
      [(EKIdentityViewController *)v10 setAllowResendInvitations:0];
      [(EKIdentityViewController *)v10 setAllowLocalDelete:1];
    }

    else
    {
      [(EKIdentityViewController *)v10 setAllowStopSharing:[(EKCalendar *)self->super._calendar isMarkedImmutableSharees]^ 1];
      [(EKIdentityViewController *)v10 setAllowResendInvitations:1];
    }

    goto LABEL_3;
  }

  delegate2 = [(EKCalendarEditItem *)self delegate];
  owningNavigationController2 = [delegate2 owningNavigationController];
  view = [owningNavigationController2 view];

  [view frame];
  v10 = [[EKShareePickerViewController alloc] initWithFrame:self->super._calendar calendar:v18, v19, v20, v21];
  [(EKIdentityViewController *)v10 setDelegate:self];
  [(EKIdentityViewController *)v10 setShouldSuggestFamilySharees:[(EKCalendarShareesEditItem *)self shouldSuggestFamilySharees]];
  orderedSharees3 = [(EKCalendarShareesEditItem *)self orderedSharees];
  [(EKIdentityViewController *)v10 setFilterOutFamilySharees:orderedSharees3];

  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view) && EKUICurrentHeightSizeClassIsRegular(view))
  {
    delegate3 = [(EKCalendarEditItem *)self delegate];
    owningNavigationController3 = [(EKUIManagedNavigationController *)delegate3 owningNavigationController];
    [owningNavigationController3 pushViewController:v10 animated:1];
  }

  else
  {
    delegate3 = [[EKUIManagedNavigationController alloc] initWithRootViewController:v10];
    owningNavigationController3 = [(EKCalendarEditItem *)self delegate];
    v24OwningNavigationController = [owningNavigationController3 owningNavigationController];
    [v24OwningNavigationController presentViewController:delegate3 animated:1 completion:0];
  }

  delegate4 = [(EKCalendarEditItem *)self delegate];
  [delegate4 calendarItemStartedEditing:self];

  delegate = [(EKCalendarEditItem *)self calendar];
  owningNavigationController = [delegate source];
  externalID = [owningNavigationController externalID];
  [(EKIdentityViewController *)v10 setSearchAccountID:externalID];

LABEL_12:
}

- (void)_popBackToCalendarEditorChangesMade:(BOOL)made changesSaved:(BOOL)saved
{
  if (made)
  {
    savedCopy = saved;
    delegate = [(EKCalendarEditItem *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(EKCalendarEditItem *)self delegate];
      [delegate2 calendarItemStartedEditing:self];
    }

    delegate3 = [(EKCalendarEditItem *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate4 = [(EKCalendarEditItem *)self delegate];
      sharees = [(EKCalendar *)self->super._calendar sharees];
      allObjects = [sharees allObjects];
      [delegate4 calendarEditItem:self shareesChanged:allObjects changesSaved:savedCopy];
    }
  }

  [(EKCalendarShareesEditItem *)self _dismissShareePicker];
}

- (void)_dismissShareePicker
{
  delegate = [(EKCalendarEditItem *)self delegate];
  owningNavigationController = [delegate owningNavigationController];

  presentedViewController = [owningNavigationController presentedViewController];

  if (presentedViewController)
  {
    [owningNavigationController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v4 = [owningNavigationController popViewControllerAnimated:1];
  }
}

- (void)shareeViewControllerDidChangeAccessLevel:(id)level
{
  delegate = [(EKCalendarEditItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKCalendarEditItem *)self delegate];
    [delegate2 calendarItemStartedEditing:self];
  }

  delegate3 = [(EKCalendarEditItem *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate4 = [(EKCalendarEditItem *)self delegate];
    tableView = [delegate4 tableView];
    [tableView reloadData];
  }
}

- (void)shareeViewController:(id)controller didCompleteWithAction:(int)action
{
  v37 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  delegate = [(EKCalendarEditItem *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(EKCalendarEditItem *)self delegate];
    [delegate2 calendarEditItemWillChangeSharees:self];
  }

  switch(action)
  {
    case 2:
      sharee = [controllerCopy sharee];
      [(EKCalendarShareesEditItem *)self removeSharee:sharee];
      [(EKCalendarShareesEditItem *)self _popBackToCalendarEditorChangesMade:1 changesSaved:0];
      goto LABEL_21;
    case 1:
      sharee = [controllerCopy sharee];
      duplicate = [sharee duplicate];
      [(EKCalendarShareesEditItem *)self removeSharee:sharee];
      store = self->super._store;
      calendar = self->super._calendar;
      v30 = 0;
      v19 = [(EKEventStore *)store saveCalendar:calendar commit:1 error:&v30];
      v20 = v30;
      if (!v19)
      {
        v21 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = self->super._calendar;
          *buf = 138412802;
          v32 = sharee;
          v33 = 2112;
          v34 = v22;
          v35 = 2112;
          v36 = v20;
          _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_ERROR, "Calendar: Unable to resend sharee(%@) sharee invitation from calendar(%@): %@.", buf, 0x20u);
        }
      }

      [(EKCalendarShareesEditItem *)self addSharee:duplicate];
      v23 = self->super._store;
      v24 = self->super._calendar;
      v29 = v20;
      v25 = [(EKEventStore *)v23 saveCalendar:v24 commit:1 error:&v29];
      v26 = v29;

      if (!v25)
      {
        v27 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          v28 = self->super._calendar;
          *buf = 138412802;
          v32 = sharee;
          v33 = 2112;
          v34 = v28;
          v35 = 2112;
          v36 = v26;
          _os_log_impl(&dword_1D3400000, v27, OS_LOG_TYPE_ERROR, "Calendar: Unable to resend sharee(%@) sharee invitation from calendar(%@): %@.", buf, 0x20u);
        }
      }

      [(EKCalendarShareesEditItem *)self _popBackToCalendarEditorChangesMade:1 changesSaved:1];

      goto LABEL_19;
    case 0:
      sharee = [controllerCopy sharee];
      [(EKCalendarShareesEditItem *)self removeSharee:sharee];
      sharees = [(EKCalendar *)self->super._calendar sharees];
      v12 = [sharees count];

      if (!v12)
      {
        [(EKCalendar *)self->super._calendar setSharingStatus:0];
      }

      delegate3 = [(EKCalendarEditItem *)self delegate];
      duplicate = [delegate3 editorForCalendarEditItem:self];

      if (([duplicate saveCalendar:self->super._calendar error:0] & 1) == 0)
      {
        v15 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          v16 = self->super._calendar;
          *buf = 138412546;
          v32 = sharee;
          v33 = 2112;
          v34 = v16;
          _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "Calendar: unable to remove sharee(%@) from calendar(%@)", buf, 0x16u);
        }
      }

      [(EKCalendarShareesEditItem *)self _popBackToCalendarEditorChangesMade:1 changesSaved:1];
LABEL_19:

LABEL_21:
      break;
  }
}

- (void)shareePickerViewController:(id)controller didCompleteWithAction:(int)action
{
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (action == 1)
  {
    orderedSharees = [(EKCalendarShareesEditItem *)self orderedSharees];
    meSharee = [(EKCalendarShareesEditItem *)self meSharee];

    if (meSharee)
    {
      meSharee2 = [(EKCalendarShareesEditItem *)self meSharee];
      v10 = [orderedSharees arrayByAddingObject:meSharee2];

      orderedSharees = v10;
    }

    sharees = [controllerCopy sharees];
    v12 = [(EKCalendarShareesEditItem *)self _filteredSharees:sharees byRemovingDuplicatesFoundIn:orderedSharees];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(EKCalendarShareesEditItem *)self addSharee:*(*(&v18 + 1) + 8 * v17++), v18];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }

    [(EKCalendarShareesEditItem *)self _popBackToCalendarEditorChangesMade:1 changesSaved:0];
  }

  else if (!action)
  {
    [(EKCalendarShareesEditItem *)self _dismissShareePicker];
  }
}

- (id)_filteredSharees:(id)sharees byRemovingDuplicatesFoundIn:(id)in
{
  v36 = *MEMORY[0x1E69E9840];
  shareesCopy = sharees;
  inCopy = in;
  v7 = [MEMORY[0x1E695DFA8] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = inCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        emailAddress = [v13 emailAddress];

        if (emailAddress)
        {
          emailAddress2 = [v13 emailAddress];
          [v7 addObject:emailAddress2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = shareesCopy;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        emailAddress3 = [v22 emailAddress];
        v24 = [v7 containsObject:emailAddress3];

        if ((v24 & 1) == 0)
        {
          [array addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  return array;
}

@end