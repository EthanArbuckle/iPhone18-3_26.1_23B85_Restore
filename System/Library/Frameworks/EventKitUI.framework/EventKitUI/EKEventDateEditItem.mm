@interface EKEventDateEditItem
+ (id)_timeZoneLocalizedString;
- (BOOL)_endDateIsBeforeStartDate;
- (BOOL)configureForCalendarConstraints:(id)a3;
- (BOOL)editor:(id)a3 canSelectSubitem:(unint64_t)a4;
- (BOOL)handleClassicSubitemSelection:(int64_t)a3;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (EKEventDateEditItem)init;
- (EKEventDateEditItemDelegate)eventDateEditItemDelegate;
- (NSString)description;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (id)_allDayCell;
- (id)_calendarForEventComponents:(BOOL)a3;
- (id)_classicEndDateCell;
- (id)_classicStartDateCell;
- (id)_dateComponentsInSystemCalendarFromDate:(id)a3;
- (id)_dateFromComponents:(id)a3 timeZone:(id)a4;
- (id)_dateInSystemCalendarFromComponents:(id)a3;
- (id)_endDatePickerCell;
- (id)_endTimeZoneCell;
- (id)_modernEndDateCell;
- (id)_modernStartDateCell;
- (id)_newDatePicker;
- (id)_startDatePickerCell;
- (id)_startTimeZoneCell;
- (id)_timeZoneDescription:(id)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (int64_t)_rowForSubitem:(int64_t)a3;
- (int64_t)_subitemForRow:(int64_t)a3;
- (unint64_t)numberOfSubitems;
- (unint64_t)onSaveEditItemsToRefresh;
- (unint64_t)onSaveEditorReloadBehavior;
- (void)_adjustEndDateIfNeededAfterTogglingAllDay;
- (void)_adjustStartAndEndComponentsForEventIfNeeded:(id)a3;
- (void)_allDayChanged:(id)a3;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_datePickerChanged:(id)a3;
- (void)_hideInlineDateControls;
- (void)_pickNextReasonableTime;
- (void)_refreshDatePicker;
- (void)_resetClassicStartString:(BOOL)a3 endString:(BOOL)a4;
- (void)_resetStartString:(BOOL)a3 endString:(BOOL)a4;
- (void)_setAllDay:(BOOL)a3;
- (void)_setEndDate:(id)a3;
- (void)_setEndTimeZone:(id)a3;
- (void)_setStartDate:(id)a3;
- (void)_setStartTimeZone:(id)a3;
- (void)_showInlineControls:(int64_t)a3 forSubitem:(int64_t)a4 includingInlineDatePicker:(BOOL)a5;
- (void)_updateClassicDateCellColors;
- (void)_updateClassicDateCellTimeWidths;
- (void)_updateDatePicker:(id)a3 animated:(BOOL)a4;
- (void)_validateTimezones;
- (void)adjustDatePickerInterval:(id)a3;
- (void)dateChanged:(id)a3 forSubitem:(int64_t)a4;
- (void)dateTimeCell:(id)a3 dateChanged:(id)a4;
- (void)dateTimeCellBeganEditing:(id)a3;
- (void)dateTimeCellDateTapped:(id)a3;
- (void)dateTimeCellEndedEditing:(id)a3;
- (void)dateTimeCellTimeTapped:(id)a3;
- (void)dealloc;
- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)editor:(id)a3 didStartEditingItem:(id)a4;
- (void)endInlineEditing;
- (void)refreshFromCalendarItemAndStore;
- (void)setupPickerConstraintsForCell:(id)a3 datePicker:(id)a4;
- (void)shortenCell:(id)a3;
- (void)timeZoneViewController:(id)a3 didSelectTimeZone:(id)a4;
- (void)timeZoneViewControllerDidCancel:(id)a3;
- (void)updateStartDateToDate:(id)a3;
@end

@implementation EKEventDateEditItem

