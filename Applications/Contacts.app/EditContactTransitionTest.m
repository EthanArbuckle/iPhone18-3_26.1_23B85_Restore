@interface EditContactTransitionTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)measureEditingTransitionOnController:(id)a3;
- (void)showNextContact;
@end

@implementation EditContactTransitionTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EditContactTransitionTest;
  v5 = [(ContactsTest *)&v8 prepareForTestWithOptions:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"iterations"];
    -[EditContactTransitionTest setMaxIterations:](self, "setMaxIterations:", [v6 intValue]);

    [(ContactsTest *)self willStartTest];
    [(EditContactTransitionTest *)self showNextContact];
  }

  return v5;
}

- (void)showNextContact
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E7E0;
  v4[3] = &unk_1000204D0;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  [(ContactsTest *)self showContactListWithCompletionBlock:v3];
}

- (void)measureEditingTransitionOnController:(id)a3
{
  v4 = UIApp;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EB2C;
  v11[3] = &unk_1000204D0;
  v11[4] = self;
  v5 = a3;
  [v4 installCACommitCompletionBlock:v11];
  v6 = UIApp;
  v7 = [(ContactsTest *)self testOptions];
  v8 = [v7 objectForKeyedSubscript:@"testName"];
  v9 = [NSArray arrayWithObject:@"time"];
  [v6 startedSubTest:@"Edit Contact Transition" forTest:v8 withMetrics:v9];

  v10 = [v5 contentViewController];

  [v10 toggleEditing:self];
}

@end