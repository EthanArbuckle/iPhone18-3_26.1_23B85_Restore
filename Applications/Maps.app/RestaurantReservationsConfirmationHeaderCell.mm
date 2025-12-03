@interface RestaurantReservationsConfirmationHeaderCell
- (NSString)accessoryButtonTitle;
- (RestaurantReservationsConfirmationHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (RestaurantReservationsConfirmationHeaderCellDelegate)actionDelegate;
- (void)accessoryButtonTapped:(id)tapped;
- (void)initConstraints;
- (void)reservationLabelDidLayout:(id)layout;
- (void)setAccessoryButtonTitle:(id)title;
- (void)setAutomaticallyHidesChevron:(BOOL)chevron;
- (void)setSubtitleType:(unint64_t)type;
- (void)updateConstraints;
- (void)updateSubtitleLabel;
@end

@implementation RestaurantReservationsConfirmationHeaderCell

- (RestaurantReservationsConfirmationHeaderCellDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)setAutomaticallyHidesChevron:(BOOL)chevron
{
  if (self->_automaticallyHidesChevron == !chevron)
  {
    self->_automaticallyHidesChevron = chevron;
    [(RestaurantReservationsConfirmationHeaderCell *)self setNeedsLayout];
  }
}

- (void)setAccessoryButtonTitle:(id)title
{
  titleCopy = title;
  accessoryButton = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  [accessoryButton setTitle:titleCopy forState:0];

  [(RestaurantReservationsConfirmationHeaderCell *)self setNeedsUpdateConstraints];
}

- (NSString)accessoryButtonTitle
{
  accessoryButton = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  v3 = [accessoryButton titleForState:0];

  return v3;
}

- (void)updateConstraints
{
  accessoryButton = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  titleLabel = [accessoryButton titleLabel];
  text = [titleLabel text];
  v8 = [text length];
  if (v8)
  {
    subLabel = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
    font = [subLabel font];
    [font lineHeight];
    v10 = ceil(v9);
  }

  else
  {
    v10 = 0.0;
  }

  buttonBottomConstraint = [(RestaurantReservationsConfirmationHeaderCell *)self buttonBottomConstraint];
  [buttonBottomConstraint setConstant:v10];

  if (v8)
  {
  }

  v12.receiver = self;
  v12.super_class = RestaurantReservationsConfirmationHeaderCell;
  [(RestaurantReservationsConfirmationHeaderCell *)&v12 updateConstraints];
}

- (void)accessoryButtonTapped:(id)tapped
{
  actionDelegate = [(RestaurantReservationsConfirmationHeaderCell *)self actionDelegate];
  [actionDelegate reservationConfirmationHeaderCellAccessoryButtonWasTapped:self];
}

- (void)setSubtitleType:(unint64_t)type
{
  if (self->_subtitleType != type)
  {
    self->_subtitleType = type;
    [(RestaurantReservationsConfirmationHeaderCell *)self updateSubtitleLabel];
  }
}

- (void)initConstraints
{
  [(UILabel *)self->_mainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ReservationLabel *)self->_subLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
  mainLabel = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  leadingAnchor = [mainLabel leadingAnchor];
  contentView = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  mainLabel2 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  trailingAnchor = [mainLabel2 trailingAnchor];
  contentView2 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v57 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  mainLabel3 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  topAnchor = [mainLabel3 topAnchor];
  contentView3 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v56 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];

  subLabel = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  leadingAnchor3 = [subLabel leadingAnchor];
  mainLabel4 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  leadingAnchor4 = [mainLabel4 leadingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  subLabel2 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  trailingAnchor3 = [subLabel2 trailingAnchor];
  mainLabel5 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  trailingAnchor4 = [mainLabel5 trailingAnchor];
  v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  subLabel3 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  firstBaselineAnchor = [subLabel3 firstBaselineAnchor];
  mainLabel6 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  firstBaselineAnchor2 = [mainLabel6 firstBaselineAnchor];
  v30 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:20.0];
  [(RestaurantReservationsConfirmationHeaderCell *)self setMainToSublabelConstraint:v30];

  accessoryButton = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  leadingAnchor5 = [accessoryButton leadingAnchor];
  contentView4 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide4 leadingAnchor];
  v53 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

  accessoryButton2 = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  firstBaselineAnchor3 = [accessoryButton2 firstBaselineAnchor];
  subLabel4 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  lastBaselineAnchor = [subLabel4 lastBaselineAnchor];
  subLabel5 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  font = [subLabel5 font];
  [font lineHeight];
  v43 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:ceil(v42)];
  [(RestaurantReservationsConfirmationHeaderCell *)self setButtonBottomConstraint:v43];

  contentView5 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide5 bottomAnchor];
  accessoryButton3 = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  lastBaselineAnchor2 = [accessoryButton3 lastBaselineAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2];

  v59[0] = v58;
  v59[1] = v57;
  v59[2] = v56;
  v59[3] = v55;
  v59[4] = v54;
  mainToSublabelConstraint = [(RestaurantReservationsConfirmationHeaderCell *)self mainToSublabelConstraint];
  v59[5] = mainToSublabelConstraint;
  v59[6] = v53;
  buttonBottomConstraint = [(RestaurantReservationsConfirmationHeaderCell *)self buttonBottomConstraint];
  v59[7] = buttonBottomConstraint;
  v59[8] = v49;
  v52 = [NSArray arrayWithObjects:v59 count:9];
  [NSLayoutConstraint activateConstraints:v52];
}

