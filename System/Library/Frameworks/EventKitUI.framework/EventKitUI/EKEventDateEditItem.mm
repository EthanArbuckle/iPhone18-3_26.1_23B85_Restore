@interface EKEventDateEditItem
+ (id)_timeZoneLocalizedString;
- (BOOL)_endDateIsBeforeStartDate;
- (BOOL)configureForCalendarConstraints:(id)constraints;
- (BOOL)editor:(id)editor canSelectSubitem:(unint64_t)subitem;
- (BOOL)handleClassicSubitemSelection:(int64_t)selection;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (EKEventDateEditItem)init;
- (EKEventDateEditItemDelegate)eventDateEditItemDelegate;
- (NSString)description;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)_allDayCell;
- (id)_calendarForEventComponents:(BOOL)components;
- (id)_classicEndDateCell;
- (id)_classicStartDateCell;
- (id)_dateComponentsInSystemCalendarFromDate:(id)date;
- (id)_dateFromComponents:(id)components timeZone:(id)zone;
- (id)_dateInSystemCalendarFromComponents:(id)components;
- (id)_endDatePickerCell;
- (id)_endTimeZoneCell;
- (id)_modernEndDateCell;
- (id)_modernStartDateCell;
- (id)_newDatePicker;
- (id)_startDatePickerCell;
- (id)_startTimeZoneCell;
- (id)_timeZoneDescription:(id)description;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (int64_t)_rowForSubitem:(int64_t)subitem;
- (int64_t)_subitemForRow:(int64_t)row;
- (unint64_t)numberOfSubitems;
- (unint64_t)onSaveEditItemsToRefresh;
- (unint64_t)onSaveEditorReloadBehavior;
- (void)_adjustEndDateIfNeededAfterTogglingAllDay;
- (void)_adjustStartAndEndComponentsForEventIfNeeded:(id)needed;
- (void)_allDayChanged:(id)changed;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_datePickerChanged:(id)changed;
- (void)_hideInlineDateControls;
- (void)_pickNextReasonableTime;
- (void)_refreshDatePicker;
- (void)_resetClassicStartString:(BOOL)string endString:(BOOL)endString;
- (void)_resetStartString:(BOOL)string endString:(BOOL)endString;
- (void)_setAllDay:(BOOL)day;
- (void)_setEndDate:(id)date;
- (void)_setEndTimeZone:(id)zone;
- (void)_setStartDate:(id)date;
- (void)_setStartTimeZone:(id)zone;
- (void)_showInlineControls:(int64_t)controls forSubitem:(int64_t)subitem includingInlineDatePicker:(BOOL)picker;
- (void)_updateClassicDateCellColors;
- (void)_updateClassicDateCellTimeWidths;
- (void)_updateDatePicker:(id)picker animated:(BOOL)animated;
- (void)_validateTimezones;
- (void)adjustDatePickerInterval:(id)interval;
- (void)dateChanged:(id)changed forSubitem:(int64_t)subitem;
- (void)dateTimeCell:(id)cell dateChanged:(id)changed;
- (void)dateTimeCellBeganEditing:(id)editing;
- (void)dateTimeCellDateTapped:(id)tapped;
- (void)dateTimeCellEndedEditing:(id)editing;
- (void)dateTimeCellTimeTapped:(id)tapped;
- (void)dealloc;
- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)editor:(id)editor didStartEditingItem:(id)item;
- (void)endInlineEditing;
- (void)refreshFromCalendarItemAndStore;
- (void)setupPickerConstraintsForCell:(id)cell datePicker:(id)picker;
- (void)shortenCell:(id)cell;
- (void)timeZoneViewController:(id)controller didSelectTimeZone:(id)zone;
- (void)timeZoneViewControllerDidCancel:(id)cancel;
- (void)updateStartDateToDate:(id)date;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

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

  modernEndDateCell = [v3 stringWithFormat:@"%@\n startDateCell:%@\n endDateCell:%@", v4, modernStartDateCell, modernEndDateCell];

  return modernEndDateCell;
}

- (void)refreshFromCalendarItemAndStore
{
  v21.receiver = self;
  v21.super_class = EKEventDateEditItem;
  [(EKCalendarItemEditItem *)&v21 refreshFromCalendarItemAndStore];
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  startTimeZone = [WeakRetained startTimeZone];
  if ([startTimeZone isUTC])
  {
    startTimeZone2 = objc_loadWeakRetained(&self->super.super._store);
    timeZone = [startTimeZone2 timeZone];
    [(EKEventDateEditItem *)self _setStartTimeZone:timeZone];
  }

  else
  {
    startTimeZone2 = [WeakRetained startTimeZone];
    [(EKEventDateEditItem *)self _setStartTimeZone:startTimeZone2];
  }

  endTimeZone = [WeakRetained endTimeZone];
  if (endTimeZone)
  {
    endTimeZone2 = [WeakRetained endTimeZone];
    if ([endTimeZone2 isUTC])
    {
      [(EKEventDateEditItem *)self _setEndTimeZone:self->_startTimeZone];
    }

    else
    {
      endTimeZone3 = [WeakRetained endTimeZone];
      [(EKEventDateEditItem *)self _setEndTimeZone:endTimeZone3];
    }
  }

  else
  {
    [(EKEventDateEditItem *)self _setEndTimeZone:self->_startTimeZone];
  }

  startDate = [WeakRetained startDate];
  endDateUnadjustedForLegacyClients = [WeakRetained endDateUnadjustedForLegacyClients];
  pendingProposedTime = self->_pendingProposedTime;
  if (pendingProposedTime)
  {
    proposedStartDate2 = pendingProposedTime;
LABEL_12:
    v14 = proposedStartDate2;

    [WeakRetained duration];
    v15 = [(NSDate *)v14 dateByAddingTimeInterval:?];
    startDate = v14;

    endDateUnadjustedForLegacyClients = v15;
    goto LABEL_16;
  }

  if ([(EKEventDateEditItem *)self proposedTime])
  {
    proposedStartDate = [WeakRetained proposedStartDate];

    if (proposedStartDate)
    {
      proposedStartDate2 = [WeakRetained proposedStartDate];
      goto LABEL_12;
    }
  }

LABEL_16:
  v17 = [(EKEventDateEditItem *)self _calendarForEventComponents:1];
  v18 = [v17 components:254 fromDate:startDate];
  [(EKEventDateEditItem *)self _setStartDate:v18];

  v19 = [(EKEventDateEditItem *)self _calendarForEventComponents:0];
  v20 = [v19 components:254 fromDate:endDateUnadjustedForLegacyClients];
  [(EKEventDateEditItem *)self _setEndDate:v20];

  -[EKEventDateEditItem _setAllDay:](self, "_setAllDay:", [WeakRetained isAllDay]);
  self->_needsTargetedReload = 1;
  [(EKEventDateEditItem *)self _adjustStartAndEndComponentsForEventIfNeeded:WeakRetained];
  [(EKEventDateEditItem *)self _refreshDatePicker];
}

