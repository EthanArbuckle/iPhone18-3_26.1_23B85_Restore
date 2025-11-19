@interface BCLibraryButton
- (void)setHighlightBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setNormalBackgroundColor:(id)a3;
@end

@implementation BCLibraryButton

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BCLibraryButton;
  [(BCLibraryButton *)&v6 setHighlighted:?];
  if (a3)
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

- (void)setNormalBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_normalBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_normalBackgroundColor, a3);
    if (([(BCLibraryButton *)self isHighlighted]& 1) == 0)
    {
      [(BCLibraryButton *)self setBackgroundColor:v6];
    }
  }

  _objc_release_x2();
}

- (void)setHighlightBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_highlightBackgroundColor != v5)
  {
    objc_storeStrong(&self->_highlightBackgroundColor, a3);
    v5 = [(BCLibraryButton *)self isHighlighted];
    if (v5)
    {
      v6 = [(BCLibraryButton *)self highlightBackgroundColor];
      [(BCLibraryButton *)self setBackgroundColor:v6];
    }
  }

  _objc_release_x1(v5);
}

@end