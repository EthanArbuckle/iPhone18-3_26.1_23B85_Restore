@interface CNPropertyDateEditingCell
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (CNPropertyDateEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIDatePicker)datePicker;
- (void)applyCalendarAndDate;
- (void)dateChanged:(id)a3;
- (void)labelButtonClicked:(id)a3;
- (void)localeUpdated:(id)a3;
- (void)picker:(id)a3 didPickItem:(id)a4;
- (void)pickerDidCancel:(id)a3;
- (void)prepareForReuse;
- (void)regainFocus;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
- (void)updateValueWithPropertyItem:(id)a3;
@end

@implementation CNPropertyDateEditingCell

- (void)regainFocus
{
  v2 = [(CNPropertySimpleEditingCell *)self textField];
  [v2 becomeFirstResponder];
}

- (void)picker:(id)a3 didPickItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNPropertyCell *)self delegate];
  v9 = [(CNPropertyCell *)self propertyItem];
  [v8 propertyCell:self didUpdateItem:v9 withNewLabel:v6];

  [(CNPropertyDateEditingCell *)self applyCalendarAndDate];
  v10 = [(CNPropertyCell *)self presentingDelegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__CNPropertyDateEditingCell_picker_didPickItem___block_invoke;
  v11[3] = &unk_1E74E6A88;
  v11[4] = self;
  [v10 sender:self dismissViewController:v7 completionHandler:v11];
}

- (void)pickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self presentingDelegate];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CNPropertyDateEditingCell_pickerDidCancel___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [v5 sender:self dismissViewController:v4 completionHandler:v6];
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v10 = a3;
  if ([(CNPropertyDateEditingCell *)self shouldEditDatesTextually])
  {
    v5 = [(CNPropertyCell *)self propertyItem];
    v6 = [v10 text];
    v7 = [v5 valueForDisplayString:v6];

    v8 = [(CNPropertyCell *)self delegate];
    v9 = [(CNPropertyCell *)self propertyItem];
    [v8 propertyCell:self didUpdateItem:v9 withNewValue:v7];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = [v5 isReadonly];

  if ((v6 & 1) == 0)
  {
    v8 = [(CNPropertySimpleEditingCell *)self textField];
    [v8 _cnui_applyContactStyle];

    if ([(CNPropertyDateEditingCell *)self shouldEditDatesTextually])
    {
      v7 = 1;
      goto LABEL_11;
    }

    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (-[CNPropertyDateEditingCell traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 horizontalSizeClass], v11, v12 != 1))
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_41_29938);
      contentViewController = self->_contentViewController;
      if (!contentViewController)
      {
        v23 = objc_alloc_init(MEMORY[0x1E69DD258]);
        v24 = self->_contentViewController;
        self->_contentViewController = v23;

        v25 = [(CNPropertyDateEditingCell *)self datePicker];
        [(UIViewController *)self->_contentViewController setView:v25];

        v26 = [(CNPropertyDateEditingCell *)self datePicker];
        [v26 bounds];
        [(UIViewController *)self->_contentViewController setPreferredContentSize:v27, v28];

        contentViewController = self->_contentViewController;
      }

      if ([(UIViewController *)contentViewController isBeingPresented])
      {
        goto LABEL_2;
      }

      if ([(UIViewController *)self->_contentViewController isBeingDismissed])
      {
        goto LABEL_2;
      }

      v29 = [(UIViewController *)self->_contentViewController view];
      v30 = [v29 window];

      if (v30)
      {
        goto LABEL_2;
      }

      v19 = [(CNPropertyCell *)self presentingDelegate];
      [v19 sender:v4 presentViewController:self->_contentViewController];
      v7 = 0;
    }

    else
    {
      v13 = [(CNPropertyDateEditingCell *)self datePickerContainerView];

      if (!v13)
      {
        v14 = [CNDatePickerContainerView alloc];
        v15 = [(CNPropertyDateEditingCell *)self datePicker];
        v16 = [(CNDatePickerContainerView *)v14 initWithDatePicker:v15];

        [(CNDatePickerContainerView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(CNPropertyDateEditingCell *)self setDatePickerContainerView:v16];
        v17 = [(CNPropertyDateEditingCell *)self datePickerContainerView];
        v18 = [(CNPropertySimpleEditingCell *)self textField];
        [v18 setInputView:v17];
      }

      v19 = [MEMORY[0x1E69DC888] clearColor];
      v20 = [(CNPropertySimpleEditingCell *)self textField];
      [v20 setInsertionPointColor:v19];

      v7 = 1;
    }

    goto LABEL_11;
  }

LABEL_2:
  v7 = 0;
LABEL_11:

  return v7;
}

void __57__CNPropertyDateEditingCell_textFieldShouldBeginEditing___block_invoke()
{
  v1 = [MEMORY[0x1E69DD2E8] keyWindow];
  v0 = [v1 firstResponder];
  [v0 resignFirstResponder];
}

