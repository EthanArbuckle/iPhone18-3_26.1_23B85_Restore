@interface EKCalendarItemRecurrenceEditItem
+ (id)_neverLocalizedString;
- (BOOL)_validateRecurrenceType:(id)a3;
- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (EKCalendarItemRecurrenceEditItem)init;
- (id)_newDatePicker;
- (id)bestInitialEndDate;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)endRepeatPopupMenu;
- (id)minRecurrenceEndDate;
- (id)recurrenceDate;
- (id)recurrenceRuleFromRepeatType:(int64_t)a3;
- (id)recurrenceTimeZone;
- (id)repeatPopupMenu;
- (id)stringForDate:(id)a3;
- (unint64_t)indexForSubitem:(unint64_t)a3;
- (unint64_t)numberOfSubitems;
- (unint64_t)subitemAtIndex:(unint64_t)a3;
- (void)_datePickerChanged:(id)a3;
- (void)_updateMinRecurrenceEndDate;
- (void)dateTimeCellDateTapped:(id)a3;
- (void)dealloc;
- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)presentCustomRecurrenceVC;
- (void)refreshFromCalendarItemAndStore;
- (void)saveNewRepeatEndDate:(id)a3;
@end

@implementation EKCalendarItemRecurrenceEditItem

- (EKCalendarItemRecurrenceEditItem)init
{
  v5.receiver = self;
  v5.super_class = EKCalendarItemRecurrenceEditItem;
  v2 = [(EKCalendarItemRecurrenceEditItem *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = EKCalendarItemRecurrenceEditItem;
  [(EKCalendarItemRecurrenceEditItem *)&v4 dealloc];
}

- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3
{
  v4 = [a3 source];
  v5 = [v4 constraints];
  v6 = [v5 maxRecurrencesAllowed];

  if (!v6)
  {
    return 0;
  }

  v7 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([v7 isOrWasPartOfRecurringSeries])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(EKCalendarItemEditItem *)self calendarItem];
    v8 = [v9 allowsRecurrenceModifications];
  }

  return v8;
}

