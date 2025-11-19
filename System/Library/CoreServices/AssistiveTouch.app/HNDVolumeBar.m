@interface HNDVolumeBar
- (CGSize)intrinsicContentSize;
- (HNDVolumeBar)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation HNDVolumeBar

- (HNDVolumeBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HNDVolumeBar;
  v3 = [(HNDView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = +[UIColor clearColor];
  [(HNDVolumeBar *)v3 setBackgroundColor:v4];

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  for (i = 0; i != 16; ++i)
  {
    v5 = i * 8.0;
    v6 = +[UIBezierPath bezierPath];
    [v6 moveToPoint:{v5, 0.0}];
    [v6 addLineToPoint:{v5, 5.0}];
    [v6 addLineToPoint:{v5 + 7.0, 5.0}];
    [v6 addLineToPoint:{v5 + 7.0, 0.0}];
    [v6 addLineToPoint:{v5, 0.0}];
    progress = self->_progress;
    if (progress <= vcvts_n_f32_u64(i, 4uLL) || progress <= 0.0)
    {
      v9 = +[UIColor blackColor];
      [v9 setFill];

      [v6 fillWithBlendMode:26 alpha:0.3];
    }

    else
    {
      v8 = +[UIColor whiteColor];
      [v8 setFill];

      [v6 fill];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 127.0;
  v3 = 5.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end