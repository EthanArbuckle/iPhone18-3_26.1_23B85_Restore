@interface SOSSettingsAssetCell
- (SOSSettingsAssetCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setUpConstraints;
@end

@implementation SOSSettingsAssetCell

- (SOSSettingsAssetCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = SOSSettingsAssetCell;
  v5 = [(SOSSettingsAssetCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
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
  v3 = [(SOSSettingsAssetCell *)self contentView];
  [v3 addSubview:self->assetView];

  assetView = self->assetView;
  if (assetView)
  {
    v5 = [(UIView *)assetView centerYAnchor];
    v6 = [(SOSSettingsAssetCell *)self contentView];
    v7 = [v6 centerYAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    [v8 setActive:1];

    v9 = [(UIView *)self->assetView centerXAnchor];
    v10 = [(SOSSettingsAssetCell *)self contentView];
    v11 = [v10 centerXAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [(UIView *)self->assetView heightAnchor];
    [(UIView *)self->assetView frame];
    v15 = v14;
    v16 = +[UIScreen mainScreen];
    [v16 scale];
    v18 = [v13 constraintEqualToConstant:v15 * v17];
    [v18 setActive:1];

    v24 = [(UIView *)self->assetView widthAnchor];
    [(UIView *)self->assetView frame];
    v20 = v19;
    v21 = +[UIScreen mainScreen];
    [v21 scale];
    v23 = [v24 constraintEqualToConstant:v20 * v22];
    [v23 setActive:1];
  }
}

@end