- (void)refreshFromCalendarItemAndStore
{
  v33[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = EKCalendarItemRecurrenceEditItem;
  [(EKCalendarItemEditItem *)&v32 refreshFromCalendarItemAndStore];
  self->_repeatType = 0;
  repeatEnd = self->_repeatEnd;
  self->_repeatEnd = 0;

  customRepeatDescription = self->_customRepeatDescription;
  self->_customRepeatDescription = 0;

  v6 = [(EKCalendarItemRecurrenceEditItem *)self recurrenceDate];
  v28 = [(EKCalendarItemRecurrenceEditItem *)self recurrenceTimeZone];
  WeakRetained = objc_loadWeakRetained(&self->super._calendarItem);
  v8 = [WeakRetained singleRecurrenceRule];
  if (v8)
  {
    v26 = objc_loadWeakRetained(&self->super._calendarItem);
    v25 = [v26 singleRecurrenceRule];
    v33[0] = v25;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_loadWeakRetained(&self->super._calendarItem);
  v11 = [v10 isFloating];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v2 = objc_loadWeakRetained(&self->super._store);
    v12 = [v2 timeZone];
  }

  v31 = 0;
  v27 = v6;
  CUIKGetTypeAndEndDateForRecurrenceRules();
  v13 = 0;
  if ((v11 & 1) == 0)
  {
  }

  if (v8)
  {
  }

  v14 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([v14 isFloating])
  {
    v15 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  }

  else
  {
    v15 = v28;
  }

  v16 = v15;

  v17 = CalCopySystemTimeZone();
  if (([v17 isEquivalentTo:v16] & 1) == 0)
  {
    v18 = [MEMORY[0x1E69930C8] calendarDateWithDate:v13 timeZone:v16];
    v19 = [v18 calendarDateInTimeZone:v17];

    v20 = [v19 date];

    v13 = v20;
  }

  objc_storeStrong(&self->_repeatEnd, v13);
  [(EKCalendarItemRecurrenceEditItem *)self _updateMinRecurrenceEndDate];
  repeatType = self->_repeatType;
  if (self->_originalRepeatType != repeatType)
  {
    self->_originalRepeatType = repeatType;
    v22 = [(EKCalendarItemEditItem *)self delegate];
    [v22 editItemWantsFooterTitlesToReload:self];
  }

  objc_storeStrong(&self->_originalRepeatEnd, self->_repeatEnd);
  v23 = [(EKCalendarItemRecurrenceEditItem *)self minRecurrenceEndDate];
  if ([(NSDate *)self->_repeatEnd compare:v23]== NSOrderedAscending)
  {
    v24 = dispatch_time(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__EKCalendarItemRecurrenceEditItem_refreshFromCalendarItemAndStore__block_invoke;
    block[3] = &unk_1E843EFB8;
    block[4] = self;
    v30 = v23;
    dispatch_after(v24, MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  if (self->_repeatType == self->_originalRepeatType)
  {
    repeatEnd = self->_repeatEnd;
    if (repeatEnd == self->_originalRepeatEnd || [(NSDate *)repeatEnd isEqualToDate:?])
    {
      return 0;
    }
  }

  v6 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([v6 isOrWasPartOfRecurringSeries])
  {
    v7 = [v6 singleRecurrenceRule];
  }

  else
  {
    v7 = 0;
  }

  v8 = self->_repeatEnd;
  if (v8)
  {
    v9 = [v7 recurrenceEnd];
    v10 = [v9 endDate];

    if (v8 != v10)
    {
      v11 = [MEMORY[0x1E6966AB8] recurrenceEndWithEndDate:self->_repeatEnd];
      [v7 setRecurrenceEnd:v11];
    }
  }

  else
  {
    [v7 setRecurrenceEnd:0];
  }

  return 1;
}

- (unint64_t)subitemAtIndex:(unint64_t)a3
{
  if (a3)
  {
    v3 = self->_repeatType == 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return a3;
  }

  else
  {
    return a3 + 1;
  }
}

- (unint64_t)indexForSubitem:(unint64_t)a3
{
  if (a3)
  {
    v3 = self->_repeatType == 6;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return a3 - v4;
}

- (unint64_t)numberOfSubitems
{
  repeatType = self->_repeatType;
  if (repeatType)
  {
    v3 = 2;
    if (self->_repeatEnd)
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  if (repeatType == 6)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  return v4 + self->_showingDatePicker;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [(EKCalendarItemRecurrenceEditItem *)self subitemAtIndex:a3];
  v5 = 0;
  if (v4 <= 1)
  {
    if (!v4)
    {
      if (!self->_repeatCell)
      {
        v29 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
        repeatCell = self->_repeatCell;
        self->_repeatCell = v29;

        v31 = EventKitUIBundle();
        v32 = [v31 localizedStringForKey:@"Repeat" value:&stru_1F4EF6790 table:0];
        v33 = [(EKUIPopupTableViewCell *)self->_repeatCell textLabel];
        [v33 setText:v32];

        [(EKUIPopupTableViewCell *)self->_repeatCell setAccessibilityIdentifier:@"repeat-cell"];
      }

      v34 = [(EKCalendarItemRecurrenceEditItem *)self repeatPopupMenu];
      [(EKUIPopupTableViewCell *)self->_repeatCell setPopupMenu:v34];

      v35 = self->_repeatCell;
LABEL_22:
      v5 = v35;
      goto LABEL_29;
    }

    if (v4 != 1)
    {
      goto LABEL_29;
    }

    customCell = self->_customCell;
    if (!customCell)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
      v8 = self->_customCell;
      self->_customCell = v7;

      v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      v10 = [(UITableViewCell *)self->_customCell textLabel];
      [v10 setFont:v9];

      v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v12 = [(UITableViewCell *)self->_customCell textLabel];
      [v12 setTextColor:v11];

      [(UITableViewCell *)self->_customCell setAccessoryType:1];
      v13 = [(UITableViewCell *)self->_customCell textLabel];
      [v13 setNumberOfLines:0];

      customCell = self->_customCell;
    }

    v5 = customCell;
    v14 = [(EKCalendarItemEditItem *)self calendarItem];
    v15 = [v14 recurrenceRules];
    v16 = [v15 firstObject];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v56 = [(EKCalendarItemEditItem *)self calendarItem];
      v18 = [v56 singleRecurrenceRule];
    }

    v57 = [(EKCalendarItemEditItem *)self calendarItem];
    v58 = [v57 startDateForRecurrence];
    v59 = CUIKStringForRecurrenceRule();

    v60 = MEMORY[0x1E696AEC0];
    v61 = EventKitUIBundle();
    v62 = [v61 localizedStringForKey:@"Repeats %@" value:&stru_1F4EF6790 table:0];
    if (v59)
    {
      v63 = v59;
    }

    else
    {
      v63 = &stru_1F4EF6790;
    }

    v64 = [v60 localizedStringWithFormat:v62, v63];
    v65 = [(EKUIPopupTableViewCell *)v5 textLabel];
    [v65 setText:v64];
  }

  else
  {
    if (v4 == 2)
    {
      v5 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
      v19 = EventKitUIBundle();
      v20 = [v19 localizedStringForKey:@"End Repeat" value:&stru_1F4EF6790 table:0];
      v21 = [(EKUIPopupTableViewCell *)v5 textLabel];
      [v21 setText:v20];

      [(EKUIPopupTableViewCell *)v5 setAccessibilityIdentifier:@"end-repeat-cell"];
      v22 = [(EKCalendarItemRecurrenceEditItem *)self endRepeatPopupMenu];
      [(EKUIPopupTableViewCell *)v5 setPopupMenu:v22];

      goto LABEL_29;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        goto LABEL_29;
      }

      if (!self->_endDatePickerCell)
      {
        v36 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        endDatePickerCell = self->_endDatePickerCell;
        self->_endDatePickerCell = v36;

        v38 = [(EKCalendarItemRecurrenceEditItem *)self _newDatePicker];
        endDatePicker = self->_endDatePicker;
        self->_endDatePicker = v38;

        v40 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        [v40 addSubview:self->_endDatePicker];

        v68 = MEMORY[0x1E695DF70];
        v41 = MEMORY[0x1E696ACD8];
        v42 = self->_endDatePicker;
        v69 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        v43 = [v41 constraintWithItem:v42 attribute:5 relatedBy:0 toItem:v69 attribute:5 multiplier:1.0 constant:0.0];
        v44 = MEMORY[0x1E696ACD8];
        v45 = self->_endDatePicker;
        v67 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        v46 = [v44 constraintWithItem:v45 attribute:6 relatedBy:0 toItem:v67 attribute:6 multiplier:1.0 constant:0.0];
        v47 = MEMORY[0x1E696ACD8];
        v48 = self->_endDatePicker;
        v49 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        v50 = [v47 constraintWithItem:v48 attribute:4 relatedBy:0 toItem:v49 attribute:4 multiplier:1.0 constant:0.0];
        v51 = MEMORY[0x1E696ACD8];
        v52 = self->_endDatePicker;
        v53 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        v54 = [v51 constraintWithItem:v52 attribute:3 relatedBy:0 toItem:v53 attribute:3 multiplier:1.0 constant:0.0];
        v55 = [v68 arrayWithObjects:{v43, v46, v50, v54, 0}];

        [MEMORY[0x1E696ACD8] activateConstraints:v55];
      }

      [(UIDatePicker *)self->_endDatePicker setDate:self->_repeatEnd];
      [(EKCalendarItemRecurrenceEditItem *)self _updateMinRecurrenceEndDate];
      v35 = self->_endDatePickerCell;
      goto LABEL_22;
    }

    if (!self->_endDateCell)
    {
      v23 = [[EKDateTimeCell alloc] initWithStyle:0 reuseIdentifier:0];
      endDateCell = self->_endDateCell;
      self->_endDateCell = v23;

      [(EKDateTimeCell *)self->_endDateCell setAccessibilityIdentifier:@"end-date-cell"];
      [(EKDateTimeCell *)self->_endDateCell setDateTimeDelegate:self];
      v25 = self->_endDateCell;
      v26 = EventKitUIBundle();
      v27 = [v26 localizedStringForKey:@"End Date" value:&stru_1F4EF6790 table:0];
      [(EKDateTimeCell *)v25 setTitle:v27];
    }

    v28 = [MEMORY[0x1E695DEE8] currentCalendar];
    v18 = [v28 components:254 fromDate:self->_repeatEnd];

    [(EKDateTimeCell *)self->_endDateCell updateWithDate:v18 timeZone:0 allDay:1 needsStrikethrough:0];
    v5 = self->_endDateCell;
  }

LABEL_29:

  return v5;
}

- (id)repeatPopupMenu
{
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  v3 = 0;
  do
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CUIKStringForRepeatTypeDetail();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__EKCalendarItemRecurrenceEditItem_repeatPopupMenu__block_invoke;
    v23[3] = &unk_1E8442950;
    objc_copyWeak(v24, &location);
    v24[1] = v3;
    v6 = [v4 actionWithTitle:v5 image:0 identifier:0 handler:v23];

    v7 = MEMORY[0x1E696AEC0];
    v8 = CUIKAccessibilityIdentifierStringForRepeatTypeDetail();
    v9 = [v7 stringWithFormat:@"repeat-item:%@", v8];
    [v6 setAccessibilityIdentifier:v9];

    if (v3 == self->_repeatType)
    {
      [v6 setState:1];
    }

    [v20 addObject:v6];

    objc_destroyWeak(v24);
    ++v3;
  }

  while (v3 != 6);
  CUIKAddInlineMenuItemArrayToArray();
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"Custom" value:&stru_1F4EF6790 table:0];

  v12 = MEMORY[0x1E69DC628];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__EKCalendarItemRecurrenceEditItem_repeatPopupMenu__block_invoke_2;
  v21[3] = &unk_1E8441A90;
  objc_copyWeak(&v22, &location);
  v13 = [v12 actionWithTitle:v11 image:0 identifier:0 handler:v21];
  v14 = MEMORY[0x1E696AEC0];
  v15 = CUIKAccessibilityIdentifierStringForRepeatTypeDetail();
  v16 = [v14 stringWithFormat:@"repeat-item:%@", v15];
  [v13 setAccessibilityIdentifier:v16];

  if (self->_repeatType == 6)
  {
    [v13 setState:1];
  }

  [v19 addObject:v13];
  v17 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v17;
}

void __51__EKCalendarItemRecurrenceEditItem_repeatPopupMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained recurrenceRuleFromRepeatType:*(a1 + 40)];
  if ([WeakRetained _validateRecurrenceType:v2])
  {
    WeakRetained[128] = 0;
    [WeakRetained notifySubitemDidSave:0];
  }
}