- (void)updateSubtitleLabel
{
  subtitleType = [(RestaurantReservationsConfirmationHeaderCell *)self subtitleType];
  if (subtitleType)
  {
    if (subtitleType != 1)
    {
      goto LABEL_6;
    }

    v4 = 22.0;
    v5 = &UIFontTextStyleBody;
  }

  else
  {
    v4 = 20.0;
    v5 = &UIFontTextStyleSubheadline;
  }

  v6 = [UIFont preferredFontForTextStyle:*v5];
  subLabel = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  [subLabel setFont:v6];

  subLabel2 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  font = [subLabel2 font];
  [font _mapkit_scaledValueForValue:v4];
  v11 = v10;
  mainToSublabelConstraint = [(RestaurantReservationsConfirmationHeaderCell *)self mainToSublabelConstraint];
  [mainToSublabelConstraint setConstant:v11];

LABEL_6:

  [(RestaurantReservationsConfirmationHeaderCell *)self setNeedsLayout];
}

- (void)reservationLabelDidLayout:(id)layout
{
  if ([(RestaurantReservationsConfirmationHeaderCell *)self automaticallyHidesChevron]&& [(ReservationLabel *)self->_subLabel textFits])
  {
    selfCopy2 = self;
    v5 = 0;
  }

  else
  {
    if (![(RestaurantReservationsConfirmationHeaderCell *)self automaticallyHidesChevron])
    {
      return;
    }

    selfCopy2 = self;
    v5 = 1;
  }

  [(RestaurantReservationsConfirmationHeaderCell *)selfCopy2 setAccessoryType:v5];
}

- (RestaurantReservationsConfirmationHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = RestaurantReservationsConfirmationHeaderCell;
  v4 = [(RestaurantReservationsConfirmationHeaderCell *)&v21 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    mainLabel = v4->_mainLabel;
    v4->_mainLabel = v5;

    v7 = +[UIFont system22Bold];
    [(UILabel *)v4->_mainLabel setFont:v7];

    v8 = +[UIColor labelColor];
    [(UILabel *)v4->_mainLabel setTextColor:v8];

    v9 = objc_opt_new();
    subLabel = v4->_subLabel;
    v4->_subLabel = v9;

    [(ReservationLabel *)v4->_subLabel setDelegate:v4];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(ReservationLabel *)v4->_subLabel setFont:v11];

    v12 = +[UIColor secondaryLabelColor];
    [(ReservationLabel *)v4->_subLabel setTextColor:v12];

    v4->_subtitleType = 0;
    [(ReservationLabel *)v4->_subLabel setNumberOfLines:3];
    v13 = [UIButton buttonWithType:1];
    accessoryButton = v4->_accessoryButton;
    v4->_accessoryButton = v13;

    font = [(ReservationLabel *)v4->_subLabel font];
    titleLabel = [(UIButton *)v4->_accessoryButton titleLabel];
    [titleLabel setFont:font];

    [(UIButton *)v4->_accessoryButton addTarget:v4 action:"accessoryButtonTapped:" forControlEvents:64];
    contentView = [(RestaurantReservationsConfirmationHeaderCell *)v4 contentView];
    [contentView addSubview:v4->_mainLabel];

    contentView2 = [(RestaurantReservationsConfirmationHeaderCell *)v4 contentView];
    [contentView2 addSubview:v4->_subLabel];

    contentView3 = [(RestaurantReservationsConfirmationHeaderCell *)v4 contentView];
    [contentView3 addSubview:v4->_accessoryButton];

    [(RestaurantReservationsConfirmationHeaderCell *)v4 initConstraints];
    [(RestaurantReservationsConfirmationHeaderCell *)v4 updateSubtitleLabel];
  }

  return v4;
}

@end