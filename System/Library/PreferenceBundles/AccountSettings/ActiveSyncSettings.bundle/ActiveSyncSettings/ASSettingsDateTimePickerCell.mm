@interface ASSettingsDateTimePickerCell
- (ASSettingsDateTimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (ASSettingsDateTimePickerCellDelegate)delegate;
- (void)dateSelectionChanged:(id)changed;
@end

@implementation ASSettingsDateTimePickerCell

- (ASSettingsDateTimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = ASSettingsDateTimePickerCell;
  v9 = [(ASSettingsDateTimePickerCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    contentView = [(ASSettingsDateTimePickerCell *)v9 contentView];
    v12 = +[UIDatePicker as_newConfiguredPicker];
    datePicker = v10->_datePicker;
    v10->_datePicker = v12;

    [contentView addSubview:v10->_datePicker];
    [(UIDatePicker *)v10->_datePicker as_installConstraints];
    [(ASSettingsDateTimePickerCell *)v10 setSpecifier:specifierCopy];
    [(UIDatePicker *)v10->_datePicker addTarget:v10 action:"dateSelectionChanged:" forControlEvents:4096];
    v14 = v10->_datePicker;
    v15 = [specifierCopy propertyForKey:@"kPSOofPickerSelectedDate"];
    [(UIDatePicker *)v14 setDate:v15];

    v16 = [specifierCopy propertyForKey:@"kPSOofDateTimePickerDelegate"];
    objc_storeWeak(&v10->_delegate, v16);
  }

  return v10;
}

- (void)dateSelectionChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(ASSettingsDateTimePickerCell *)self delegate];
  specifier = [(ASSettingsDateTimePickerCell *)self specifier];
  date = [changedCopy date];

  [delegate datePickerCell:specifier changedDate:date];
}

- (ASSettingsDateTimePickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end