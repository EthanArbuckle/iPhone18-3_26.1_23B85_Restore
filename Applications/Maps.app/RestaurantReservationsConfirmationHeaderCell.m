@interface RestaurantReservationsConfirmationHeaderCell
- (NSString)accessoryButtonTitle;
- (RestaurantReservationsConfirmationHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (RestaurantReservationsConfirmationHeaderCellDelegate)actionDelegate;
- (void)accessoryButtonTapped:(id)a3;
- (void)initConstraints;
- (void)reservationLabelDidLayout:(id)a3;
- (void)setAccessoryButtonTitle:(id)a3;
- (void)setAutomaticallyHidesChevron:(BOOL)a3;
- (void)setSubtitleType:(unint64_t)a3;
- (void)updateConstraints;
- (void)updateSubtitleLabel;
@end

@implementation RestaurantReservationsConfirmationHeaderCell

- (RestaurantReservationsConfirmationHeaderCellDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)setAutomaticallyHidesChevron:(BOOL)a3
{
  if (self->_automaticallyHidesChevron == !a3)
  {
    self->_automaticallyHidesChevron = a3;
    [(RestaurantReservationsConfirmationHeaderCell *)self setNeedsLayout];
  }
}

- (void)setAccessoryButtonTitle:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  [v5 setTitle:v4 forState:0];

  [(RestaurantReservationsConfirmationHeaderCell *)self setNeedsUpdateConstraints];
}

- (NSString)accessoryButtonTitle
{
  v2 = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  v3 = [v2 titleForState:0];

  return v3;
}

