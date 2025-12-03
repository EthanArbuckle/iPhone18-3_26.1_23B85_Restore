@interface DatePickerTableViewCell
- (CGSize)intrinsicContentSize;
- (DatePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupConstraints;
@end

@implementation DatePickerTableViewCell

- (CGSize)intrinsicContentSize
{
  datePicker = [(DatePickerTableViewCell *)self datePicker];
  [datePicker intrinsicContentSize];
  v4 = v3;

  v5 = UIViewNoIntrinsicMetric;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setupConstraints
{
  datePicker = [(DatePickerTableViewCell *)self datePicker];
  [datePicker setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(DatePickerTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  datePicker2 = [(DatePickerTableViewCell *)self datePicker];
  topAnchor2 = [datePicker2 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];

  contentView2 = [(DatePickerTableViewCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  datePicker3 = [(DatePickerTableViewCell *)self datePicker];
  bottomAnchor2 = [datePicker3 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  contentView3 = [(DatePickerTableViewCell *)self contentView];
  leadingAnchor = [contentView3 leadingAnchor];
  datePicker4 = [(DatePickerTableViewCell *)self datePicker];
  leadingAnchor2 = [datePicker4 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  contentView4 = [(DatePickerTableViewCell *)self contentView];
  trailingAnchor = [contentView4 trailingAnchor];
  datePicker5 = [(DatePickerTableViewCell *)self datePicker];
  trailingAnchor2 = [datePicker5 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  v25[0] = v8;
  v25[1] = v18;
  v25[2] = v13;
  v25[3] = v23;
  v24 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v24];
}

- (DatePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = DatePickerTableViewCell;
  v4 = [(DatePickerTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    datePicker = v4->_datePicker;
    v4->_datePicker = v5;

    [(UIDatePicker *)v4->_datePicker setPreferredDatePickerStyle:3];
    contentView = [(DatePickerTableViewCell *)v4 contentView];
    datePicker = [(DatePickerTableViewCell *)v4 datePicker];
    [contentView addSubview:datePicker];

    [(DatePickerTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end