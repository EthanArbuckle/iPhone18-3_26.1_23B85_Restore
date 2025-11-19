@interface EKCalendarShareesEditItem
- (BOOL)configureWithCalendar:(id)a3;
- (BOOL)saveStateToCalendar:(id)a3;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (id)_colorForShareeStatus:(unint64_t)a3;
- (id)_filteredSharees:(id)a3 byRemovingDuplicatesFoundIn:(id)a4;
- (id)_iconForSharee:(id)a3;
- (id)_shareeCellForName:(id)a3 detailText:(id)a4 icon:(id)a5 iconColor:(id)a6;
- (id)_stringForShareeAccessLevel:(unint64_t)a3;
- (id)addPersonCell;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)headerTitle;
- (unint64_t)numberOfSubitems;
- (void)_dismissShareePicker;
- (void)_popBackToCalendarEditorChangesMade:(BOOL)a3 changesSaved:(BOOL)a4;
- (void)addSharee:(id)a3;
- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)reloadData;
- (void)removeSharee:(id)a3;
- (void)reset;
- (void)setCalendar:(id)a3 store:(id)a4;
- (void)shareePickerViewController:(id)a3 didCompleteWithAction:(int)a4;
- (void)shareeViewController:(id)a3 didCompleteWithAction:(int)a4;
- (void)shareeViewControllerDidChangeAccessLevel:(id)a3;
@end

@implementation EKCalendarShareesEditItem

- (void)setCalendar:(id)a3 store:(id)a4
{
  v5.receiver = self;
  v5.super_class = EKCalendarShareesEditItem;
  [(EKCalendarEditItem *)&v5 setCalendar:a3 store:a4];
  [(EKCalendarShareesEditItem *)self reloadData];
}

- (void)reloadData
{
  v3 = MEMORY[0x1E695DF70];
  v7 = [(EKCalendar *)self->super._calendar sharees];
  v4 = [v7 allObjects];
  v5 = [v3 arrayWithArray:v4];
  orderedSharees = self->_orderedSharees;
  self->_orderedSharees = v5;
}

- (void)reset
{
  v3 = objc_opt_new();
  orderedSharees = self->_orderedSharees;
  self->_orderedSharees = v3;
}

- (void)addSharee:(id)a3
{
  orderedSharees = self->_orderedSharees;
  v5 = a3;
  [(NSMutableArray *)orderedSharees addObject:v5];
  [(EKCalendar *)self->super._calendar addSharee:v5];
}

- (void)removeSharee:(id)a3
{
  orderedSharees = self->_orderedSharees;
  v5 = a3;
  [(NSMutableArray *)orderedSharees removeObject:v5];
  [(EKCalendar *)self->super._calendar removeSharee:v5];
}

- (id)_iconForSharee:(id)a3
{
  v3 = a3;
  if ([v3 isNew])
  {
    goto LABEL_2;
  }

  v5 = [v3 shareeStatus];
  switch(v5)
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

- (id)_colorForShareeStatus:(unint64_t)a3
{
  switch(a3)
  {
    case 5uLL:
      v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      break;
    case 2uLL:
      v3 = [MEMORY[0x1E69DC888] systemRedColor];
      break;
    case 1uLL:
      v3 = [MEMORY[0x1E69DC888] systemGreenColor];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (id)_stringForShareeAccessLevel:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = @"View Only";
    goto LABEL_5;
  }

  if (a3 == 2)
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
  v3 = [(EKUITableViewCell *)v2 defaultContentConfiguration];
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Add Person cell text" value:@"Add Person" table:0];
  [v3 setText:v5];

  v6 = EKUIMainWindowForMultiwindowError();
  v7 = [v6 ekui_tintColor];
  v8 = [v3 textProperties];
  [v8 setColor:v7];

  v9 = [v3 textProperties];
  v10 = [v9 color];
  v11 = [v3 imageProperties];
  [v11 setTintColor:v10];

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person"];
  [v3 setImage:v12];

  [v3 setImageToTextPadding:12.0];
  [(EKUITableViewCell *)v2 setContentConfiguration:v3];

  return v2;
}

- (id)_shareeCellForName:(id)a3 detailText:(id)a4 icon:(id)a5 iconColor:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(EKUITableViewCell *)[SubtitleCellWithAdditionalIcon alloc] initWithStyle:3 reuseIdentifier:@"shareeCell"];
  [(SubtitleCellWithAdditionalIcon *)v13 setAccessoryType:1];
  v14 = [(SubtitleCellWithAdditionalIcon *)v13 textLabel];
  [v14 setText:v12];

  v15 = [(SubtitleCellWithAdditionalIcon *)v13 detailTextLabel];
  [v15 setText:v11];

  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v17 = [(SubtitleCellWithAdditionalIcon *)v13 detailTextLabel];
  [v17 setFont:v16];

  if (v9)
  {
    v18 = [(SubtitleCellWithAdditionalIcon *)v13 icon];
    [v18 setImage:v9];

    v19 = [(SubtitleCellWithAdditionalIcon *)v13 icon];
    [v19 setTintColor:v10];
  }

  [(SubtitleCellWithAdditionalIcon *)v13 setSelectionStyle:3];

  return v13;
}

