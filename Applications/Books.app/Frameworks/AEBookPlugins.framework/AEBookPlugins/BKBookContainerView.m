@interface BKBookContainerView
+ (Class)_textRangeViewClass;
- (BKBookContainerView)initWithCoder:(id)a3;
- (BKBookContainerView)initWithFrame:(CGRect)a3;
- (BKBookContainerViewDelegate)delegate;
- (BOOL)_shouldIgnoreNavigationTouch:(id)a3;
- (BOOL)_tapLocationIsInTextOverlapArea:(CGPoint)a3;
- (BOOL)_touchIsNoNoClassOrMediaElement:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)shouldHandleSwipeGesture:(id)a3;
- (BOOL)unhandledClickAtPoint:(CGPoint)a3;
- (CGPoint)_startLocationInViewWithGesture:(id)a3;
- (int)_tapLocationForTouchLocation:(CGPoint)a3;
- (void)_commonInit;
- (void)_setupGestureRecognizers;
- (void)_setupManualCurlForIndirectRecognizerForTranslation:(CGPoint)a3;
- (void)_startedManualCurlAnimation:(id)a3 isRightSide:(BOOL)a4;
- (void)_turnPendingPagesAfterFinishing;
- (void)addGestureRecognizer:(id)a3;
- (void)cancelTapTimer:(id)a3;
- (void)dealloc;
- (void)killCurl;
- (void)layoutSubviews;
- (void)leftChapterGesture:(id)a3;
- (void)leftPageGesture:(id)a3;
- (void)manualCurlFinished:(id)a3;
- (void)manualCurlGesture:(id)a3;
- (void)removeGestureRecognizer:(id)a3;
- (void)rightChapterGesture:(id)a3;
- (void)rightPageGesture:(id)a3;
- (void)setSpineLocation:(int64_t)a3;
- (void)tapGesture:(id)a3;
@end

@implementation BKBookContainerView

- (void)_commonInit
{
  [(BKBookContainerView *)self _setupGestureRecognizers];
  [(BKBookContainerView *)self setExclusiveTouch:1];
  v3 = +[NSUserDefaults standardUserDefaults];
  self->_usePageCurlAnimation = [v3 BOOLForKey:@"BKUseLegacyCurlAnimation"];
}

- (BKBookContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BKBookContainerView;
  v3 = [(BKBookContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKBookContainerView *)v3 _commonInit];
  }

  return v4;
}

- (BKBookContainerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKBookContainerView;
  v3 = [(BKBookContainerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(BKBookContainerView *)v3 _commonInit];
  }

  return v4;
}

