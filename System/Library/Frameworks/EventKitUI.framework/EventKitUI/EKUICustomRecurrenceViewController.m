@interface EKUICustomRecurrenceViewController
+ (BOOL)isRecurrenceRuleOrdinal:(id)a3;
- (BOOL)_disallowsRecurrenceInterval;
- (BOOL)prefersPushForSizeClass:(int64_t)a3;
- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence;
- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence;
- (CGSize)calculatePreferredContentSize;
- (EKRecurrenceChooserController)currentChooser;
- (EKUICustomRecurrenceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (EKUICustomRecurrenceViewController)initWithStartDate:(id)a3 timeZone:(id)a4 clearBackground:(BOOL)a5;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_accessibilityIdentifierStringForFrequency:(int64_t)a3;
- (id)_chooserForFrequency:(int64_t)a3;
- (id)_everyStringForFrequency:(int64_t)a3 interval:(int64_t)a4;
- (id)_stringForFrequency:(int64_t)a3;
- (id)_stringForFrequency:(int64_t)a3 interval:(int64_t)a4;
- (id)frequencyPopupMenu;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (id)recurrenceRule;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_numberOfRowsForSection:(int64_t)a3;
- (int64_t)_tagForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_createChoosersAndControls;
- (void)_frequencyPickerViewUpdated;
- (void)_refreshCacheAndPickers;
- (void)_setShowingIntervalPicker:(BOOL)a3;
- (void)_toggleInlineSpinnerForTag:(int64_t)a3;
- (void)_updateCustomPickerView;
- (void)_updateFrequencyRows;
- (void)_updateRecurrenceRule;
- (void)_updateSummaryLabel;
- (void)_updateTableSectionsFromFrequency:(int64_t)a3 toFrequency:(int64_t)a4;
- (void)_yearOrdinalSwitchChanged:(id)a3;
- (void)loadView;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)recurrenceChooser:(id)a3 wantsRowReload:(int64_t)a4;
- (void)recurrenceChooserWantsReload:(id)a3;
- (void)resetBackgroundColor;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)a3;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3;
- (void)setRecurrenceRule:(id)a3 shouldUpdatePickers:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKUICustomRecurrenceViewController

- (EKUICustomRecurrenceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v13.receiver = self;
  v13.super_class = EKUICustomRecurrenceViewController;
  v4 = [(EKUICustomRecurrenceViewController *)&v13 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_cachedFrequency = 0;
    v4->_cachedInterval = 1;
    v6 = [MEMORY[0x1E695DF00] date];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [MEMORY[0x1E695DFE8] systemTimeZone];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Custom" value:&stru_1F4EF6790 table:0];
    [(EKUICustomRecurrenceViewController *)v5 setTitle:v11];
  }

  return v5;
}