- (void)updateConstraints
{
  v5 = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  v6 = [v5 titleLabel];
  v7 = [v6 text];
  v8 = [v7 length];
  if (v8)
  {
    v2 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
    v3 = [v2 font];
    [v3 lineHeight];
    v10 = ceil(v9);
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [(RestaurantReservationsConfirmationHeaderCell *)self buttonBottomConstraint];
  [v11 setConstant:v10];

  if (v8)
  {
  }

  v12.receiver = self;
  v12.super_class = RestaurantReservationsConfirmationHeaderCell;
  [(RestaurantReservationsConfirmationHeaderCell *)&v12 updateConstraints];
}

- (void)accessoryButtonTapped:(id)a3
{
  v4 = [(RestaurantReservationsConfirmationHeaderCell *)self actionDelegate];
  [v4 reservationConfirmationHeaderCellAccessoryButtonWasTapped:self];
}

- (void)setSubtitleType:(unint64_t)a3
{
  if (self->_subtitleType != a3)
  {
    self->_subtitleType = a3;
    [(RestaurantReservationsConfirmationHeaderCell *)self updateSubtitleLabel];
  }
}

- (void)initConstraints
{
  [(UILabel *)self->_mainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ReservationLabel *)self->_subLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  v6 = [v5 layoutMarginsGuide];
  v7 = [v6 leadingAnchor];
  v58 = [v4 constraintEqualToAnchor:v7];

  v8 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  v11 = [v10 layoutMarginsGuide];
  v12 = [v11 trailingAnchor];
  v57 = [v9 constraintEqualToAnchor:v12];

  v13 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  v14 = [v13 topAnchor];
  v15 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  v16 = [v15 layoutMarginsGuide];
  v17 = [v16 topAnchor];
  v56 = [v14 constraintEqualToAnchor:v17 constant:10.0];

  v18 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  v19 = [v18 leadingAnchor];
  v20 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  v21 = [v20 leadingAnchor];
  v55 = [v19 constraintEqualToAnchor:v21];

  v22 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  v23 = [v22 trailingAnchor];
  v24 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  v25 = [v24 trailingAnchor];
  v54 = [v23 constraintEqualToAnchor:v25];

  v26 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  v27 = [v26 firstBaselineAnchor];
  v28 = [(RestaurantReservationsConfirmationHeaderCell *)self mainLabel];
  v29 = [v28 firstBaselineAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:20.0];
  [(RestaurantReservationsConfirmationHeaderCell *)self setMainToSublabelConstraint:v30];

  v31 = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  v32 = [v31 leadingAnchor];
  v33 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  v34 = [v33 layoutMarginsGuide];
  v35 = [v34 leadingAnchor];
  v53 = [v32 constraintEqualToAnchor:v35];

  v36 = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  v37 = [v36 firstBaselineAnchor];
  v38 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  v39 = [v38 lastBaselineAnchor];
  v40 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  v41 = [v40 font];
  [v41 lineHeight];
  v43 = [v37 constraintEqualToAnchor:v39 constant:ceil(v42)];
  [(RestaurantReservationsConfirmationHeaderCell *)self setButtonBottomConstraint:v43];

  v44 = [(RestaurantReservationsConfirmationHeaderCell *)self contentView];
  v45 = [v44 layoutMarginsGuide];
  v46 = [v45 bottomAnchor];
  v47 = [(RestaurantReservationsConfirmationHeaderCell *)self accessoryButton];
  v48 = [v47 lastBaselineAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];

  v59[0] = v58;
  v59[1] = v57;
  v59[2] = v56;
  v59[3] = v55;
  v59[4] = v54;
  v50 = [(RestaurantReservationsConfirmationHeaderCell *)self mainToSublabelConstraint];
  v59[5] = v50;
  v59[6] = v53;
  v51 = [(RestaurantReservationsConfirmationHeaderCell *)self buttonBottomConstraint];
  v59[7] = v51;
  v59[8] = v49;
  v52 = [NSArray arrayWithObjects:v59 count:9];
  [NSLayoutConstraint activateConstraints:v52];
}

- (void)updateSubtitleLabel
{
  v3 = [(RestaurantReservationsConfirmationHeaderCell *)self subtitleType];
  if (v3)
  {
    if (v3 != 1)
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
  v7 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  [v7 setFont:v6];

  v8 = [(RestaurantReservationsConfirmationHeaderCell *)self subLabel];
  v9 = [v8 font];
  [v9 _mapkit_scaledValueForValue:v4];
  v11 = v10;
  v12 = [(RestaurantReservationsConfirmationHeaderCell *)self mainToSublabelConstraint];
  [v12 setConstant:v11];

LABEL_6:

  [(RestaurantReservationsConfirmationHeaderCell *)self setNeedsLayout];
}

- (void)reservationLabelDidLayout:(id)a3
{
  if ([(RestaurantReservationsConfirmationHeaderCell *)self automaticallyHidesChevron]&& [(ReservationLabel *)self->_subLabel textFits])
  {
    v4 = self;
    v5 = 0;
  }

  else
  {
    if (![(RestaurantReservationsConfirmationHeaderCell *)self automaticallyHidesChevron])
    {
      return;
    }

    v4 = self;
    v5 = 1;
  }

  [(RestaurantReservationsConfirmationHeaderCell *)v4 setAccessoryType:v5];
}

- (RestaurantReservationsConfirmationHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v21.receiver = self;
  v21.super_class = RestaurantReservationsConfirmationHeaderCell;
  v4 = [(RestaurantReservationsConfirmationHeaderCell *)&v21 initWithStyle:a3 reuseIdentifier:a4];
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

    v15 = [(ReservationLabel *)v4->_subLabel font];
    v16 = [(UIButton *)v4->_accessoryButton titleLabel];
    [v16 setFont:v15];

    [(UIButton *)v4->_accessoryButton addTarget:v4 action:"accessoryButtonTapped:" forControlEvents:64];
    v17 = [(RestaurantReservationsConfirmationHeaderCell *)v4 contentView];
    [v17 addSubview:v4->_mainLabel];

    v18 = [(RestaurantReservationsConfirmationHeaderCell *)v4 contentView];
    [v18 addSubview:v4->_subLabel];

    v19 = [(RestaurantReservationsConfirmationHeaderCell *)v4 contentView];
    [v19 addSubview:v4->_accessoryButton];

    [(RestaurantReservationsConfirmationHeaderCell *)v4 initConstraints];
    [(RestaurantReservationsConfirmationHeaderCell *)v4 updateSubtitleLabel];
  }

  return v4;
}

@end