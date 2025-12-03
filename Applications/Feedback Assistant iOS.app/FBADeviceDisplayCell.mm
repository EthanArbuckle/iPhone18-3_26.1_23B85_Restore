@interface FBADeviceDisplayCell
+ (id)reuseIdentifier;
- (UIImageView)deviceIcon;
- (double)spaceFromSuperViewToLabel;
- (void)awakeFromNib;
- (void)configureSelected:(BOOL)selected;
- (void)layoutSubviews;
- (void)updateNumberOfLines;
- (void)updateWithDevice:(id)device;
@end

@implementation FBADeviceDisplayCell

- (double)spaceFromSuperViewToLabel
{
  nameLabel = [(FBADeviceDisplayCell *)self nameLabel];
  [nameLabel frame];
  v4 = v3;

  return v4;
}

- (void)awakeFromNib
{
  v9.receiver = self;
  v9.super_class = FBADeviceDisplayCell;
  [(FBADeviceDisplayCell *)&v9 awakeFromNib];
  nameLabel = [(FBADeviceDisplayCell *)self nameLabel];
  [nameLabel setText:&stru_1000E2210];

  v4 = +[UIColor labelColor];
  nameLabel2 = [(FBADeviceDisplayCell *)self nameLabel];
  [nameLabel2 setTextColor:v4];

  typeLabel = [(FBADeviceDisplayCell *)self typeLabel];
  [typeLabel setText:&stru_1000E2210];

  v7 = +[UIColor secondaryLabelColor];
  typeLabel2 = [(FBADeviceDisplayCell *)self typeLabel];
  [typeLabel2 setTextColor:v7];

  [(FBADeviceDisplayCell *)self setSelectionStyle:0];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)updateWithDevice:(id)device
{
  deviceCopy = device;
  displayName = [deviceCopy displayName];
  nameLabel = [(FBADeviceDisplayCell *)self nameLabel];
  [nameLabel setText:displayName];

  displayType = [deviceCopy displayType];
  typeLabel = [(FBADeviceDisplayCell *)self typeLabel];
  [typeLabel setText:displayType];

  v9 = +[UIScreen mainScreen];
  [v9 scale];
  *&v10 = v10;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D390;
  v11[3] = &unk_1000DEFF0;
  v11[4] = self;
  [deviceCopy fetchIconImageDataForScale:v11 completionCompletion:v10];

  [(FBADeviceDisplayCell *)self updateNumberOfLines];
}

- (void)configureSelected:(BOOL)selected
{
  if (selected)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(FBADeviceDisplayCell *)self setAccessoryType:v3];
}

- (void)updateNumberOfLines
{
  traitCollection = [(FBADeviceDisplayCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  nameLabel = [(FBADeviceDisplayCell *)self nameLabel];
  [nameLabel setNumberOfLines:!IsAccessibilityCategory];

  typeLabel = [(FBADeviceDisplayCell *)self typeLabel];
  [typeLabel setNumberOfLines:!IsAccessibilityCategory];
}

- (void)layoutSubviews
{
  [(FBADeviceDisplayCell *)self updateNumberOfLines];
  v3.receiver = self;
  v3.super_class = FBADeviceDisplayCell;
  [(FBADeviceDisplayCell *)&v3 layoutSubviews];
}

- (UIImageView)deviceIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceIcon);

  return WeakRetained;
}

@end