- (void)dealloc
{
  [(UITapGestureRecognizer *)self->_leftTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_leftTapRecognizer removeTarget:0 action:0];
  [(UITapGestureRecognizer *)self->_rightTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_rightTapRecognizer removeTarget:0 action:0];
  [(BKPanGestureRecognizer *)self->_manualCurlRecognizer setDelegate:0];
  [(BKPanGestureRecognizer *)self->_manualCurlRecognizer removeTarget:0 action:0];
  [(BKIndirectPanGestureRecognizer *)self->_indirectManualCurlRecognizer setDelegate:0];
  [(BKIndirectPanGestureRecognizer *)self->_indirectManualCurlRecognizer removeTarget:0 action:0];
  [(BKSwipeGestureRecognizer *)self->_previousPageSwipeRecognizer setDelegate:0];
  [(BKSwipeGestureRecognizer *)self->_previousPageSwipeRecognizer removeTarget:0 action:0];
  [(BKSwipeGestureRecognizer *)self->_nextPageSwipeRecognizer setDelegate:0];
  [(BKSwipeGestureRecognizer *)self->_nextPageSwipeRecognizer removeTarget:0 action:0];
  [(BKSwipeGestureRecognizer *)self->_previousChapterSwipeRecognizer setDelegate:0];
  [(BKSwipeGestureRecognizer *)self->_previousChapterSwipeRecognizer removeTarget:0 action:0];
  [(BKSwipeGestureRecognizer *)self->_nextChapterSwipeRecognizer setDelegate:0];
  [(BKSwipeGestureRecognizer *)self->_nextChapterSwipeRecognizer removeTarget:0 action:0];
  [(NSTimer *)self->_cancelLeftTapTimer invalidate];
  [(NSTimer *)self->_cancelRightTapTimer invalidate];
  v3.receiver = self;
  v3.super_class = BKBookContainerView;
  [(BKBookContainerView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = BKBookContainerView;
  [(BKBookContainerView *)&v2 layoutSubviews];
}

- (void)_setupGestureRecognizers
{
  if (!self->_leftTapRecognizer)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapGesture:"];
    leftTapRecognizer = self->_leftTapRecognizer;
    self->_leftTapRecognizer = v3;

    [(UITapGestureRecognizer *)self->_leftTapRecognizer setDelegate:self];
    [(UITapGestureRecognizer *)self->_leftTapRecognizer setCancelsTouchesInView:0];
    [(BKBookContainerView *)self addGestureRecognizer:self->_leftTapRecognizer];
  }

  if (!self->_rightTapRecognizer)
  {
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapGesture:"];
    rightTapRecognizer = self->_rightTapRecognizer;
    self->_rightTapRecognizer = v5;

    [(UITapGestureRecognizer *)self->_rightTapRecognizer setDelegate:self];
    [(UITapGestureRecognizer *)self->_rightTapRecognizer setCancelsTouchesInView:0];
    [(BKBookContainerView *)self addGestureRecognizer:self->_rightTapRecognizer];
  }

  if (!self->_indirectManualCurlRecognizer)
  {
    v7 = [[BKIndirectPanGestureRecognizer alloc] initWithTarget:self action:"manualCurlGesture:"];
    indirectManualCurlRecognizer = self->_indirectManualCurlRecognizer;
    self->_indirectManualCurlRecognizer = v7;

    [(BKIndirectPanGestureRecognizer *)self->_indirectManualCurlRecognizer setAllowedTouchTypes:&off_1F1780];
    [(BKIndirectPanGestureRecognizer *)self->_indirectManualCurlRecognizer setAllowedScrollTypesMask:3];
    [(BKIndirectPanGestureRecognizer *)self->_indirectManualCurlRecognizer setDelegate:self];
    [(BKIndirectPanGestureRecognizer *)self->_indirectManualCurlRecognizer setCancelsTouchesInView:0];
    [(BKBookContainerView *)self addGestureRecognizer:self->_indirectManualCurlRecognizer];
  }

  if (!self->_manualCurlRecognizer)
  {
    v9 = [[BKPanGestureRecognizer alloc] initWithTarget:self action:"manualCurlGesture:"];
    manualCurlRecognizer = self->_manualCurlRecognizer;
    self->_manualCurlRecognizer = v9;

    [(BKPanGestureRecognizer *)self->_manualCurlRecognizer setAllowedTouchTypes:&off_1F1798];
    [(BKPanGestureRecognizer *)self->_manualCurlRecognizer setDelegate:self];
    [(BKPanGestureRecognizer *)self->_manualCurlRecognizer setCancelsTouchesInView:0];
    [(BKPanGestureRecognizer *)self->_manualCurlRecognizer setAllowedScrollTypesMask:3];
    [(BKPanGestureRecognizer *)self->_manualCurlRecognizer requireGestureRecognizerToFail:self->_indirectManualCurlRecognizer];
    [(BKBookContainerView *)self addGestureRecognizer:self->_manualCurlRecognizer];
  }

  if (!self->_previousPageSwipeRecognizer)
  {
    v11 = [[BKSwipeGestureRecognizer alloc] initWithTarget:self action:"leftPageGesture:"];
    previousPageSwipeRecognizer = self->_previousPageSwipeRecognizer;
    self->_previousPageSwipeRecognizer = v11;

    [(BKSwipeGestureRecognizer *)self->_previousPageSwipeRecognizer setAllowedTouchTypes:&off_1F17B0];
    [(BKSwipeGestureRecognizer *)self->_previousPageSwipeRecognizer setDelegate:self];
    [(BKSwipeGestureRecognizer *)self->_previousPageSwipeRecognizer setDirection:1];
    [(BKSwipeGestureRecognizer *)self->_previousPageSwipeRecognizer setCancelsTouchesInView:0];
    [(BKSwipeGestureRecognizer *)self->_previousPageSwipeRecognizer setNumberOfTouchesRequired:1];
    [(BKBookContainerView *)self addGestureRecognizer:self->_previousPageSwipeRecognizer];
  }

  if (!self->_nextPageSwipeRecognizer)
  {
    v13 = [[BKSwipeGestureRecognizer alloc] initWithTarget:self action:"rightPageGesture:"];
    nextPageSwipeRecognizer = self->_nextPageSwipeRecognizer;
    self->_nextPageSwipeRecognizer = v13;

    [(BKSwipeGestureRecognizer *)self->_nextPageSwipeRecognizer setAllowedTouchTypes:&off_1F17C8];
    [(BKSwipeGestureRecognizer *)self->_nextPageSwipeRecognizer setDelegate:self];
    [(BKSwipeGestureRecognizer *)self->_nextPageSwipeRecognizer setDirection:2];
    [(BKSwipeGestureRecognizer *)self->_nextPageSwipeRecognizer setCancelsTouchesInView:0];
    [(BKSwipeGestureRecognizer *)self->_nextPageSwipeRecognizer setNumberOfTouchesRequired:1];
    [(BKBookContainerView *)self addGestureRecognizer:self->_nextPageSwipeRecognizer];
  }

  if (!self->_previousChapterSwipeRecognizer)
  {
    v15 = [[BKSwipeGestureRecognizer alloc] initWithTarget:self action:"leftChapterGesture:"];
    previousChapterSwipeRecognizer = self->_previousChapterSwipeRecognizer;
    self->_previousChapterSwipeRecognizer = v15;

    [(BKSwipeGestureRecognizer *)self->_previousChapterSwipeRecognizer setAllowedTouchTypes:&off_1F17E0];
    [(BKSwipeGestureRecognizer *)self->_previousChapterSwipeRecognizer setDelegate:self];
    [(BKSwipeGestureRecognizer *)self->_previousChapterSwipeRecognizer setDirection:1];
    [(BKSwipeGestureRecognizer *)self->_previousChapterSwipeRecognizer setCancelsTouchesInView:0];
    [(BKSwipeGestureRecognizer *)self->_previousChapterSwipeRecognizer setNumberOfTouchesRequired:3];
    [(BKBookContainerView *)self addGestureRecognizer:self->_previousChapterSwipeRecognizer];
  }

  if (!self->_nextChapterSwipeRecognizer)
  {
    v17 = [[BKSwipeGestureRecognizer alloc] initWithTarget:self action:"rightChapterGesture:"];
    nextChapterSwipeRecognizer = self->_nextChapterSwipeRecognizer;
    self->_nextChapterSwipeRecognizer = v17;

    [(BKSwipeGestureRecognizer *)self->_nextChapterSwipeRecognizer setAllowedTouchTypes:&off_1F17F8];
    [(BKSwipeGestureRecognizer *)self->_nextChapterSwipeRecognizer setDelegate:self];
    [(BKSwipeGestureRecognizer *)self->_nextChapterSwipeRecognizer setDirection:2];
    [(BKSwipeGestureRecognizer *)self->_nextChapterSwipeRecognizer setCancelsTouchesInView:0];
    [(BKSwipeGestureRecognizer *)self->_nextChapterSwipeRecognizer setNumberOfTouchesRequired:3];
    [(BKBookContainerView *)self addGestureRecognizer:self->_nextChapterSwipeRecognizer];
  }

  [(BKBookContainerView *)self setInternalGestureRecognizersSet:1];
}

- (void)manualCurlFinished:(id)a3
{
  v4 = a3;
  v5 = _AESwipeLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Finished manual curl: %@", &v7, 0xCu);
  }

  self->_finishingManualCurl = 0;
  self->_trackingManualCurl = 0;
  manualCurl = self->_manualCurl;
  self->_manualCurl = 0;

  [(BKBookContainerView *)self _turnPendingPagesAfterFinishing];
}

