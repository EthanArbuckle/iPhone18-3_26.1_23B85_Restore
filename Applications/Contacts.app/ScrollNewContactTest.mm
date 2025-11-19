@interface ScrollNewContactTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)performTest;
@end

@implementation ScrollNewContactTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = ScrollNewContactTest;
  v4 = [(ContactsTest *)&v8 prepareForTestWithOptions:a3];
  if (v4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000095C8;
    v7[3] = &unk_1000204D0;
    v7[4] = self;
    v5 = objc_retainBlock(v7);
    [(ContactsTest *)self showContactListWithCompletionBlock:v5];
  }

  return v4;
}

- (void)performTest
{
  v3 = [(ContactsTest *)self contactNavigationController];
  [v3 addContact:0 animated:1];

  v4 = [(ContactsTest *)self contactNavigationController];
  v5 = [v4 visibleViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = dispatch_time(0, 1000000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000096D8;
    v7[3] = &unk_100020580;
    v8 = v5;
    v9 = self;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }
}

@end