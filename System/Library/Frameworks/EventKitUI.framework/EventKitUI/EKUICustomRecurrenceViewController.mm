@interface EKUICustomRecurrenceViewController
+ (BOOL)isRecurrenceRuleOrdinal:(id)ordinal;
- (BOOL)_disallowsRecurrenceInterval;
- (BOOL)prefersPushForSizeClass:(int64_t)class;
- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence;
- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence;
- (CGSize)calculatePreferredContentSize;
- (EKRecurrenceChooserController)currentChooser;
- (EKUICustomRecurrenceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (EKUICustomRecurrenceViewController)initWithStartDate:(id)date timeZone:(id)zone clearBackground:(BOOL)background;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_accessibilityIdentifierStringForFrequency:(int64_t)frequency;
- (id)_chooserForFrequency:(int64_t)frequency;
- (id)_everyStringForFrequency:(int64_t)frequency interval:(int64_t)interval;
- (id)_stringForFrequency:(int64_t)frequency;
- (id)_stringForFrequency:(int64_t)frequency interval:(int64_t)interval;
- (id)frequencyPopupMenu;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (id)recurrenceRule;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)_numberOfRowsForSection:(int64_t)section;
- (int64_t)_tagForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_createChoosersAndControls;
- (void)_frequencyPickerViewUpdated;
- (void)_refreshCacheAndPickers;
- (void)_setShowingIntervalPicker:(BOOL)picker;
- (void)_toggleInlineSpinnerForTag:(int64_t)tag;
- (void)_updateCustomPickerView;
- (void)_updateFrequencyRows;
- (void)_updateRecurrenceRule;
- (void)_updateSummaryLabel;
- (void)_updateTableSectionsFromFrequency:(int64_t)frequency toFrequency:(int64_t)toFrequency;
- (void)_yearOrdinalSwitchChanged:(id)changed;
- (void)loadView;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)recurrenceChooser:(id)chooser wantsRowReload:(int64_t)reload;
- (void)recurrenceChooserWantsReload:(id)reload;
- (void)resetBackgroundColor;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence;
- (void)setRecurrenceRule:(id)rule shouldUpdatePickers:(BOOL)pickers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EKUICustomRecurrenceViewController

- (EKUICustomRecurrenceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = EKUICustomRecurrenceViewController;
  v4 = [(EKUICustomRecurrenceViewController *)&v13 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_cachedFrequency = 0;
    v4->_cachedInterval = 1;
    date = [MEMORY[0x1E695DF00] date];
    startDate = v5->_startDate;
    v5->_startDate = date;

    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    timeZone = v5->_timeZone;
    v5->_timeZone = systemTimeZone;

    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Custom" value:&stru_1F4EF6790 table:0];
    [(EKUICustomRecurrenceViewController *)v5 setTitle:v11];
  }

  return v5;
}

