@interface FBADeviceDisplayCell
+ (id)reuseIdentifier;
- (UIImageView)deviceIcon;
- (double)spaceFromSuperViewToLabel;
- (void)awakeFromNib;
- (void)configureSelected:(BOOL)a3;
- (void)layoutSubviews;
- (void)updateNumberOfLines;
- (void)updateWithDevice:(id)a3;
@end

@implementation FBADeviceDisplayCell

- (double)spaceFromSuperViewToLabel
{
  v2 = [(FBADeviceDisplayCell *)self nameLabel];
  [v2 frame];
  v4 = v3;

  return v4;
}

- (void)awakeFromNib
{
  v9.receiver = self;
  v9.super_class = FBADeviceDisplayCell;
  [(FBADeviceDisplayCell *)&v9 awakeFromNib];
  v3 = [(FBADeviceDisplayCell *)self nameLabel];
  [v3 setText:&stru_1000E2210];

  v4 = +[UIColor labelColor];
  v5 = [(FBADeviceDisplayCell *)self nameLabel];
  [v5 setTextColor:v4];

  v6 = [(FBADeviceDisplayCell *)self typeLabel];
  [v6 setText:&stru_1000E2210];

  v7 = +[UIColor secondaryLabelColor];
  v8 = [(FBADeviceDisplayCell *)self typeLabel];
  [v8 setTextColor:v7];

  [(FBADeviceDisplayCell *)self setSelectionStyle:0];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)updateWithDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 displayName];
  v6 = [(FBADeviceDisplayCell *)self nameLabel];
  [v6 setText:v5];

  v7 = [v4 displayType];
  v8 = [(FBADeviceDisplayCell *)self typeLabel];
  [v8 setText:v7];

  v9 = +[UIScreen mainScreen];
  [v9 scale];
  *&v10 = v10;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D390;
  v11[3] = &unk_1000DEFF0;
  v11[4] = self;
  [v4 fetchIconImageDataForScale:v11 completionCompletion:v10];

  [(FBADeviceDisplayCell *)self updateNumberOfLines];
}

- (void)configureSelected:(BOOL)a3
{
  if (a3)
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
  v3 = [(FBADeviceDisplayCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v6 = [(FBADeviceDisplayCell *)self nameLabel];
  [v6 setNumberOfLines:!IsAccessibilityCategory];

  v7 = [(FBADeviceDisplayCell *)self typeLabel];
  [v7 setNumberOfLines:!IsAccessibilityCategory];
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