- (EKEventDateEditItem)init
{
  v6.receiver = self;
  v6.super_class = EKEventDateEditItem;
  v2 = [(EKEventDateEditItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_selectedSubitem = 5;
    v2->_targetedSubitemForTimezone = 5;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = EKEventDateEditItem;
  [(EKEventDateEditItem *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = EKEventDateEditItem;
  v4 = [(EKEventDateEditItem *)&v10 description];
  v5 = v4;
  modernStartDateCell = self->_modernStartDateCell;
  if (!modernStartDateCell)
  {
    modernStartDateCell = self->_classicStartDateCell;
  }

  modernEndDateCell = self->_modernEndDateCell;
  if (!modernEndDateCell)
  {
    modernEndDateCell = self->_classicEndDateCell;
  }

  v8 = [v3 stringWithFormat:@"%@\n startDateCell:%@\n endDateCell:%@", v4, modernStartDateCell, modernEndDateCell];

  return v8;
}

- (void)refreshFromCalendarItemAndStore
{
  v21.receiver = self;
  v21.super_class = EKEventDateEditItem;
  [(EKCalendarItemEditItem *)&v21 refreshFromCalendarItemAndStore];
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  v4 = [WeakRetained startTimeZone];
  if ([v4 isUTC])
  {
    v5 = objc_loadWeakRetained(&self->super.super._store);
    v6 = [v5 timeZone];
    [(EKEventDateEditItem *)self _setStartTimeZone:v6];
  }

  else
  {
    v5 = [WeakRetained startTimeZone];
    [(EKEventDateEditItem *)self _setStartTimeZone:v5];
  }

  v7 = [WeakRetained endTimeZone];
  if (v7)
  {
    v8 = [WeakRetained endTimeZone];
    if ([v8 isUTC])
    {
      [(EKEventDateEditItem *)self _setEndTimeZone:self->_startTimeZone];
    }

    else
    {
      v9 = [WeakRetained endTimeZone];
      [(EKEventDateEditItem *)self _setEndTimeZone:v9];
    }
  }

  else
  {
    [(EKEventDateEditItem *)self _setEndTimeZone:self->_startTimeZone];
  }

  v10 = [WeakRetained startDate];
  v11 = [WeakRetained endDateUnadjustedForLegacyClients];
  pendingProposedTime = self->_pendingProposedTime;
  if (pendingProposedTime)
  {
    v13 = pendingProposedTime;
LABEL_12:
    v14 = v13;

    [WeakRetained duration];
    v15 = [(NSDate *)v14 dateByAddingTimeInterval:?];
    v10 = v14;

    v11 = v15;
    goto LABEL_16;
  }

  if ([(EKEventDateEditItem *)self proposedTime])
  {
    v16 = [WeakRetained proposedStartDate];

    if (v16)
    {
      v13 = [WeakRetained proposedStartDate];
      goto LABEL_12;
    }
  }

LABEL_16:
  v17 = [(EKEventDateEditItem *)self _calendarForEventComponents:1];
  v18 = [v17 components:254 fromDate:v10];
  [(EKEventDateEditItem *)self _setStartDate:v18];

  v19 = [(EKEventDateEditItem *)self _calendarForEventComponents:0];
  v20 = [v19 components:254 fromDate:v11];
  [(EKEventDateEditItem *)self _setEndDate:v20];

  -[EKEventDateEditItem _setAllDay:](self, "_setAllDay:", [WeakRetained isAllDay]);
  self->_needsTargetedReload = 1;
  [(EKEventDateEditItem *)self _adjustStartAndEndComponentsForEventIfNeeded:WeakRetained];
  [(EKEventDateEditItem *)self _refreshDatePicker];
}

- (void)updateStartDateToDate:(id)a3
{
  objc_storeStrong(&self->_pendingProposedTime, a3);
  v5 = a3;
  self->_selectedSubitem = 1;
  v7 = [(EKEventDateEditItem *)self _calendarForEventComponents:1];
  v6 = [v7 components:254 fromDate:v5];

  [(EKEventDateEditItem *)self _setStartDate:v6];
}

- (void)_refreshDatePicker
{
  [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
  [(EKEventDateEditItem *)self _updateDatePicker:0 animated:0];
  [(EKEventDateEditItem *)self _updateClassicDateCellTimeWidths];

  [(EKEventDateEditItem *)self _updateClassicDateCellTimeWidths];
}

- (void)_adjustStartAndEndComponentsForEventIfNeeded:(id)a3
{
  if ([a3 isAllDay])
  {
    [(NSDateComponents *)self->_startComponents setSecond:0];
    [(NSDateComponents *)self->_startComponents setMinute:0];
    [(NSDateComponents *)self->_startComponents setHour:0];
    [(NSDateComponents *)self->_endComponents setHour:23];
    [(NSDateComponents *)self->_endComponents setSecond:59];
    endComponents = self->_endComponents;

    [(NSDateComponents *)endComponents setMinute:59];
  }
}

- (BOOL)configureForCalendarConstraints:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditItem *)self event];
  startComponents = [v5 occurrenceDate];
  if (startComponents)
  {
    goto LABEL_2;
  }

  v9 = [v4 source];
  v10 = [v9 constraints];
  v11 = [v10 futureStartDateLimitedToOccurrenceCacheBounds];

  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = [(NSDateComponents *)self->_startComponents calendar];
  v5 = [v12 dateFromComponents:self->_startComponents];

  [v5 timeIntervalSinceReferenceDate];
  if ((CUIKCheckEventStartDateAgainstOccurrenceCacheBounds() & 1) == 0)
  {
    v13 = CUIKTodayComponents();
    startComponents = self->_startComponents;
    self->_startComponents = v13;
LABEL_2:
  }

LABEL_4:
  v7 = [(EKEventDateEditItem *)self canBeConfiguredForCalendarConstraints:v4];

  return v7;
}

- (unint64_t)onSaveEditorReloadBehavior
{
  if (self->_needsTargetedReload)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)onSaveEditItemsToRefresh
{
  v3 = [(EKEventEditItem *)self event];
  v4 = [v3 calendar];
  v5 = [v4 source];
  v6 = [v5 constraints];
  if ([v6 supportsAvailabilityRequests])
  {
    v7 = [(EKEventEditItem *)self event];
    v8 = [v7 hasAttendees];

    if (v8)
    {
      v9 = 22;
    }

    else
    {
      v9 = 18;
    }
  }

  else
  {
    v9 = 18;
  }

  return v9;
}

- (int64_t)_rowForSubitem:(int64_t)a3
{
  showsAllDay = self->_showsAllDay;
  result = a3 - (showsAllDay ^ 1);
  selectedSubitem = self->_selectedSubitem;
  if (selectedSubitem != 5)
  {
    if (a3 == 3)
    {
      v7 = !showsAllDay;
      v8 = 1;
      if (!v7)
      {
        v8 = 2;
      }

      return selectedSubitem + v8 - !self->_showingInlineDatePicker;
    }

    else if (a3 == 4)
    {
      return selectedSubitem + showsAllDay;
    }

    else if (selectedSubitem < a3)
    {
      return result - !self->_showingInlineDatePicker + 2;
    }
  }

  return result;
}

- (int64_t)_subitemForRow:(int64_t)a3
{
  v4 = !self->_showsAllDay + a3;
  if (v4 == self->_selectedSubitem + 1)
  {
    if (self->_showingInlineDatePicker || ![(EKEventDateEditItem *)self _shouldShowTimeZone])
    {
      return 4;
    }

    return 3;
  }

  if ([(EKEventDateEditItem *)self _shouldShowTimeZone]&& v4 == self->_selectedSubitem + 2 && self->_showingInlineDatePicker)
  {
    return 3;
  }

  if (v4 > 4)
  {
    return 5;
  }

  if (v4 > self->_selectedSubitem)
  {
    v5 = [(EKEventDateEditItem *)self _shouldShowTimeZone];
    v6 = -2;
    if (!v5)
    {
      v6 = -1;
    }

    v4 += v6;
  }

  return v4;
}

- (unint64_t)numberOfSubitems
{
  if (self->_showsAllDay)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = v3 + [(EKEventDateEditItem *)self _shouldShowTimeZone];
  if ((self->_selectedSubitem - 1) <= 1)
  {
    v4 += self->_showingInlineDatePicker;
  }

  return v4 - [(EKEventDateEditItem *)self proposedTime];
}

- (id)_modernStartDateCell
{
  modernStartDateCell = self->_modernStartDateCell;
  if (!modernStartDateCell)
  {
    v4 = [[EKDateTimeCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_modernStartDateCell;
    self->_modernStartDateCell = v4;

    [(EKDateTimeCell *)self->_modernStartDateCell setDateTimeDelegate:self];
    v6 = self->_modernStartDateCell;
    v7 = EventKitUIBundle();
    v8 = [v7 localizedStringForKey:@"Starts" value:&stru_1F4EF6790 table:0];
    [(EKDateTimeCell *)v6 setTitle:v8];

    [(EKDateTimeCell *)self->_modernStartDateCell setAccessibilityIdentifier:@"start-date-picker-cell"];
    modernStartDateCell = self->_modernStartDateCell;
  }

  return modernStartDateCell;
}

- (id)_modernEndDateCell
{
  modernEndDateCell = self->_modernEndDateCell;
  if (!modernEndDateCell)
  {
    v4 = [[EKDateTimeCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_modernEndDateCell;
    self->_modernEndDateCell = v4;

    [(EKDateTimeCell *)self->_modernEndDateCell setDateTimeDelegate:self];
    v6 = self->_modernEndDateCell;
    v7 = EventKitUIBundle();
    v8 = [v7 localizedStringForKey:@"Ends" value:&stru_1F4EF6790 table:0];
    [(EKDateTimeCell *)v6 setTitle:v8];

    [(EKDateTimeCell *)self->_modernEndDateCell setAccessibilityIdentifier:@"end-date-picker-cell"];
    modernEndDateCell = self->_modernEndDateCell;
  }

  return modernEndDateCell;
}

- (id)_classicStartDateCell
{
  if (!self->_classicStartDateCell)
  {
    v3 = EKUIUsesLargeTextLayout(0);
    v4 = [PreferencesTwoPartValueCell alloc];
    if (v3)
    {
      v5 = [(EKUITableViewCell *)v4 initWithStyle:3 reuseIdentifier:0];
      classicStartDateCell = self->_classicStartDateCell;
      self->_classicStartDateCell = v5;

      v7 = EventKitUIBundle();
      v8 = [v7 localizedStringForKey:@"Starts" value:&stru_1F4EF6790 table:0];
      v9 = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell textLabel];
      [v9 setText:v8];

      v10 = *MEMORY[0x1E69DDD80];
      v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      v12 = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell detailTextLabel];
      [v12 setFont:v11];

      v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
      v14 = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell largePart2TextLabel];
      [v14 setFont:v13];
    }

    else
    {
      v15 = [(EKUITableViewCell *)v4 initWithStyle:0 reuseIdentifier:0];
      v16 = self->_classicStartDateCell;
      self->_classicStartDateCell = v15;

      v17 = EventKitUIBundle();
      v18 = [v17 localizedStringForKey:@"Starts" value:&stru_1F4EF6790 table:0];
      v19 = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell textLabel];
      [v19 setText:v18];

      v20 = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell textLabel];
      v21 = [v20 font];
      v22 = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell twoPartTextLabel];
      [v22 setFont:v21];

      [(PreferencesTwoPartValueCell *)self->_classicStartDateCell setShortener:self];
    }
  }

  v23 = self->_classicStartDateCell;

  return v23;
}

- (id)_classicEndDateCell
{
  if (!self->_classicEndDateCell)
  {
    v3 = EKUIUsesLargeTextLayout(0);
    v4 = [PreferencesTwoPartValueCell alloc];
    if (v3)
    {
      v5 = [(EKUITableViewCell *)v4 initWithStyle:3 reuseIdentifier:0];
      classicEndDateCell = self->_classicEndDateCell;
      self->_classicEndDateCell = v5;

      v7 = EventKitUIBundle();
      v8 = [v7 localizedStringForKey:@"Ends" value:&stru_1F4EF6790 table:0];
      v9 = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell textLabel];
      [v9 setText:v8];

      v10 = *MEMORY[0x1E69DDD80];
      v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      v12 = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell detailTextLabel];
      [v12 setFont:v11];

      v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
      v14 = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell largePart2TextLabel];
      [v14 setFont:v13];
    }

    else
    {
      v15 = [(EKUITableViewCell *)v4 initWithStyle:0 reuseIdentifier:0];
      v16 = self->_classicEndDateCell;
      self->_classicEndDateCell = v15;

      v17 = EventKitUIBundle();
      v18 = [v17 localizedStringForKey:@"Ends" value:&stru_1F4EF6790 table:0];
      v19 = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell textLabel];
      [v19 setText:v18];

      v20 = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell textLabel];
      v21 = [v20 font];
      v22 = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell twoPartTextLabel];
      [v22 setFont:v21];

      [(PreferencesTwoPartValueCell *)self->_classicEndDateCell setShortener:self];
    }
  }

  v23 = self->_classicEndDateCell;

  return v23;
}

