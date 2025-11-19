@interface QLPreviewScrollView
- (CGRect)zoomRectForScale:(double)a3 withCenter:(CGPoint)a4;
- (CGSize)contentViewSize;
- (QLPreviewScrollView)init;
- (QLPreviewScrollViewZoomDelegate)zoomDelegate;
- (UIEdgeInsets)peripheryInsetsLandscape;
- (UIEdgeInsets)peripheryInsetsPortrait;
- (UIView)contentView;
- (double)_maxZoomScaleForContentSize:(CGSize)a3;
- (void)_updateScrollViewZooming;
- (void)layoutSubviews;
- (void)resetZoomScale;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setContentView:(id)a3 withSize:(CGSize)a4;
- (void)setContentViewSize:(CGSize)a3;
- (void)setNeedsZoomUpdate:(BOOL)a3;
- (void)updateZoomScales;
- (void)updateZoomScalesWithSize:(CGSize)a3;
@end

@implementation QLPreviewScrollView

- (QLPreviewScrollView)init
{
  v7.receiver = self;
  v7.super_class = QLPreviewScrollView;
  v2 = [(QLPreviewScrollView *)&v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(QLPreviewScrollView *)v2 setDelegate:v2];
    v4 = [MEMORY[0x277D75348] clearColor];
    [(QLPreviewScrollView *)v3 setBackgroundColor:v4];

    [(QLPreviewScrollView *)v3 setBouncesZoom:1];
    [(QLPreviewScrollView *)v3 setShowsVerticalScrollIndicator:0];
    [(QLPreviewScrollView *)v3 setShowsHorizontalScrollIndicator:0];
    [(QLPreviewScrollView *)v3 setPreservesCenterDuringRotation:1];
    [(QLPreviewScrollView *)v3 setDecelerationRate:*MEMORY[0x277D76EB8]];
    [(QLPreviewScrollView *)v3 setAlwaysBounceVertical:1];
    v3->_lastUpdatedSize = *MEMORY[0x277CBF3A8];
    v3->_preventZoomUpdate = 0;
    v5 = v3;
  }

  return v3;
}

- (void)setContentView:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(QLPreviewScrollView *)self contentView];
  [v8 removeFromSuperview];

  [(QLPreviewScrollView *)self setContentView:v7];
  [(QLPreviewScrollView *)self addSubview:v7];

  [(QLPreviewScrollView *)self setContentViewSize:width, height];
}

- (void)setContentViewSize:(CGSize)a3
{
  if (self->_contentViewSize.width != a3.width || self->_contentViewSize.height != a3.height)
  {
    self->_contentViewSize = a3;
    [(QLPreviewScrollView *)self setContentSize:?];

    [(QLPreviewScrollView *)self _updateScrollViewZooming];
  }
}

- (void)setNeedsZoomUpdate:(BOOL)a3
{
  self->_needsZoomUpdate = a3;
  if (a3)
  {
    [(QLPreviewScrollView *)self _updateScrollViewZooming];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = QLPreviewScrollView;
  [(QLPreviewScrollView *)&v8 layoutSubviews];
  if (![(QLPreviewScrollView *)self preventZoomUpdate])
  {
    [(QLPreviewScrollView *)self extent];
    width = self->_lastUpdatedSize.width;
    height = self->_lastUpdatedSize.height;
    v7 = width == v6 && height == v3;
    if (!v7 || [(QLPreviewScrollView *)self needsZoomUpdate:width])
    {
      [(QLPreviewScrollView *)self _updateScrollViewZooming:width];
    }
  }
}

- (void)_updateScrollViewZooming
{
  [(QLPreviewScrollView *)self extent];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (*MEMORY[0x277CBF3A8] != v5 || v4 != v3)
  {
    [(QLPreviewScrollView *)self updateZoomScales:*MEMORY[0x277CBF3A8]];
    [(QLPreviewScrollView *)self resetZoomScale];

    [(QLPreviewScrollView *)self setNeedsZoomUpdate:0];
  }
}

- (double)_maxZoomScaleForContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = 3.0;
  if (_UIAccessibilityZoomTouchEnabled())
  {
    v6 = height * 0.0165999997;
    if (width * 0.0165999997 >= height * 0.0165999997)
    {
      v6 = width * 0.0165999997;
    }

    if (v6 >= 3.0)
    {
      return v6;
    }

    else
    {
      return 3.0;
    }
  }

  return v5;
}