- (void)updateStartDateToDate:(id)date
{
  objc_storeStrong(&self->_pendingProposedTime, date);
  dateCopy = date;
  self->_selectedSubitem = 1;
  v7 = [(EKEventDateEditItem *)self _calendarForEventComponents:1];
  v6 = [v7 components:254 fromDate:dateCopy];

  [(EKEventDateEditItem *)self _setStartDate:v6];
}

- (void)_refreshDatePicker
{
  [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
  [(EKEventDateEditItem *)self _updateDatePicker:0 animated:0];
  [(EKEventDateEditItem *)self _updateClassicDateCellTimeWidths];

  [(EKEventDateEditItem *)self _updateClassicDateCellTimeWidths];
}

- (void)_adjustStartAndEndComponentsForEventIfNeeded:(id)needed
{
  if ([needed isAllDay])
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

- (BOOL)configureForCalendarConstraints:(id)constraints
{
  constraintsCopy = constraints;
  event = [(EKEventEditItem *)self event];
  startComponents = [event occurrenceDate];
  if (startComponents)
  {
    goto LABEL_2;
  }

  source = [constraintsCopy source];
  constraints = [source constraints];
  futureStartDateLimitedToOccurrenceCacheBounds = [constraints futureStartDateLimitedToOccurrenceCacheBounds];

  if (!futureStartDateLimitedToOccurrenceCacheBounds)
  {
    goto LABEL_4;
  }

  calendar = [(NSDateComponents *)self->_startComponents calendar];
  event = [calendar dateFromComponents:self->_startComponents];

  [event timeIntervalSinceReferenceDate];
  if ((CUIKCheckEventStartDateAgainstOccurrenceCacheBounds() & 1) == 0)
  {
    v13 = CUIKTodayComponents();
    startComponents = self->_startComponents;
    self->_startComponents = v13;
LABEL_2:
  }

LABEL_4:
  v7 = [(EKEventDateEditItem *)self canBeConfiguredForCalendarConstraints:constraintsCopy];

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
  event = [(EKEventEditItem *)self event];
  calendar = [event calendar];
  source = [calendar source];
  constraints = [source constraints];
  if ([constraints supportsAvailabilityRequests])
  {
    event2 = [(EKEventEditItem *)self event];
    hasAttendees = [event2 hasAttendees];

    if (hasAttendees)
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

- (int64_t)_rowForSubitem:(int64_t)subitem
{
  showsAllDay = self->_showsAllDay;
  result = subitem - (showsAllDay ^ 1);
  selectedSubitem = self->_selectedSubitem;
  if (selectedSubitem != 5)
  {
    if (subitem == 3)
    {
      v7 = !showsAllDay;
      v8 = 1;
      if (!v7)
      {
        v8 = 2;
      }

      return selectedSubitem + v8 - !self->_showingInlineDatePicker;
    }

    else if (subitem == 4)
    {
      return selectedSubitem + showsAllDay;
    }

    else if (selectedSubitem < subitem)
    {
      return result - !self->_showingInlineDatePicker + 2;
    }
  }

  return result;
}

- (int64_t)_subitemForRow:(int64_t)row
{
  v4 = !self->_showsAllDay + row;
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
    _shouldShowTimeZone = [(EKEventDateEditItem *)self _shouldShowTimeZone];
    v6 = -2;
    if (!_shouldShowTimeZone)
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
      textLabel = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell textLabel];
      [textLabel setText:v8];

      v10 = *MEMORY[0x1E69DDD80];
      v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      detailTextLabel = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell detailTextLabel];
      [detailTextLabel setFont:v11];

      v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
      largePart2TextLabel = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell largePart2TextLabel];
      [largePart2TextLabel setFont:v13];
    }

    else
    {
      v15 = [(EKUITableViewCell *)v4 initWithStyle:0 reuseIdentifier:0];
      v16 = self->_classicStartDateCell;
      self->_classicStartDateCell = v15;

      v17 = EventKitUIBundle();
      v18 = [v17 localizedStringForKey:@"Starts" value:&stru_1F4EF6790 table:0];
      textLabel2 = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell textLabel];
      [textLabel2 setText:v18];

      textLabel3 = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell textLabel];
      font = [textLabel3 font];
      twoPartTextLabel = [(PreferencesTwoPartValueCell *)self->_classicStartDateCell twoPartTextLabel];
      [twoPartTextLabel setFont:font];

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
      textLabel = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell textLabel];
      [textLabel setText:v8];

      v10 = *MEMORY[0x1E69DDD80];
      v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      detailTextLabel = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell detailTextLabel];
      [detailTextLabel setFont:v11];

      v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
      largePart2TextLabel = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell largePart2TextLabel];
      [largePart2TextLabel setFont:v13];
    }

    else
    {
      v15 = [(EKUITableViewCell *)v4 initWithStyle:0 reuseIdentifier:0];
      v16 = self->_classicEndDateCell;
      self->_classicEndDateCell = v15;

      v17 = EventKitUIBundle();
      v18 = [v17 localizedStringForKey:@"Ends" value:&stru_1F4EF6790 table:0];
      textLabel2 = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell textLabel];
      [textLabel2 setText:v18];

      textLabel3 = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell textLabel];
      font = [textLabel3 font];
      twoPartTextLabel = [(PreferencesTwoPartValueCell *)self->_classicEndDateCell twoPartTextLabel];
      [twoPartTextLabel setFont:font];

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
    textLabel = [(UITableViewCell *)self->_allDayCell textLabel];
    [textLabel setText:v8];

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

    _timeZoneLocalizedString = [objc_opt_class() _timeZoneLocalizedString];
    textLabel = [(UITableViewCell *)self->_startTimeZoneCell textLabel];
    [textLabel setText:_timeZoneLocalizedString];

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

    _timeZoneLocalizedString = [objc_opt_class() _timeZoneLocalizedString];
    textLabel = [(UITableViewCell *)self->_endTimeZoneCell textLabel];
    [textLabel setText:_timeZoneLocalizedString];

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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  [currentCalendar setFirstWeekday:CUIKOneIndexedWeekStart()];
  [v3 setCalendar:currentCalendar];
  [v3 addTarget:self action:sel__datePickerChanged_ forControlEvents:4096];
  [v3 addTarget:self action:sel__datePickerEndedEditing_ forControlEvents:0x40000];

  return v3;
}

