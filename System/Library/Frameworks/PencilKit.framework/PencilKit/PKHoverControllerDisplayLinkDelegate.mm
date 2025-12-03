@interface PKHoverControllerDisplayLinkDelegate
- (PKHoverController)controller;
- (void)display:(id)display;
@end

@implementation PKHoverControllerDisplayLinkDelegate

- (void)display:(id)display
{
  controller = [(PKHoverControllerDisplayLinkDelegate *)self controller];
  [controller vsync];
}

- (PKHoverController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end