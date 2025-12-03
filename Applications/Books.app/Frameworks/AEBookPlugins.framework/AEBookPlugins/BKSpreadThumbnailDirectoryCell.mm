@interface BKSpreadThumbnailDirectoryCell
- (BKSpreadThumbnailView)spreadView;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BKSpreadThumbnailDirectoryCell

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = BKSpreadThumbnailDirectoryCell;
  [(BKThumbnailDirectoryCell *)&v12 layoutSubviews];
  contentView = [(BKSpreadThumbnailDirectoryCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(BKSpreadThumbnailDirectoryCell *)self contentRectForBounds:v5, v7, v9, v11];
  [(BKSpreadThumbnailView *)self->_spreadView setFrame:?];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = BKSpreadThumbnailDirectoryCell;
  [(BKThumbnailDirectoryCell *)&v7 prepareForReuse];
  leftPageView = [(BKSpreadThumbnailView *)self->_spreadView leftPageView];
  [leftPageView setImage:0];

  leftPageView2 = [(BKSpreadThumbnailView *)self->_spreadView leftPageView];
  [leftPageView2 setPageNumber:0x7FFFFFFFFFFFFFFFLL];

  rightPageView = [(BKSpreadThumbnailView *)self->_spreadView rightPageView];
  [rightPageView setImage:0];

  rightPageView2 = [(BKSpreadThumbnailView *)self->_spreadView rightPageView];
  [rightPageView2 setPageNumber:0x7FFFFFFFFFFFFFFFLL];
}

- (CGRect)contentRectForBounds:(CGRect)bounds
{
  [(BKSpreadThumbnailDirectoryCell *)self bounds:bounds.origin.x];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  leftPageView = [(BKSpreadThumbnailView *)self->_spreadView leftPageView];
  pageNumber = [leftPageView pageNumber];

  rightPageView = [(BKSpreadThumbnailView *)self->_spreadView rightPageView];
  pageNumber2 = [rightPageView pageNumber];

  if (pageNumber == 0x7FFFFFFFFFFFFFFFLL && pageNumber2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else if (pageNumber == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    width = CGRectGetWidth(v21) * 0.5;
    x = x + width;
  }

  else if (pageNumber2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    width = CGRectGetWidth(v22) * 0.5;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BKSpreadThumbnailView)spreadView
{
  spreadView = self->_spreadView;
  if (!spreadView)
  {
    v4 = [[BKSpreadThumbnailView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_spreadView;
    self->_spreadView = v4;

    [(BKSpreadThumbnailDirectoryCell *)self addSubview:self->_spreadView];
    spreadView = self->_spreadView;
  }

  return spreadView;
}

@end