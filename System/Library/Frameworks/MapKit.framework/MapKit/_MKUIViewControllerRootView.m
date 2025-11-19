@interface _MKUIViewControllerRootView
- (UIViewController)viewController;
- (_MKUIViewControllerRootView)initWithCoder:(id)a3;
- (_MKUIViewControllerRootView)initWithFrame:(CGRect)a3;
- (_MKUIViewControllerRootView)initWithViewController:(id)a3;
- (void)setViewController:(id)a3;
@end

@implementation _MKUIViewControllerRootView

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)setViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_viewController, obj);
    [(UIView *)self _mapkit_setNeedsLayout];
    v5 = obj;
  }
}

- (_MKUIViewControllerRootView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _MKUIViewControllerRootView;
  v3 = [(_MKUIViewControllerRootView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MKUIViewControllerRootView *)v3 _commonInit];
  }

  return v4;
}

- (_MKUIViewControllerRootView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MKUIViewControllerRootView;
  v3 = [(_MKUIViewControllerRootView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_MKUIViewControllerRootView *)v3 _commonInit];
  }

  return v4;
}

- (_MKUIViewControllerRootView)initWithViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MKUIViewControllerRootView;
  v5 = [(_MKUIViewControllerRootView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_MKUIViewControllerRootView *)v5 _commonInit];
    [(_MKUIViewControllerRootView *)v6 setViewController:v4];
  }

  return v6;
}

@end