@interface UIAccessibilityFunCamCustomAction
- (UIAccessibilityElement)axElement;
- (UIAccessibilityFunCamCustomAction)initWithName:(id)a3 target:(id)a4 selector:(SEL)a5 effect:(id)a6 axElement:(id)a7 vc:(id)a8;
- (UIViewController)vc;
- (id)effect;
@end

@implementation UIAccessibilityFunCamCustomAction

- (UIAccessibilityFunCamCustomAction)initWithName:(id)a3 target:(id)a4 selector:(SEL)a5 effect:(id)a6 axElement:(id)a7 vc:(id)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = UIAccessibilityFunCamCustomAction;
  v17 = [(UIAccessibilityFunCamCustomAction *)&v20 initWithName:a3 target:a4 selector:a5];
  v18 = v17;
  if (v17)
  {
    [(UIAccessibilityFunCamCustomAction *)v17 setEffect:v14];
    [(UIAccessibilityFunCamCustomAction *)v18 setAxElement:v15];
    [(UIAccessibilityFunCamCustomAction *)v18 setVc:v16];
  }

  return v18;
}

- (id)effect
{
  WeakRetained = objc_loadWeakRetained(&self->_effect);

  return WeakRetained;
}

- (UIAccessibilityElement)axElement
{
  WeakRetained = objc_loadWeakRetained(&self->_axElement);

  return WeakRetained;
}

- (UIViewController)vc
{
  WeakRetained = objc_loadWeakRetained(&self->_vc);

  return WeakRetained;
}

@end