@interface BKSpreadThumbnailView
- (BKPageThumbnailView)leftPageView;
- (BKPageThumbnailView)rightPageView;
- (CGSize)pageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)gutter;
- (void)layoutSubviews;
@end

@implementation BKSpreadThumbnailView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = BKSpreadThumbnailView;
  [(BKSpreadThumbnailView *)&v4 layoutSubviews];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_B950C;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  [UIView performWithoutAnimation:v3];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if ([(BKPageThumbnailView *)self->_leftPageView pageNumber:fits.width]!= 0x7FFFFFFFFFFFFFFFLL && [(BKPageThumbnailView *)self->_rightPageView pageNumber]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BKSpreadThumbnailView *)self pageSize];
    width = v7 + v7;
    goto LABEL_8;
  }

  if ([(BKPageThumbnailView *)self->_leftPageView pageNumber]!= 0x7FFFFFFFFFFFFFFFLL || [(BKPageThumbnailView *)self->_rightPageView pageNumber]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BKSpreadThumbnailView *)self pageSize];
    width = v6;
LABEL_8:
    [(BKSpreadThumbnailView *)self pageSize];
    goto LABEL_9;
  }

  width = CGSizeZero.width;
  height = CGSizeZero.height;
LABEL_9:
  v8 = width;
  result.height = height;
  result.width = v8;
  return result;
}

- (BKPageThumbnailView)leftPageView
{
  leftPageView = self->_leftPageView;
  if (!leftPageView)
  {
    v4 = [[BKPageThumbnailView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_leftPageView;
    self->_leftPageView = v4;

    [(BKPageThumbnailView *)self->_leftPageView setShowsPageNumber:0];
    [(BKSpreadThumbnailView *)self insertSubview:self->_leftPageView atIndex:0];
    leftPageView = self->_leftPageView;
  }

  return leftPageView;
}

- (BKPageThumbnailView)rightPageView
{
  rightPageView = self->_rightPageView;
  if (!rightPageView)
  {
    v4 = [[BKPageThumbnailView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_rightPageView;
    self->_rightPageView = v4;

    [(BKPageThumbnailView *)self->_rightPageView setShowsPageNumber:0];
    [(BKSpreadThumbnailView *)self insertSubview:self->_rightPageView atIndex:0];
    rightPageView = self->_rightPageView;
  }

  return rightPageView;
}

- (id)gutter
{
  gutter = self->_gutter;
  if (!gutter)
  {
    v4 = [UIImage imageNamed:@"pb-toc-spread-gradient"];
    v5 = [[UIImageView alloc] initWithImage:v4];
    v6 = self->_gutter;
    self->_gutter = v5;

    [(UIImageView *)self->_gutter setContentMode:0];
    [(BKSpreadThumbnailView *)self addSubview:self->_gutter];

    gutter = self->_gutter;
  }

  return gutter;
}

- (CGSize)pageSize
{
  width = self->_pageSize.width;
  height = self->_pageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end