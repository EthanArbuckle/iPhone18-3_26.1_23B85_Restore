@interface THInteractiveButtonLayer
- (CGSize)titleShadowOffset;
- (TSUImage)p_normalImage;
- (id)p_buttonImageWithBackgroundImage:(id)image;
- (id)swapIntoView:(id)view;
- (void)dealloc;
- (void)layoutSublayers;
- (void)p_invalidateButtonImage;
- (void)setBounds:(CGRect)bounds;
- (void)setNormalBackgroundImage:(id)image;
- (void)setPressedBackgroundImage:(id)image;
- (void)setTarget:(id)target action:(SEL)action;
- (void)setTitle:(id)title;
- (void)setTitleColor:(id)color;
- (void)setTitleFont:(id)font;
- (void)setTitleShadowBlurRadius:(double)radius;
- (void)setTitleShadowColor:(id)color;
- (void)setTitleShadowOffset:(CGSize)offset;
@end

@implementation THInteractiveButtonLayer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THInteractiveButtonLayer;
  [(THInteractiveButtonLayer *)&v3 dealloc];
}

- (void)setNormalBackgroundImage:(id)image
{
  normalBackgroundImage = self->_normalBackgroundImage;
  if (normalBackgroundImage != image)
  {

    self->_normalBackgroundImage = image;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setPressedBackgroundImage:(id)image
{
  pressedBackgroundImage = self->_pressedBackgroundImage;
  if (pressedBackgroundImage != image)
  {

    self->_pressedBackgroundImage = image;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitle:(id)title
{
  title = self->_title;
  if (title != title)
  {

    self->_title = title;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleFont:(id)font
{
  titleFont = self->_titleFont;
  if (titleFont != font)
  {

    self->_titleFont = font;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleColor:(id)color
{
  titleColor = self->_titleColor;
  if (titleColor != color)
  {

    self->_titleColor = color;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleShadowColor:(id)color
{
  titleShadowColor = self->_titleShadowColor;
  if (titleShadowColor != color)
  {

    self->_titleShadowColor = color;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleShadowOffset:(CGSize)offset
{
  if (offset.width != self->_titleShadowOffset.width || offset.height != self->_titleShadowOffset.height)
  {
    self->_titleShadowOffset = offset;
    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleShadowBlurRadius:(double)radius
{
  if (self->_titleShadowBlurRadius != radius)
  {
    self->_titleShadowBlurRadius = radius;
    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTarget:(id)target action:(SEL)action
{
  self->_target = target;
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(THInteractiveButtonLayer *)self bounds];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (CGRectEqualToRect(v13, v14))
  {
    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }

  v12.receiver = self;
  v12.super_class = THInteractiveButtonLayer;
  [(THInteractiveButtonLayer *)&v12 setBounds:x, y, width, height];
}

- (void)layoutSublayers
{
  v3.receiver = self;
  v3.super_class = THInteractiveButtonLayer;
  [(THInteractiveButtonLayer *)&v3 layoutSublayers];
  [(THInteractiveButtonLayer *)self setContents:[(TSUImage *)[(THInteractiveButtonLayer *)self p_normalImage] CGImage]];
}

- (id)swapIntoView:(id)view
{
  v4 = [UIButton buttonWithType:0];
  [(THInteractiveButtonLayer *)self frame];
  [(UIButton *)v4 setFrame:?];
  [(UIButton *)v4 setImage:[(TSUImage *)[(THInteractiveButtonLayer *)self p_normalImage] UIImage] forState:0];
  [(UIButton *)v4 setImage:[(TSUImage *)[(THInteractiveButtonLayer *)self p_pressedImage] UIImage] forState:1];
  if (self->_action)
  {
    action = self->_action;
  }

  else
  {
    action = 0;
  }

  [(UIButton *)v4 addTarget:self->_target action:action forControlEvents:64];
  return v4;
}

- (TSUImage)p_normalImage
{
  result = self->_normalImage;
  if (!result)
  {
    result = [(THInteractiveButtonLayer *)self p_buttonImageWithBackgroundImage:self->_normalBackgroundImage];
    self->_normalImage = result;
  }

  return result;
}

- (void)p_invalidateButtonImage
{
  self->_normalImage = 0;

  [(THInteractiveButtonLayer *)self setNeedsLayout];
}

- (id)p_buttonImageWithBackgroundImage:(id)image
{
  if (self->_title && self->_titleFont && self->_titleColor)
  {
    [(THInteractiveButtonLayer *)self bounds];
    v6 = v5;
    v8 = v7;
    TSDMultiplyRectScalar();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1D0BCC;
    v14[3] = &unk_45F108;
    v14[4] = self;
    v14[5] = image;
    v14[6] = v9;
    v14[7] = v10;
    v14[8] = v11;
    v14[9] = v12;
    return [TSUImage imageWithSize:v14 drawnUsingBlock:v6, v8];
  }

  return image;
}

- (CGSize)titleShadowOffset
{
  width = self->_titleShadowOffset.width;
  height = self->_titleShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end