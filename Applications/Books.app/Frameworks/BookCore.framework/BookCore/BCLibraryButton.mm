@interface BCLibraryButton
- (void)setHighlightBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNormalBackgroundColor:(id)color;
@end

@implementation BCLibraryButton

- (void)setHighlighted:(BOOL)highlighted
{
  v6.receiver = self;
  v6.super_class = BCLibraryButton;
  [(BCLibraryButton *)&v6 setHighlighted:?];
  if (highlighted)
  {
    [(BCLibraryButton *)self highlightBackgroundColor];
  }

  else
  {
    [(BCLibraryButton *)self normalBackgroundColor];
  }
  v5 = ;
  [(BCLibraryButton *)self setBackgroundColor:v5];
}

- (void)setNormalBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_normalBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_normalBackgroundColor, color);
    if (([(BCLibraryButton *)self isHighlighted]& 1) == 0)
    {
      [(BCLibraryButton *)self setBackgroundColor:v6];
    }
  }

  _objc_release_x2();
}

- (void)setHighlightBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_highlightBackgroundColor != colorCopy)
  {
    objc_storeStrong(&self->_highlightBackgroundColor, color);
    colorCopy = [(BCLibraryButton *)self isHighlighted];
    if (colorCopy)
    {
      highlightBackgroundColor = [(BCLibraryButton *)self highlightBackgroundColor];
      [(BCLibraryButton *)self setBackgroundColor:highlightBackgroundColor];
    }
  }

  _objc_release_x1(colorCopy);
}

@end