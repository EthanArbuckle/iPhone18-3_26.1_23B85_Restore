@interface BKPictureBookView
+ (CGSize)actualSizeForContentSize:(CGSize)result drawsSpine:(BOOL)spine;
- (BKPictureBookView)initWithFrame:(CGRect)frame;
- (CGSize)actualSize;
- (CGSize)contentSize;
- (CGSize)idealSinglePageSize;
- (id)gutter;
- (void)_updateShadowPath;
- (void)calculateFramesAtScale:(double)scale contentFrame:(CGRect *)frame leftContentFrame:(CGRect *)contentFrame rightContentFrame:(CGRect *)rightContentFrame;
- (void)layoutSubviews;
- (void)setContentSize:(CGSize)size;
- (void)setDrawsSpine:(BOOL)spine;
- (void)setLeftContentView:(id)view;
- (void)setRightContentView:(id)view;
@end

@implementation BKPictureBookView

- (BKPictureBookView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = BKPictureBookView;
  v3 = [(BKPictureBookView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)calculateFramesAtScale:(double)scale contentFrame:(CGRect *)frame leftContentFrame:(CGRect *)contentFrame rightContentFrame:(CGRect *)rightContentFrame
{
  [(BKPictureBookView *)self actualSize];
  v12 = v11 * scale;
  [(BKPictureBookView *)self actualSize];
  v41.size.height = v13 * scale;
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
  frame->origin.x = v40;
  frame->origin.y = v37;
  frame->size.width = v38;
  frame->size.height = v39;
  contentFrame->origin.x = v33;
  contentFrame->origin.y = v34;
  contentFrame->size.width = v35;
  contentFrame->size.height = v36;
  *rightContentFrame = v47;
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
    gutter = [(BKPictureBookView *)self gutter];
    image = [gutter image];
    [image size];
    v9 = v8;

    v10 = v4 * v9;
    v11 = CGRectGetMidX(v17) + v10 * -0.5;
    MinY = CGRectGetMinY(v17);
    [gutter setFrame:{v11, MinY, v10, CGRectGetHeight(v17)}];
  }

  [(BKPictureBookView *)self _updateShadowPath];
}

- (void)setContentSize:(CGSize)size
{
  if (self->_contentSize.width != size.width || self->_contentSize.height != size.height)
  {
    self->_contentSize = size;
    [(BKPictureBookView *)self setNeedsLayout];
  }
}

- (CGSize)actualSize
{
  v3 = objc_opt_class();
  [(BKPictureBookView *)self contentSize];
  v5 = v4;
  v7 = v6;
  drawsSpine = [(BKPictureBookView *)self drawsSpine];

  [v3 actualSizeForContentSize:drawsSpine drawsSpine:{v5, v7}];
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)actualSizeForContentSize:(CGSize)result drawsSpine:(BOOL)spine
{
  v4 = result.width + result.width;
  result.width = v4;
  return result;
}

- (void)setLeftContentView:(id)view
{
  viewCopy = view;
  leftContentView = self->_leftContentView;
  if (leftContentView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(UIView *)leftContentView superview];

    if (!v8 || superview == self)
    {
      [(UIView *)self->_leftContentView removeFromSuperview];
      objc_storeStrong(&self->_leftContentView, view);
      if (!v8)
      {
LABEL_7:
        leftContentView = [(BKPictureBookView *)self setNeedsLayout];
        viewCopy = v8;
        goto LABEL_8;
      }
    }

    else
    {
      objc_storeStrong(&self->_leftContentView, view);
    }

    [(UIView *)self->_contentView addSubview:self->_leftContentView];
    goto LABEL_7;
  }

LABEL_8:

  _objc_release_x1(leftContentView, viewCopy);
}

- (void)setRightContentView:(id)view
{
  viewCopy = view;
  rightContentView = self->_rightContentView;
  if (rightContentView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(UIView *)rightContentView superview];

    if (!v8 || superview == self)
    {
      [(UIView *)self->_rightContentView removeFromSuperview];
      objc_storeStrong(&self->_rightContentView, view);
      if (!v8)
      {
LABEL_7:
        rightContentView = [(BKPictureBookView *)self setNeedsLayout];
        viewCopy = v8;
        goto LABEL_8;
      }
    }

    else
    {
      objc_storeStrong(&self->_rightContentView, view);
    }

    [(UIView *)self->_contentView addSubview:self->_rightContentView];
    goto LABEL_7;
  }

LABEL_8:

  _objc_release_x1(rightContentView, viewCopy);
}

- (void)_updateShadowPath
{
  if ([(BKPictureBookView *)self drawsShadow])
  {
    [(UIView *)self->_contentView frame];
    v3 = [UIBezierPath bezierPathWithRect:?];
    cGPath = [v3 CGPath];
    layer = [(BKPictureBookView *)self layer];
    [layer setShadowPath:cGPath];

    [(BKPictureBookView *)self scale];
    v7 = v6 * 2.8;
    layer2 = [(BKPictureBookView *)self layer];
    [layer2 setShadowOffset:{0.0, v7}];

    layer3 = [(BKPictureBookView *)self layer];
    LODWORD(v10) = 1051931443;
    [layer3 setShadowOpacity:v10];

    [(BKPictureBookView *)self scale];
    v12 = v11 * 8.5;
  }

  else
  {
    layer4 = [(BKPictureBookView *)self layer];
    [layer4 shadowOpacity];
    v15 = v14;

    if (v15 <= 0.0)
    {
      return;
    }

    layer5 = [(BKPictureBookView *)self layer];
    [layer5 setShadowPath:0];

    height = CGSizeZero.height;
    layer6 = [(BKPictureBookView *)self layer];
    [layer6 setShadowOffset:{CGSizeZero.width, height}];

    layer7 = [(BKPictureBookView *)self layer];
    [layer7 setShadowOpacity:0.0];

    v12 = 0.0;
  }

  layer8 = [(BKPictureBookView *)self layer];
  [layer8 setShadowRadius:v12];
}

- (void)setDrawsSpine:(BOOL)spine
{
  if (self->_drawsSpine != spine)
  {
    self->_drawsSpine = spine;
    if (spine)
    {
      gutter = [(BKPictureBookView *)self gutter];
      [(BKPictureBookView *)self addSubview:gutter];
      gutter = gutter;
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