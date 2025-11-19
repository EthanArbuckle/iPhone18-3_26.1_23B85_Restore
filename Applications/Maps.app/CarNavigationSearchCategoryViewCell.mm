@interface CarNavigationSearchCategoryViewCell
- (CarNavigationSearchCategoryViewCell)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CarNavigationSearchCategoryViewCell

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = CarNavigationSearchCategoryViewCell;
  [(CarNavigationSearchCategoryViewCell *)&v12 setHighlighted:?];
  if (v3)
  {
    CGAffineTransformMakeScale(&v11, 0.949999988, 0.949999988);
    imageView = self->_imageView;
    v8 = *&v11.a;
    v9 = *&v11.c;
    v6 = *&v11.tx;
  }

  else
  {
    imageView = self->_imageView;
    v7 = *&CGAffineTransformIdentity.c;
    v8 = *&CGAffineTransformIdentity.a;
    v9 = v7;
    v6 = *&CGAffineTransformIdentity.tx;
  }

  v10 = v6;
  [(UIImageView *)imageView setTransform:&v8];
}

- (CarNavigationSearchCategoryViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = CarNavigationSearchCategoryViewCell;
  v3 = [(CarNavigationSearchCategoryViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(CarNavigationSearchCategoryViewCell *)v3 setBackgroundColor:v4];
    v5 = [(CarNavigationSearchCategoryViewCell *)v3 contentView];
    [v5 setBackgroundColor:v4];

    v6 = [UIImageView alloc];
    [(CarNavigationSearchCategoryViewCell *)v3 bounds];
    v7 = [v6 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v7;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(UIImageView *)v3->_imageView setContentMode:1];
    v9 = [(CarNavigationSearchCategoryViewCell *)v3 contentView];
    [v9 addSubview:v3->_imageView];
  }

  return v3;
}

@end