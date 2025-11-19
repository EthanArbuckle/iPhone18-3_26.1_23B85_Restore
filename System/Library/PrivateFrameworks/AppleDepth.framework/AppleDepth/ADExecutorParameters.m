@interface ADExecutorParameters
- (ADExecutorParameters)init;
- (id)initForDevice:(id)a3;
@end

@implementation ADExecutorParameters

- (ADExecutorParameters)init
{
  v3 = +[ADDeviceConfiguration getDeviceName];
  v4 = [(ADExecutorParameters *)self initForDevice:v3];

  return v4;
}

- (id)initForDevice:(id)a3
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
    v7 = [v6 lowercaseString];

    if ([v7 hasPrefix:@"ad"])
    {
      v8 = [v7 substringFromIndex:2];

      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = [v9 stringByReplacingOccurrencesOfString:@"parameters" withString:&stru_285231EA0];

    v11 = [ADLogManager defaultLoggerWithName:v10];
    v12 = v4[2];
    v4[2] = v11;
  }

  return v4;
}

@end