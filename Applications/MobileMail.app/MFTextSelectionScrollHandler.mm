@interface MFTextSelectionScrollHandler
- (MFTextSelectionScrollHandler)initWithScrollView:(id)view;
- (double)_maxScrollOffset;
- (double)_minScrollOffset;
- (id)window;
- (void)_reset;
- (void)_scrollForTouchLocation:(CGPoint)location;
- (void)_setContentOffsetY:(double)y;
- (void)dealloc;
- (void)handleTextSelectionChanged:(id)changed;
- (void)handleTouchEvents:(id)events;
@end

@implementation MFTextSelectionScrollHandler

- (MFTextSelectionScrollHandler)initWithScrollView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = MFTextSelectionScrollHandler;
  v6 = [(MFTextSelectionScrollHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollView, view);
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

- (void)handleTextSelectionChanged:(id)changed
{
  changedCopy = changed;
  if ([changedCopy length])
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

- (void)handleTouchEvents:(id)events
{
  eventsCopy = events;
  p_textSelectionTouch = &self->_textSelectionTouch;
  textSelectionTouch = self->_textSelectionTouch;
  if (textSelectionTouch)
  {
    goto LABEL_8;
  }

  if ([eventsCopy count] == 1)
  {
    anyObject = [eventsCopy anyObject];
    if ([anyObject tapCount])
    {
      objc_storeStrong(&self->_textSelectionTouch, anyObject);
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
      scrollView = [(MFTextSelectionScrollHandler *)self scrollView];
      [v8 locationInView:scrollView];
      v11 = v10;
      v13 = v12;

      [(MFTextSelectionScrollHandler *)self _scrollForTouchLocation:v11, v13];
    }
  }
}

- (void)_scrollForTouchLocation:(CGPoint)location
{
  y = location.y;
  self->_scrollOffsetIncrement = self->_scrollOffsetIncrement + 0.2;
  scrollView = [(MFTextSelectionScrollHandler *)self scrollView];
  [scrollView contentOffset];
  v7 = v6;

  if (y + -100.0 <= v7)
  {
    scrollView2 = [(MFTextSelectionScrollHandler *)self scrollView];
    [scrollView2 contentOffset];
    v16 = v15 - self->_scrollOffsetIncrement;

    [(MFTextSelectionScrollHandler *)self _minScrollOffset];
    if (v16 >= v17)
    {
      v17 = v16;
    }
  }

  else
  {
    scrollView3 = [(MFTextSelectionScrollHandler *)self scrollView];
    [scrollView3 contentOffset];
    v10 = v9;
    scrollView4 = [(MFTextSelectionScrollHandler *)self scrollView];
    [scrollView4 bounds];
    v13 = v10 + v12;

    if (y + 100.0 < v13)
    {
      self->_scrollOffsetIncrement = 0.0;
      return;
    }

    scrollView5 = [(MFTextSelectionScrollHandler *)self scrollView];
    [scrollView5 contentOffset];
    v20 = v19 + self->_scrollOffsetIncrement;

    [(MFTextSelectionScrollHandler *)self _maxScrollOffset];
    if (v20 < v17)
    {
      v17 = v20;
    }
  }

  [(MFTextSelectionScrollHandler *)self _setContentOffsetY:v17];
}

- (void)_setContentOffsetY:(double)y
{
  scrollView = [(MFTextSelectionScrollHandler *)self scrollView];
  scrollView2 = [(MFTextSelectionScrollHandler *)self scrollView];
  [scrollView2 contentOffset];
  [scrollView setContentOffset:0 animated:?];

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
  scrollView = [(MFTextSelectionScrollHandler *)self scrollView];
  [scrollView contentSize];
  v5 = v4;
  scrollView2 = [(MFTextSelectionScrollHandler *)self scrollView];
  [scrollView2 contentInset];
  v8 = v7;
  scrollView3 = [(MFTextSelectionScrollHandler *)self scrollView];
  [scrollView3 bounds];
  v11 = v5 + v8 - v10;

  return v11;
}

- (double)_minScrollOffset
{
  scrollView = [(MFTextSelectionScrollHandler *)self scrollView];
  [scrollView contentInset];
  v4 = -v3;

  return v4;
}

- (id)window
{
  scrollView = [(MFTextSelectionScrollHandler *)self scrollView];
  window = [scrollView window];

  return window;
}

- (void)_reset
{
  window = [(MFTextSelectionScrollHandler *)self window];
  [window setTouchEventListener:0];

  textSelectionTouch = self->_textSelectionTouch;
  self->_textSelectionTouch = 0;

  *&self->_isListeningForTouches = 0;
  self->_scrollOffsetIncrement = 0.0;
}

@end