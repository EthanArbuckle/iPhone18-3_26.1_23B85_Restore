@interface THCanvasExitTransformDelegate
- ($F79AFF246B753071D4AF2E33424639CF)shadowPropertiesForFreeTransformController:(SEL)a3 defaults:(id)a4;
- (BOOL)freeTransformControllerShouldAllowPinchDown:(id)a3;
- (BOOL)freeTransformControllerShouldAllowPinchUp:(id)a3;
- (BOOL)p_shouldShowShroudForVisibleSize:(CGSize)a3;
- (CGRect)freeTransformControllerOriginalTargetLayerFrame:(id)a3;
- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)a3;
- (CGRect)shadowBoundsForFreeTransformController:(id)a3;
- (CGSize)curtainSizeForFreeTransformController:(id)a3;
- (THCanvasExitTransformDelegate)initWithBookViewController:(id)a3;
- (id)p_shadowFadeInAnimation:(double)a3;
- (id)p_shadowFadeOutAnimation:(double)a3;
- (void)freeTransformControllerDidBegin:(id)a3;
- (void)freeTransformControllerDidContinue:(id)a3 withScale:(double)a4;
- (void)freeTransformControllerDidEnd:(id)a3 passedThreshold:(BOOL)a4;
- (void)freeTransformControllerWillBeginCompletionAnimation:(id)a3 passedThreshold:(BOOL)a4;
- (void)p_showThumbUsingTinyThumb:(BOOL)a3 freeTransformController:(id)a4;
@end

@implementation THCanvasExitTransformDelegate

- (THCanvasExitTransformDelegate)initWithBookViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = THCanvasExitTransformDelegate;
  v4 = [(THCanvasExitTransformDelegate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mBookViewController = a3;
    v4->mDocumentViewController = [a3 documentViewController];
    v5->mChapterBrowserController = [(THBookViewController *)v5->mBookViewController chapterBrowserController];
  }

  return v5;
}

- (CGRect)shadowBoundsForFreeTransformController:(id)a3
{
  [(THDocumentViewController *)self->mDocumentViewController shadowBoundsForCanvasExitTransformDelegate:self];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)p_shouldShowShroudForVisibleSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (TSUPhoneUI())
  {
    return 1;
  }

  [objc_msgSend(-[THDocumentViewController view](self->mDocumentViewController "view")];
  v8 = v7;
  [(THDocumentViewController *)self->mDocumentViewController paginatedSpreadSize];
  result = 0;
  if (v9 > 0.0 && width > 0.0)
  {
    return vabdd_f64(v10 / v9, (height - v8) / width) >= 0.00999999978;
  }

  return result;
}

- (void)freeTransformControllerDidBegin:(id)a3
{
  [(THDocumentViewController *)self->mDocumentViewController currentRelativePageIndexRange];
  if (v4 == 2)
  {
    self->_savedPagingState = [-[THDocumentViewController canvasScrollView](self->mDocumentViewController "canvasScrollView")];
    [-[THDocumentViewController canvasScrollView](self->mDocumentViewController "canvasScrollView")];
  }

  [(THBookViewController *)self->mBookViewController hideNavigationHistory];
  [(THBookViewController *)self->mBookViewController temporarilySetHUDViewHidden:1];
  [-[THDocumentViewController view](self->mDocumentViewController "view")];
  if (![(THCanvasExitTransformDelegate *)self p_shouldShowShroudForVisibleSize:v5, v6])
  {
    [(THTOCViewController *)self->mChapterBrowserController setShroudedFraction:0.0];
  }

  self->mChapterIndex = [(THDocumentViewController *)self->mDocumentViewController currentChapter];
  v7 = [(THDocumentViewController *)self->mDocumentViewController currentRelativePageIndexRange];
  self->mAnimatingPageIndexRange.location = v7;
  self->mAnimatingPageIndexRange.length = v8;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THBookViewController *)self->mBookViewController putTOCInBack];
  [(THChapterBrowserController *)self->mChapterBrowserController willTransitionFromChapterIndex:self->mChapterIndex];
  [(THChapterBrowserController *)self->mChapterBrowserController hidePageThumbnailAtIndex:self->mAnimatingPageIndexRange.location chapterIndex:self->mChapterIndex scrollIfNecessary:1];
  if (self->mAnimatingPageIndexRange.length == 2)
  {
    [(THChapterBrowserController *)self->mChapterBrowserController hidePageThumbnailAtIndex:self->mAnimatingPageIndexRange.location + 1 chapterIndex:self->mChapterIndex scrollIfNecessary:0];
  }

  [(THChapterBrowserController *)self->mChapterBrowserController scrollToThumbnailAtIndex:self->mAnimatingPageIndexRange.location];
  v9 = [(THDocumentViewController *)self->mDocumentViewController interactiveCanvasController];

  [v9 didBeginFreeTransform];
}

