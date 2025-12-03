@interface BKPageThumbnailView
- (BKPageThumbnailView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setPageNumber:(int64_t)number;
- (void)setPageTitle:(id)title;
- (void)setShowsPageNumber:(BOOL)number;
@end

@implementation BKPageThumbnailView

- (BKPageThumbnailView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = BKPageThumbnailView;
  v3 = [(BKPageThumbnailView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  image = [(BKPageThumbnailView *)self image];

  if (image)
  {
    image2 = [(BKPageThumbnailView *)self image];
    [image2 size];
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

- (void)setShowsPageNumber:(BOOL)number
{
  if (self->_showsPageNumber != number)
  {
    self->_showsPageNumber = number;
    [(BKPageThumbnailView *)self setNeedsLayout];
  }
}

- (void)setPageNumber:(int64_t)number
{
  if (self->_pageNumber != number)
  {
    pageTitle = self->_pageTitle;
    self->_pageTitle = 0;

    self->_pageNumber = number;

    [(BKPageThumbnailView *)self setNeedsLayout];
  }
}

- (void)setPageTitle:(id)title
{
  titleCopy = title;
  if (self->_pageTitle != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_pageTitle, title);
    [(BKPageThumbnailView *)self setNeedsLayout];
    titleCopy = v6;
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(BKPageThumbnailView *)self imageView];
  [imageView setImage:imageCopy];

  [(BKPageThumbnailView *)self setNeedsLayout];
}

@end