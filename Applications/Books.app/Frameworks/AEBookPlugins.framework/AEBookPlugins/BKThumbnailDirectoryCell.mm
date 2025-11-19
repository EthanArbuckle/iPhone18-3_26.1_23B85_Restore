@interface BKThumbnailDirectoryCell
- (BKPageThumbnailView)pageView;
- (BKThumbnailDirectoryCell)initWithFrame:(CGRect)a3;
- (CGRect)contentRectForBounds:(CGRect)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHasRibbon:(BOOL)a3;
@end

@implementation BKThumbnailDirectoryCell

- (BKThumbnailDirectoryCell)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = BKThumbnailDirectoryCell;
  v3 = [(BKThumbnailDirectoryCell *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v6 = 1.0 / v5;

    v7 = [(BKThumbnailDirectoryCell *)v3 layer];
    [v7 setBorderWidth:v6];

    v8 = +[UIColor bc_booksQuaternaryLabelColor];
    v9 = [v8 CGColor];
    v10 = [(BKThumbnailDirectoryCell *)v3 layer];
    [v10 setBorderColor:v9];

    v11 = [(BKThumbnailDirectoryCell *)v3 layer];
    [v11 setMasksToBounds:1];

    v12 = [(BKThumbnailDirectoryCell *)v3 layer];
    [v12 setCornerRadius:6.0];

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
  v4 = [v3 CGColor];
  v5 = [(BKThumbnailDirectoryCell *)self layer];
  [v5 setBorderColor:v4];
}

- (CGRect)contentRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  pageView = self->_pageView;
  if (pageView)
  {
    [(BKPageThumbnailView *)pageView sizeThatFits:a3.size.width, a3.size.height];
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

- (void)setHasRibbon:(BOOL)a3
{
  if (self->_hasRibbon != a3)
  {
    self->_hasRibbon = a3;
    [(UIImageView *)self->_ribbonView setHidden:!a3];

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
  v3 = [(BKThumbnailDirectoryCell *)self contentView];
  [v3 bounds];
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

      v24 = [(BKThumbnailDirectoryCell *)self contentView];
      [v24 addSubview:self->_ribbonView];

      ribbonView = self->_ribbonView;
    }

    v25 = [(UIImageView *)ribbonView image];

    if (v25)
    {
      v26 = [(UIImageView *)self->_ribbonView image];
      [v26 size];
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
  v34 = [v33 CGPath];
  v35 = [(BKThumbnailDirectoryCell *)self layer];
  [v35 setShadowPath:v34];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v8 = [UIColor bc_booksQuaternaryLabelColor:a3];
  v5 = v8;
  v6 = [v8 CGColor];
  v7 = [(BKThumbnailDirectoryCell *)self layer];
  [v7 setBorderColor:v6];
}

@end