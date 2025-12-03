@interface BalloonPlaceholderView
+ (id)placeholderImage;
- (BalloonPlaceholderView)init;
- (void)layoutSubviews;
- (void)setBackgroundImage:(id)image;
@end

@implementation BalloonPlaceholderView

+ (id)placeholderImage
{
  if (qword_2E7D8 != -1)
  {
    sub_1408C();
  }

  v3 = qword_2E7D0;

  return v3;
}

- (BalloonPlaceholderView)init
{
  v9.receiver = self;
  v9.super_class = BalloonPlaceholderView;
  v2 = [(BalloonPlaceholderView *)&v9 init];
  if (v2)
  {
    v3 = +[UIColor blackColor];
    [(BalloonPlaceholderView *)v2 setBackgroundColor:v3];

    layer = [(BalloonPlaceholderView *)v2 layer];
    [layer setMasksToBounds:1];

    v5 = objc_alloc_init(UIImageView);
    placeholderImageView = v2->_placeholderImageView;
    v2->_placeholderImageView = v5;

    [(BalloonPlaceholderView *)v2 addSubview:v2->_placeholderImageView];
    v7 = v2;
  }

  return v2;
}

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_backgroundImage, image);
  placeholderImageView = self->_placeholderImageView;
  if (self->_backgroundImage)
  {
    [(UIImageView *)self->_placeholderImageView setImage:imageCopy];
    [(UIImageView *)self->_placeholderImageView setContentMode:2];
    [(UIImageView *)self->_placeholderImageView setTintColor:0];
  }

  else
  {
    v6 = +[BalloonPlaceholderView placeholderImage];
    [(UIImageView *)placeholderImageView setImage:v6];

    [(UIImageView *)self->_placeholderImageView setContentMode:4];
    v7 = self->_placeholderImageView;
    v8 = +[UIColor lightGrayColor];
    [(UIImageView *)v7 setTintColor:v8];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = BalloonPlaceholderView;
  [(BalloonPlaceholderView *)&v4 layoutSubviews];
  placeholderImageView = self->_placeholderImageView;
  [(BalloonPlaceholderView *)self bounds];
  [(UIImageView *)placeholderImageView setFrame:?];
}

@end