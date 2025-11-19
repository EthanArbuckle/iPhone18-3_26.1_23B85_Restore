@interface UIViewController
- (BOOL)runTest:(id)a3 options:(id)a4;
- (void)finishSwitchTestIfNeeded;
- (void)willStartTest:(id)a3;
@end

@implementation UIViewController

- (void)willStartTest:(id)a3
{
  v3 = a3;
  if (([v3 hasPrefix:@"ColdSwitch"] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"WarmSwitch"))
  {
    [UIApp startedTest:v3];
  }
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v5 = a3;
  if (([v5 hasPrefix:@"ColdSwitch"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"WarmSwitch"))
  {
    objc_storeStrong(&__CurrentTestName_0, a3);
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

    v8 = [UIApp rootViewController];
    v9 = [v8 baseViewController];
    if (objc_opt_respondsToSelector())
    {
      [v9 switchToTab:v6];
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