- (id)_allDayCell
{
  allDayCell = self->_allDayCell;
  if (!allDayCell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v5 = self->_allDayCell;
    self->_allDayCell = &v4->super;

    [(UITableViewCell *)self->_allDayCell setAccessibilityIdentifier:@"all-day-switch-cell"];
    v6 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v6 addTarget:self action:sel__allDayChanged_ forControlEvents:4096];
    [v6 setAccessibilityIdentifier:@"all-day-switch"];
    [(UITableViewCell *)self->_allDayCell setAccessoryView:v6];
    v7 = EventKitUIBundle();
    v8 = [v7 localizedStringForKey:@"All-day" value:&stru_1F4EF6790 table:0];
    v9 = [(UITableViewCell *)self->_allDayCell textLabel];
    [v9 setText:v8];

    allDayCell = self->_allDayCell;
  }

  return allDayCell;
}

- (id)_startTimeZoneCell
{
  startTimeZoneCell = self->_startTimeZoneCell;
  if (!startTimeZoneCell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v5 = self->_startTimeZoneCell;
    self->_startTimeZoneCell = &v4->super;

    v6 = [objc_opt_class() _timeZoneLocalizedString];
    v7 = [(UITableViewCell *)self->_startTimeZoneCell textLabel];
    [v7 setText:v6];

    [(UITableViewCell *)self->_startTimeZoneCell setAccessoryType:1];
    startTimeZoneCell = self->_startTimeZoneCell;
  }

  return startTimeZoneCell;
}

- (id)_endTimeZoneCell
{
  endTimeZoneCell = self->_endTimeZoneCell;
  if (!endTimeZoneCell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v5 = self->_endTimeZoneCell;
    self->_endTimeZoneCell = &v4->super;

    v6 = [objc_opt_class() _timeZoneLocalizedString];
    v7 = [(UITableViewCell *)self->_endTimeZoneCell textLabel];
    [v7 setText:v6];

    [(UITableViewCell *)self->_endTimeZoneCell setAccessoryType:1];
    endTimeZoneCell = self->_endTimeZoneCell;
  }

  return endTimeZoneCell;
}

+ (id)_timeZoneLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Time Zone" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)_newDatePicker
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC920]);
  if (EKUICatalyst())
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  [v3 setPreferredDatePickerStyle:v4];
  [v3 setMinuteInterval:5];
  [v3 setRoundsToMinuteInterval:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v5 setFirstWeekday:CUIKOneIndexedWeekStart()];
  [v3 setCalendar:v5];
  [v3 addTarget:self action:sel__datePickerChanged_ forControlEvents:4096];
  [v3 addTarget:self action:sel__datePickerEndedEditing_ forControlEvents:0x40000];

  return v3;
}

- (void)adjustDatePickerInterval:(id)a3
{
  v3 = a3;
  v7 = [v3 date];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 component:64 fromDate:v7];

  if (0xCCCCCCCCCCCCCCCDLL * v5 + 0x1999999999999999 >= 0x3333333333333333)
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  [v3 setMinuteInterval:v6];
}

- (id)_startDatePickerCell
{
  startDatePickerCell = self->_startDatePickerCell;
  if (!startDatePickerCell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_startDatePickerCell;
    self->_startDatePickerCell = &v4->super;

    v6 = [(EKEventDateEditItem *)self _newDatePicker];
    startDatePicker = self->_startDatePicker;
    self->_startDatePicker = v6;

    v8 = [(UITableViewCell *)self->_startDatePickerCell contentView];
    [v8 addSubview:self->_startDatePicker];

    if (self->_allDay)
    {
      v9 = 1;
    }

    else
    {
      v9 = 4272;
    }

    [(UIDatePicker *)self->_startDatePicker setDatePickerMode:v9];
    [(EKEventDateEditItem *)self setupPickerConstraintsForCell:self->_startDatePickerCell datePicker:self->_startDatePicker];
    startDatePickerCell = self->_startDatePickerCell;
  }

  return startDatePickerCell;
}

- (id)_endDatePickerCell
{
  endDatePickerCell = self->_endDatePickerCell;
  if (!endDatePickerCell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_endDatePickerCell;
    self->_endDatePickerCell = &v4->super;

    v6 = [(EKEventDateEditItem *)self _newDatePicker];
    endDatePicker = self->_endDatePicker;
    self->_endDatePicker = v6;

    v8 = [(UITableViewCell *)self->_endDatePickerCell contentView];
    [v8 addSubview:self->_endDatePicker];

    if (self->_allDay)
    {
      v9 = 1;
    }

    else
    {
      v9 = 4272;
    }

    [(UIDatePicker *)self->_endDatePicker setDatePickerMode:v9];
    [(EKEventDateEditItem *)self setupPickerConstraintsForCell:self->_endDatePickerCell datePicker:self->_endDatePicker];
    endDatePickerCell = self->_endDatePickerCell;
  }

  return endDatePickerCell;
}

- (void)setupPickerConstraintsForCell:(id)a3 datePicker:(id)a4
{
  v19 = MEMORY[0x1E695DF70];
  v5 = MEMORY[0x1E696ACD8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 contentView];
  v9 = [v5 constraintWithItem:v6 attribute:5 relatedBy:0 toItem:v8 attribute:5 multiplier:1.0 constant:0.0];
  v10 = MEMORY[0x1E696ACD8];
  v11 = [v7 contentView];
  v12 = [v10 constraintWithItem:v6 attribute:6 relatedBy:0 toItem:v11 attribute:6 multiplier:1.0 constant:0.0];
  v13 = MEMORY[0x1E696ACD8];
  v14 = [v7 contentView];
  v15 = [v13 constraintWithItem:v6 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
  v16 = MEMORY[0x1E696ACD8];
  v17 = [v7 contentView];

  v18 = [v16 constraintWithItem:v6 attribute:3 relatedBy:0 toItem:v17 attribute:3 multiplier:1.0 constant:0.0];

  v20 = [v19 arrayWithObjects:{v9, v12, v15, v18, 0}];

  [MEMORY[0x1E696ACD8] activateConstraints:v20];
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v5 = [(EKEventDateEditItem *)self _subitemForRow:?];
  v6 = 0;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (self->_selectedSubitem == 1)
      {
        [(EKEventDateEditItem *)self _startTimeZoneCell];
      }

      else
      {
        [(EKEventDateEditItem *)self _endTimeZoneCell];
      }
      v6 = ;
      if (self->_selectedSubitem == 1)
      {
        v9 = &OBJC_IVAR___EKEventDateEditItem__startTimeZone;
      }

      else
      {
        v9 = &OBJC_IVAR___EKEventDateEditItem__endTimeZone;
      }

      v10 = [(EKEventDateEditItem *)self _timeZoneDescription:*(&self->super.super.super.isa + *v9)];
      v11 = [v6 detailTextLabel];
      [v11 setText:v10];

      goto LABEL_33;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        NSLog(&cfstr_ThisShouldNeve.isa, 5, a3);
        v6 = 0;
      }

      goto LABEL_33;
    }

    if (self->_selectedSubitem == 1)
    {
      [(EKEventDateEditItem *)self _startDatePickerCell];
    }

    else
    {
      [(EKEventDateEditItem *)self _endDatePickerCell];
    }
    v6 = ;
    v12 = [v6 superview];

    if (v12)
    {
      goto LABEL_33;
    }

    if (self->_selectedSubitem == 1)
    {
      v13 = &OBJC_IVAR___EKEventDateEditItem__startDatePicker;
    }

    else
    {
      v13 = &OBJC_IVAR___EKEventDateEditItem__endDatePicker;
    }

    v8 = *(&self->super.super.super.isa + *v13);
    [(EKEventDateEditItem *)self _updateDatePicker:v8 animated:0];
    [(EKEventDateEditItem *)self adjustDatePickerInterval:v8];