- (void)updateZoomScales
{
  [(QLPreviewScrollView *)self extent];

  [(QLPreviewScrollView *)self updateZoomScalesWithSize:v3, v4];
}

- (void)updateZoomScalesWithSize:(CGSize)a3
{
  if (self->_preventZoomUpdate)
  {
    return;
  }

  height = a3.height;
  width = a3.width;
  self->_lastUpdatedSize = a3;
  v7 = [(QLPreviewScrollView *)self zoomDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(QLPreviewScrollView *)self zoomDelegate];
    v9 = [v8 previewScrollViewShouldResizeContentBasedOnPeripheryInsets:self];

    if (v9)
    {
      v10 = [(QLPreviewScrollView *)self window];
      if ([v10 _windowInterfaceOrientation] == 1)
      {
      }

      else
      {
        v11 = [(QLPreviewScrollView *)self window];
        v12 = [v11 _windowInterfaceOrientation];

        if (v12 != 2)
        {
          width = width - self->_peripheryInsetsLandscape.left - self->_peripheryInsetsLandscape.right;
          goto LABEL_10;
        }
      }

      height = height - self->_peripheryInsetsPortrait.bottom - self->_peripheryInsetsPortrait.top;
    }
  }

  else
  {
  }

LABEL_10:
  [(QLPreviewScrollView *)self contentViewSize];
  [(QLPreviewScrollView *)self _maxZoomScaleForContentSize:?];
  v14 = v13;
  self->_contentIsSmallerThanView = 0.0;
  [(QLPreviewScrollView *)self contentViewSize];
  if (v15 == 0.0 || ([(QLPreviewScrollView *)self contentViewSize], v22 == 0.0) || width == 0.0 || height == 0.0)
  {
    self->_pinchMaxZoomScale = 1.0;
    self->_maxZoomScale = 1.0;
    self->_minZoomScale = 1.0;
    self->_fillZoomScale = 1.0;
  }

  else
  {
    self->_maxZoomScale = 3.0;
    self->_pinchMaxZoomScale = v14;
    [(QLPreviewScrollView *)self contentViewSize];
    v24 = width / v23;
    [(QLPreviewScrollView *)self contentViewSize];
    v26 = height / v25;
    [(QLPreviewScrollView *)self contentViewSize];
    if (QLImageWithSizeShouldNotBeScaled())
    {
      v27 = [MEMORY[0x277D759A0] mainScreen];
      [v27 scale];
      self->_minZoomScale = 1.0 / v28;

      if (v24 <= v26)
      {
        v29 = v24;
      }

      else
      {
        v29 = v26;
      }

      self->_pinchMaxZoomScale = v29;
      self->_maxZoomScale = v29;
      self->_fillZoomScale = v29;
      self->_contentIsSmallerThanView = 1.0;
      goto LABEL_12;
    }

    [(QLPreviewScrollView *)self contentViewSize];
    if (v30 < width)
    {
      [(QLPreviewScrollView *)self contentViewSize];
      if (v31 < height)
      {
        if ([(QLPreviewScrollView *)self shouldFit])
        {
          if (v24 <= v26)
          {
            v32 = v26;
          }

          else
          {
            v32 = v24;
          }

          if (v24 <= v26)
          {
            v33 = v24;
          }

          else
          {
            v33 = v26;
          }

          self->_pinchMaxZoomScale = v32;
          self->_maxZoomScale = v32;
          self->_minZoomScale = v33;
          self->_fillZoomScale = self->_maxZoomScale;
          self->_contentIsSmallerThanView = 0.0;
        }

        else
        {
          if (v24 <= v26)
          {
            v43 = v24;
          }

          else
          {
            v43 = v26;
          }

          self->_pinchMaxZoomScale = v43;
          self->_maxZoomScale = v43;
          self->_fillZoomScale = v43;
          self->_contentIsSmallerThanView = 1.0;
          [(QLPreviewScrollView *)self contentViewSize];
          if (v44 >= width * 0.75 || ([(QLPreviewScrollView *)self contentViewSize], v45 >= height * 0.75))
          {
            self->_minZoomScale = 1.0;
          }

          else
          {
            v46 = *MEMORY[0x277CBF348];
            v47 = *(MEMORY[0x277CBF348] + 8);
            [(QLPreviewScrollView *)self contentViewSize];
            QLAdaptSizeToRect();
            v49 = v48;
            v51 = v50;
            [(QLPreviewScrollView *)self contentViewSize];
            if (v24 <= v26)
            {
              v54 = v51 / v53;
            }

            else
            {
              v54 = v49 / v52;
            }

            self->_minZoomScale = v54;
          }
        }

        goto LABEL_12;
      }
    }

    [(QLPreviewScrollView *)self contentViewSize];
    if (v34 <= width || ([(QLPreviewScrollView *)self contentViewSize], v35 >= height))
    {
      [(QLPreviewScrollView *)self contentViewSize];
      if (v39 >= width || ([(QLPreviewScrollView *)self contentViewSize], v40 <= height))
      {
        if (v24 <= v26)
        {
          self->_minZoomScale = v24;
          self->_fillZoomScale = v26;
        }

        else
        {
          self->_minZoomScale = v26;
          self->_fillZoomScale = v24;
        }

        goto LABEL_12;
      }

      [(QLPreviewScrollView *)self contentViewSize];
      self->_minZoomScale = height / v41;
      [(QLPreviewScrollView *)self contentViewSize];
      v38 = width / v42;
    }

    else
    {
      [(QLPreviewScrollView *)self contentViewSize];
      self->_minZoomScale = width / v36;
      [(QLPreviewScrollView *)self contentViewSize];
      v38 = height / v37;
    }

    self->_fillZoomScale = v38;
  }

