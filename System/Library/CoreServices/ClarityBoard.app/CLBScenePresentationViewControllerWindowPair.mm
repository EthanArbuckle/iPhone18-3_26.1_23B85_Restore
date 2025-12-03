@interface CLBScenePresentationViewControllerWindowPair
- (CLBScenePresentationViewControllerWindowPair)initWithScenePresentationViewController:(id)controller window:(id)window;
@end

@implementation CLBScenePresentationViewControllerWindowPair

- (CLBScenePresentationViewControllerWindowPair)initWithScenePresentationViewController:(id)controller window:(id)window
{
  controllerCopy = controller;
  windowCopy = window;
  v12.receiver = self;
  v12.super_class = CLBScenePresentationViewControllerWindowPair;
  v9 = [(CLBScenePresentationViewControllerWindowPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scenePresentationViewController, controller);
    objc_storeStrong(&v10->_window, window);
  }

  return v10;
}

@end