void __51__EKCalendarItemRecurrenceEditItem_repeatPopupMenu__block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained[6] != 6)
  {
    WeakRetained[6] = 6;
    v3 = [WeakRetained calendarItem];
    v4 = MEMORY[0x1E6966AD0];
    v5 = [v2 calendarItem];
    v6 = [v5 singleRecurrenceRule];
    v7 = [v6 recurrenceEnd];
    v8 = [v4 recurrenceRuleWithType:0 interval:1 end:v7];
    v10[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v3 setRecurrenceRules:v9];

    [v2 notifySubitemDidSave:0];
  }

  [v2 performSelector:sel_presentCustomRecurrenceVC withObject:0 afterDelay:0.1];
}

- (id)endRepeatPopupMenu
{
  v20[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v4 = [objc_opt_class() _neverLocalizedString];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__EKCalendarItemRecurrenceEditItem_endRepeatPopupMenu__block_invoke;
  v17[3] = &unk_1E8441A90;
  objc_copyWeak(&v18, &location);
  v5 = [v3 actionWithTitle:v4 image:0 identifier:0 handler:v17];

  v6 = EventKitUIBundle();
  v7 = [v6 localizedStringForKey:@"On Date" value:&stru_1F4EF6790 table:0];

  v8 = MEMORY[0x1E69DC628];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__EKCalendarItemRecurrenceEditItem_endRepeatPopupMenu__block_invoke_2;
  v15[3] = &unk_1E843FAB0;
  objc_copyWeak(&v16, &location);
  v15[4] = self;
  v9 = [v8 actionWithTitle:v7 image:0 identifier:0 handler:v15];
  v10 = v9;
  if (!self->_repeatEnd)
  {
    v9 = v5;
  }

  [v9 setState:1];
  v11 = MEMORY[0x1E69DCC60];
  v20[0] = v5;
  v20[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v13 = [v11 menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v13;
}

void __54__EKCalendarItemRecurrenceEditItem_endRepeatPopupMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[128] = 0;
  [WeakRetained saveNewRepeatEndDate:0];
}

void __54__EKCalendarItemRecurrenceEditItem_endRepeatPopupMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  WeakRetained[128] = 0;
  v2 = [*(a1 + 32) bestInitialEndDate];
  [WeakRetained saveNewRepeatEndDate:v2];
}

- (id)_newDatePicker
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC920]);
  [v3 setPreferredDatePickerStyle:3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setDatePickerMode:1];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v4 setFirstWeekday:CUIKOneIndexedWeekStart()];
  [v3 setCalendar:v4];
  [v3 addTarget:self action:sel__datePickerChanged_ forControlEvents:4096];

  return v3;
}

