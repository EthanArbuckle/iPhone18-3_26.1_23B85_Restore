@interface RestaurantReservationSectionHeaderTableViewCell
- (BOOL)hidesHairline;
- (NSString)text;
- (RestaurantReservationSectionHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIColor)textColor;
- (UIFont)font;
- (void)initConstraints;
- (void)setFont:(id)a3;
- (void)setHidesHairline:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)updateTheme;
@end

@implementation RestaurantReservationSectionHeaderTableViewCell

- (UIFont)font
{
  v2 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  [v5 setFont:v4];
}

- (BOOL)hidesHairline
{
  v2 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setHidesHairline:(BOOL)a3
{
  v3 = a3;
  v4 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  [v4 setHidden:v3];
}

- (NSString)text
{
  v2 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v5 = [a3 localizedUppercaseString];
  v4 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  [v4 setText:v5];
}

- (UIColor)textColor
{
  v2 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  [v5 setTextColor:v4];
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = RestaurantReservationSectionHeaderTableViewCell;
  [(MapsThemeTableViewCell *)&v6 updateTheme];
  v3 = [(RestaurantReservationSectionHeaderTableViewCell *)self theme];
  v4 = [v3 hairlineColor];
  v5 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  [v5 setHairlineColor:v4];
}

- (void)initConstraints
{
  v3 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v50 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  v49 = [v50 layoutMarginsGuide];
  v47 = [v49 leadingAnchor];
  v48 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  v46 = [v48 leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v51[0] = v45;
  v44 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  v42 = [v44 trailingAnchor];
  v43 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  v41 = [v43 trailingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v51[1] = v40;
  v39 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  v37 = [v39 topAnchor];
  v38 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  v36 = [v38 topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v51[2] = v35;
  v34 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  v32 = [v34 bottomAnchor];
  v33 = [(RestaurantReservationSectionHeaderTableViewCell *)self hairlineContainer];
  v31 = [v33 bottomAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v51[3] = v30;
  v29 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  v28 = [v29 layoutMarginsGuide];
  v26 = [v28 leadingAnchor];
  v27 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v51[4] = v24;
  v23 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  v22 = [v23 layoutMarginsGuide];
  v20 = [v22 trailingAnchor];
  v21 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  v19 = [v21 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v51[5] = v18;
  v17 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  v15 = [v17 firstBaselineAnchor];
  v16 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  v5 = [v16 topAnchor];
  v6 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  v7 = [v6 font];
  [v7 _mapkit_scaledValueForValue:26.0];
  v8 = [v15 constraintEqualToAnchor:v5 constant:?];
  v51[6] = v8;
  v9 = [(RestaurantReservationSectionHeaderTableViewCell *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [(RestaurantReservationSectionHeaderTableViewCell *)self headerLabel];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v51[7] = v13;
  v14 = [NSArray arrayWithObjects:v51 count:8];
  [NSLayoutConstraint activateConstraints:v14];
}

- (RestaurantReservationSectionHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v20.receiver = self;
  v20.super_class = RestaurantReservationSectionHeaderTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v20 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MKViewWithHairline);
    [(RestaurantReservationSectionHeaderTableViewCell *)v4 setHairlineContainer:v5];

    v6 = objc_alloc_init(UILabel);
    [(RestaurantReservationSectionHeaderTableViewCell *)v4 setHeaderLabel:v6];

    v7 = +[UIColor labelColor];
    v8 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [v8 setTextColor:v7];

    v9 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [v9 setTextAlignment:0];

    v10 = +[UIColor clearColor];
    v11 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [v11 setBackgroundColor:v10];

    v12 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [v12 setNumberOfLines:1];

    v13 = +[UIFont system15];
    v14 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [v14 setFont:v13];

    v15 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 contentView];
    v16 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 hairlineContainer];
    [v15 addSubview:v16];

    v17 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 contentView];
    v18 = [(RestaurantReservationSectionHeaderTableViewCell *)v4 headerLabel];
    [v17 addSubview:v18];

    [(RestaurantReservationSectionHeaderTableViewCell *)v4 initConstraints];
  }

  return v4;
}

@end