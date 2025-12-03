@interface CAScrollLayer
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
@end

@implementation CAScrollLayer

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAScrollLayer *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  TSDRectWithOriginAndSize();
  [(CAScrollLayer *)self setBounds:?];
  if (animatedCopy)
  {
    v14 = [CABasicAnimation animationWithKeyPath:@"bounds"];
    [(CABasicAnimation *)v14 setDuration:0.2];
    [(CABasicAnimation *)v14 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [(CABasicAnimation *)v14 setFromValue:[NSValue valueWithCGRect:v7, v9, v11, v13]];

    [(CAScrollLayer *)self addAnimation:v14 forKey:@"scrollAnimation"];
  }
}

@end