@interface BKPictureBookCurlState
- (BKPictureBookCurlContainerView)curlContainer;
- (BKPictureBookCurlState)init;
- (BOOL)_isNightMode;
- (BOOL)finishManualCurlAtPostion:(CGPoint)postion;
- (BOOL)generateWithOldLeftPageNumber:(int64_t)number oldRightPageNumber:(int64_t)pageNumber newLeftPageNumber:(int64_t)leftPageNumber newRightPageNumber:(int64_t)rightPageNumber useMirrorForBackImage:(BOOL)image;
- (CGPoint)manualCurlStartPosition;
- (id)_getDummyImageForSize:(CGSize)size;
- (id)backPagesImageArray;
- (id)curlPage;
- (id)pageArray;
- (id)pagesImageArray;
- (void)dealloc;
- (void)updateManualCurlToPosition:(CGPoint)position;
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

- (BOOL)generateWithOldLeftPageNumber:(int64_t)number oldRightPageNumber:(int64_t)pageNumber newLeftPageNumber:(int64_t)leftPageNumber newRightPageNumber:(int64_t)rightPageNumber useMirrorForBackImage:(BOOL)image
{
  WeakRetained = objc_loadWeakRetained(&self->_curlContainer);
  v13 = WeakRetained;
  if (WeakRetained && self->_navDelegate)
  {
    leftPageNumberCopy = leftPageNumber;
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

    height = [[BKPictureBookCurlPageView alloc] initWithFrame:x, y, v17, height];
    height2 = [[BKPictureBookCurlPageView alloc] initWithFrame:v19, y, v17, height];
    height3 = [[BKPictureBookCurlPageView alloc] initWithFrame:v22, y, v17 + 1.0, height];
    height4 = [[BKPictureBookCurlPageView alloc] initWithFrame:v21, y, v17, height];
    objc_storeStrong(&self->_leftPage, height);
    objc_storeStrong(&self->_rightPage, height2);
    v56 = height3;
    objc_storeStrong(&self->_backPage, height3);
    v55 = height4;
    objc_storeStrong(&self->_otherBackPage, height4);
    [(BKPictureBookCurlPageView *)self->_backPage setClipsToBounds:0];
    [(BKPictureBookCurlPageView *)height setScale:self->_scale];
    [(BKPictureBookCurlPageView *)height setDrawsSpine:self->_applyMaskAndGutter];
    [(BKPictureBookCurlPageView *)height2 setScale:self->_scale];
    [(BKPictureBookCurlPageView *)height2 setDrawsSpine:self->_applyMaskAndGutter];
    [(BKPictureBookCurlPageView *)height2 setRight:1];
    leftSourceView = [(BKPictureBookCurlState *)self leftSourceView];
    window = [leftSourceView window];

    v58 = height;
    if (window)
    {
      leftSourceView2 = [(BKPictureBookCurlState *)self leftSourceView];
      leftSourceView3 = [(BKPictureBookCurlState *)self leftSourceView];
      [leftSourceView3 bounds];
      v31 = [leftSourceView2 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];
      [(BKPictureBookCurlPageView *)v58 addSubview:v31];

      height = v58;
    }

    else
    {
      navDelegate = self->_navDelegate;
      scale = self->_scale;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_17564;
      v68[3] = &unk_1E2C48;
      v69 = height;
      [(BKPictureBookNavigationDelegate *)navDelegate pageNavigationSnapshotForPageNumber:number size:0 isRight:0 zoomScale:v68 applyMaskAndGutter:v17 completion:height, scale];
    }

    [(BKPictureBookCurlPageView *)height setPageOffset:number];
    rightSourceView = [(BKPictureBookCurlState *)self rightSourceView];
    window2 = [rightSourceView window];

    if (window2)
    {
      rightSourceView2 = [(BKPictureBookCurlState *)self rightSourceView];
      rightSourceView3 = [(BKPictureBookCurlState *)self rightSourceView];
      [rightSourceView3 bounds];
      v39 = [rightSourceView2 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];
      [(BKPictureBookCurlPageView *)height2 addSubview:v39];
    }

    else
    {
      v40 = self->_navDelegate;
      v41 = self->_scale;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_17570;
      v66[3] = &unk_1E2C48;
      v67 = height2;
      [(BKPictureBookNavigationDelegate *)v40 pageNavigationSnapshotForPageNumber:pageNumber size:1 isRight:0 zoomScale:v66 applyMaskAndGutter:v17 completion:height, v41];
      rightSourceView2 = v67;
    }

    [(BKPictureBookCurlPageView *)height2 setPageOffset:pageNumber];
    if (self->_forwardCurl)
    {
      rightPageNumberCopy = leftPageNumberCopy;
    }

    else
    {
      rightPageNumberCopy = rightPageNumber;
    }

    [(BKPictureBookCurlPageView *)self->_backPage setPageOffset:rightPageNumberCopy];
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
      rightPageNumberCopy2 = leftPageNumberCopy;
    }

    else
    {
      rightPageNumberCopy2 = rightPageNumber;
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
    [(BKPictureBookNavigationDelegate *)v44 pageNavigationSnapshotForPageNumber:rightPageNumberCopy2 size:!forwardCurl isRight:0 zoomScale:v63 applyMaskAndGutter:v17 completion:height, v46];
    v48 = self->_navDelegate;
    v49 = self->_scale;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1760C;
    v61[3] = &unk_1E2C48;
    v50 = v47;
    v62 = v50;
    v32 = 1;
    [(BKPictureBookNavigationDelegate *)v48 pageNavigationSnapshotForPageNumber:rightPageNumber size:1 isRight:0 zoomScale:v61 applyMaskAndGutter:v17 completion:height, v49];
    v51 = self->_navDelegate;
    v52 = self->_scale;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_17618;
    v59[3] = &unk_1E2C48;
    v60 = v50;
    [(BKPictureBookNavigationDelegate *)v51 pageNavigationSnapshotForPageNumber:leftPageNumberCopy size:0 isRight:0 zoomScale:v59 applyMaskAndGutter:v17 completion:height, v52];
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
  traitCollection = [WeakRetained traitCollection];
  v4 = [traitCollection userInterfaceStyle] == &dword_0 + 2 || UIAccessibilityIsInvertColorsEnabled();

  return v4;
}

- (id)_getDummyImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  UIGraphicsBeginImageContextWithOptions(size, 0, 0.0);
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

- (void)updateManualCurlToPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  self->_manualCurlCurrentTime = CFAbsoluteTimeGetCurrent();
  pageCurl = self->_pageCurl;

  [(BKPageCurl *)pageCurl updateManualCurlToLocation:x, y];
}

