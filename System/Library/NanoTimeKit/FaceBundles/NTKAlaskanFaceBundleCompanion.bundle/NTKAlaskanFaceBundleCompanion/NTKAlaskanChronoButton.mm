@interface NTKAlaskanChronoButton
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation NTKAlaskanChronoButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v17.receiver = self;
  v17.super_class = NTKAlaskanChronoButton;
  [(NTKAlaskanChronoButton *)&v17 setHighlighted:?];
  imageView = [(NTKAlaskanChronoButton *)self imageView];
  layer = [imageView layer];
  v7 = [layer animationForKey:@"NTKAlaskanChronoButtonAnimation"];

  if (v7)
  {
    imageView2 = [(NTKAlaskanChronoButton *)self imageView];
    layer2 = [imageView2 layer];
    [layer2 removeAnimationForKey:@"NTKAlaskanChronoButtonAnimation"];
  }

  if (highlightedCopy)
  {
    v10 = 0.3;
  }

  else
  {
    v10 = 0.2;
  }

  if (highlightedCopy)
  {
    v11 = &off_3ADE0;
  }

  else
  {
    v11 = &off_3ADF0;
  }

  if (highlightedCopy)
  {
    v12 = &off_3ADF0;
  }

  else
  {
    v12 = &off_3ADE0;
  }

  v13 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
  v14 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v13 setTimingFunction:v14];

  [v13 setRemovedOnCompletion:!highlightedCopy];
  [v13 setFillMode:kCAFillModeForwards];
  [v13 setFromValue:v12];
  [v13 setToValue:v11];
  [v13 setDuration:v10];
  imageView3 = [(NTKAlaskanChronoButton *)self imageView];
  layer3 = [imageView3 layer];
  [layer3 addAnimation:v13 forKey:@"NTKAlaskanChronoButtonAnimation"];
}

@end