LABEL_32:

    goto LABEL_33;
  }

  switch(v5)
  {
    case 0:
      v6 = [(EKEventDateEditItem *)self _allDayCell];
      v8 = [v6 accessoryView];
      [v8 setOn:self->_allDay];
      goto LABEL_32;
    case 1:
      if ([(EKEventDateEditItem *)self usesClassicUI])
      {
        [(EKEventDateEditItem *)self _classicStartDateCell];
      }

      else
      {
        [(EKEventDateEditItem *)self _modernStartDateCell];
      }

      break;
    case 2:
      if ([(EKEventDateEditItem *)self usesClassicUI])
      {
        [(EKEventDateEditItem *)self _classicEndDateCell];
      }

      else
      {
        [(EKEventDateEditItem *)self _modernEndDateCell];
      }

      break;
    default:
      goto LABEL_33;
  }
  v7 = ;
  v6 = v7;
LABEL_33:

  return v6;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4
{
  v7 = [(EKEventDateEditItem *)self _subitemForRow:?];
  if (v7 == 4)
  {
    v8 = [(EKEventDateEditItem *)self cellForSubitemAtIndex:a3];
    if (v8 == self->_startDatePickerCell)
    {
      v9 = &OBJC_IVAR___EKEventDateEditItem__startDatePicker;
    }

    else
    {
      v9 = &OBJC_IVAR___EKEventDateEditItem__endDatePicker;
    }

    [*(&self->super.super.super.isa + *v9) intrinsicContentSize];
    v11 = v10;
  }

  else
  {
    if ((v7 - 1) <= 1)
    {
      v12 = [(EKEventDateEditItem *)self cellForSubitemAtIndex:a3];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v12 usingMultiLineLayout])
      {
        [objc_opt_class() scaledHeightOfSystemTableViewCell];
        v11 = v14;

        return v11;
      }
    }

    v16.receiver = self;
    v16.super_class = EKEventDateEditItem;
    [(EKCalendarItemEditItem *)&v16 defaultCellHeightForSubitemAtIndex:a3 forWidth:a4];
    return v13;
  }

  return v11;
}

- (BOOL)editor:(id)a3 canSelectSubitem:(unint64_t)a4
{
  v5 = [(EKEventDateEditItem *)self _subitemForRow:a4];
  if ((v5 - 1) >= 2)
  {
    return v5 == 3;
  }

  return [(EKEventDateEditItem *)self usesClassicUI];
}

- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = EKEventDateEditItem;
  [(EKCalendarItemEditItem *)&v13 editor:a3 didSelectSubitem:?];
  v6 = [(EKEventDateEditItem *)self _subitemForRow:a4];
  if ((![(EKEventDateEditItem *)self usesClassicUI]|| ![(EKEventDateEditItem *)self handleClassicSubitemSelection:v6]) && v6 == 3)
  {
    self->_pushingTZController = 1;
    v7 = [[EKTimeZoneViewController alloc] initWithChooserStyle:0];
    v8 = v7;
    if (self->_selectedSubitem == 1)
    {
      v9 = &OBJC_IVAR___EKEventDateEditItem__startTimeZone;
    }

    else
    {
      v9 = &OBJC_IVAR___EKEventDateEditItem__endTimeZone;
    }

    [(EKTimeZoneViewController *)v7 setTimeZone:*(&self->super.super.super.isa + *v9)];
    [(EKTimeZoneViewController *)v8 setDelegate:self];
    v10 = [(EKCalendarItemEditItem *)self delegate];
    v11 = [v10 viewControllerForEditItem:self];

    v12 = [v11 navigationController];
    [v12 pushViewController:v8 animated:1];
  }

  [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
  [(EKEventDateEditItem *)self _updateClassicDateCellColors];
}

- (BOOL)handleClassicSubitemSelection:(int64_t)a3
{
  selectedSubitem = self->_selectedSubitem;
  if (selectedSubitem == a3)
  {
    [(EKEventDateEditItem *)self _hideInlineDateControls];
  }

  else if (a3 <= 2)
  {
    v6 = [MEMORY[0x1E696AD50] indexSet];
    v7 = [MEMORY[0x1E696AD50] indexSet];
    if (selectedSubitem <= 2)
    {
      [v6 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 4)}];
      if ([(EKEventDateEditItem *)self _shouldShowTimeZone])
      {
        [v6 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 3)}];
      }
    }

    self->_selectedSubitem = a3;
    self->_showingInlineDatePicker = 1;
    [v7 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", a3) + 1}];
    if ([(EKEventDateEditItem *)self _shouldShowTimeZone])
    {
      [v7 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", self->_selectedSubitem) + 2}];
    }

    if ([v6 count] || objc_msgSend(v7, "count"))
    {
      v8 = [(EKCalendarItemEditItem *)self delegate];
      [v8 editItem:self wantsRowInsertions:v7 rowDeletions:v6];

      v9 = [(EKEventDateEditItem *)self _rowForSubitem:1];
      v10 = [(EKEventDateEditItem *)self _rowForSubitem:2]+ 2 * (self->_selectedSubitem == 2);
      v11 = [MEMORY[0x1E696AD50] indexSet];
      [v11 addIndex:v9];
      [v11 addIndex:v10];
      v12 = [(EKCalendarItemEditItem *)self delegate];
      [v12 editItem:self wantsRowsScrolledToVisible:v11];
    }
  }

  return a3 < 3;
}

- (void)editor:(id)a3 didStartEditingItem:(id)a4
{
  v6 = a4;
  v7.receiver = self;
  v7.super_class = EKEventDateEditItem;
  [(EKCalendarItemEditItem *)&v7 editor:a3 didStartEditingItem:v6];
  if (v6 != self && [(EKEventDateEditItem *)v6 isInline])
  {
    [(EKEventDateEditItem *)self _hideInlineDateControls];
  }
}

- (void)endInlineEditing
{
  if (!self->_pushingTZController)
  {
    [(EKEventDateEditItem *)self _hideInlineDateControls];
  }
}

