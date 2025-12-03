@interface _MKUIViewControllerRootView
- (UIViewController)viewController;
- (_MKUIViewControllerRootView)initWithCoder:(id)coder;
- (_MKUIViewControllerRootView)initWithFrame:(CGRect)frame;
- (_MKUIViewControllerRootView)initWithViewController:(id)controller;
- (void)setViewController:(id)controller;
@end

@implementation _MKUIViewControllerRootView

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)setViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_viewController, obj);
    [(UIView *)self _mapkit_setNeedsLayout];
    v5 = obj;
  }
}

- (_MKUIViewControllerRootView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _MKUIViewControllerRootView;
  v3 = [(_MKUIViewControllerRootView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MKUIViewControllerRootView *)v3 _commonInit];
  }

  return v4;
}

- (_MKUIViewControllerRootView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _MKUIViewControllerRootView;
  v3 = [(_MKUIViewControllerRootView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_MKUIViewControllerRootView *)v3 _commonInit];
  }

  return v4;
}

- (_MKUIViewControllerRootView)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _MKUIViewControllerRootView;
  v5 = [(_MKUIViewControllerRootView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_MKUIViewControllerRootView *)v5 _commonInit];
    [(_MKUIViewControllerRootView *)v6 setViewController:controllerCopy];
  }

  return v6;
}

@end