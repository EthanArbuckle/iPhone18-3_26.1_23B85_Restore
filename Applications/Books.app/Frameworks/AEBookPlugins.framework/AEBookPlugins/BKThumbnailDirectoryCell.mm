@interface BKThumbnailDirectoryCell
- (BKPageThumbnailView)pageView;
- (BKThumbnailDirectoryCell)initWithFrame:(CGRect)frame;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHasRibbon:(BOOL)ribbon;
@end

@implementation BKThumbnailDirectoryCell

- (BKThumbnailDirectoryCell)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = BKThumbnailDirectoryCell;
  v3 = [(BKThumbnailDirectoryCell *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v6 = 1.0 / v5;

    layer = [(BKThumbnailDirectoryCell *)v3 layer];
    [layer setBorderWidth:v6];

    v8 = +[UIColor bc_booksQuaternaryLabelColor];
    cGColor = [v8 CGColor];
    layer2 = [(BKThumbnailDirectoryCell *)v3 layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(BKThumbnailDirectoryCell *)v3 layer];
    [layer3 setMasksToBounds:1];

    layer4 = [(BKThumbnailDirectoryCell *)v3 layer];
    [layer4 setCornerRadius:6.0];

    [(BKThumbnailDirectoryCell *)v3 setClipsToBounds:1];
    v13 = +[UITraitCollection bc_allAPITraits];
    v14 = [(BKThumbnailDirectoryCell *)v3 registerForTraitChanges:v13 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v3;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = BKThumbnailDirectoryCell;
  [(BKThumbnailDirectoryCell *)&v6 prepareForReuse];
  [(BKThumbnailDirectoryCell *)self setShowSelectionView:1];
  [(BKThumbnailDirectoryCell *)self setHasRibbon:0];
  [(BKPageThumbnailView *)self->_pageView setImage:0];
  [(BKPageThumbnailView *)self->_pageView setPageNumber:0x7FFFFFFFFFFFFFFFLL];
  v3 = +[UIColor bc_booksQuaternaryLabelColor];
  cGColor = [v3 CGColor];
  layer = [(BKThumbnailDirectoryCell *)self layer];
  [layer setBorderColor:cGColor];
}

- (CGRect)contentRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pageView = self->_pageView;
  if (pageView)
  {
    [(BKPageThumbnailView *)pageView sizeThatFits:bounds.size.width, bounds.size.height];
    CGRectFitRectInRect();
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setHasRibbon:(BOOL)ribbon
{
  if (self->_hasRibbon != ribbon)
  {
    self->_hasRibbon = ribbon;
    [(UIImageView *)self->_ribbonView setHidden:!ribbon];

    [(BKThumbnailDirectoryCell *)self setNeedsLayout];
  }
}

- (BKPageThumbnailView)pageView
{
  pageView = self->_pageView;
  if (!pageView)
  {
    v4 = [[BKPageThumbnailView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_pageView;
    self->_pageView = v4;

    [(BKThumbnailDirectoryCell *)self addSubview:self->_pageView];
    pageView = self->_pageView;
  }

  return pageView;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = BKThumbnailDirectoryCell;
  [(BKThumbnailDirectoryCell *)&v36 layoutSubviews];
  contentView = [(BKThumbnailDirectoryCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(BKThumbnailDirectoryCell *)self contentRectForBounds:v5, v7, v9, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([(BKThumbnailDirectoryCell *)self hasRibbon])
  {
    ribbonView = self->_ribbonView;
    if (!ribbonView)
    {
      v21 = [UIImage imageNamed:@"ib_tb_icon_bookmark"];
      v22 = [[UIImageView alloc] initWithImage:v21];
      v23 = self->_ribbonView;
      self->_ribbonView = v22;

      contentView2 = [(BKThumbnailDirectoryCell *)self contentView];
      [contentView2 addSubview:self->_ribbonView];

      ribbonView = self->_ribbonView;
    }

    image = [(UIImageView *)ribbonView image];

    if (image)
    {
      image2 = [(UIImageView *)self->_ribbonView image];
      [image2 size];
      v28 = v27;
      v30 = v29;

      if (isRetina())
      {
        v31 = -1.5;
      }

      else
      {
        v31 = -2.0;
      }

      v37.origin.x = v13;
      v37.origin.y = v15;
      v37.size.width = v17;
      v37.size.height = v19;
      v32 = CGRectGetMaxX(v37) - v28 + -8.0;
      v38.origin.x = v13;
      v38.origin.y = v15;
      v38.size.width = v17;
      v38.size.height = v19;
      [(UIImageView *)self->_ribbonView setFrame:v32, v31 + CGRectGetMinY(v38), v28, v30];
    }
  }

  [(BKPageThumbnailView *)self->_pageView setFrame:v13, v15, v17, v19];
  v33 = [UIBezierPath bezierPathWithRect:v13, v15, v17, v19];
  cGPath = [v33 CGPath];
  layer = [(BKThumbnailDirectoryCell *)self layer];
  [layer setShadowPath:cGPath];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v8 = [UIColor bc_booksQuaternaryLabelColor:change];
  v5 = v8;
  cGColor = [v8 CGColor];
  layer = [(BKThumbnailDirectoryCell *)self layer];
  [layer setBorderColor:cGColor];
}

@end