@interface PKHoverControllerDisplayLinkDelegate
- (PKHoverController)controller;
- (void)display:(id)a3;
@end

@implementation PKHoverControllerDisplayLinkDelegate

- (void)display:(id)a3
{
  v3 = [(PKHoverControllerDisplayLinkDelegate *)self controller];
  [v3 vsync];
}

- (PKHoverController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end