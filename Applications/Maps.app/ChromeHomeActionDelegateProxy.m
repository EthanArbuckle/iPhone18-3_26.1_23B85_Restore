@interface ChromeHomeActionDelegateProxy
+ (id)protocols;
- (ChromeHomeActionDelegateProxy)initWithChromeViewController:(id)a3;
- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4;
@end

@implementation ChromeHomeActionDelegateProxy

- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4
{
  v5 = [(ChromeDelegateProxy *)self chromeViewController:a3];
  v6 = [v5 homeActionDelegateForSelector:a3];
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

- (ChromeHomeActionDelegateProxy)initWithChromeViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = ChromeHomeActionDelegateProxy;
    self = [(ChromeDelegateProxy *)&v7 initWithChromeViewController:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
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