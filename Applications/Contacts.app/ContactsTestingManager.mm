@interface ContactsTestingManager
+ (id)contactToShowForLaunchTestWithStore:(id)a3;
+ (id)defaultTestingManager;
- (BOOL)runTest:(id)a3 options:(id)a4 splitViewController:(id)a5;
@end

@implementation ContactsTestingManager

+ (id)defaultTestingManager
{
  if (qword_1000292D8 != -1)
  {
    sub_10000F6B4();
  }

  v3 = qword_1000292D0;

  return v3;
}

- (BOOL)runTest:(id)a3 options:(id)a4 splitViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ContactsTestingManager *)self currentTest];
  [v11 prepareForNextTest];

  [(ContactsTestingManager *)self setCurrentTest:0];
  v12 = [v9 objectForKeyedSubscript:@"testClass"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v8 stringByAppendingString:@"Test"];
  }

  v15 = v14;

  v16 = [NSClassFromString(v15) testWithSplitViewController:v10];

  [(ContactsTestingManager *)self setCurrentTest:v16];
  v17 = [v16 prepareForTestWithOptions:v9];

  return v17;
}

+ (id)contactToShowForLaunchTestWithStore:(id)a3
{
  v3 = a3;
  v4 = CFPreferencesCopyValue(@"LaunchToCard", @"com.apple.PeoplePicker", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = CFPreferencesCopyValue(@"ContactToShow", @"com.apple.PeoplePicker", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    if (v6)
    {
      v7 = +[CNContactViewController descriptorForRequiredKeys];
      v11 = v7;
      v8 = [NSArray arrayWithObjects:&v11 count:1];
      v9 = [v3 unifiedContactWithIdentifier:v6 keysToFetch:v8 error:0];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end