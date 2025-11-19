@interface DatePickerTableViewCell
- (CGSize)intrinsicContentSize;
- (DatePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setupConstraints;
@end

@implementation DatePickerTableViewCell

- (CGSize)intrinsicContentSize
{
  v2 = [(DatePickerTableViewCell *)self datePicker];
  [v2 intrinsicContentSize];
  v4 = v3;

  v5 = UIViewNoIntrinsicMetric;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setupConstraints
{
  v3 = [(DatePickerTableViewCell *)self datePicker];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(DatePickerTableViewCell *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [(DatePickerTableViewCell *)self datePicker];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];

  v9 = [(DatePickerTableViewCell *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [(DatePickerTableViewCell *)self datePicker];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];

  v14 = [(DatePickerTableViewCell *)self contentView];
  v15 = [v14 leadingAnchor];
  v16 = [(DatePickerTableViewCell *)self datePicker];
  v17 = [v16 leadingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];

  v19 = [(DatePickerTableViewCell *)self contentView];
  v20 = [v19 trailingAnchor];
  v21 = [(DatePickerTableViewCell *)self datePicker];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];

  v25[0] = v8;
  v25[1] = v18;
  v25[2] = v13;
  v25[3] = v23;
  v24 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v24];
}

- (DatePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = DatePickerTableViewCell;
  v4 = [(DatePickerTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    datePicker = v4->_datePicker;
    v4->_datePicker = v5;

    [(UIDatePicker *)v4->_datePicker setPreferredDatePickerStyle:3];
    v7 = [(DatePickerTableViewCell *)v4 contentView];
    v8 = [(DatePickerTableViewCell *)v4 datePicker];
    [v7 addSubview:v8];

    [(DatePickerTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end