LABEL_12:
  v16 = [(QLPreviewScrollView *)self zoomDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(QLPreviewScrollView *)self zoomDelegate];
    [v18 previewScrollView:self extraMinimumZoomForMinimumZoomScale:self->_minZoomScale maximumZoomScale:{fmin(self->_pinchMaxZoomScale, 3.0)}];
    self->_minZoomScale = v19 + self->_minZoomScale;
  }

  v20 = &OBJC_IVAR___QLPreviewScrollView__minZoomScale;
  if (self->_contentIsSmallerThanView != 0.0)
  {
    v20 = &OBJC_IVAR___QLPreviewScrollView__maxZoomScale;
  }

  *&self->_fitZoomScale = *(&self->super.super.super.super.isa + *v20);
  [(QLPreviewScrollView *)self setMinimumZoomScale:self->_minZoomScale];
  pinchMaxZoomScale = self->_pinchMaxZoomScale;

  [(QLPreviewScrollView *)self setMaximumZoomScale:pinchMaxZoomScale];
}

- (void)resetZoomScale
{
  if (!self->_inSizeChange)
  {
    [(QLPreviewScrollView *)self setScrollEnabled:0];
    minZoomScale = self->_minZoomScale;

    [(QLPreviewScrollView *)self setZoomScale:minZoomScale];
  }
}

- (CGRect)zoomRectForScale:(double)a3 withCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(QLPreviewScrollView *)self frame];
  v9 = v8 / a3;
  [(QLPreviewScrollView *)self frame];
  v11 = v10 / a3;
  v12 = x - v11 * 0.5;
  v13 = y - v9 * 0.5;
  v14 = v9;
  result.size.height = v14;
  result.size.width = v11;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  self->_inSizeChange = 1;
  [(QLPreviewScrollView *)self setScrollEnabled:1, a4];
  v5 = [(QLPreviewScrollView *)self zoomDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(QLPreviewScrollView *)self zoomDelegate];
    [v7 previewScrollViewWillBeginZooming:self];
  }
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  v7 = 0;
  self->_inSizeChange = 0;
  if (self->_contentIsSmallerThanView == 0.0)
  {
    v7 = self->_minZoomScale < a5;
  }

  [(QLPreviewScrollView *)self setScrollEnabled:v7, a4];
  v8 = [(QLPreviewScrollView *)self zoomDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(QLPreviewScrollView *)self zoomDelegate];
    [v10 previewScrollView:self didEndZoomingAtScale:a5];
  }
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = [(QLPreviewScrollView *)self zoomDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(QLPreviewScrollView *)self zoomDelegate];
    [v6 previewScrollViewDidZoom:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(QLPreviewScrollView *)self zoomDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(QLPreviewScrollView *)self zoomDelegate];
    [v6 previewScrollViewDidScroll:self];
  }
}

- (CGSize)contentViewSize
{
  width = self->_contentViewSize.width;
  height = self->_contentViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (QLPreviewScrollViewZoomDelegate)zoomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)peripheryInsetsLandscape
{
  objc_copyStruct(v6, &self->_peripheryInsetsLandscape, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)peripheryInsetsPortrait
{
  objc_copyStruct(v6, &self->_peripheryInsetsPortrait, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end