@interface EKRecurrenceOrdinalPickerViewController
- (id)_leftColumn;
- (id)_rightColumn;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (int)dayMask;
- (int)ordinalValue;
- (int64_t)dayOfWeekForRow:(int64_t)row;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (int64_t)rowForDayOfWeek:(int64_t)week;
- (void)loadView;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)updateFromRecurrenceRule:(id)rule;
- (void)updateRecurrenceRuleBuilder:(id)builder;
- (void)viewDidLoad;
@end

@implementation EKRecurrenceOrdinalPickerViewController

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DCD78]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setDataSource:self];
  [v4 setDelegate:self];
  [(EKRecurrenceOrdinalPickerViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = EKRecurrenceOrdinalPickerViewController;
  [(EKRecurrenceOrdinalPickerViewController *)&v4 viewDidLoad];
  pickerView = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
  [pickerView _setHostsLayoutEngine:0];
}

- (int64_t)dayOfWeekForRow:(int64_t)row
{
  rowCopy = row;
  if (row <= 6)
  {
    v4 = CUIKZeroIndexedWeekStart();
    if (v4 + rowCopy <= 6)
    {
      rowCopy += v4;
    }

    else
    {
      return v4 + rowCopy - 7;
    }
  }

  return rowCopy;
}

- (int64_t)rowForDayOfWeek:(int64_t)week
{
  v4 = CUIKZeroIndexedWeekStart();
  if (week >= v4)
  {
    return week - v4;
  }

  else
  {
    return week - v4 + 7;
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  if (component == 1)
  {
    _rightColumn = [(EKRecurrenceOrdinalPickerViewController *)self _rightColumn];
  }

  else
  {
    if (component)
    {
      v9 = 0;
      goto LABEL_7;
    }

    _rightColumn = [(EKRecurrenceOrdinalPickerViewController *)self _leftColumn];
  }

  v8 = _rightColumn;
  v9 = [_rightColumn count];

LABEL_7:
  return v9;
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  viewCopy = view;
  reusingViewCopy = reusingView;
  v12 = reusingViewCopy;
  if (reusingViewCopy)
  {
    if (component)
    {
LABEL_3:
      _rightColumn = [(EKRecurrenceOrdinalPickerViewController *)self _rightColumn];
      rowCopy = [(EKRecurrenceOrdinalPickerViewController *)self dayOfWeekForRow:row];
      _leftColumn = _rightColumn;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v12 setTextAlignment:1];
    v16 = [MEMORY[0x1E69DB878] systemFontOfSize:21.0];
    [v12 setFont:v16];

    [v12 setAdjustsFontSizeToFitWidth:1];
    [v12 setMinimumScaleFactor:0.7];
    if (component)
    {
      goto LABEL_3;
    }
  }

  _leftColumn = [(EKRecurrenceOrdinalPickerViewController *)self _leftColumn];
  _rightColumn = _leftColumn;
  rowCopy = row;
LABEL_6:
  v17 = [_leftColumn objectAtIndexedSubscript:rowCopy];

  [v12 setText:v17];
  [viewCopy rowSizeForComponent:component];
  [v12 setFrame:{0.0, 0.0, v18 + -18.0, v19}];

  return v12;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [(EKRecurrenceOrdinalPickerViewController *)self delegate:view];
  [v6 frequencyPickerUpdated:self];
}

- (void)updateRecurrenceRuleBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy setDays:{-[EKRecurrenceOrdinalPickerViewController dayMask](self, "dayMask")}];
  [builderCopy setOrdinalValue:{-[EKRecurrenceOrdinalPickerViewController ordinalValue](self, "ordinalValue")}];
}

- (void)updateFromRecurrenceRule:(id)rule
{
  ruleCopy = rule;
  setPositions = [ruleCopy setPositions];
  firstObject = [setPositions firstObject];

  daysOfTheWeek = [ruleCopy daysOfTheWeek];
  if ([daysOfTheWeek count])
  {
    v7 = [daysOfTheWeek objectAtIndexedSubscript:0];
    if ([daysOfTheWeek count] == 1)
    {
      v8 = [v7 dayOfTheWeek] - 1;
    }

    else if ([ruleCopy isWeekendRule])
    {
      v8 = 9;
    }

    else if ([ruleCopy isWeekdayRule])
    {
      v8 = 8;
    }

    else if ([ruleCopy isAnyDayRule])
    {
      v8 = 7;
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    weekNumber = [v7 weekNumber];

    if (firstObject)
    {
      goto LABEL_14;
    }
  }

  else
  {
    weekNumber = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (firstObject)
    {
LABEL_14:
      weekNumber = [firstObject integerValue];
    }
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(EKRecurrenceOrdinalPickerViewController *)self rowForDayOfWeek:v8];
    pickerView = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
    [pickerView selectRow:v10 inComponent:1 animated:0];
  }

  if (weekNumber == -2)
  {
    v12 = 5;
  }

  else
  {
    if (weekNumber == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_24;
    }

    if (weekNumber >= 6)
    {
      v12 = 6;
    }

    else
    {
      v12 = weekNumber - 1;
    }
  }

  pickerView2 = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
  [pickerView2 selectRow:v12 inComponent:0 animated:0];

LABEL_24:
}

