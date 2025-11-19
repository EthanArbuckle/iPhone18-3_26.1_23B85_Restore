@interface ColorOptions
+ (id)colorOptionsWithStarting:(id)a3 success:(id)a4 failed:(id)a5;
- (ColorOptions)init;
- (ColorOptions)initWithStarting:(id)a3 success:(id)a4 failed:(id)a5;
@end

@implementation ColorOptions

+ (id)colorOptionsWithStarting:(id)a3 success:(id)a4 failed:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithStarting:v10 success:v9 failed:v8];

  return v11;
}

- (ColorOptions)initWithStarting:(id)a3 success:(id)a4 failed:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ColorOptions;
  v12 = [(ColorOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_starting, a3);
    objc_storeStrong(&v13->_success, a4);
    objc_storeStrong(&v13->_failed, a5);
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