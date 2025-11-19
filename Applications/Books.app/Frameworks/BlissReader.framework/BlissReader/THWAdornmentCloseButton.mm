@interface THWAdornmentCloseButton
- (CGSize)buttonSize;
- (THWAdornmentCloseButton)initWithCoder:(id)a3;
- (THWAdornmentCloseButton)initWithFrame:(CGRect)a3 theme:(int)a4;
- (void)dealloc;
- (void)p_initWithFrame:(CGRect)a3 theme:(int)a4;
- (void)p_initializeTheme:(int)a3;
- (void)setTheme:(int)a3;
- (void)updateImage;
@end

@implementation THWAdornmentCloseButton

- (THWAdornmentCloseButton)initWithFrame:(CGRect)a3 theme:(int)a4
{
  v4 = *&a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = THWAdornmentCloseButton;
  v9 = [(THWAdornmentCloseButton *)&v12 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    [(THWAdornmentCloseButton *)v9 p_initWithFrame:v4 theme:x, y, width, height];
  }

  return v10;
}

- (THWAdornmentCloseButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = THWAdornmentCloseButton;
  v3 = [(THWAdornmentCloseButton *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(THWAdornmentCloseButton *)v3 frame];
    [(THWAdornmentCloseButton *)v4 p_initWithFrame:0 theme:?];
  }

  return v4;
}

- (void)p_initWithFrame:(CGRect)a3 theme:(int)a4
{
  y = a3.origin.y;
  x = a3.origin.x;
  [(THWAdornmentCloseButton *)self p_initializeTheme:*&a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(THWAdornmentCloseButton *)self buttonSize];
  v8 = v7;
  [(THWAdornmentCloseButton *)self buttonSize];
  [(THWAdornmentCloseButton *)self setFrame:x, y, v8, v9];

  [(THWAdornmentCloseButton *)self updateImage];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWAdornmentCloseButton;
  [(THWAdornmentCloseButton *)&v3 dealloc];
}

- (void)setTheme:(int)a3
{
  if (self->_theme != a3)
  {
    self->_theme = a3;
    [(THWAdornmentCloseButton *)self p_initializeTheme:?];

    [(THWAdornmentCloseButton *)self updateImage];
  }
}

- (void)updateImage
{
  [(THWAdornmentCloseButton *)self setImage:[(THWAdornmentCloseButton *)self closeButtonImage] forState:0];
  [(THWAdornmentCloseButton *)self setImage:[(THWAdornmentCloseButton *)self closeButtonImage] forState:2];
  if ([(THWAdornmentCloseButton *)self closeButtonAlternateImage])
  {
    v3 = [(THWAdornmentCloseButton *)self closeButtonAlternateImage];

    [(THWAdornmentCloseButton *)self setImage:v3 forState:1];
  }
}

- (void)p_initializeTheme:(int)a3
{
  if (a3)
  {
    v4 = @"ib_media_close-N";
  }

  else
  {
    v4 = @"ib_media_close_white-N";
  }

  [(THWAdornmentCloseButton *)self setCloseButtonImage:[UIImage th_imageNamed:v4]];
  [(THWAdornmentCloseButton *)self setCloseButtonTitle:0];
  [(THWAdornmentCloseButton *)self setCloseButtonAlternateTitle:0];

  [(THWAdornmentCloseButton *)self setButtonSize:44.0, 44.0];
}

- (CGSize)buttonSize
{
  width = self->_buttonSize.width;
  height = self->_buttonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end