- (void)_turnPendingPagesAfterFinishing
{
  pagesToTurnAfterFinishing = self->_pagesToTurnAfterFinishing;
  if (pagesToTurnAfterFinishing)
  {
    v4 = 0;
    if (pagesToTurnAfterFinishing < 0)
    {
      do
      {
        v7 = _AESwipeLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Swiping Direction Reverse after delay", buf, 2u);
        }

        v8 = [(BKBookContainerView *)self delegate];
        [v8 bookContainerView:self turnPages:1];

        --v4;
      }

      while (self->_pagesToTurnAfterFinishing < v4);
    }

    else
    {
      do
      {
        v5 = _AESwipeLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Swiping Direction Forward after delay", v9, 2u);
        }

        v6 = [(BKBookContainerView *)self delegate];
        [v6 bookContainerView:self turnPages:0];

        ++v4;
      }

      while (self->_pagesToTurnAfterFinishing > v4);
    }

    self->_pagesToTurnAfterFinishing = 0;
  }
}

- (void)setSpineLocation:(int64_t)a3
{
  self->_spineLocation = a3;
  if (a3 == 2)
  {
    p_manualCurlRecognizer = &self->_manualCurlRecognizer;
    v5 = 20.0;
    [(BKPanGestureRecognizer *)self->_manualCurlRecognizer setLeftSideMovementThreshold:20.0];
  }

  else
  {
    v5 = 100.0;
    if (a3 == 3)
    {
      v6 = 20.0;
    }

    else
    {
      v6 = 100.0;
    }

    p_manualCurlRecognizer = &self->_manualCurlRecognizer;
    [(BKPanGestureRecognizer *)self->_manualCurlRecognizer setLeftSideMovementThreshold:v6];
    if (self->_spineLocation != 3)
    {
      v5 = 20.0;
    }
  }

  v7 = *p_manualCurlRecognizer;

  [(BKPanGestureRecognizer *)v7 setRightSideMovementThreshold:v5];
}

- (BOOL)unhandledClickAtPoint:(CGPoint)a3
{
  v4 = [(BKBookContainerView *)self _tapLocationForTouchLocation:a3.x, a3.y];
  switch(v4)
  {
    case 3u:
      goto LABEL_7;
    case 2u:
      v8 = [(BKBookContainerView *)self delegate];
      v9 = [v8 bookContainerViewShouldTurnPage:self];

      if (!v9)
      {
        return 0;
      }

LABEL_7:
      v7 = 0;
      goto LABEL_8;
    case 1u:
      v5 = [(BKBookContainerView *)self delegate];
      v6 = [v5 bookContainerViewShouldTurnPage:self];

      if (v6)
      {
        v7 = 1;
LABEL_8:
        v10 = [(BKBookContainerView *)self delegate];
        [v10 bookContainerView:self tapToTurnPages:v7];

        return 1;
      }

      break;
  }

  return 0;
}

- (void)killCurl
{
  if (self->_manualCurl)
  {
    v3 = _AESwipeLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      manualCurl = self->_manualCurl;
      v6 = 138412290;
      v7 = manualCurl;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Killing curl: %@", &v6, 0xCu);
    }

    self->_trackingManualCurl = 0;
    v5 = [(BKBookContainerView *)self delegate];
    [v5 bookContainerView:self cancelManualCurl:self->_manualCurl];

    [(BKPanGestureRecognizer *)self->_manualCurlRecognizer cancelRecognizing];
    [(BKIndirectPanGestureRecognizer *)self->_indirectManualCurlRecognizer setState:4];
  }
}

- (int)_tapLocationForTouchLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(BKBookContainerView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (isPad())
  {
    v14 = isPortrait();
    v15 = 70.0;
    if (!v14)
    {
      v15 = 30.0;
    }

    v29 = *&v15;
  }

  else
  {
    v29 = 0x4054000000000000;
  }

  if (isPad())
  {
    v16 = isPortrait();
    v17 = 50.0;
    if (v16)
    {
      v17 = 70.0;
    }
  }

  else
  {
    [(BKBookContainerView *)self safeAreaInsets];
    v17 = v18 + 44.0;
  }

  v32 = v17;
  v33 = y;
  v19 = x;
  if (isPad())
  {
    v20 = isPortrait();
    v21 = 82.0;
    if (v20)
    {
      v21 = 110.0;
    }

    v31 = v21;
  }

  else
  {
    v31 = 80.0;
  }

  v22 = [(BKBookContainerView *)self delegate];
  [v22 bookmarkHotspotDimensionForBookContainerView:self];
  v24 = v23;

  v35.origin.x = v7;
  v35.origin.y = v9;
  v35.size.width = v11;
  v35.size.height = v13;
  v25 = CGRectGetMaxX(v35) - v24;
  v36.origin.x = v7;
  v36.origin.y = v9;
  v36.size.width = v11;
  v36.size.height = v13;
  MinY = CGRectGetMinY(v36);
  [(BKBookContainerView *)self safeAreaInsets];
  v37.origin.y = MinY + v27;
  v37.origin.x = v25;
  v37.size.width = v24;
  v37.size.height = v24;
  v34.x = v19;
  v34.y = v33;
  if (CGRectContainsPoint(v37, v34))
  {
    return 3;
  }

  v38.origin.x = v7;
  v38.origin.y = v9;
  v38.size.width = v11;
  v38.size.height = v13;
  if (v33 < v32 + CGRectGetMinY(v38))
  {
    v39.origin.x = v7;
    v39.origin.y = v9;
    v39.size.width = v11;
    v39.size.height = v13;
    if (v19 < CGRectGetMaxX(v39) - v30)
    {
      v40.origin.x = v7;
      v40.origin.y = v9;
      v40.size.width = v11;
      v40.size.height = v13;
      if (v19 > v30 + CGRectGetMinX(v40))
      {
        return 0;
      }
    }
  }

  v41.origin.x = v7;
  v41.origin.y = v9;
  v41.size.width = v11;
  v41.size.height = v13;
  if (v19 > CGRectGetMaxX(v41) - v31)
  {
    return 2;
  }

  v42.origin.x = v7;
  v42.origin.y = v9;
  v42.size.width = v11;
  v42.size.height = v13;
  return v19 < v31 + CGRectGetMinX(v42);
}

