@interface COSSoftwareUpdateTitleCell
- (COSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5 device:(id)a6;
- (COSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5 device:(id)a6 image:(id)a7;
- (id)gearBackgroundImage;
- (id)newSoftwareUpdateAnimatedIconWithFrame:(CGRect)a3;
- (void)updateProgressTintColor;
@end

@implementation COSSoftwareUpdateTitleCell

- (COSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5 device:(id)a6
{
  objc_storeStrong(&self->_device, a6);
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v16.receiver = self;
  v16.super_class = COSSoftwareUpdateTitleCell;
  v14 = [(COSSoftwareUpdateTitleCell *)&v16 initWithStyle:a3 reuseIdentifier:v13 specifier:v12];

  return v14;
}

- (COSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5 device:(id)a6 image:(id)a7
{
  objc_storeStrong(&self->_device, a6);
  v13 = a6;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v19.receiver = self;
  v19.super_class = COSSoftwareUpdateTitleCell;
  v17 = [(COSSoftwareUpdateTitleCell *)&v19 initWithStyle:a3 reuseIdentifier:v16 specifier:v15 updateIcon:v14 showLearnMore:0 delegate:0];

  return v17;
}

- (id)gearBackgroundImage
{
  v3 = +[PBBridgeWatchAttributeController sharedDeviceController];
  [v3 setDevice:self->_device];

  v4 = 0;
  if (BPSIsDeviceCompatibleWithVersions())
  {
    v4 = @"-v8";
  }

  v5 = [[BPSWatchView alloc] initWithStyle:8 andVersionModifier:v4];
  v6 = [v5 image];

  return v6;
}

- (id)newSoftwareUpdateAnimatedIconWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [COSSoftwareUpdateAnimatedIcon alloc];

  return [(COSSoftwareUpdateAnimatedIcon *)v7 initWithFrame:x, y, width, height];
}

- (void)updateProgressTintColor
{
  if ([(COSSoftwareUpdateTitleCell *)self progressDisplayStyle]== 1)
  {
    BPSProgressBarTintColor();
  }

  else
  {
    BPSProgressBarStalledTintColor();
  }
  v4 = ;
  v3 = [(COSSoftwareUpdateTitleCell *)self progressBar];
  [v3 setProgressTintColor:v4];
}

@end