- (id)_calendarForEventComponents:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [(EKEventEditItem *)self event];
  if (([v6 isFloating] & 1) != 0 || self->_allDay)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._store);
    v8 = [WeakRetained timeZone];
    [v5 setTimeZone:v8];
  }

  else
  {
    v9 = &OBJC_IVAR___EKEventDateEditItem__endTimeZone;
    if (v3)
    {
      v9 = &OBJC_IVAR___EKEventDateEditItem__startTimeZone;
    }

    [v5 setTimeZone:*(&self->super.super.super.isa + *v9)];
  }

  return v5;
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  v5 = [(EKEventEditItem *)self event];
  v6 = v5;
  if (self->_showsAllDay)
  {
    if (self->_allDay == [v5 isAllDay])
    {
      v7 = 0;
    }

    else
    {
      [v6 setAllDay:?];
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if (!self->_allDay)
  {
    v8 = [v6 startTimeZone];
    if (v8 || self->_startTimeZone)
    {
      v3 = [v6 startTimeZone];
      if (([v3 isEqual:self->_startTimeZone] & 1) == 0)
      {

LABEL_18:
        [v6 setStartTimeZone:self->_startTimeZone];
        [v6 setEndTimeZone:self->_endTimeZone];
        v7 = 1;
        goto LABEL_19;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v6 endTimeZone];
    if (v10 || self->_endTimeZone)
    {
      v11 = [v6 endTimeZone];
      v12 = [v11 isEqual:self->_endTimeZone];

      if (v9)
      {
      }

      if ((v12 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v9)
      {
      }
    }
  }

LABEL_19:
  v13 = [(EKEventDateEditItem *)self _calendarForEventComponents:1];
  v14 = [(EKEventDateEditItem *)self _calendarForEventComponents:0];
  v15 = [v13 dateFromComponents:self->_startComponents];
  v16 = [v14 dateFromComponents:self->_endComponents];
  v17 = [v6 startDate];
  if ([v17 isEqualToDate:v15])
  {
    v18 = [v6 endDateUnadjustedForLegacyClients];
    v19 = [v18 isEqualToDate:v16];

    if (v19)
    {
      if (!v7)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  else
  {
  }

  [v6 setStartDate:v15];
  [v6 setEndDateUnadjustedForLegacyClients:v16];
LABEL_25:
  v20 = [v6 suggestionInfo];

  if (v20)
  {
    [MEMORY[0x1E69930D0] trackPseudoEventDateChanged];
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  self->_needsTargetedReload = 1;
LABEL_28:

  return 1;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  [(EKDateTimeCell *)self->_modernStartDateCell contentSizeCategoryChanged];
  [(EKDateTimeCell *)self->_modernEndDateCell contentSizeCategoryChanged];
  classicStartDateCell = self->_classicStartDateCell;
  self->_classicStartDateCell = 0;

  classicEndDateCell = self->_classicEndDateCell;
  self->_classicEndDateCell = 0;

  allDayCell = self->_allDayCell;
  self->_allDayCell = 0;

  startTimeZoneCell = self->_startTimeZoneCell;
  self->_startTimeZoneCell = 0;

  endTimeZoneCell = self->_endTimeZoneCell;
  self->_endTimeZoneCell = 0;

  [(EKEventDateEditItem *)self _refreshDatePicker];
}

- (void)_updateClassicDateCellTimeWidths
{
  if ([(EKEventDateEditItem *)self usesClassicUI])
  {
    v13 = [(EKEventDateEditItem *)self _classicStartDateCell];
    v3 = [v13 twoPartTextLabel];
    [v3 rightmostDisplayedPartWidth];
    v5 = v4;

    v6 = [(EKEventDateEditItem *)self _classicEndDateCell];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 twoPartTextLabel];
      [v8 rightmostDisplayedPartWidth];
      v10 = v9;

      if (v10 > v5)
      {
        v5 = v10;
      }
    }

    v11 = [v13 twoPartTextLabel];
    [v11 setMinimumPart2Width:v5];

    v12 = [v7 twoPartTextLabel];
    [v12 setMinimumPart2Width:v5];
  }
}

- (void)_updateClassicDateCellColors
{
  if ([(EKEventDateEditItem *)self usesClassicUI])
  {
    v20 = [(EKEventDateEditItem *)self _classicStartDateCell];
    v3 = [(EKEventDateEditItem *)self _classicEndDateCell];
    v4 = [MEMORY[0x1E69DC888] labelColor];
    v5 = CalendarAppTintColor();
    v6 = EKUIUsesLargeTextLayout(0);
    if (self->_selectedSubitem == 1)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v6)
    {
      v8 = [v20 detailTextLabel];
      [v8 setTextColor:v7];

      if (self->_selectedSubitem == 1)
      {
        v9 = v5;
      }

      else
      {
        v9 = v4;
      }

      v10 = [v20 largePart2TextLabel];
      [v10 setTextColor:v9];

      if (self->_selectedSubitem == 2)
      {
        v11 = v5;
      }

      else
      {
        v11 = v4;
      }

      v12 = [v3 detailTextLabel];
      [v12 setTextColor:v11];

      if (self->_selectedSubitem == 2)
      {
        v13 = v5;
      }

      else
      {
        v13 = v4;
      }

      v14 = [v3 largePart2TextLabel];
      [v14 setTextColor:v13];

      [v3 setStrikeThroughLargeDetailTextLabel:{-[EKEventDateEditItem _endDateIsBeforeStartDate](self, "_endDateIsBeforeStartDate")}];
      [v3 setStrikeThroughLargePart2TextLabel:{-[EKEventDateEditItem _endDateIsBeforeStartDate](self, "_endDateIsBeforeStartDate")}];
    }

    else
    {
      v15 = [v20 twoPartTextLabel];
      [v15 setTextColor:v7];

      if (self->_selectedSubitem == 2)
      {
        v16 = v5;
      }

      else
      {
        v16 = v4;
      }

      v17 = [v3 twoPartTextLabel];
      [v17 setTextColor:v16];

      v18 = [v3 twoPartTextLabel];
      [v18 setStrikethroughPart1:{-[EKEventDateEditItem _endDateIsBeforeStartDate](self, "_endDateIsBeforeStartDate")}];

      v19 = [v3 twoPartTextLabel];
      [v19 setStrikethroughPart2:{-[EKEventDateEditItem _endDateIsBeforeStartDate](self, "_endDateIsBeforeStartDate")}];
    }
  }
}

- (void)shortenCell:(id)a3
{
  v14 = a3;
  if (self->_shorteningStatus != 2)
  {
    v4 = _CalendarForFormattingStrings();
    v5 = v14;
    if (self->_classicStartDateCell == v14 && (-[PreferencesTwoPartValueCell twoPartTextLabel](v14, "twoPartTextLabel"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasTwoParts], v6, v5 = v14, (v7 & 1) != 0))
    {
      v8 = &OBJC_IVAR___EKEventDateEditItem__startComponents;
    }

    else
    {
      if (self->_classicEndDateCell != v5)
      {
        goto LABEL_9;
      }

      v9 = [(PreferencesTwoPartValueCell *)v14 twoPartTextLabel];
      v10 = [v9 hasTwoParts];

      if (!v10)
      {
        goto LABEL_9;
      }

      v8 = &OBJC_IVAR___EKEventDateEditItem__endComponents;
      v5 = v14;
    }

    v11 = [(PreferencesTwoPartValueCell *)v5 twoPartTextLabel];
    v12 = [v4 dateFromComponents:*(&self->super.super.super.isa + *v8)];
    v13 = CUIKShortStringForDateWithMonthAndYear();
    [v11 setTextPart1:v13];

LABEL_9:
  }
}

- (void)timeZoneViewController:(id)a3 didSelectTimeZone:(id)a4
{
  v5 = a4;
  self->_pushingTZController = 0;
  targetedSubitemForTimezone = self->_targetedSubitemForTimezone;
  if (targetedSubitemForTimezone == 5)
  {
    targetedSubitemForTimezone = self->_selectedSubitem;
  }

  v12 = v5;
  if (targetedSubitemForTimezone == 1)
  {
    if ([(NSTimeZone *)self->_startTimeZone isEqualToTimeZone:self->_endTimeZone])
    {
      [(EKEventDateEditItem *)self _setEndTimeZone:v12];
    }

    [(EKEventDateEditItem *)self _setStartTimeZone:v12];
  }

  else
  {
    [(EKEventDateEditItem *)self _setEndTimeZone:v5];
  }

  [(EKEventDateEditItem *)self saveAndDismissWithForce:1];
  v7 = [(EKCalendarItemEditItem *)self delegate];
  [v7 editItem:self wantsDoneButtonDisabled:0];

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:[(EKEventDateEditItem *)self _rowForSubitem:3]];
  v8 = [(EKCalendarItemEditItem *)self delegate];
  v9 = [v8 viewControllerForEditItem:self];

  v10 = [v9 navigationController];
  v11 = [v10 popViewControllerAnimated:1];

  self->_targetedSubitemForTimezone = 5;
}

- (void)timeZoneViewControllerDidCancel:(id)a3
{
  self->_pushingTZController = 0;
  self->_targetedSubitemForTimezone = 5;
  if (self->_selectedSubitem == 1)
  {
    v3 = &OBJC_IVAR___EKEventDateEditItem__startTimeZone;
  }

  else
  {
    v3 = &OBJC_IVAR___EKEventDateEditItem__endTimeZone;
  }

  [a3 setTimeZone:*(&self->super.super.super.isa + *v3)];
}

- (void)_setStartDate:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_startComponents] & 1) == 0)
  {
    v4 = [v6 copy];
    startComponents = self->_startComponents;
    self->_startComponents = v4;

    [(NSDateComponents *)self->_startComponents setTimeZone:0];
    [(EKEventDateEditItem *)self _resetStartString:1 endString:self->_endTimeWasMessedUp];
    [(EKEventDateEditItem *)self _updateClassicDateCellColors];
    [(EKEventDateEditItem *)self _updateClassicDateCellTimeWidths];
    if (self->_selectedSubitem == 1 && !self->_changingDate)
    {
      [(EKEventDateEditItem *)self _updateDatePicker:0 animated:0];
    }
  }
}

- (void)_setEndDate:(id)a3
{
  v9 = a3;
  v4 = [v9 isEqual:self->_endComponents];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = [v9 copy];
    endComponents = self->_endComponents;
    self->_endComponents = v6;

    [(NSDateComponents *)self->_endComponents setTimeZone:0];
    if (!self->_allDay)
    {
      v8 = ![(NSDateComponents *)self->_endComponents hour]&& ![(NSDateComponents *)self->_endComponents minute]&& [(NSDateComponents *)self->_endComponents second]== 0;
      self->_timedEventEndedAtMidnight = v8;
    }

    [(EKEventDateEditItem *)self _resetStartString:0 endString:1];
    if (self->_selectedSubitem == 2 && !self->_changingDate)
    {
      [(EKEventDateEditItem *)self _updateDatePicker:0 animated:0];
    }

    [(EKEventDateEditItem *)self _updateClassicDateCellColors];
    [(EKEventDateEditItem *)self _updateClassicDateCellTimeWidths];
    v5 = v9;
  }
}