- (EKUICustomRecurrenceViewController)initWithStartDate:(id)date timeZone:(id)zone clearBackground:(BOOL)background
{
  v19[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  zoneCopy = zone;
  v11 = [(EKUICustomRecurrenceViewController *)self initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, date);
    objc_storeStrong(&v12->_timeZone, zone);
    v12->_useClearBackground = background;
    [(EKUICustomRecurrenceViewController *)v12 _createChoosersAndControls];
    objc_initWeak(&location, v12);
    v19[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__EKUICustomRecurrenceViewController_initWithStartDate_timeZone_clearBackground___block_invoke;
    v16[3] = &unk_1E843EBE8;
    objc_copyWeak(&v17, &location);
    v14 = [(EKUICustomRecurrenceViewController *)v12 registerForTraitChanges:v13 withHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __81__EKUICustomRecurrenceViewController_initWithStartDate_timeZone_clearBackground___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetBackgroundColor];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(EKUICustomRecurrenceViewController *)self setTableView:v4];

  tableView = [(EKUICustomRecurrenceViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(EKUICustomRecurrenceViewController *)self tableView];
  [tableView2 setDataSource:self];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v7 lineHeight];
  v9 = v8;
  tableView3 = [(EKUICustomRecurrenceViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:v9];

  v11 = *MEMORY[0x1E69DE3D0];
  tableView4 = [(EKUICustomRecurrenceViewController *)self tableView];
  [tableView4 setSeparatorInset:{v11, 15.0, v11, 15.0}];

  [(EKUICustomRecurrenceViewController *)self resetBackgroundColor];
  if (EKUIUnscaledCatalyst())
  {
    v13 = EKUIUnscaledCatalystTableRowHeightDefault();
    tableView5 = [(EKUICustomRecurrenceViewController *)self tableView];
    [tableView5 setRowHeight:v13];

    tableView6 = [(EKUICustomRecurrenceViewController *)self tableView];
    [tableView6 setSeparatorStyle:1];
  }

  tableView7 = [(EKUICustomRecurrenceViewController *)self tableView];
  [(EKUICustomRecurrenceViewController *)self setView:tableView7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = EKUICustomRecurrenceViewController;
  [(EKUICustomRecurrenceViewController *)&v4 viewWillAppear:appear];
  [(EKUICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(EKUICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (void)resetBackgroundColor
{
  if (self->_useClearBackground || [(UIViewController *)self isPresentedInsidePopover])
  {
    tableView = [(EKUICustomRecurrenceViewController *)self tableView];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    tableView = [(EKUICustomRecurrenceViewController *)self tableView];
    clearColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  v4 = clearColor;
  [tableView setBackgroundColor:clearColor];
}

- (CGSize)calculatePreferredContentSize
{
  [(UITableView *)self->_tableView layoutIfNeeded];
  [(UITableView *)self->_tableView systemLayoutSizeFittingSize:*MEMORY[0x1E69DE098], *(MEMORY[0x1E69DE098] + 8)];
  v4 = v3;
  v5 = EKUIContainedControllerIdealWidth();
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_createChoosersAndControls
{
  v3 = [[EKRecurrenceWeekdayChooserController alloc] initWithDate:self->_startDate];
  weeklyChooser = self->_weeklyChooser;
  self->_weeklyChooser = v3;

  [(EKRecurrenceChooserController *)self->_weeklyChooser setDelegate:self];
  v5 = [[EKRecurrenceMonthlyChooserController alloc] initWithDate:self->_startDate];
  monthlyChooser = self->_monthlyChooser;
  self->_monthlyChooser = v5;

  [(EKRecurrenceMonthlyChooserController *)self->_monthlyChooser setDelegate:self];
  v7 = [[EKRecurrenceMonthChooserController alloc] initWithDate:self->_startDate];
  yearlyChooser = self->_yearlyChooser;
  self->_yearlyChooser = v7;

  [(EKRecurrenceChooserController *)self->_yearlyChooser setDelegate:self];
  v9 = [[EKRecurrenceOrdinalChooserController alloc] initWithDate:self->_startDate];
  yearlyOrdinalChooser = self->_yearlyOrdinalChooser;
  self->_yearlyOrdinalChooser = v9;

  [(EKRecurrenceChooserController *)self->_yearlyOrdinalChooser setDelegate:self];
  v11 = objc_opt_new();
  yearOrdinalSwitch = self->_yearOrdinalSwitch;
  self->_yearOrdinalSwitch = v11;

  [(UISwitch *)self->_yearOrdinalSwitch addTarget:self action:sel__yearOrdinalSwitchChanged_ forControlEvents:4096];
  [(UISwitch *)self->_yearOrdinalSwitch setAccessibilityIdentifier:@"year-ordinal-switch"];
  v13 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  frequencySummaryCell = self->_frequencySummaryCell;
  self->_frequencySummaryCell = v13;

  v15 = EventKitUIBundle();
  v16 = [v15 localizedStringForKey:@"Frequency" value:&stru_1F4EF6790 table:0];
  textLabel = [(EKUIPopupTableViewCell *)self->_frequencySummaryCell textLabel];
  [textLabel setText:v16];

  [(EKUIPopupTableViewCell *)self->_frequencySummaryCell setAccessibilityIdentifier:@"frequency-cell"];
  v18 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  intervalSummaryCell = self->_intervalSummaryCell;
  self->_intervalSummaryCell = &v18->super;

  if (self->_useClearBackground)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKRecurrenceMonthlyChooserController *)self->_monthlyChooser setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(EKRecurrenceChooserController *)self->_yearlyChooser setBackgroundColor:clearColor2];

    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    [(EKRecurrenceChooserController *)self->_yearlyOrdinalChooser setBackgroundColor:clearColor3];
  }
}

- (id)frequencyPopupMenu
{
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  v4 = 0;
  do
  {
    v5 = MEMORY[0x1E69DC628];
    v6 = [(EKUICustomRecurrenceViewController *)self _stringForFrequency:v4];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__EKUICustomRecurrenceViewController_frequencyPopupMenu__block_invoke;
    v13[3] = &unk_1E8442950;
    objc_copyWeak(v14, &location);
    v14[1] = v4;
    v7 = [v5 actionWithTitle:v6 image:0 identifier:0 handler:v13];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(EKUICustomRecurrenceViewController *)self _accessibilityIdentifierStringForFrequency:v4];
    v10 = [v8 stringWithFormat:@"frequency-item:%@", v9];
    [v7 setAccessibilityIdentifier:v10];

    if (v4 == self->_cachedFrequency)
    {
      [v7 setState:1];
    }

    [array addObject:v7];

    objc_destroyWeak(v14);
    ++v4;
  }

  while (v4 != 4);
  v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:array];
  objc_destroyWeak(&location);

  return v11;
}

void __56__EKUICustomRecurrenceViewController_frequencyPopupMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  if (WeakRetained[124] != v3)
  {
    WeakRetained[124] = v3;
    v4 = WeakRetained;
    [WeakRetained _frequencyPickerViewUpdated];
    WeakRetained = v4;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (([(EKUICustomRecurrenceViewController *)self isBeingDismissed]& 1) != 0 || ([(EKUICustomRecurrenceViewController *)self isMovingFromParentViewController]& 1) != 0 || [(EKUICustomRecurrenceViewController *)self alwaysCallCompletionBlock])
  {
    completionBlock = [(EKUICustomRecurrenceViewController *)self completionBlock];
    recurrenceRule = [(EKUICustomRecurrenceViewController *)self recurrenceRule];
    (completionBlock)[2](completionBlock, recurrenceRule);
  }

  v7.receiver = self;
  v7.super_class = EKUICustomRecurrenceViewController;
  [(EKUICustomRecurrenceViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(EKUICustomRecurrenceViewController *)self _tagForIndexPath:pathCopy];
  p_super = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  [(EKUITableViewCell *)p_super setSelectionStyle:0];
  if (v8 > 3)
  {
    switch(v8)
    {
      case 4:
        v26 = EventKitUIBundle();
        v27 = [v26 localizedStringForKey:@"Days of Week" value:&stru_1F4EF6790 table:0];
        textLabel = [(EKUITableViewCell *)p_super textLabel];
        [textLabel setText:v27];

        [(EKUITableViewCell *)p_super setAccessoryView:self->_yearOrdinalSwitch];
        goto LABEL_21;
      case 5:
        yearlyOrdinalChooser = [(EKUICustomRecurrenceViewController *)self yearlyOrdinalChooser];
        break;
      case 6:
        yearlyOrdinalChooser = [(EKUICustomRecurrenceViewController *)self currentChooser];
        break;
      default:
        goto LABEL_21;
    }

    v34 = yearlyOrdinalChooser;
    v29 = [yearlyOrdinalChooser cellForRow:{objc_msgSend(pathCopy, "row")}];

    goto LABEL_20;
  }

  switch(v8)
  {
    case 1:
      frequencyPopupMenu = [(EKUICustomRecurrenceViewController *)self frequencyPopupMenu];
      [(EKUIPopupTableViewCell *)self->_frequencySummaryCell setPopupMenu:frequencyPopupMenu];

      v25 = self->_frequencySummaryCell;
      p_super = &v25->super;
      break;
    case 2:
      v29 = self->_intervalSummaryCell;

      v30 = [(EKUICustomRecurrenceViewController *)self _everyStringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
      textLabel2 = [(UITableViewCell *)v29 textLabel];
      [textLabel2 setText:v30];

      [(UITableViewCell *)v29 setAccessibilityIdentifier:@"interval-summary-cell"];
      v32 = [(EKUICustomRecurrenceViewController *)self _stringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
      detailTextLabel = [(UITableViewCell *)v29 detailTextLabel];
      [detailTextLabel setText:v32];

LABEL_20:
      p_super = v29;
      break;
    case 3:
      if (!self->_intervalPicker)
      {
        v10 = objc_alloc_init(MEMORY[0x1E69DCD78]);
        intervalPicker = self->_intervalPicker;
        self->_intervalPicker = v10;

        [(UIPickerView *)self->_intervalPicker setDelegate:self];
        [(UIPickerView *)self->_intervalPicker setDataSource:self];
        [(UIPickerView *)self->_intervalPicker setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      contentView = [(EKUITableViewCell *)p_super contentView];
      [contentView addSubview:self->_intervalPicker];

      contentView2 = [(EKUITableViewCell *)p_super contentView];
      v14 = MEMORY[0x1E696ACD8];
      v15 = _NSDictionaryOfVariableBindings(&cfstr_Intervalpicker.isa, self->_intervalPicker, 0);
      v16 = [v14 constraintsWithVisualFormat:@"H:|[_intervalPicker]|" options:0 metrics:0 views:v15];
      [contentView2 addConstraints:v16];

      contentView3 = [(EKUITableViewCell *)p_super contentView];
      v18 = MEMORY[0x1E696ACD8];
      v19 = _NSDictionaryOfVariableBindings(&cfstr_Intervalpicker.isa, self->_intervalPicker, 0);
      v20 = [v18 constraintsWithVisualFormat:@"V:|[_intervalPicker]|" options:0 metrics:0 views:v19];
      [contentView3 addConstraints:v20];

      v21 = self->_cachedInterval - 1;
      if ([(EKUICustomRecurrenceViewController *)self _disallowsRecurrenceInterval])
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      [(UIPickerView *)self->_intervalPicker selectRow:v22 inComponent:0 animated:0];
      break;
  }

LABEL_21:
  if (EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    [(EKUITableViewCell *)p_super setBackgroundColor:backgroundColor];
  }

  return p_super;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  cachedFrequency = self->_cachedFrequency;
  v4 = 1;
  if (cachedFrequency)
  {
    v4 = 2;
  }

  if (cachedFrequency == 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(EKUICustomRecurrenceViewController *)self _tagForIndexPath:pathCopy];
  v9 = 0.0;
  if (v8 <= 2)
  {
    if (v8 < 3)
    {
LABEL_6:
      [viewCopy rowHeight];
LABEL_7:
      v9 = v10;
    }
  }

  else
  {
    if (v8 <= 4)
    {
      if (v8 == 3)
      {
        v9 = *MEMORY[0x1E69DE3D0];
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    if (v8 == 6)
    {
      currentChooser = [(EKUICustomRecurrenceViewController *)self currentChooser];
      [currentChooser heightForRow:{objc_msgSend(pathCopy, "row")}];
      v9 = v15;

      if (EKUIUnscaledCatalyst() && *MEMORY[0x1E69DE3D0] == v9)
      {
        v10 = EKUIUnscaledCatalystTableRowHeightDefault();
        goto LABEL_7;
      }
    }

    else if (v8 == 5)
    {
      yearlyOrdinalChooser = [(EKUICustomRecurrenceViewController *)self yearlyOrdinalChooser];
      [yearlyOrdinalChooser heightForRow:{objc_msgSend(pathCopy, "row")}];
      v9 = v13;
    }
  }

LABEL_8:

  return v9;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  if ([v6 selectionStyle])
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = [(EKUICustomRecurrenceViewController *)self _tagForIndexPath:pathCopy];
  if (v6 == 2)
  {
    [(EKUICustomRecurrenceViewController *)self _toggleInlineSpinnerForTag:2];
  }

  else if (v6 == 6)
  {
    currentChooser = [(EKUICustomRecurrenceViewController *)self currentChooser];
    [currentChooser rowTapped:{objc_msgSend(pathCopy, "row")}];
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(EKUICustomRecurrenceViewController *)self recurrenceSummaryString:view];
  }

  return v6;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  if (EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    contentView = [footerViewCopy contentView];
    [contentView setBackgroundColor:backgroundColor];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v10 = pathCopy;
  if (self->_useClearBackground || [pathCopy section] == 1 && (-[EKUICustomRecurrenceViewController currentChooser](self, "currentChooser"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "drawBackgroundForRow:", objc_msgSend(v10, "row")), v14, (v15 & 1) == 0))
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [cellCopy setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    backgroundView = [cellCopy backgroundView];
    [backgroundView setBackgroundColor:clearColor2];
  }
}

- (void)_toggleInlineSpinnerForTag:(int64_t)tag
{
  tableView = [(EKUICustomRecurrenceViewController *)self tableView];
  [tableView beginUpdates];

  if (tag == 2)
  {
    [(EKUICustomRecurrenceViewController *)self _setShowingIntervalPicker:!self->_showingIntervalPicker];
  }

  tableView2 = [(EKUICustomRecurrenceViewController *)self tableView];
  [tableView2 endUpdates];

  [(EKUICustomRecurrenceViewController *)self calculatePreferredContentSize];

  [(EKUICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (void)_setShowingIntervalPicker:(BOOL)picker
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_showingIntervalPicker != picker)
  {
    pickerCopy = picker;
    self->_showingIntervalPicker = picker;
    v5 = [MEMORY[0x1E696AC88] indexPathForRow:2 inSection:0];
    showingIntervalPicker = self->_showingIntervalPicker;
    tableView = [(EKUICustomRecurrenceViewController *)self tableView];
    if (showingIntervalPicker)
    {
      v12[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [tableView insertRowsAtIndexPaths:v8 withRowAnimation:6];
    }

    else
    {
      v11 = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      [tableView deleteRowsAtIndexPaths:v8 withRowAnimation:6];
    }

    if (pickerCopy)
    {
      tableView = [(EKUICustomRecurrenceViewController *)self view];
      [tableView tintColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] tableCellGrayTextColor];
    }
    v9 = ;
    detailTextLabel = [(UITableViewCell *)self->_intervalSummaryCell detailTextLabel];
    [detailTextLabel setTextColor:v9];

    if (pickerCopy)
    {

      v9 = tableView;
    }
  }
}

- (void)recurrenceChooserWantsReload:(id)reload
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__EKUICustomRecurrenceViewController_recurrenceChooserWantsReload___block_invoke;
  v3[3] = &unk_1E843EC60;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

void __67__EKUICustomRecurrenceViewController_recurrenceChooserWantsReload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
  [v2 reloadSections:v1 withRowAnimation:0];
}

- (void)recurrenceChooser:(id)chooser wantsRowReload:(int64_t)reload
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__EKUICustomRecurrenceViewController_recurrenceChooser_wantsRowReload___block_invoke;
  v4[3] = &unk_1E843F690;
  v4[4] = self;
  v4[5] = reload;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
}

void __71__EKUICustomRecurrenceViewController_recurrenceChooser_wantsRowReload___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) tableView];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 40) inSection:1];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 reloadRowsAtIndexPaths:v4 withRowAnimation:0];
}

- (void)_updateRecurrenceRule
{
  cachedFrequency = self->_cachedFrequency;
  cachedInterval = self->_cachedInterval;
  v12 = objc_opt_new();
  currentChooser = [(EKUICustomRecurrenceViewController *)self currentChooser];
  v6 = currentChooser;
  if (currentChooser)
  {
    cachedFrequency = [currentChooser frequency];
    [v6 updateRecurrenceRuleBuilder:v12];
  }

  [v12 setFrequency:cachedFrequency];
  [v12 setInterval:cachedInterval];
  yearlyChooser = [(EKUICustomRecurrenceViewController *)self yearlyChooser];
  if (v6 == yearlyChooser)
  {
    yearOrdinalSwitch = [(EKUICustomRecurrenceViewController *)self yearOrdinalSwitch];
    isOn = [yearOrdinalSwitch isOn];

    if (!isOn)
    {
      goto LABEL_7;
    }

    yearlyChooser = [(EKUICustomRecurrenceViewController *)self yearlyOrdinalChooser];
    [yearlyChooser updateRecurrenceRuleBuilder:v12];
  }

LABEL_7:
  recurrenceRule = [v12 recurrenceRule];
  [recurrenceRule setFirstDayOfTheWeek:{-[EKRecurrenceRule firstDayOfTheWeek](self->_cachedRecurrenceRule, "firstDayOfTheWeek")}];
  recurrenceEnd = [(EKRecurrenceRule *)self->_cachedRecurrenceRule recurrenceEnd];
  [recurrenceRule setRecurrenceEnd:recurrenceEnd];

  [(EKUICustomRecurrenceViewController *)self setRecurrenceRule:recurrenceRule shouldUpdatePickers:0];
}

- (id)recurrenceRule
{
  cachedRecurrenceRule = self->_cachedRecurrenceRule;
  if (!cachedRecurrenceRule)
  {
    [(EKUICustomRecurrenceViewController *)self _updateRecurrenceRule];
    cachedRecurrenceRule = self->_cachedRecurrenceRule;
  }

  return cachedRecurrenceRule;
}

- (void)setRecurrenceRule:(id)rule shouldUpdatePickers:(BOOL)pickers
{
  pickersCopy = pickers;
  ruleCopy = rule;
  if (self->_cachedRecurrenceRule != ruleCopy)
  {
    v8 = ruleCopy;
    objc_storeStrong(&self->_cachedRecurrenceRule, rule);
    ruleCopy = v8;
    if (v8)
    {
      [(EKUICustomRecurrenceViewController *)self _updateSummaryLabel];
      ruleCopy = v8;
    }

    if (pickersCopy)
    {
      [(EKUICustomRecurrenceViewController *)self _refreshCacheAndPickers];
      ruleCopy = v8;
    }
  }
}

- (void)_refreshCacheAndPickers
{
  self->_cachedInterval = [(EKRecurrenceRule *)self->_cachedRecurrenceRule interval];
  self->_cachedFrequency = [(EKRecurrenceRule *)self->_cachedRecurrenceRule frequency];
  v3 = [objc_opt_class() isRecurrenceRuleOrdinal:self->_cachedRecurrenceRule];
  [(EKUICustomRecurrenceViewController *)self _updateCustomPickerView];
  if ([(EKRecurrenceRule *)self->_cachedRecurrenceRule frequency]== EKRecurrenceFrequencyYearly)
  {
    yearOrdinalSwitch = [(EKUICustomRecurrenceViewController *)self yearOrdinalSwitch];
    [yearOrdinalSwitch setOn:v3];
  }
}

+ (BOOL)isRecurrenceRuleOrdinal:(id)ordinal
{
  ordinalCopy = ordinal;
  setPositions = [ordinalCopy setPositions];
  v5 = [setPositions count];

  if (v5)
  {
    v6 = 1;
  }

  else if ([ordinalCopy frequency] == 2 || objc_msgSend(ordinalCopy, "frequency") == 3)
  {
    daysOfTheWeek = [ordinalCopy daysOfTheWeek];
    v6 = [daysOfTheWeek count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence
{
  monthlyChooser = [(EKUICustomRecurrenceViewController *)self monthlyChooser];
  prohibitsMultipleDaysInMonthlyRecurrence = [monthlyChooser prohibitsMultipleDaysInMonthlyRecurrence];

  return prohibitsMultipleDaysInMonthlyRecurrence;
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence
{
  recurrenceCopy = recurrence;
  monthlyChooser = [(EKUICustomRecurrenceViewController *)self monthlyChooser];
  [monthlyChooser setProhibitsMultipleDaysInMonthlyRecurrence:recurrenceCopy];
}

- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence
{
  yearlyChooser = [(EKUICustomRecurrenceViewController *)self yearlyChooser];
  prohibitsMultipleMonthsInYearlyRecurrence = [yearlyChooser prohibitsMultipleMonthsInYearlyRecurrence];

  return prohibitsMultipleMonthsInYearlyRecurrence;
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence
{
  recurrenceCopy = recurrence;
  yearlyChooser = [(EKUICustomRecurrenceViewController *)self yearlyChooser];
  [yearlyChooser setProhibitsMultipleMonthsInYearlyRecurrence:recurrenceCopy];
}

- (void)_updateSummaryLabel
{
  recurrenceRule = [(EKUICustomRecurrenceViewController *)self recurrenceRule];
  startDate = [(EKUICustomRecurrenceViewController *)self startDate];
  v5 = CUIKStringForRecurrenceRuleAndDate();
  [(EKUICustomRecurrenceViewController *)self setRecurrenceSummaryString:v5];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__EKUICustomRecurrenceViewController__updateSummaryLabel__block_invoke;
  v6[3] = &unk_1E843EC60;
  v6[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
}

void __57__EKUICustomRecurrenceViewController__updateSummaryLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v2 _reloadSectionHeaderFooters:v3 withRowAnimation:0];

  v5 = [*(a1 + 32) tableView];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v5 _reloadSectionHeaderFooters:v4 withRowAnimation:0];
}

- (void)_updateCustomPickerView
{
  currentChooser = [(EKUICustomRecurrenceViewController *)self currentChooser];
  frequency = [currentChooser frequency];

  v5 = [(EKUICustomRecurrenceViewController *)self _chooserForFrequency:self->_cachedFrequency];
  [(EKUICustomRecurrenceViewController *)self setCurrentChooser:v5];

  currentChooser2 = [(EKUICustomRecurrenceViewController *)self currentChooser];
  frequency2 = [currentChooser2 frequency];

  currentChooser3 = [(EKUICustomRecurrenceViewController *)self currentChooser];
  [currentChooser3 updateFromRecurrenceRule:self->_cachedRecurrenceRule];

  [(EKUICustomRecurrenceViewController *)self _updateTableSectionsFromFrequency:frequency toFrequency:frequency2];
}

- (void)_updateTableSectionsFromFrequency:(int64_t)frequency toFrequency:(int64_t)toFrequency
{
  tableView = [(EKUICustomRecurrenceViewController *)self tableView];
  [tableView beginUpdates];

  if (frequency == 3 || toFrequency != 3)
  {
    if (frequency == 3 && toFrequency != 3)
    {
      tableView2 = [(EKUICustomRecurrenceViewController *)self tableView];
      v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:2];
      [tableView2 deleteSections:v14 withRowAnimation:6];

      v10 = toFrequency != 0;
      goto LABEL_10;
    }
  }

  else
  {
    tableView3 = [(EKUICustomRecurrenceViewController *)self tableView];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:2];
    [tableView3 insertSections:v9 withRowAnimation:6];
  }

  v10 = toFrequency != 0;
  if (!frequency && toFrequency)
  {
    tableView4 = [(EKUICustomRecurrenceViewController *)self tableView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [tableView4 insertSections:v12 withRowAnimation:6];
LABEL_13:

    goto LABEL_14;
  }

LABEL_10:
  if (frequency && !toFrequency)
  {
    tableView4 = [(EKUICustomRecurrenceViewController *)self tableView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [tableView4 deleteSections:v12 withRowAnimation:6];
    goto LABEL_13;
  }

  v16 = !v10;
  if (frequency == toFrequency)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__EKUICustomRecurrenceViewController__updateTableSectionsFromFrequency_toFrequency___block_invoke;
    v17[3] = &unk_1E843EC60;
    v17[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v17];
  }

LABEL_14:
  tableView5 = [(EKUICustomRecurrenceViewController *)self tableView];
  [tableView5 endUpdates];

  [(EKUICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(EKUICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

void __84__EKUICustomRecurrenceViewController__updateTableSectionsFromFrequency_toFrequency___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
  [v2 reloadSections:v1 withRowAnimation:0];
}

- (void)_updateFrequencyRows
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:0];
  tableView = [(EKUICustomRecurrenceViewController *)self tableView];
  v7[0] = v3;
  v7[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  [tableView reloadRowsAtIndexPaths:v6 withRowAnimation:5];
}

- (void)_frequencyPickerViewUpdated
{
  [(EKUICustomRecurrenceViewController *)self _updateCustomPickerView];
  [(EKUICustomRecurrenceViewController *)self _updateRecurrenceRule];
  [(EKUICustomRecurrenceViewController *)self _updateFrequencyRows];
  intervalPicker = self->_intervalPicker;

  [(UIPickerView *)intervalPicker reloadAllComponents];
}

- (id)_chooserForFrequency:(int64_t)frequency
{
  switch(frequency)
  {
    case 3:
      yearlyChooser = [(EKUICustomRecurrenceViewController *)self yearlyChooser];
      break;
    case 2:
      yearlyChooser = [(EKUICustomRecurrenceViewController *)self monthlyChooser];
      break;
    case 1:
      yearlyChooser = [(EKUICustomRecurrenceViewController *)self weeklyChooser];
      break;
    default:
      yearlyChooser = 0;
      break;
  }

  return yearlyChooser;
}

- (void)_yearOrdinalSwitchChanged:(id)changed
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AC88];
  changedCopy = changed;
  v6 = [v4 indexPathForRow:1 inSection:2];
  isOn = [changedCopy isOn];

  tableView = [(EKUICustomRecurrenceViewController *)self tableView];
  if (isOn)
  {
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [tableView insertRowsAtIndexPaths:v9 withRowAnimation:6];

    tableView = [(EKUICustomRecurrenceViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:v6 atScrollPosition:3 animated:1];
  }

  else
  {
    v11 = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [tableView deleteRowsAtIndexPaths:v10 withRowAnimation:6];
  }

  [(EKUICustomRecurrenceViewController *)self _updateRecurrenceRule];
}

- (id)_stringForFrequency:(int64_t)frequency
{
  if (frequency <= 3)
  {
    self = CUIKStringForRepeatType();
  }

  return self;
}

- (id)_accessibilityIdentifierStringForFrequency:(int64_t)frequency
{
  if (frequency <= 3)
  {
    self = CUIKAccessibilityIdentifierStringForRepeatType();
  }

  return self;
}

- (id)_stringForFrequency:(int64_t)frequency interval:(int64_t)interval
{
  interval = 0;
  if (frequency > 1)
  {
    if (frequency == 2)
    {
      if (interval <= 1)
      {
        v6 = EventKitUIBundle();
        v7 = v6;
        v8 = @"Custom recurrence frequency month";
        v9 = @"Month";
        goto LABEL_14;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = EventKitUIBundle();
      v7 = v11;
      v12 = @"repeat_interval_months";
    }

    else
    {
      if (frequency != 3)
      {
        goto LABEL_21;
      }

      if (interval <= 1)
      {
        v6 = EventKitUIBundle();
        v7 = v6;
        v8 = @"Custom recurrence frequency year";
        v9 = @"Year";
        goto LABEL_14;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = EventKitUIBundle();
      v7 = v11;
      v12 = @"repeat_interval_years";
    }

LABEL_19:
    v13 = [v11 localizedStringForKey:v12 value:&stru_1F4EF6790 table:0];
    interval = [v10 localizedStringWithFormat:v13, interval];

    goto LABEL_20;
  }

  if (!frequency)
  {
    if (interval <= 1)
    {
      v6 = EventKitUIBundle();
      v7 = v6;
      v8 = @"Custom recurrence frequency day";
      v9 = @"Day";
      goto LABEL_14;
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = EventKitUIBundle();
    v7 = v11;
    v12 = @"repeat_interval_days";
    goto LABEL_19;
  }

  if (frequency != 1)
  {
    goto LABEL_21;
  }

  if (interval > 1)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = EventKitUIBundle();
    v7 = v11;
    v12 = @"repeat_interval_weeks";
    goto LABEL_19;
  }

  v6 = EventKitUIBundle();
  v7 = v6;
  v8 = @"Custom recurrence frequency week";
  v9 = @"Week";
LABEL_14:
  interval = [v6 localizedStringForKey:v8 value:v9 table:0];
LABEL_20:

LABEL_21:

  return interval;
}

- (id)_everyStringForFrequency:(int64_t)frequency interval:(int64_t)interval
{
  interval = 0;
  if (frequency > 1)
  {
    if (frequency == 2)
    {
      if (interval <= 1)
      {
        v6 = EventKitUIBundle();
        v7 = v6;
        v8 = @"Custom recurrence frequency month every string";
        goto LABEL_14;
      }

      v9 = MEMORY[0x1E696AEC0];
      v10 = EventKitUIBundle();
      v7 = v10;
      v11 = @"every_interval_months";
    }

    else
    {
      if (frequency != 3)
      {
        goto LABEL_21;
      }

      if (interval <= 1)
      {
        v6 = EventKitUIBundle();
        v7 = v6;
        v8 = @"Custom recurrence frequency year every string";
        goto LABEL_14;
      }

      v9 = MEMORY[0x1E696AEC0];
      v10 = EventKitUIBundle();
      v7 = v10;
      v11 = @"every_interval_years";
    }

LABEL_19:
    v12 = [v10 localizedStringForKey:v11 value:&stru_1F4EF6790 table:0];
    interval = [v9 localizedStringWithFormat:v12, interval];

    goto LABEL_20;
  }

  if (!frequency)
  {
    if (interval <= 1)
    {
      v6 = EventKitUIBundle();
      v7 = v6;
      v8 = @"Custom recurrence frequency day every string";
      goto LABEL_14;
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = EventKitUIBundle();
    v7 = v10;
    v11 = @"every_interval_days";
    goto LABEL_19;
  }

  if (frequency != 1)
  {
    goto LABEL_21;
  }

  if (interval > 1)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = EventKitUIBundle();
    v7 = v10;
    v11 = @"every_interval_weeks";
    goto LABEL_19;
  }

  v6 = EventKitUIBundle();
  v7 = v6;
  v8 = @"Custom recurrence frequency week every string";
LABEL_14:
  interval = [v6 localizedStringForKey:v8 value:@"Every" table:0];
LABEL_20:

LABEL_21:

  return interval;
}

- (int64_t)_tagForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  if (section == 2)
  {
    if (self->_cachedFrequency != 3)
    {
      return 0;
    }

    if (v5)
    {
      return 5;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if (section == 1)
    {
      return 6;
    }

    if (section)
    {
      return 0;
    }

    if (v5)
    {
      if (v5 != 2)
      {
        if (v5 == 1)
        {
          return 2;
        }

        return 0;
      }

      if (self->_showingIntervalPicker)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }
}

- (int64_t)_numberOfRowsForSection:(int64_t)section
{
  if (section == 2)
  {
    if (self->_cachedFrequency == 3)
    {
      yearOrdinalSwitch = [(EKUICustomRecurrenceViewController *)self yearOrdinalSwitch];
      if ([yearOrdinalSwitch isOn])
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      return v3;
    }

    return 0;
  }

  if (section == 1)
  {
    currentChooser = [(EKUICustomRecurrenceViewController *)self currentChooser];
    numberOfRows = [currentChooser numberOfRows];

    return numberOfRows;
  }

  if (section)
  {
    return 0;
  }

  return self->_showingIntervalPicker | 2;
}

- (BOOL)_disallowsRecurrenceInterval
{
  prohibitsYearlyRecurrenceInterval = [(EKUICustomRecurrenceViewController *)self prohibitsYearlyRecurrenceInterval];
  if (prohibitsYearlyRecurrenceInterval)
  {
    LOBYTE(prohibitsYearlyRecurrenceInterval) = self->_cachedFrequency == 3;
  }

  return prohibitsYearlyRecurrenceInterval;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  if (component)
  {
    return 1;
  }

  if ([(EKUICustomRecurrenceViewController *)self _disallowsRecurrenceInterval:view])
  {
    return 1;
  }

  return 999;
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  viewCopy = view;
  reusingViewCopy = reusingView;
  v11 = reusingViewCopy;
  if (!reusingViewCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v11 setTextAlignment:1];
    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:21.0];
    [v11 setFont:v12];

    [v11 setAdjustsFontSizeToFitWidth:1];
    [v11 setMinimumScaleFactor:0.7];
  }

  if (component == 1)
  {
    v13 = 0;
    v14 = [viewCopy selectedRowInComponent:0] + 1;
    cachedFrequency = self->_cachedFrequency;
    if (cachedFrequency > 1)
    {
      if (cachedFrequency == 2)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = EventKitUIBundle();
        v18 = v17;
        v19 = @"months";
      }

      else
      {
        if (cachedFrequency != 3)
        {
          goto LABEL_17;
        }

        v16 = MEMORY[0x1E696AEC0];
        v17 = EventKitUIBundle();
        v18 = v17;
        v19 = @"years";
      }
    }

    else if (cachedFrequency)
    {
      if (cachedFrequency != 1)
      {
        goto LABEL_17;
      }

      v16 = MEMORY[0x1E696AEC0];
      v17 = EventKitUIBundle();
      v18 = v17;
      v19 = @"weeks";
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = EventKitUIBundle();
      v18 = v17;
      v19 = @"days";
    }

    v20 = [v17 localizedStringForKey:v19 value:&stru_1F4EF6790 table:0];
    v13 = [v16 localizedStringWithFormat:v20, v14];
  }

  else if (component)
  {
    v13 = 0;
  }

  else
  {
    v13 = CUIKLocalizedStringForInteger();
  }

LABEL_17:
  [v11 setText:v13];
  [viewCopy rowSizeForComponent:component];
  [v11 setFrame:{0.0, 0.0, v21 + -18.0, v22}];

  return v11;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  self->_cachedInterval = [viewCopy selectedRowInComponent:0] + 1;
  [(EKUICustomRecurrenceViewController *)self _frequencyPickerViewUpdated];
  if (!component)
  {
    [viewCopy reloadComponent:1];
  }
}

- (BOOL)prefersPushForSizeClass:(int64_t)class
{
  if (class == 1)
  {
    return 1;
  }

  else
  {
    return EKUIUseLargeFormatPhoneUI();
  }
}

- (EKRecurrenceChooserController)currentChooser
{
  WeakRetained = objc_loadWeakRetained(&self->_currentChooser);

  return WeakRetained;
}

@end