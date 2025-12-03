@interface EKCalendarItemRecurrenceEditItem
+ (id)_neverLocalizedString;
- (BOOL)_validateRecurrenceType:(id)type;
- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (EKCalendarItemRecurrenceEditItem)init;
- (id)_newDatePicker;
- (id)bestInitialEndDate;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)endRepeatPopupMenu;
- (id)minRecurrenceEndDate;
- (id)recurrenceDate;
- (id)recurrenceRuleFromRepeatType:(int64_t)type;
- (id)recurrenceTimeZone;
- (id)repeatPopupMenu;
- (id)stringForDate:(id)date;
- (unint64_t)indexForSubitem:(unint64_t)subitem;
- (unint64_t)numberOfSubitems;
- (unint64_t)subitemAtIndex:(unint64_t)index;
- (void)_datePickerChanged:(id)changed;
- (void)_updateMinRecurrenceEndDate;
- (void)dateTimeCellDateTapped:(id)tapped;
- (void)dealloc;
- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)presentCustomRecurrenceVC;
- (void)refreshFromCalendarItemAndStore;
- (void)saveNewRepeatEndDate:(id)date;
@end

@implementation EKCalendarItemRecurrenceEditItem

- (EKCalendarItemRecurrenceEditItem)init
{
  v5.receiver = self;
  v5.super_class = EKCalendarItemRecurrenceEditItem;
  v2 = [(EKCalendarItemRecurrenceEditItem *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = EKCalendarItemRecurrenceEditItem;
  [(EKCalendarItemRecurrenceEditItem *)&v4 dealloc];
}

- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints
{
  source = [constraints source];
  constraints = [source constraints];
  maxRecurrencesAllowed = [constraints maxRecurrencesAllowed];

  if (!maxRecurrencesAllowed)
  {
    return 0;
  }

  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  if ([calendarItem isOrWasPartOfRecurringSeries])
  {
    allowsRecurrenceModifications = 1;
  }

  else
  {
    calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
    allowsRecurrenceModifications = [calendarItem2 allowsRecurrenceModifications];
  }

  return allowsRecurrenceModifications;
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

  recurrenceDate = [(EKCalendarItemRecurrenceEditItem *)self recurrenceDate];
  recurrenceTimeZone = [(EKCalendarItemRecurrenceEditItem *)self recurrenceTimeZone];
  WeakRetained = objc_loadWeakRetained(&self->super._calendarItem);
  singleRecurrenceRule = [WeakRetained singleRecurrenceRule];
  if (singleRecurrenceRule)
  {
    v26 = objc_loadWeakRetained(&self->super._calendarItem);
    singleRecurrenceRule2 = [v26 singleRecurrenceRule];
    v33[0] = singleRecurrenceRule2;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_loadWeakRetained(&self->super._calendarItem);
  isFloating = [v10 isFloating];
  if (isFloating)
  {
    timeZone = 0;
  }

  else
  {
    v2 = objc_loadWeakRetained(&self->super._store);
    timeZone = [v2 timeZone];
  }

  v31 = 0;
  v27 = recurrenceDate;
  CUIKGetTypeAndEndDateForRecurrenceRules();
  v13 = 0;
  if ((isFloating & 1) == 0)
  {
  }

  if (singleRecurrenceRule)
  {
  }

  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  if ([calendarItem isFloating])
  {
    v15 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  }

  else
  {
    v15 = recurrenceTimeZone;
  }

  v16 = v15;

  v17 = CalCopySystemTimeZone();
  if (([v17 isEquivalentTo:v16] & 1) == 0)
  {
    v18 = [MEMORY[0x1E69930C8] calendarDateWithDate:v13 timeZone:v16];
    v19 = [v18 calendarDateInTimeZone:v17];

    date = [v19 date];

    v13 = date;
  }

  objc_storeStrong(&self->_repeatEnd, v13);
  [(EKCalendarItemRecurrenceEditItem *)self _updateMinRecurrenceEndDate];
  repeatType = self->_repeatType;
  if (self->_originalRepeatType != repeatType)
  {
    self->_originalRepeatType = repeatType;
    delegate = [(EKCalendarItemEditItem *)self delegate];
    [delegate editItemWantsFooterTitlesToReload:self];
  }

  objc_storeStrong(&self->_originalRepeatEnd, self->_repeatEnd);
  minRecurrenceEndDate = [(EKCalendarItemRecurrenceEditItem *)self minRecurrenceEndDate];
  if ([(NSDate *)self->_repeatEnd compare:minRecurrenceEndDate]== NSOrderedAscending)
  {
    v24 = dispatch_time(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__EKCalendarItemRecurrenceEditItem_refreshFromCalendarItemAndStore__block_invoke;
    block[3] = &unk_1E843EFB8;
    block[4] = self;
    v30 = minRecurrenceEndDate;
    dispatch_after(v24, MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  if (self->_repeatType == self->_originalRepeatType)
  {
    repeatEnd = self->_repeatEnd;
    if (repeatEnd == self->_originalRepeatEnd || [(NSDate *)repeatEnd isEqualToDate:?])
    {
      return 0;
    }
  }

  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  if ([calendarItem isOrWasPartOfRecurringSeries])
  {
    singleRecurrenceRule = [calendarItem singleRecurrenceRule];
  }

  else
  {
    singleRecurrenceRule = 0;
  }

  v8 = self->_repeatEnd;
  if (v8)
  {
    recurrenceEnd = [singleRecurrenceRule recurrenceEnd];
    endDate = [recurrenceEnd endDate];

    if (v8 != endDate)
    {
      v11 = [MEMORY[0x1E6966AB8] recurrenceEndWithEndDate:self->_repeatEnd];
      [singleRecurrenceRule setRecurrenceEnd:v11];
    }
  }

  else
  {
    [singleRecurrenceRule setRecurrenceEnd:0];
  }

  return 1;
}

- (unint64_t)subitemAtIndex:(unint64_t)index
{
  if (index)
  {
    v3 = self->_repeatType == 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return index;
  }

  else
  {
    return index + 1;
  }
}

- (unint64_t)indexForSubitem:(unint64_t)subitem
{
  if (subitem)
  {
    v3 = self->_repeatType == 6;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return subitem - v4;
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

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v4 = [(EKCalendarItemRecurrenceEditItem *)self subitemAtIndex:index];
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
        textLabel = [(EKUIPopupTableViewCell *)self->_repeatCell textLabel];
        [textLabel setText:v32];

        [(EKUIPopupTableViewCell *)self->_repeatCell setAccessibilityIdentifier:@"repeat-cell"];
      }

      repeatPopupMenu = [(EKCalendarItemRecurrenceEditItem *)self repeatPopupMenu];
      [(EKUIPopupTableViewCell *)self->_repeatCell setPopupMenu:repeatPopupMenu];

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
      textLabel2 = [(UITableViewCell *)self->_customCell textLabel];
      [textLabel2 setFont:v9];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      textLabel3 = [(UITableViewCell *)self->_customCell textLabel];
      [textLabel3 setTextColor:secondaryLabelColor];

      [(UITableViewCell *)self->_customCell setAccessoryType:1];
      textLabel4 = [(UITableViewCell *)self->_customCell textLabel];
      [textLabel4 setNumberOfLines:0];

      customCell = self->_customCell;
    }

    v5 = customCell;
    calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
    recurrenceRules = [calendarItem recurrenceRules];
    firstObject = [recurrenceRules firstObject];
    v17 = firstObject;
    if (firstObject)
    {
      singleRecurrenceRule = firstObject;
    }

    else
    {
      calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
      singleRecurrenceRule = [calendarItem2 singleRecurrenceRule];
    }

    calendarItem3 = [(EKCalendarItemEditItem *)self calendarItem];
    startDateForRecurrence = [calendarItem3 startDateForRecurrence];
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
    textLabel5 = [(EKUIPopupTableViewCell *)v5 textLabel];
    [textLabel5 setText:v64];
  }

  else
  {
    if (v4 == 2)
    {
      v5 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
      v19 = EventKitUIBundle();
      v20 = [v19 localizedStringForKey:@"End Repeat" value:&stru_1F4EF6790 table:0];
      textLabel6 = [(EKUIPopupTableViewCell *)v5 textLabel];
      [textLabel6 setText:v20];

      [(EKUIPopupTableViewCell *)v5 setAccessibilityIdentifier:@"end-repeat-cell"];
      endRepeatPopupMenu = [(EKCalendarItemRecurrenceEditItem *)self endRepeatPopupMenu];
      [(EKUIPopupTableViewCell *)v5 setPopupMenu:endRepeatPopupMenu];

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

        _newDatePicker = [(EKCalendarItemRecurrenceEditItem *)self _newDatePicker];
        endDatePicker = self->_endDatePicker;
        self->_endDatePicker = _newDatePicker;

        contentView = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        [contentView addSubview:self->_endDatePicker];

        v68 = MEMORY[0x1E695DF70];
        v41 = MEMORY[0x1E696ACD8];
        v42 = self->_endDatePicker;
        contentView2 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        v43 = [v41 constraintWithItem:v42 attribute:5 relatedBy:0 toItem:contentView2 attribute:5 multiplier:1.0 constant:0.0];
        v44 = MEMORY[0x1E696ACD8];
        v45 = self->_endDatePicker;
        contentView3 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        v46 = [v44 constraintWithItem:v45 attribute:6 relatedBy:0 toItem:contentView3 attribute:6 multiplier:1.0 constant:0.0];
        v47 = MEMORY[0x1E696ACD8];
        v48 = self->_endDatePicker;
        contentView4 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        v50 = [v47 constraintWithItem:v48 attribute:4 relatedBy:0 toItem:contentView4 attribute:4 multiplier:1.0 constant:0.0];
        v51 = MEMORY[0x1E696ACD8];
        v52 = self->_endDatePicker;
        contentView5 = [(EKUITableViewCell *)self->_endDatePickerCell contentView];
        v54 = [v51 constraintWithItem:v52 attribute:3 relatedBy:0 toItem:contentView5 attribute:3 multiplier:1.0 constant:0.0];
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

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    singleRecurrenceRule = [currentCalendar components:254 fromDate:self->_repeatEnd];

    [(EKDateTimeCell *)self->_endDateCell updateWithDate:singleRecurrenceRule timeZone:0 allDay:1 needsStrikethrough:0];
    v5 = self->_endDateCell;
  }

LABEL_29:

  return v5;
}

- (id)repeatPopupMenu
{
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
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

    [array2 addObject:v6];

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

  [array addObject:v13];
  v17 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:array];

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
  _neverLocalizedString = [objc_opt_class() _neverLocalizedString];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__EKCalendarItemRecurrenceEditItem_endRepeatPopupMenu__block_invoke;
  v17[3] = &unk_1E8441A90;
  objc_copyWeak(&v18, &location);
  v5 = [v3 actionWithTitle:_neverLocalizedString image:0 identifier:0 handler:v17];

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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  [currentCalendar setFirstWeekday:CUIKOneIndexedWeekStart()];
  [v3 setCalendar:currentCalendar];
  [v3 addTarget:self action:sel__datePickerChanged_ forControlEvents:4096];

  return v3;
}

+ (id)_neverLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Never" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)recurrenceRuleFromRepeatType:(int64_t)type
{
  if (type)
  {
    if (type == 6)
    {
      singleRecurrenceRule = 0;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E6966AD0]);
      v7 = CUIKRecurrenceFrequencyForRepeatType();
      singleRecurrenceRule = [v6 initRecurrenceWithFrequency:v7 interval:CUIKIntervalForRepeatType() end:0];
    }
  }

  else
  {
    calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
    if ([calendarItem isMainOccurrence])
    {
      singleRecurrenceRule = 0;
    }

    else
    {
      singleRecurrenceRule = [calendarItem singleRecurrenceRule];
      endDate = [calendarItem endDate];
      [(EKCalendarItemRecurrenceEditItem *)self saveNewRepeatEndDate:endDate];
    }
  }

  return singleRecurrenceRule;
}

- (void)_datePickerChanged:(id)changed
{
  date = [changed date];
  [(EKCalendarItemRecurrenceEditItem *)self saveNewRepeatEndDate:date];
}

- (void)saveNewRepeatEndDate:(id)date
{
  dateCopy = date;
  objc_storeStrong(&self->_repeatEnd, date);
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  if ([calendarItem isOrWasPartOfRecurringSeries])
  {
    singleRecurrenceRule = [calendarItem singleRecurrenceRule];
  }

  else
  {
    singleRecurrenceRule = 0;
  }

  if (!self->_repeatEnd)
  {
    [singleRecurrenceRule setRecurrenceEnd:0];
    goto LABEL_16;
  }

  if (([calendarItem isAllDay] & 1) == 0)
  {
    calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
    if ([calendarItem2 isFloating])
    {
      [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    }

    else
    {
      [(EKCalendarItemRecurrenceEditItem *)self recurrenceTimeZone];
    }
    v8 = ;

    v9 = CalCopySystemTimeZone();
    v10 = [MEMORY[0x1E69930C8] calendarDateWithDate:dateCopy timeZone:v9];
    v11 = [v10 calendarDateInTimeZone:v8];

    date = [v11 date];

    dateCopy = date;
  }

  recurrenceEnd = [singleRecurrenceRule recurrenceEnd];
  endDate = [recurrenceEnd endDate];
  if (!endDate)
  {

    goto LABEL_15;
  }

  v15 = endDate;
  recurrenceEnd2 = [singleRecurrenceRule recurrenceEnd];
  endDate2 = [recurrenceEnd2 endDate];
  v18 = [dateCopy isEqualToDate:endDate2];

  if ((v18 & 1) == 0)
  {
LABEL_15:
    v19 = [MEMORY[0x1E6966AB8] recurrenceEndWithEndDate:dateCopy];
    [singleRecurrenceRule setRecurrenceEnd:v19];
  }

LABEL_16:
  [(EKCalendarItemRecurrenceEditItem *)self _updateMinRecurrenceEndDate];
  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
}

- (void)_updateMinRecurrenceEndDate
{
  minRecurrenceEndDate = [(EKCalendarItemRecurrenceEditItem *)self minRecurrenceEndDate];
  [(UIDatePicker *)self->_endDatePicker setMinimumDate:minRecurrenceEndDate];
}

- (BOOL)_validateRecurrenceType:(id)type
{
  v45[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = typeCopy;
  if (typeCopy)
  {
    v45[0] = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  }

  else
  {
    v6 = 0;
  }

  recurrenceDate = [(EKCalendarItemRecurrenceEditItem *)self recurrenceDate];
  recurrenceTimeZone = [(EKCalendarItemRecurrenceEditItem *)self recurrenceTimeZone];
  WeakRetained = objc_loadWeakRetained(&self->super._calendarItem);
  if ([WeakRetained isFloating])
  {
    p_repeatType = &self->_repeatType;
    CUIKGetTypeAndEndDateForRecurrenceRules();
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->super._store);
    timeZone = [v11 timeZone];
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
      calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
      calendar = [calendarItem calendar];

      if (calendar)
      {
        calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_20:

          goto LABEL_21;
        }

        source = [calendar source];
        constraints = [source constraints];
        eventDurationConstrainedToRecurrenceInterval = [constraints eventDurationConstrainedToRecurrenceInterval];

        if (eventDurationConstrainedToRecurrenceInterval)
        {
          calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
          v26 = objc_loadWeakRetained(&self->super._store);
          [v26 timeZone];

          startDate = [calendarItem2 startDate];
          [startDate timeIntervalSinceReferenceDate];

          endDateUnadjustedForLegacyClients = [calendarItem2 endDateUnadjustedForLegacyClients];
          [endDateUnadjustedForLegacyClients timeIntervalSinceReferenceDate];
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
            delegate = [(EKCalendarItemEditItem *)self delegate];
            v19 = [delegate viewControllerForEditItem:self];
            delegate3 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:7];
            delegate2 = [(EKCalendarItemEditItem *)self delegate];
            v32 = [delegate2 defaultAlertTitleForEditItem:self];
            PresentValidationAlertWithDefaultTitle(v19, delegate3, v32);

            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }

LABEL_21:

      goto LABEL_22;
    }

    calendarItem3 = [(EKCalendarItemEditItem *)self calendarItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      calendar = [(EKCalendarItemEditItem *)self calendarItem];
      v39 = 0;
      v16 = [calendar validateRecurrenceRule:v5 error:&v39];
      calendarItem2 = v39;
      if ((v16 & 1) == 0)
      {
        delegate = [(EKCalendarItemEditItem *)self delegate];
        v19 = [delegate viewControllerForEditItem:self];
        delegate3 = [(EKCalendarItemEditItem *)self delegate];
        delegate2 = [delegate3 defaultAlertTitleForEditItem:self];
        PresentValidationAlertWithDefaultTitle(v19, calendarItem2, delegate2);
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
      calendarItem5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
      calendarItem4 = [(EKCalendarItemEditItem *)self calendarItem];
      [calendarItem4 setRecurrenceRules:calendarItem5];
    }

    else
    {
      calendarItem5 = [(EKCalendarItemEditItem *)self calendarItem];
      [calendarItem5 setRecurrenceRules:0];
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
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  eventStore = [calendarItem eventStore];
  timeZone = [eventStore timeZone];

  calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([calendarItem2 isOrWasPartOfRecurringSeries])
  {
    calendarItem3 = [(EKCalendarItemEditItem *)self calendarItem];
    singleRecurrenceRule = [calendarItem3 singleRecurrenceRule];
  }

  else
  {
    singleRecurrenceRule = 0;
  }

  v9 = [EKUICustomRecurrenceViewController alloc];
  calendarItem4 = [(EKCalendarItemEditItem *)self calendarItem];
  startDateForRecurrence = [calendarItem4 startDateForRecurrence];
  v12 = [(EKUICustomRecurrenceViewController *)v9 initWithStartDate:startDateForRecurrence timeZone:timeZone clearBackground:0];

  [(EKUICustomRecurrenceViewController *)v12 setRecurrenceRule:singleRecurrenceRule];
  calendarItem5 = [(EKCalendarItemEditItem *)self calendarItem];
  calendar = [calendarItem5 calendar];
  source = [calendar source];
  constraints = [source constraints];

  -[EKUICustomRecurrenceViewController setProhibitsMultipleDaysInMonthlyRecurrence:](v12, "setProhibitsMultipleDaysInMonthlyRecurrence:", [constraints prohibitsMultipleDaysInMonthlyRecurrence]);
  -[EKUICustomRecurrenceViewController setProhibitsMultipleMonthsInYearlyRecurrence:](v12, "setProhibitsMultipleMonthsInYearlyRecurrence:", [constraints prohibitsMultipleMonthsInYearlyRecurrence]);
  -[EKUICustomRecurrenceViewController setProhibitsYearlyRecurrenceInterval:](v12, "setProhibitsYearlyRecurrenceInterval:", [constraints prohibitsYearlyRecurrenceInterval]);
  objc_initWeak(&location, self);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __61__EKCalendarItemRecurrenceEditItem_presentCustomRecurrenceVC__block_invoke;
  v24 = &unk_1E8442978;
  objc_copyWeak(&v25, &location);
  [(EKUICustomRecurrenceViewController *)v12 setCompletionBlock:&v21];
  [(EKUICustomRecurrenceViewController *)v12 setModalPresentationStyle:7, v21, v22, v23, v24];
  popoverPresentationController = [(EKUICustomRecurrenceViewController *)v12 popoverPresentationController];
  v18 = popoverPresentationController;
  customCell = self->_customCell;
  if (!customCell)
  {
    customCell = self->_repeatCell;
  }

  [popoverPresentationController setSourceView:customCell];
  [v18 setPermittedArrowDirections:12];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(0) || EKUIUseLargeFormatPhoneUI())
  {
    delegate = [(EKCalendarItemEditItem *)self delegate];
    [delegate editItem:self wantsViewControllerPushed:v12];
  }

  else
  {
    delegate = [(EKCalendarItemEditItem *)self delegate];
    [delegate editItem:self wantsViewControllerPresented:v12];
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

- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  if ([(EKCalendarItemRecurrenceEditItem *)self subitemAtIndex:subitem]== 1)
  {

    [(EKCalendarItemRecurrenceEditItem *)self presentCustomRecurrenceVC];
  }
}

- (id)bestInitialEndDate
{
  minRecurrenceEndDate = [(EKCalendarItemRecurrenceEditItem *)self minRecurrenceEndDate];
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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [currentCalendar dateByAddingComponents:v5 toDate:minRecurrenceEndDate options:0];

  return v10;
}

- (void)dateTimeCellDateTapped:(id)tapped
{
  self->_showingDatePicker ^= 1u;
  [(EKCalendarItemRecurrenceEditItem *)self _updateMinRecurrenceEndDate];
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[EKCalendarItemRecurrenceEditItem indexForSubitem:](self, "indexForSubitem:", 4)}];
  delegate = [(EKCalendarItemEditItem *)self delegate];
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

  [delegate editItem:self wantsRowInsertions:v5 rowDeletions:v6];
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

- (id)stringForDate:(id)date
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