- (void)_setAllDay:(BOOL)a3
{
  if (self->_allDay == a3)
  {
    return;
  }

  self->_allDay = a3;
  if (self->_showsAllDay)
  {
    v4 = [(EKEventDateEditItem *)self _allDayCell];
    v5 = [v4 accessoryView];
    [v5 setOn:self->_allDay];
    if (!self->_allDay)
    {
      v6 = [MEMORY[0x1E695DFE8] calendarTimeZone];
      [(EKEventDateEditItem *)self _setStartTimeZone:v6];

      v7 = [MEMORY[0x1E695DFE8] calendarTimeZone];
      [(EKEventDateEditItem *)self _setEndTimeZone:v7];

      if (![(NSDateComponents *)self->_startComponents hour]&& ![(NSDateComponents *)self->_startComponents minute]&& ![(NSDateComponents *)self->_startComponents second]&& [(NSDateComponents *)self->_endComponents hour]== 23 && [(NSDateComponents *)self->_endComponents minute]== 59 && [(NSDateComponents *)self->_endComponents second]== 59)
      {
        [(EKEventDateEditItem *)self _pickNextReasonableTime];
      }
    }

    if (!self->_allDay)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (a3)
  {
LABEL_14:
    if ((self->_selectedSubitem - 1) <= 1)
    {
      self->_currentPickerMode = 1;
    }
  }

LABEL_16:
  [(EKEventDateEditItem *)self _adjustEndDateIfNeededAfterTogglingAllDay];
  [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
  [(EKEventDateEditItem *)self _updateDatePicker:0 animated:1];
  [(EKEventDateEditItem *)self _updateClassicDateCellColors];

  [(EKEventDateEditItem *)self _updateClassicDateCellTimeWidths];
}

- (void)_adjustEndDateIfNeededAfterTogglingAllDay
{
  if (self->_timedEventEndedAtMidnight)
  {
    allDay = self->_allDay;
    endComponents = self->_endComponents;
    v5 = [(NSDateComponents *)endComponents day];
    if (allDay)
    {
      v6 = v5 - 1;
    }

    else
    {
      v6 = v5 + 1;
    }

    [(NSDateComponents *)endComponents setDay:v6];
  }
}

- (void)_validateTimezones
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  v3 = CalCopyTimeZone();
  v8 = 1;
  if ((-[NSTimeZone isUTC](self->_startTimeZone, "isUTC") & 1) != 0 || ([WeakRetained startDate], v4 = objc_claimAutoreleasedReturnValue(), v5 = CUIKTimezonesDivergeAtDate(), v4, (v5 & 1) == 0))
  {
    if ((-[NSTimeZone isUTC](self->_endTimeZone, "isUTC") & 1) != 0 || ([WeakRetained endDateUnadjustedForLegacyClients], v6 = objc_claimAutoreleasedReturnValue(), v7 = CUIKTimezonesDivergeAtDate(), v6, (v7 & 1) == 0))
    {
      v8 = 0;
    }
  }

  self->_showTimeZones = v8;
}

- (void)_setStartTimeZone:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToTimeZone:self->_startTimeZone] & 1) == 0)
  {
    objc_storeStrong(&self->_startTimeZone, a3);
    [(EKEventDateEditItem *)self _validateTimezones];
    [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
    v5 = [(EKEventDateEditItem *)self _timeZoneDescription:self->_startTimeZone];
    v6 = [(UITableViewCell *)self->_startTimeZoneCell detailTextLabel];
    [v6 setText:v5];
  }
}

- (void)_setEndTimeZone:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToTimeZone:self->_endTimeZone] & 1) == 0)
  {
    objc_storeStrong(&self->_endTimeZone, a3);
    [(EKEventDateEditItem *)self _validateTimezones];
    [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
    v5 = [(EKEventDateEditItem *)self _timeZoneDescription:self->_endTimeZone];
    v6 = [(UITableViewCell *)self->_endTimeZoneCell detailTextLabel];
    [v6 setText:v5];
  }
}

- (void)dateTimeCellDateTapped:(id)a3
{
  if (self->_modernStartDateCell == a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(EKEventDateEditItem *)self _showInlineControls:1 forSubitem:v3 includingInlineDatePicker:1];
}

- (void)dateTimeCellTimeTapped:(id)a3
{
  if (self->_modernStartDateCell == a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(EKEventDateEditItem *)self _showInlineControls:0 forSubitem:v3 includingInlineDatePicker:1];
}

- (void)dateTimeCell:(id)a3 dateChanged:(id)a4
{
  if (self->_modernStartDateCell == a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [(EKEventDateEditItem *)self dateChanged:a4 forSubitem:v5];
}

- (void)dateTimeCellBeganEditing:(id)a3
{
  if (self->_modernStartDateCell == a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(EKEventDateEditItem *)self _showInlineControls:0 forSubitem:v3 includingInlineDatePicker:0];
}

- (void)dateTimeCellEndedEditing:(id)a3
{
  v4 = a3;
  if (!self->_modifyingVisibleControls)
  {
    selectedSubitem = self->_selectedSubitem;
    v6 = v4;
    [(EKEventDateEditItem *)self _hideInlineDateControls];
    v4 = v6;
    if (self->_pushingTZController)
    {
      self->_targetedSubitemForTimezone = selectedSubitem;
    }
  }
}

- (void)_showInlineControls:(int64_t)a3 forSubitem:(int64_t)a4 includingInlineDatePicker:(BOOL)a5
{
  v5 = a5;
  if (*&self->_selectedSubitem == __PAIR128__(a3, a4))
  {

    [(EKEventDateEditItem *)self _hideInlineDateControls];
    return;
  }

  v9 = [(EKEventDateEditItem *)self _shouldShowTimeZone];
  showingInlineDatePicker = self->_showingInlineDatePicker;
  self->_currentPickerMode = a3;
  v33 = 211;
  self->_modifyingVisibleControls = 1;
  selectedSubitem = self->_selectedSubitem;
  if (selectedSubitem == a4)
  {
    self->_showingInlineDatePicker = v5;
    [(EKEventDateEditItem *)self _updateDatePicker:0 animated:0];
    [(EKEventDateEditItem *)self _resetStartString:a4 == 1 endString:a4 == 2];
    v12 = 0;
    v13 = 0;
    if (v9 != [(EKEventDateEditItem *)self _shouldShowTimeZone])
    {
      v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 3)}];
      if (v9)
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }

      if (v9)
      {
        v13 = 0;
      }

      else
      {
        v13 = v14;
      }
    }

    if (showingInlineDatePicker != v5)
    {
      v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", a4) + 1}];
      v16 = v15;
      if (showingInlineDatePicker)
      {
        if (v12)
        {
          v17 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v12];
          [v17 addIndexes:v16];

          v12 = v17;
        }

        else
        {
          v12 = v15;
        }
      }

      else if (v13)
      {
        v31 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v13];
        [v31 addIndexes:v16];

        v13 = v31;
      }

      else
      {
        v13 = v15;
      }
    }

    v32 = MEMORY[0x1E69DD250];
    if (v13 | v12)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __80__EKEventDateEditItem__showInlineControls_forSubitem_includingInlineDatePicker___block_invoke;
      v37[3] = &unk_1E843EC38;
      v37[4] = self;
      v38 = v13;
      v39 = v12;
      [v32 performWithoutAnimation:v37];
    }

    else
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __80__EKEventDateEditItem__showInlineControls_forSubitem_includingInlineDatePicker___block_invoke_2;
      v36[3] = &unk_1E843EC60;
      v36[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v36];
    }

    self->_modifyingVisibleControls = 0;

    return;
  }

  v18 = [MEMORY[0x1E696AD50] indexSet];
  v19 = [MEMORY[0x1E696AD50] indexSet];
  if (selectedSubitem <= 2)
  {
    if (showingInlineDatePicker)
    {
      [v18 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 4)}];
    }

    if (v9)
    {
      [v18 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 3)}];
    }
  }

  if (selectedSubitem == 1)
  {
    v20 = &OBJC_IVAR___EKEventDateEditItem__modernStartDateCell;
    goto LABEL_26;
  }

  if (selectedSubitem == 2)
  {
    v20 = &OBJC_IVAR___EKEventDateEditItem__modernEndDateCell;
LABEL_26:
    [*(&self->super.super.super.isa + *v20) resetDatePickerSelection];
  }

  self->_selectedSubitem = a4;
  self->_showingInlineDatePicker = v5;
  v21 = [(EKEventDateEditItem *)self _rowForSubitem:a4, v33];
  v22 = v21 + 1;
  if (self->_showingInlineDatePicker)
  {
    v23 = v21;
    [v19 addIndex:v22];
    v22 = v23 + 2;
  }

  if ([(EKEventDateEditItem *)self _shouldShowTimeZone])
  {
    [v19 addIndex:v22];
  }

  if ([v18 count] || objc_msgSend(v19, "count"))
  {
    v24 = [(EKCalendarItemEditItem *)self delegate];
    [v24 editItem:self wantsRowInsertions:v19 rowDeletions:v18];

    v25 = [(EKEventDateEditItem *)self _rowForSubitem:1];
    v26 = [(EKEventDateEditItem *)self _rowForSubitem:2]+ 2 * (self->_selectedSubitem == 2);
    v27 = [MEMORY[0x1E696AD50] indexSet];
    [v27 addIndex:v25];
    [v27 addIndex:v26];
    v28 = [(EKCalendarItemEditItem *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if ((v26 & 1) != 0 && v5)
    {
      v29 = dispatch_time(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__EKEventDateEditItem__showInlineControls_forSubitem_includingInlineDatePicker___block_invoke_3;
      block[3] = &unk_1E843EC60;
      block[4] = self;
      dispatch_after(v29, MEMORY[0x1E69E96A0], block);
    }

    v30 = [(EKCalendarItemEditItem *)self delegate];
    [v30 editItem:self wantsRowsScrolledToVisible:v27];
  }

  *(&self->super.super.super.isa + v34) = 0;
  [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
}

void __80__EKEventDateEditItem__showInlineControls_forSubitem_includingInlineDatePicker___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 editItem:*(a1 + 32) wantsRowInsertions:*(a1 + 40) rowDeletions:*(a1 + 48)];
}

void __80__EKEventDateEditItem__showInlineControls_forSubitem_includingInlineDatePicker___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 editItemWantsFirstResponderResigned:*(a1 + 32)];
}