- (BOOL)_tapLocationIsInTextOverlapArea:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ((isPad() & 1) != 0 || [(BKBookContainerView *)self _tapLocationForTouchLocation:x, y]- 4 < 0xFFFFFFFD)
  {
    return 0;
  }

  v7 = [(BKBookContainerView *)self delegate];
  [v7 pageContentBoundsForBookContainerView:self];
  v9.x = x;
  v9.y = y;
  v8 = CGRectContainsPoint(v10, v9);

  return v8;
}

- (void)tapGesture:(id)a3
{
  v4 = a3;
  if (v4 && !self->_manualCurl)
  {
    if (!self->_cancelLeftTap && self->_leftTapRecognizer == v4)
    {
      v9 = v4;
      [(UITapGestureRecognizer *)v4 locationInView:self];
      v5 = [(BKBookContainerView *)self unhandledClickAtPoint:?];
      [(NSTimer *)self->_cancelLeftTapTimer invalidate];
      cancelLeftTapTimer = self->_cancelLeftTapTimer;
      self->_cancelLeftTapTimer = 0;

      v4 = v9;
    }

    else
    {
      v5 = 0;
    }

    if (!self->_cancelRightTap && self->_rightTapRecognizer == v4)
    {
      v8 = v4;
      if ((v5 & 1) == 0)
      {
        [(UITapGestureRecognizer *)v4 locationInView:self];
        [(BKBookContainerView *)self unhandledClickAtPoint:?];
      }

      [(NSTimer *)self->_cancelRightTapTimer invalidate];
      cancelRightTapTimer = self->_cancelRightTapTimer;
      self->_cancelRightTapTimer = 0;

      v4 = v8;
    }
  }
}

- (CGPoint)_startLocationInViewWithGesture:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 startLocationInView:self];
  }

  else
  {
    [v4 locationInView:self];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_startedManualCurlAnimation:(id)a3 isRightSide:(BOOL)a4
{
  objc_storeStrong(&self->_manualCurl, a3);
  self->_manualCurlIsRightSide = a4;
  if (self->_manualCurl && self->_swipeBeforeManualCurl)
  {
    v6 = _AESwipeLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "started so not swiping", v7, 2u);
    }

    self->_swipeBeforeManualCurl = 0;
  }
}

