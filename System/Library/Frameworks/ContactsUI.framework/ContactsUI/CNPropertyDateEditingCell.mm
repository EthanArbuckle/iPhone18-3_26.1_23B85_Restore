@interface CNPropertyDateEditingCell
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (CNPropertyDateEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIDatePicker)datePicker;
- (void)applyCalendarAndDate;
- (void)dateChanged:(id)changed;
- (void)labelButtonClicked:(id)clicked;
- (void)localeUpdated:(id)updated;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
- (void)prepareForReuse;
- (void)regainFocus;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
- (void)updateValueWithPropertyItem:(id)item;
@end

@implementation CNPropertyDateEditingCell

- (void)regainFocus
{
  textField = [(CNPropertySimpleEditingCell *)self textField];
  [textField becomeFirstResponder];
}

- (void)picker:(id)picker didPickItem:(id)item
{
  itemCopy = item;
  pickerCopy = picker;
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  [delegate propertyCell:self didUpdateItem:propertyItem withNewLabel:itemCopy];

  [(CNPropertyDateEditingCell *)self applyCalendarAndDate];
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__CNPropertyDateEditingCell_picker_didPickItem___block_invoke;
  v11[3] = &unk_1E74E6A88;
  v11[4] = self;
  [presentingDelegate sender:self dismissViewController:pickerCopy completionHandler:v11];
}