- (EKUICustomRecurrenceViewController)initWithStartDate:(id)a3 timeZone:(id)a4 clearBackground:(BOOL)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [(EKUICustomRecurrenceViewController *)self initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, a3);
    objc_storeStrong(&v12->_timeZone, a4);
    v12->_useClearBackground = a5;
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

  v5 = [(EKUICustomRecurrenceViewController *)self tableView];
  [v5 setDelegate:self];

  v6 = [(EKUICustomRecurrenceViewController *)self tableView];
  [v6 setDataSource:self];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v7 lineHeight];
  v9 = v8;
  v10 = [(EKUICustomRecurrenceViewController *)self tableView];
  [v10 setEstimatedRowHeight:v9];

  v11 = *MEMORY[0x1E69DE3D0];
  v12 = [(EKUICustomRecurrenceViewController *)self tableView];
  [v12 setSeparatorInset:{v11, 15.0, v11, 15.0}];

  [(EKUICustomRecurrenceViewController *)self resetBackgroundColor];
  if (EKUIUnscaledCatalyst())
  {
    v13 = EKUIUnscaledCatalystTableRowHeightDefault();
    v14 = [(EKUICustomRecurrenceViewController *)self tableView];
    [v14 setRowHeight:v13];

    v15 = [(EKUICustomRecurrenceViewController *)self tableView];
    [v15 setSeparatorStyle:1];
  }

  v16 = [(EKUICustomRecurrenceViewController *)self tableView];
  [(EKUICustomRecurrenceViewController *)self setView:v16];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKUICustomRecurrenceViewController;
  [(EKUICustomRecurrenceViewController *)&v4 viewWillAppear:a3];
  [(EKUICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(EKUICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (void)resetBackgroundColor
{
  if (self->_useClearBackground || [(UIViewController *)self isPresentedInsidePopover])
  {
    v5 = [(EKUICustomRecurrenceViewController *)self tableView];
    v3 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v5 = [(EKUICustomRecurrenceViewController *)self tableView];
    v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  v4 = v3;
  [v5 setBackgroundColor:v3];
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
  v17 = [(EKUIPopupTableViewCell *)self->_frequencySummaryCell textLabel];
  [v17 setText:v16];

  [(EKUIPopupTableViewCell *)self->_frequencySummaryCell setAccessibilityIdentifier:@"frequency-cell"];
  v18 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  intervalSummaryCell = self->_intervalSummaryCell;
  self->_intervalSummaryCell = &v18->super;

  if (self->_useClearBackground)
  {
    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(EKRecurrenceMonthlyChooserController *)self->_monthlyChooser setBackgroundColor:v20];

    v21 = [MEMORY[0x1E69DC888] clearColor];
    [(EKRecurrenceChooserController *)self->_yearlyChooser setBackgroundColor:v21];

    v22 = [MEMORY[0x1E69DC888] clearColor];
    [(EKRecurrenceChooserController *)self->_yearlyOrdinalChooser setBackgroundColor:v22];
  }
}

- (id)frequencyPopupMenu
{
  v3 = [MEMORY[0x1E695DF70] array];
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

    [v3 addObject:v7];

    objc_destroyWeak(v14);
    ++v4;
  }

  while (v4 != 4);
  v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v3];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (([(EKUICustomRecurrenceViewController *)self isBeingDismissed]& 1) != 0 || ([(EKUICustomRecurrenceViewController *)self isMovingFromParentViewController]& 1) != 0 || [(EKUICustomRecurrenceViewController *)self alwaysCallCompletionBlock])
  {
    v5 = [(EKUICustomRecurrenceViewController *)self completionBlock];
    v6 = [(EKUICustomRecurrenceViewController *)self recurrenceRule];
    (v5)[2](v5, v6);
  }

  v7.receiver = self;
  v7.super_class = EKUICustomRecurrenceViewController;
  [(EKUICustomRecurrenceViewController *)&v7 viewWillDisappear:v3];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKUICustomRecurrenceViewController *)self _tagForIndexPath:v7];
  p_super = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  [(EKUITableViewCell *)p_super setSelectionStyle:0];
  if (v8 > 3)
  {
    switch(v8)
    {
      case 4:
        v26 = EventKitUIBundle();
        v27 = [v26 localizedStringForKey:@"Days of Week" value:&stru_1F4EF6790 table:0];
        v28 = [(EKUITableViewCell *)p_super textLabel];
        [v28 setText:v27];

        [(EKUITableViewCell *)p_super setAccessoryView:self->_yearOrdinalSwitch];
        goto LABEL_21;
      case 5:
        v23 = [(EKUICustomRecurrenceViewController *)self yearlyOrdinalChooser];
        break;
      case 6:
        v23 = [(EKUICustomRecurrenceViewController *)self currentChooser];
        break;
      default:
        goto LABEL_21;
    }

    v34 = v23;
    v29 = [v23 cellForRow:{objc_msgSend(v7, "row")}];

    goto LABEL_20;
  }

  switch(v8)
  {
    case 1:
      v24 = [(EKUICustomRecurrenceViewController *)self frequencyPopupMenu];
      [(EKUIPopupTableViewCell *)self->_frequencySummaryCell setPopupMenu:v24];

      v25 = self->_frequencySummaryCell;
      p_super = &v25->super;
      break;
    case 2:
      v29 = self->_intervalSummaryCell;

      v30 = [(EKUICustomRecurrenceViewController *)self _everyStringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
      v31 = [(UITableViewCell *)v29 textLabel];
      [v31 setText:v30];

      [(UITableViewCell *)v29 setAccessibilityIdentifier:@"interval-summary-cell"];
      v32 = [(EKUICustomRecurrenceViewController *)self _stringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
      v33 = [(UITableViewCell *)v29 detailTextLabel];
      [v33 setText:v32];

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

      v12 = [(EKUITableViewCell *)p_super contentView];
      [v12 addSubview:self->_intervalPicker];

      v13 = [(EKUITableViewCell *)p_super contentView];
      v14 = MEMORY[0x1E696ACD8];
      v15 = _NSDictionaryOfVariableBindings(&cfstr_Intervalpicker.isa, self->_intervalPicker, 0);
      v16 = [v14 constraintsWithVisualFormat:@"H:|[_intervalPicker]|" options:0 metrics:0 views:v15];
      [v13 addConstraints:v16];

      v17 = [(EKUITableViewCell *)p_super contentView];
      v18 = MEMORY[0x1E696ACD8];
      v19 = _NSDictionaryOfVariableBindings(&cfstr_Intervalpicker.isa, self->_intervalPicker, 0);
      v20 = [v18 constraintsWithVisualFormat:@"V:|[_intervalPicker]|" options:0 metrics:0 views:v19];
      [v17 addConstraints:v20];

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
    v35 = [v6 backgroundColor];
    [(EKUITableViewCell *)p_super setBackgroundColor:v35];
  }

  return p_super;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKUICustomRecurrenceViewController *)self _tagForIndexPath:v7];
  v9 = 0.0;
  if (v8 <= 2)
  {
    if (v8 < 3)
    {
LABEL_6:
      [v6 rowHeight];
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
      v14 = [(EKUICustomRecurrenceViewController *)self currentChooser];
      [v14 heightForRow:{objc_msgSend(v7, "row")}];
      v9 = v15;

      if (EKUIUnscaledCatalyst() && *MEMORY[0x1E69DE3D0] == v9)
      {
        v10 = EKUIUnscaledCatalystTableRowHeightDefault();
        goto LABEL_7;
      }
    }

    else if (v8 == 5)
    {
      v12 = [(EKUICustomRecurrenceViewController *)self yearlyOrdinalChooser];
      [v12 heightForRow:{objc_msgSend(v7, "row")}];
      v9 = v13;
    }
  }

