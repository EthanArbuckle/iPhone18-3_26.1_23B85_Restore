@interface MTChevronView
+ (id)chevronImage;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTChevronView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MTChevronView

+ (id)chevronImage
{
  if (qword_100583D58 != -1)
  {
    sub_1003B2D00();
  }

  v3 = qword_100583D50;

  return v3;
}

- (MTChevronView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MTChevronView;
  v3 = [(MTChevronView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    chevronImage = [objc_opt_class() chevronImage];
    v5 = [[UIImageView alloc] initWithImage:chevronImage];
    [(MTChevronView *)v3 setImageView:v5];

    imageView = [(MTChevronView *)v3 imageView];
    [imageView sizeToFit];

    imageView2 = [(MTChevronView *)v3 imageView];
    [(MTChevronView *)v3 addSubview:imageView2];
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTChevronView;
  [(MTChevronView *)&v13 layoutSubviews];
  imageView = [(MTChevronView *)self imageView];
  [imageView bounds];
  [(MTChevronView *)self bounds];
  CGRectCenterRectInRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  imageView2 = [(MTChevronView *)self imageView];
  [imageView2 setFrame:{v5, v7, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  imageView = [(MTChevronView *)self imageView];
  [imageView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end