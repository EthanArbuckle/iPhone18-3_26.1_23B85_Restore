@interface ChromeNavigationDisplayDelegateProxy
+ (id)protocols;
- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol;
@end

@implementation ChromeNavigationDisplayDelegateProxy

+ (id)protocols
{
  if (qword_10195D228 != -1)
  {
    dispatch_once(&qword_10195D228, &stru_101628BF8);
  }

  v3 = qword_10195D220;

  return v3;
}

- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol
{
  chromeViewController = [(ChromeDelegateProxy *)self chromeViewController];
  topContext = [chromeViewController topContext];

  if (objc_opt_respondsToSelector())
  {
    v8 = topContext;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end