- (void)manualCurlGesture:(id)a3
{
  v4 = a3;
  if ([(BKBookContainerView *)self ignoreNextGesture])
  {
    v5 = _AESwipeLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Ignoring gesture for manual curl", buf, 2u);
    }

LABEL_4:

    goto LABEL_5;
  }

  if ([(BKIndirectPanGestureRecognizer *)v4 state]!= &dword_0 + 1)
  {
    if ([(BKIndirectPanGestureRecognizer *)v4 state]== &dword_0 + 2)
    {
      if (self->_finishingManualCurl || !self->_manualCurl && self->_indirectManualCurlRecognizer != v4)
      {
        goto LABEL_5;
      }

      [(BKIndirectPanGestureRecognizer *)v4 locationInView:self];
      v12 = v11;
      v14 = v13;
      if (self->_indirectManualCurlRecognizer == v4)
      {
        [(BKIndirectPanGestureRecognizer *)v4 translationInView:self];
        v56 = v55;
        v58 = v57;
        [(BKBookContainerView *)self bounds];
        v59 = CGRectGetWidth(v111) * 0.05;
        if (fabs(v56) < fmaxf(fminf(v59, 10.0), 3.0))
        {
          v60 = _AESwipeLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *v101 = v12;
            *&v101[1] = v14;
            v61 = [NSValue valueWithBytes:v101 objCType:"{CGPoint=dd}"];
            *v100 = v56;
            *&v100[1] = v58;
            v62 = [NSValue valueWithBytes:v100 objCType:"{CGPoint=dd}"];
            *buf = 138412546;
            *v107 = v61;
            *&v107[8] = 2112;
            v108 = v62;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "indirect translation/location was insufficient to update curl location:%@ translation:%@", buf, 0x16u);
          }

          goto LABEL_5;
        }

        if (!self->_manualCurl)
        {
          [(BKBookContainerView *)self _setupManualCurlForIndirectRecognizerForTranslation:v56, v58];
        }

        v65 = 0.0;
        if (self->_manualCurlIsRightSide)
        {
          [(BKBookContainerView *)self bounds];
          v65 = v66;
        }

        [(BKBookContainerView *)self bounds];
        manualCurlIsRightSide = self->_manualCurlIsRightSide;
        if (manualCurlIsRightSide && v56 > 0.0)
        {
          v5 = _AESwipeLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Swiping left, capping right translation", buf, 2u);
          }

          goto LABEL_4;
        }

        if (!manualCurlIsRightSide && v56 < 0.0)
        {
          v5 = _AESwipeLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Swiping right, capping left translation", buf, 2u);
          }

          goto LABEL_4;
        }

        v12 = v56 + v65;
        v14 = v58 + v67 * 0.5;
      }

      v15 = _AESwipeLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v109.x = v12;
        v109.y = v14;
        v16 = NSStringFromCGPoint(v109);
        *buf = 138412290;
        *v107 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Update toLocation:%@", buf, 0xCu);
      }

      kdebug_trace();
      v17 = [(BKBookContainerView *)self delegate];
      [v17 bookContainerView:self updateManualCurl:self->_manualCurl toLocation:{v12, v14}];

      goto LABEL_5;
    }

    if ([(BKIndirectPanGestureRecognizer *)v4 state]!= &dword_0 + 3 && [(BKIndirectPanGestureRecognizer *)v4 state]!= &dword_4 && [(BKIndirectPanGestureRecognizer *)v4 state]!= &dword_4 + 1)
    {
      goto LABEL_5;
    }

    v18 = _AESwipeLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_manualCurl != 0;
      trackingManualCurl = self->_trackingManualCurl;
      swipeBeforeManualCurl = self->_swipeBeforeManualCurl;
      *buf = 67109632;
      *v107 = v19;
      *&v107[4] = 1024;
      *&v107[6] = trackingManualCurl;
      LOWORD(v108) = 1024;
      *(&v108 + 2) = swipeBeforeManualCurl;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Ended curl gesture.  Have manual Curl? %d. tracking? %d. _swipeBeforeManual? %d", buf, 0x14u);
    }

    if (self->_swipeBeforeManualCurl)
    {
      v22 = _AESwipeLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "swiping before curl", buf, 2u);
      }

      self->_swipeBeforeManualCurl = 0;
      self->_trackingManualCurl = 0;
      if ([(BKIndirectPanGestureRecognizer *)v4 state]== &dword_0 + 3)
      {
        chapterTurn = self->_chapterTurn;
        v24 = [(BKBookContainerView *)self delegate];
        v25 = v24;
        swipeDirection = self->_swipeDirection;
        if (chapterTurn)
        {
          [v24 bookContainerView:self turnChapter:swipeDirection];
        }

        else
        {
          [v24 bookContainerView:self turnPages:swipeDirection];
        }
      }

      goto LABEL_5;
    }

    if (self->_startedWhilePreviousFinishing)
    {
      v34 = _AESwipeLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Started another curl while previous was finishing", buf, 2u);
      }

      self->_startedWhilePreviousFinishing = 0;
      v35 = [(BKBookContainerView *)self _tapLocationForTouchLocation:self->_startPoint.x, self->_startPoint.y];
      if (v35 == 1)
      {
        v36 = -1;
      }

      else
      {
        v36 = 0;
      }

      if (v35 == 2)
      {
        v36 = 1;
      }

      self->_pagesToTurnAfterFinishing += v36;
      if (!self->_finishingManualCurl)
      {
        v37 = _AESwipeLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "finished curl before ending previous curl", buf, 2u);
        }

        if (self->_pagesToTurnAfterFinishing)
        {
          [(BKBookContainerView *)self _turnPendingPagesAfterFinishing];
        }

        else
        {
          v75 = [(BKBookContainerView *)self delegate];
          [v75 bookContainerView:self cancelManualCurl:self->_manualCurl];
        }
      }

      goto LABEL_5;
    }

    manualCurl = self->_manualCurl;
    if (!self->_trackingManualCurl)
    {
      if (manualCurl)
      {
        v63 = _AESwipeLog();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "Not tracking but we have a manual curl, cancelling", buf, 2u);
        }

        v64 = [(BKBookContainerView *)self delegate];
        [v64 bookContainerView:self cancelManualCurl:self->_manualCurl];
      }

      goto LABEL_5;
    }

    if (!manualCurl)
    {
      v74 = _AESwipeLog();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "Tracking a manual curl but no manual curl created when gesture recognizer hit an ending state. No longer tracking manual curl", buf, 2u);
      }

      self->_trackingManualCurl = 0;
      goto LABEL_5;
    }

    if (self->_manualCurlRecognizer == v4)
    {
      [(BKIndirectPanGestureRecognizer *)v4 locationInView:self];
      v77 = v76;
      v79 = v78;
      v80 = [(BKBookContainerView *)self _tapLocationForTouchLocation:self->_startPoint.x, self->_startPoint.y];
      [(BKBookContainerView *)self bounds];
      v82 = v80 == 2 && v81 * 0.5 > v77;
      [(BKBookContainerView *)self bounds];
      v84 = v80 == 1 && v83 * 0.5 < v77;
      [(BKIndirectPanGestureRecognizer *)v4 velocityInView:self, v83 * 0.5];
      v86 = v85;
      if (v87 > 300.0 && v80 == 1 || v87 < -300.0 && v80 == 2 || v84 || v82)
      {
LABEL_135:
        v39 = 1;
        goto LABEL_136;
      }

      v88 = [(BKBookContainerView *)self _tapLocationForTouchLocation:v77, v79];
      if (!v88)
      {
        goto LABEL_53;
      }

      v39 = v86 > 300.0 && v88 == v80;
    }

    else
    {
      if (self->_indirectManualCurlRecognizer != v4)
      {
LABEL_53:
        v39 = 0;
        goto LABEL_136;
      }

      [(BKIndirectPanGestureRecognizer *)v4 velocityInView:self];
      v39 = v90 > 300.0 && !self->_manualCurlIsRightSide || v90 < -300.0 && self->_manualCurlIsRightSide;
      [(BKIndirectPanGestureRecognizer *)v4 translationInView:self];
      v92 = v91;
      [(BKBookContainerView *)self bounds];
      v93 = CGRectGetWidth(v112) * 0.4;
      if (v92 > v93 && !self->_manualCurlIsRightSide || v92 < -v93 && self->_manualCurlIsRightSide)
      {
        goto LABEL_135;
      }
    }

