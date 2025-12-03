@interface WKVideoFullScreenViewController
- (WKVideoFullScreenViewController)initWithAVPlayerViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation WKVideoFullScreenViewController

- (WKVideoFullScreenViewController)initWithAVPlayerViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = WKVideoFullScreenViewController;
  v4 = [(WKVideoFullScreenViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_avPlayerViewController.m_weakReference, controller);
    [(WKVideoFullScreenViewController *)v5 setModalPresentationCapturesStatusBarAppearance:1];
    [(WKVideoFullScreenViewController *)v5 setModalPresentationStyle:5];
  }

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WKVideoFullScreenViewController;
  [(WKVideoFullScreenViewController *)&v7 viewDidLoad];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  [-[WKVideoFullScreenViewController view](self "view")];
  [-[WKVideoFullScreenViewController view](self "view")];
  [objc_msgSend(objc_loadWeak(&self->_avPlayerViewController.m_weakReference) "view")];
}

@end