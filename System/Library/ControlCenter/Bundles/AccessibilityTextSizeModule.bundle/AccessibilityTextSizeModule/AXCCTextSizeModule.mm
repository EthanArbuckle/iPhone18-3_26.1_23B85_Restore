@interface AXCCTextSizeModule
- (AXCCTextSizeModule)init;
- (id)backgroundViewControllerForContext:(id)context;
- (id)contentViewControllerForContext:(id)context;
- (void)expandModule;
@end

@implementation AXCCTextSizeModule

- (AXCCTextSizeModule)init
{
  v6.receiver = self;
  v6.super_class = AXCCTextSizeModule;
  v2 = [(AXCCTextSizeModule *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXCCTextSizeHelper);
    helper = v2->_helper;
    v2->_helper = v3;
  }

  return v2;
}

- (id)contentViewControllerForContext:(id)context
{
  v4 = [(CCUIButtonModuleViewController *)[AXCCTextSizeSliderModuleViewController alloc] initWithNibName:0 bundle:0];
  contentViewController = self->_contentViewController;
  self->_contentViewController = v4;

  contentModuleContext = [(AXCCTextSizeModule *)self contentModuleContext];
  [(CCUIContentModuleContentViewController *)self->_contentViewController setContentModuleContext:contentModuleContext];

  [(CCUIContentModuleContentViewController *)self->_contentViewController setTextSizeDelegate:self];
  [(CCUIContentModuleContentViewController *)self->_contentViewController setHelper:self->_helper];
  v7 = self->_contentViewController;

  return v7;
}

- (id)backgroundViewControllerForContext:(id)context
{
  v4 = [[AXCCTextSizeSliderBackgroundViewController alloc] initWithNibName:0 bundle:0];
  bgController = self->_bgController;
  self->_bgController = v4;

  [(AXCCTextSizeBackgroundViewControllerBase *)self->_bgController setHelper:self->_helper];
  v6 = self->_bgController;

  return v6;
}

- (void)expandModule
{
  contentModuleContext = [(AXCCTextSizeModule *)self contentModuleContext];
  [contentModuleContext requestExpandModule];
}

@end