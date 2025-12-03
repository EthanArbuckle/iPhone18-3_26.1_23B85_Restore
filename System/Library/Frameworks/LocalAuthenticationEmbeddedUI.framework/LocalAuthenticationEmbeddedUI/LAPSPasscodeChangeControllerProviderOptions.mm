@interface LAPSPasscodeChangeControllerProviderOptions
- (LAPSPasscodeChangeControllerProviderOptions)initWithParentVC:(id)c;
@end

@implementation LAPSPasscodeChangeControllerProviderOptions

- (LAPSPasscodeChangeControllerProviderOptions)initWithParentVC:(id)c
{
  cCopy = c;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeChangeControllerProviderOptions;
  v6 = [(LAPSPasscodeChangeControllerProviderOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentVC, c);
    v7->_skipSuccessNotification = 1;
  }

  return v7;
}

@end