- (void)adjustDatePickerInterval:(id)interval
{
  intervalCopy = interval;
  date = [intervalCopy date];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar component:64 fromDate:date];

  if (0xCCCCCCCCCCCCCCCDLL * v5 + 0x1999999999999999 >= 0x3333333333333333)
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  [intervalCopy setMinuteInterval:v6];
}

- (id)_startDatePickerCell
{
  startDatePickerCell = self->_startDatePickerCell;
  if (!startDatePickerCell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_startDatePickerCell;
    self->_startDatePickerCell = &v4->super;

    _newDatePicker = [(EKEventDateEditItem *)self _newDatePicker];
    startDatePicker = self->_startDatePicker;
    self->_startDatePicker = _newDatePicker;

    contentView = [(UITableViewCell *)self->_startDatePickerCell contentView];
    [contentView addSubview:self->_startDatePicker];

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

    _newDatePicker = [(EKEventDateEditItem *)self _newDatePicker];
    endDatePicker = self->_endDatePicker;
    self->_endDatePicker = _newDatePicker;

    contentView = [(UITableViewCell *)self->_endDatePickerCell contentView];
    [contentView addSubview:self->_endDatePicker];

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

- (void)setupPickerConstraintsForCell:(id)cell datePicker:(id)picker
{
  v19 = MEMORY[0x1E695DF70];
  v5 = MEMORY[0x1E696ACD8];
  pickerCopy = picker;
  cellCopy = cell;
  contentView = [cellCopy contentView];
  v9 = [v5 constraintWithItem:pickerCopy attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:0.0];
  v10 = MEMORY[0x1E696ACD8];
  contentView2 = [cellCopy contentView];
  v12 = [v10 constraintWithItem:pickerCopy attribute:6 relatedBy:0 toItem:contentView2 attribute:6 multiplier:1.0 constant:0.0];
  v13 = MEMORY[0x1E696ACD8];
  contentView3 = [cellCopy contentView];
  v15 = [v13 constraintWithItem:pickerCopy attribute:4 relatedBy:0 toItem:contentView3 attribute:4 multiplier:1.0 constant:0.0];
  v16 = MEMORY[0x1E696ACD8];
  contentView4 = [cellCopy contentView];

  v18 = [v16 constraintWithItem:pickerCopy attribute:3 relatedBy:0 toItem:contentView4 attribute:3 multiplier:1.0 constant:0.0];

  v20 = [v19 arrayWithObjects:{v9, v12, v15, v18, 0}];

  [MEMORY[0x1E696ACD8] activateConstraints:v20];
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v5 = [(EKEventDateEditItem *)self _subitemForRow:?];
  _allDayCell = 0;
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
      _allDayCell = ;
      if (self->_selectedSubitem == 1)
      {
        v9 = &OBJC_IVAR___EKEventDateEditItem__startTimeZone;
      }

      else
      {
        v9 = &OBJC_IVAR___EKEventDateEditItem__endTimeZone;
      }

      v10 = [(EKEventDateEditItem *)self _timeZoneDescription:*(&self->super.super.super.isa + *v9)];
      detailTextLabel = [_allDayCell detailTextLabel];
      [detailTextLabel setText:v10];

      goto LABEL_33;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        NSLog(&cfstr_ThisShouldNeve.isa, 5, index);
        _allDayCell = 0;
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
    _allDayCell = ;
    superview = [_allDayCell superview];

    if (superview)
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

    accessoryView = *(&self->super.super.super.isa + *v13);
    [(EKEventDateEditItem *)self _updateDatePicker:accessoryView animated:0];
    [(EKEventDateEditItem *)self adjustDatePickerInterval:accessoryView];
LABEL_32:

    goto LABEL_33;
  }

  switch(v5)
  {
    case 0:
      _allDayCell = [(EKEventDateEditItem *)self _allDayCell];
      accessoryView = [_allDayCell accessoryView];
      [accessoryView setOn:self->_allDay];
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
  _allDayCell = v7;
LABEL_33:

  return _allDayCell;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  v7 = [(EKEventDateEditItem *)self _subitemForRow:?];
  if (v7 == 4)
  {
    v8 = [(EKEventDateEditItem *)self cellForSubitemAtIndex:index];
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
      v12 = [(EKEventDateEditItem *)self cellForSubitemAtIndex:index];
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
    [(EKCalendarItemEditItem *)&v16 defaultCellHeightForSubitemAtIndex:index forWidth:width];
    return v13;
  }

  return v11;
}

- (BOOL)editor:(id)editor canSelectSubitem:(unint64_t)subitem
{
  v5 = [(EKEventDateEditItem *)self _subitemForRow:subitem];
  if ((v5 - 1) >= 2)
  {
    return v5 == 3;
  }

  return [(EKEventDateEditItem *)self usesClassicUI];
}

- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  v13.receiver = self;
  v13.super_class = EKEventDateEditItem;
  [(EKCalendarItemEditItem *)&v13 editor:editor didSelectSubitem:?];
  v6 = [(EKEventDateEditItem *)self _subitemForRow:subitem];
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
    delegate = [(EKCalendarItemEditItem *)self delegate];
    v11 = [delegate viewControllerForEditItem:self];

    navigationController = [v11 navigationController];
    [navigationController pushViewController:v8 animated:1];
  }

  [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
  [(EKEventDateEditItem *)self _updateClassicDateCellColors];
}

- (BOOL)handleClassicSubitemSelection:(int64_t)selection
{
  selectedSubitem = self->_selectedSubitem;
  if (selectedSubitem == selection)
  {
    [(EKEventDateEditItem *)self _hideInlineDateControls];
  }

  else if (selection <= 2)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    if (selectedSubitem <= 2)
    {
      [indexSet addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 4)}];
      if ([(EKEventDateEditItem *)self _shouldShowTimeZone])
      {
        [indexSet addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 3)}];
      }
    }

    self->_selectedSubitem = selection;
    self->_showingInlineDatePicker = 1;
    [indexSet2 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", selection) + 1}];
    if ([(EKEventDateEditItem *)self _shouldShowTimeZone])
    {
      [indexSet2 addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", self->_selectedSubitem) + 2}];
    }

    if ([indexSet count] || objc_msgSend(indexSet2, "count"))
    {
      delegate = [(EKCalendarItemEditItem *)self delegate];
      [delegate editItem:self wantsRowInsertions:indexSet2 rowDeletions:indexSet];

      v9 = [(EKEventDateEditItem *)self _rowForSubitem:1];
      v10 = [(EKEventDateEditItem *)self _rowForSubitem:2]+ 2 * (self->_selectedSubitem == 2);
      indexSet3 = [MEMORY[0x1E696AD50] indexSet];
      [indexSet3 addIndex:v9];
      [indexSet3 addIndex:v10];
      delegate2 = [(EKCalendarItemEditItem *)self delegate];
      [delegate2 editItem:self wantsRowsScrolledToVisible:indexSet3];
    }
  }

  return selection < 3;
}

