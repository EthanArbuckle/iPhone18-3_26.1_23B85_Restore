@interface ReservationActionButtonTableViewCell
- (CGSize)intrinsicContentSize;
- (ReservationActionButtonTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setupConstraints;
@end

@implementation ReservationActionButtonTableViewCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = ReservationActionButtonTableViewCell;
  [(ReservationActionButtonTableViewCell *)&v4 setSelected:selected animated:animated];
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ReservationActionButtonTableViewCell;
  [(ReservationActionButtonTableViewCell *)&v7 layoutSubviews];
  title = [(ReservationActionButtonTableViewCell *)self title];
  titleLabel = [(ReservationActionButtonTableViewCell *)self titleLabel];
  [titleLabel setText:title];

  accessoryTitle = [(ReservationActionButtonTableViewCell *)self accessoryTitle];
  accessoryTitleLabel = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  [accessoryTitleLabel setText:accessoryTitle];
}

- (void)setupConstraints
{
  titleLabel = [(ReservationActionButtonTableViewCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  actionButton = [(ReservationActionButtonTableViewCell *)self actionButton];
  [actionButton setTranslatesAutoresizingMaskIntoConstraints:0];

  accessoryTitleLabel = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  [accessoryTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  leadingAnchor = [titleLabel2 leadingAnchor];
  contentView = [(ReservationActionButtonTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  titleLabel3 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  trailingAnchor = [titleLabel3 trailingAnchor];
  contentView2 = [(ReservationActionButtonTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  titleLabel4 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel4 firstBaselineAnchor];
  contentView3 = [(ReservationActionButtonTableViewCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  v52 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:32.5];

  accessoryTitleLabel2 = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  leadingAnchor3 = [accessoryTitleLabel2 leadingAnchor];
  titleLabel5 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  leadingAnchor4 = [titleLabel5 leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  accessoryTitleLabel3 = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  leadingAnchor5 = [accessoryTitleLabel3 leadingAnchor];
  contentView4 = [(ReservationActionButtonTableViewCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide3 trailingAnchor];
  v30 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];

  accessoryTitleLabel4 = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  firstBaselineAnchor2 = [accessoryTitleLabel4 firstBaselineAnchor];
  titleLabel6 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  firstBaselineAnchor3 = [titleLabel6 firstBaselineAnchor];
  v35 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:18.0];

  actionButton2 = [(ReservationActionButtonTableViewCell *)self actionButton];
  trailingAnchor4 = [actionButton2 trailingAnchor];
  contentView5 = [(ReservationActionButtonTableViewCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  trailingAnchor5 = [layoutMarginsGuide4 trailingAnchor];
  v41 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];

  actionButton3 = [(ReservationActionButtonTableViewCell *)self actionButton];
  topAnchor2 = [actionButton3 topAnchor];
  contentView6 = [(ReservationActionButtonTableViewCell *)self contentView];
  topAnchor3 = [contentView6 topAnchor];
  v46 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:17.5];

  actionButton4 = [(ReservationActionButtonTableViewCell *)self actionButton];
  bottomAnchor = [actionButton4 bottomAnchor];
  contentView7 = [(ReservationActionButtonTableViewCell *)self contentView];
  bottomAnchor2 = [contentView7 bottomAnchor];
  v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-17.5];

  [v54 setActive:1];
  [v53 setActive:1];
  [v52 setActive:1];
  [v24 setActive:1];
  [v30 setActive:1];
  [v35 setActive:1];
  [v41 setActive:1];
  [v46 setActive:1];
  [v51 setActive:1];
}

- (ReservationActionButtonTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v22.receiver = self;
  v22.super_class = ReservationActionButtonTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v22 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    v7 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v7];

    v8 = objc_opt_new();
    accessoryTitleLabel = v4->_accessoryTitleLabel;
    v4->_accessoryTitleLabel = v8;

    v10 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_accessoryTitleLabel setTextColor:v10];

    v11 = +[OverridenBackgroundColorButton newChromeBlueButton];
    actionButton = v4->_actionButton;
    v4->_actionButton = v11;

    v13 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightMedium];
    [(UILabel *)v4->_titleLabel setFont:v13];

    v14 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_accessoryTitleLabel setFont:v14];

    contentView = [(ReservationActionButtonTableViewCell *)v4 contentView];
    titleLabel = [(ReservationActionButtonTableViewCell *)v4 titleLabel];
    [contentView addSubview:titleLabel];

    contentView2 = [(ReservationActionButtonTableViewCell *)v4 contentView];
    accessoryTitleLabel = [(ReservationActionButtonTableViewCell *)v4 accessoryTitleLabel];
    [contentView2 addSubview:accessoryTitleLabel];

    contentView3 = [(ReservationActionButtonTableViewCell *)v4 contentView];
    actionButton = [(ReservationActionButtonTableViewCell *)v4 actionButton];
    [contentView3 addSubview:actionButton];

    [(ReservationActionButtonTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end