- (int)dayMask
{
  pickerView = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
  v4 = [pickerView selectedRowInComponent:1];

  if (v4 > 6)
  {
    if ((v4 - 7) > 2)
    {
      return 0;
    }

    else
    {
      return dword_1D3600900[v4 - 7];
    }
  }

  else
  {
    v5 = [(EKRecurrenceOrdinalPickerViewController *)self dayOfWeekForRow:v4]+ 1;

    return [EKRecurrenceChooserController dayFromNumber:v5];
  }
}

- (int)ordinalValue
{
  pickerView = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
  v3 = [pickerView selectedRowInComponent:0];

  return v3 + 1;
}

- (id)_leftColumn
{
  if (_leftColumn_onceToken != -1)
  {
    [EKRecurrenceOrdinalPickerViewController _leftColumn];
  }

  v3 = _leftColumn___leftColumn;

  return v3;
}

void __54__EKRecurrenceOrdinalPickerViewController__leftColumn__block_invoke()
{
  v10[7] = *MEMORY[0x1E69E9840];
  v0 = EventKitUIBundle();
  v1 = [v0 localizedStringForKey:@"first" value:&stru_1F4EF6790 table:0];
  v2 = [v0 localizedStringForKey:@"second" value:&stru_1F4EF6790 table:{0, v1}];
  v10[1] = v2;
  v3 = [v0 localizedStringForKey:@"third" value:&stru_1F4EF6790 table:0];
  v10[2] = v3;
  v4 = [v0 localizedStringForKey:@"fourth" value:&stru_1F4EF6790 table:0];
  v10[3] = v4;
  v5 = [v0 localizedStringForKey:@"fifth" value:&stru_1F4EF6790 table:0];
  v10[4] = v5;
  v6 = [v0 localizedStringForKey:@"next to last" value:&stru_1F4EF6790 table:0];
  v10[5] = v6;
  v7 = [v0 localizedStringForKey:@"last" value:&stru_1F4EF6790 table:0];
  v10[6] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:7];
  v9 = _leftColumn___leftColumn;
  _leftColumn___leftColumn = v8;
}

- (id)_rightColumn
{
  if (_rightColumn_onceToken != -1)
  {
    [EKRecurrenceOrdinalPickerViewController _rightColumn];
  }

  v3 = _rightColumn___rightColumn;

  return v3;
}

void __55__EKRecurrenceOrdinalPickerViewController__rightColumn__block_invoke()
{
  v13[10] = *MEMORY[0x1E69E9840];
  v0 = EventKitUIBundle();
  v12 = CUIKStringForDayOfWeekNotStandalone();
  v13[0] = v12;
  v1 = CUIKStringForDayOfWeekNotStandalone();
  v13[1] = v1;
  v2 = CUIKStringForDayOfWeekNotStandalone();
  v13[2] = v2;
  v3 = CUIKStringForDayOfWeekNotStandalone();
  v13[3] = v3;
  v4 = CUIKStringForDayOfWeekNotStandalone();
  v13[4] = v4;
  v5 = CUIKStringForDayOfWeekNotStandalone();
  v13[5] = v5;
  v6 = CUIKStringForDayOfWeekNotStandalone();
  v13[6] = v6;
  v7 = [v0 localizedStringForKey:@"day" value:&stru_1F4EF6790 table:0];
  v13[7] = v7;
  v8 = [v0 localizedStringForKey:@"weekday" value:&stru_1F4EF6790 table:0];
  v13[8] = v8;
  v9 = [v0 localizedStringForKey:@"weekend day" value:&stru_1F4EF6790 table:0];
  v13[9] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:10];
  v11 = _rightColumn___rightColumn;
  _rightColumn___rightColumn = v10;
}

@end