LABEL_8:

  return v9;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  if ([v6 selectionStyle])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  [a3 deselectRowAtIndexPath:v8 animated:1];
  v6 = [(EKUICustomRecurrenceViewController *)self _tagForIndexPath:v8];
  if (v6 == 2)
  {
    [(EKUICustomRecurrenceViewController *)self _toggleInlineSpinnerForTag:2];
  }

  else if (v6 == 6)
  {
    v7 = [(EKUICustomRecurrenceViewController *)self currentChooser];
    [v7 rowTapped:{objc_msgSend(v8, "row")}];
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(EKUICustomRecurrenceViewController *)self recurrenceSummaryString:a3];
  }

  return v6;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v9 = a3;
  v6 = a4;
  if (EKUICatalyst())
  {
    v7 = [v9 backgroundColor];
    v8 = [v6 contentView];
    [v8 setBackgroundColor:v7];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (self->_useClearBackground || [v9 section] == 1 && (-[EKUICustomRecurrenceViewController currentChooser](self, "currentChooser"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "drawBackgroundForRow:", objc_msgSend(v10, "row")), v14, (v15 & 1) == 0))
  {
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [v8 setBackgroundColor:v11];

    v12 = [MEMORY[0x1E69DC888] clearColor];
    v13 = [v8 backgroundView];
    [v13 setBackgroundColor:v12];
  }
}