+ (id)_neverLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Never" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)recurrenceRuleFromRepeatType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 6)
    {
      v3 = 0;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E6966AD0]);
      v7 = CUIKRecurrenceFrequencyForRepeatType();
      v3 = [v6 initRecurrenceWithFrequency:v7 interval:CUIKIntervalForRepeatType() end:0];
    }
  }

  else
  {
    v5 = [(EKCalendarItemEditItem *)self calendarItem];
    if ([v5 isMainOccurrence])
    {
      v3 = 0;
    }

    else
    {
      v3 = [v5 singleRecurrenceRule];
      v8 = [v5 endDate];
      [(EKCalendarItemRecurrenceEditItem *)self saveNewRepeatEndDate:v8];
    }
  }

  return v3;
}

- (void)_datePickerChanged:(id)a3
{
  v4 = [a3 date];
  [(EKCalendarItemRecurrenceEditItem *)self saveNewRepeatEndDate:v4];
}

- (void)saveNewRepeatEndDate:(id)a3
{
  v20 = a3;
  objc_storeStrong(&self->_repeatEnd, a3);
  v5 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([v5 isOrWasPartOfRecurringSeries])
  {
    v6 = [v5 singleRecurrenceRule];
  }

  else
  {
    v6 = 0;
  }

  if (!self->_repeatEnd)
  {
    [v6 setRecurrenceEnd:0];
    goto LABEL_16;
  }

  if (([v5 isAllDay] & 1) == 0)
  {
    v7 = [(EKCalendarItemEditItem *)self calendarItem];
    if ([v7 isFloating])
    {
      [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    }

    else
    {
      [(EKCalendarItemRecurrenceEditItem *)self recurrenceTimeZone];
    }
    v8 = ;

    v9 = CalCopySystemTimeZone();
    v10 = [MEMORY[0x1E69930C8] calendarDateWithDate:v20 timeZone:v9];
    v11 = [v10 calendarDateInTimeZone:v8];

    v12 = [v11 date];

    v20 = v12;
  }

  v13 = [v6 recurrenceEnd];
  v14 = [v13 endDate];
  if (!v14)
  {

    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v6 recurrenceEnd];
  v17 = [v16 endDate];
  v18 = [v20 isEqualToDate:v17];

  if ((v18 & 1) == 0)
  {
LABEL_15:
    v19 = [MEMORY[0x1E6966AB8] recurrenceEndWithEndDate:v20];
    [v6 setRecurrenceEnd:v19];
  }

LABEL_16:
  [(EKCalendarItemRecurrenceEditItem *)self _updateMinRecurrenceEndDate];
  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
}

- (void)_updateMinRecurrenceEndDate
{
  v3 = [(EKCalendarItemRecurrenceEditItem *)self minRecurrenceEndDate];
  [(UIDatePicker *)self->_endDatePicker setMinimumDate:v3];
}

- (BOOL)_validateRecurrenceType:(id)a3
{
  v45[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v45[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(EKCalendarItemRecurrenceEditItem *)self recurrenceDate];
  v8 = [(EKCalendarItemRecurrenceEditItem *)self recurrenceTimeZone];
  WeakRetained = objc_loadWeakRetained(&self->super._calendarItem);
  if ([WeakRetained isFloating])
  {
    p_repeatType = &self->_repeatType;
    CUIKGetTypeAndEndDateForRecurrenceRules();
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->super._store);
    v12 = [v11 timeZone];
    p_repeatType = &self->_repeatType;
    CUIKGetTypeAndEndDateForRecurrenceRules();
  }

  if (v5)
  {
  }

  if (*p_repeatType)
  {
    if (*p_repeatType != 6)
    {
      v22 = [(EKCalendarItemEditItem *)self calendarItem];
      v15 = [v22 calendar];

      if (v15)
      {
        v17 = [(EKCalendarItemEditItem *)self calendarItem];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_20:

          goto LABEL_21;
        }

        v23 = [v15 source];
        v24 = [v23 constraints];
        v25 = [v24 eventDurationConstrainedToRecurrenceInterval];

        if (v25)
        {
          v17 = [(EKCalendarItemEditItem *)self calendarItem];
          v26 = objc_loadWeakRetained(&self->super._store);
          [v26 timeZone];

          v27 = [v17 startDate];
          [v27 timeIntervalSinceReferenceDate];

          v28 = [v17 endDateUnadjustedForLegacyClients];
          [v28 timeIntervalSinceReferenceDate];
          v30 = v29;

          v42 = 0u;
          v43 = 0u;
          CUIKRecurrenceFrequencyForRepeatType();
          CUIKIntervalForRepeatType();
          CUIKGregorianUnitsForRecurrenceTypeAndInterval();
          v40 = 0u;
          v41 = 0u;
          CalAbsoluteTimeAddGregorianUnits();
          if (v31 < v30)
          {
            v18 = [(EKCalendarItemEditItem *)self delegate];
            v19 = [v18 viewControllerForEditItem:self];
            v20 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:7];
            v21 = [(EKCalendarItemEditItem *)self delegate];
            v32 = [v21 defaultAlertTitleForEditItem:self];
            PresentValidationAlertWithDefaultTitle(v19, v20, v32);

            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }

LABEL_21:

      goto LABEL_22;
    }

    v13 = [(EKCalendarItemEditItem *)self calendarItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [(EKCalendarItemEditItem *)self calendarItem];
      v39 = 0;
      v16 = [v15 validateRecurrenceRule:v5 error:&v39];
      v17 = v39;
      if ((v16 & 1) == 0)
      {
        v18 = [(EKCalendarItemEditItem *)self delegate];
        v19 = [v18 viewControllerForEditItem:self];
        v20 = [(EKCalendarItemEditItem *)self delegate];
        v21 = [v20 defaultAlertTitleForEditItem:self];
        PresentValidationAlertWithDefaultTitle(v19, v17, v21);
LABEL_19:

        v33 = 0;
        p_originalRepeatType = &self->_originalRepeatType;
LABEL_29:
        *p_repeatType = *p_originalRepeatType;
        goto LABEL_30;
      }

      goto LABEL_20;
    }
  }

LABEL_22:
  v35 = &self->_originalRepeatType;
  if (*p_repeatType == 6 || *p_repeatType != *v35)
  {
    if (v5)
    {
      v44 = v5;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
      v37 = [(EKCalendarItemEditItem *)self calendarItem];
      [v37 setRecurrenceRules:v36];
    }

    else
    {
      v36 = [(EKCalendarItemEditItem *)self calendarItem];
      [v36 setRecurrenceRules:0];
    }

    v33 = 1;
    p_originalRepeatType = p_repeatType;
    p_repeatType = v35;
    goto LABEL_29;
  }

  v33 = 1;
LABEL_30:

  return v33;
}

- (void)presentCustomRecurrenceVC
{
  v3 = [(EKCalendarItemEditItem *)self calendarItem];
  v4 = [v3 eventStore];
  v5 = [v4 timeZone];

  v6 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([v6 isOrWasPartOfRecurringSeries])
  {
    v7 = [(EKCalendarItemEditItem *)self calendarItem];
    v8 = [v7 singleRecurrenceRule];
  }

  else
  {
    v8 = 0;
  }

  v9 = [EKUICustomRecurrenceViewController alloc];
  v10 = [(EKCalendarItemEditItem *)self calendarItem];
  v11 = [v10 startDateForRecurrence];
  v12 = [(EKUICustomRecurrenceViewController *)v9 initWithStartDate:v11 timeZone:v5 clearBackground:0];

  [(EKUICustomRecurrenceViewController *)v12 setRecurrenceRule:v8];
  v13 = [(EKCalendarItemEditItem *)self calendarItem];
  v14 = [v13 calendar];
  v15 = [v14 source];
  v16 = [v15 constraints];

  -[EKUICustomRecurrenceViewController setProhibitsMultipleDaysInMonthlyRecurrence:](v12, "setProhibitsMultipleDaysInMonthlyRecurrence:", [v16 prohibitsMultipleDaysInMonthlyRecurrence]);
  -[EKUICustomRecurrenceViewController setProhibitsMultipleMonthsInYearlyRecurrence:](v12, "setProhibitsMultipleMonthsInYearlyRecurrence:", [v16 prohibitsMultipleMonthsInYearlyRecurrence]);
  -[EKUICustomRecurrenceViewController setProhibitsYearlyRecurrenceInterval:](v12, "setProhibitsYearlyRecurrenceInterval:", [v16 prohibitsYearlyRecurrenceInterval]);
  objc_initWeak(&location, self);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __61__EKCalendarItemRecurrenceEditItem_presentCustomRecurrenceVC__block_invoke;
  v24 = &unk_1E8442978;
  objc_copyWeak(&v25, &location);
  [(EKUICustomRecurrenceViewController *)v12 setCompletionBlock:&v21];
  [(EKUICustomRecurrenceViewController *)v12 setModalPresentationStyle:7, v21, v22, v23, v24];
  v17 = [(EKUICustomRecurrenceViewController *)v12 popoverPresentationController];
  v18 = v17;
  customCell = self->_customCell;
  if (!customCell)
  {
    customCell = self->_repeatCell;
  }

  [v17 setSourceView:customCell];
  [v18 setPermittedArrowDirections:12];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(0) || EKUIUseLargeFormatPhoneUI())
  {
    v20 = [(EKCalendarItemEditItem *)self delegate];
    [v20 editItem:self wantsViewControllerPushed:v12];
  }

  else
  {
    v20 = [(EKCalendarItemEditItem *)self delegate];
    [v20 editItem:self wantsViewControllerPresented:v12];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __61__EKCalendarItemRecurrenceEditItem_presentCustomRecurrenceVC__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [WeakRetained _validateRecurrenceType:v3];

  if (a1)
  {
    WeakRetained[128] = 0;
    [WeakRetained notifySubitemDidSave:0];
  }
}

- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  if ([(EKCalendarItemRecurrenceEditItem *)self subitemAtIndex:a4]== 1)
  {

    [(EKCalendarItemRecurrenceEditItem *)self presentCustomRecurrenceVC];
  }
}

