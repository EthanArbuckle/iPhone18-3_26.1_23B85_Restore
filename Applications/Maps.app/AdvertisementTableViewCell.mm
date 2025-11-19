@interface AdvertisementTableViewCell
- (AdvertisementTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setupConstraints;
@end

@implementation AdvertisementTableViewCell

- (void)setupConstraints
{
  [(UILabel *)self->_advertisementLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(AdvertisementTableViewCell *)self advertisementLabel];
  v4 = [v3 firstBaselineAnchor];
  v5 = [(AdvertisementTableViewCell *)self contentView];
  v6 = [v5 layoutMarginsGuide];
  v7 = [v6 topAnchor];
  v8 = [(AdvertisementTableViewCell *)self advertisementLabel];
  v9 = [v8 font];
  [v9 _mapkit_scaledValueForValue:18.0];
  v10 = [v4 constraintEqualToAnchor:v7 constant:?];

  v11 = [(AdvertisementTableViewCell *)self contentView];
  v12 = [v11 layoutMarginsGuide];
  v13 = [v12 leftAnchor];
  v14 = [(AdvertisementTableViewCell *)self advertisementLabel];
  v15 = [v14 leftAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];

  v17 = [(AdvertisementTableViewCell *)self contentView];
  v18 = [v17 layoutMarginsGuide];
  v19 = [v18 rightAnchor];
  v20 = [(AdvertisementTableViewCell *)self advertisementLabel];
  v21 = [v20 rightAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];

  v23 = [(AdvertisementTableViewCell *)self contentView];
  v24 = [v23 layoutMarginsGuide];
  v25 = [v24 bottomAnchor];
  v26 = [(AdvertisementTableViewCell *)self advertisementLabel];
  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintGreaterThanOrEqualToAnchor:v27];

  v29 = [(AdvertisementTableViewCell *)self contentView];
  v30 = [v29 heightAnchor];
  v31 = [v30 constraintGreaterThanOrEqualToConstant:200.0];

  v33[0] = v10;
  v33[1] = v16;
  v33[2] = v28;
  v33[3] = v22;
  v33[4] = v31;
  v32 = [NSArray arrayWithObjects:v33 count:5];
  [NSLayoutConstraint activateConstraints:v32];
}

- (AdvertisementTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = AdvertisementTableViewCell;
  v4 = [(AdvertisementTableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    advertisementLabel = v4->_advertisementLabel;
    v4->_advertisementLabel = v5;

    v7 = +[UIColor labelColor];
    [(UILabel *)v4->_advertisementLabel setTextColor:v7];

    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_advertisementLabel setFont:v8];

    [(UILabel *)v4->_advertisementLabel setNumberOfLines:0];
    [(UILabel *)v4->_advertisementLabel setContentMode:5];
    v9 = [(AdvertisementTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_advertisementLabel];

    [(AdvertisementTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end