- (void)applyCalendarAndDate
{
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 labeledValue];
  v18 = [v4 value];

  if ([(CNPropertyDateEditingCell *)self _shouldUseYearlessPickerForDateComponents:v18])
  {
    v5 = 4271;
  }

  else
  {
    v5 = 1;
  }

  [(UIDatePicker *)self->_datePicker setDatePickerMode:v5];
  v6 = [v18 calendar];
  v7 = [v6 copy];

  v8 = [v7 calendarIdentifier];
  v9 = [v8 isEqualToString:*MEMORY[0x1E695D850]];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];

    v7 = v10;
  }

  v11 = [(UIDatePicker *)self->_datePicker timeZone];
  [v7 setTimeZone:v11];

  v12 = MEMORY[0x1E69AAE08];
  v13 = [v7 calendarIdentifier];
  v14 = [v12 localeForCalendarID:v13];

  [(UIDatePicker *)self->_datePicker setLocale:v14];
  v15 = [MEMORY[0x1E6996B48] dateFromComponents:v18 destinationCalendar:v7];
  [(UIDatePicker *)self->_datePicker setDate:v15];

  [(UIDatePicker *)self->_datePicker setCalendar:v7];
  v16 = [v7 calendarIdentifier];
  currentCalendarIdentifier = self->_currentCalendarIdentifier;
  self->_currentCalendarIdentifier = v16;
}

- (UIDatePicker)datePicker
{
  if (!self->_datePicker)
  {
    v3 = objc_alloc(MEMORY[0x1E69DC920]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    datePicker = self->_datePicker;
    self->_datePicker = v4;

    v6 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [(UIDatePicker *)self->_datePicker setTimeZone:v6];

    [(UIDatePicker *)self->_datePicker addTarget:self action:sel_dateChanged_ forControlEvents:4096];
  }

  [(CNPropertyDateEditingCell *)self applyCalendarAndDate];
  v7 = [(CNPropertyCell *)self delegate];
  v8 = [(CNPropertyCell *)self propertyItem];
  v9 = [(CNPropertyCell *)self propertyItem];
  v10 = [v9 labeledValue];
  v11 = [v10 value];
  [v7 propertyCell:self didUpdateItem:v8 withNewValue:v11];

  v12 = self->_datePicker;

  return v12;
}

- (void)updateValueWithPropertyItem:(id)a3
{
  v21 = a3;
  v4 = [(CNPropertyDateEditingCell *)self currentCalendarIdentifier];
  v5 = [v21 labeledValue];
  v6 = [v5 value];

  v7 = [v6 calendar];
  v8 = [v7 calendarIdentifier];
  [(CNPropertyDateEditingCell *)self setCurrentCalendarIdentifier:v8];

  v9 = [(CNPropertyEditingCell *)self valueString];
  v10 = [(CNPropertySimpleEditingCell *)self valueView];
  v11 = [v10 ab_text];
  v12 = [v9 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    if (!-[CNPropertyDateEditingCell shouldEditDatesTextually](self, "shouldEditDatesTextually") || (-[CNPropertySimpleEditingCell textField](self, "textField"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEditing], v13, !v14) || v4 && (-[CNPropertyDateEditingCell currentCalendarIdentifier](self, "currentCalendarIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v4, "isEqualToString:", v15), v15, (v16 & 1) == 0))
    {
      v17 = [(CNPropertyEditingCell *)self valueString];
      v18 = [(CNPropertySimpleEditingCell *)self valueView];
      [v18 setAb_text:v17];
    }

    if ([(CNPropertyDateEditingCell *)self shouldEditDatesTextually])
    {
      v19 = [v21 placeholderString];
      v20 = [(CNPropertySimpleEditingCell *)self textField];
      [v20 setPlaceholder:v19];
    }
  }
}

- (void)dateChanged:(id)a3
{
  v23 = a3;
  v4 = [(CNPropertyCell *)self propertyItem];
  v5 = [v4 property];
  v6 = [v5 isEqualToString:@"birthdays"];

  if (v6 && (-[CNPropertyCell propertyItem](self, "propertyItem"), v7 = objc_claimAutoreleasedReturnValue(), [v7 labeledValue], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "label"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"_systemCalendar"), v9, v8, v7, !v10))
  {
    v15 = MEMORY[0x1E6996B48];
    v12 = [v23 date];
    v13 = [v23 calendar];
    v16 = [v23 calendar];
    v14 = [v15 componentsFromDate:v12 sourceCalendar:v13 destinationCalendar:v16];
  }

  else
  {
    v11 = MEMORY[0x1E6996B48];
    v12 = [v23 date];
    v13 = [v23 calendar];
    v14 = [v11 GMTComponentsFromDate:v12 sourceCalendar:v13];
  }

  v17 = [(CNPropertyCell *)self propertyItem];
  [v17 updateLabeledValueWithValue:v14];

  v18 = [(CNPropertyCell *)self propertyItem];
  v19 = [v18 displayValue];
  v20 = [(CNPropertySimpleEditingCell *)self textField];
  [v20 setText:v19];

  v21 = [(CNPropertyCell *)self delegate];
  v22 = [(CNPropertyCell *)self propertyItem];
  [v21 propertyCell:self didUpdateItem:v22 withNewValue:v14];
}

- (void)labelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = [v5 property];
  v7 = [v6 isEqualToString:*MEMORY[0x1E695C1F0]];

  if (v7)
  {
    v21.receiver = self;
    v21.super_class = CNPropertyDateEditingCell;
    [(CNPropertyEditingCell *)&v21 labelButtonClicked:v4];
  }

  else
  {
    v8 = [(CNPropertyCell *)self propertyItem];
    v9 = [v8 extendedLabels];
    v10 = [v9 count];

    if (v10 >= 2)
    {
      v11 = [CNLabelPickerController alloc];
      v12 = [(CNPropertyCell *)self propertyItem];
      v13 = [(CNLabelPickerController *)v11 initForPropertyItem:v12];

      v14 = CNContactsUIBundle();
      v15 = [v14 localizedStringForKey:@"SELECT_BIRTHDAY_CALENDAR_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
      [v13 setTitle:v15];

      [v13 setItemLocalizationBlock:&__block_literal_global_29956];
      v16 = [(CNPropertyCell *)self propertyItem];
      v17 = [v16 labeledValue];
      v18 = [v17 label];
      [v13 setSelectedItem:v18];

      [v13 setDelegate:self];
      [v13 setAllowsCustomItems:0];
      v19 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v13];
      v20 = [(CNPropertyCell *)self presentingDelegate];
      [v20 sender:v4 presentViewController:v19];
    }
  }
}

id __48__CNPropertyDateEditingCell_labelButtonClicked___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (![v2 isEqualToString:@"_systemCalendar"])
    {
      v9 = CNContactsUIBundle();
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BIRTHDAY_CALENDAR_LABEL_FORMAT-%@", v3];
      v12 = [v9 localizedStringForKey:v11 value:&stru_1F0CE7398 table:@"Localized"];

      goto LABEL_9;
    }

    v4 = MEMORY[0x1E69966A8];
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = [v5 calendarIdentifier];
    v7 = [v4 isGregorianDerivedCalendarIdentifier:v6];

    v8 = CNContactsUIBundle();
    v9 = v8;
    if (v7)
    {
      v10 = @"BIRTHDAY_CALENDAR_LABEL_DEFAULT";
    }

    else
    {
      v10 = @"BIRTHDAY_CALENDAR_LABEL_GREGORIAN";
    }
  }

  else
  {
    v8 = CNContactsUIBundle();
    v9 = v8;
    v10 = @"BIRTHDAY_CALENDAR_LABEL_DEFAULT";
  }

  v12 = [v8 localizedStringForKey:v10 value:&stru_1F0CE7398 table:@"Localized"];
LABEL_9:

  return v12;
}

