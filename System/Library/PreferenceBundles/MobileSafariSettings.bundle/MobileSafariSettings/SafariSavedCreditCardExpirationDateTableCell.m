@interface SafariSavedCreditCardExpirationDateTableCell
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4;
- (id)_monthNumberFormatter;
- (id)_pickerView;
- (id)inputView;
- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_updateDetailTextLabel;
- (void)dealloc;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
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
  v10 = [(SafariSavedCreditCardExpirationDateTableCell *)self detailTextLabel];
  v3 = [(SafariSavedCreditCardExpirationDateTableCell *)self value];
  v4 = [(SafariSavedCreditCardExpirationDateTableCell *)self specifier];
  [(SafariSavedCreditCardExpirationDateTableCell *)self setNeedsLayout];
  if (v3)
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
    [v10 setTextColor:v7];

    v8 = [v4 propertyForKey:@"SafariDateFormatter"];
    v6 = v8;
    if (v8)
    {
      v9 = [v8 stringFromDate:v3];
      [v10 setText:v9];
    }
  }

  else
  {
    v5 = +[UIColor tertiaryLabelColor];
    [v10 setTextColor:v5];

    v6 = [v4 placeholder];
    [v10 setText:v6];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SafariSavedCreditCardExpirationDateTableCell;
  [(SafariSavedCreditCardExpirationDateTableCell *)&v4 refreshCellContentsWithSpecifier:a3];
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
    v7 = [(SafariSavedCreditCardExpirationDateTableCell *)self value];
    v8 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 components:12 fromDate:v7];
      -[UIPickerView selectRow:inComponent:animated:](self->_pickerView, "selectRow:inComponent:animated:", [v10 month], 0, 0);
      v11 = self->_pickerView;
      v12 = [v10 year] - 1;
    }

    else
    {
      v13 = +[NSDate date];
      v10 = [v9 components:4 fromDate:v13];

      v11 = self->_pickerView;
      v12 = [v10 year];
    }

    [(UIPickerView *)v11 selectRow:v12 inComponent:1 animated:0];

    v3 = self->_pickerView;
  }

  return v3;
}

- (void)setValue:(id)a3
{
  v4.receiver = self;
  v4.super_class = SafariSavedCreditCardExpirationDateTableCell;
  [(SafariSavedCreditCardExpirationDateTableCell *)&v4 setValue:a3];
  [(SafariSavedCreditCardExpirationDateTableCell *)self _updateDetailTextLabel];
}

- (id)inputView
{
  if (_SFDeviceIsPad())
  {
    v5.receiver = self;
    v5.super_class = SafariSavedCreditCardExpirationDateTableCell;
    v3 = [(SafariSavedCreditCardExpirationDateTableCell *)&v5 inputView];
  }

  else
  {
    v3 = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerView];
  }

  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(SafariSavedCreditCardExpirationDateTableCell *)self specifier];
  v3 = [v2 propertyForKey:@"SafariEditing"];
  v4 = [v3 BOOLValue];

  return v4;
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
      v6 = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerView];
      [v5 setView:v6];

      v7 = [[UIPopoverController alloc] initWithContentViewController:v5];
      popoverController = self->_popoverController;
      self->_popoverController = v7;

      [(UIPopoverController *)self->_popoverController setDelegate:self];
      v9 = self->_popoverController;
      v10 = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerView];
      [v10 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
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

- (void)popoverControllerDidDismissPopover:(id)a3
{
  v4 = [(UIPopoverController *)self->_popoverController contentViewController];
  [v4 setView:0];

  [(UIPopoverController *)self->_popoverController setDelegate:0];
  popoverController = self->_popoverController;
  self->_popoverController = 0;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  if (a4)
  {
    return 9999;
  }

  else
  {
    return 13;
  }
}

- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4
{
  v15 = NSFontAttributeName;
  v5 = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerTitleFont];
  v16 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  if (a4)
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

- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v8 = +[NSParagraphStyle defaultParagraphStyle];
  v9 = [v8 mutableCopy];

  if (a5 == 1)
  {
    v13 = [NSNumber numberWithInteger:a4 + 1];
    v12 = [NSNumberFormatter localizedStringFromNumber:v13 numberStyle:0];

    v14 = +[UIColor labelColor];
    if (v12)
    {
LABEL_10:
      v15 = [NSAttributedString alloc];
      v20[0] = NSFontAttributeName;
      v16 = [(SafariSavedCreditCardExpirationDateTableCell *)self _pickerTitleFont];
      v21[0] = v16;
      v21[1] = v14;
      v20[1] = NSForegroundColorAttributeName;
      v20[2] = NSParagraphStyleAttributeName;
      v21[2] = v9;
      v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
      v18 = [v15 initWithString:v12 attributes:v17];

      goto LABEL_12;
    }
  }

  else if (a5)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    if (a4)
    {
      v10 = [(SafariSavedCreditCardExpirationDateTableCell *)self _monthNumberFormatter];
      v11 = [NSNumber numberWithInteger:a4];
      v12 = [v10 stringFromNumber:v11];

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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v13 = a3;
  v6 = [v13 selectedRowInComponent:0];
  if (v6)
  {
    v7 = [v13 selectedRowInComponent:1];
    v8 = objc_alloc_init(NSDateComponents);
    v9 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    [v8 setCalendar:v9];

    [v8 setMonth:v6];
    [v8 setYear:v7 + 1];
    v6 = [v8 date];
  }

  [(SafariSavedCreditCardExpirationDateTableCell *)self setValue:v6];
  v10 = [(SafariSavedCreditCardExpirationDateTableCell *)self specifier];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 target];
    [v12 *&v11[OBJC:v6 IVAR:v11 :? :? PSSpecifier:?setter]];
  }
}

@end