LABEL_136:
    self->_finishingManualCurl = 1;
    v94 = [(BKIndirectPanGestureRecognizer *)v4 state]== &dword_0 + 3 && v39;
    v95 = _AESwipeLog();
    v96 = os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT);
    if (v94)
    {
      if (v96)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, "finishing manual curl gesture", buf, 2u);
      }

      v97 = [(BKBookContainerView *)self delegate];
      [v97 bookContainerView:self finishManualCurl:self->_manualCurl];
    }

    else
    {
      if (v96)
      {
        v98 = [NSNumber numberWithBool:v39];
        *buf = 138412290;
        *v107 = v98;
        _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, "Cancelling manual curl. Valid location? %@", buf, 0xCu);
      }

      v99 = [(BKBookContainerView *)self delegate];
      [v99 bookContainerView:self cancelManualCurl:self->_manualCurl];
    }

    goto LABEL_5;
  }

  v6 = [(BKBookContainerView *)self delegate];
  v7 = [v6 bookContainerViewShouldBeginManualCurl:self];

  if (v7)
  {
    if (self->_finishingManualCurl)
    {
      self->_startedWhilePreviousFinishing = 1;
      v8 = _AESwipeLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "began while previous finishing", buf, 2u);
      }

      [(BKBookContainerView *)self _startLocationInViewWithGesture:v4];
      self->_lastPoint.x = v9;
      self->_lastPoint.y = v10;
      self->_startPoint = self->_lastPoint;
      goto LABEL_64;
    }

    p_startPoint = &self->_startPoint;
    [(BKBookContainerView *)self _startLocationInViewWithGesture:v4];
    self->_lastPoint.x = v28;
    self->_lastPoint.y = v29;
    self->_startPoint = self->_lastPoint;
    v30 = _AESwipeLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v110.x = p_startPoint->x;
      v110.y = self->_startPoint.y;
      v31 = NSStringFromCGPoint(v110);
      *buf = 138412290;
      *v107 = v31;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "curl began with start %@", buf, 0xCu);
    }

    v32 = [(BKBookContainerView *)self _tapLocationForTouchLocation:p_startPoint->x, self->_startPoint.y];
    if (self->_indirectManualCurlRecognizer == v4)
    {
      p_trackingManualCurl = &self->_trackingManualCurl;
      self->_trackingManualCurl = 1;
    }

    else
    {
      p_trackingManualCurl = &self->_trackingManualCurl;
      self->_trackingManualCurl = v32 - 1 < 2;
      if (v32 - 1 > 1)
      {
        goto LABEL_58;
      }
    }

    v40 = +[AETestDriver shared];
    [v40 postEvent:kBETestDriverPageTurnStart sender:self];

    v41 = +[AETestDriver shared];
    [v41 postEvent:kBETestDriverPageTurnSetupStart sender:self];

LABEL_58:
    v42 = _AESwipeLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      if (*p_trackingManualCurl)
      {
        v43 = &stru_1E7188;
      }

      else
      {
        v43 = @" but not tracking";
      }

      *buf = 138412290;
      *v107 = v43;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "began new manual curl%@", buf, 0xCu);
    }
  }

LABEL_64:
  if (!self->_trackingManualCurl)
  {
    goto LABEL_5;
  }

  [(BKIndirectPanGestureRecognizer *)v4 translationInView:self];
  v46 = v44;
  v47 = v45;
  p_lastPoint = &self->_lastPoint;
  if (v44 == self->_lastPoint.x && v45 == self->_lastPoint.y)
  {
    v5 = _AESwipeLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v54 = NSStringFromCGPoint(*p_lastPoint);
      *buf = 138412290;
      *v107 = v54;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Tracking manual curl - translation was the same as _lastPoint - %@", buf, 0xCu);
    }

    goto LABEL_4;
  }

  p_lastPoint->x = v44;
  self->_lastPoint.y = v45;
  if (!self->_manualCurl && self->_indirectManualCurlRecognizer != v4)
  {
    v50 = [(BKBookContainerView *)self _tapLocationForTouchLocation:self->_startPoint.x, self->_startPoint.y];
    x = self->_startPoint.x;
    y = self->_startPoint.y;
    if (v50 == 2)
    {
      [(BKBookContainerView *)self bounds];
      v69 = v53 - x + 20.0;
    }

    else
    {
      v69 = -(x + 20.0);
    }

    v70 = _AESwipeLog();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      if (v50 == 2)
      {
        v71 = @"Right";
      }

      else
      {
        v71 = @"Left";
      }

      *v105 = v46;
      *&v105[1] = v47;
      v72 = [NSValue valueWithBytes:v105 objCType:"{CGPoint=dd}"];
      *buf = 138412546;
      *v107 = v71;
      *&v107[8] = 2112;
      v108 = v72;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "started on %@, with translation:%@", buf, 0x16u);
    }

    kdebug_trace();
    objc_initWeak(buf, self);
    v73 = [(BKBookContainerView *)self delegate];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_32940;
    v102[3] = &unk_1E3770;
    objc_copyWeak(&v103, buf);
    v104 = v50 == 2;
    [v73 bookContainerView:self beginManualCurl:v50 == 2 atLocation:v102 completion:{x + v69, y}];

    objc_destroyWeak(&v103);
    objc_destroyWeak(buf);
  }

LABEL_5:
}

