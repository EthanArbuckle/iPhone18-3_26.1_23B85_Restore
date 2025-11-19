@interface SVSHighlightButton
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SVSHighlightButton

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SVSHighlightButton;
  [(SVSHighlightButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (v3)
  {
    v5 = 0.5;
  }

  [(SVSHighlightButton *)self setAlpha:v5];
}

@end