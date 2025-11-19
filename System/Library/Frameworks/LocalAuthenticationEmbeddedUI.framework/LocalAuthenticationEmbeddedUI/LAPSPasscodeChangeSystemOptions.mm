@interface LAPSPasscodeChangeSystemOptions
- (LAPSPasscodeChangeSystemOptions)init;
@end

@implementation LAPSPasscodeChangeSystemOptions

- (LAPSPasscodeChangeSystemOptions)init
{
  v3.receiver = self;
  v3.super_class = LAPSPasscodeChangeSystemOptions;
  result = [(LAPSPasscodeChangeSystemOptions *)&v3 init];
  if (result)
  {
    result->_skipSuccessNotification = 1;
  }

  return result;
}

@end