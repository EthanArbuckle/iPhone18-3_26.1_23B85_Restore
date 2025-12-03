@interface PadApplicationTester
- (id)extendedLaunchTestName;
@end

@implementation PadApplicationTester

- (id)extendedLaunchTestName
{
  v2 = +[CUIKPreferences sharedPreferences];
  lastViewMode = [v2 lastViewMode];
  integerValue = [lastViewMode integerValue];

  v5 = 3;
  if (integerValue != -1)
  {
    v5 = integerValue;
  }

  if (v5 < 4)
  {
    return qword_100211D08[v5];
  }

  v7 = kCalUILogTestHandle;
  if (os_log_type_enabled(kCalUILogTestHandle, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unknown view type encountered while trying to determine 'extendedLaunchTestName'", v8, 2u);
  }

  return 0;
}

@end