- (void)_hideInlineDateControls
{
  if (self->_selectedSubitem == 5)
  {
    return;
  }

  if (![(EKEventDateEditItem *)self usesClassicUI])
  {
    selectedSubitem = self->_selectedSubitem;
    if (selectedSubitem == 1)
    {
      v4 = &OBJC_IVAR___EKEventDateEditItem__modernStartDateCell;
      goto LABEL_7;
    }

    if (selectedSubitem == 2)
    {
      v4 = &OBJC_IVAR___EKEventDateEditItem__modernEndDateCell;
LABEL_7:
      [*(&self->super.super.super.isa + *v4) resetDatePickerSelection];
    }
  }

  v6 = [MEMORY[0x1E696AD50] indexSet];
  if (self->_showingInlineDatePicker)
  {
    [v6 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 4)}];
  }

  if ([(EKEventDateEditItem *)self _shouldShowTimeZone])
  {
    [v6 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 3)}];
  }

  self->_selectedSubitem = 5;
  self->_showingInlineDatePicker = 0;
  if ([v6 count])
  {
    v5 = [(EKCalendarItemEditItem *)self delegate];
    [v5 editItem:self wantsRowInsertions:0 rowDeletions:v6];
  }

  [(EKEventDateEditItem *)self _updateClassicDateCellColors];
  [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
  [(EKCalendarItemEditItem *)self notifyDidEndEditing];
}

- (void)_pickNextReasonableTime
{
  v3 = CUIKNowComponentsSystemTime();
  v11 = [(EKEventDateEditItem *)self _dateInSystemCalendarFromComponents:v3];

  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setHour:1];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 dateByAddingComponents:v4 toDate:v11 options:0];

  v7 = [(EKEventDateEditItem *)self _dateComponentsInSystemCalendarFromDate:v6];
  -[NSDateComponents setHour:](self->_startComponents, "setHour:", [v7 hour]);

  [(NSDateComponents *)self->_startComponents setMinute:0];
  [(NSDateComponents *)self->_startComponents setSecond:0];
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 dateByAddingComponents:v4 toDate:v6 options:0];

  v10 = [(EKEventDateEditItem *)self _dateComponentsInSystemCalendarFromDate:v9];
  -[NSDateComponents setHour:](self->_endComponents, "setHour:", [v10 hour]);

  [(NSDateComponents *)self->_endComponents setMinute:0];
  [(NSDateComponents *)self->_endComponents setSecond:0];
}

