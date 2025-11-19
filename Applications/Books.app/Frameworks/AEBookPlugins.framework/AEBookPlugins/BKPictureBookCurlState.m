@interface BKPictureBookCurlState
- (BKPictureBookCurlContainerView)curlContainer;
- (BKPictureBookCurlState)init;
- (BOOL)_isNightMode;
- (BOOL)finishManualCurlAtPostion:(CGPoint)a3;
- (BOOL)generateWithOldLeftPageNumber:(int64_t)a3 oldRightPageNumber:(int64_t)a4 newLeftPageNumber:(int64_t)a5 newRightPageNumber:(int64_t)a6 useMirrorForBackImage:(BOOL)a7;
- (CGPoint)manualCurlStartPosition;
- (id)_getDummyImageForSize:(CGSize)a3;
- (id)backPagesImageArray;
- (id)curlPage;
- (id)pageArray;
- (id)pagesImageArray;
- (void)dealloc;
- (void)updateManualCurlToPosition:(CGPoint)a3;
@end

@implementation BKPictureBookCurlState

- (BKPictureBookCurlState)init
{
  v6.receiver = self;
  v6.super_class = BKPictureBookCurlState;
  v2 = [(BKPictureBookCurlState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_scale = 1.0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(BKPictureBookCurlState *)self setCurlContainer:0];
  v3.receiver = self;
  v3.super_class = BKPictureBookCurlState;
  [(BKPictureBookCurlState *)&v3 dealloc];
}

- (BOOL)generateWithOldLeftPageNumber:(int64_t)a3 oldRightPageNumber:(int64_t)a4 newLeftPageNumber:(int64_t)a5 newRightPageNumber:(int64_t)a6 useMirrorForBackImage:(BOOL)a7
{
  WeakRetained = objc_loadWeakRetained(&self->_curlContainer);
  v13 = WeakRetained;
  if (WeakRetained && self->_navDelegate)
  {
    v54 = a5;
    [WeakRetained bounds];
    x = v70.origin.x;
    y = v70.origin.y;
    height = v70.size.height;
    v17 = v70.size.width * 0.5;
    MidX = CGRectGetMidX(v70);
    v19 = MidX + x;
    forwardCurl = self->_forwardCurl;
    if (self->_forwardCurl)
    {
      v20 = MidX + x;
    }

    else
    {
      v20 = x;
    }

    if (self->_forwardCurl)
    {
      v21 = x;
    }

    else
    {
      v21 = v19;
    }

    if (self->_forwardCurl)
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 + -1.0;
    }

    v23 = [[BKPictureBookCurlPageView alloc] initWithFrame:x, y, v17, height];
    v24 = [[BKPictureBookCurlPageView alloc] initWithFrame:v19, y, v17, height];
    v25 = [[BKPictureBookCurlPageView alloc] initWithFrame:v22, y, v17 + 1.0, height];
    v26 = [[BKPictureBookCurlPageView alloc] initWithFrame:v21, y, v17, height];
    objc_storeStrong(&self->_leftPage, v23);
    objc_storeStrong(&self->_rightPage, v24);
    v56 = v25;
    objc_storeStrong(&self->_backPage, v25);
    v55 = v26;
    objc_storeStrong(&self->_otherBackPage, v26);
    [(BKPictureBookCurlPageView *)self->_backPage setClipsToBounds:0];
    [(BKPictureBookCurlPageView *)v23 setScale:self->_scale];
    [(BKPictureBookCurlPageView *)v23 setDrawsSpine:self->_applyMaskAndGutter];
    [(BKPictureBookCurlPageView *)v24 setScale:self->_scale];
    [(BKPictureBookCurlPageView *)v24 setDrawsSpine:self->_applyMaskAndGutter];
    [(BKPictureBookCurlPageView *)v24 setRight:1];
    v27 = [(BKPictureBookCurlState *)self leftSourceView];
    v28 = [v27 window];

    v58 = v23;
    if (v28)
    {
      v29 = [(BKPictureBookCurlState *)self leftSourceView];
      v30 = [(BKPictureBookCurlState *)self leftSourceView];
      [v30 bounds];
      v31 = [v29 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];
      [(BKPictureBookCurlPageView *)v58 addSubview:v31];

      v23 = v58;
    }

    else
    {
      navDelegate = self->_navDelegate;
      scale = self->_scale;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_17564;
      v68[3] = &unk_1E2C48;
      v69 = v23;
      [(BKPictureBookNavigationDelegate *)navDelegate pageNavigationSnapshotForPageNumber:a3 size:0 isRight:0 zoomScale:v68 applyMaskAndGutter:v17 completion:height, scale];
    }

    [(BKPictureBookCurlPageView *)v23 setPageOffset:a3];
    v35 = [(BKPictureBookCurlState *)self rightSourceView];
    v36 = [v35 window];

    if (v36)
    {
      v37 = [(BKPictureBookCurlState *)self rightSourceView];
      v38 = [(BKPictureBookCurlState *)self rightSourceView];
      [v38 bounds];
      v39 = [v37 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];
      [(BKPictureBookCurlPageView *)v24 addSubview:v39];
    }

    else
    {
      v40 = self->_navDelegate;
      v41 = self->_scale;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_17570;
      v66[3] = &unk_1E2C48;
      v67 = v24;
      [(BKPictureBookNavigationDelegate *)v40 pageNavigationSnapshotForPageNumber:a4 size:1 isRight:0 zoomScale:v66 applyMaskAndGutter:v17 completion:height, v41];
      v37 = v67;
    }

    [(BKPictureBookCurlPageView *)v24 setPageOffset:a4];
    if (self->_forwardCurl)
    {
      v42 = v54;
    }

    else
    {
      v42 = a6;
    }

    [(BKPictureBookCurlPageView *)self->_backPage setPageOffset:v42];
    [(BKPictureBookCurlPageView *)self->_backPage setScale:self->_scale];
    [(BKPictureBookCurlPageView *)self->_backPage setDrawsSpine:self->_applyMaskAndGutter];
    if ([(BKPictureBookCurlState *)self _isNightMode])
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v43 = ;
    [(BKPictureBookCurlPageView *)self->_backPage setBackgroundColor:v43];
    v44 = self->_navDelegate;
    if (self->_forwardCurl)
    {
      v45 = v54;
    }

    else
    {
      v45 = a6;
    }

    v46 = self->_scale;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1757C;
    v63[3] = &unk_1E2E78;
    v63[4] = self;
    v65 = !forwardCurl;
    v47 = v13;
    v64 = v47;
    [(BKPictureBookNavigationDelegate *)v44 pageNavigationSnapshotForPageNumber:v45 size:!forwardCurl isRight:0 zoomScale:v63 applyMaskAndGutter:v17 completion:height, v46];
    v48 = self->_navDelegate;
    v49 = self->_scale;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1760C;
    v61[3] = &unk_1E2C48;
    v50 = v47;
    v62 = v50;
    v32 = 1;
    [(BKPictureBookNavigationDelegate *)v48 pageNavigationSnapshotForPageNumber:a6 size:1 isRight:0 zoomScale:v61 applyMaskAndGutter:v17 completion:height, v49];
    v51 = self->_navDelegate;
    v52 = self->_scale;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_17618;
    v59[3] = &unk_1E2C48;
    v60 = v50;
    [(BKPictureBookNavigationDelegate *)v51 pageNavigationSnapshotForPageNumber:v54 size:0 isRight:0 zoomScale:v59 applyMaskAndGutter:v17 completion:height, v52];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)_isNightMode
{
  WeakRetained = objc_loadWeakRetained(&self->_curlContainer);
  v3 = [WeakRetained traitCollection];
  v4 = [v3 userInterfaceStyle] == &dword_0 + 2 || UIAccessibilityIsInvertColorsEnabled();

  return v4;
}

- (id)_getDummyImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  UIGraphicsBeginImageContextWithOptions(a3, 0, 0.0);
  v5 = +[UIColor whiteColor];
  [v5 setFill];

  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = width;
  v9.size.height = height;
  UIRectFill(v9);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

- (void)updateManualCurlToPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_manualCurlCurrentTime = CFAbsoluteTimeGetCurrent();
  pageCurl = self->_pageCurl;

  [(BKPageCurl *)pageCurl updateManualCurlToLocation:x, y];
}