- (id)bestInitialEndDate
{
  v3 = [(EKCalendarItemRecurrenceEditItem *)self minRecurrenceEndDate];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v5 = v4;
  repeatType = self->_repeatType;
  if (repeatType > 2)
  {
    if (repeatType <= 4)
    {
      if (repeatType != 3)
      {
        v7 = 1;
LABEL_15:
        [v4 setYear:v7];
        goto LABEL_17;
      }

      v8 = 2;
LABEL_13:
      [v4 setMonth:v8];
      goto LABEL_17;
    }

    if (repeatType == 5)
    {
      v7 = 5;
      goto LABEL_15;
    }

    if (repeatType != 6)
    {
      goto LABEL_17;
    }

LABEL_11:
    v8 = 1;
    goto LABEL_13;
  }

  switch(repeatType)
  {
    case 0:
      goto LABEL_11;
    case 1:
      [v4 setDay:7];
      break;
    case 2:
      goto LABEL_11;
  }

LABEL_17:
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v9 dateByAddingComponents:v5 toDate:v3 options:0];

  return v10;
}

- (void)dateTimeCellDateTapped:(id)a3
{
  self->_showingDatePicker ^= 1u;
  [(EKCalendarItemRecurrenceEditItem *)self _updateMinRecurrenceEndDate];
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[EKCalendarItemRecurrenceEditItem indexForSubitem:](self, "indexForSubitem:", 4)}];
  v4 = [(EKCalendarItemEditItem *)self delegate];
  if (self->_showingDatePicker)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  if (self->_showingDatePicker)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  [v4 editItem:self wantsRowInsertions:v5 rowDeletions:v6];
}

- (id)recurrenceDate
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (id)recurrenceTimeZone
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (id)stringForDate:(id)a3
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (id)minRecurrenceEndDate
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

@end