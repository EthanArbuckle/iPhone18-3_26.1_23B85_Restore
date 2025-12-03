@interface ChromeHomeActionDelegateProxy
+ (id)protocols;
- (ChromeHomeActionDelegateProxy)initWithChromeViewController:(id)controller;
- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol;
@end

@implementation ChromeHomeActionDelegateProxy

- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol
{
  v5 = [(ChromeDelegateProxy *)self chromeViewController:selector];
  v6 = [v5 homeActionDelegateForSelector:selector];
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (ChromeHomeActionDelegateProxy)initWithChromeViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = ChromeHomeActionDelegateProxy;
    self = [(ChromeDelegateProxy *)&v7 initWithChromeViewController:controllerCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)protocols
{
  if (qword_10195E630 != -1)
  {
    dispatch_once(&qword_10195E630, &stru_101637FD8);
  }

  v3 = qword_10195E628;

  return v3;
}

@end