- (id)p_shadowFadeInAnimation:(double)a3
{
  v4 = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
  [(CABasicAnimation *)v4 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
  [(CABasicAnimation *)v4 setDuration:0.15];
  [(CABasicAnimation *)v4 setFromValue:[NSNumber numberWithFloat:0.0]];
  *&v5 = a3;
  [(CABasicAnimation *)v4 setToValue:[NSNumber numberWithFloat:v5]];
  [(CABasicAnimation *)v4 setRemovedOnCompletion:0];
  return v4;
}

- (id)p_shadowFadeOutAnimation:(double)a3
{
  v4 = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
  [(CABasicAnimation *)v4 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
  [(CABasicAnimation *)v4 setDuration:0.15];
  *&v5 = a3;
  [(CABasicAnimation *)v4 setFromValue:[NSNumber numberWithFloat:v5]];
  [(CABasicAnimation *)v4 setToValue:[NSNumber numberWithFloat:0.0]];
  [(CABasicAnimation *)v4 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v4 setRemovedOnCompletion:0];
  return v4;
}

- (void)p_showThumbUsingTinyThumb:(BOOL)a3 freeTransformController:(id)a4
{
  v5 = a3;
  v7 = [(THDocumentViewController *)self->mDocumentViewController canvasScrollView];
  mThumbView = self->mThumbView;
  if (!mThumbView)
  {
    v9 = [UIView alloc];
    [v7 frame];
    v10 = [v9 initWithFrame:?];
    self->mThumbView = v10;
    [(UIView *)v10 setAlpha:0.0];
    [objc_msgSend(v7 "superview")];
    mThumbView = self->mThumbView;
  }

  if (self->mUsingTinyThumb == v5)
  {
    if ([(NSArray *)[(UIView *)mThumbView subviews] count])
    {
      goto LABEL_26;
    }

    mThumbView = self->mThumbView;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = [(UIView *)mThumbView subviews];
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v39 + 1) + 8 * i) removeFromSuperview];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);
  }

  v16 = &off_349000;
  if (self->mAnimatingPageIndexRange.length == 1)
  {
    v17 = [[UIImageView alloc] initWithImage:{-[THChapterBrowserController thumbnailImageForPageAtIndex:chapterIndex:tinyThumb:](self->mChapterBrowserController, "thumbnailImageForPageAtIndex:chapterIndex:tinyThumb:", self->mAnimatingPageIndexRange.location, self->mChapterIndex, v5)}];
    v18 = [(THDocumentViewController *)self->mDocumentViewController is2UpForCanvasExitTransformDelegate:self];
    [(UIView *)self->mThumbView bounds];
    if (v18)
    {
      v22 = v21 * 0.5;
      v19 = (v21 - v21 * 0.5) * 0.5;
      v20 = 0.0;
    }

    else
    {
      v22 = v21;
    }

    [v17 setFrame:{v19, v20, v22}];
    [(UIView *)self->mThumbView addSubview:v17];
  }

  else
  {
    [(UIView *)self->mThumbView bounds];
    v24 = v23;
    v26 = v25;
    location = self->mAnimatingPageIndexRange.location;
    v28 = [[UIImageView alloc] initWithImage:{-[THChapterBrowserController thumbnailImageForPageAtIndex:chapterIndex:tinyThumb:](self->mChapterBrowserController, "thumbnailImageForPageAtIndex:chapterIndex:tinyThumb:", location, self->mChapterIndex, v5)}];
    v29 = [[UIImageView alloc] initWithImage:{-[THChapterBrowserController thumbnailImageForPageAtIndex:chapterIndex:tinyThumb:](self->mChapterBrowserController, "thumbnailImageForPageAtIndex:chapterIndex:tinyThumb:", location + 1, self->mChapterIndex, v5)}];
    v30 = v24 * 0.5;
    if (self->mAnimatingPageIndexRange.location)
    {
      v31 = 0.0;
      [v28 setFrame:{0.0, 0.0, v30, v26}];
      v32 = v30;
    }

    else
    {
      v33 = v26 * 1.08;
      v34 = (v26 - v26 * 1.08) * 0.5;
      [v28 setFrame:{0.0, v34, v30 * 1.08, v26 * 1.08}];
      v32 = v30 * 0.92;
      v26 = v26 * 0.92;
      v31 = v33 + v34 - v26;
      v30 = v30 * 1.08;
    }

    [v29 setFrame:{v30, v31, v32, v26}];
    [(UIView *)self->mThumbView addSubview:v28];
    [(UIView *)self->mThumbView addSubview:v29];

    v16 = &off_349000;
    if (!self->mAnimatingPageIndexRange.location)
    {
      if (self->_targetLayerShadowOpacity == 0.0)
      {
        [objc_msgSend(a4 "shadowLayer")];
        self->_targetLayerShadowOpacity = v35;
        [objc_msgSend(a4 "shadowLayer")];
        [objc_msgSend(a4 "shadowLayer")];
      }

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_B12D4;
      v38[3] = &unk_45AE00;
      v38[4] = v7;
      [UIView animateWithDuration:v38 animations:0.15];
    }
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_B12E0;
  v37[3] = &unk_45AE00;
  v37[4] = self;
  [UIView animateWithDuration:v37 animations:*(v16 + 448)];
LABEL_26:
  self->mUsingTinyThumb = v5;
}

