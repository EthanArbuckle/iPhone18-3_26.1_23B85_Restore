@interface CHListTableHeaderView
+ (id)_monthYearDateFormatter;
- (CHListTableHeaderView)initWithFrame:(CGRect)frame;
- (CHListTableHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)_commonInit;
- (void)constrainViews;
- (void)prepareForReuse;
- (void)setDate:(id)date;
@end

@implementation CHListTableHeaderView

+ (id)_monthYearDateFormatter
{
  if (qword_1008F9A68 != -1)
  {
    sub_10069C774();
  }

  v3 = qword_1008F9A60;

  return v3;
}

- (CHListTableHeaderView)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = CHListTableHeaderView;
  v3 = [(CHListTableHeaderView *)&v6 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(CHListTableHeaderView *)v3 _commonInit];
  }

  return v4;
}

- (CHListTableHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHListTableHeaderView;
  v3 = [(CHListTableHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHListTableHeaderView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  if (_UISolariumEnabled())
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    v7 = [UIView alloc];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v9 = +[UIColor blackColor];
    [v8 setBackgroundColor:v9];

    [(CHListTableHeaderView *)self setBackgroundView:v8];
  }

  v17 = +[UIListContentConfiguration extraProminentInsetGroupedHeaderConfiguration];
  [v17 directionalLayoutMargins];
  [(CHListTableHeaderView *)self setDirectionalLayoutMargins:?];
  v10 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
  dateLabel = self->_dateLabel;
  self->_dateLabel = v10;

  [(UILabel *)self->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_dateLabel setAdjustsFontSizeToFitWidth:1];
  textProperties = [v17 textProperties];
  font = [textProperties font];
  [(UILabel *)self->_dateLabel setFont:font];

  v14 = +[UIColor labelColor];
  [(UILabel *)self->_dateLabel setTextColor:v14];

  v15 = +[UIColor clearColor];
  [(UILabel *)self->_dateLabel setBackgroundColor:v15];

  contentView = [(CHListTableHeaderView *)self contentView];
  [contentView addSubview:self->_dateLabel];

  [(CHListTableHeaderView *)self constrainViews];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CHListTableHeaderView;
  [(CHListTableHeaderView *)&v3 prepareForReuse];
  [(UILabel *)self->_dateLabel setText:0];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  _monthYearDateFormatter = [objc_opt_class() _monthYearDateFormatter];
  v5 = [_monthYearDateFormatter stringFromDate:dateCopy];

  [(UILabel *)self->_dateLabel setText:v5];
  [(CHListTableHeaderView *)self setNeedsLayout];
}

- (void)constrainViews
{
  topAnchor = [(UILabel *)self->_dateLabel topAnchor];
  contentView = [(CHListTableHeaderView *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];

  leadingAnchor = [(UILabel *)self->_dateLabel leadingAnchor];
  contentView2 = [(CHListTableHeaderView *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];

  trailingAnchor = [(UILabel *)self->_dateLabel trailingAnchor];
  contentView3 = [(CHListTableHeaderView *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];

  topAnchor3 = [(UILabel *)self->_dateLabel topAnchor];
  contentView4 = [(CHListTableHeaderView *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  v18 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:-0.0];

  LODWORD(v19) = 1132068864;
  [v18 setPriority:v19];
  v21[0] = v6;
  v21[1] = v10;
  v21[2] = v14;
  v21[3] = v18;
  v20 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v20];
}

@end