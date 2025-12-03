@interface UIAccessibilityFunCamCustomAction
- (UIAccessibilityElement)axElement;
- (UIAccessibilityFunCamCustomAction)initWithName:(id)name target:(id)target selector:(SEL)selector effect:(id)effect axElement:(id)element vc:(id)vc;
- (UIViewController)vc;
- (id)effect;
@end

@implementation UIAccessibilityFunCamCustomAction

- (UIAccessibilityFunCamCustomAction)initWithName:(id)name target:(id)target selector:(SEL)selector effect:(id)effect axElement:(id)element vc:(id)vc
{
  effectCopy = effect;
  elementCopy = element;
  vcCopy = vc;
  v20.receiver = self;
  v20.super_class = UIAccessibilityFunCamCustomAction;
  v17 = [(UIAccessibilityFunCamCustomAction *)&v20 initWithName:name target:target selector:selector];
  v18 = v17;
  if (v17)
  {
    [(UIAccessibilityFunCamCustomAction *)v17 setEffect:effectCopy];
    [(UIAccessibilityFunCamCustomAction *)v18 setAxElement:elementCopy];
    [(UIAccessibilityFunCamCustomAction *)v18 setVc:vcCopy];
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