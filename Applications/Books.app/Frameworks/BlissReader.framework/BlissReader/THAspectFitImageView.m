@interface THAspectFitImageView
- (CGSize)intrinsicContentSize;
- (THAspectFitImageView)initWithFrame:(CGRect)a3;
@end

@implementation THAspectFitImageView

- (THAspectFitImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = THAspectFitImageView;
  v3 = [(THAspectFitImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(THAspectFitImageView *)v3 setContentMode:1];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v16.receiver = self;
  v16.super_class = THAspectFitImageView;
  [(THAspectFitImageView *)&v16 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(THAspectFitImageView *)self image];
  if (v7)
  {
    [v7 size];
    v9 = v8;
    v11 = v10;
    [(THAspectFitImageView *)self preferredMaxLayoutHeight];
    v13 = v12 / v11;
    v4 = ceil(v9 * v13);
    v6 = ceil(v11 * v13);
  }

  v14 = v4;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

@end