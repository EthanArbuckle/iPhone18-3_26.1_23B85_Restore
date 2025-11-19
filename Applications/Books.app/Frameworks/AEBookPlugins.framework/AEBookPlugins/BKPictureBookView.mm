@interface BKPictureBookView
+ (CGSize)actualSizeForContentSize:(CGSize)result drawsSpine:(BOOL)a4;
- (BKPictureBookView)initWithFrame:(CGRect)a3;
- (CGSize)actualSize;
- (CGSize)contentSize;
- (CGSize)idealSinglePageSize;
- (id)gutter;
- (void)_updateShadowPath;
- (void)calculateFramesAtScale:(double)a3 contentFrame:(CGRect *)a4 leftContentFrame:(CGRect *)a5 rightContentFrame:(CGRect *)a6;
- (void)layoutSubviews;
- (void)setContentSize:(CGSize)a3;
- (void)setDrawsSpine:(BOOL)a3;
- (void)setLeftContentView:(id)a3;
- (void)setRightContentView:(id)a3;
@end

@implementation BKPictureBookView

- (BKPictureBookView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = BKPictureBookView;
  v3 = [(BKPictureBookView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKPictureBookView *)v3 setScale:1.0];
    v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    contentView = v4->_contentView;
    v4->_contentView = v5;

    v7 = +[UIColor whiteColor];
    [(UIView *)v4->_contentView setBackgroundColor:v7];

    [(UIView *)v4->_contentView setOpaque:1];
    [(UIView *)v4->_contentView setClipsToBounds:1];
    [(BKPictureBookView *)v4 addSubview:v4->_contentView];
  }

  return v4;
}