- (void)editor:(id)editor didStartEditingItem:(id)item
{
  itemCopy = item;
  v7.receiver = self;
  v7.super_class = EKEventDateEditItem;
  [(EKCalendarItemEditItem *)&v7 editor:editor didStartEditingItem:itemCopy];
  if (itemCopy != self && [(EKEventDateEditItem *)itemCopy isInline])
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

- (id)_calendarForEventComponents:(BOOL)components
{
  componentsCopy = components;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  event = [(EKEventEditItem *)self event];
  if (([event isFloating] & 1) != 0 || self->_allDay)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._store);
    timeZone = [WeakRetained timeZone];
    [currentCalendar setTimeZone:timeZone];
  }

  else
  {
    v9 = &OBJC_IVAR___EKEventDateEditItem__endTimeZone;
    if (componentsCopy)
    {
      v9 = &OBJC_IVAR___EKEventDateEditItem__startTimeZone;
    }

    [currentCalendar setTimeZone:*(&self->super.super.super.isa + *v9)];
  }

  return currentCalendar;
}

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  event = [(EKEventEditItem *)self event];
  v6 = event;
  if (self->_showsAllDay)
  {
    if (self->_allDay == [event isAllDay])
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
    startTimeZone = [v6 startTimeZone];
    if (startTimeZone || self->_startTimeZone)
    {
      startTimeZone2 = [v6 startTimeZone];
      if (([startTimeZone2 isEqual:self->_startTimeZone] & 1) == 0)
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

    endTimeZone = [v6 endTimeZone];
    if (endTimeZone || self->_endTimeZone)
    {
      endTimeZone2 = [v6 endTimeZone];
      v12 = [endTimeZone2 isEqual:self->_endTimeZone];

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
  startDate = [v6 startDate];
  if ([startDate isEqualToDate:v15])
  {
    endDateUnadjustedForLegacyClients = [v6 endDateUnadjustedForLegacyClients];
    v19 = [endDateUnadjustedForLegacyClients isEqualToDate:v16];

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
  suggestionInfo = [v6 suggestionInfo];

  if (suggestionInfo)
  {
    [MEMORY[0x1E69930D0] trackPseudoEventDateChanged];
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  self->_needsTargetedReload = 1;
LABEL_28:

  return 1;
}

- (void)_contentSizeCategoryDidChange:(id)change
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
    _classicStartDateCell = [(EKEventDateEditItem *)self _classicStartDateCell];
    twoPartTextLabel = [_classicStartDateCell twoPartTextLabel];
    [twoPartTextLabel rightmostDisplayedPartWidth];
    v5 = v4;

    _classicEndDateCell = [(EKEventDateEditItem *)self _classicEndDateCell];
    v7 = _classicEndDateCell;
    if (_classicEndDateCell)
    {
      twoPartTextLabel2 = [_classicEndDateCell twoPartTextLabel];
      [twoPartTextLabel2 rightmostDisplayedPartWidth];
      v10 = v9;

      if (v10 > v5)
      {
        v5 = v10;
      }
    }

    twoPartTextLabel3 = [_classicStartDateCell twoPartTextLabel];
    [twoPartTextLabel3 setMinimumPart2Width:v5];

    twoPartTextLabel4 = [v7 twoPartTextLabel];
    [twoPartTextLabel4 setMinimumPart2Width:v5];
  }
}

- (void)_updateClassicDateCellColors
{
  if ([(EKEventDateEditItem *)self usesClassicUI])
  {
    _classicStartDateCell = [(EKEventDateEditItem *)self _classicStartDateCell];
    _classicEndDateCell = [(EKEventDateEditItem *)self _classicEndDateCell];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v5 = CalendarAppTintColor();
    v6 = EKUIUsesLargeTextLayout(0);
    if (self->_selectedSubitem == 1)
    {
      v7 = v5;
    }

    else
    {
      v7 = labelColor;
    }

    if (v6)
    {
      detailTextLabel = [_classicStartDateCell detailTextLabel];
      [detailTextLabel setTextColor:v7];

      if (self->_selectedSubitem == 1)
      {
        v9 = v5;
      }

      else
      {
        v9 = labelColor;
      }

      largePart2TextLabel = [_classicStartDateCell largePart2TextLabel];
      [largePart2TextLabel setTextColor:v9];

      if (self->_selectedSubitem == 2)
      {
        v11 = v5;
      }

      else
      {
        v11 = labelColor;
      }

      detailTextLabel2 = [_classicEndDateCell detailTextLabel];
      [detailTextLabel2 setTextColor:v11];

      if (self->_selectedSubitem == 2)
      {
        v13 = v5;
      }

      else
      {
        v13 = labelColor;
      }

      largePart2TextLabel2 = [_classicEndDateCell largePart2TextLabel];
      [largePart2TextLabel2 setTextColor:v13];

      [_classicEndDateCell setStrikeThroughLargeDetailTextLabel:{-[EKEventDateEditItem _endDateIsBeforeStartDate](self, "_endDateIsBeforeStartDate")}];
      [_classicEndDateCell setStrikeThroughLargePart2TextLabel:{-[EKEventDateEditItem _endDateIsBeforeStartDate](self, "_endDateIsBeforeStartDate")}];
    }

    else
    {
      twoPartTextLabel = [_classicStartDateCell twoPartTextLabel];
      [twoPartTextLabel setTextColor:v7];

      if (self->_selectedSubitem == 2)
      {
        v16 = v5;
      }

      else
      {
        v16 = labelColor;
      }

      twoPartTextLabel2 = [_classicEndDateCell twoPartTextLabel];
      [twoPartTextLabel2 setTextColor:v16];

      twoPartTextLabel3 = [_classicEndDateCell twoPartTextLabel];
      [twoPartTextLabel3 setStrikethroughPart1:{-[EKEventDateEditItem _endDateIsBeforeStartDate](self, "_endDateIsBeforeStartDate")}];

      twoPartTextLabel4 = [_classicEndDateCell twoPartTextLabel];
      [twoPartTextLabel4 setStrikethroughPart2:{-[EKEventDateEditItem _endDateIsBeforeStartDate](self, "_endDateIsBeforeStartDate")}];
    }
  }
}

- (void)shortenCell:(id)cell
{
  cellCopy = cell;
  if (self->_shorteningStatus != 2)
  {
    v4 = _CalendarForFormattingStrings();
    v5 = cellCopy;
    if (self->_classicStartDateCell == cellCopy && (-[PreferencesTwoPartValueCell twoPartTextLabel](cellCopy, "twoPartTextLabel"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasTwoParts], v6, v5 = cellCopy, (v7 & 1) != 0))
    {
      v8 = &OBJC_IVAR___EKEventDateEditItem__startComponents;
    }

    else
    {
      if (self->_classicEndDateCell != v5)
      {
        goto LABEL_9;
      }

      twoPartTextLabel = [(PreferencesTwoPartValueCell *)cellCopy twoPartTextLabel];
      hasTwoParts = [twoPartTextLabel hasTwoParts];

      if (!hasTwoParts)
      {
        goto LABEL_9;
      }

      v8 = &OBJC_IVAR___EKEventDateEditItem__endComponents;
      v5 = cellCopy;
    }

    twoPartTextLabel2 = [(PreferencesTwoPartValueCell *)v5 twoPartTextLabel];
    v12 = [v4 dateFromComponents:*(&self->super.super.super.isa + *v8)];
    v13 = CUIKShortStringForDateWithMonthAndYear();
    [twoPartTextLabel2 setTextPart1:v13];

LABEL_9:
  }
}

- (void)timeZoneViewController:(id)controller didSelectTimeZone:(id)zone
{
  zoneCopy = zone;
  self->_pushingTZController = 0;
  targetedSubitemForTimezone = self->_targetedSubitemForTimezone;
  if (targetedSubitemForTimezone == 5)
  {
    targetedSubitemForTimezone = self->_selectedSubitem;
  }

  v12 = zoneCopy;
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
    [(EKEventDateEditItem *)self _setEndTimeZone:zoneCopy];
  }

  [(EKEventDateEditItem *)self saveAndDismissWithForce:1];
  delegate = [(EKCalendarItemEditItem *)self delegate];
  [delegate editItem:self wantsDoneButtonDisabled:0];

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:[(EKEventDateEditItem *)self _rowForSubitem:3]];
  delegate2 = [(EKCalendarItemEditItem *)self delegate];
  v9 = [delegate2 viewControllerForEditItem:self];

  navigationController = [v9 navigationController];
  v11 = [navigationController popViewControllerAnimated:1];

  self->_targetedSubitemForTimezone = 5;
}

