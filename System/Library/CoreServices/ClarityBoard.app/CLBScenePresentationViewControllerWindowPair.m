@interface CLBScenePresentationViewControllerWindowPair
- (CLBScenePresentationViewControllerWindowPair)initWithScenePresentationViewController:(id)a3 window:(id)a4;
@end

@implementation CLBScenePresentationViewControllerWindowPair

- (CLBScenePresentationViewControllerWindowPair)initWithScenePresentationViewController:(id)a3 window:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CLBScenePresentationViewControllerWindowPair;
  v9 = [(CLBScenePresentationViewControllerWindowPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scenePresentationViewController, a3);
    objc_storeStrong(&v10->_window, a4);
  }

  return v10;
}

@end