@interface PHContactsTableViewCell
- (PHContactsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (TUFeatureFlags)featureFlags;
- (void)setUpBlurredBackground;
@end

@implementation PHContactsTableViewCell

- (PHContactsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PHContactsTableViewCell;
  v4 = [(PHTableViewCell *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(PHContactsTableViewCell *)v4 setUpBlurredBackground];
  return v4;
}

- (TUFeatureFlags)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(TUFeatureFlags);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

- (void)setUpBlurredBackground
{
  v6 = +[UIBackgroundConfiguration listCellConfiguration];
  v3 = +[UIColor whiteColor];
  [v6 setBackgroundColor:v3];

  v4 = [UIBlurEffect effectWithStyle:1200];
  v5 = [UIVibrancyEffect effectForBlurEffect:v4 style:6];
  [v6 setVisualEffect:v5];

  [(PHContactsTableViewCell *)self setBackgroundConfiguration:v6];
}

@end