- (void)calculateFramesAtScale:(double)a3 contentFrame:(CGRect *)a4 leftContentFrame:(CGRect *)a5 rightContentFrame:(CGRect *)a6
{
  [(BKPictureBookView *)self actualSize];
  v12 = v11 * a3;
  [(BKPictureBookView *)self actualSize];
  v41.size.height = v13 * a3;
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v12;
  v42 = CGRectIntegral(v41);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  [(BKPictureBookView *)self idealSinglePageSize];
  v20 = CGSizeZero.width == v19 && CGSizeZero.height == v18;
  v21 = height;
  v22 = width;
  v23 = y;
  v24 = x;
  if (!v20)
  {
    [(BKPictureBookView *)self idealSinglePageSize];
    v22 = v25 + v25;
    [(BKPictureBookView *)self idealSinglePageSize];
    v21 = v26;
    v23 = 0.0;
    v24 = 0.0;
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v27 = v22;
  v28 = CGRectContainsRect(v43, *&v24);
  v29 = height;
  v30 = width;
  v31 = y;
  v32 = x;
  if (v28)
  {
    [(BKPictureBookView *)self bounds:x];
    CGRectCenterRectInRect();
  }

  v37 = v31;
  v38 = v30;
  v39 = v29;
  v40 = v32;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width * 0.5;
  v44.size.height = height;
  v45 = CGRectIntegral(v44);
  v33 = v45.origin.x;
  v34 = v45.origin.y;
  v35 = v45.size.width;
  v36 = v45.size.height;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v46.origin.x = CGRectGetMidX(v45);
  v46.origin.y = y;
  v46.size.width = width * 0.5;
  v46.size.height = height;
  v47 = CGRectIntegral(v46);
  a4->origin.x = v40;
  a4->origin.y = v37;
  a4->size.width = v38;
  a4->size.height = v39;
  a5->origin.x = v33;
  a5->origin.y = v34;
  a5->size.width = v35;
  a5->size.height = v36;
  *a6 = v47;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = BKPictureBookView;
  [(BKPictureBookView *)&v18 layoutSubviews];
  [(BKPictureBookView *)self scale];
  v4 = v3;
  size = CGRectZero.size;
  v17.origin = CGRectZero.origin;
  v17.size = size;
  origin = v17.origin;
  v16 = size;
  v13 = v17.origin;
  v14 = size;
  [(BKPictureBookView *)self calculateFramesAtScale:&v17 contentFrame:&origin leftContentFrame:&v13 rightContentFrame:v3];
  [(UIView *)self->_contentView setFrame:*&v17.origin, *&v17.size];
  [(UIView *)self->_leftContentView setFrame:origin, v16];
  [(UIView *)self->_rightContentView setFrame:v13, v14];
  if ([(BKPictureBookView *)self drawsSpine])
  {
    v6 = [(BKPictureBookView *)self gutter];
    v7 = [v6 image];
    [v7 size];
    v9 = v8;

    v10 = v4 * v9;
    v11 = CGRectGetMidX(v17) + v10 * -0.5;
    MinY = CGRectGetMinY(v17);
    [v6 setFrame:{v11, MinY, v10, CGRectGetHeight(v17)}];
  }

  [(BKPictureBookView *)self _updateShadowPath];
}

- (void)setContentSize:(CGSize)a3
{
  if (self->_contentSize.width != a3.width || self->_contentSize.height != a3.height)
  {
    self->_contentSize = a3;
    [(BKPictureBookView *)self setNeedsLayout];
  }
}

- (CGSize)actualSize
{
  v3 = objc_opt_class();
  [(BKPictureBookView *)self contentSize];
  v5 = v4;
  v7 = v6;
  v8 = [(BKPictureBookView *)self drawsSpine];

  [v3 actualSizeForContentSize:v8 drawsSpine:{v5, v7}];
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)actualSizeForContentSize:(CGSize)result drawsSpine:(BOOL)a4
{
  v4 = result.width + result.width;
  result.width = v4;
  return result;
}

- (void)setLeftContentView:(id)a3
{
  v5 = a3;
  leftContentView = self->_leftContentView;
  if (leftContentView != v5)
  {
    v8 = v5;
    v7 = [(UIView *)leftContentView superview];

    if (!v8 || v7 == self)
    {
      [(UIView *)self->_leftContentView removeFromSuperview];
      objc_storeStrong(&self->_leftContentView, a3);
      if (!v8)
      {
LABEL_7:
        leftContentView = [(BKPictureBookView *)self setNeedsLayout];
        v5 = v8;
        goto LABEL_8;
      }
    }

    else
    {
      objc_storeStrong(&self->_leftContentView, a3);
    }

    [(UIView *)self->_contentView addSubview:self->_leftContentView];
    goto LABEL_7;
  }

LABEL_8:

  _objc_release_x1(leftContentView, v5);
}

- (void)setRightContentView:(id)a3
{
  v5 = a3;
  rightContentView = self->_rightContentView;
  if (rightContentView != v5)
  {
    v8 = v5;
    v7 = [(UIView *)rightContentView superview];

    if (!v8 || v7 == self)
    {
      [(UIView *)self->_rightContentView removeFromSuperview];
      objc_storeStrong(&self->_rightContentView, a3);
      if (!v8)
      {
LABEL_7:
        rightContentView = [(BKPictureBookView *)self setNeedsLayout];
        v5 = v8;
        goto LABEL_8;
      }
    }

    else
    {
      objc_storeStrong(&self->_rightContentView, a3);
    }

    [(UIView *)self->_contentView addSubview:self->_rightContentView];
    goto LABEL_7;
  }

LABEL_8:

  _objc_release_x1(rightContentView, v5);
}

- (void)_updateShadowPath
{
  if ([(BKPictureBookView *)self drawsShadow])
  {
    [(UIView *)self->_contentView frame];
    v3 = [UIBezierPath bezierPathWithRect:?];
    v4 = [v3 CGPath];
    v5 = [(BKPictureBookView *)self layer];
    [v5 setShadowPath:v4];

    [(BKPictureBookView *)self scale];
    v7 = v6 * 2.8;
    v8 = [(BKPictureBookView *)self layer];
    [v8 setShadowOffset:{0.0, v7}];

    v9 = [(BKPictureBookView *)self layer];
    LODWORD(v10) = 1051931443;
    [v9 setShadowOpacity:v10];

    [(BKPictureBookView *)self scale];
    v12 = v11 * 8.5;
  }

  else
  {
    v13 = [(BKPictureBookView *)self layer];
    [v13 shadowOpacity];
    v15 = v14;

    if (v15 <= 0.0)
    {
      return;
    }

    v16 = [(BKPictureBookView *)self layer];
    [v16 setShadowPath:0];

    height = CGSizeZero.height;
    v18 = [(BKPictureBookView *)self layer];
    [v18 setShadowOffset:{CGSizeZero.width, height}];

    v19 = [(BKPictureBookView *)self layer];
    [v19 setShadowOpacity:0.0];

    v12 = 0.0;
  }

  v20 = [(BKPictureBookView *)self layer];
  [v20 setShadowRadius:v12];
}

- (void)setDrawsSpine:(BOOL)a3
{
  if (self->_drawsSpine != a3)
  {
    self->_drawsSpine = a3;
    if (a3)
    {
      v6 = [(BKPictureBookView *)self gutter];
      [(BKPictureBookView *)self addSubview:v6];
      gutter = v6;
    }

    else
    {
      [(UIImageView *)self->_gutter removeFromSuperview];
      gutter = self->_gutter;
      self->_gutter = 0;
    }
  }
}

- (id)gutter
{
  gutter = self->_gutter;
  if (!gutter)
  {
    v4 = [UIImageView alloc];
    v5 = [UIImage imageNamed:@"PictureBookSpine"];
    v6 = [v4 initWithImage:v5];
    v7 = self->_gutter;
    self->_gutter = v6;

    gutter = self->_gutter;
  }

  return gutter;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)idealSinglePageSize
{
  width = self->_idealSinglePageSize.width;
  height = self->_idealSinglePageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end