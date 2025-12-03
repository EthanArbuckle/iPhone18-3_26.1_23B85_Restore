@interface ReservationTableViewCell
- (ReservationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIColor)detailTextColor;
- (UIColor)titleTextColor;
- (void)_setupConstraints;
- (void)loadDetailView;
- (void)setDetailText:(id)text;
- (void)setDetailTextColor:(id)color;
- (void)setTitleText:(id)text;
- (void)setTitleTextColor:(id)color;
- (void)setupTextVerticalConstraints;
- (void)updateLabels;
@end

@implementation ReservationTableViewCell

- (UIColor)titleTextColor
{
  titleLabel = [(ReservationTableViewCell *)self titleLabel];
  textColor = [titleLabel textColor];

  return textColor;
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  titleLabel = [(ReservationTableViewCell *)self titleLabel];
  [titleLabel setTextColor:colorCopy];
}

- (UIColor)detailTextColor
{
  detailLabel = [(ReservationTableViewCell *)self detailLabel];
  textColor = [detailLabel textColor];

  return textColor;
}

- (void)setDetailTextColor:(id)color
{
  colorCopy = color;
  detailLabel = [(ReservationTableViewCell *)self detailLabel];
  [detailLabel setTextColor:colorCopy];
}

- (void)updateLabels
{
  titleText = [(ReservationTableViewCell *)self titleText];
  titleLabel = [(ReservationTableViewCell *)self titleLabel];
  [titleLabel setText:titleText];

  detailText = [(ReservationTableViewCell *)self detailText];
  detailLabel = [(ReservationTableViewCell *)self detailLabel];
  [detailLabel setText:detailText];
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_detailText] & 1) == 0)
  {
    v4 = [textCopy copy];
    detailText = self->_detailText;
    self->_detailText = v4;

    [(ReservationTableViewCell *)self updateLabels];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_titleText] & 1) == 0)
  {
    v4 = [textCopy copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    [(ReservationTableViewCell *)self updateLabels];
  }
}

- (void)setupTextVerticalConstraints
{
  contentView = [(ReservationTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide topAnchor];
  titleLabel = [(ReservationTableViewCell *)self titleLabel];
  topAnchor2 = [titleLabel topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];

  contentView2 = [(ReservationTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
  titleLabel2 = [(ReservationTableViewCell *)self titleLabel];
  bottomAnchor2 = [titleLabel2 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  titleLabel3 = [(ReservationTableViewCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel3 firstBaselineAnchor];
  detailView = [(ReservationTableViewCell *)self detailView];
  firstBaselineAnchor2 = [detailView firstBaselineAnchor];
  v19 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];

  v21[0] = v8;
  v21[1] = v14;
  v21[2] = v19;
  v20 = [NSArray arrayWithObjects:v21 count:3];
  [NSLayoutConstraint activateConstraints:v20];
}

- (void)_setupConstraints
{
  titleLabel = [(ReservationTableViewCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailView = [(ReservationTableViewCell *)self detailView];
  [detailView setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(ReservationTableViewCell *)self titleLabel];
  leadingAnchor = [titleLabel2 leadingAnchor];
  contentView = [(ReservationTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  detailView2 = [(ReservationTableViewCell *)self detailView];
  trailingAnchor = [detailView2 trailingAnchor];
  contentView2 = [(ReservationTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  detailView3 = [(ReservationTableViewCell *)self detailView];
  leadingAnchor3 = [detailView3 leadingAnchor];
  titleLabel3 = [(ReservationTableViewCell *)self titleLabel];
  trailingAnchor3 = [titleLabel3 trailingAnchor];
  v21 = [leadingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:20.0];

  v23[0] = v10;
  v23[1] = v16;
  v23[2] = v21;
  v22 = [NSArray arrayWithObjects:v23 count:3];
  [NSLayoutConstraint activateConstraints:v22];

  [(ReservationTableViewCell *)self setupTextVerticalConstraints];
}

- (void)loadDetailView
{
  v3 = objc_opt_new();
  [(ReservationTableViewCell *)self setDetailLabel:v3];

  v4 = +[UIColor labelColor];
  detailLabel = [(ReservationTableViewCell *)self detailLabel];
  [detailLabel setTextColor:v4];

  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
  titleLabel = [(ReservationTableViewCell *)self titleLabel];
  [titleLabel setFont:v6];

  detailLabel2 = [(ReservationTableViewCell *)self detailLabel];
  [(ReservationTableViewCell *)self setDetailView:detailLabel2];
}

- (ReservationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = ReservationTableViewCell;
  v4 = [(ReservationTableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    [(ReservationTableViewCell *)v4 setTitleLabel:v5];

    v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
    titleLabel = [(ReservationTableViewCell *)v4 titleLabel];
    [titleLabel setFont:v6];

    v8 = +[UIColor secondaryLabelColor];
    titleLabel2 = [(ReservationTableViewCell *)v4 titleLabel];
    [titleLabel2 setTextColor:v8];

    [(ReservationTableViewCell *)v4 loadDetailView];
    contentView = [(ReservationTableViewCell *)v4 contentView];
    titleLabel3 = [(ReservationTableViewCell *)v4 titleLabel];
    [contentView addSubview:titleLabel3];

    contentView2 = [(ReservationTableViewCell *)v4 contentView];
    detailView = [(ReservationTableViewCell *)v4 detailView];
    [contentView2 addSubview:detailView];

    [(ReservationTableViewCell *)v4 _setupConstraints];
  }

  return v4;
}

@end