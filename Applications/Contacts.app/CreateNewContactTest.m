@interface CreateNewContactTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)performTest;
@end

@implementation CreateNewContactTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CreateNewContactTest;
  v5 = [(ContactsTest *)&v10 prepareForTestWithOptions:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"iterations"];
    -[CreateNewContactTest setTotalIterations:](self, "setTotalIterations:", [v6 intValue]);

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004A7C;
    v9[3] = &unk_1000204D0;
    v9[4] = self;
    v7 = objc_retainBlock(v9);
    [(ContactsTest *)self showContactListWithCompletionBlock:v7];
  }

  return v5;
}

- (void)performTest
{
  v3 = [(CreateNewContactTest *)self iterations];
  if (v3 >= [(CreateNewContactTest *)self totalIterations])
  {
    v9 = UIApp;
    v11 = [(ContactsTest *)self testOptions];
    v10 = [v11 objectForKeyedSubscript:@"testName"];
    [v9 finishedTest:v10];
  }

  else
  {
    [(CreateNewContactTest *)self setIterations:[(CreateNewContactTest *)self iterations]+ 1];
    v4 = UIApp;
    v5 = [(ContactsTest *)self testOptions];
    v6 = [v5 objectForKeyedSubscript:@"testName"];
    v7 = [NSArray arrayWithObject:@"time"];
    [v4 startedSubTest:@"Create New Contact" forTest:v6 withMetrics:v7];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004C6C;
    v12[3] = &unk_1000204D0;
    v12[4] = self;
    [UIApp installCACommitCompletionBlock:v12];
    v8 = [(ContactsTest *)self contactNavigationController];
    [v8 addContact:0 animated:0];
  }
}

@end