@interface SafariSavedCreditCardExpirationDateTableCell
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (double)pickerView:(id)view widthForComponent:(int64_t)component;
- (id)_monthNumberFormatter;
- (id)_pickerView;
- (id)inputView;
- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_updateDetailTextLabel;
- (void)dealloc;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation SafariSavedCreditCardExpirationDateTableCell

- (void)dealloc
{
  [(UIPopoverController *)self->_popoverController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SafariSavedCreditCardExpirationDateTableCell;
  [(SafariSavedCreditCardExpirationDateTableCell *)&v3 dealloc];
}

- (void)_updateDetailTextLabel
{
  detailTextLabel = [(SafariSavedCreditCardExpirationDateTableCell *)self detailTextLabel];
  value = [(SafariSavedCreditCardExpirationDateTableCell *)self value];
  specifier = [(SafariSavedCreditCardExpirationDateTableCell *)self specifier];
  [(SafariSavedCreditCardExpirationDateTableCell *)self setNeedsLayout];
  if (value)
  {
    if ([(SafariSavedCreditCardExpirationDateTableCell *)self canBecomeFirstResponder])
    {
      +[UIColor tableCellBlueTextColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v7 = ;
    [detailTextLabel setTextColor:v7];

    v8 = [specifier propertyForKey:@"SafariDateFormatter"];
    placeholder = v8;
    if (v8)
    {
      v9 = [v8 stringFromDate:value];
      [detailTextLabel setText:v9];
    }
  }

  else
  {
    v5 = +[UIColor tertiaryLabelColor];
    [detailTextLabel setTextColor:v5];

    placeholder = [specifier placeholder];
    [detailTextLabel setText:placeholder];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = SafariSavedCreditCardExpirationDateTableCell;
  [(SafariSavedCreditCardExpirationDateTableCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(SafariSavedCreditCardExpirationDateTableCell *)self _updateDetailTextLabel];
}

- (id)_pickerView
{
  pickerView = self->_pickerView;
  if (pickerView)
  {
    v3 = pickerView;
  }

  else
  {
    v5 = objc_alloc_init(UIPickerView);
    v6 = self->_pickerView;
    self->_pickerView = v5;

    [(UIPickerView *)self->_pickerView setDataSource:self];
    [(UIPickerView *)self->_pickerView setDelegate:self];
    value = [(SafariSavedCreditCardExpirationDateTableCell *)self value];
    v8 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v9 = v8;
    if (value)
    {
      v10 = [v8 components:12 fromDate:value];
      -[UIPickerView selectRow:inComponent:animated:](self->_pickerView, "selectRow:inComponent:animated:", [v10 month], 0, 0);
      v11 = self->_pickerView;
      year = [v10 year] - 1;
    }

    else
    {
      v13 = +[NSDate date];
      v10 = [v9 components:4 fromDate:v13];

      v11 = self->_pickerView;
      year = [v10 year];
    }

    [(UIPickerView *)v11 selectRow:year inComponent:1 animated:0];

    v3 = self->_pickerView;
  }

  return v3;
}

- (void)setValue:(id)value
{
  v4.receiver = self;
  v4.super_class = SafariSavedCreditCardExpirationDateTableCell;
  [(SafariSavedCreditCardExpirationDateTableCell *)&v4 setValue:value];
  [(SafariSavedCreditCardExpirationDateTableCell *)self _updateDetailTextLabel];
}

- (id)inputView
{
  if (_SFDeviceIsPad())
  {
    v5.receiver = self;
    v5.super_class = SafariSavedCreditCardExpirationDateTableCell;
    inputView = [(SafariSavedCreditCardExpirationDateTableCell *)&v5 inputView];
  }

  else
  {
    inputView = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerView];
  }

  return inputView;
}

- (BOOL)canBecomeFirstResponder
{
  specifier = [(SafariSavedCreditCardExpirationDateTableCell *)self specifier];
  v3 = [specifier propertyForKey:@"SafariEditing"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)becomeFirstResponder
{
  if (_SFDeviceIsPad())
  {
    v12.receiver = self;
    v12.super_class = SafariSavedCreditCardExpirationDateTableCell;
    if ([(SafariSavedCreditCardExpirationDateTableCell *)&v12 becomeFirstResponder]&& ![(UIPopoverController *)self->_popoverController isPopoverVisible])
    {
      v5 = objc_alloc_init(UIViewController);
      _pickerView = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerView];
      [v5 setView:_pickerView];

      v7 = [[UIPopoverController alloc] initWithContentViewController:v5];
      popoverController = self->_popoverController;
      self->_popoverController = v7;

      [(UIPopoverController *)self->_popoverController setDelegate:self];
      v9 = self->_popoverController;
      _pickerView2 = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerView];
      [_pickerView2 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
      [(UIPopoverController *)v9 setPopoverContentSize:?];

      v11 = self->_popoverController;
      [(SafariSavedCreditCardExpirationDateTableCell *)self bounds];
      v3 = 1;
      [(UIPopoverController *)v11 presentPopoverFromRect:self inView:2 permittedArrowDirections:1 animated:?];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SafariSavedCreditCardExpirationDateTableCell;
    return [(SafariSavedCreditCardExpirationDateTableCell *)&v13 becomeFirstResponder];
  }

  return v3;
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  contentViewController = [(UIPopoverController *)self->_popoverController contentViewController];
  [contentViewController setView:0];

  [(UIPopoverController *)self->_popoverController setDelegate:0];
  popoverController = self->_popoverController;
  self->_popoverController = 0;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  if (component)
  {
    return 9999;
  }

  else
  {
    return 13;
  }
}

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  v15 = NSFontAttributeName;
  _pickerTitleFont = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerTitleFont];
  v16 = _pickerTitleFont;
  v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  if (component)
  {
    v7 = [NSNumberFormatter localizedStringFromNumber:&off_90AC0 numberStyle:0];
    [v7 sizeWithAttributes:v6];
    v9 = v8;
  }

  else
  {
    v10 = SafariSettingsLocalizedString(@"Month", @"AutoFill");
    [v10 sizeWithAttributes:v6];
    v12 = v11;

    v7 = [NSNumberFormatter localizedStringFromNumber:&off_90AD8 numberStyle:0];
    [v7 sizeWithAttributes:v6];
    v9 = fmax(v12, v13);
  }

  return v9 + 20.0;
}

- (id)_monthNumberFormatter
{
  monthNumberFormatter = self->_monthNumberFormatter;
  if (!monthNumberFormatter)
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    v5 = self->_monthNumberFormatter;
    self->_monthNumberFormatter = v4;

    [(NSNumberFormatter *)self->_monthNumberFormatter setNumberStyle:1];
    [(NSNumberFormatter *)self->_monthNumberFormatter setMinimumIntegerDigits:2];
    monthNumberFormatter = self->_monthNumberFormatter;
  }

  v6 = monthNumberFormatter;

  return v6;
}

- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component
{
  v8 = +[NSParagraphStyle defaultParagraphStyle];
  v9 = [v8 mutableCopy];

  if (component == 1)
  {
    v13 = [NSNumber numberWithInteger:row + 1];
    v12 = [NSNumberFormatter localizedStringFromNumber:v13 numberStyle:0];

    v14 = +[UIColor labelColor];
    if (v12)
    {
LABEL_10:
      v15 = [NSAttributedString alloc];
      v20[0] = NSFontAttributeName;
      _pickerTitleFont = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerTitleFont];
      v21[0] = _pickerTitleFont;
      v21[1] = v14;
      v20[1] = NSForegroundColorAttributeName;
      v20[2] = NSParagraphStyleAttributeName;
      v21[2] = v9;
      v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
      v18 = [v15 initWithString:v12 attributes:v17];

      goto LABEL_12;
    }
  }

  else if (component)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    if (row)
    {
      _monthNumberFormatter = [(SafariSavedCreditCardExpirationDateTableCell *)self _monthNumberFormatter];
      v11 = [NSNumber numberWithInteger:row];
      v12 = [_monthNumberFormatter stringFromNumber:v11];

      +[UIColor labelColor];
    }

    else
    {
      v12 = SafariSettingsLocalizedString(@"Month", @"AutoFill");
      +[UIColor secondaryLabelColor];
    }
    v14 = ;
    [v9 setAlignment:0];
    if (v12)
    {
      goto LABEL_10;
    }
  }

  v18 = 0;
LABEL_12:

  return v18;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  date = [viewCopy selectedRowInComponent:0];
  if (date)
  {
    v7 = [viewCopy selectedRowInComponent:1];
    v8 = objc_alloc_init(NSDateComponents);
    v9 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    [v8 setCalendar:v9];

    [v8 setMonth:date];
    [v8 setYear:v7 + 1];
    date = [v8 date];
  }

  [(SafariSavedCreditCardExpirationDateTableCell *)self setValue:date];
  specifier = [(SafariSavedCreditCardExpirationDateTableCell *)self specifier];
  v11 = specifier;
  if (specifier)
  {
    target = [specifier target];
    [target *&v11[OBJC:date IVAR:v11 :? :? PSSpecifier:?setter]];
  }
}

@end