- (void)localeUpdated:(id)a3
{
  v9 = [(CNPropertyCell *)self propertyItem];
  v4 = [(CNPropertyCell *)self propertyItem];
  v5 = [v4 labeledValue];
  v6 = [v5 value];
  v7 = [v9 displayStringForValue:v6];
  v8 = [(CNPropertySimpleEditingCell *)self textField];
  [v8 setText:v7];
}

- (void)prepareForReuse
{
  datePicker = self->_datePicker;
  self->_datePicker = 0;

  datePickerContainerView = self->_datePickerContainerView;
  self->_datePickerContainerView = 0;

  contentViewController = self->_contentViewController;
  self->_contentViewController = 0;

  currentCalendarIdentifier = self->_currentCalendarIdentifier;
  self->_currentCalendarIdentifier = 0;

  v7.receiver = self;
  v7.super_class = CNPropertyDateEditingCell;
  [(CNPropertySimpleEditingCell *)&v7 prepareForReuse];
}

- (CNPropertyDateEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = CNPropertyDateEditingCell;
  v4 = [(CNPropertyEditingCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel_localeUpdated_ name:@"_UIApplicationLocaleDidChange" object:0];

    if (!v4->_shouldEditDatesTextually)
    {
      v6 = [(CNPropertySimpleEditingCell *)v4 textField];
      [v6 setClearButtonMode:0];

      v7 = [(CNPropertySimpleEditingCell *)v4 textField];
      [v7 setTextLoupeVisibility:1];

      v8 = [MEMORY[0x1E69DC888] clearColor];
      v9 = [(CNPropertySimpleEditingCell *)v4 textField];
      [v9 setInsertionPointColor:v8];
    }

    v10 = [(CNPropertySimpleEditingCell *)v4 textField];
    [v10 setDelegate:v4];
  }

  return v4;
}

@end