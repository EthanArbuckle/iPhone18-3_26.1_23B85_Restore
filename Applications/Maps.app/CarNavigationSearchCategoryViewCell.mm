@interface CarNavigationSearchCategoryViewCell
- (CarNavigationSearchCategoryViewCell)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CarNavigationSearchCategoryViewCell

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v12.receiver = self;
  v12.super_class = CarNavigationSearchCategoryViewCell;
  [(CarNavigationSearchCategoryViewCell *)&v12 setHighlighted:?];
  if (highlightedCopy)
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

- (CarNavigationSearchCategoryViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = CarNavigationSearchCategoryViewCell;
  v3 = [(CarNavigationSearchCategoryViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(CarNavigationSearchCategoryViewCell *)v3 setBackgroundColor:v4];
    contentView = [(CarNavigationSearchCategoryViewCell *)v3 contentView];
    [contentView setBackgroundColor:v4];

    v6 = [UIImageView alloc];
    [(CarNavigationSearchCategoryViewCell *)v3 bounds];
    v7 = [v6 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v7;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(UIImageView *)v3->_imageView setContentMode:1];
    contentView2 = [(CarNavigationSearchCategoryViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_imageView];
  }

  return v3;
}

@end