- (void)_setupManualCurlForIndirectRecognizerForTranslation:(CGPoint)a3
{
  if (!self->_manualCurl)
  {
    x = a3.x;
    v5 = a3.x < 0.0;
    v6 = 0.0;
    if (a3.x < 0.0)
    {
      [(BKBookContainerView *)self bounds];
      v6 = v7;
    }

    [(BKBookContainerView *)self bounds];
    v9 = v8;
    if (self->_usePageCurlAnimation)
    {
      if (x >= 0.0)
      {
        v11 = -(v6 + 20.0);
      }

      else
      {
        [(BKBookContainerView *)self bounds];
        v11 = v10 - v6 + 20.0;
      }

      v6 = v6 + v11;
    }

    v12 = _AESwipeLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"Left";
      if (x < 0.0)
      {
        v13 = @"Right";
      }

      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Indirect started on %@", buf, 0xCu);
    }

    kdebug_trace();
    objc_initWeak(buf, self);
    v14 = [(BKBookContainerView *)self delegate];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_32C04;
    v15[3] = &unk_1E3770;
    objc_copyWeak(&v16, buf);
    v17 = v5;
    [v14 bookContainerView:self beginManualCurl:x < 0.0 atLocation:v15 completion:{v6, v9 * 0.5}];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)leftPageGesture:(id)a3
{
  if ([(BKBookContainerView *)self shouldHandleSwipeGesture:a3])
  {
    v4 = _AESwipeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "swiping page reverse", v6, 2u);
    }

    v5 = [(BKBookContainerView *)self delegate];
    [v5 bookContainerView:self turnPages:1];
  }
}

- (void)rightPageGesture:(id)a3
{
  if ([(BKBookContainerView *)self shouldHandleSwipeGesture:a3])
  {
    v4 = _AESwipeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "swiping page forward", v6, 2u);
    }

    v5 = [(BKBookContainerView *)self delegate];
    [v5 bookContainerView:self turnPages:0];
  }
}

- (void)leftChapterGesture:(id)a3
{
  if ([(BKBookContainerView *)self shouldHandleSwipeGesture:a3])
  {
    v4 = _AESwipeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "swiping chapter reverse", v6, 2u);
    }

    v5 = [(BKBookContainerView *)self delegate];
    [v5 bookContainerView:self turnChapter:1];
  }
}

- (void)rightChapterGesture:(id)a3
{
  if ([(BKBookContainerView *)self shouldHandleSwipeGesture:a3])
  {
    v4 = _AESwipeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "swiping chapter forward", v6, 2u);
    }

    v5 = [(BKBookContainerView *)self delegate];
    [v5 bookContainerView:self turnChapter:0];
  }
}

+ (Class)_textRangeViewClass
{
  if (qword_22CFD8 != -1)
  {
    sub_136FF8();
  }

  v3 = qword_22CFD0;

  return v3;
}

