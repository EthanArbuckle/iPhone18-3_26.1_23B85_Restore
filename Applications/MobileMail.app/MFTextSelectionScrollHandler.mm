@interface MFTextSelectionScrollHandler
- (MFTextSelectionScrollHandler)initWithScrollView:(id)a3;
- (double)_maxScrollOffset;
- (double)_minScrollOffset;
- (id)window;
- (void)_reset;
- (void)_scrollForTouchLocation:(CGPoint)a3;
- (void)_setContentOffsetY:(double)a3;
- (void)dealloc;
- (void)handleTextSelectionChanged:(id)a3;
- (void)handleTouchEvents:(id)a3;
@end

@implementation MFTextSelectionScrollHandler

- (MFTextSelectionScrollHandler)initWithScrollView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFTextSelectionScrollHandler;
  v6 = [(MFTextSelectionScrollHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollView, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(MFTextSelectionScrollHandler *)self _reset];
  v3.receiver = self;
  v3.super_class = MFTextSelectionScrollHandler;
  [(MFTextSelectionScrollHandler *)&v3 dealloc];
}

- (void)handleTextSelectionChanged:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if (self->_isListeningForTouches)
    {
      self->_isMovingCursor = 1;
    }

    else
    {
      self->_isListeningForTouches = 1;
      objc_initWeak(&location, self);
      objc_copyWeak(&v7, &location);
      v5 = [(MFTextSelectionScrollHandler *)self window:_NSConcreteStackBlock];
      [v5 setTouchEventListener:&v6];

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(MFTextSelectionScrollHandler *)self _reset];
  }
}

- (void)handleTouchEvents:(id)a3
{
  v14 = a3;
  p_textSelectionTouch = &self->_textSelectionTouch;
  textSelectionTouch = self->_textSelectionTouch;
  if (textSelectionTouch)
  {
    goto LABEL_8;
  }

  if ([v14 count] == 1)
  {
    v6 = [v14 anyObject];
    if ([v6 tapCount])
    {
      objc_storeStrong(&self->_textSelectionTouch, v6);
    }
  }

  textSelectionTouch = *p_textSelectionTouch;
  if (*p_textSelectionTouch)
  {
LABEL_8:
    if (-[UITouch phase](textSelectionTouch, "phase") == 4 || [*p_textSelectionTouch phase] == 3)
    {
      self->_isMovingCursor = 0;
      v7 = self->_textSelectionTouch;
      self->_textSelectionTouch = 0;
    }

    v8 = *p_textSelectionTouch;
    if (*p_textSelectionTouch && self->_isMovingCursor)
    {
      v9 = [(MFTextSelectionScrollHandler *)self scrollView];
      [v8 locationInView:v9];
      v11 = v10;
      v13 = v12;

      [(MFTextSelectionScrollHandler *)self _scrollForTouchLocation:v11, v13];
    }
  }
}

- (void)_scrollForTouchLocation:(CGPoint)a3
{
  y = a3.y;
  self->_scrollOffsetIncrement = self->_scrollOffsetIncrement + 0.2;
  v5 = [(MFTextSelectionScrollHandler *)self scrollView];
  [v5 contentOffset];
  v7 = v6;

  if (y + -100.0 <= v7)
  {
    v14 = [(MFTextSelectionScrollHandler *)self scrollView];
    [v14 contentOffset];
    v16 = v15 - self->_scrollOffsetIncrement;

    [(MFTextSelectionScrollHandler *)self _minScrollOffset];
    if (v16 >= v17)
    {
      v17 = v16;
    }
  }

  else
  {
    v8 = [(MFTextSelectionScrollHandler *)self scrollView];
    [v8 contentOffset];
    v10 = v9;
    v11 = [(MFTextSelectionScrollHandler *)self scrollView];
    [v11 bounds];
    v13 = v10 + v12;

    if (y + 100.0 < v13)
    {
      self->_scrollOffsetIncrement = 0.0;
      return;
    }

    v18 = [(MFTextSelectionScrollHandler *)self scrollView];
    [v18 contentOffset];
    v20 = v19 + self->_scrollOffsetIncrement;

    [(MFTextSelectionScrollHandler *)self _maxScrollOffset];
    if (v20 < v17)
    {
      v17 = v20;
    }
  }

  [(MFTextSelectionScrollHandler *)self _setContentOffsetY:v17];
}

- (void)_setContentOffsetY:(double)a3
{
  v4 = [(MFTextSelectionScrollHandler *)self scrollView];
  v5 = [(MFTextSelectionScrollHandler *)self scrollView];
  [v5 contentOffset];
  [v4 setContentOffset:0 animated:?];

  v6 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021C9E0;
  block[3] = &unk_10064C7E8;
  block[4] = self;
  dispatch_after(v6, &_dispatch_main_q, block);
}

- (double)_maxScrollOffset
{
  v3 = [(MFTextSelectionScrollHandler *)self scrollView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(MFTextSelectionScrollHandler *)self scrollView];
  [v6 contentInset];
  v8 = v7;
  v9 = [(MFTextSelectionScrollHandler *)self scrollView];
  [v9 bounds];
  v11 = v5 + v8 - v10;

  return v11;
}

- (double)_minScrollOffset
{
  v2 = [(MFTextSelectionScrollHandler *)self scrollView];
  [v2 contentInset];
  v4 = -v3;

  return v4;
}

- (id)window
{
  v2 = [(MFTextSelectionScrollHandler *)self scrollView];
  v3 = [v2 window];

  return v3;
}

- (void)_reset
{
  v3 = [(MFTextSelectionScrollHandler *)self window];
  [v3 setTouchEventListener:0];

  textSelectionTouch = self->_textSelectionTouch;
  self->_textSelectionTouch = 0;

  *&self->_isListeningForTouches = 0;
  self->_scrollOffsetIncrement = 0.0;
}

@end