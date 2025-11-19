@interface BKPageThumbnailView
- (BKPageThumbnailView)initWithFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setPageNumber:(int64_t)a3;
- (void)setPageTitle:(id)a3;
- (void)setShowsPageNumber:(BOOL)a3;
@end

@implementation BKPageThumbnailView

- (BKPageThumbnailView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = BKPageThumbnailView;
  v3 = [(BKPageThumbnailView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_pageNumber = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v4->_imageView;
    v4->_imageView = v9;

    [(UIImageView *)v4->_imageView setOpaque:1];
    [(UIImageView *)v4->_imageView setContentMode:0];
    [(UIImageView *)v4->_imageView setClearsContextBeforeDrawing:0];
    [(BKPageThumbnailView *)v4 addSubview:v4->_imageView];
    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    pageLabel = v4->_pageLabel;
    v4->_pageLabel = v11;

    v13 = [UIFont boldSystemFontOfSize:24.0];
    [(UILabel *)v4->_pageLabel setFont:v13];

    [(UILabel *)v4->_pageLabel setTextAlignment:1];
    v14 = +[UIColor darkGrayColor];
    [(UILabel *)v4->_pageLabel setTextColor:v14];

    v15 = +[UIColor clearColor];
    [(UILabel *)v4->_pageLabel setBackgroundColor:v15];

    [(BKPageThumbnailView *)v4 addSubview:v4->_pageLabel];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = BKPageThumbnailView;
  [(BKPageThumbnailView *)&v4 layoutSubviews];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_B8B1C;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  [UIView performWithoutAnimation:v3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(BKPageThumbnailView *)self image];

  if (v6)
  {
    v7 = [(BKPageThumbnailView *)self image];
    [v7 size];
    CGSizeScaledToFitInSize();
    width = v8;
    height = v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setShowsPageNumber:(BOOL)a3
{
  if (self->_showsPageNumber != a3)
  {
    self->_showsPageNumber = a3;
    [(BKPageThumbnailView *)self setNeedsLayout];
  }
}

- (void)setPageNumber:(int64_t)a3
{
  if (self->_pageNumber != a3)
  {
    pageTitle = self->_pageTitle;
    self->_pageTitle = 0;

    self->_pageNumber = a3;

    [(BKPageThumbnailView *)self setNeedsLayout];
  }
}

- (void)setPageTitle:(id)a3
{
  v5 = a3;
  if (self->_pageTitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pageTitle, a3);
    [(BKPageThumbnailView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(BKPageThumbnailView *)self imageView];
  [v5 setImage:v4];

  [(BKPageThumbnailView *)self setNeedsLayout];
}

@end