- (void)pickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CNPropertyDateEditingCell_pickerDidCancel___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [presentingDelegate sender:self dismissViewController:cancelCopy completionHandler:v6];
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  editingCopy = editing;
  if ([(CNPropertyDateEditingCell *)self shouldEditDatesTextually])
  {
    propertyItem = [(CNPropertyCell *)self propertyItem];
    text = [editingCopy text];
    v7 = [propertyItem valueForDisplayString:text];

    delegate = [(CNPropertyCell *)self delegate];
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    [delegate propertyCell:self didUpdateItem:propertyItem2 withNewValue:v7];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  isReadonly = [propertyItem isReadonly];

  if ((isReadonly & 1) == 0)
  {
    textField = [(CNPropertySimpleEditingCell *)self textField];
    [textField _cnui_applyContactStyle];

    if ([(CNPropertyDateEditingCell *)self shouldEditDatesTextually])
    {
      v7 = 1;
      goto LABEL_11;
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && (-[CNPropertyDateEditingCell traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 horizontalSizeClass], v11, v12 != 1))
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_41_29938);
      contentViewController = self->_contentViewController;
      if (!contentViewController)
      {
        v23 = objc_alloc_init(MEMORY[0x1E69DD258]);
        v24 = self->_contentViewController;
        self->_contentViewController = v23;

        datePicker = [(CNPropertyDateEditingCell *)self datePicker];
        [(UIViewController *)self->_contentViewController setView:datePicker];

        datePicker2 = [(CNPropertyDateEditingCell *)self datePicker];
        [datePicker2 bounds];
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

      view = [(UIViewController *)self->_contentViewController view];
      window = [view window];

      if (window)
      {
        goto LABEL_2;
      }

      presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
      [presentingDelegate sender:editingCopy presentViewController:self->_contentViewController];
      v7 = 0;
    }

    else
    {
      datePickerContainerView = [(CNPropertyDateEditingCell *)self datePickerContainerView];

      if (!datePickerContainerView)
      {
        v14 = [CNDatePickerContainerView alloc];
        datePicker3 = [(CNPropertyDateEditingCell *)self datePicker];
        v16 = [(CNDatePickerContainerView *)v14 initWithDatePicker:datePicker3];

        [(CNDatePickerContainerView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(CNPropertyDateEditingCell *)self setDatePickerContainerView:v16];
        datePickerContainerView2 = [(CNPropertyDateEditingCell *)self datePickerContainerView];
        textField2 = [(CNPropertySimpleEditingCell *)self textField];
        [textField2 setInputView:datePickerContainerView2];
      }

      presentingDelegate = [MEMORY[0x1E69DC888] clearColor];
      textField3 = [(CNPropertySimpleEditingCell *)self textField];
      [textField3 setInsertionPointColor:presentingDelegate];

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
  propertyItem = [(CNPropertyCell *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  value = [labeledValue value];

  if ([(CNPropertyDateEditingCell *)self _shouldUseYearlessPickerForDateComponents:value])
  {
    v5 = 4271;
  }

  else
  {
    v5 = 1;
  }

  [(UIDatePicker *)self->_datePicker setDatePickerMode:v5];
  calendar = [value calendar];
  v7 = [calendar copy];

  calendarIdentifier = [v7 calendarIdentifier];
  v9 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

  if (v9)
  {
    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];

    v7 = autoupdatingCurrentCalendar;
  }

  timeZone = [(UIDatePicker *)self->_datePicker timeZone];
  [v7 setTimeZone:timeZone];

  v12 = MEMORY[0x1E69AAE08];
  calendarIdentifier2 = [v7 calendarIdentifier];
  v14 = [v12 localeForCalendarID:calendarIdentifier2];

  [(UIDatePicker *)self->_datePicker setLocale:v14];
  v15 = [MEMORY[0x1E6996B48] dateFromComponents:value destinationCalendar:v7];
  [(UIDatePicker *)self->_datePicker setDate:v15];

  [(UIDatePicker *)self->_datePicker setCalendar:v7];
  calendarIdentifier3 = [v7 calendarIdentifier];
  currentCalendarIdentifier = self->_currentCalendarIdentifier;
  self->_currentCalendarIdentifier = calendarIdentifier3;
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
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  labeledValue = [propertyItem2 labeledValue];
  value = [labeledValue value];
  [delegate propertyCell:self didUpdateItem:propertyItem withNewValue:value];

  v12 = self->_datePicker;

  return v12;
}

- (void)updateValueWithPropertyItem:(id)item
{
  itemCopy = item;
  currentCalendarIdentifier = [(CNPropertyDateEditingCell *)self currentCalendarIdentifier];
  labeledValue = [itemCopy labeledValue];
  value = [labeledValue value];

  calendar = [value calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  [(CNPropertyDateEditingCell *)self setCurrentCalendarIdentifier:calendarIdentifier];

  valueString = [(CNPropertyEditingCell *)self valueString];
  valueView = [(CNPropertySimpleEditingCell *)self valueView];
  ab_text = [valueView ab_text];
  v12 = [valueString isEqualToString:ab_text];

  if ((v12 & 1) == 0)
  {
    if (!-[CNPropertyDateEditingCell shouldEditDatesTextually](self, "shouldEditDatesTextually") || (-[CNPropertySimpleEditingCell textField](self, "textField"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEditing], v13, !v14) || currentCalendarIdentifier && (-[CNPropertyDateEditingCell currentCalendarIdentifier](self, "currentCalendarIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(currentCalendarIdentifier, "isEqualToString:", v15), v15, (v16 & 1) == 0))
    {
      valueString2 = [(CNPropertyEditingCell *)self valueString];
      valueView2 = [(CNPropertySimpleEditingCell *)self valueView];
      [valueView2 setAb_text:valueString2];
    }

    if ([(CNPropertyDateEditingCell *)self shouldEditDatesTextually])
    {
      placeholderString = [itemCopy placeholderString];
      textField = [(CNPropertySimpleEditingCell *)self textField];
      [textField setPlaceholder:placeholderString];
    }
  }
}

- (void)dateChanged:(id)changed
{
  changedCopy = changed;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  property = [propertyItem property];
  v6 = [property isEqualToString:@"birthdays"];

  if (v6 && (-[CNPropertyCell propertyItem](self, "propertyItem"), v7 = objc_claimAutoreleasedReturnValue(), [v7 labeledValue], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "label"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"_systemCalendar"), v9, v8, v7, !v10))
  {
    v15 = MEMORY[0x1E6996B48];
    date = [changedCopy date];
    calendar = [changedCopy calendar];
    calendar2 = [changedCopy calendar];
    v14 = [v15 componentsFromDate:date sourceCalendar:calendar destinationCalendar:calendar2];
  }

  else
  {
    v11 = MEMORY[0x1E6996B48];
    date = [changedCopy date];
    calendar = [changedCopy calendar];
    v14 = [v11 GMTComponentsFromDate:date sourceCalendar:calendar];
  }

  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  [propertyItem2 updateLabeledValueWithValue:v14];

  propertyItem3 = [(CNPropertyCell *)self propertyItem];
  displayValue = [propertyItem3 displayValue];
  textField = [(CNPropertySimpleEditingCell *)self textField];
  [textField setText:displayValue];

  delegate = [(CNPropertyCell *)self delegate];
  propertyItem4 = [(CNPropertyCell *)self propertyItem];
  [delegate propertyCell:self didUpdateItem:propertyItem4 withNewValue:v14];
}

- (void)labelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  property = [propertyItem property];
  v7 = [property isEqualToString:*MEMORY[0x1E695C1F0]];

  if (v7)
  {
    v21.receiver = self;
    v21.super_class = CNPropertyDateEditingCell;
    [(CNPropertyEditingCell *)&v21 labelButtonClicked:clickedCopy];
  }

  else
  {
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    extendedLabels = [propertyItem2 extendedLabels];
    v10 = [extendedLabels count];

    if (v10 >= 2)
    {
      v11 = [CNLabelPickerController alloc];
      propertyItem3 = [(CNPropertyCell *)self propertyItem];
      v13 = [(CNLabelPickerController *)v11 initForPropertyItem:propertyItem3];

      v14 = CNContactsUIBundle();
      v15 = [v14 localizedStringForKey:@"SELECT_BIRTHDAY_CALENDAR_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
      [v13 setTitle:v15];

      [v13 setItemLocalizationBlock:&__block_literal_global_29956];
      propertyItem4 = [(CNPropertyCell *)self propertyItem];
      labeledValue = [propertyItem4 labeledValue];
      label = [labeledValue label];
      [v13 setSelectedItem:label];

      [v13 setDelegate:self];
      [v13 setAllowsCustomItems:0];
      v19 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v13];
      presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
      [presentingDelegate sender:clickedCopy presentViewController:v19];
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

- (void)localeUpdated:(id)updated
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  labeledValue = [propertyItem2 labeledValue];
  value = [labeledValue value];
  v7 = [propertyItem displayStringForValue:value];
  textField = [(CNPropertySimpleEditingCell *)self textField];
  [textField setText:v7];
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

- (CNPropertyDateEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = CNPropertyDateEditingCell;
  v4 = [(CNPropertyEditingCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_localeUpdated_ name:@"_UIApplicationLocaleDidChange" object:0];

    if (!v4->_shouldEditDatesTextually)
    {
      textField = [(CNPropertySimpleEditingCell *)v4 textField];
      [textField setClearButtonMode:0];

      textField2 = [(CNPropertySimpleEditingCell *)v4 textField];
      [textField2 setTextLoupeVisibility:1];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      textField3 = [(CNPropertySimpleEditingCell *)v4 textField];
      [textField3 setInsertionPointColor:clearColor];
    }

    textField4 = [(CNPropertySimpleEditingCell *)v4 textField];
    [textField4 setDelegate:v4];
  }

  return v4;
}

@end