- (void)_toggleInlineSpinnerForTag:(int64_t)a3
{
  v5 = [(EKUICustomRecurrenceViewController *)self tableView];
  [v5 beginUpdates];

  if (a3 == 2)
  {
    [(EKUICustomRecurrenceViewController *)self _setShowingIntervalPicker:!self->_showingIntervalPicker];
  }

  v6 = [(EKUICustomRecurrenceViewController *)self tableView];
  [v6 endUpdates];

  [(EKUICustomRecurrenceViewController *)self calculatePreferredContentSize];

  [(EKUICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (void)_setShowingIntervalPicker:(BOOL)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_showingIntervalPicker != a3)
  {
    v3 = a3;
    self->_showingIntervalPicker = a3;
    v5 = [MEMORY[0x1E696AC88] indexPathForRow:2 inSection:0];
    showingIntervalPicker = self->_showingIntervalPicker;
    v7 = [(EKUICustomRecurrenceViewController *)self tableView];
    if (showingIntervalPicker)
    {
      v12[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v7 insertRowsAtIndexPaths:v8 withRowAnimation:6];
    }

    else
    {
      v11 = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      [v7 deleteRowsAtIndexPaths:v8 withRowAnimation:6];
    }

    if (v3)
    {
      v7 = [(EKUICustomRecurrenceViewController *)self view];
      [v7 tintColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] tableCellGrayTextColor];
    }
    v9 = ;
    v10 = [(UITableViewCell *)self->_intervalSummaryCell detailTextLabel];
    [v10 setTextColor:v9];

    if (v3)
    {

      v9 = v7;
    }
  }
}

- (void)recurrenceChooserWantsReload:(id)a3
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

- (void)recurrenceChooser:(id)a3 wantsRowReload:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__EKUICustomRecurrenceViewController_recurrenceChooser_wantsRowReload___block_invoke;
  v4[3] = &unk_1E843F690;
  v4[4] = self;
  v4[5] = a4;
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
  v5 = [(EKUICustomRecurrenceViewController *)self currentChooser];
  v6 = v5;
  if (v5)
  {
    cachedFrequency = [v5 frequency];
    [v6 updateRecurrenceRuleBuilder:v12];
  }

  [v12 setFrequency:cachedFrequency];
  [v12 setInterval:cachedInterval];
  v7 = [(EKUICustomRecurrenceViewController *)self yearlyChooser];
  if (v6 == v7)
  {
    v8 = [(EKUICustomRecurrenceViewController *)self yearOrdinalSwitch];
    v9 = [v8 isOn];

    if (!v9)
    {
      goto LABEL_7;
    }

    v7 = [(EKUICustomRecurrenceViewController *)self yearlyOrdinalChooser];
    [v7 updateRecurrenceRuleBuilder:v12];
  }

LABEL_7:
  v10 = [v12 recurrenceRule];
  [v10 setFirstDayOfTheWeek:{-[EKRecurrenceRule firstDayOfTheWeek](self->_cachedRecurrenceRule, "firstDayOfTheWeek")}];
  v11 = [(EKRecurrenceRule *)self->_cachedRecurrenceRule recurrenceEnd];
  [v10 setRecurrenceEnd:v11];

  [(EKUICustomRecurrenceViewController *)self setRecurrenceRule:v10 shouldUpdatePickers:0];
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

- (void)setRecurrenceRule:(id)a3 shouldUpdatePickers:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_cachedRecurrenceRule != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_cachedRecurrenceRule, a3);
    v7 = v8;
    if (v8)
    {
      [(EKUICustomRecurrenceViewController *)self _updateSummaryLabel];
      v7 = v8;
    }

    if (v4)
    {
      [(EKUICustomRecurrenceViewController *)self _refreshCacheAndPickers];
      v7 = v8;
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
    v4 = [(EKUICustomRecurrenceViewController *)self yearOrdinalSwitch];
    [v4 setOn:v3];
  }
}

+ (BOOL)isRecurrenceRuleOrdinal:(id)a3
{
  v3 = a3;
  v4 = [v3 setPositions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 1;
  }

  else if ([v3 frequency] == 2 || objc_msgSend(v3, "frequency") == 3)
  {
    v7 = [v3 daysOfTheWeek];
    v6 = [v7 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence
{
  v2 = [(EKUICustomRecurrenceViewController *)self monthlyChooser];
  v3 = [v2 prohibitsMultipleDaysInMonthlyRecurrence];

  return v3;
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKUICustomRecurrenceViewController *)self monthlyChooser];
  [v4 setProhibitsMultipleDaysInMonthlyRecurrence:v3];
}

- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence
{
  v2 = [(EKUICustomRecurrenceViewController *)self yearlyChooser];
  v3 = [v2 prohibitsMultipleMonthsInYearlyRecurrence];

  return v3;
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKUICustomRecurrenceViewController *)self yearlyChooser];
  [v4 setProhibitsMultipleMonthsInYearlyRecurrence:v3];
}

