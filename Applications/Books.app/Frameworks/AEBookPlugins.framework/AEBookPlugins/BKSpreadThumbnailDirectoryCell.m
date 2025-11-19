@interface BKSpreadThumbnailDirectoryCell
- (BKSpreadThumbnailView)spreadView;
- (CGRect)contentRectForBounds:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BKSpreadThumbnailDirectoryCell

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = BKSpreadThumbnailDirectoryCell;
  [(BKThumbnailDirectoryCell *)&v12 layoutSubviews];
  v3 = [(BKSpreadThumbnailDirectoryCell *)self contentView];
  [v3 bounds];
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
  v3 = [(BKSpreadThumbnailView *)self->_spreadView leftPageView];
  [v3 setImage:0];

  v4 = [(BKSpreadThumbnailView *)self->_spreadView leftPageView];
  [v4 setPageNumber:0x7FFFFFFFFFFFFFFFLL];

  v5 = [(BKSpreadThumbnailView *)self->_spreadView rightPageView];
  [v5 setImage:0];

  v6 = [(BKSpreadThumbnailView *)self->_spreadView rightPageView];
  [v6 setPageNumber:0x7FFFFFFFFFFFFFFFLL];
}

- (CGRect)contentRectForBounds:(CGRect)a3
{
  [(BKSpreadThumbnailDirectoryCell *)self bounds:a3.origin.x];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v12 = [(BKSpreadThumbnailView *)self->_spreadView leftPageView];
  v13 = [v12 pageNumber];

  v14 = [(BKSpreadThumbnailView *)self->_spreadView rightPageView];
  v15 = [v14 pageNumber];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL && v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    width = CGRectGetWidth(v21) * 0.5;
    x = x + width;
  }

  else if (v15 == 0x7FFFFFFFFFFFFFFFLL)
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