- (void)_resetClassicStartString:(BOOL)a3 endString:(BOOL)a4
{
  v4 = a4;
  if (a3 && self->_startComponents)
  {
    v6 = [(EKEventDateEditItem *)self _classicStartDateCell];
    if (v6)
    {
      if (self->_showTimeZones)
      {
        startTimeZone = self->_startTimeZone;
      }

      else
      {
        startTimeZone = 0;
      }

      v10 = startTimeZone;
      startComponents = self->_startComponents;
      allDay = self->_allDay;
      v13 = self->_shorteningStatus != 0;
      v31 = 0;
      v32 = 0;
      _StringValuePartsForDateComponents(startComponents, 0, v10, allDay, 0, v13, &v32, &v31);
      v14 = v32;
      v15 = v31;
      if (EKUIUsesLargeTextLayout(0))
      {
        v16 = [v6 detailTextLabel];
        [v16 setText:v14];

        v17 = [v6 largePart2TextLabel];
        [v17 setText:v15];
      }

      else
      {
        v17 = [v6 twoPartTextLabel];
        [v17 setTextPart1:v14 part2:v15];
      }

      [v6 setNeedsLayout];
      if (!v4)
      {
        goto LABEL_20;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  if (!v4)
  {
LABEL_20:
    v8 = v6;
    goto LABEL_23;
  }

LABEL_8:
  if (!self->_endComponents)
  {
    goto LABEL_20;
  }

  v8 = [(EKEventDateEditItem *)self _classicEndDateCell];

  if (v8)
  {
    if (self->_showTimeZones)
    {
      endTimeZone = self->_endTimeZone;
    }

    else
    {
      endTimeZone = 0;
    }

    v18 = endTimeZone;
    v19 = [(NSDateComponents *)self->_startComponents copy];
    endComponents = self->_endComponents;
    v21 = self->_allDay;
    v22 = self->_shorteningStatus != 0;
    v29 = 0;
    v30 = 0;
    _StringValuePartsForDateComponents(endComponents, v19, v18, v21, 0, v22, &v30, &v29);
    v23 = v30;
    v24 = v29;
    v25 = self->_startComponents;
    self->_startComponents = v19;
    v26 = v19;

    if (EKUIUsesLargeTextLayout(0))
    {
      v27 = [v8 detailTextLabel];
      [v27 setText:v23];

      v28 = [v8 largePart2TextLabel];
      [v28 setText:v24];
    }

    else
    {
      v28 = [v8 twoPartTextLabel];
      [v28 setTextPart1:v23 part2:v24];
    }

    [v8 setNeedsLayout];
  }

LABEL_23:
}

- (void)_resetStartString:(BOOL)a3 endString:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(EKEventDateEditItem *)self usesClassicUI])
  {

    [(EKEventDateEditItem *)self _resetClassicStartString:v5 endString:v4];
    return;
  }

  if (!v5 || !self->_startComponents)
  {
    v8 = 0;
LABEL_11:
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v7 = [(EKEventDateEditItem *)self _modernStartDateCell];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  if (self->_showTimeZones)
  {
    startTimeZone = self->_startTimeZone;
  }

  else
  {
    startTimeZone = 0;
  }

  [v7 updateWithDate:self->_startComponents timeZone:startTimeZone allDay:self->_allDay needsStrikethrough:0];
  [v8 setNeedsLayout];
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (self->_endComponents)
  {
    v16 = [(EKEventDateEditItem *)self _modernEndDateCell];

    v10 = v16;
    if (v16)
    {
      v11 = [(NSDateComponents *)self->_startComponents copy];
      startComponents = self->_startComponents;
      self->_startComponents = v11;
      v13 = v11;

      v14 = [(EKEventDateEditItem *)self _endDateIsBeforeStartDate];
      if (self->_showTimeZones)
      {
        endTimeZone = self->_endTimeZone;
      }

      else
      {
        endTimeZone = 0;
      }

      [v16 updateWithDate:self->_endComponents timeZone:endTimeZone allDay:self->_allDay needsStrikethrough:v14];

      [v16 setNeedsLayout];
      v10 = v16;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = v8;
LABEL_21:
}

- (BOOL)_endDateIsBeforeStartDate
{
  if (!self->_startComponents || !self->_endComponents)
  {
    return 0;
  }

  if (self->_allDay)
  {
    v3 = [(NSDateComponents *)self->_startComponents copy];
    [v3 setHour:0x7FFFFFFFFFFFFFFFLL];
    [v3 setMinute:0x7FFFFFFFFFFFFFFFLL];
    [v3 setSecond:0x7FFFFFFFFFFFFFFFLL];
    v4 = [(NSDateComponents *)self->_endComponents copy];
    [v4 setHour:0x7FFFFFFFFFFFFFFFLL];
    [v4 setMinute:0x7FFFFFFFFFFFFFFFLL];
    [v4 setSecond:0x7FFFFFFFFFFFFFFFLL];
    v5 = [(EKEventDateEditItem *)self _dateInSystemCalendarFromComponents:v3];
    v6 = [(EKEventDateEditItem *)self _dateInSystemCalendarFromComponents:v4];
  }

  else
  {
    v5 = [EKEventDateEditItem _dateFromComponents:"_dateFromComponents:timeZone:" timeZone:?];
    if (self->_showTimeZones)
    {
      endTimeZone = self->_endTimeZone;
    }

    else
    {
      endTimeZone = 0;
    }

    v6 = [(EKEventDateEditItem *)self _dateFromComponents:self->_endComponents timeZone:endTimeZone];
  }

  v7 = [v6 compare:v5] == -1;

  return v7;
}

- (void)_updateDatePicker:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v27 = a3;
  currentPickerMode = self->_currentPickerMode;
  v17 = ![(EKEventDateEditItem *)self usesClassicUI];
  v7 = 4272;
  if (v17)
  {
    v7 = currentPickerMode;
  }

  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  if (self->_allDay)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  if (v27)
  {
    [(UIDatePicker *)v27 setPreferredDatePickerStyle:v8];
    endDatePicker = v27;
  }

  else
  {
    [(UIDatePicker *)self->_startDatePicker setPreferredDatePickerStyle:v8];
    [(UIDatePicker *)self->_endDatePicker setPreferredDatePickerStyle:v8];
    [(UIDatePicker *)self->_startDatePicker setDatePickerMode:v9];
    endDatePicker = self->_endDatePicker;
  }

  [(UIDatePicker *)endDatePicker setDatePickerMode:v9];
  if (self->_selectedSubitem != 1)
  {
    v13 = (self->_selectedSubitem - 1) < 2;
    goto LABEL_19;
  }

  if (self->_startComponents && self->_endComponents)
  {
    v11 = [(EKEventDateEditItem *)self _endDateIsBeforeStartDate];
    selectedSubitem = self->_selectedSubitem;
    v13 = (selectedSubitem - 1) < 2;
    self->_endTimeWasMessedUp = v11;
    if (selectedSubitem == 1)
    {
      goto LABEL_21;
    }

LABEL_19:
    v14 = &OBJC_IVAR___EKEventDateEditItem__endComponents;
    goto LABEL_22;
  }

  v13 = 1;
LABEL_21:
  v14 = &OBJC_IVAR___EKEventDateEditItem__startComponents;
LABEL_22:
  v15 = *(&self->super.super.super.isa + *v14);
  v16 = v15;
  v17 = !v13 || v15 == 0;
  if (!v17)
  {
    if (self->_selectedSubitem == 1)
    {
      v18 = &OBJC_IVAR___EKEventDateEditItem__startDatePicker;
    }

    else
    {
      v18 = &OBJC_IVAR___EKEventDateEditItem__endDatePicker;
    }

    v19 = *(&self->super.super.super.isa + *v18);
    v20 = [(EKEventDateEditItem *)self _dateInSystemCalendarFromComponents:v16];
    [v19 setDate:v20 animated:v4];
    if (self->_selectedSubitem == 1)
    {
      v21 = &OBJC_IVAR___EKEventDateEditItem__modernStartDateCell;
    }

    else
    {
      v21 = &OBJC_IVAR___EKEventDateEditItem__modernEndDateCell;
    }

    v22 = *(&self->super.super.super.isa + *v21);
    if (self->_selectedSubitem == 1)
    {
      v23 = &OBJC_IVAR___EKEventDateEditItem__startTimeZone;
    }

    else
    {
      v23 = &OBJC_IVAR___EKEventDateEditItem__endTimeZone;
    }

    v24 = *(&self->super.super.super.isa + *v23);
    v25 = self->_selectedSubitem == 2 && [(EKEventDateEditItem *)self _endDateIsBeforeStartDate];
    if (self->_showTimeZones)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    [v22 updateWithDate:v16 timeZone:v26 allDay:self->_allDay needsStrikethrough:v25];
  }
}

- (void)_datePickerChanged:(id)a3
{
  v4 = a3;
  v7 = [(UIDatePicker *)v4 date];
  startDatePicker = self->_startDatePicker;

  if (startDatePicker == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(EKEventDateEditItem *)self dateChanged:v7 forSubitem:v6];
}

- (void)dateChanged:(id)a3 forSubitem:(int64_t)a4
{
  v17 = a3;
  self->_changingDate = 1;
  v6 = [(EKCalendarItemEditItem *)self delegate];
  [v6 editItem:self wantsDoneButtonDisabled:0];

  v7 = [(EKEventDateEditItem *)self _dateComponentsInSystemCalendarFromDate:v17];
  if (a4 == 2)
  {
    [(EKEventDateEditItem *)self _setEndDate:v7];
  }

  else if (a4 == 1)
  {
    v8 = [(NSDateComponents *)self->_startComponents copy];
    [(EKEventDateEditItem *)self _setStartDate:v7];
    if (!self->_endTimeWasMessedUp)
    {
      v9 = [(EKEventDateEditItem *)self _dateInSystemCalendarFromComponents:self->_endComponents];
      v10 = [(EKEventDateEditItem *)self _dateInSystemCalendarFromComponents:v8];
      [v9 timeIntervalSinceDate:v10];
      v11 = [v17 dateByAddingTimeInterval:?];
      v12 = [(EKEventDateEditItem *)self _dateComponentsInSystemCalendarFromDate:v11];
      [(EKEventDateEditItem *)self _setEndDate:v12];
    }
  }

  self->_changingDate = 0;
  v13 = [(EKEventDateEditItem *)self eventDateEditItemDelegate];

  if (v13)
  {
    v14 = [(EKEventDateEditItem *)self _calendarForEventComponents:1];
    v15 = [(EKEventDateEditItem *)self eventDateEditItemDelegate];
    v16 = [v14 dateFromComponents:self->_startComponents];
    [v15 dateChangedTo:v16];
  }

  [(EKCalendarItemEditItem *)self notifyDidEndEditing];
}

- (void)_allDayChanged:(id)a3
{
  self->_changingDate = 1;
  -[EKEventDateEditItem _setAllDay:](self, "_setAllDay:", [a3 isOn]);
  self->_needsTargetedReload = 0;
  self->_changingDate = 0;
  [(EKCalendarItemEditItem *)self notifyDidStartEditing];

  [(EKCalendarItemEditItem *)self notifyDidEndEditing];
}

- (id)_timeZoneDescription:(id)a3
{
  if (a3)
  {
    v3 = [a3 cityName];
  }

  else
  {
    v4 = EventKitUIBundle();
    v3 = [v4 localizedStringForKey:@"Floating" value:&stru_1F4EF6790 table:0];
  }

  return v3;
}

- (id)_dateInSystemCalendarFromComponents:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (id)_dateFromComponents:(id)a3 timeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 copy];

  if (v6)
  {
    [v8 setTimeZone:v6];
  }

  v9 = [v8 dateFromComponents:v5];

  return v9;
}

- (id)_dateComponentsInSystemCalendarFromDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:254 fromDate:v4];

  return v6;
}

- (EKEventDateEditItemDelegate)eventDateEditItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDateEditItemDelegate);

  return WeakRetained;
}

@end