- (void)freeTransformControllerDidContinue:(id)a3 withScale:(double)a4
{
  [-[THDocumentViewController view](self->mDocumentViewController "view")];
  if ([(THCanvasExitTransformDelegate *)self p_shouldShowShroudForVisibleSize:v7, v8])
  {
    mChapterBrowserController = self->mChapterBrowserController;
    TSUClamp();
    [(THTOCViewController *)mChapterBrowserController setShroudedFraction:?];
  }

  if (a4 >= 0.5)
  {
    if (self->mThumbView && !self->_thumbFadeOutAnimationInProgress)
    {
      self->_thumbFadeOutAnimationInProgress = 1;
      if (self->_targetLayerShadowOpacity > 0.0)
      {
        [objc_msgSend(a3 "shadowLayer")];
        [objc_msgSend(a3 "shadowLayer")];
        self->_targetLayerShadowOpacity = 0.0;
      }

      v10 = [(THDocumentViewController *)self->mDocumentViewController canvasScrollView];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_B14C0;
      v12[3] = &unk_45AE58;
      v12[4] = v10;
      v12[5] = self;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_B1508;
      v11[3] = &unk_45B188;
      v11[4] = self;
      [UIView animateWithDuration:v12 animations:v11 completion:0.15];
    }
  }

  else
  {

    [(THCanvasExitTransformDelegate *)self p_showThumbUsingTinyThumb:a4 < 0.25 freeTransformController:a3];
  }
}

- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)a3
{
  -[THChapterBrowserController rectForPageThumbnailAtIndex:chapterIndex:inLayer:](self->mChapterBrowserController, "rectForPageThumbnailAtIndex:chapterIndex:inLayer:", self->mAnimatingPageIndexRange.location, self->mChapterIndex, [objc_msgSend(a3 "freeTransformLayer")]);
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if (self->mAnimatingPageIndexRange.length == 2)
  {
    -[THChapterBrowserController rectForPageThumbnailAtIndex:chapterIndex:inLayer:](self->mChapterBrowserController, "rectForPageThumbnailAtIndex:chapterIndex:inLayer:", self->mAnimatingPageIndexRange.location + 1, self->mChapterIndex, [objc_msgSend(a3 "freeTransformLayer")]);
    v24.origin.x = v13;
    v24.origin.y = v14;
    v24.size.width = v15;
    v24.size.height = v16;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectUnion(v21, v24);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)freeTransformControllerWillBeginCompletionAnimation:(id)a3 passedThreshold:(BOOL)a4
{
  v4 = a4;
  if (a4 && !self->mThumbView)
  {
    [(THCanvasExitTransformDelegate *)self p_showThumbUsingTinyThumb:1 freeTransformController:a3];
  }

  mChapterBrowserController = self->mChapterBrowserController;

  [(THTOCViewController *)mChapterBrowserController setShrouded:!v4 animated:1 duration:0.25];
}

- (void)freeTransformControllerDidEnd:(id)a3 passedThreshold:(BOOL)a4
{
  v4 = a4;
  if (self->_targetLayerShadowOpacity > 0.0)
  {
    [objc_msgSend(a3 "shadowLayer")];
    self->_targetLayerShadowOpacity = 0.0;
  }

  v6 = [(THDocumentViewController *)self->mDocumentViewController canvasScrollView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_B1894;
  v9[3] = &unk_45AE00;
  v9[4] = v6;
  [UIView animateWithDuration:v9 animations:0.15];
  [(UIView *)self->mThumbView removeFromSuperview];

  self->mThumbView = 0;
  if (!v4)
  {
    [(THBookViewController *)self->mBookViewController removeTOC];
    [(THBookViewController *)self->mBookViewController setCenterTitleForCurrentNavigationUnit];
    [-[THDocumentViewController canvasViewController](self->mDocumentViewController "canvasViewController")];
    [(THBookViewController *)self->mBookViewController temporarilySetHUDViewHidden:0];
  }

  [(THChapterBrowserController *)self->mChapterBrowserController showPageThumbnailAtIndex:self->mAnimatingPageIndexRange.location];
  if (self->mAnimatingPageIndexRange.length == 2)
  {
    [(THChapterBrowserController *)self->mChapterBrowserController showPageThumbnailAtIndex:self->mAnimatingPageIndexRange.location + 1];
  }

  [-[THDocumentViewController interactiveCanvasController](self->mDocumentViewController "interactiveCanvasController")];
  if (v4)
  {
    [(THBookViewController *)self->mBookViewController dismissActivePopover];
    if (![(THChapterBrowserController *)self->mChapterBrowserController paginatedTOCShowsStatusBar])
    {
      v7 = [(THBookViewController *)self->mBookViewController isToolbarHidden];
      mBookViewController = self->mBookViewController;
      if (v7)
      {
        [(THBookViewController *)mBookViewController refreshStatusBarAppearance];
      }

      else
      {
        [(THBookViewController *)mBookViewController hideToolbarAnimated:1];
      }
    }

    [(THChapterBrowserController *)self->mChapterBrowserController didTransitionFromCanvas];
    [(THTOCViewControllerDelegate *)[(THTOCViewController *)self->mChapterBrowserController delegate] didTransitionFromViewController:self->mDocumentViewController toTOCViewController:self->mChapterBrowserController];
    [(THDocumentViewController *)self->mDocumentViewController setVisibleInfoUpdatesAllowedInLandscape:0];
    [(THBookViewController *)self->mBookViewController refreshStatusBarAppearance];
    [(THBookViewController *)self->mBookViewController recordOutgoingMajorNavigationJump];
  }

  [(THChapterBrowserController *)self->mChapterBrowserController setIsPinchingDownFromCanvas:0];
  if (self->mAnimatingPageIndexRange.length == 2)
  {
    [-[THDocumentViewController canvasScrollView](self->mDocumentViewController "canvasScrollView")];
  }
}

- (CGSize)curtainSizeForFreeTransformController:(id)a3
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($F79AFF246B753071D4AF2E33424639CF)shadowPropertiesForFreeTransformController:(SEL)a3 defaults:(id)a4
{
  [a4 completionTargetRect];
  CGRectGetWidth(v8);
  [objc_msgSend(a4 "targetLayer")];
  CGRectGetWidth(v9);
  [(THDocumentViewController *)self->mDocumentViewController is2UpForCanvasExitTransformDelegate:self];
  return TSDMultiplySizeScalar();
}

- (CGRect)freeTransformControllerOriginalTargetLayerFrame:(id)a3
{
  [(THDocumentViewController *)self->mDocumentViewController shadowBoundsForCanvasExitTransformDelegate:self];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)freeTransformControllerShouldAllowPinchDown:(id)a3
{
  v3 = [-[THDocumentViewController canvasViewController](self->mDocumentViewController canvasViewController];
  if (![v3 allowsPinchZoom])
  {
    return 1;
  }

  [v3 viewScale];
  v5 = v4;
  [v3 minimumPinchViewScale];
  return vabdd_f64(v5, v6) < 0.00999999978;
}

- (BOOL)freeTransformControllerShouldAllowPinchUp:(id)a3
{
  v3 = [-[THDocumentViewController canvasViewController](self->mDocumentViewController canvasViewController];
  if (![v3 allowsPinchZoom])
  {
    return 1;
  }

  [v3 minimumPinchViewScale];
  v5 = v4;
  [v3 maximumPinchViewScale];
  return vabdd_f64(v5, v6) < 0.00999999978;
}

@end