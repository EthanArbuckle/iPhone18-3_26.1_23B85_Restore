@interface THInteractiveButtonLayer
- (CGSize)titleShadowOffset;
- (TSUImage)p_normalImage;
- (id)p_buttonImageWithBackgroundImage:(id)a3;
- (id)swapIntoView:(id)a3;
- (void)dealloc;
- (void)layoutSublayers;
- (void)p_invalidateButtonImage;
- (void)setBounds:(CGRect)a3;
- (void)setNormalBackgroundImage:(id)a3;
- (void)setPressedBackgroundImage:(id)a3;
- (void)setTarget:(id)a3 action:(SEL)a4;
- (void)setTitle:(id)a3;
- (void)setTitleColor:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleShadowBlurRadius:(double)a3;
- (void)setTitleShadowColor:(id)a3;
- (void)setTitleShadowOffset:(CGSize)a3;
@end

@implementation THInteractiveButtonLayer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THInteractiveButtonLayer;
  [(THInteractiveButtonLayer *)&v3 dealloc];
}

- (void)setNormalBackgroundImage:(id)a3
{
  normalBackgroundImage = self->_normalBackgroundImage;
  if (normalBackgroundImage != a3)
  {

    self->_normalBackgroundImage = a3;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setPressedBackgroundImage:(id)a3
{
  pressedBackgroundImage = self->_pressedBackgroundImage;
  if (pressedBackgroundImage != a3)
  {

    self->_pressedBackgroundImage = a3;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitle:(id)a3
{
  title = self->_title;
  if (title != a3)
  {

    self->_title = a3;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleFont:(id)a3
{
  titleFont = self->_titleFont;
  if (titleFont != a3)
  {

    self->_titleFont = a3;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleColor:(id)a3
{
  titleColor = self->_titleColor;
  if (titleColor != a3)
  {

    self->_titleColor = a3;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleShadowColor:(id)a3
{
  titleShadowColor = self->_titleShadowColor;
  if (titleShadowColor != a3)
  {

    self->_titleShadowColor = a3;

    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleShadowOffset:(CGSize)a3
{
  if (a3.width != self->_titleShadowOffset.width || a3.height != self->_titleShadowOffset.height)
  {
    self->_titleShadowOffset = a3;
    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTitleShadowBlurRadius:(double)a3
{
  if (self->_titleShadowBlurRadius != a3)
  {
    self->_titleShadowBlurRadius = a3;
    [(THInteractiveButtonLayer *)self p_invalidateButtonImage];
  }
}

- (void)setTarget:(id)a3 action:(SEL)a4
{
  self->_target = a3;
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  self->_action = v4;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (id)swapIntoView:(id)a3
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

- (id)p_buttonImageWithBackgroundImage:(id)a3
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
    v14[5] = a3;
    v14[6] = v9;
    v14[7] = v10;
    v14[8] = v11;
    v14[9] = v12;
    return [TSUImage imageWithSize:v14 drawnUsingBlock:v6, v8];
  }

  return a3;
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