- (void)timeZoneViewControllerDidCancel:(id)cancel
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

  [cancel setTimeZone:*(&self->super.super.super.isa + *v3)];
}

- (void)_setStartDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqual:self->_startComponents] & 1) == 0)
  {
    v4 = [dateCopy copy];
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

- (void)_setEndDate:(id)date
{
  dateCopy = date;
  v4 = [dateCopy isEqual:self->_endComponents];
  v5 = dateCopy;
  if ((v4 & 1) == 0)
  {
    v6 = [dateCopy copy];
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
    v5 = dateCopy;
  }
}

- (void)_setAllDay:(BOOL)day
{
  if (self->_allDay == day)
  {
    return;
  }

  self->_allDay = day;
  if (self->_showsAllDay)
  {
    _allDayCell = [(EKEventDateEditItem *)self _allDayCell];
    accessoryView = [_allDayCell accessoryView];
    [accessoryView setOn:self->_allDay];
    if (!self->_allDay)
    {
      calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
      [(EKEventDateEditItem *)self _setStartTimeZone:calendarTimeZone];

      calendarTimeZone2 = [MEMORY[0x1E695DFE8] calendarTimeZone];
      [(EKEventDateEditItem *)self _setEndTimeZone:calendarTimeZone2];

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

  if (day)
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

- (void)_setStartTimeZone:(id)zone
{
  zoneCopy = zone;
  if (([zoneCopy isEqualToTimeZone:self->_startTimeZone] & 1) == 0)
  {
    objc_storeStrong(&self->_startTimeZone, zone);
    [(EKEventDateEditItem *)self _validateTimezones];
    [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
    v5 = [(EKEventDateEditItem *)self _timeZoneDescription:self->_startTimeZone];
    detailTextLabel = [(UITableViewCell *)self->_startTimeZoneCell detailTextLabel];
    [detailTextLabel setText:v5];
  }
}

- (void)_setEndTimeZone:(id)zone
{
  zoneCopy = zone;
  if (([zoneCopy isEqualToTimeZone:self->_endTimeZone] & 1) == 0)
  {
    objc_storeStrong(&self->_endTimeZone, zone);
    [(EKEventDateEditItem *)self _validateTimezones];
    [(EKEventDateEditItem *)self _resetStartString:1 endString:1];
    v5 = [(EKEventDateEditItem *)self _timeZoneDescription:self->_endTimeZone];
    detailTextLabel = [(UITableViewCell *)self->_endTimeZoneCell detailTextLabel];
    [detailTextLabel setText:v5];
  }
}

- (void)dateTimeCellDateTapped:(id)tapped
{
  if (self->_modernStartDateCell == tapped)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(EKEventDateEditItem *)self _showInlineControls:1 forSubitem:v3 includingInlineDatePicker:1];
}

- (void)dateTimeCellTimeTapped:(id)tapped
{
  if (self->_modernStartDateCell == tapped)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(EKEventDateEditItem *)self _showInlineControls:0 forSubitem:v3 includingInlineDatePicker:1];
}

- (void)dateTimeCell:(id)cell dateChanged:(id)changed
{
  if (self->_modernStartDateCell == cell)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [(EKEventDateEditItem *)self dateChanged:changed forSubitem:v5];
}

- (void)dateTimeCellBeganEditing:(id)editing
{
  if (self->_modernStartDateCell == editing)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(EKEventDateEditItem *)self _showInlineControls:0 forSubitem:v3 includingInlineDatePicker:0];
}

- (void)dateTimeCellEndedEditing:(id)editing
{
  editingCopy = editing;
  if (!self->_modifyingVisibleControls)
  {
    selectedSubitem = self->_selectedSubitem;
    v6 = editingCopy;
    [(EKEventDateEditItem *)self _hideInlineDateControls];
    editingCopy = v6;
    if (self->_pushingTZController)
    {
      self->_targetedSubitemForTimezone = selectedSubitem;
    }
  }
}

- (void)_showInlineControls:(int64_t)controls forSubitem:(int64_t)subitem includingInlineDatePicker:(BOOL)picker
{
  pickerCopy = picker;
  if (*&self->_selectedSubitem == __PAIR128__(controls, subitem))
  {

    [(EKEventDateEditItem *)self _hideInlineDateControls];
    return;
  }

  _shouldShowTimeZone = [(EKEventDateEditItem *)self _shouldShowTimeZone];
  showingInlineDatePicker = self->_showingInlineDatePicker;
  self->_currentPickerMode = controls;
  v33 = 211;
  self->_modifyingVisibleControls = 1;
  selectedSubitem = self->_selectedSubitem;
  if (selectedSubitem == subitem)
  {
    self->_showingInlineDatePicker = pickerCopy;
    [(EKEventDateEditItem *)self _updateDatePicker:0 animated:0];
    [(EKEventDateEditItem *)self _resetStartString:subitem == 1 endString:subitem == 2];
    v12 = 0;
    v13 = 0;
    if (_shouldShowTimeZone != [(EKEventDateEditItem *)self _shouldShowTimeZone])
    {
      v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 3)}];
      if (_shouldShowTimeZone)
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }

      if (_shouldShowTimeZone)
      {
        v13 = 0;
      }

      else
      {
        v13 = v14;
      }
    }

    if (showingInlineDatePicker != pickerCopy)
    {
      v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", subitem) + 1}];
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

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  if (selectedSubitem <= 2)
  {
    if (showingInlineDatePicker)
    {
      [indexSet addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 4)}];
    }

    if (_shouldShowTimeZone)
    {
      [indexSet addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 3)}];
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

  self->_selectedSubitem = subitem;
  self->_showingInlineDatePicker = pickerCopy;
  v21 = [(EKEventDateEditItem *)self _rowForSubitem:subitem, v33];
  v22 = v21 + 1;
  if (self->_showingInlineDatePicker)
  {
    v23 = v21;
    [indexSet2 addIndex:v22];
    v22 = v23 + 2;
  }

  if ([(EKEventDateEditItem *)self _shouldShowTimeZone])
  {
    [indexSet2 addIndex:v22];
  }

  if ([indexSet count] || objc_msgSend(indexSet2, "count"))
  {
    delegate = [(EKCalendarItemEditItem *)self delegate];
    [delegate editItem:self wantsRowInsertions:indexSet2 rowDeletions:indexSet];

    v25 = [(EKEventDateEditItem *)self _rowForSubitem:1];
    v26 = [(EKEventDateEditItem *)self _rowForSubitem:2]+ 2 * (self->_selectedSubitem == 2);
    indexSet3 = [MEMORY[0x1E696AD50] indexSet];
    [indexSet3 addIndex:v25];
    [indexSet3 addIndex:v26];
    delegate2 = [(EKCalendarItemEditItem *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if ((v26 & 1) != 0 && pickerCopy)
    {
      v29 = dispatch_time(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__EKEventDateEditItem__showInlineControls_forSubitem_includingInlineDatePicker___block_invoke_3;
      block[3] = &unk_1E843EC60;
      block[4] = self;
      dispatch_after(v29, MEMORY[0x1E69E96A0], block);
    }

    delegate3 = [(EKCalendarItemEditItem *)self delegate];
    [delegate3 editItem:self wantsRowsScrolledToVisible:indexSet3];
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

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (self->_showingInlineDatePicker)
  {
    [indexSet addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 4)}];
  }

  if ([(EKEventDateEditItem *)self _shouldShowTimeZone])
  {
    [indexSet addIndex:{-[EKEventDateEditItem _rowForSubitem:](self, "_rowForSubitem:", 3)}];
  }

  self->_selectedSubitem = 5;
  self->_showingInlineDatePicker = 0;
  if ([indexSet count])
  {
    delegate = [(EKCalendarItemEditItem *)self delegate];
    [delegate editItem:self wantsRowInsertions:0 rowDeletions:indexSet];
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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar dateByAddingComponents:v4 toDate:v11 options:0];

  v7 = [(EKEventDateEditItem *)self _dateComponentsInSystemCalendarFromDate:v6];
  -[NSDateComponents setHour:](self->_startComponents, "setHour:", [v7 hour]);

  [(NSDateComponents *)self->_startComponents setMinute:0];
  [(NSDateComponents *)self->_startComponents setSecond:0];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar2 dateByAddingComponents:v4 toDate:v6 options:0];

  v10 = [(EKEventDateEditItem *)self _dateComponentsInSystemCalendarFromDate:v9];
  -[NSDateComponents setHour:](self->_endComponents, "setHour:", [v10 hour]);

  [(NSDateComponents *)self->_endComponents setMinute:0];
  [(NSDateComponents *)self->_endComponents setSecond:0];
}

