@interface COSSoftwareUpdateTitleCell
- (COSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier device:(id)device;
- (COSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier device:(id)device image:(id)image;
- (id)gearBackgroundImage;
- (id)newSoftwareUpdateAnimatedIconWithFrame:(CGRect)frame;
- (void)updateProgressTintColor;
@end

@implementation COSSoftwareUpdateTitleCell

- (COSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier device:(id)device
{
  objc_storeStrong(&self->_device, device);
  deviceCopy = device;
  specifierCopy = specifier;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = COSSoftwareUpdateTitleCell;
  v14 = [(COSSoftwareUpdateTitleCell *)&v16 initWithStyle:style reuseIdentifier:identifierCopy specifier:specifierCopy];

  return v14;
}

- (COSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier device:(id)device image:(id)image
{
  objc_storeStrong(&self->_device, device);
  deviceCopy = device;
  imageCopy = image;
  specifierCopy = specifier;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = COSSoftwareUpdateTitleCell;
  v17 = [(COSSoftwareUpdateTitleCell *)&v19 initWithStyle:style reuseIdentifier:identifierCopy specifier:specifierCopy updateIcon:imageCopy showLearnMore:0 delegate:0];

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
  image = [v5 image];

  return image;
}

- (id)newSoftwareUpdateAnimatedIconWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  progressBar = [(COSSoftwareUpdateTitleCell *)self progressBar];
  [progressBar setProgressTintColor:v4];
}

@end