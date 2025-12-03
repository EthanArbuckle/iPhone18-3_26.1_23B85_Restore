@interface AdvertisementTableViewCell
- (AdvertisementTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupConstraints;
@end

@implementation AdvertisementTableViewCell

- (void)setupConstraints
{
  [(UILabel *)self->_advertisementLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  advertisementLabel = [(AdvertisementTableViewCell *)self advertisementLabel];
  firstBaselineAnchor = [advertisementLabel firstBaselineAnchor];
  contentView = [(AdvertisementTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide topAnchor];
  advertisementLabel2 = [(AdvertisementTableViewCell *)self advertisementLabel];
  font = [advertisementLabel2 font];
  [font _mapkit_scaledValueForValue:18.0];
  v10 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];

  contentView2 = [(AdvertisementTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  leftAnchor = [layoutMarginsGuide2 leftAnchor];
  advertisementLabel3 = [(AdvertisementTableViewCell *)self advertisementLabel];
  leftAnchor2 = [advertisementLabel3 leftAnchor];
  v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

  contentView3 = [(AdvertisementTableViewCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  rightAnchor = [layoutMarginsGuide3 rightAnchor];
  advertisementLabel4 = [(AdvertisementTableViewCell *)self advertisementLabel];
  rightAnchor2 = [advertisementLabel4 rightAnchor];
  v22 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

  contentView4 = [(AdvertisementTableViewCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide4 bottomAnchor];
  advertisementLabel5 = [(AdvertisementTableViewCell *)self advertisementLabel];
  bottomAnchor2 = [advertisementLabel5 bottomAnchor];
  v28 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];

  contentView5 = [(AdvertisementTableViewCell *)self contentView];
  heightAnchor = [contentView5 heightAnchor];
  v31 = [heightAnchor constraintGreaterThanOrEqualToConstant:200.0];

  v33[0] = v10;
  v33[1] = v16;
  v33[2] = v28;
  v33[3] = v22;
  v33[4] = v31;
  v32 = [NSArray arrayWithObjects:v33 count:5];
  [NSLayoutConstraint activateConstraints:v32];
}

- (AdvertisementTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = AdvertisementTableViewCell;
  v4 = [(AdvertisementTableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
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
    contentView = [(AdvertisementTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_advertisementLabel];

    [(AdvertisementTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end