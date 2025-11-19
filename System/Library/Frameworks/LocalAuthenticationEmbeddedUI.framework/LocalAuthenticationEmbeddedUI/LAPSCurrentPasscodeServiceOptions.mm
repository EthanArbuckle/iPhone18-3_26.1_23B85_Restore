@interface LAPSCurrentPasscodeServiceOptions
- (LAPSCurrentPasscodeServiceOptions)init;
@end

@implementation LAPSCurrentPasscodeServiceOptions

- (LAPSCurrentPasscodeServiceOptions)init
{
  v3.receiver = self;
  v3.super_class = LAPSCurrentPasscodeServiceOptions;
  result = [(LAPSCurrentPasscodeServiceOptions *)&v3 init];
  if (result)
  {
    result->_skipSuccessNotification = 1;
  }

  return result;
}

@end