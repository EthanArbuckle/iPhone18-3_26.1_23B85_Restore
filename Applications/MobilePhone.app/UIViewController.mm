@interface UIViewController
- (BOOL)runTest:(id)test options:(id)options;
- (void)finishSwitchTestIfNeeded;
- (void)willStartTest:(id)test;
@end

@implementation UIViewController

- (void)willStartTest:(id)test
{
  testCopy = test;
  if (([testCopy hasPrefix:@"ColdSwitch"] & 1) != 0 || objc_msgSend(testCopy, "hasPrefix:", @"WarmSwitch"))
  {
    [UIApp startedTest:testCopy];
  }
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  if (([testCopy hasPrefix:@"ColdSwitch"] & 1) != 0 || objc_msgSend(testCopy, "hasPrefix:", @"WarmSwitch"))
  {
    objc_storeStrong(&__CurrentTestName_0, test);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = 4;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v6 = 5;
            }

            else
            {
              v6 = 0;
            }
          }
        }
      }
    }

    rootViewController = [UIApp rootViewController];
    baseViewController = [rootViewController baseViewController];
    if (objc_opt_respondsToSelector())
    {
      [baseViewController switchToTab:v6];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)finishSwitchTestIfNeeded
{
  if (__CurrentTestName_0)
  {
    [UIApp finishedTest:__CurrentTestName_0 extraResults:0];
    v2 = __CurrentTestName_0;
    __CurrentTestName_0 = 0;
  }
}

@end