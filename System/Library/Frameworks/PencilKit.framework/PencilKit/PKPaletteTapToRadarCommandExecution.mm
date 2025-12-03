@interface PKPaletteTapToRadarCommandExecution
+ (PKPaletteTapToRadarCommandExecution)commandExecutionWithConfiguration:(id)configuration;
- (PKPaletteTapToRadarCommandExecution)initWithConfiguration:(id)configuration;
@end

@implementation PKPaletteTapToRadarCommandExecution

+ (PKPaletteTapToRadarCommandExecution)commandExecutionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (_UIApplicationIsExtension())
  {
    v4 = off_1E82D46C0;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

    v4 = off_1E82D46E0;
    if (v7)
    {
      v4 = off_1E82D46E8;
    }
  }

  v8 = [objc_alloc(*v4) initWithConfiguration:configurationCopy];

  return v8;
}

- (PKPaletteTapToRadarCommandExecution)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PKPaletteTapToRadarCommandExecution;
  v6 = [(PKPaletteTapToRadarCommandExecution *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

@end