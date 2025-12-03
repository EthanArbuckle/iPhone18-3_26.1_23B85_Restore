@interface THWAdornmentCloseButton
- (CGSize)buttonSize;
- (THWAdornmentCloseButton)initWithCoder:(id)coder;
- (THWAdornmentCloseButton)initWithFrame:(CGRect)frame theme:(int)theme;
- (void)dealloc;
- (void)p_initWithFrame:(CGRect)frame theme:(int)theme;
- (void)p_initializeTheme:(int)theme;
- (void)setTheme:(int)theme;
- (void)updateImage;
@end

@implementation THWAdornmentCloseButton

- (THWAdornmentCloseButton)initWithFrame:(CGRect)frame theme:(int)theme
{
  v4 = *&theme;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (THWAdornmentCloseButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = THWAdornmentCloseButton;
  v3 = [(THWAdornmentCloseButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(THWAdornmentCloseButton *)v3 frame];
    [(THWAdornmentCloseButton *)v4 p_initWithFrame:0 theme:?];
  }

  return v4;
}

- (void)p_initWithFrame:(CGRect)frame theme:(int)theme
{
  y = frame.origin.y;
  x = frame.origin.x;
  [(THWAdornmentCloseButton *)self p_initializeTheme:*&theme, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setTheme:(int)theme
{
  if (self->_theme != theme)
  {
    self->_theme = theme;
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
    closeButtonAlternateImage = [(THWAdornmentCloseButton *)self closeButtonAlternateImage];

    [(THWAdornmentCloseButton *)self setImage:closeButtonAlternateImage forState:1];
  }
}

- (void)p_initializeTheme:(int)theme
{
  if (theme)
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