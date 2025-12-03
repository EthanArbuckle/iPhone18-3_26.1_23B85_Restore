@interface _BEFixedLayoutWKWebView
- (CGRect)_visibleContentRect;
- (CGSize)be_fixedLayoutSize;
- (double)be_initialScale;
- (id)be_viewportArguments;
- (id)be_viewportArgumentsAtScale:(double)scale;
- (void)be_applyMetaViewportOverridesForFixedLayoutSize:(CGSize)size;
- (void)be_applyViewportArgumentsIfNeeded;
- (void)setFrame:(CGRect)frame;
@end

@implementation _BEFixedLayoutWKWebView

- (void)setFrame:(CGRect)frame
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_BDEC;
  v5[3] = &unk_328450;
  frameCopy = frame;
  v5[4] = self;
  v4 = objc_retainBlock(v5);
  if ([(BEWKWebView *)self be_finishedInit])
  {
    [(_BEFixedLayoutWKWebView *)self _beginAnimatedResizeWithUpdates:v4];
    [(_BEFixedLayoutWKWebView *)self _endAnimatedResize];
  }

  else
  {
    (v4[2])(v4);
  }
}

- (void)be_applyMetaViewportOverridesForFixedLayoutSize:(CGSize)size
{
  if (size.height > 0.0 && size.width > 0.0)
  {
    [(_BEFixedLayoutWKWebView *)self setBe_fixedLayoutSize:?];
    [(_BEFixedLayoutWKWebView *)self setBe_minScale:0.01];
    [(_BEFixedLayoutWKWebView *)self setBe_maxScale:10.0];
  }

  be_viewportArguments = [(_BEFixedLayoutWKWebView *)self be_viewportArguments];
  [(_BEFixedLayoutWKWebView *)self _overrideViewportWithArguments:be_viewportArguments];
}

- (void)be_applyViewportArgumentsIfNeeded
{
  [(_BEFixedLayoutWKWebView *)self be_initialScale];
  v4 = v3;
  v5 = [NSNumber numberWithDouble:?];
  stringValue = [v5 stringValue];

  currentInitialScaleString = [(_BEFixedLayoutWKWebView *)self currentInitialScaleString];
  v8 = [stringValue isEqualToString:currentInitialScaleString];

  if ((v8 & 1) == 0)
  {
    v9 = [(_BEFixedLayoutWKWebView *)self be_viewportArgumentsAtScale:v4];
    v10.receiver = self;
    v10.super_class = _BEFixedLayoutWKWebView;
    [(_BEFixedLayoutWKWebView *)&v10 _overrideViewportWithArguments:v9];
  }
}

- (double)be_initialScale
{
  [(_BEFixedLayoutWKWebView *)self frame];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  width = self->_be_fixedLayoutSize.width;
  v12 = 0.0;
  if (width > 0.0)
  {
    v12 = CGRectGetWidth(*&v3) / width;
  }

  height = self->_be_fixedLayoutSize.height;
  if (height > 0.0)
  {
    v15.origin.x = v7;
    v15.origin.y = v8;
    v15.size.width = v9;
    v15.size.height = v10;
    if (v12 * height < CGRectGetHeight(v15))
    {
      v16.origin.x = v7;
      v16.origin.y = v8;
      v16.size.width = v9;
      v16.size.height = v10;
      v12 = CGRectGetHeight(v16) / height;
    }
  }

  result = self->_be_minScale;
  if (v12 >= result)
  {
    result = v12;
  }

  if (result >= self->_be_maxScale)
  {
    return self->_be_maxScale;
  }

  return result;
}

- (id)be_viewportArguments
{
  [(_BEFixedLayoutWKWebView *)self be_initialScale];

  return [(_BEFixedLayoutWKWebView *)self be_viewportArgumentsAtScale:?];
}

- (id)be_viewportArgumentsAtScale:(double)scale
{
  v4 = [NSNumber numberWithDouble:scale];
  stringValue = [v4 stringValue];

  [(_BEFixedLayoutWKWebView *)self setCurrentInitialScaleString:stringValue];
  v17[0] = stringValue;
  v16[0] = @"initial-scale";
  v16[1] = @"width";
  v6 = [NSNumber numberWithDouble:self->_be_fixedLayoutSize.width];
  stringValue2 = [v6 stringValue];
  v17[1] = stringValue2;
  v16[2] = @"height";
  v8 = [NSNumber numberWithDouble:self->_be_fixedLayoutSize.height];
  stringValue3 = [v8 stringValue];
  v17[2] = stringValue3;
  v17[3] = @"no";
  v16[3] = @"user-scalable";
  v16[4] = @"minimum-scale";
  v10 = [NSNumber numberWithDouble:self->_be_minScale];
  stringValue4 = [v10 stringValue];
  v17[4] = stringValue4;
  v16[5] = @"maximum-scale";
  v12 = [NSNumber numberWithDouble:self->_be_maxScale];
  stringValue5 = [v12 stringValue];
  v16[6] = @"shrink-to-fit";
  v17[5] = stringValue5;
  v17[6] = @"yes";
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:7];

  return v14;
}

- (CGRect)_visibleContentRect
{
  scrollView = [(_BEFixedLayoutWKWebView *)self scrollView];
  [scrollView zoomScale];
  v5 = v4;

  _scroller = [(_BEFixedLayoutWKWebView *)self _scroller];
  if (_scroller)
  {
    be_contentView = [(_BEFixedLayoutWKWebView *)self be_contentView];
    [_scroller zoomScale];
    if (v8 == 1.0)
    {
      [be_contentView bounds];
      x = v9;
      y = v11;
      width = v13;
      height = v15;
    }

    else
    {
      [_scroller visibleBounds];
      [be_contentView convertRect:_scroller fromView:?];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [be_contentView bounds];
      v44.origin.x = v22;
      v44.origin.y = v24;
      v44.size.width = v26;
      v44.size.height = v28;
      v41 = CGRectIntersection(v40, v44);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
      v29 = _BookEPUBLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        v30 = NSStringFromCGRect(v42);
        *buf = 138412546;
        v37 = v30;
        v38 = 2048;
        v39 = v5;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "{WebViewLifeCycle} webView new visibleFrame %@ at scale %f", buf, 0x16u);
      }
    }
  }

  else
  {
    v35.receiver = self;
    v35.super_class = _BEFixedLayoutWKWebView;
    [(BEWKWebView *)&v35 _visibleContentRect];
    x = v17;
    y = v18;
    width = v19;
    height = v20;
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGSize)be_fixedLayoutSize
{
  width = self->_be_fixedLayoutSize.width;
  height = self->_be_fixedLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end