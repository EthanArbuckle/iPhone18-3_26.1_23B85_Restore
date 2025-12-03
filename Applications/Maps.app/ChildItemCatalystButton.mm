@interface ChildItemCatalystButton
+ (CGColor)extraShadowLayerBackgroundColorWithDarkMode:(BOOL)mode isbuttonEnabled:(BOOL)enabled;
+ (UIEdgeInsets)contentEdgeInsets;
+ (UIFont)buttonTitleFont;
+ (id)childItemCatalystButton;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ChildItemButtonDelegate)delegate;
- (void)setChildItem:(id)item;
- (void)setDelegate:(id)delegate;
- (void)setTitle:(id)title tapHandler:(id)handler;
@end

@implementation ChildItemCatalystButton

- (ChildItemButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)setTitle:(id)title tapHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v8 = [_MKPlaceActionButtonController alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100A2BA58;
  v12[3] = &unk_101632210;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 initWithTitle:titleCopy subTitle:0 selectedBlock:v12];

  buttonController = self->_buttonController;
  self->_buttonController = v10;

  [(ChildItemCatalystButton *)self setButtonController:self->_buttonController];
}

- (void)setChildItem:(id)item
{
  itemCopy = item;
  childItem = self->_childItem;
  if (childItem != itemCopy)
  {
    objc_storeStrong(&self->_childItem, item);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v6.receiver = self;
  v6.super_class = ChildItemCatalystButton;
  [(ChildItemCatalystButton *)&v6 sizeThatFits:fits.width, fits.height];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

+ (CGColor)extraShadowLayerBackgroundColorWithDarkMode:(BOOL)mode isbuttonEnabled:(BOOL)enabled
{
  v4 = [UIColor clearColor:mode];
  cGColor = [v4 CGColor];

  return cGColor;
}

+ (UIFont)buttonTitleFont
{
  v4.receiver = self;
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
  titleLabel = [v2 titleLabel];
  [titleLabel setLineBreakMode:0];

  return v2;
}

@end