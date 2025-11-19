@interface EKRecurrenceOrdinalPickerViewController
- (id)_leftColumn;
- (id)_rightColumn;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (int)dayMask;
- (int)ordinalValue;
- (int64_t)dayOfWeekForRow:(int64_t)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (int64_t)rowForDayOfWeek:(int64_t)a3;
- (void)loadView;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)updateFromRecurrenceRule:(id)a3;
- (void)updateRecurrenceRuleBuilder:(id)a3;
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
  v3 = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
  [v3 _setHostsLayoutEngine:0];
}

- (int64_t)dayOfWeekForRow:(int64_t)a3
{
  v3 = a3;
  if (a3 <= 6)
  {
    v4 = CUIKZeroIndexedWeekStart();
    if (v4 + v3 <= 6)
    {
      v3 += v4;
    }

    else
    {
      return v4 + v3 - 7;
    }
  }

  return v3;
}

- (int64_t)rowForDayOfWeek:(int64_t)a3
{
  v4 = CUIKZeroIndexedWeekStart();
  if (a3 >= v4)
  {
    return a3 - v4;
  }

  else
  {
    return a3 - v4 + 7;
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(EKRecurrenceOrdinalPickerViewController *)self _rightColumn];
  }

  else
  {
    if (a4)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = [(EKRecurrenceOrdinalPickerViewController *)self _leftColumn];
  }

  v8 = v7;
  v9 = [v7 count];

LABEL_7:
  return v9;
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    if (a5)
    {
LABEL_3:
      v13 = [(EKRecurrenceOrdinalPickerViewController *)self _rightColumn];
      v14 = [(EKRecurrenceOrdinalPickerViewController *)self dayOfWeekForRow:a4];
      v15 = v13;
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
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v15 = [(EKRecurrenceOrdinalPickerViewController *)self _leftColumn];
  v13 = v15;
  v14 = a4;
LABEL_6:
  v17 = [v15 objectAtIndexedSubscript:v14];

  [v12 setText:v17];
  [v10 rowSizeForComponent:a5];
  [v12 setFrame:{0.0, 0.0, v18 + -18.0, v19}];

  return v12;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = [(EKRecurrenceOrdinalPickerViewController *)self delegate:a3];
  [v6 frequencyPickerUpdated:self];
}

- (void)updateRecurrenceRuleBuilder:(id)a3
{
  v4 = a3;
  [v4 setDays:{-[EKRecurrenceOrdinalPickerViewController dayMask](self, "dayMask")}];
  [v4 setOrdinalValue:{-[EKRecurrenceOrdinalPickerViewController ordinalValue](self, "ordinalValue")}];
}

- (void)updateFromRecurrenceRule:(id)a3
{
  v14 = a3;
  v4 = [v14 setPositions];
  v5 = [v4 firstObject];

  v6 = [v14 daysOfTheWeek];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if ([v6 count] == 1)
    {
      v8 = [v7 dayOfTheWeek] - 1;
    }

    else if ([v14 isWeekendRule])
    {
      v8 = 9;
    }

    else if ([v14 isWeekdayRule])
    {
      v8 = 8;
    }

    else if ([v14 isAnyDayRule])
    {
      v8 = 7;
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = [v7 weekNumber];

    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (v5)
    {
LABEL_14:
      v9 = [v5 integerValue];
    }
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(EKRecurrenceOrdinalPickerViewController *)self rowForDayOfWeek:v8];
    v11 = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
    [v11 selectRow:v10 inComponent:1 animated:0];
  }

  if (v9 == -2)
  {
    v12 = 5;
  }

  else
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_24;
    }

    if (v9 >= 6)
    {
      v12 = 6;
    }

    else
    {
      v12 = v9 - 1;
    }
  }

  v13 = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
  [v13 selectRow:v12 inComponent:0 animated:0];

LABEL_24:
}

- (int)dayMask
{
  v3 = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
  v4 = [v3 selectedRowInComponent:1];

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
  v2 = [(EKRecurrenceOrdinalPickerViewController *)self pickerView];
  v3 = [v2 selectedRowInComponent:0];

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