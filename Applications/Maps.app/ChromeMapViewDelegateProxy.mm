@interface ChromeMapViewDelegateProxy
+ (id)protocols;
- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol;
@end

@implementation ChromeMapViewDelegateProxy

+ (id)protocols
{
  if (qword_10195F050 != -1)
  {
    dispatch_once(&qword_10195F050, &stru_101651750);
  }

  v3 = qword_10195F048;

  return v3;
}

- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol
{
  v6 = [[NSMutableArray alloc] initWithCapacity:2];
  chromeViewController = [(ChromeDelegateProxy *)self chromeViewController];
  navigationDisplay = [chromeViewController navigationDisplay];
  mapViewDelegate = [navigationDisplay mapViewDelegate];

  if (mapViewDelegate)
  {
    [v6 addObject:mapViewDelegate];
  }

  chromeViewController2 = [(ChromeDelegateProxy *)self chromeViewController];
  v11 = [chromeViewController2 mapViewDelegateForSelector:selector];

  if (v11)
  {
    [v6 addObject:v11];
  }

  v12 = [v6 copy];

  return v12;
}

@end