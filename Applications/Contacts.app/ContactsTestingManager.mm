@interface ContactsTestingManager
+ (id)contactToShowForLaunchTestWithStore:(id)store;
+ (id)defaultTestingManager;
- (BOOL)runTest:(id)test options:(id)options splitViewController:(id)controller;
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

- (BOOL)runTest:(id)test options:(id)options splitViewController:(id)controller
{
  testCopy = test;
  optionsCopy = options;
  controllerCopy = controller;
  currentTest = [(ContactsTestingManager *)self currentTest];
  [currentTest prepareForNextTest];

  [(ContactsTestingManager *)self setCurrentTest:0];
  v12 = [optionsCopy objectForKeyedSubscript:@"testClass"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [testCopy stringByAppendingString:@"Test"];
  }

  v15 = v14;

  v16 = [NSClassFromString(v15) testWithSplitViewController:controllerCopy];

  [(ContactsTestingManager *)self setCurrentTest:v16];
  v17 = [v16 prepareForTestWithOptions:optionsCopy];

  return v17;
}

+ (id)contactToShowForLaunchTestWithStore:(id)store
{
  storeCopy = store;
  v4 = CFPreferencesCopyValue(@"LaunchToCard", @"com.apple.PeoplePicker", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = CFPreferencesCopyValue(@"ContactToShow", @"com.apple.PeoplePicker", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    if (v6)
    {
      v7 = +[CNContactViewController descriptorForRequiredKeys];
      v11 = v7;
      v8 = [NSArray arrayWithObjects:&v11 count:1];
      v9 = [storeCopy unifiedContactWithIdentifier:v6 keysToFetch:v8 error:0];
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