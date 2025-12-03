@interface DADeviceConnectionConfigurator
+ (DADeviceConnectionConfigurator)sharedInstance;
- (int)mode;
- (void)overrideSessionModeWithMode:(int)mode;
@end

@implementation DADeviceConnectionConfigurator

+ (DADeviceConnectionConfigurator)sharedInstance
{
  if (qword_100202DD8 != -1)
  {
    sub_100159434();
  }

  v3 = qword_100202DD0;

  return v3;
}

- (int)mode
{
  if ([(DADeviceConnectionConfigurator *)self isSessionModeOveridden])
  {

    return [(DADeviceConnectionConfigurator *)self overrideSessionMode];
  }

  else if (+[CBSUtilities isSSRBootIntentSet])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)overrideSessionModeWithMode:(int)mode
{
  v3 = *&mode;
  [(DADeviceConnectionConfigurator *)self setIsSessionModeOveridden:1];

  [(DADeviceConnectionConfigurator *)self setOverrideSessionMode:v3];
}

@end