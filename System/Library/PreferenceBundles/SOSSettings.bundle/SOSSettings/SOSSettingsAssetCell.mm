@interface SOSSettingsAssetCell
- (SOSSettingsAssetCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setUpConstraints;
@end

@implementation SOSSettingsAssetCell

- (SOSSettingsAssetCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = SOSSettingsAssetCell;
  v5 = [(SOSSettingsAssetCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = objc_alloc_init(UIView);
    assetView = v5->assetView;
    v5->assetView = v6;

    [(SOSSettingsAssetCell *)v5 setUpConstraints];
  }

  return v5;
}

- (void)setUpConstraints
{
  [(UIView *)self->assetView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(SOSSettingsAssetCell *)self contentView];
  [contentView addSubview:self->assetView];

  assetView = self->assetView;
  if (assetView)
  {
    centerYAnchor = [(UIView *)assetView centerYAnchor];
    contentView2 = [(SOSSettingsAssetCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v8 setActive:1];

    centerXAnchor = [(UIView *)self->assetView centerXAnchor];
    contentView3 = [(SOSSettingsAssetCell *)self contentView];
    centerXAnchor2 = [contentView3 centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v12 setActive:1];

    heightAnchor = [(UIView *)self->assetView heightAnchor];
    [(UIView *)self->assetView frame];
    v15 = v14;
    v16 = +[UIScreen mainScreen];
    [v16 scale];
    v18 = [heightAnchor constraintEqualToConstant:v15 * v17];
    [v18 setActive:1];

    widthAnchor = [(UIView *)self->assetView widthAnchor];
    [(UIView *)self->assetView frame];
    v20 = v19;
    v21 = +[UIScreen mainScreen];
    [v21 scale];
    v23 = [widthAnchor constraintEqualToConstant:v20 * v22];
    [v23 setActive:1];
  }
}

@end