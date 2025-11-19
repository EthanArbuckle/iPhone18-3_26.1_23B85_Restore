@interface PhonePlusRotationTest
- (id)checkTestPreconditions;
@end

@implementation PhonePlusRotationTest

- (id)checkTestPreconditions
{
  if (EKUIUseLargeFormatPhoneUI())
  {
    return 0;
  }

  else
  {
    return @"Test cannot be run on non-plus-sized phones";
  }
}

@end