- (BOOL)configureWithCalendar:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EKCalendarShareesEditItem;
  [(EKCalendarEditItem *)&v10 configureWithCalendar:v4];
  v5 = [v4 source];
  v6 = [v5 constraints];
  if (![v6 supportsSharedCalendars])
  {
    goto LABEL_6;
  }

  if (([v4 canBeShared] & 1) == 0)
  {
    if ([v4 sharingStatus])
    {
      v8 = [v4 sharees];
      v7 = [v8 count] != 0;

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

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  if ([(EKCalendar *)self->super._calendar sharingStatus]== 2)
  {
    v5 = [(EKCalendar *)self->super._calendar sharedOwnerName];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Owner" value:&stru_1F4EF6790 table:0];
    v8 = [(EKCalendarShareesEditItem *)self _shareeCellForName:v5 detailText:v7 icon:0 iconColor:0];

LABEL_5:
    goto LABEL_7;
  }

  v9 = [(EKCalendarShareesEditItem *)self orderedSharees];
  v10 = [v9 count];

  if (v10 > a3)
  {
    v11 = [(EKCalendarShareesEditItem *)self orderedSharees];
    v5 = [v11 objectAtIndexedSubscript:a3];

    v6 = DisplayStringForIdentity(v5, 1, 0);
    v12 = -[EKCalendarShareesEditItem _stringForShareeAccessLevel:](self, "_stringForShareeAccessLevel:", [v5 shareeAccessLevel]);
    v13 = [(EKCalendarShareesEditItem *)self _iconForSharee:v5];
    v14 = -[EKCalendarShareesEditItem _colorForShareeStatus:](self, "_colorForShareeStatus:", [v5 shareeStatus]);
    v8 = [(EKCalendarShareesEditItem *)self _shareeCellForName:v6 detailText:v12 icon:v13 iconColor:v14];

    [v8 setSource:v5];
    goto LABEL_5;
  }

  v8 = [(EKCalendarShareesEditItem *)self addPersonCell];
LABEL_7:

  return v8;
}

- (unint64_t)numberOfSubitems
{
  if ([(EKCalendar *)self->super._calendar sharingStatus]== 2)
  {
    return 1;
  }

  v4 = [(EKCalendarShareesEditItem *)self orderedSharees];
  v3 = [v4 count] + 1;

  return v3;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4
{
  if ([(EKCalendar *)self->super._calendar sharingStatus]!= 2)
  {
    v6 = [(EKCalendarShareesEditItem *)self orderedSharees];
    v7 = [v6 count];

    if (v7 > a3)
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

- (BOOL)saveStateToCalendar:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(EKCalendar *)self->super._calendar sharees];
  v5 = [v4 count];

  if (v5)
  {
    [(EKCalendar *)self->super._calendar setSharingStatus:1];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(EKCalendar *)self->super._calendar sharees];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isNew] & 1) != 0 || (objc_msgSend(v11, "hasChanges"))
        {
          v12 = 1;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  if ([(EKCalendar *)self->super._calendar sharingStatus]== 2)
  {
    v6 = MEMORY[0x1E6966AE8];
    v7 = [(EKCalendar *)self->super._calendar sharedOwnerName];
    v8 = [(EKCalendar *)self->super._calendar sharedOwnerEmail];
    v9 = [(EKCalendar *)self->super._calendar sharedOwnerPhoneNumber];
    v28 = [v6 shareeWithName:v7 emailAddress:v8 phoneNumber:v9];

    v10 = [[EKIdentityViewController alloc] initWithIdentity:v28];
LABEL_3:
    v11 = [(EKCalendarEditItem *)self delegate];
    v12 = [v11 owningNavigationController];
    [v12 pushViewController:v10 animated:1];
    goto LABEL_12;
  }

  v13 = [(EKCalendarShareesEditItem *)self orderedSharees];
  v14 = [v13 count];

  if (v14 > a4)
  {
    v15 = [(EKCalendarShareesEditItem *)self orderedSharees];
    v28 = [v15 objectAtIndex:a4];

    v10 = [[EKShareeViewController alloc] initWithSharee:v28];
    [(EKIdentityViewController *)v10 setDelegate:self];
    if ([v28 isNew])
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

  v16 = [(EKCalendarEditItem *)self delegate];
  v17 = [v16 owningNavigationController];
  v28 = [v17 view];

  [v28 frame];
  v10 = [[EKShareePickerViewController alloc] initWithFrame:self->super._calendar calendar:v18, v19, v20, v21];
  [(EKIdentityViewController *)v10 setDelegate:self];
  [(EKIdentityViewController *)v10 setShouldSuggestFamilySharees:[(EKCalendarShareesEditItem *)self shouldSuggestFamilySharees]];
  v22 = [(EKCalendarShareesEditItem *)self orderedSharees];
  [(EKIdentityViewController *)v10 setFilterOutFamilySharees:v22];

  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v28) && EKUICurrentHeightSizeClassIsRegular(v28))
  {
    v23 = [(EKCalendarEditItem *)self delegate];
    v24 = [(EKUIManagedNavigationController *)v23 owningNavigationController];
    [v24 pushViewController:v10 animated:1];
  }

  else
  {
    v23 = [[EKUIManagedNavigationController alloc] initWithRootViewController:v10];
    v24 = [(EKCalendarEditItem *)self delegate];
    v25 = [v24 owningNavigationController];
    [v25 presentViewController:v23 animated:1 completion:0];
  }

  v26 = [(EKCalendarEditItem *)self delegate];
  [v26 calendarItemStartedEditing:self];

  v11 = [(EKCalendarEditItem *)self calendar];
  v12 = [v11 source];
  v27 = [v12 externalID];
  [(EKIdentityViewController *)v10 setSearchAccountID:v27];

LABEL_12:
}