- (BOOL)finishManualCurlAtPostion:(CGPoint)postion
{
  v4 = vabdd_f64(postion.x, self->_manualCurlStartPosition.x);
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
      curlPage = [(BKPictureBookCurlState *)self curlPage];
      [curlPage pageCurlWillCancel];
    }

    [(BKPictureBookCurlState *)self cancelManualCurl];
  }

  else
  {
    [(BKPageCurl *)self->_pageCurl finishManualCurl];
    image = [(BKPictureBookCurlPageView *)self->_backPage image];
    forwardCurl = self->_forwardCurl;
    v18 = objc_loadWeakRetained(&self->_curlContainer);
    v19 = v18;
    if (forwardCurl)
    {
      [v18 setLeftImage:image];
    }

    else
    {
      [v18 setRightImage:image];
    }
  }

  return v4 > v15;
}

- (id)pagesImageArray
{
  image = [(BKPictureBookCurlPageView *)self->_leftPage image];
  image2 = [(BKPictureBookCurlPageView *)self->_rightPage image];
  v5 = [NSArray arrayWithObjects:image, image2, 0];

  return v5;
}

- (id)backPagesImageArray
{
  image = [(BKPictureBookCurlPageView *)self->_backPage image];
  image2 = [(BKPictureBookCurlPageView *)self->_otherBackPage image];
  v5 = [NSArray arrayWithObjects:image, image2, 0];

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