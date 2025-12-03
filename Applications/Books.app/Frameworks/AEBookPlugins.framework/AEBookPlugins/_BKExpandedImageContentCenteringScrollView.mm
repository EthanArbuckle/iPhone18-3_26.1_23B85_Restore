@interface _BKExpandedImageContentCenteringScrollView
- (id)_bk_getDelegateZoomView;
- (void)centerContent;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
@end

@implementation _BKExpandedImageContentCenteringScrollView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _BKExpandedImageContentCenteringScrollView;
  [(_BKExpandedImageContentCenteringScrollView *)&v3 layoutSubviews];
  [(_BKExpandedImageContentCenteringScrollView *)self centerContent];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_BKExpandedImageContentCenteringScrollView *)self bounds];
  v9 = v8;
  v11 = v10;
  v18.receiver = self;
  v18.super_class = _BKExpandedImageContentCenteringScrollView;
  [(_BKExpandedImageContentCenteringScrollView *)&v18 setBounds:x, y, width, height];
  v12 = v9 == width && v11 == height;
  if (!v12 || ![(_BKExpandedImageContentCenteringScrollView *)self hasCalculatedMinZoomScale])
  {
    _bk_getDelegateZoomView = [(_BKExpandedImageContentCenteringScrollView *)self _bk_getDelegateZoomView];
    v14 = _bk_getDelegateZoomView;
    if (_bk_getDelegateZoomView)
    {
      [_bk_getDelegateZoomView bounds];
      CGSizeScaleThatFitsInCGSize();
      if (v15 <= 2.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 2.0;
      }

      [(_BKExpandedImageContentCenteringScrollView *)self setHasCalculatedMinZoomScale:1];
    }

    else
    {
      v16 = 1.0;
    }

    [(_BKExpandedImageContentCenteringScrollView *)self setMinimumZoomScale:v16];
    [(_BKExpandedImageContentCenteringScrollView *)self maximumZoomScale];
    if (v17 < v16)
    {
      [(_BKExpandedImageContentCenteringScrollView *)self setMaximumZoomScale:v16];
    }

    [(_BKExpandedImageContentCenteringScrollView *)self setZoomScale:v16];
  }
}

- (void)centerContent
{
  _bk_getDelegateZoomView = [(_BKExpandedImageContentCenteringScrollView *)self _bk_getDelegateZoomView];
  if (_bk_getDelegateZoomView)
  {
    v10 = _bk_getDelegateZoomView;
    [(_BKExpandedImageContentCenteringScrollView *)self bounds];
    Width = CGRectGetWidth(v12);
    [v10 frame];
    v5 = Width - CGRectGetWidth(v13);
    [(_BKExpandedImageContentCenteringScrollView *)self bounds];
    Height = CGRectGetHeight(v14);
    [v10 frame];
    v7 = Height - CGRectGetHeight(v15);
    v8 = fmax(trunc(v5 * 0.5), 0.0);
    v9 = fmax(trunc(v7 * 0.5), 0.0);
    [(_BKExpandedImageContentCenteringScrollView *)self setContentInset:v9, v8, fmax(trunc(v7 - v9), 0.0), fmax(trunc(v5 - v8), 0.0)];
    _bk_getDelegateZoomView = v10;
  }
}

- (id)_bk_getDelegateZoomView
{
  delegate = [(_BKExpandedImageContentCenteringScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate viewForZoomingInScrollView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end