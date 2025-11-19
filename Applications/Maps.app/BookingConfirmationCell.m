@interface BookingConfirmationCell
- (BookingConfirmationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)initConstraints;
@end

@implementation BookingConfirmationCell

- (void)initConstraints
{
  v3 = [(BookingConfirmationCell *)self details];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(BookingConfirmationCell *)self details];
  v5 = [v4 leadingAnchor];
  v6 = [(BookingConfirmationCell *)self contentView];
  v7 = [v6 layoutMarginsGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];

  v10 = [(BookingConfirmationCell *)self details];
  v11 = [v10 trailingAnchor];
  v12 = [(BookingConfirmationCell *)self contentView];
  v13 = [v12 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];

  v16 = [(BookingConfirmationCell *)self details];
  v17 = [v16 topAnchor];
  v18 = [(BookingConfirmationCell *)self contentView];
  v19 = [v18 layoutMarginsGuide];
  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];

  v22 = [(BookingConfirmationCell *)self contentView];
  v23 = [v22 layoutMarginsGuide];
  v24 = [v23 bottomAnchor];
  v25 = [(BookingConfirmationCell *)self details];
  v26 = [v25 lastBaselineAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:20.0];

  v29[0] = v9;
  v29[1] = v21;
  v29[2] = v15;
  v29[3] = v27;
  v28 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v28];
}

- (BookingConfirmationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = BookingConfirmationCell;
  v4 = [(BookingConfirmationCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    details = v4->_details;
    v4->_details = v5;

    v7 = +[UIColor labelColor];
    [(UILabel *)v4->_details setTextColor:v7];

    [(UILabel *)v4->_details setTextAlignment:4];
    v8 = +[UIColor clearColor];
    [(UILabel *)v4->_details setBackgroundColor:v8];

    [(UILabel *)v4->_details setNumberOfLines:0];
    v9 = [UIFont _maps_systemFontWithSize:18.0];
    [(UILabel *)v4->_details setFont:v9];

    v10 = [(BookingConfirmationCell *)v4 contentView];
    [v10 addSubview:v4->_details];

    [(BookingConfirmationCell *)v4 initConstraints];
    v11 = +[UIColor systemGroupedBackgroundColor];
    [(BookingConfirmationCell *)v4 setBackgroundColor:v11];
  }

  return v4;
}

@end