- (void)_updateSummaryLabel
{
  v3 = [(EKUICustomRecurrenceViewController *)self recurrenceRule];
  v4 = [(EKUICustomRecurrenceViewController *)self startDate];
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
  v3 = [(EKUICustomRecurrenceViewController *)self currentChooser];
  v4 = [v3 frequency];

  v5 = [(EKUICustomRecurrenceViewController *)self _chooserForFrequency:self->_cachedFrequency];
  [(EKUICustomRecurrenceViewController *)self setCurrentChooser:v5];

  v6 = [(EKUICustomRecurrenceViewController *)self currentChooser];
  v7 = [v6 frequency];

  v8 = [(EKUICustomRecurrenceViewController *)self currentChooser];
  [v8 updateFromRecurrenceRule:self->_cachedRecurrenceRule];

  [(EKUICustomRecurrenceViewController *)self _updateTableSectionsFromFrequency:v4 toFrequency:v7];
}

- (void)_updateTableSectionsFromFrequency:(int64_t)a3 toFrequency:(int64_t)a4
{
  v7 = [(EKUICustomRecurrenceViewController *)self tableView];
  [v7 beginUpdates];

  if (a3 == 3 || a4 != 3)
  {
    if (a3 == 3 && a4 != 3)
    {
      v13 = [(EKUICustomRecurrenceViewController *)self tableView];
      v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:2];
      [v13 deleteSections:v14 withRowAnimation:6];

      v10 = a4 != 0;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = [(EKUICustomRecurrenceViewController *)self tableView];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:2];
    [v8 insertSections:v9 withRowAnimation:6];
  }

  v10 = a4 != 0;
  if (!a3 && a4)
  {
    v11 = [(EKUICustomRecurrenceViewController *)self tableView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [v11 insertSections:v12 withRowAnimation:6];
LABEL_13:

    goto LABEL_14;
  }

LABEL_10:
  if (a3 && !a4)
  {
    v11 = [(EKUICustomRecurrenceViewController *)self tableView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [v11 deleteSections:v12 withRowAnimation:6];
    goto LABEL_13;
  }

  v16 = !v10;
  if (a3 == a4)
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
  v15 = [(EKUICustomRecurrenceViewController *)self tableView];
  [v15 endUpdates];

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
  v5 = [(EKUICustomRecurrenceViewController *)self tableView];
  v7[0] = v3;
  v7[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  [v5 reloadRowsAtIndexPaths:v6 withRowAnimation:5];
}

- (void)_frequencyPickerViewUpdated
{
  [(EKUICustomRecurrenceViewController *)self _updateCustomPickerView];
  [(EKUICustomRecurrenceViewController *)self _updateRecurrenceRule];
  [(EKUICustomRecurrenceViewController *)self _updateFrequencyRows];
  intervalPicker = self->_intervalPicker;

  [(UIPickerView *)intervalPicker reloadAllComponents];
}

- (id)_chooserForFrequency:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v3 = [(EKUICustomRecurrenceViewController *)self yearlyChooser];
      break;
    case 2:
      v3 = [(EKUICustomRecurrenceViewController *)self monthlyChooser];
      break;
    case 1:
      v3 = [(EKUICustomRecurrenceViewController *)self weeklyChooser];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (void)_yearOrdinalSwitchChanged:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AC88];
  v5 = a3;
  v6 = [v4 indexPathForRow:1 inSection:2];
  v7 = [v5 isOn];

  v8 = [(EKUICustomRecurrenceViewController *)self tableView];
  if (v7)
  {
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v8 insertRowsAtIndexPaths:v9 withRowAnimation:6];

    v8 = [(EKUICustomRecurrenceViewController *)self tableView];
    [v8 scrollToRowAtIndexPath:v6 atScrollPosition:3 animated:1];
  }

  else
  {
    v11 = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [v8 deleteRowsAtIndexPaths:v10 withRowAnimation:6];
  }

  [(EKUICustomRecurrenceViewController *)self _updateRecurrenceRule];
}

