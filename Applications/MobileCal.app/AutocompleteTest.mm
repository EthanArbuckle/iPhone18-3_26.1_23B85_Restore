@interface AutocompleteTest
- (void)handleDidBeginAutocompleteSearchNotification:(id)notification;
- (void)handleDidShowAutocompleteResultsNotification:(id)notification;
- (void)runTest;
@end

@implementation AutocompleteTest

- (void)runTest
{
  testName = [objc_opt_class() testName];
  application = [(ApplicationTest *)self application];
  options = [(ApplicationTest *)self options];
  v6 = [options objectForKeyedSubscript:@"testEventName"];

  [application rootNavigationController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013FBAC;
  v12 = v11[3] = &unk_10020F2B8;
  selfCopy = self;
  v14 = application;
  v15 = testName;
  v16 = v6;
  v7 = v6;
  v8 = testName;
  v9 = application;
  v10 = v12;
  [v10 showAddEventAnimated:0 completion:v11];
}

- (void)handleDidBeginAutocompleteSearchNotification:(id)notification
{
  testName = [objc_opt_class() testName];
  application = [(ApplicationTest *)self application];
  [application finishedSubTest:@"SearchThrottleDelay" forTest:testName];

  application2 = [(ApplicationTest *)self application];
  [application2 startedSubTest:@"Search" forTest:testName];
}

- (void)handleDidShowAutocompleteResultsNotification:(id)notification
{
  testName = [objc_opt_class() testName];
  application = [(ApplicationTest *)self application];
  [application finishedSubTest:@"Search" forTest:testName];

  application2 = [(ApplicationTest *)self application];
  [application2 startedSubTest:@"CellDisplay" forTest:testName];

  application3 = [(ApplicationTest *)self application];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013FE28;
  v9[3] = &unk_10020EC68;
  v9[4] = self;
  v10 = testName;
  v8 = testName;
  [application3 installCACommitCompletionBlock:v9];
}

@end