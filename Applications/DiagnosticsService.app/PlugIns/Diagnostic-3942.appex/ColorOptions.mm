@interface ColorOptions
+ (id)colorOptionsWithStarting:(id)starting success:(id)success failed:(id)failed;
- (ColorOptions)init;
- (ColorOptions)initWithStarting:(id)starting success:(id)success failed:(id)failed;
@end

@implementation ColorOptions

+ (id)colorOptionsWithStarting:(id)starting success:(id)success failed:(id)failed
{
  failedCopy = failed;
  successCopy = success;
  startingCopy = starting;
  v11 = [[self alloc] initWithStarting:startingCopy success:successCopy failed:failedCopy];

  return v11;
}

- (ColorOptions)initWithStarting:(id)starting success:(id)success failed:(id)failed
{
  startingCopy = starting;
  successCopy = success;
  failedCopy = failed;
  v15.receiver = self;
  v15.super_class = ColorOptions;
  v12 = [(ColorOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_starting, starting);
    objc_storeStrong(&v13->_success, success);
    objc_storeStrong(&v13->_failed, failed);
  }

  return v13;
}

- (ColorOptions)init
{
  v3 = [UIColor colorWithHexValue:@"2094FA" error:0];
  v4 = [UIColor colorWithHexValue:@"04DE71" error:0];
  v5 = [UIColor colorWithHexValue:@"FF3B30" error:0];
  v6 = [(ColorOptions *)self initWithStarting:v3 success:v4 failed:v5];

  return v6;
}

@end