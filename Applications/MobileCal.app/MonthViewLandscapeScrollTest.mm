@interface MonthViewLandscapeScrollTest
- (id)checkTestPreconditions;
- (void)runTest;
@end

@implementation MonthViewLandscapeScrollTest

- (id)checkTestPreconditions
{
  v2 = EKUICurrentWindowInterfaceParadigm();
  result = 0;
  if (v2 != 16)
  {
    if (EKUIUseLargeFormatPhoneUI())
    {
      return 0;
    }

    else
    {
      return @"Test cannot be run on devices with compact width in landscape";
    }
  }

  return result;
}

- (void)runTest
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000DDE98;
  v2[3] = &unk_10020EB98;
  v2[4] = self;
  [UIApp rotateIfNeeded:3 completion:v2];
}

@end