- (BOOL)finishManualCurlAtPostion:(CGPoint)a3
{
  v4 = vabdd_f64(a3.x, self->_manualCurlStartPosition.x);
  WeakRetained = objc_loadWeakRetained(&self->_curlContainer);
  [WeakRetained frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  curlThreshold = self->_curlThreshold;
  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  v15 = curlThreshold * CGRectGetWidth(v22);
  if (v4 <= v15)
  {
    if (!self->_applyMaskAndGutter)
    {
      v20 = [(BKPictureBookCurlState *)self curlPage];
      [v20 pageCurlWillCancel];
    }

    [(BKPictureBookCurlState *)self cancelManualCurl];
  }

  else
  {
    [(BKPageCurl *)self->_pageCurl finishManualCurl];
    v16 = [(BKPictureBookCurlPageView *)self->_backPage image];
    forwardCurl = self->_forwardCurl;
    v18 = objc_loadWeakRetained(&self->_curlContainer);
    v19 = v18;
    if (forwardCurl)
    {
      [v18 setLeftImage:v16];
    }

    else
    {
      [v18 setRightImage:v16];
    }
  }

  return v4 > v15;
}

- (id)pagesImageArray
{
  v3 = [(BKPictureBookCurlPageView *)self->_leftPage image];
  v4 = [(BKPictureBookCurlPageView *)self->_rightPage image];
  v5 = [NSArray arrayWithObjects:v3, v4, 0];

  return v5;
}

- (id)backPagesImageArray
{
  v3 = [(BKPictureBookCurlPageView *)self->_backPage image];
  v4 = [(BKPictureBookCurlPageView *)self->_otherBackPage image];
  v5 = [NSArray arrayWithObjects:v3, v4, 0];

  return v5;
}

- (id)pageArray
{
  if (self->_autoCurl)
  {
    [(BKPictureBookCurlPageView *)self->_rightPage setTopView:self->_rightSourceView isRightPage:1];
    [(BKPictureBookCurlPageView *)self->_leftPage setTopView:self->_leftSourceView isRightPage:0];
  }

  return [NSArray arrayWithObjects:self->_leftPage, self->_rightPage, 0];
}

- (id)curlPage
{
  if (self->_forwardCurl)
  {
    v3 = 176;
  }

  else
  {
    v3 = 168;
  }

  v4 = *(&self->super.isa + v3);
  if (self->_forwardCurl)
  {
    v5 = 168;
  }

  else
  {
    v5 = 176;
  }

  v6 = *(&self->super.isa + v5);
  if (self->_forwardCurl)
  {
    v7 = 24;
  }

  else
  {
    v7 = 16;
  }

  v8 = *(&self->super.isa + v7);
  if (self->_forwardCurl)
  {
    v9 = 16;
  }

  else
  {
    v9 = 24;
  }

  v10 = *(&self->super.isa + v9);
  if (v4)
  {
    [v8 setScale:self->_scale];
    [v8 setTopView:v4 isRightPage:self->_forwardCurl];
  }

  if (v6)
  {
    [v10 setScale:self->_scale];
    [v10 setTopView:v6 isRightPage:!self->_forwardCurl];
  }

  if (!self->_applyMaskAndGutter)
  {
    [v8 setDuration:0.3];
    [v8 setShouldAnimate:self->_autoCurl];
    [v8 setShouldHaveGradient:1];
  }

  return v8;
}

- (BKPictureBookCurlContainerView)curlContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_curlContainer);

  return WeakRetained;
}

- (CGPoint)manualCurlStartPosition
{
  objc_copyStruct(v4, &self->_manualCurlStartPosition, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end