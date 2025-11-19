@interface ChildItemCatalystButton
+ (CGColor)extraShadowLayerBackgroundColorWithDarkMode:(BOOL)a3 isbuttonEnabled:(BOOL)a4;
+ (UIEdgeInsets)contentEdgeInsets;
+ (UIFont)buttonTitleFont;
+ (id)childItemCatalystButton;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ChildItemButtonDelegate)delegate;
- (void)setChildItem:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setTitle:(id)a3 tapHandler:(id)a4;
@end

@implementation ChildItemCatalystButton

- (ChildItemButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)setTitle:(id)a3 tapHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_MKPlaceActionButtonController alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100A2BA58;
  v12[3] = &unk_101632210;
  v13 = v6;
  v9 = v6;
  v10 = [v8 initWithTitle:v7 subTitle:0 selectedBlock:v12];

  buttonController = self->_buttonController;
  self->_buttonController = v10;

  [(ChildItemCatalystButton *)self setButtonController:self->_buttonController];
}

- (void)setChildItem:(id)a3
{
  v5 = a3;
  childItem = self->_childItem;
  if (childItem != v5)
  {
    objc_storeStrong(&self->_childItem, a3);
    childItem = self->_childItem;
  }

  v7 = [ChildItemButton buttonTitleWithChildItem:childItem];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A2BB7C;
  v8[3] = &unk_101661B98;
  objc_copyWeak(&v9, &location);
  [(ChildItemCatalystButton *)self setTitle:v7 tapHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v6.receiver = self;
  v6.super_class = ChildItemCatalystButton;
  [(ChildItemCatalystButton *)&v6 sizeThatFits:a3.width, a3.height];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

+ (CGColor)extraShadowLayerBackgroundColorWithDarkMode:(BOOL)a3 isbuttonEnabled:(BOOL)a4
{
  v4 = [UIColor clearColor:a3];
  v5 = [v4 CGColor];

  return v5;
}

+ (UIFont)buttonTitleFont
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___ChildItemCatalystButton;
  v2 = [objc_msgSendSuper2(&v4 "class")];

  return v2;
}

+ (UIEdgeInsets)contentEdgeInsets
{
  v2 = 5.0;
  v3 = 10.0;
  v4 = 7.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)childItemCatalystButton
{
  v2 = [ChildItemCatalystButton buttonWithType:1];
  [objc_opt_class() contentEdgeInsets];
  [v2 setContentEdgeInsets:?];
  v3 = [v2 titleLabel];
  [v3 setLineBreakMode:0];

  return v2;
}

@end