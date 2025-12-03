@interface ChromeSearchDataSourceDelegateProxy
+ (id)protocols;
- (ChromeSearchDataSourceDelegateProxy)initWithChromeViewController:(id)controller;
- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol;
@end

@implementation ChromeSearchDataSourceDelegateProxy

- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol
{
  protocolCopy = protocol;
  chromeViewController = [(ChromeDelegateProxy *)self chromeViewController];

  if (&OBJC_PROTOCOL___GEOLogContextDelegate == protocolCopy)
  {
    searchDataSourceLogDelegate = [chromeViewController searchDataSourceLogDelegate];
    v9 = searchDataSourceLogDelegate;
    if (searchDataSourceLogDelegate)
    {
      v15 = searchDataSourceLogDelegate;
      v10 = &v15;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [chromeViewController searchDataSourceDelegateForSelector:selector];
    v9 = v8;
    if (v8)
    {
      v14 = v8;
      v10 = &v14;
LABEL_6:
      v12 = [NSArray arrayWithObjects:v10 count:1];
      goto LABEL_8;
    }
  }

  v12 = &__NSArray0__struct;
LABEL_8:

  return v12;
}

- (ChromeSearchDataSourceDelegateProxy)initWithChromeViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = ChromeSearchDataSourceDelegateProxy;
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
  if (qword_10195DDB8 != -1)
  {
    dispatch_once(&qword_10195DDB8, &stru_10162F5C0);
  }

  v3 = qword_10195DDB0;

  return v3;
}

@end