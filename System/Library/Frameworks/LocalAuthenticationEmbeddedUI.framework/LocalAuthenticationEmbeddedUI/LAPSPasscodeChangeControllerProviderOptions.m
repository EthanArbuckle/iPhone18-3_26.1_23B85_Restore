@interface LAPSPasscodeChangeControllerProviderOptions
- (LAPSPasscodeChangeControllerProviderOptions)initWithParentVC:(id)a3;
@end

@implementation LAPSPasscodeChangeControllerProviderOptions

- (LAPSPasscodeChangeControllerProviderOptions)initWithParentVC:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeChangeControllerProviderOptions;
  v6 = [(LAPSPasscodeChangeControllerProviderOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentVC, a3);
    v7->_skipSuccessNotification = 1;
  }

  return v7;
}

@end