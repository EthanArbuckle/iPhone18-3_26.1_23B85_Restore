@interface PKPaletteTapToRadarCommandExecution
+ (PKPaletteTapToRadarCommandExecution)commandExecutionWithConfiguration:(id)a3;
- (PKPaletteTapToRadarCommandExecution)initWithConfiguration:(id)a3;
@end

@implementation PKPaletteTapToRadarCommandExecution

+ (PKPaletteTapToRadarCommandExecution)commandExecutionWithConfiguration:(id)a3
{
  v3 = a3;
  if (_UIApplicationIsExtension())
  {
    v4 = off_1E82D46C0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.ScreenshotServicesService"];

    v4 = off_1E82D46E0;
    if (v7)
    {
      v4 = off_1E82D46E8;
    }
  }

  v8 = [objc_alloc(*v4) initWithConfiguration:v3];

  return v8;
}

- (PKPaletteTapToRadarCommandExecution)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaletteTapToRadarCommandExecution;
  v6 = [(PKPaletteTapToRadarCommandExecution *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

@end