- (id)_stringForFrequency:(int64_t)a3
{
  if (a3 <= 3)
  {
    self = CUIKStringForRepeatType();
  }

  return self;
}

- (id)_accessibilityIdentifierStringForFrequency:(int64_t)a3
{
  if (a3 <= 3)
  {
    self = CUIKAccessibilityIdentifierStringForRepeatType();
  }

  return self;
}

- (id)_stringForFrequency:(int64_t)a3 interval:(int64_t)a4
{
  v5 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4 <= 1)
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
      if (a3 != 3)
      {
        goto LABEL_21;
      }

      if (a4 <= 1)
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
    v5 = [v10 localizedStringWithFormat:v13, a4];

    goto LABEL_20;
  }

  if (!a3)
  {
    if (a4 <= 1)
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

  if (a3 != 1)
  {
    goto LABEL_21;
  }

  if (a4 > 1)
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
  v5 = [v6 localizedStringForKey:v8 value:v9 table:0];
LABEL_20:

LABEL_21:

  return v5;
}

- (id)_everyStringForFrequency:(int64_t)a3 interval:(int64_t)a4
{
  v5 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4 <= 1)
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
      if (a3 != 3)
      {
        goto LABEL_21;
      }

      if (a4 <= 1)
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
    v5 = [v9 localizedStringWithFormat:v12, a4];

    goto LABEL_20;
  }

  if (!a3)
  {
    if (a4 <= 1)
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

  if (a3 != 1)
  {
    goto LABEL_21;
  }

  if (a4 > 1)
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
  v5 = [v6 localizedStringForKey:v8 value:@"Every" table:0];
LABEL_20:

LABEL_21:

  return v5;
}

- (int64_t)_tagForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  if (v6 == 2)
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
    if (v6 == 1)
    {
      return 6;
    }

    if (v6)
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

- (int64_t)_numberOfRowsForSection:(int64_t)a3
{
  if (a3 == 2)
  {
    if (self->_cachedFrequency == 3)
    {
      v7 = [(EKUICustomRecurrenceViewController *)self yearOrdinalSwitch];
      if ([v7 isOn])
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

  if (a3 == 1)
  {
    v4 = [(EKUICustomRecurrenceViewController *)self currentChooser];
    v5 = [v4 numberOfRows];

    return v5;
  }

  if (a3)
  {
    return 0;
  }

  return self->_showingIntervalPicker | 2;
}

- (BOOL)_disallowsRecurrenceInterval
{
  v3 = [(EKUICustomRecurrenceViewController *)self prohibitsYearlyRecurrenceInterval];
  if (v3)
  {
    LOBYTE(v3) = self->_cachedFrequency == 3;
  }

  return v3;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  if ([(EKUICustomRecurrenceViewController *)self _disallowsRecurrenceInterval:a3])
  {
    return 1;
  }

  return 999;
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = v10;
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v11 setTextAlignment:1];
    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:21.0];
    [v11 setFont:v12];

    [v11 setAdjustsFontSizeToFitWidth:1];
    [v11 setMinimumScaleFactor:0.7];
  }

  if (a5 == 1)
  {
    v13 = 0;
    v14 = [v9 selectedRowInComponent:0] + 1;
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

  else if (a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = CUIKLocalizedStringForInteger();
  }

LABEL_17:
  [v11 setText:v13];
  [v9 rowSizeForComponent:a5];
  [v11 setFrame:{0.0, 0.0, v21 + -18.0, v22}];

  return v11;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  self->_cachedInterval = [v7 selectedRowInComponent:0] + 1;
  [(EKUICustomRecurrenceViewController *)self _frequencyPickerViewUpdated];
  if (!a5)
  {
    [v7 reloadComponent:1];
  }
}

- (BOOL)prefersPushForSizeClass:(int64_t)a3
{
  if (a3 == 1)
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