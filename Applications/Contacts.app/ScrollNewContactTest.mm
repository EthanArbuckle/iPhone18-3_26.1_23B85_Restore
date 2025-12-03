@interface ScrollNewContactTest
- (BOOL)prepareForTestWithOptions:(id)options;
- (void)performTest;
@end

@implementation ScrollNewContactTest

- (BOOL)prepareForTestWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = ScrollNewContactTest;
  v4 = [(ContactsTest *)&v8 prepareForTestWithOptions:options];
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
  contactNavigationController = [(ContactsTest *)self contactNavigationController];
  [contactNavigationController addContact:0 animated:1];

  contactNavigationController2 = [(ContactsTest *)self contactNavigationController];
  visibleViewController = [contactNavigationController2 visibleViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = dispatch_time(0, 1000000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000096D8;
    v7[3] = &unk_100020580;
    v8 = visibleViewController;
    selfCopy = self;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }
}

@end