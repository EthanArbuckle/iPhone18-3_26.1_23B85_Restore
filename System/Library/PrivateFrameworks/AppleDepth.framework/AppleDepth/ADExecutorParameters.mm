@interface ADExecutorParameters
- (ADExecutorParameters)init;
- (id)initForDevice:(id)device;
@end

@implementation ADExecutorParameters

- (ADExecutorParameters)init
{
  v3 = +[ADDeviceConfiguration getDeviceName];
  v4 = [(ADExecutorParameters *)self initForDevice:v3];

  return v4;
}

- (id)initForDevice:(id)device
{
  v14.receiver = self;
  v14.super_class = ADExecutorParameters;
  v3 = [(ADExecutorParameters *)&v14 init];
  v4 = v3;
  if (v3)
  {
    *(v3 + 24) = xmmword_240406F70;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    lowercaseString = [v6 lowercaseString];

    if ([lowercaseString hasPrefix:@"ad"])
    {
      v8 = [lowercaseString substringFromIndex:2];

      v9 = v8;
    }

    else
    {
      v9 = lowercaseString;
    }

    v10 = [v9 stringByReplacingOccurrencesOfString:@"parameters" withString:&stru_285231EA0];

    v11 = [ADLogManager defaultLoggerWithName:v10];
    v12 = v4[2];
    v4[2] = v11;
  }

  return v4;
}

@end