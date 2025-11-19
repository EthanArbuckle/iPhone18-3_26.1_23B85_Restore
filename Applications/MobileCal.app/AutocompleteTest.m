@interface AutocompleteTest
- (void)handleDidBeginAutocompleteSearchNotification:(id)a3;
- (void)handleDidShowAutocompleteResultsNotification:(id)a3;
- (void)runTest;
@end

@implementation AutocompleteTest

- (void)runTest
{
  v3 = [objc_opt_class() testName];
  v4 = [(ApplicationTest *)self application];
  v5 = [(ApplicationTest *)self options];
  v6 = [v5 objectForKeyedSubscript:@"testEventName"];

  [v4 rootNavigationController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013FBAC;
  v12 = v11[3] = &unk_10020F2B8;
  v13 = self;
  v14 = v4;
  v15 = v3;
  v16 = v6;
  v7 = v6;
  v8 = v3;
  v9 = v4;
  v10 = v12;
  [v10 showAddEventAnimated:0 completion:v11];
}

- (void)handleDidBeginAutocompleteSearchNotification:(id)a3
{
  v6 = [objc_opt_class() testName];
  v4 = [(ApplicationTest *)self application];
  [v4 finishedSubTest:@"SearchThrottleDelay" forTest:v6];

  v5 = [(ApplicationTest *)self application];
  [v5 startedSubTest:@"Search" forTest:v6];
}

- (void)handleDidShowAutocompleteResultsNotification:(id)a3
{
  v4 = [objc_opt_class() testName];
  v5 = [(ApplicationTest *)self application];
  [v5 finishedSubTest:@"Search" forTest:v4];

  v6 = [(ApplicationTest *)self application];
  [v6 startedSubTest:@"CellDisplay" forTest:v4];

  v7 = [(ApplicationTest *)self application];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013FE28;
  v9[3] = &unk_10020EC68;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 installCACommitCompletionBlock:v9];
}

@end