@interface PhoneApplicationTester
- (id)extendedLaunchTestName;
@end

@implementation PhoneApplicationTester

- (id)extendedLaunchTestName
{
  v2 = +[CUIKPreferences sharedPreferences];
  v3 = [v2 lastViewMode];
  v4 = [v3 integerValue];

  v5 = 3;
  if (v4 != -1)
  {
    v5 = v4;
  }

  if (v5 < 4)
  {
    return qword_1002124E8[v5];
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