- (void)_resetClassicStartString:(BOOL)string endString:(BOOL)endString
{
  endStringCopy = endString;
  if (string && self->_startComponents)
  {
    _classicStartDateCell = [(EKEventDateEditItem *)self _classicStartDateCell];
    if (_classicStartDateCell)
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
        detailTextLabel = [_classicStartDateCell detailTextLabel];
        [detailTextLabel setText:v14];

        largePart2TextLabel = [_classicStartDateCell largePart2TextLabel];
        [largePart2TextLabel setText:v15];
      }

      else
      {
        largePart2TextLabel = [_classicStartDateCell twoPartTextLabel];
        [largePart2TextLabel setTextPart1:v14 part2:v15];
      }

      [_classicStartDateCell setNeedsLayout];
      if (!endStringCopy)
      {
        goto LABEL_20;
      }

      goto LABEL_8;
    }
  }

  else
  {
    _classicStartDateCell = 0;
  }

  if (!endStringCopy)
  {
LABEL_20:
    _classicEndDateCell = _classicStartDateCell;
    goto LABEL_23;
  }

LABEL_8:
  if (!self->_endComponents)
  {
    goto LABEL_20;
  }

  _classicEndDateCell = [(EKEventDateEditItem *)self _classicEndDateCell];

  if (_classicEndDateCell)
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
      detailTextLabel2 = [_classicEndDateCell detailTextLabel];
      [detailTextLabel2 setText:v23];

      largePart2TextLabel2 = [_classicEndDateCell largePart2TextLabel];
      [largePart2TextLabel2 setText:v24];
    }

    else
    {
      largePart2TextLabel2 = [_classicEndDateCell twoPartTextLabel];
      [largePart2TextLabel2 setTextPart1:v23 part2:v24];
    }

    [_classicEndDateCell setNeedsLayout];
  }