- (void)_popBackToCalendarEditorChangesMade:(BOOL)a3 changesSaved:(BOOL)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = [(EKCalendarEditItem *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(EKCalendarEditItem *)self delegate];
      [v8 calendarItemStartedEditing:self];
    }

    v9 = [(EKCalendarEditItem *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(EKCalendarEditItem *)self delegate];
      v12 = [(EKCalendar *)self->super._calendar sharees];
      v13 = [v12 allObjects];
      [v11 calendarEditItem:self shareesChanged:v13 changesSaved:v5];
    }
  }

  [(EKCalendarShareesEditItem *)self _dismissShareePicker];
}

- (void)_dismissShareePicker
{
  v2 = [(EKCalendarEditItem *)self delegate];
  v5 = [v2 owningNavigationController];

  v3 = [v5 presentedViewController];

  if (v3)
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)shareeViewControllerDidChangeAccessLevel:(id)a3
{
  v4 = [(EKCalendarEditItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKCalendarEditItem *)self delegate];
    [v6 calendarItemStartedEditing:self];
  }

  v7 = [(EKCalendarEditItem *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = [(EKCalendarEditItem *)self delegate];
    v9 = [v10 tableView];
    [v9 reloadData];
  }
}

- (void)shareeViewController:(id)a3 didCompleteWithAction:(int)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(EKCalendarEditItem *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(EKCalendarEditItem *)self delegate];
    [v9 calendarEditItemWillChangeSharees:self];
  }

  switch(a4)
  {
    case 2:
      v10 = [v6 sharee];
      [(EKCalendarShareesEditItem *)self removeSharee:v10];
      [(EKCalendarShareesEditItem *)self _popBackToCalendarEditorChangesMade:1 changesSaved:0];
      goto LABEL_21;
    case 1:
      v10 = [v6 sharee];
      v14 = [v10 duplicate];
      [(EKCalendarShareesEditItem *)self removeSharee:v10];
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
          v32 = v10;
          v33 = 2112;
          v34 = v22;
          v35 = 2112;
          v36 = v20;
          _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_ERROR, "Calendar: Unable to resend sharee(%@) sharee invitation from calendar(%@): %@.", buf, 0x20u);
        }
      }

      [(EKCalendarShareesEditItem *)self addSharee:v14];
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
          v32 = v10;
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
      v10 = [v6 sharee];
      [(EKCalendarShareesEditItem *)self removeSharee:v10];
      v11 = [(EKCalendar *)self->super._calendar sharees];
      v12 = [v11 count];

      if (!v12)
      {
        [(EKCalendar *)self->super._calendar setSharingStatus:0];
      }

      v13 = [(EKCalendarEditItem *)self delegate];
      v14 = [v13 editorForCalendarEditItem:self];

      if (([v14 saveCalendar:self->super._calendar error:0] & 1) == 0)
      {
        v15 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          v16 = self->super._calendar;
          *buf = 138412546;
          v32 = v10;
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

- (void)shareePickerViewController:(id)a3 didCompleteWithAction:(int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(EKCalendarShareesEditItem *)self orderedSharees];
    v8 = [(EKCalendarShareesEditItem *)self meSharee];

    if (v8)
    {
      v9 = [(EKCalendarShareesEditItem *)self meSharee];
      v10 = [v7 arrayByAddingObject:v9];

      v7 = v10;
    }

    v11 = [v6 sharees];
    v12 = [(EKCalendarShareesEditItem *)self _filteredSharees:v11 byRemovingDuplicatesFoundIn:v7];

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

  else if (!a4)
  {
    [(EKCalendarShareesEditItem *)self _dismissShareePicker];
  }
}

- (id)_filteredSharees:(id)a3 byRemovingDuplicatesFoundIn:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFA8] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v6;
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
        v14 = [v13 emailAddress];

        if (v14)
        {
          v15 = [v13 emailAddress];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v5;
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
        v23 = [v22 emailAddress];
        v24 = [v7 containsObject:v23];

        if ((v24 & 1) == 0)
        {
          [v16 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  return v16;
}

@end