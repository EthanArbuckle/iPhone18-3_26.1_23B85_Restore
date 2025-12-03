@interface BookingConfirmationCell
- (BookingConfirmationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)initConstraints;
@end

@implementation BookingConfirmationCell

- (void)initConstraints
{
  details = [(BookingConfirmationCell *)self details];
  [details setTranslatesAutoresizingMaskIntoConstraints:0];

  details2 = [(BookingConfirmationCell *)self details];
  leadingAnchor = [details2 leadingAnchor];
  contentView = [(BookingConfirmationCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  details3 = [(BookingConfirmationCell *)self details];
  trailingAnchor = [details3 trailingAnchor];
  contentView2 = [(BookingConfirmationCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  details4 = [(BookingConfirmationCell *)self details];
  topAnchor = [details4 topAnchor];
  contentView3 = [(BookingConfirmationCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];

  contentView4 = [(BookingConfirmationCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide4 bottomAnchor];
  details5 = [(BookingConfirmationCell *)self details];
  lastBaselineAnchor = [details5 lastBaselineAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:20.0];

  v29[0] = v9;
  v29[1] = v21;
  v29[2] = v15;
  v29[3] = v27;
  v28 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v28];
}

- (BookingConfirmationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = BookingConfirmationCell;
  v4 = [(BookingConfirmationCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
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

    contentView = [(BookingConfirmationCell *)v4 contentView];
    [contentView addSubview:v4->_details];

    [(BookingConfirmationCell *)v4 initConstraints];
    v11 = +[UIColor systemGroupedBackgroundColor];
    [(BookingConfirmationCell *)v4 setBackgroundColor:v11];
  }

  return v4;
}

@end