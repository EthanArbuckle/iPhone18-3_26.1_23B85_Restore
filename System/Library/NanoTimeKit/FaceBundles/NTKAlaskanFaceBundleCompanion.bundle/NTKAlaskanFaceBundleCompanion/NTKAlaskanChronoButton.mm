@interface NTKAlaskanChronoButton
- (void)setHighlighted:(BOOL)a3;
@end

@implementation NTKAlaskanChronoButton

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v17.receiver = self;
  v17.super_class = NTKAlaskanChronoButton;
  [(NTKAlaskanChronoButton *)&v17 setHighlighted:?];
  v5 = [(NTKAlaskanChronoButton *)self imageView];
  v6 = [v5 layer];
  v7 = [v6 animationForKey:@"NTKAlaskanChronoButtonAnimation"];

  if (v7)
  {
    v8 = [(NTKAlaskanChronoButton *)self imageView];
    v9 = [v8 layer];
    [v9 removeAnimationForKey:@"NTKAlaskanChronoButtonAnimation"];
  }

  if (v3)
  {
    v10 = 0.3;
  }

  else
  {
    v10 = 0.2;
  }

  if (v3)
  {
    v11 = &off_3ADE0;
  }

  else
  {
    v11 = &off_3ADF0;
  }

  if (v3)
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

  [v13 setRemovedOnCompletion:!v3];
  [v13 setFillMode:kCAFillModeForwards];
  [v13 setFromValue:v12];
  [v13 setToValue:v11];
  [v13 setDuration:v10];
  v15 = [(NTKAlaskanChronoButton *)self imageView];
  v16 = [v15 layer];
  [v16 addAnimation:v13 forKey:@"NTKAlaskanChronoButtonAnimation"];
}

@end