@interface JournalPresentationLayer
- (JournalPresentationLayer)init;
- (UIViewController)presentingViewController;
- (id)description;
@end

@implementation JournalPresentationLayer

- (JournalPresentationLayer)init
{
  v6.receiver = self;
  v6.super_class = JournalPresentationLayer;
  v2 = [(JournalPresentationLayer *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    pushedViewControllers = v2->_pushedViewControllers;
    v2->_pushedViewControllers = v3;
  }

  return v2;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = JournalPresentationLayer;
  v3 = [(JournalPresentationLayer *)&v8 description];
  presentedViewController = self->_presentedViewController;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v6 = [NSString stringWithFormat:@"%@ presentedViewController = %@ presentingViewController = %@ pushedViewControllers = %@", v3, presentedViewController, WeakRetained, self->_pushedViewControllers];

  return v6;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end