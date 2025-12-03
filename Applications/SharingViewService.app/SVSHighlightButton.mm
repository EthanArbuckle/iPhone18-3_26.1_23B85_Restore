@interface SVSHighlightButton
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SVSHighlightButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = SVSHighlightButton;
  [(SVSHighlightButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (highlightedCopy)
  {
    v5 = 0.5;
  }

  [(SVSHighlightButton *)self setAlpha:v5];
}

@end