LABEL_23:
}

- (void)_resetStartString:(BOOL)string endString:(BOOL)endString
{
  endStringCopy = endString;
  stringCopy = string;
  if ([(EKEventDateEditItem *)self usesClassicUI])
  {

    [(EKEventDateEditItem *)self _resetClassicStartString:stringCopy endString:endStringCopy];
    return;
  }

  if (!stringCopy || !self->_startComponents)
  {
    v8 = 0;
LABEL_11:
    if (!endStringCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  _modernStartDateCell = [(EKEventDateEditItem *)self _modernStartDateCell];
  v8 = _modernStartDateCell;
  if (!_modernStartDateCell)
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

  [_modernStartDateCell updateWithDate:self->_startComponents timeZone:startTimeZone allDay:self->_allDay needsStrikethrough:0];
  [v8 setNeedsLayout];
  if (!endStringCopy)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (self->_endComponents)
  {
    _modernEndDateCell = [(EKEventDateEditItem *)self _modernEndDateCell];

    v10 = _modernEndDateCell;
    if (_modernEndDateCell)
    {
      v11 = [(NSDateComponents *)self->_startComponents copy];
      startComponents = self->_startComponents;
      self->_startComponents = v11;
      v13 = v11;

      _endDateIsBeforeStartDate = [(EKEventDateEditItem *)self _endDateIsBeforeStartDate];
      if (self->_showTimeZones)
      {
        endTimeZone = self->_endTimeZone;
      }

      else
      {
        endTimeZone = 0;
      }

      [_modernEndDateCell updateWithDate:self->_endComponents timeZone:endTimeZone allDay:self->_allDay needsStrikethrough:_endDateIsBeforeStartDate];

      [_modernEndDateCell setNeedsLayout];
      v10 = _modernEndDateCell;
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

- (void)_updateDatePicker:(id)picker animated:(BOOL)animated
{
  animatedCopy = animated;
  pickerCopy = picker;
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

  if (pickerCopy)
  {
    [(UIDatePicker *)pickerCopy setPreferredDatePickerStyle:v8];
    endDatePicker = pickerCopy;
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
    _endDateIsBeforeStartDate = [(EKEventDateEditItem *)self _endDateIsBeforeStartDate];
    selectedSubitem = self->_selectedSubitem;
    v13 = (selectedSubitem - 1) < 2;
    self->_endTimeWasMessedUp = _endDateIsBeforeStartDate;
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
    [v19 setDate:v20 animated:animatedCopy];
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

- (void)_datePickerChanged:(id)changed
{
  changedCopy = changed;
  date = [(UIDatePicker *)changedCopy date];
  startDatePicker = self->_startDatePicker;

  if (startDatePicker == changedCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(EKEventDateEditItem *)self dateChanged:date forSubitem:v6];
}

- (void)dateChanged:(id)changed forSubitem:(int64_t)subitem
{
  changedCopy = changed;
  self->_changingDate = 1;
  delegate = [(EKCalendarItemEditItem *)self delegate];
  [delegate editItem:self wantsDoneButtonDisabled:0];

  v7 = [(EKEventDateEditItem *)self _dateComponentsInSystemCalendarFromDate:changedCopy];
  if (subitem == 2)
  {
    [(EKEventDateEditItem *)self _setEndDate:v7];
  }

  else if (subitem == 1)
  {
    v8 = [(NSDateComponents *)self->_startComponents copy];
    [(EKEventDateEditItem *)self _setStartDate:v7];
    if (!self->_endTimeWasMessedUp)
    {
      v9 = [(EKEventDateEditItem *)self _dateInSystemCalendarFromComponents:self->_endComponents];
      v10 = [(EKEventDateEditItem *)self _dateInSystemCalendarFromComponents:v8];
      [v9 timeIntervalSinceDate:v10];
      v11 = [changedCopy dateByAddingTimeInterval:?];
      v12 = [(EKEventDateEditItem *)self _dateComponentsInSystemCalendarFromDate:v11];
      [(EKEventDateEditItem *)self _setEndDate:v12];
    }
  }

  self->_changingDate = 0;
  eventDateEditItemDelegate = [(EKEventDateEditItem *)self eventDateEditItemDelegate];

  if (eventDateEditItemDelegate)
  {
    v14 = [(EKEventDateEditItem *)self _calendarForEventComponents:1];
    eventDateEditItemDelegate2 = [(EKEventDateEditItem *)self eventDateEditItemDelegate];
    v16 = [v14 dateFromComponents:self->_startComponents];
    [eventDateEditItemDelegate2 dateChangedTo:v16];
  }

  [(EKCalendarItemEditItem *)self notifyDidEndEditing];
}

- (void)_allDayChanged:(id)changed
{
  self->_changingDate = 1;
  -[EKEventDateEditItem _setAllDay:](self, "_setAllDay:", [changed isOn]);
  self->_needsTargetedReload = 0;
  self->_changingDate = 0;
  [(EKCalendarItemEditItem *)self notifyDidStartEditing];

  [(EKCalendarItemEditItem *)self notifyDidEndEditing];
}

- (id)_timeZoneDescription:(id)description
{
  if (description)
  {
    cityName = [description cityName];
  }

  else
  {
    v4 = EventKitUIBundle();
    cityName = [v4 localizedStringForKey:@"Floating" value:&stru_1F4EF6790 table:0];
  }

  return cityName;
}

- (id)_dateInSystemCalendarFromComponents:(id)components
{
  v3 = MEMORY[0x1E695DEE8];
  componentsCopy = components;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar dateFromComponents:componentsCopy];

  return v6;
}

- (id)_dateFromComponents:(id)components timeZone:(id)zone
{
  componentsCopy = components;
  zoneCopy = zone;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar copy];

  if (zoneCopy)
  {
    [v8 setTimeZone:zoneCopy];
  }

  v9 = [v8 dateFromComponents:componentsCopy];

  return v9;
}

- (id)_dateComponentsInSystemCalendarFromDate:(id)date
{
  v3 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:254 fromDate:dateCopy];

  return v6;
}

- (EKEventDateEditItemDelegate)eventDateEditItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDateEditItemDelegate);

  return WeakRetained;
}

@end