- (BOOL)_touchIsNoNoClassOrMediaElement:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (+[BKBookContainerView _textRangeViewClass], (objc_opt_isKindOfClass()))
  {
    v6 = 1;
  }

  else
  {
    v8 = [(BKBookContainerView *)self delegate];
    v6 = [v8 bookContainerView:self hasMediaElementUnderTouch:v4];
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKBookContainerView *)self delegate];
  v9 = [v8 isShowingContent];

  if (!v9 || [(BKBookContainerView *)self externalGestureRecognizerCount]|| [(BKBookContainerView *)self _shouldIgnoreNavigationTouch:v7]|| self->_indirectManualCurlRecognizer == v6 && [(BKBookContainerView *)self _touchIsNoNoClassOrMediaElement:v7])
  {
    goto LABEL_32;
  }

  if (self->_leftTapRecognizer != v6 && self->_rightTapRecognizer != v6 && self->_manualCurlRecognizer != v6)
  {
    goto LABEL_9;
  }

  [v7 locationInView:self];
  v11 = [(BKBookContainerView *)self _tapLocationForTouchLocation:?];
  v12 = [v7 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_32:
    LOBYTE(v10) = 0;
    goto LABEL_33;
  }

  v13 = [v7 view];
  v14 = [v13 superview];
  v15 = [v14 superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_32;
  }

  if (!v11)
  {
    v19 = _AESwipeLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v26 = 138412290;
      v27 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Location for (%@) began in 'center'. Blocking touch events to gesture", &v26, 0xCu);
    }

    goto LABEL_32;
  }

  if (self->_leftTapRecognizer == v6 && v11 == 1)
  {
    v17 = &OBJC_IVAR___BKBookContainerView__cancelLeftTapTimer;
    v18 = &OBJC_IVAR___BKBookContainerView__cancelLeftTap;
  }

  else
  {
    if (self->_rightTapRecognizer != v6 || v11 != 2)
    {
      if (self->_manualCurlRecognizer == v6)
      {
        v10 = ![(BKBookContainerView *)self _touchIsNoNoClassOrMediaElement:v7];
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v17 = &OBJC_IVAR___BKBookContainerView__cancelRightTapTimer;
    v18 = &OBJC_IVAR___BKBookContainerView__cancelRightTap;
  }

  if (self->_manualCurlRecognizer != v6)
  {
    v22 = *v17;
    if (!*(&self->super.super.super.isa + v22))
    {
      *(&self->super.super.super.isa + *v18) = 0;
      v23 = [NSTimer scheduledTimerWithTimeInterval:self target:"cancelTapTimer:" selector:0 userInfo:0 repeats:0.3];
      v24 = *(&self->super.super.super.isa + v22);
      *(&self->super.super.super.isa + v22) = v23;
    }
  }

LABEL_9:
  if ((self->_previousPageSwipeRecognizer == v6 || self->_nextPageSwipeRecognizer == v6 || self->_previousChapterSwipeRecognizer == v6 || self->_nextChapterSwipeRecognizer == v6) && [(BKBookContainerView *)self _touchIsNoNoClassOrMediaElement:v7])
  {
    goto LABEL_32;
  }

  LOBYTE(v10) = 1;
LABEL_33:

  return v10;
}

- (BOOL)_shouldIgnoreNavigationTouch:(id)a3
{
  [a3 locationInView:self];
  [(BKBookContainerView *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  CGRectGetMinX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMaxY(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetMaxX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetMaxY(v14);
  CGPointSquaredDistanceFromPoint();
  result = 1;
  if (v8 >= 2025.0)
  {
    CGPointSquaredDistanceFromPoint();
    if (v9 >= 2025.0)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(BKBookContainerView *)self delegate];
  v6 = [v5 isShowingContent];

  if (!v6)
  {
    goto LABEL_7;
  }

  [(UITapGestureRecognizer *)v4 locationInView:self];
  v9 = v7;
  v10 = v8;
  if (self->_leftTapRecognizer == v4 || self->_rightTapRecognizer == v4)
  {
    if ([(BKBookContainerView *)self _tapLocationForTouchLocation:v7, v8])
    {
      v11 = ![(BKBookContainerView *)self _tapLocationIsInTextOverlapArea:v9, v10];
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v11) = 0;
    goto LABEL_8;
  }

  LOBYTE(v11) = 1;
LABEL_8:

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || self->_manualCurlRecognizer == v6 || self->_leftTapRecognizer == v6 || self->_rightTapRecognizer == v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || sub_336F4(v7))
    {
      goto LABEL_12;
    }
  }

  v8 = [(BKBookContainerView *)self gestureRecognizers];
  if ([v8 indexOfObject:v6] == 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  else
  {
    v9 = [(BKBookContainerView *)self gestureRecognizers];
    v10 = [v9 indexOfObject:v7];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 1;
      goto LABEL_13;
    }
  }

  v11 = [(BKBookContainerView *)self gestureRecognizers];
  v12 = [v11 indexOfObject:v7];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_12:
    v13 = 0;
  }

  else
  {
    v13 = !self->_trackingManualCurl;
  }

LABEL_13:

  return v13;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = (objc_opt_isKindOfClass() & 1) != 0 || self->_manualCurlRecognizer == v6 || self->_leftTapRecognizer == v6 || self->_rightTapRecognizer == v6;
  v9 = sub_336F4(v7);
  if (v9)
  {
    [v7 locationInView:self];
    v10 = [(BKBookContainerView *)self _tapLocationForTouchLocation:?]!= 0;
    if (!v8)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (v10 || !v9)
  {
    v12 = [(BKBookContainerView *)self delegate];
    v11 = [v12 bookContainerView:self pageTurnShouldRequireFailureOf:v7];
  }

  else
  {
    v11 = 1;
  }

LABEL_13:
  if (qword_22CFE8 != -1)
  {
    sub_13700C();
  }

  v13 = v11 & ~objc_opt_isKindOfClass();

  return v13 & 1;
}

- (void)cancelTapTimer:(id)a3
{
  v4 = a3;
  p_cancelLeftTapTimer = &self->_cancelLeftTapTimer;
  if (self->_cancelLeftTapTimer == v4)
  {
    v8 = v4;
    v6 = &OBJC_IVAR___BKBookContainerView__cancelLeftTap;
  }

  else
  {
    p_cancelLeftTapTimer = &self->_cancelRightTapTimer;
    if (self->_cancelRightTapTimer != v4)
    {
      goto LABEL_6;
    }

    v8 = v4;
    v6 = &OBJC_IVAR___BKBookContainerView__cancelRightTap;
  }

  *(&self->super.super.super.isa + *v6) = 1;
  [(NSTimer *)*p_cancelLeftTapTimer invalidate];
  v7 = *p_cancelLeftTapTimer;
  *p_cancelLeftTapTimer = 0;

  v4 = v8;
LABEL_6:
}

- (BOOL)shouldHandleSwipeGesture:(id)a3
{
  v4 = a3;
  if ([(BKBookContainerView *)self ignoreNextGesture])
  {
    [(BKBookContainerView *)self setIgnoreNextGesture:0];
    v5 = _AESwipeLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v6 = "Swipe Gesture was ignored";
      v7 = &v19;
LABEL_24:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (self->_trackingManualCurl)
  {
    if (self->_manualCurl)
    {
      goto LABEL_22;
    }

    v8 = _AESwipeLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "swipe before curl", buf, 2u);
    }

    self->_swipeBeforeManualCurl = 1;
    if ([v4 direction] == &dword_0 + 2)
    {
      v9 = 0;
    }

    else
    {
      if ([v4 direction] != &dword_0 + 1)
      {
LABEL_21:
        self->_chapterTurn = [v4 numberOfTouchesRequired] > 1;
LABEL_22:
        v5 = _AESwipeLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v6 = "Tracking manual curl -- won't swipe";
          v7 = v17;
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v9 = 1;
    }

    self->_swipeDirection = v9;
    goto LABEL_21;
  }

  [v4 locationInView:self];
  if ([(BKBookContainerView *)self _tapLocationForTouchLocation:?])
  {
    v10 = _AESwipeLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "swipe in the gutter", v16, 2u);
    }

    if ([v4 numberOfTouchesRequired] < 2)
    {
      goto LABEL_26;
    }
  }

  v11 = [(BKBookContainerView *)self delegate];
  v12 = [v11 bookContainerViewShouldTurnPage:self];

  if ((v12 & 1) == 0)
  {
    v5 = _AESwipeLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v6 = "Delegate told us to not swipe";
      v7 = &v15;
      goto LABEL_24;
    }

LABEL_25:

LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

  v13 = 1;
LABEL_27:

  return v13;
}

- (void)addGestureRecognizer:(id)a3
{
  v4 = a3;
  if (v4 && [(BKBookContainerView *)self internalGestureRecognizersSet])
  {
    [(BKBookContainerView *)self setExternalGestureRecognizerCount:[(BKBookContainerView *)self externalGestureRecognizerCount]+ 1];
  }

  v5.receiver = self;
  v5.super_class = BKBookContainerView;
  [(BKBookContainerView *)&v5 addGestureRecognizer:v4];
}

- (void)removeGestureRecognizer:(id)a3
{
  v4 = a3;
  if (v4 && [(BKBookContainerView *)self internalGestureRecognizersSet])
  {
    [(BKBookContainerView *)self setExternalGestureRecognizerCount:[(BKBookContainerView *)self externalGestureRecognizerCount]- 1];
  }

  v5.receiver = self;
  v5.super_class = BKBookContainerView;
  [(BKBookContainerView *)&v5 removeGestureRecognizer:v4];
}

- (BKBookContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end