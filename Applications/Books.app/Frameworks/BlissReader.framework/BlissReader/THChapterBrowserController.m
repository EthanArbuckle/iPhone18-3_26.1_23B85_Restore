@interface THChapterBrowserController
- ($F79AFF246B753071D4AF2E33424639CF)shadowPropertiesForFreeTransformController:(SEL)a3 defaults:(id)a4;
- (BOOL)chapterViewController:(id)a3 followLink:(id)a4;
- (BOOL)followAnchor:(id)a3 pulse:(BOOL)a4;
- (BOOL)followLink:(id)a3 animated:(BOOL)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)introMediaControllerIsActive;
- (BOOL)p_isTOCLandscape;
- (BOOL)p_showingIntroMedia;
- (BOOL)p_verticalSpaceLimited;
- (BOOL)passthroughView:(id)a3 shouldAcceptHitAtPoint:(CGPoint)a4 onView:(id)a5 withEvent:(id)a6;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)thumbnailWasTapped:(id)a3 atPoint:(CGPoint)a4 forLong:(BOOL)a5;
- (CGPoint)p_offsetForThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4;
- (CGRect)frameForChapterViewController:(id)a3;
- (CGRect)frameForChapterViewController:(id)a3 withSize:(CGSize)a4;
- (CGRect)frameForPageThumbAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4;
- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)a3;
- (CGRect)originalCanvasScrollViewFrame;
- (CGRect)p_beginTransitionFromPageThumbnail:(id)a3 transformView:(id)a4 freeTransform:(BOOL)a5 firstThumbNailToTransition:(BOOL)a6;
- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4 inLayer:(id)a5;
- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)a3 inLayer:(id)a4;
- (CGSize)cachedFrameSize;
- (CGSize)curtainSizeForFreeTransformController:(id)a3;
- (CGSize)firstThumbOverlap;
- (CGSize)firstThumbSize;
- (CGSize)thumbSize;
- (NSArray)thumbnailSubviews;
- (THChapterBrowserController)initWithNibName:(id)a3 bundle:(id)a4 bookPropertiesDelegate:(id)a5 delegate:(id)a6;
- (UIView)originalCanvasScrollViewSuperview;
- (_NSRange)p_chapterRelativePageIndexesCurrentlyVisibleInRect:(CGRect)a3 forChapterFrame:(CGRect)a4 chapterPageCount:(unint64_t)a5;
- (double)p_pagesScrollViewNextChapterThreshhold;
- (double)p_updateChapterWidths;
- (id).cxx_construct;
- (id)backgroundColorForNavigationBar:(id)a3;
- (id)chapterViewController:(id)a3 actionForHyperlink:(id)a4 inRep:(id)a5 gesture:(id)a6;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)documentRootForChapterViewController:(id)a3;
- (id)foregroundTintColorForNavigationBar:(id)a3;
- (id)p_pageThumbnailViewForModelLink:(id)a3;
- (id)p_pageThumbnailViewForPageIndex:(unint64_t)a3;
- (id)p_thumbShownForChapter:(unint64_t)a3 index:(unint64_t)a4;
- (id)presentingViewControllerForChapterViewController:(id)a3;
- (id)thumbnailImageForPageAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4 tinyThumb:(BOOL)a5;
- (id)titleColorForNavigationBar:(id)a3;
- (id)transitionContentView;
- (id)unmovingParentViewForFreeTransformController:(id)a3;
- (id)visibleThumbnailIndexes;
- (int)p_chapterIndexForCurrentScrollPosition;
- (unint64_t)p_firstVisibleThumbnailPageIndexInCurrentChapter;
- (void)_configurePagesScrollView;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateContentOffsets;
- (void)chapterViewController:(id)a3 displayPageForModelLink:(id)a4;
- (void)chapterViewControllerWasTapped:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromFlowInPortraitLockedBook;
- (void)didTransitionFromCanvas;
- (void)draggingStartedFromPageControl:(id)a3;
- (void)flushThumbnails;
- (void)freeTransformControllerDidBegin:(id)a3;
- (void)freeTransformControllerDidContinue:(id)a3 withScale:(double)a4;
- (void)freeTransformControllerDidEnd:(id)a3 passedThreshold:(BOOL)a4;
- (void)freeTransformControllerWillBeginCompletionAnimation:(id)a3 passedThreshold:(BOOL)a4;
- (void)freeTransformControllerWillEnd:(id)a3 passedThreshold:(BOOL)a4;
- (void)hideBackground;
- (void)hidePageThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4 scrollIfNecessary:(BOOL)a5;
- (void)introMediaControllerMoviePlayerWillHideControls;
- (void)introMediaControllerShouldAdvancePast:(id)a3;
- (void)p_addIntroMediaView;
- (void)p_adjustViewsForSize:(CGSize)a3;
- (void)p_animationDidStopForThumbnailView:(id)a3;
- (void)p_backgroundScrollingDidEnd;
- (void)p_cancelAllContentNodeLoading;
- (void)p_cleanupAfterTransitionFromPageThumbnail:(id)a3;
- (void)p_clearChapterViewAtIndex:(unint64_t)a3;
- (void)p_configureThumbCaps;
- (void)p_configureThumbCapsForSize:(CGSize)a3 updateImmediately:(BOOL)a4;
- (void)p_configureThumbsAndUpdateLayout:(BOOL)a3;
- (void)p_fixupChapterViewFrames;
- (void)p_highlightThumbTargetsIfShouldInThumb:(id)a3 atPoint:(CGPoint)a4 coverFullThumb:(BOOL)a5;
- (void)p_pageThumbScrollingDidEnd;
- (void)p_preloadContentNodesForVisibleThumbnails;
- (void)p_recoverFromFastScrollingDesynchronization;
- (void)p_releaseOutlets;
- (void)p_removeAdjacentChapterViews;
- (void)p_removeIntroMediaView;
- (void)p_resetPagesScrollViewAndCapThumbCount:(BOOL)a3 firstVisibleRelativePage:(unint64_t)a4 resetContentOffset:(BOOL)a5;
- (void)p_scrollPageScrollViewToOffset:(CGPoint)a3;
- (void)p_scrollToThumbnailAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)p_setChapterIndex:(unint64_t)a3 forScrub:(BOOL)a4 stillScrolling:(BOOL)a5;
- (void)p_setupChapterViewControllerAtIndex:(unint64_t)a3 withChapterIndex:(unint64_t)a4 allowThumbnail:(BOOL)a5;
- (void)p_setupNextChapterView;
- (void)p_setupPreviousChapterView;
- (void)p_startIntroMediaIfNecessary;
- (void)p_thumbnailAnimationDidStopWithContext:(id)a3;
- (void)p_transitionFromPageThumbnail:(id)a3 destinationRect:(CGRect)a4 shouldShroud:(BOOL)a5;
- (void)p_transitionThumbnailToDVC:(id)a3;
- (void)p_updateAdjacentChapterViews;
- (void)p_updateBottomWrapperFrame;
- (void)p_updateChapterBackgroundsView;
- (void)p_updatePageAreaBackgroundFrame;
- (void)p_updatePageControl;
- (void)p_updatePageScrubberControlForSizeClassChange;
- (void)p_updatePageScrubberFrame;
- (void)p_updatePageThumbnails:(BOOL)a3;
- (void)p_updatePagesScrollView;
- (void)p_updateThumbLayout;
- (void)prepareToScrollToThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4;
- (void)relinquishIntroMediaViewController;
- (void)scrollToContentOffset:(CGPoint)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setChapterIndex:(unint64_t)a3;
- (void)setIntroMediaViewController:(id)a3;
- (void)setIntroMediaViewController:(id)a3 showIt:(BOOL)a4;
- (void)showBackground;
- (void)showPageThumbnailAtIndex:(unint64_t)a3;
- (void)takeChapterIndexFrom:(id)a3;
- (void)takeDragInsideFromPageControl:(id)a3;
- (void)takeTouchUpFromPageControl:(id)a3;
- (void)tapToShowToolbarGesture:(id)a3;
- (void)thumbnailWasPressed:(id)a3 atPoint:(CGPoint)a4 forLong:(BOOL)a5;
- (void)transitionPageToDVC:(unint64_t)a3 chapterIndex:(unint64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionFromChapterIndex:(unint64_t)a3;
@end

@implementation THChapterBrowserController

- (THChapterBrowserController)initWithNibName:(id)a3 bundle:(id)a4 bookPropertiesDelegate:(id)a5 delegate:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = THBundle();
  v19.receiver = self;
  v19.super_class = THChapterBrowserController;
  v11 = [(THTOCViewController *)&v19 initWithNibName:@"THChapterBrowserController" bundle:v10 bookPropertiesDelegate:v8 delegate:v9];

  if (v11)
  {
    [(THChapterBrowserController *)v11 p_configureThumbsAndUpdateLayout:0];
    [(THChapterBrowserController *)v11 setPreviousChapterIndex:0x7FFFFFFFFFFFFFFFLL];
    v11->mChapterIndex = 0;
    v11->mPreservedThumbnailOffset = CGPointZero;
    v12 = +[NSMutableSet set];
    [(THChapterBrowserController *)v11 setThumbnailsHiddenForPinch:v12];

    v13 = +[NSMutableSet set];
    [(THChapterBrowserController *)v11 setContentNodesAskedToLoad:v13];

    v11->mCBCIsOnscreen = 0;
    v11->mDeferPagesScrollViewScrolls = 0;
    v11->mDeferBackgroundScrollViewScrolls = 0;
    v14 = [(THChapterBrowserController *)v11 bottomWrapperView];
    [v14 setAcceptsHits:0];

    v11->mDidPurgeIntroMediaController = 0;
    v11->mDidAutoHideToolbar = 0;
    v15 = +[NSMutableArray array];
    [(THChapterBrowserController *)v11 setThumbnailViewsInTransition:v15];

    bzero(&v11->_flags, 1uLL);
    v16 = +[UITraitCollection bc_allAPITraits];
    v17 = [(THChapterBrowserController *)v11 registerForTraitChanges:v16 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v11;
}

- (void)p_releaseOutlets
{
  [(UIView *)self->_thumbnailTrackBackgroundView removeFromSuperview];
  thumbnailTrackBackgroundView = self->_thumbnailTrackBackgroundView;
  self->_thumbnailTrackBackgroundView = 0;

  v4 = [(THChapterBrowserController *)self pagesScrollView];
  [v4 setDelegate:0];

  v5 = [(THChapterBrowserController *)self backgroundScrollView];
  [v5 setDelegate:0];

  mWrapperView = self->mWrapperView;
  self->mWrapperView = 0;

  mBackgroundScrollView = self->mBackgroundScrollView;
  self->mBackgroundScrollView = 0;

  v8 = [(THChapterBrowserController *)self thumbnailSubviews];
  [v8 makeObjectsPerformSelector:"teardown"];

  v9 = [(THChapterBrowserController *)self introMediaViewController];
  [v9 setDelegate:0];

  mIntroMediaContainerView = self->mIntroMediaContainerView;
  self->mIntroMediaContainerView = 0;

  v11 = 0;
  mChapterViewControllers = self->mChapterViewControllers;
  do
  {
    v13 = mChapterViewControllers[v11];
    if (v13)
    {
      [(THChapterViewController *)v13 teardown];
      v14 = mChapterViewControllers[v11];
      mChapterViewControllers[v11] = 0;
    }

    ++v11;
  }

  while (v11 != 3);
  mIntroMediaViewController = self->mIntroMediaViewController;
  self->mIntroMediaViewController = 0;

  self->mDidPurgeIntroMediaController = 1;
  mBackgroundsView = self->mBackgroundsView;
  self->mBackgroundsView = 0;

  mPagesScrollView = self->mPagesScrollView;
  self->mPagesScrollView = 0;

  mChapterPageControl = self->mChapterPageControl;
  self->mChapterPageControl = 0;

  mChapterPageControlWrapper = self->mChapterPageControlWrapper;
  self->mChapterPageControlWrapper = 0;

  mBottomWrapperView = self->mBottomWrapperView;
  self->mBottomWrapperView = 0;

  mPageAreaBackground = self->mPageAreaBackground;
  self->mPageAreaBackground = 0;

  [(THChapterBrowserController *)self setContentNodesAskedToLoad:0];
  [(THChapterBrowserController *)self setPageAreaBackgroundColor:0];
  [(THChapterBrowserController *)self setThumbnailViewsInTransition:0];
  [(THChapterBrowserController *)self setShowToolbarRecognizer:0];

  [(THChapterBrowserController *)self setThumbnailsHiddenForPinch:0];
}

- (void)dealloc
{
  [(THChapterBrowserController *)self p_releaseOutlets];
  v3.receiver = self;
  v3.super_class = THChapterBrowserController;
  [(THTOCViewController *)&v3 dealloc];
}

- (void)p_updateThumbLayout
{
  v3 = [(THChapterBrowserController *)self p_firstVisibleThumbnailPageIndexInCurrentChapter];
  [(THChapterBrowserController *)self flushThumbnails];
  [(THChapterBrowserController *)self p_updateChapterWidths];
  [(THChapterBrowserController *)self p_configureThumbCaps];
  mChapterIndex = self->mChapterIndex;
  self->mChapterIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(THChapterBrowserController *)self setChapterIndex:mChapterIndex];
  [(THChapterBrowserController *)self p_offsetForThumbnailAtIndex:v3 chapterIndex:self->mChapterIndex];

  [(THChapterBrowserController *)self p_scrollPageScrollViewToOffset:?];
}

- (void)p_configureThumbsAndUpdateLayout:(BOOL)a3
{
  v5 = [(THTOCViewController *)self delegate];
  if ([v5 isCompactWidthForChapterBrowserController:self])
  {
    v14 = 0.85;
  }

  else
  {
    v6 = [(THTOCViewController *)self delegate];
    v7 = [v6 isCompactHeightForChapterBrowserController:self];
    v8 = 0.85;
    if ((v7 & 1) == 0)
    {
      v8 = 1.0;
    }

    v14 = v8;
  }

  [(THChapterBrowserController *)self thumbScale];
  if (vabdd_f64(v9, v14) >= 0.00999999978)
  {
    [(THChapterBrowserController *)self setThumbScale:v14];
    v10 = vdup_n_s32([(THChapterBrowserController *)self p_isTOCLandscape]);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v12 = vcltzq_s64(vshlq_n_s64(v11, 0x3FuLL));
    self->_thumbSize = vrndaq_f64(vmulq_n_f64(vbslq_s8(v12, xmmword_34A310, xmmword_34A300), v14));
    v13 = vrndaq_f64(vmulq_n_f64(vbslq_s8(v12, xmmword_34A330, xmmword_34A320), v14));
    self->_firstThumbSize = v13;
    self->_firstThumbOverlap = vsubq_f64(v13, self->_thumbSize);
    if (a3)
    {

      [(THChapterBrowserController *)self p_updateThumbLayout];
    }
  }
}

- (void)p_configureThumbCaps
{
  v5 = [(THChapterBrowserController *)self view];
  [v5 frame];
  [(THChapterBrowserController *)self p_configureThumbCapsForSize:0 updateImmediately:v3, v4];
}

- (void)p_configureThumbCapsForSize:(CGSize)a3 updateImmediately:(BOOL)a4
{
  v4 = a4;
  width = a3.width;
  [(THChapterBrowserController *)self thumbSize:a3.width];
  *&v7 = width / v7;
  v8 = (ceilf(*&v7) + 3.0);
  [(THChapterBrowserController *)self setMaximumNumberOfThumbsToRightOfLeftmostDuringBackgroundDrag:v8];
  [(THChapterBrowserController *)self setMaximumNumberOfThumbsToLeftOfLeftmostDuringBackgroundDrag:v8];

  [(THChapterBrowserController *)self p_updatePageThumbnails:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = THChapterBrowserController;
  [(THChapterBrowserController *)&v11 viewWillAppear:a3];
  if ([(THChapterBrowserController *)self isViewLoaded]&& self->mChapterIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(THTOCViewController *)self dataSource];
    v5 = [v4 toc:self numberOfTilesInDivision:0];

    [(THChapterBrowserController *)self chapterWidth];
    v7 = v6 * v5;
    [(THScrollView *)self->mBackgroundScrollView bounds];
    [(THScrollView *)self->mBackgroundScrollView setContentSize:v7, v8];
    ++self->mSuspendThumbViewUpdates;
    if (![(THChapterBrowserController *)self introMediaControllerIsActive])
    {
      mChapterIndex = self->mChapterIndex;
      [(THChapterBrowserController *)self chapterWidth];
      [(THScrollView *)self->mBackgroundScrollView setContentOffset:v10 * mChapterIndex, 0.0];
    }

    [(THChapterBrowserController *)self p_updatePagesScrollView];
    --self->mSuspendThumbViewUpdates;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v25.receiver = self;
  v25.super_class = THChapterBrowserController;
  [(THChapterBrowserController *)&v25 viewDidAppear:a3];
  [(THChapterBrowserController *)self p_updatePageScrubberControlForSizeClassChange];
  [(THChapterBrowserController *)self _configurePagesScrollView];
  v4 = [(THTOCViewController *)self delegate];
  [v4 setupDVCForTOCController:self];

  +[CATransaction begin];
  self->mDeferPagesScrollViewScrolls = 1;
  if ([(THChapterBrowserController *)self isViewLoaded])
  {
    mChapterIndex = self->mChapterIndex;
    if (mChapterIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(THChapterBrowserController *)self p_setupChapterViewControllerAtIndex:1 withChapterIndex:mChapterIndex allowThumbnail:self->mIsPinchingDownFromCanvas];
      [(THChapterBrowserController *)self p_fixupChapterViewFrames];
      [(THChapterBrowserController *)self p_updateChapterBackgroundsView];
      [(THChapterBrowserController *)self p_updatePageControl];
      if (self->mDidPurgeIntroMediaController)
      {
        v6 = [(THChapterBrowserController *)self introMediaViewController];

        if (!v6)
        {
          v7 = [(THTOCViewController *)self delegate];
          v8 = [v7 introMediaViewControllerForChapterBrowserController:self];
          [(THChapterBrowserController *)self setIntroMediaViewController:v8 showIt:0];

          self->mDidPurgeIntroMediaController = 0;
        }
      }
    }
  }

  [(THChapterBrowserController *)self p_configureThumbCaps];
  if (!self->mChapterViewControllers[1])
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THChapterBrowserController viewDidAppear:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:367 description:@"The current chapter view should not be nil."];
  }

  [(THChapterBrowserController *)self p_resetPagesScrollViewAndCapThumbCount:0 firstVisibleRelativePage:0 resetContentOffset:0];
  if (!self->mChapterViewControllers[1])
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"[THChapterBrowserController viewDidAppear:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:375 description:{@"The current chapter view is nil, likely caused by memory issues."}];

    [(THChapterBrowserController *)self p_setupChapterViewControllerAtIndex:1 withChapterIndex:self->mChapterIndex allowThumbnail:self->mIsPinchingDownFromCanvas];
  }

  if (!self->mDeferExtendedLayout)
  {
    [(THChapterBrowserController *)self p_updateAdjacentChapterViews];
  }

  v15 = [(THChapterBrowserController *)self thumbnailSubviews];
  [v15 makeObjectsPerformSelector:"updateFreeTransformUnmovingParentView"];

  self->mDeferPagesScrollViewScrolls = 0;
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  v17 = v16;
  v18 = 0.0;
  if (v17 <= 0.0)
  {
    [(THScrollView *)self->mBackgroundScrollView contentOffset];
  }

  v19 = -v18;
  [(THChapterBrowserController *)self chapterWidth];
  if (vabdd_f64(v19, v20) >= 0.00999999978)
  {
    [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setAlpha:1.0];
  }

  if (!self->mIsPinchingDownFromCanvas)
  {
    v21 = [(THTOCViewController *)self delegate];
    [v21 chapterBrowserController:self updateTitleForChapterIndex:self->mChapterIndex];
  }

  [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
  if (v23 == self->mPreservedThumbnailOffset.x && v22 == self->mPreservedThumbnailOffset.y)
  {
    [(THChapterBrowserController *)self p_updatePageThumbnails:1];
  }

  else
  {
    [(THChapterBrowserController *)self p_scrollPageScrollViewToOffset:?];
  }

  self->mCBCIsOnscreen = 1;
  self->mIgnoringThumbnailTaps = 0;
  self->mBackgroundSwipeDidInitiateScroll = 0;
  self->mBackgroundSwipeBeginningChapter = 0;
  +[CATransaction commit];
  v24 = [(THTOCViewController *)self delegate];
  [v24 tocIsReadyToPresent:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = THChapterBrowserController;
  [(THChapterBrowserController *)&v5 viewWillDisappear:a3];
  v4 = [(THChapterBrowserController *)self introMediaViewController];
  [v4 stop];

  self->mDeferPagesScrollViewScrolls = 1;
}

- (void)didReceiveMemoryWarning
{
  v7.receiver = self;
  v7.super_class = THChapterBrowserController;
  [(THChapterBrowserController *)&v7 didReceiveMemoryWarning];
  if (!self->mCBCIsOnscreen)
  {
    [(THChapterViewController *)self->mChapterViewControllers[1] viewWillDisappear:0];
    v3 = [(THChapterViewController *)self->mChapterViewControllers[1] view];
    [v3 removeFromSuperview];

    [(THChapterViewController *)self->mChapterViewControllers[1] viewDidDisappear:0];
    [(THChapterViewController *)self->mChapterViewControllers[1] teardown];
    v4 = self->mChapterViewControllers[1];
    self->mChapterViewControllers[1] = 0;

    v5 = [(THChapterBrowserController *)self thumbnailSubviews];
    [v5 makeObjectsPerformSelector:"teardown"];
    [v5 makeObjectsPerformSelector:"removeFromSuperview"];
  }

  v6.receiver = self;
  v6.super_class = THChapterBrowserController;
  [(THChapterBrowserController *)&v6 didReceiveMemoryWarning];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THChapterBrowserController;
  [(THChapterBrowserController *)&v4 viewDidDisappear:a3];
  self->mCBCIsOnscreen = 0;
  self->mIsPinchingDownFromCanvas = 0;
  [(THChapterBrowserController *)self p_removeAdjacentChapterViews];
}

- (void)p_updateBottomWrapperFrame
{
  v3 = [(THChapterBrowserController *)self p_hasPageScrubberControl];
  [(TSWPassThroughView *)self->mBottomWrapperView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v3)
  {
    [(UIView *)self->mChapterPageControlWrapper frame];
    v10 = CGRectGetMinY(v15) - v9;
  }

  else
  {
    v11 = [(THChapterBrowserController *)self view];
    [v11 bounds];
    v10 = v12 - v9;
  }

  mBottomWrapperView = self->mBottomWrapperView;

  [(TSWPassThroughView *)mBottomWrapperView setFrame:v5, v10, v7, v9];
}

- (void)p_updatePageAreaBackgroundFrame
{
  v3 = [(THChapterBrowserController *)self p_hasPageScrubberControl];
  [(UIView *)self->mPageAreaBackground frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v3)
  {
    [(UIView *)self->mChapterPageControlWrapper frame];
    MinY = CGRectGetMinY(v15);
  }

  else
  {
    v11 = [(THChapterBrowserController *)self view];
    [v11 bounds];
    MinY = v12;
  }

  mPageAreaBackground = self->mPageAreaBackground;

  [(UIView *)mPageAreaBackground setFrame:v5, v7, v9, MinY];
}

- (void)p_updatePageScrubberFrame
{
  v3 = [(THChapterBrowserController *)self im_isCompactWidth];
  v4 = [(THChapterBrowserController *)self view];
  [v4 bounds];
  v6 = v5;
  v7 = [(THChapterBrowserController *)self view];
  [v7 safeAreaInsets];
  v9 = v8;

  v10 = [(THChapterBrowserController *)self view];
  [v10 bounds];
  v12 = v11;

  v13 = [(THChapterBrowserController *)self view];
  [v13 safeAreaInsets];
  v14 = v6 + -48.0 - v9;
  v16 = v15 + 48.0;

  [(UIView *)self->mChapterPageControlWrapper setFrame:0.0, v14, v12, v16];
  v17 = [(THChapterBrowserController *)self view];
  [v17 frame];
  if (v3)
  {
    v19 = 32.0;
  }

  else
  {
    v19 = 77.0;
  }

  v20 = v18 + v19 * -2.0;

  mChapterPageControl = self->mChapterPageControl;

  [(THChapterBrowserScrubbablePageControl *)mChapterPageControl setFrame:v19, 0.0, v20, v16];
}

- (void)p_updatePageScrubberControlForSizeClassChange
{
  if ([(THChapterBrowserController *)self p_hasPageScrubberControl])
  {
    [(THChapterBrowserController *)self p_updatePageScrubberFrame];
    [(THChapterBrowserController *)self p_updatePageControl];
    v3 = [(UIView *)self->mChapterPageControlWrapper superview];

    if (!v3)
    {
      [(UIView *)self->mWrapperView addSubview:self->mChapterPageControlWrapper];
    }
  }

  else
  {
    v4 = [(UIView *)self->mChapterPageControlWrapper superview];

    if (v4)
    {
      [(UIView *)self->mChapterPageControlWrapper removeFromSuperview];
    }
  }

  [(THChapterBrowserController *)self p_updateBottomWrapperFrame];

  [(THChapterBrowserController *)self p_updatePageAreaBackgroundFrame];
}

- (void)tapToShowToolbarGesture:(id)a3
{
  if (![(THChapterBrowserController *)self introMediaControllerIsActive])
  {

    [(THChapterBrowserController *)self chapterViewControllerWasTapped:0];
  }
}

- (void)_configurePagesScrollView
{
  if (isPhone())
  {
    if ([(THChapterBrowserController *)self p_verticalSpaceLimited])
    {
      [(TSWPassThroughView *)self->mBottomWrapperView frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v38 = [(THChapterBrowserController *)self view];
      [v38 frame];
      MaxY = CGRectGetMaxY(v46);
      [(TSWPassThroughView *)self->mBottomWrapperView frame];
      Height = CGRectGetHeight(v47);
      v11 = [(THChapterBrowserController *)self view];
      [v11 safeAreaInsets];
      v13 = MaxY - Height + -8.0 - v12;

      [(TSWPassThroughView *)self->mBottomWrapperView setFrame:v4, v13, v6, v8];
      v39 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
      [v39 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = self->_firstThumbSize.height;
      v40 = [(THChapterBrowserController *)self view];
      [v40 safeAreaInsets];
      v22 = v21;

      v41 = [(THChapterBrowserController *)self view];
      [v41 bounds];
      v23 = CGRectGetMaxY(v48);
      v24 = v20 + 16.0 + v22;
      v49.origin.x = v15;
      v49.origin.y = v17;
      v49.size.width = v19;
      v49.size.height = v24;
      v25 = v23 - CGRectGetHeight(v49);

      v42 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
      [v42 setFrame:{v15, v25, v19, v24}];

      v43 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
      v26 = [v43 layer];
      LODWORD(v27) = 1.0;
      [v26 setOpacity:v27];
    }

    else
    {
      v44 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
      v28 = [v44 layer];
      [v28 setOpacity:0.0];

      [(TSWPassThroughView *)self->mBottomWrapperView frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      [(UIView *)self->mChapterPageControlWrapper frame];
      MinY = CGRectGetMinY(v50);
      [(TSWPassThroughView *)self->mBottomWrapperView frame];
      v36 = CGRectGetHeight(v51);
      mBottomWrapperView = self->mBottomWrapperView;

      [(TSWPassThroughView *)mBottomWrapperView setFrame:v30, MinY - v36, v32, v34];
    }
  }
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = THChapterBrowserController;
  [(THChapterBrowserController *)&v48 viewDidLoad];
  v5 = [(THChapterBrowserController *)self view];
  [(THChapterBrowserController *)self setShowToolbarRecognizer:0];
  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapToShowToolbarGesture:"];
  showToolbarRecognizer = self->_showToolbarRecognizer;
  self->_showToolbarRecognizer = v6;

  [(UITapGestureRecognizer *)self->_showToolbarRecognizer setCancelsTouchesInView:1];
  [(UITapGestureRecognizer *)self->_showToolbarRecognizer setDelegate:self];
  [v5 addGestureRecognizer:self->_showToolbarRecognizer];
  [v5 setAutoresizingMask:18];
  [v5 bounds];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  v12 = CGRectGetHeight(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v13 = CGRectGetWidth(v50);
  [(THChapterBrowserController *)self setChapterWidth:?];
  if ([(THChapterBrowserController *)self p_isTOCLandscape])
  {
    v14 = 141.0;
  }

  else
  {
    v14 = 189.0;
  }

  [(TSWPassThroughView *)self->mBottomWrapperView setFrame:0.0, v12 - v14, v13, v14];
  [(THScrollViewWithPassthrough *)self->mPagesScrollView setFrame:0.0, 0.0, v13, v14];
  [(UIView *)self->mWrapperView setFrame:x, y, width, height];
  [(UIView *)self->mBackgroundsView setFrame:-v13, 0.0, v13 * 3.0, v12];
  v15 = +[UIColor clearColor];
  [(THScrollViewWithPassthrough *)self->mPagesScrollView setBackgroundColor:v15];

  v16 = [(THChapterBrowserController *)self pageAreaBackgroundColor];
  [(UIView *)self->mPageAreaBackground setBackgroundColor:v16];

  [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentInsetAdjustmentBehavior:1];
  [(THScrollView *)self->mBackgroundScrollView setPreventBounceAnimation:1];
  [(THScrollView *)self->mBackgroundScrollView setDelaysContentTouches:0];
  [(THScrollView *)self->mBackgroundScrollView setContentInsetAdjustmentBehavior:2];
  [(THChapterBrowserController *)self showBackground];
  [(THChapterBrowserController *)self setEdgesForExtendedLayout:15];
  [(THChapterBrowserController *)self setExtendedLayoutIncludesOpaqueBars:1];
  self->mDeferExtendedLayout = 0;
  v17 = [UIView alloc];
  [(THChapterBrowserController *)self chapterWidth];
  v19 = v18;
  [(THChapterBrowserController *)self chapterWidth];
  v21 = [v17 initWithFrame:{-v19, 0.0, v20, v12}];
  mIntroMediaContainerView = self->mIntroMediaContainerView;
  self->mIntroMediaContainerView = v21;

  v23 = +[UIColor blackColor];
  [(UIView *)self->mIntroMediaContainerView setBackgroundColor:v23];

  [(UIView *)self->mIntroMediaContainerView setClipsToBounds:1];
  v24 = [[THChapterBrowserScrubbablePageControl alloc] initWithFrame:77.0, 0.0, v13 + -154.0, 48.0];
  mChapterPageControl = self->mChapterPageControl;
  self->mChapterPageControl = v24;

  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setAutoresizingMask:0];
  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl addTarget:self action:"draggingStartedFromPageControl:" forControlEvents:1];
  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl addTarget:self action:"takeDragInsideFromPageControl:" forControlEvents:4];
  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl addTarget:self action:"takeTouchUpFromPageControl:" forControlEvents:64];
  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl addTarget:self action:"takeTouchUpFromPageControl:" forControlEvents:128];
  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl addTarget:self action:"takeChapterIndexFrom:" forControlEvents:4096];
  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setExclusiveTouch:1];
  v26 = [(THTOCViewController *)self delegate];
  v27 = [v26 introMediaViewControllerForChapterBrowserController:self];
  if (v27)
  {
    v2 = [(THTOCViewController *)self delegate];
    v3 = [v2 introMediaViewControllerForChapterBrowserController:self];
    v28 = [v3 isMovie];
  }

  else
  {
    v28 = 0;
  }

  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setFirstDotSpecialRendering:v28];
  if (v27)
  {
  }

  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl frame];
  v30 = v29;
  [v5 safeAreaInsets];
  v32 = v31;
  [v5 safeAreaInsets];
  v34 = [[UIView alloc] initWithFrame:{0.0, v12 + -48.0 - v32, v13, v30 + v33}];
  mChapterPageControlWrapper = self->mChapterPageControlWrapper;
  self->mChapterPageControlWrapper = v34;

  v36 = +[UIColor blackColor];
  [(UIView *)self->mChapterPageControlWrapper setBackgroundColor:v36];

  [(UIView *)self->mChapterPageControlWrapper addSubview:self->mChapterPageControl];
  if (isPhone())
  {
    v37 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    thumbnailTrackBackgroundView = self->_thumbnailTrackBackgroundView;
    self->_thumbnailTrackBackgroundView = v37;

    v39 = [(THTOCViewController *)self delegate];
    v40 = [v39 TOCViewControllerToolbarBackgroundColor:self];
    v41 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
    [v41 setBackgroundColor:v40];

    v42 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
    [v42 setAutoresizingMask:10];

    v43 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
    v44 = [v43 layer];
    LODWORD(v45) = 1.0;
    [v44 setOpacity:v45];

    mBackgroundScrollView = self->mBackgroundScrollView;
    v47 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
    [(THScrollView *)mBackgroundScrollView addSubview:v47];
  }
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  if ([(THChapterBrowserController *)self p_showingIntroMedia])
  {
    v3 = [(THChapterBrowserController *)self introMediaViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = [(THTOCViewController *)self delegate];
  v3 = [v2 isToolbarHidden];

  return v3;
}

- (void)relinquishIntroMediaViewController
{
  [(THChapterBrowserController *)self setIntroMediaViewController:0];
  self->mDeferBackgroundScrollViewScrolls = 1;
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  v4 = v3;
  v6 = v5;
  [(THScrollView *)self->mBackgroundScrollView setContentInset:0.0, 0.0, 0.0, 0.0];
  [(THScrollView *)self->mBackgroundScrollView setContentOffset:v4, v6];
  self->mDeferBackgroundScrollViewScrolls = 0;
}

- (void)setIntroMediaViewController:(id)a3
{
  v5 = a3;
  mIntroMediaViewController = self->mIntroMediaViewController;
  v8 = v5;
  if (mIntroMediaViewController != v5)
  {
    v7 = [(THiOSIntroMediaViewController *)mIntroMediaViewController delegate];

    if (v7 == self)
    {
      [(THiOSIntroMediaViewController *)self->mIntroMediaViewController setDelegate:0];
    }

    objc_storeStrong(&self->mIntroMediaViewController, a3);
    [(THiOSIntroMediaViewController *)self->mIntroMediaViewController setDelegate:self];
  }
}

- (void)setIntroMediaViewController:(id)a3 showIt:(BOOL)a4
{
  v4 = a4;
  v29 = a3;
  if (!v29)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THChapterBrowserController setIntroMediaViewController:showIt:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:719 description:@"use relinquishIntroMediaViewController instead"];
  }

  [(THChapterBrowserController *)self loadViewIfNeeded];
  [(THScrollView *)self->mBackgroundScrollView addSubview:self->mIntroMediaContainerView];
  [(THChapterBrowserController *)self setIntroMediaViewController:v29];
  self->mDeferBackgroundScrollViewScrolls = 1;
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  v10 = v9;
  v12 = v11;
  [(THChapterBrowserController *)self chapterWidth];
  [(THScrollView *)self->mBackgroundScrollView setContentInset:0.0, v13, 0.0, 0.0];
  [(THScrollView *)self->mBackgroundScrollView setContentOffset:v10, v12];
  self->mDeferBackgroundScrollViewScrolls = 0;
  [(THChapterBrowserController *)self setHasIntroPage:1];
  if (v4 || [(THChapterBrowserController *)self chapterIndex]<= 1)
  {
    [(UIView *)self->mIntroMediaContainerView bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(THChapterBrowserController *)self introMediaViewController];
    v23 = [v22 view];
    [v23 setFrame:{v15, v17, v19, v21}];

    v24 = [(THChapterBrowserController *)self introMediaViewController];
    [(THChapterBrowserController *)self addChildViewController:v24];

    mIntroMediaContainerView = self->mIntroMediaContainerView;
    v26 = [(THChapterBrowserController *)self introMediaViewController];
    v27 = [v26 view];
    [(UIView *)mIntroMediaContainerView addSubview:v27];

    if (v4)
    {
      [(THChapterBrowserController *)self chapterWidth];
      [(THScrollView *)self->mBackgroundScrollView setContentOffset:-v28, 0.0];
      [(UIView *)self->mChapterPageControlWrapper setAlpha:0.0];
    }
  }
}

- (void)willTransitionFromChapterIndex:(unint64_t)a3
{
  self->mIsPinchingDownFromCanvas = 1;
  self->mDeferExtendedLayout = 1;
  if (self->mChapterIndex != a3)
  {
    [(THChapterBrowserController *)self setChapterIndex:a3];
    [(THChapterBrowserController *)self p_setupChapterViewControllerAtIndex:1 withChapterIndex:a3 allowThumbnail:1];
    [(THChapterBrowserController *)self p_resetPagesScrollViewAndCapThumbCount:0 firstVisibleRelativePage:0 resetContentOffset:1];
  }

  [(THChapterBrowserController *)self chapterWidth];
  v6 = v5 * a3;
  mBackgroundScrollView = self->mBackgroundScrollView;

  [(THScrollView *)mBackgroundScrollView setContentOffset:v6, 0.0];
}

- (void)didTransitionFromCanvas
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A3228;
  block[3] = &unk_45CCD0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  self->mIsPinchingDownFromCanvas = 0;
  v3 = [(THTOCViewController *)self delegate];
  [v3 chapterBrowserController:self updateTitleForChapterIndex:self->mChapterIndex];
}

- (id)thumbnailImageForPageAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4 tinyThumb:(BOOL)a5
{
  if (a5)
  {
    TSUScreenScale();
    v9 = v8 <= 1.0;
  }

  else
  {
    v9 = 0;
  }

  if (self->mChapterIndex != a4)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v10 = [(THTOCViewController *)self delegate];
  v11 = [v10 chapterBrowserController:self tocTileModelAtIndex:a4];

  if (v9)
  {
    [v11 tinyThumbs];
  }

  else
  {
    [v11 largerThumbs];
  }
  v13 = ;
  if ([v13 count] <= a3)
  {
    v14 = 0;
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v14 = [v13 objectAtIndex:a3];
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = CGImageRetain([TSDBitmapImageProvider CGImageForImageData:v14]);
  if (!v15)
  {
    goto LABEL_14;
  }

  v12 = [UIImage imageWithCGImage:v15];
  CGImageRelease(v15);
LABEL_15:

LABEL_16:

  return v12;
}

- (CGPoint)p_offsetForThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4
{
  if (self->mChapterIndex != a4)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[THChapterBrowserController p_offsetForThumbnailAtIndex:chapterIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:816 description:{@"Current chapter index %lu doesn't match page chapter index:%lu", self->mChapterIndex, a4}];
  }

  [(THChapterBrowserController *)self frameForPageThumbAtIndex:a3 chapterIndex:a4];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(THScrollViewWithPassthrough *)self->mPagesScrollView bounds];
  v51.origin.x = v11;
  v51.origin.y = v13;
  v51.size.width = v15;
  v51.size.height = v17;
  v18 = CGRectContainsRect(v44, v51);
  [(THChapterBrowserController *)self thumbSize];
  v20 = v19;
  [(THChapterBrowserController *)self firstThumbOverlap];
  v22 = v21;
  [(THChapterBrowserController *)self firstThumbSize];
  v24 = v23;
  v25 = self->mChapterInfo[1].numberOfPages - 1;
  [(THScrollViewWithPassthrough *)self->mPagesScrollView frame];
  v27 = v26;
  v28 = v24 + v25 * v20;
  if (v28 < v27)
  {
LABEL_4:
    [(THChapterBrowserController *)self frameForPageThumbAtIndex:0 chapterIndex:a4];
    MinX = CGRectGetMinX(v45);
LABEL_16:
    v33 = 0.0;
    goto LABEL_17;
  }

  v30 = v15 * (v25 - a3);
  v31 = v22 + a3 * v15;
  v32 = v31;
  if (!v18)
  {
    v42 = v31;
    v37 = v27 * 0.5 - v15 * 0.5;
    if (v30 > v37)
    {
      v47.origin.x = v11;
      v47.origin.y = v13;
      v47.size.width = v15;
      v47.size.height = v17;
      MinX = CGRectGetMinX(v47);
      if (v42 > v37)
      {
        MinX = v15 * 0.5 + MinX + (v27 * -0.5);
      }

      goto LABEL_16;
    }

    v48.origin.x = v11;
    v48.origin.y = v13;
    v48.size.width = v15;
    v48.size.height = v17;
    v38 = CGRectGetMinX(v48);
    [(THScrollViewWithPassthrough *)self->mPagesScrollView frame];
    v40 = v39;
    v49.origin.x = v11;
    v49.origin.y = v13;
    v49.size.width = v15;
    v49.size.height = v17;
    if (CGRectGetMinX(v49) < v42)
    {
      goto LABEL_4;
    }

    v36 = v15 + v38 - v40;
LABEL_15:
    v41 = v36;
    MinX = v41;
    goto LABEL_16;
  }

  [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
  if (v30 == 0.0)
  {
    v46.origin.x = v11;
    v46.origin.y = v13;
    v46.size.width = v15;
    v46.size.height = v17;
    MaxX = CGRectGetMaxX(v46);
    [(THScrollViewWithPassthrough *)self->mPagesScrollView frame];
    v36 = MaxX - v35;
    goto LABEL_15;
  }

  if (v32 == 0.0)
  {
    v50.origin.x = v11;
    v50.origin.y = v13;
    v50.size.width = v15;
    v50.size.height = v17;
    v36 = CGRectGetMinX(v50);
    goto LABEL_15;
  }

LABEL_17:
  result.y = v33;
  result.x = MinX;
  return result;
}

- (void)prepareToScrollToThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4
{
  [(THChapterBrowserController *)self p_offsetForThumbnailAtIndex:a3 chapterIndex:a4];
  self->mPreservedThumbnailOffset.x = v5;
  self->mPreservedThumbnailOffset.y = v6;
}

- (void)hidePageThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4 scrollIfNecessary:(BOOL)a5
{
  v5 = a5;
  if (self->mChapterIndex != a4)
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THChapterBrowserController hidePageThumbnailAtIndex:chapterIndex:scrollIfNecessary:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v14 handleFailureInFunction:v9 file:v10 lineNumber:922 description:{@"Current chapter index %lu doesn't match page chapter index:%lu", self->mChapterIndex, a4}];
  }

  if (v5)
  {
    [(THChapterBrowserController *)self prepareToScrollToThumbnailAtIndex:a3 chapterIndex:a4];
  }

  v15 = [(THChapterBrowserController *)self thumbnailsHiddenForPinch];
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  [v15 addObject:v11];

  v16 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3];
  if (v16)
  {
    [v16 setHidden:1];
  }

  if (a3 >= 2)
  {
    v12 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3 - 1];
    [v12 setHasRightBorder:1];
  }

  v13 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3 + 1];
  [v13 setHasLeftBorder:1];
}

- (void)showPageThumbnailAtIndex:(unint64_t)a3
{
  v5 = [(THChapterBrowserController *)self thumbnailsHiddenForPinch];
  [v5 removeAllObjects];

  v6 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3];
  [v6 setHidden:0];
  [v6 setBorderVisible:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_A3AC4;
  v10[3] = &unk_45CCD0;
  v7 = v6;
  v11 = v7;
  [UIView animateWithDuration:v10 animations:0.15];
  if (a3 >= 2)
  {
    v8 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3 - 1];
    [v8 setHasRightBorder:0];
  }

  v9 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3 + 1];
  [v9 setHasLeftBorder:0];
}

- (void)p_scrollToThumbnailAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(THChapterBrowserController *)self p_offsetForThumbnailAtIndex:a3 chapterIndex:self->mChapterIndex];
  [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:v4 animated:?];
  if (!v4)
  {

    [(THChapterBrowserController *)self p_updatePageThumbnails:1];
  }
}

- (void)p_scrollPageScrollViewToOffset:(CGPoint)a3
{
  if (a3.x > 0.0)
  {
    [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:0 animated:?];
  }
}

- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)a3 inLayer:(id)a4
{
  [(THChapterBrowserController *)self rectForPageThumbnailAtIndex:a3 chapterIndex:self->mChapterIndex inLayer:a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4 inLayer:(id)a5
{
  v7 = a5;
  [(THChapterBrowserController *)self p_updatePageScrubberControlForSizeClassChange];
  v8 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3];
  if (v8)
  {
    v9 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(THScrollViewWithPassthrough *)self->mPagesScrollView layer];
    [v7 convertRect:v18 fromLayer:{v11, v13, v15, v17}];
    v20 = v19;
    y = v21;
    width = v23;
    height = v25;

    [v7 bounds];
    v36.origin.x = v20;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    if (!CGRectContainsRect(v34, v36))
    {
      [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
      x = self->mPreservedThumbnailOffset.x;
      if (vabdd_f64(v28, x) > 1.0)
      {
        [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
        v20 = v20 - (x - v29);
      }
    }
  }

  else
  {
    v20 = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v30 = v20;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (unint64_t)p_firstVisibleThumbnailPageIndexInCurrentChapter
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(THChapterBrowserController *)self thumbnailSubviews];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = *v23;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        if ([v7 chapterIndex] == self->mChapterIndex)
        {
          [(THScrollViewWithPassthrough *)self->mPagesScrollView bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;
          [v7 frame];
          v28.origin.x = v16;
          v28.origin.y = v17;
          v28.size.width = v18;
          v28.size.height = v19;
          v27.origin.x = v9;
          v27.origin.y = v11;
          v27.size.width = v13;
          v27.size.height = v15;
          if (CGRectIntersectsRect(v27, v28))
          {
            v20 = [v7 pageIndex];
            goto LABEL_12;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_12:

  return v20;
}

- (id)visibleThumbnailIndexes
{
  v3 = +[NSMutableIndexSet indexSet];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(THChapterBrowserController *)self thumbnailSubviews];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        [(THScrollViewWithPassthrough *)self->mPagesScrollView bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [v8 frame];
        v29.origin.x = v17;
        v29.origin.y = v18;
        v29.size.width = v19;
        v29.size.height = v20;
        v28.origin.x = v10;
        v28.origin.y = v12;
        v28.size.width = v14;
        v28.size.height = v16;
        if (CGRectIntersectsRect(v28, v29))
        {
          [v3 addIndex:{objc_msgSend(v8, "pageIndex")}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)takeChapterIndexFrom:(id)a3
{
  v14 = a3;
  if (self->mChapterPageControl == v14)
  {
    v4 = [(THTOCViewController *)self delegate];
    [v4 cancelPreloadOfContentNodesForChapterBrowserController:self];

    [(THChapterBrowserController *)self p_cancelAllContentNodeLoading];
    [(THChapterBrowserController *)self setPreviousChapterIndex:self->mChapterIndex];
    self->mChapterIndex = 0x7FFFFFFFFFFFFFFFLL;
    if ([(THChapterBrowserController *)self hasIntroPage])
    {
      if ([(THChapterBrowserScrubbablePageControl *)v14 currentPage])
      {
        v5 = [(THChapterBrowserScrubbablePageControl *)v14 currentPage];
      }

      else
      {
        v5 = (&dword_0 + 1);
      }

      v6 = v5 - 1;
    }

    else
    {
      v6 = [(THChapterBrowserScrubbablePageControl *)v14 currentPage];
    }

    +[CATransaction begin];
    [(THChapterBrowserController *)self p_setChapterIndex:v6 forScrub:1 stillScrolling:0];
    v7 = [(THChapterBrowserScrubbablePageControl *)v14 currentPage];
    [(THChapterBrowserController *)self chapterWidth];
    v9 = v8;
    v10 = [(THChapterBrowserController *)self hasIntroPage];
    v11 = 0.0;
    if (v10)
    {
      [(THChapterBrowserController *)self chapterWidth];
    }

    [(THScrollView *)self->mBackgroundScrollView setContentOffset:-(v11 - v7 * v9), 0.0];
    +[CATransaction commit];
    if (self->mDraggingInScrubber)
    {
      [(THScrollView *)self->mBackgroundScrollView contentOffset];
      if (v12 < 0.0)
      {
        v13 = [(THChapterBrowserController *)self introMediaViewController];
        [v13 ensureReadyToPlay];
      }
    }

    else
    {
      [(THChapterBrowserController *)self p_startIntroMediaIfNecessary];
    }
  }
}

- (void)takeTouchUpFromPageControl:(id)a3
{
  objc_storeStrong(&self->mUpdatingScrollView, self->mBackgroundScrollView);
  self->mDraggingInScrubber = 0;
  [(THChapterBrowserController *)self p_resetPagesScrollViewAndCapThumbCount:0 firstVisibleRelativePage:0 resetContentOffset:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_A440C;
  v12[3] = &unk_45CCD0;
  v12[4] = self;
  [UIView animateWithDuration:v12 animations:0.25];
  mUpdatingScrollView = self->mUpdatingScrollView;
  self->mUpdatingScrollView = 0;

  [(THChapterBrowserController *)self p_updateAdjacentChapterViews];
  [(THChapterBrowserController *)self p_preloadContentNodesForVisibleThumbnails];
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  v6 = v5;
  [(THChapterBrowserController *)self chapterWidth];
  if (v6 == -v7)
  {
    [(THChapterBrowserController *)self p_startIntroMediaIfNecessary];
    v8 = [(THTOCViewController *)self delegate];
    v9 = [v8 introMediaViewControllerForChapterBrowserController:self];
    v10 = [v9 isMovie];

    mChapterPageControlWrapper = self->mChapterPageControlWrapper;
    if (v10)
    {
      [(UIView *)mChapterPageControlWrapper setAlpha:0.0];
    }

    else
    {
      [(UIView *)mChapterPageControlWrapper setAlpha:1.0];
      [(THChapterBrowserController *)self refreshStatusBarAppearance];
    }
  }
}

- (void)p_cancelAllContentNodeLoading
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(THChapterBrowserController *)self contentNodesAskedToLoad];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6) cancelLoading];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [(THChapterBrowserController *)self contentNodesAskedToLoad];
  [v7 removeAllObjects];
}

- (void)draggingStartedFromPageControl:(id)a3
{
  self->mDraggingInScrubber = 1;
  v3 = [(THChapterBrowserController *)self introMediaViewController];
  [v3 prepareControlsForTOC];
}

- (void)takeDragInsideFromPageControl:(id)a3
{
  v4 = [(THTOCViewController *)self delegate];
  [v4 cancelPreloadOfContentNodesForChapterBrowserController:self];

  [(THScrollViewWithPassthrough *)self->mPagesScrollView alpha];
  if (v5 == 1.0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_A468C;
    v6[3] = &unk_45CCD0;
    v6[4] = self;
    [UIView animateWithDuration:v6 animations:0.25];
  }
}

- (void)hideBackground
{
  v4 = +[UIColor clearColor];
  v3 = [(THChapterBrowserController *)self view];
  [v3 setBackgroundColor:v4];
}

- (void)showBackground
{
  v4 = +[UIColor blackColor];
  v3 = [(THChapterBrowserController *)self view];
  [v3 setBackgroundColor:v4];
}

- (void)_updateContentOffsets
{
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  v3 = 0.0;
  if (v4 <= 0.0)
  {
    [(THScrollView *)self->mBackgroundScrollView contentOffset];
    v3 = v5;
  }

  memset(&v10, 0, sizeof(v10));
  mPagesScrollView = self->mPagesScrollView;
  if (mPagesScrollView)
  {
    [(THScrollViewWithPassthrough *)mPagesScrollView transform];
    ty = v9.ty;
    v8 = self->mPagesScrollView;
  }

  else
  {
    v8 = 0;
    ty = 0.0;
    memset(&v9, 0, sizeof(v9));
  }

  CGAffineTransformMakeTranslation(&v10, -v3, ty);
  v9 = v10;
  [(THScrollViewWithPassthrough *)v8 setTransform:&v9];
  [(TSWPassThroughView *)self->mBottomWrapperView setUserInteractionEnabled:v3 >= 0.0];
}

- (void)p_addIntroMediaView
{
  v3 = [(THChapterBrowserController *)self introMediaViewController];

  if (v3)
  {
    [(UIView *)self->mIntroMediaContainerView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v15 = [(THChapterBrowserController *)self introMediaViewController];
    v12 = [v15 view];
    [v12 setFrame:{v5, v7, v9, v11}];

    mIntroMediaContainerView = self->mIntroMediaContainerView;
    v16 = [(THChapterBrowserController *)self introMediaViewController];
    v14 = [v16 view];
    [(UIView *)mIntroMediaContainerView addSubview:v14];
  }
}

- (void)p_removeIntroMediaView
{
  v5 = [(THChapterBrowserController *)self introMediaViewController];
  v3 = [v5 isViewLoaded];

  if (v3)
  {
    v6 = [(THChapterBrowserController *)self introMediaViewController];
    v4 = [v6 view];
    [v4 removeFromSuperview];
  }
}

- (BOOL)p_showingIntroMedia
{
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  v4 = v3;
  v5 = 0.0;
  if (v4 <= 0.0)
  {
    [(THScrollView *)self->mBackgroundScrollView contentOffset];
  }

  v6 = -v5;
  [(THChapterBrowserController *)self chapterWidth];
  return vabdd_f64(v6, v7) < 0.00999999978;
}

- (void)introMediaControllerMoviePlayerWillHideControls
{
  if ([(THChapterBrowserController *)self p_showingIntroMedia])
  {
    mChapterPageControlWrapper = self->mChapterPageControlWrapper;

    [(UIView *)mChapterPageControlWrapper setAlpha:0.0];
  }
}

- (void)introMediaControllerShouldAdvancePast:(id)a3
{
  v4 = [(THChapterBrowserController *)self backgroundScrollView];
  [v4 contentOffset];
  v6 = v5;

  if (v6 < 0.0)
  {
    v7 = [(THChapterBrowserController *)self introMediaViewController];
    [v7 pause];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_A4C5C;
    v9[3] = &unk_45CCD0;
    v9[4] = self;
    v8 = objc_retainBlock(v9);
    (v8[2])();
  }
}

- (BOOL)introMediaControllerIsActive
{
  v3 = [(THChapterBrowserController *)self introMediaViewController];
  if (v3)
  {
    [(THScrollView *)self->mBackgroundScrollView contentOffset];
    v5 = v4;
    [(THChapterBrowserController *)self chapterWidth];
    v7 = fabs(v5 + v6) < 0.00999999978;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)p_startIntroMediaIfNecessary
{
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  if (v3 >= 0.0)
  {
    v13 = [(THTOCViewController *)self delegate];
    [v13 TOCViewControllerDidShowChapter:self];

    v14 = [(THChapterBrowserController *)self introMediaViewController];
    v7 = [v14 isPlaying];

    if (v7)
    {
      v15 = [(THChapterBrowserController *)self introMediaViewController];
      [v15 pause];
    }

    v16 = [(THChapterBrowserController *)self introMediaViewController];
    [v16 prepareMovieForTOC];

    v12 = [(THChapterBrowserController *)self bc_windowForViewController];
    v8 = [v12 windowScene];
    self->mCurrentSyntheticInterfaceOrientation = [v8 interfaceOrientation];
  }

  else
  {
    [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
    [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:0.0];
    self->mPageThumbScrollerStartContentOffset = 0.0;
    self->mPageThumbScrollerStartContentOffsetBeforeBackgroundDrag = 0.0;
    v4 = [(THChapterBrowserController *)self introMediaViewController];

    if (!v4)
    {
      v9 = +[TSUAssertionHandler currentHandler];
      v5 = [NSString stringWithUTF8String:"[THChapterBrowserController p_startIntroMediaIfNecessary]"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
      [v9 handleFailureInFunction:v5 file:v6 lineNumber:1265 description:{@"invalid nil value for '%s'", "self.introMediaViewController"}];
    }

    v10 = [(THTOCViewController *)self delegate];
    [v10 TOCViewControllerDidShowIntroMedia:self];

    [(THChapterBrowserController *)self p_addIntroMediaView];
    v11 = [(THChapterBrowserController *)self introMediaViewController];
    [v11 ensureReadyToPlay];

    v12 = [(THChapterBrowserController *)self introMediaViewController];
    [v12 playForIntroMediaBecomesVisible];
  }
}

- (void)freeTransformControllerDidBegin:(id)a3
{
  v17 = a3;
  if (self->mDoingFreeTransform)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"[THChapterBrowserController freeTransformControllerDidBegin:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:1296 description:@"Beginning free transform while another one is active"];
  }

  self->mDoingFreeTransform = 1;
  objc_opt_class();
  v7 = [v17 targetLayer];
  v8 = [v7 delegate];
  v9 = TSUDynamicCast();

  if (!v9)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"[THChapterBrowserController freeTransformControllerDidBegin:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:1300 description:{@"invalid nil value for '%s'", "thumbnailView"}];
  }

  TSUScreenScale();
  self->mUsingTinyThumb = v13 <= 1.0;
  objc_opt_class();
  v14 = [v17 freeTransformLayer];
  v15 = [v14 delegate];
  v16 = TSUDynamicCast();

  [(THChapterBrowserController *)self p_beginTransitionFromPageThumbnail:v9 transformView:v16 freeTransform:1 firstThumbNailToTransition:1];
  [v9 setShowCanvas:0 animated:0];
}

- (void)freeTransformControllerDidContinue:(id)a3 withScale:(double)a4
{
  v16 = a3;
  objc_opt_class();
  v6 = [v16 targetLayer];
  v7 = [v6 delegate];
  v8 = TSUDynamicCast();

  [v8 setShowCanvas:a4 >= 3.0 animated:1];
  if (a4 < 3.0)
  {
    if (a4 >= 1.20000005)
    {
      v10 = 0;
    }

    else
    {
      TSUScreenScale();
      v10 = v9 <= 1.0;
    }

    if (self->mUsingTinyThumb != v10)
    {
      v11 = [(THTOCViewController *)self dataSource];
      v12 = [v11 toc:self tileModelForChapterIndex:{objc_msgSend(v8, "chapterIndex")}];

      if (v10)
      {
        [v12 tinyThumbs];
      }

      else
      {
        [v12 largerThumbs];
      }
      v13 = ;
      v14 = [v8 pageIndex];
      if (v14 >= [v13 count])
      {
        v15 = 0;
      }

      else
      {
        v15 = [v13 objectAtIndex:{objc_msgSend(v8, "pageIndex")}];
        if (v15)
        {
          [v8 setImage:{+[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", v15)}];
        }
      }

      self->mUsingTinyThumb = v10;
    }
  }
}

- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)a3
{
  v4 = [a3 freeTransformLayer];
  v5 = [v4 superlayer];
  [(THChapterBrowserController *)self originalCanvasScrollViewFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(THChapterBrowserController *)self originalCanvasScrollViewSuperview];
  v15 = [v14 layer];
  [v5 convertRect:v15 fromLayer:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)freeTransformControllerWillBeginCompletionAnimation:(id)a3 passedThreshold:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v6 targetLayer];
  v8 = [v7 delegate];
  v9 = TSUDynamicCast();

  if (!v9)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"[THChapterBrowserController freeTransformControllerWillBeginCompletionAnimation:passedThreshold:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:1355 description:{@"invalid nil value for '%s'", "thumbnailView"}];
  }

  [v9 setShowCanvas:v4 animated:1];
  if (v4)
  {
    [(THTOCViewController *)self setShrouded:1 animated:1 duration:0.25];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_A5878;
    v13[3] = &unk_45CCD0;
    v14 = v9;
    [UIView animateWithDuration:v13 animations:0.15];
  }
}

- (void)freeTransformControllerWillEnd:(id)a3 passedThreshold:(BOOL)a4
{
  v13 = a3;
  objc_opt_class();
  v6 = [v13 targetLayer];
  v7 = [v6 delegate];
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THChapterBrowserController freeTransformControllerWillEnd:passedThreshold:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:1374 description:{@"invalid nil value for '%s'", "thumbnailView"}];

    if (a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!a4)
  {
LABEL_5:
    v12 = [(THTOCViewController *)self delegate];
    [v12 chapterBrowserController:self cancelledTransitionToPageIndex:objc_msgSend(v8 chapterIndex:{"pageIndex"), objc_msgSend(v8, "chapterIndex")}];
  }

LABEL_6:
}

- (void)freeTransformControllerDidEnd:(id)a3 passedThreshold:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  objc_opt_class();
  v6 = [v12 targetLayer];
  v7 = [v6 delegate];
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THChapterBrowserController freeTransformControllerDidEnd:passedThreshold:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:1386 description:{@"invalid nil value for '%s'", "thumbnailView"}];
  }

  +[CATransaction begin];
  if (v4)
  {
    [(THChapterBrowserController *)self p_animationDidStopForThumbnailView:v8];
  }

  [(THChapterBrowserController *)self p_cleanupAfterTransitionFromPageThumbnail:v8];
  +[CATransaction commit];
  self->mDoingFreeTransform = 0;
}

- (id)unmovingParentViewForFreeTransformController:(id)a3
{
  v3 = [(THChapterBrowserController *)self view];
  v4 = [v3 superview];

  return v4;
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
  v5 = a4;
  objc_opt_class();
  v6 = [v5 targetLayer];
  v7 = [v6 delegate];
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THChapterBrowserController shadowPropertiesForFreeTransformController:defaults:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:1437 description:{@"invalid nil value for '%s'", "thumbnailView"}];
  }

  if (![v8 pageIndex])
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"[THChapterBrowserController shadowPropertiesForFreeTransformController:defaults:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:1438 description:@"Free transform controller should automatically use the shadow on the large thumbnail"];
  }

  return result;
}

- (id)documentRootForChapterViewController:(id)a3
{
  v4 = [(THTOCViewController *)self delegate];
  v5 = [v4 documentRootForChapterBrowserController:self];

  return v5;
}

- (void)chapterViewController:(id)a3 displayPageForModelLink:(id)a4
{
  v5 = [(THChapterBrowserController *)self p_pageThumbnailViewForModelLink:a4];
  v9 = v5;
  if (v5)
  {
    [(THChapterBrowserController *)self p_beginTransitionFromPageThumbnail:v5 transformView:v5 freeTransform:0 firstThumbNailToTransition:1];
    [(THChapterBrowserController *)self p_transitionFromPageThumbnail:v9 destinationRect:1 shouldShroud:?];
  }

  else
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THChapterBrowserController chapterViewController:displayPageForModelLink:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1460 description:{@"invalid nil value for '%s'", "thumb"}];
  }
}

- (CGRect)frameForChapterViewController:(id)a3 withSize:(CGSize)a4
{
  for (i = 0; i != 3; ++i)
  {
    if (self->mChapterViewControllers[i] == a3)
    {
      break;
    }
  }

  [(THChapterBrowserController *)self p_hasPageScrubberControl];
  [(THChapterBrowserController *)self chapterWidth];
  v7 = v6;
  TSDRectWithOriginAndSize();
  v11 = v7 * i;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v11;
  return result;
}

- (CGRect)frameForChapterViewController:(id)a3
{
  v4 = a3;
  v5 = [(THChapterBrowserController *)self view];
  [v5 bounds];
  [(THChapterBrowserController *)self frameForChapterViewController:v4 withSize:v6, v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)chapterViewControllerWasTapped:(id)a3
{
  v4 = [(THTOCViewController *)self delegate];
  v5 = [v4 isToolbarHidden];

  v6 = [(THTOCViewController *)self delegate];
  v7 = v6;
  if (v5)
  {
    [v6 TOCShowToolbarAnimated:1];
  }

  else
  {
    [v6 TOCHideToolbarAnimated:1];
  }

  [(THChapterBrowserController *)self refreshStatusBarAppearance];
}

- (id)chapterViewController:(id)a3 actionForHyperlink:(id)a4 inRep:(id)a5 gesture:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [THModelLink alloc];
  v13 = [v9 url];
  v14 = [v13 absoluteString];
  v15 = [(THModelLink *)v12 initWithTarget:v14 context:0];

  v16 = [v11 gestureKind];
  v17 = v16;
  v18 = TSWPLongPress;
  if (v16 == TSWPImmediateSingleTap || v16 == TSWPLongPress)
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_A656C;
    v32[3] = &unk_45CCF8;
    v33 = v10;
    v34 = v9;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_A6578;
    v30[3] = &unk_45CCD0;
    v31 = v33;
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_A6584;
    v26 = &unk_45CD20;
    v27 = v31;
    v28 = self;
    v29 = v15;
    v21 = [TSWPTwoPartAction actionWithStartAction:v32 cancelAction:v30 finishAction:&v23];
    if (v17 == v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = TSUSupportsTextInteraction();
    }

    [v21 setPerformImmediately:{v20, v23, v24, v25, v26}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)chapterViewController:(id)a3 followLink:(id)a4
{
  v5 = a4;
  v6 = [(THTOCViewController *)self delegate];
  v7 = [v6 chapterBrowserController:self relativePageIndexForLink:v5];

  v8 = [(THTOCViewController *)self delegate];
  [v8 chapterBrowserController:self willTransitionToPageIndex:v7 chapterIndex:self->mChapterIndex freeTransform:0];

  v9 = [(THTOCViewController *)self delegate];
  [v9 chapterBrowserController:self didTransitionToPageIndex:v7 chapterIndex:self->mChapterIndex relativeTargetRect:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  [(THTOCViewController *)self setShrouded:1 animated:0 duration:0.0];
  return 1;
}

- (id)presentingViewControllerForChapterViewController:(id)a3
{
  v4 = [(THTOCViewController *)self delegate];
  v5 = [v4 presentingViewControllerForChapterBrowserController:self];

  return v5;
}

- (void)p_highlightThumbTargetsIfShouldInThumb:(id)a3 atPoint:(CGPoint)a4 coverFullThumb:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v22 = a3;
  if ([(THChapterBrowserController *)self p_shouldHighlightThumbTargets])
  {
    if (a5)
    {
      v9 = 1.0;
      v10 = 0.0;
      v11 = 0.0;
      v12 = 1.0;
    }

    else
    {
      [v22 frame];
      v14 = v13;
      [v22 frame];
      v16 = v15;
      v17 = [(THTOCViewController *)self delegate];
      [v17 chapterBrowserController:self targetRelativeRectForRelativePoint:objc_msgSend(v22 atPageIndex:"pageIndex") chapterIndex:{objc_msgSend(v22, "chapterIndex"), x / v14, y / v16}];
      v10 = v18;
      v11 = v19;
      v9 = v20;
      v12 = v21;
    }

    [v22 setHighlightRelativeRect:{v10, v11, v9, v12}];
  }
}

- (void)thumbnailWasPressed:(id)a3 atPoint:(CGPoint)a4 forLong:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = a3;
  if (!self->mIgnoringThumbnailTaps && !self->mDoingFreeTransform)
  {
    [(THChapterBrowserController *)self p_highlightThumbTargetsIfShouldInThumb:v9 atPoint:!v5 coverFullThumb:x, y];
  }
}

- (void)p_transitionThumbnailToDVC:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v30 = v4;
    v5 = [(THTOCViewController *)self delegate];
    v6 = [v5 isTwoUpForChapterBrowserController:self];

    if (v6 && (-[THTOCViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isLastPageInChapterForChapterBrowserController:self pageIndex:objc_msgSend(v30 chapterIndex:{"pageIndex"), objc_msgSend(v30, "chapterIndex")}], v7, -[THTOCViewController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSinglePageInChapterForChapterBrowserController:chapterIndex:", self, objc_msgSend(v30, "chapterIndex")), v9, !v10))
    {
      if (v8)
      {
        v11 = -[THChapterBrowserController p_pageThumbnailViewForPageIndex:](self, "p_pageThumbnailViewForPageIndex:", [v30 pageIndex] - 1);
        [(THChapterBrowserController *)self p_beginTransitionFromPageThumbnail:v11 transformView:v11 freeTransform:0 firstThumbNailToTransition:1];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [(THChapterBrowserController *)self p_transitionFromPageThumbnail:v11 destinationRect:1 shouldShroud:?];
        [(THChapterBrowserController *)self p_beginTransitionFromPageThumbnail:v30 transformView:v30 freeTransform:0 firstThumbNailToTransition:0];
        [(THChapterBrowserController *)self p_transitionFromPageThumbnail:v30 destinationRect:0 shouldShroud:v13 + v17, v15, v17, v19];
      }

      else
      {
        if ([v30 pageIndex])
        {
          v21 = -[THChapterBrowserController p_pageThumbnailViewForPageIndex:](self, "p_pageThumbnailViewForPageIndex:", [v30 pageIndex] - 1);
          v20 = v30;
          v11 = v21;
        }

        else
        {
          v11 = v30;
          v20 = -[THChapterBrowserController p_pageThumbnailViewForPageIndex:](self, "p_pageThumbnailViewForPageIndex:", [v11 pageIndex] + 1);
        }

        [(THChapterBrowserController *)self p_beginTransitionFromPageThumbnail:v11 transformView:v11 freeTransform:0 firstThumbNailToTransition:1];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        [(THChapterBrowserController *)self p_transitionFromPageThumbnail:v11 destinationRect:1 shouldShroud:?];
        [(THChapterBrowserController *)self p_beginTransitionFromPageThumbnail:v20 transformView:v20 freeTransform:0 firstThumbNailToTransition:0];
        [(THChapterBrowserController *)self p_transitionFromPageThumbnail:v20 destinationRect:0 shouldShroud:v23 + v27, v25, v27, v29];
      }

      v4 = v30;
    }

    else
    {
      [(THChapterBrowserController *)self p_beginTransitionFromPageThumbnail:v30 transformView:v30 freeTransform:0 firstThumbNailToTransition:1];
      [(THChapterBrowserController *)self p_transitionFromPageThumbnail:v30 destinationRect:1 shouldShroud:?];
      v4 = v30;
    }
  }
}

- (BOOL)thumbnailWasTapped:(id)a3 atPoint:(CGPoint)a4 forLong:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = a3;
  if (self->mIgnoringThumbnailTaps || self->mDoingFreeTransform)
  {
    v10 = 0;
  }

  else
  {
    self->mIgnoringThumbnailTaps = 1;
    [(THChapterBrowserController *)self p_highlightThumbTargetsIfShouldInThumb:v9 atPoint:!v5 coverFullThumb:x, y];
    [(THChapterBrowserController *)self p_transitionThumbnailToDVC:v9];
    v10 = 1;
  }

  return v10;
}

- (void)transitionPageToDVC:(unint64_t)a3 chapterIndex:(unint64_t)a4
{
  self->mIgnoringThumbnailTaps = 1;
  v9 = [(THChapterBrowserController *)self visibleThumbnailIndexes];
  if ([v9 containsIndex:a3])
  {
    v7 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:a3];
    [(THChapterBrowserController *)self p_transitionThumbnailToDVC:v7];
  }

  else
  {
    v8 = +[UIApplication sharedApplication];
    [v8 beginIgnoringInteractionEvents];

    [(THChapterBrowserController *)self setTransitioningPageToDVC:1];
    [(THChapterBrowserController *)self setTransitioningThumbnailIndex:a3];
    [(THChapterBrowserController *)self prepareToScrollToThumbnailAtIndex:a3 chapterIndex:a4];
    [(THChapterBrowserController *)self p_scrollToThumbnailAtIndex:a3 animated:1];
  }
}

- (void)p_updateChapterBackgroundsView
{
  [(THChapterBrowserController *)self chapterWidth];
  v4 = v3 * self->mChapterIndex;
  [(UIView *)self->mBackgroundsView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(THChapterBrowserController *)self chapterWidth];
  mBackgroundsView = self->mBackgroundsView;
  v13 = v4 - v12;

  [(UIView *)mBackgroundsView setFrame:v13, v6, v8, v10];
}

- (void)p_setupChapterViewControllerAtIndex:(unint64_t)a3 withChapterIndex:(unint64_t)a4 allowThumbnail:(BOOL)a5
{
  v5 = a5;
  mChapterViewControllers = self->mChapterViewControllers;
  v10 = self->mChapterViewControllers[a3];
  if (!v10)
  {
    v11 = [THChapterViewController alloc];
    v22 = [(THTOCViewController *)self delegate];
    v12 = [v22 presentationTypeForChapterBrowserController:self];
    v13 = [(THChapterViewController *)v11 initWithDelegate:self pageControlHeight:v12 presentationType:48.0];
    v14 = mChapterViewControllers[a3];
    mChapterViewControllers[a3] = v13;

    mBackgroundsView = self->mBackgroundsView;
    v23 = [(THChapterViewController *)mChapterViewControllers[a3] view];
    [(UIView *)mBackgroundsView addSubview:?];

    [(THChapterBrowserController *)self addChildViewController:mChapterViewControllers[a3]];
    v24 = [(THChapterViewController *)mChapterViewControllers[a3] interactiveCanvasController];
    v16 = [v24 gestureRecognizerWithKind:TSWPImmediatePress];
    v17 = [v24 gestureDispatcher];
    v18 = [(THScrollView *)self->mBackgroundScrollView panGestureRecognizer];
    [v17 allowSimultaneousRecognitionByRecognizers:{v16, v18, 0}];

    v10 = mChapterViewControllers[a3];
  }

  if ([(THChapterViewController *)v10 chapterIndex]!= a4)
  {
    v19 = [(THTOCViewController *)self delegate];
    v25 = [v19 chapterBrowserController:self tocTileModelAtIndex:a4];

    [(THChapterViewController *)mChapterViewControllers[a3] setTileModel:v25];
    [(THChapterViewController *)mChapterViewControllers[a3] setChapterIndex:a4];
    v20 = [(THChapterViewController *)mChapterViewControllers[a3] reloadViewsAndShowThumbnail:v5];
    if (v20)
    {
      v21 = [(THChapterBrowserController *)self contentNodesAskedToLoad];
      [v21 addObject:v20];
    }
  }
}

- (void)p_fixupChapterViewFrames
{
  v3 = 0;
  mChapterViewControllers = self->mChapterViewControllers;
  do
  {
    v5 = mChapterViewControllers[v3];
    if (v5)
    {
      [(THChapterBrowserController *)self frameForChapterViewController:v5];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [(THChapterViewController *)v5 view];
      [v14 frame];
      v22.origin.x = v15;
      v22.origin.y = v16;
      v22.size.width = v17;
      v22.size.height = v18;
      v21.origin.x = v7;
      v21.origin.y = v9;
      v21.size.width = v11;
      v21.size.height = v13;
      v19 = CGRectEqualToRect(v21, v22);

      if (!v19)
      {
        v20 = [(THChapterViewController *)v5 view];
        [v20 setFrame:{v7, v9, v11, v13}];
      }
    }

    ++v3;
  }

  while (v3 != 3);
}

- (void)p_setupPreviousChapterView
{
  mChapterIndex = self->mChapterIndex;
  if (mChapterIndex)
  {
    [(THChapterBrowserController *)self p_setupChapterViewControllerAtIndex:0 withChapterIndex:mChapterIndex - 1 allowThumbnail:1];

    [(THChapterBrowserController *)self p_removeIntroMediaView];
  }

  else
  {
    [(THChapterBrowserController *)self p_clearChapterViewAtIndex:0];

    [(THChapterBrowserController *)self p_addIntroMediaView];
  }
}

- (void)p_setupNextChapterView
{
  mChapterIndex = self->mChapterIndex;
  v4 = [(THTOCViewController *)self dataSource];
  v5 = [v4 toc:self numberOfTilesInDivision:0];

  if (mChapterIndex + 1 >= v5)
  {
    [(THChapterBrowserController *)self p_clearChapterViewAtIndex:2];
  }

  else
  {
    [(THChapterBrowserController *)self p_setupChapterViewControllerAtIndex:2 withChapterIndex:self->mChapterIndex + 1 allowThumbnail:1];
  }

  if (self->mChapterIndex)
  {

    [(THChapterBrowserController *)self p_removeIntroMediaView];
  }
}

- (void)p_updateAdjacentChapterViews
{
  [(THChapterBrowserController *)self p_setupPreviousChapterView];
  [(THChapterBrowserController *)self p_setupNextChapterView];

  [(THChapterBrowserController *)self p_fixupChapterViewFrames];
}

- (void)p_clearChapterViewAtIndex:(unint64_t)a3
{
  mChapterViewControllers = self->mChapterViewControllers;
  v4 = self->mChapterViewControllers[a3];
  if (v4)
  {
    [(THChapterViewController *)v4 setTileModel:0];
    [(THChapterViewController *)mChapterViewControllers[a3] setChapterIndex:0x7FFFFFFFFFFFFFFFLL];
    v6 = [(THChapterViewController *)mChapterViewControllers[a3] reloadViewsAndShowThumbnail:1];
  }
}

- (void)p_setChapterIndex:(unint64_t)a3 forScrub:(BOOL)a4 stillScrolling:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  +[CATransaction begin];
  mChapterIndex = self->mChapterIndex;
  if (mChapterIndex != a3)
  {
    if (mChapterIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(THChapterBrowserController *)self setPreviousChapterIndex:self->mChapterIndex];
    }

    self->mChapterIndex = a3;
    if (v6)
    {
      [(THChapterBrowserController *)self p_setupChapterViewControllerAtIndex:1 withChapterIndex:a3 allowThumbnail:1];
      [(THChapterBrowserController *)self p_updateChapterBackgroundsView];
      goto LABEL_15;
    }

    [(THChapterBrowserController *)self p_updatePageControl];
    if (mChapterIndex - 1 == a3)
    {
      v10 = self->mChapterViewControllers[2];
      v11 = v10;
      objc_storeStrong(&self->mChapterViewControllers[2], self->mChapterViewControllers[1]);
      objc_storeStrong(&self->mChapterViewControllers[1], self->mChapterViewControllers[0]);
      objc_storeStrong(self->mChapterViewControllers, v10);
      [(THChapterBrowserController *)self p_setupPreviousChapterView];
      [(THChapterBrowserController *)self p_fixupChapterViewFrames];
    }

    else
    {
      if (mChapterIndex + 1 != a3)
      {
        [(THChapterBrowserController *)self p_setupChapterViewControllerAtIndex:1 withChapterIndex:self->mChapterIndex allowThumbnail:1];
        if (v5)
        {
          [(THChapterBrowserController *)self p_updateAdjacentChapterViews];
        }

        goto LABEL_11;
      }

      v12 = self->mChapterViewControllers[0];
      v11 = v12;
      objc_storeStrong(self->mChapterViewControllers, self->mChapterViewControllers[1]);
      objc_storeStrong(&self->mChapterViewControllers[1], self->mChapterViewControllers[2]);
      objc_storeStrong(&self->mChapterViewControllers[2], v12);
      [(THChapterBrowserController *)self p_setupNextChapterView];
      [(THChapterBrowserController *)self p_fixupChapterViewFrames];
    }

LABEL_11:
    [(THChapterBrowserController *)self p_updateChapterBackgroundsView];
  }

  if (!v6 && !v5)
  {
    [(THChapterBrowserController *)self p_preloadContentNodesForVisibleThumbnails];
  }

LABEL_15:

  +[CATransaction commit];
}

- (void)p_removeAdjacentChapterViews
{
  v3 = 3;
  do
  {
    if (v3 != 2)
    {
      [(THChapterViewController *)self->mChapterViewControllers[0] removeFromParentViewController];
      v4 = [(THChapterViewController *)self->mChapterViewControllers[0] view];
      [v4 removeFromSuperview];

      [(THChapterViewController *)self->mChapterViewControllers[0] teardown];
      v5 = self->mChapterViewControllers[0];
      self->mChapterViewControllers[0] = 0;
    }

    self = (self + 8);
    --v3;
  }

  while (v3);
}

- (void)setChapterIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && self->mChapterIndex != a3)
  {
    v5 = [(THChapterBrowserController *)self view];

    if (v5)
    {
      [(THChapterBrowserController *)self p_setChapterIndex:a3 forScrub:0 stillScrolling:0];
      self->mPreservedThumbnailOffset.x = 0.0;
      [(THChapterBrowserController *)self p_resetPagesScrollViewAndCapThumbCount:0 firstVisibleRelativePage:0 resetContentOffset:1];
      [(THScrollView *)self->mBackgroundScrollView contentOffset];
      if (v6 >= 0.0)
      {
        [(THChapterBrowserController *)self chapterWidth];
        v8 = v7 * a3;
        mBackgroundScrollView = self->mBackgroundScrollView;

        [(THScrollView *)mBackgroundScrollView setContentOffset:v8, 0.0];
      }
    }
  }
}

- (void)p_resetPagesScrollViewAndCapThumbCount:(BOOL)a3 firstVisibleRelativePage:(unint64_t)a4 resetContentOffset:(BOOL)a5
{
  v56 = a3;
  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  v9 = &OBJC_IVAR___THWFreeTransformGestureRecognizer_mTouch1;
  do
  {
    mChapterIndex = self->mChapterIndex;
    if (!(v6 | mChapterIndex))
    {
      v11 = v9[304];
LABEL_5:
      v14 = &self->super.IMViewController_opaque[v6 + v11];
      *v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = &self->super.IMViewController_opaque[v11 + v6];
      v16 = *(v15 + 6);
      *(v15 + 6) = 0;

      *(v15 + 1) = 0;
      size = CGRectZero.size;
      *(v15 + 1) = CGRectZero.origin;
      *(v15 + 2) = size;
      *(v14 + 7) = 0;
      goto LABEL_19;
    }

    v12 = [(THTOCViewController *)self dataSource];
    v13 = [v12 toc:self numberOfTilesInDivision:0];

    v11 = v9[304];
    if (v7 + mChapterIndex > v13)
    {
      goto LABEL_5;
    }

    v18 = v9;
    v19 = v7 + self->mChapterIndex - 1;
    v20 = v6 + v11;
    *&self->super.IMViewController_opaque[v20] = v19;
    v21 = [(THTOCViewController *)self dataSource];
    v22 = [v21 toc:self tileModelForChapterIndex:v19];

    objc_storeStrong((&self->super.mBookPropertiesDelegate + v20), v22);
    v23 = [v22 tinyThumbs];
    v24 = [v23 count];

    if (v56)
    {
      if (v6 == 64)
      {
        v25 = a4;
        if ([(THChapterBrowserController *)self maximumNumberOfThumbsToLeftOfLeftmostDuringBackgroundDrag]<= a4)
        {
          v25 = [(THChapterBrowserController *)self maximumNumberOfThumbsToLeftOfLeftmostDuringBackgroundDrag];
        }

        *(&self->mBottomWrapperView + v11) = (a4 - v25);
        v26 = [(THChapterBrowserController *)self maximumNumberOfThumbsToRightOfLeftmostDuringBackgroundDrag];
        v27 = &v24[-a4];
        if (v26 < &v24[-a4])
        {
          v27 = [(THChapterBrowserController *)self maximumNumberOfThumbsToRightOfLeftmostDuringBackgroundDrag];
        }
      }

      else
      {
        v27 = [(THChapterBrowserController *)self maximumNumberOfThumbsToRightOfLeftmostDuringBackgroundDrag];
        v25 = 0;
      }

      if (v25 + v27 < v24)
      {
        v24 = (v25 + v27);
      }
    }

    else
    {
      *(&self->super.mUIState + v6 + v11) = 0;
    }

    v9 = v18;
    [(THChapterBrowserController *)self thumbSize];
    v29 = v28;
    [(THChapterBrowserController *)self firstThumbOverlap];
    v31 = v30;
    [(THChapterBrowserController *)self thumbSize];
    v33 = v32;
    [(THChapterBrowserController *)self chapterWidth];
    v35 = v34;
    v36 = v31 + v24 * v29;
    if (v35 > v36)
    {
      [(THChapterBrowserController *)self chapterWidth];
    }

    v37 = &self->super.IMViewController_opaque[v11 + v6];
    *(v37 + 1) = v24;
    *(v37 + 2) = v8;
    *(v37 + 3) = 0;
    *(v37 + 4) = v36;
    *(v37 + 5) = v33;
    v8 = v8 + v36;

LABEL_19:
    ++v7;
    v6 += 64;
  }

  while (v6 != 192);
  ++self->mSuspendThumbViewUpdates;
  [(THScrollViewWithPassthrough *)self->mPagesScrollView bounds];
  [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentSize:v8 + 1.0, CGRectGetHeight(v59)];
  v38 = &self->super.IMViewController_opaque[v11];
  v39 = -CGRectGetMinX(*(v38 + 80));
  [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentInset:0.0, v39, 0.0, -CGRectGetWidth(*(v38 + 144))];
  [(THScrollViewWithPassthrough *)self->mPagesScrollView bounds];
  if (a5 || (v44 = *(v38 + 12), v45 = *(v38 + 10), v46 = *(v38 + 11), v47 = v40, v48 = v41, v49 = v42, v50 = v43, v55 = *(v38 + 13), MinX = CGRectGetMinX(*&v40), v60.origin.x = v45, v60.origin.y = v46, v60.size.width = v44, v60.size.height = v55, MinX < CGRectGetMinX(v60)) || (v61.origin.x = v47, v61.origin.y = v48, v61.size.width = v49, v61.size.height = v50, MaxX = CGRectGetMaxX(v61), v62.origin.x = v45, v62.origin.y = v46, v62.size.width = v44, v62.size.height = v55, MaxX > CGRectGetMaxX(v62)))
  {
    [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:CGRectGetWidth(*(v38 + 16)), 0.0];
  }

  [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
  self->mPageThumbScrollerStartContentOffset = v52;
  --self->mSuspendThumbViewUpdates;
  if (!self->mDeferPagesScrollViewScrolls)
  {

    [(THChapterBrowserController *)self p_updatePageThumbnails:1];
  }
}

- (double)p_updateChapterWidths
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    mChapterIndex = self->mChapterIndex;
    if ((v3 * 64) | mChapterIndex && (-[THTOCViewController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 toc:self numberOfTilesInDivision:0], v7, v4 + mChapterIndex <= v8))
    {
      v13 = v4 + self->mChapterIndex - 1;
      self->mChapterInfo[v3].chapterNumber = v13;
      v14 = [(THTOCViewController *)self dataSource];
      v15 = [v14 toc:self tileModelForChapterIndex:v13];

      objc_storeStrong(&self->mChapterInfo[v3].tileModel, v15);
      v16 = [v15 tinyThumbs];
      v17 = [v16 count];

      if (self->mBackgroundSwipeDidInitiateScroll && v17 >= [(THChapterBrowserController *)self maximumNumberOfThumbsToRightOfLeftmostDuringBackgroundDrag])
      {
        v17 = [(THChapterBrowserController *)self maximumNumberOfThumbsToRightOfLeftmostDuringBackgroundDrag];
      }

      [(THChapterBrowserController *)self thumbSize];
      v19 = v18;
      [(THChapterBrowserController *)self firstThumbOverlap];
      v21 = v20;
      [(THChapterBrowserController *)self thumbSize];
      v23 = v22;
      self->mChapterInfo[v3].numberOfPages = v17;
      [(THChapterBrowserController *)self chapterWidth];
      v25 = v24;
      v26 = v21 + v17 * v19;
      if (v25 > v26)
      {
        [(THChapterBrowserController *)self chapterWidth];
      }

      v27 = &self->mChapterInfo[v3];
      v27->frame.origin.x = v5;
      v27->frame.origin.y = 0.0;
      v27->frame.size.width = v26;
      v27->frame.size.height = v23;
      self->mChapterInfo[v3].firstRelativePageToShowDuringBackgroundScroll = 0;
      v5 = v5 + v26;
    }

    else
    {
      v9 = &self->mChapterInfo[v3];
      v9->chapterNumber = 0x7FFFFFFFFFFFFFFFLL;
      v10 = &self->mChapterInfo[v3];
      tileModel = v10->tileModel;
      v10->tileModel = 0;

      v10->numberOfPages = 0;
      size = CGRectZero.size;
      v10->frame.origin = CGRectZero.origin;
      v10->frame.size = size;
      v9->firstRelativePageToShowDuringBackgroundScroll = 0;
    }

    ++v4;
    ++v3;
  }

  while (v3 != 3);
  return v5;
}

- (void)p_updatePagesScrollView
{
  mChapterInfo = self->mChapterInfo;
  mChapterIndex = self->mChapterIndex;
  if (self->mChapterInfo[1].chapterNumber != mChapterIndex || !self->mChapterInfo[1].tileModel)
  {
    if (mChapterIndex == self->mChapterInfo[2].chapterNumber)
    {
      MinX = -CGRectGetMinX(self->mChapterInfo[1].frame);
      mChapterIndex = self->mChapterIndex;
    }

    else
    {
      MinX = 0.0;
    }

    chapterNumber = mChapterInfo->chapterNumber;
    [(THChapterBrowserController *)self p_updateChapterWidths];
    v8 = v7;
    if (mChapterIndex == chapterNumber)
    {
      MinX = CGRectGetMinX(mChapterInfo[1].frame);
    }

    [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
    v10 = v9;
    v12 = v11;
    ++self->mSuspendThumbViewUpdates;
    [(THScrollViewWithPassthrough *)self->mPagesScrollView bounds];
    [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentSize:v8 + 1.0, CGRectGetHeight(v27)];
    v13 = -CGRectGetMinX(mChapterInfo[1].frame);
    [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentInset:0.0, v13, 0.0, -CGRectGetWidth(mChapterInfo[2].frame)];
    v14 = MinX + v10;
    [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:v14, v12];
    self->mPreservedThumbnailOffset.x = v14;
    self->mPreservedThumbnailOffset.y = v12;
    if (MinX != 0.0)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = [(THChapterBrowserController *)self thumbnailSubviews];
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v22 + 1) + 8 * i);
            [v19 frame];
            [v19 setFrame:MinX + v20];
          }

          v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }
    }

    [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
    self->mPageThumbScrollerStartContentOffset = v21;
    --self->mSuspendThumbViewUpdates;
  }
}

- (id)p_thumbShownForChapter:(unint64_t)a3 index:(unint64_t)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(THChapterBrowserController *)self thumbnailSubviews];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 chapterIndex] == a3 && objc_msgSend(v10, "pageIndex") == a4)
        {
          v11 = v10;
          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (CGRect)frameForPageThumbAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4
{
  if (self->mChapterIndex != a4)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[THChapterBrowserController frameForPageThumbAtIndex:chapterIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:2130 description:{@"chapter %lu index should match the current mChapterIndex: %lu.", a4, self->mChapterIndex}];
  }

  x = self->mChapterInfo[1].frame.origin.x;
  y = self->mChapterInfo[1].frame.origin.y;
  width = self->mChapterInfo[1].frame.size.width;
  height = self->mChapterInfo[1].frame.size.height;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(THChapterBrowserController *)self thumbSize];
    v15 = v14;
    [(THChapterBrowserController *)self firstThumbOverlap];
    v17 = v16;
    [(THChapterBrowserController *)self thumbSize];
    v19 = v18;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v20 = CGRectGetMinX(v25) + a3 * v15;
    if (a3)
    {
      x = v17 + v20;
    }

    else
    {
      x = v20;
    }

    y = 0.0;
    width = v15;
    height = v19;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)p_updatePageThumbnails:(BOOL)a3
{
  v101 = a3;
  if (self->mSuspendThumbViewUpdates || self->mDraggingInScrubber)
  {
    return;
  }

  [(THChapterBrowserController *)self thumbSize];
  v5 = v4;
  [(THChapterBrowserController *)self thumbSize];
  r1 = v6;
  [(THChapterBrowserController *)self firstThumbSize];
  v102 = v7;
  [(THChapterBrowserController *)self firstThumbSize];
  v99 = v8;
  [(THChapterBrowserController *)self firstThumbOverlap];
  v10 = v9;
  [(THScrollViewWithPassthrough *)self->mPagesScrollView frame];
  Width = CGRectGetWidth(v131);
  [(THScrollViewWithPassthrough *)self->mPagesScrollView frame];
  v12 = CGRectGetWidth(v132);
  v107 = self;
  v13 = [(THChapterBrowserController *)self view];
  [v13 safeAreaInsets];
  v15 = v14;
  v16 = [(THChapterBrowserController *)v107 view];
  [v16 safeAreaInsets];
  v18 = v15 - (v12 - v5 * ceil((Width + 2.0) / v5)) + v17;

  [(THScrollViewWithPassthrough *)v107->mPagesScrollView contentOffset];
  v20 = v19 + v18 * -0.5;
  [(THScrollViewWithPassthrough *)v107->mPagesScrollView frame];
  v21 = v18 + CGRectGetWidth(v133);
  [(THScrollViewWithPassthrough *)v107->mPagesScrollView contentSize];
  v143.size.width = v22;
  v134.origin.y = 0.0;
  v143.origin.x = 0.0;
  v143.origin.y = 0.0;
  v134.origin.x = v20;
  v134.size.width = v21;
  v134.size.height = r1;
  v143.size.height = r1;
  v135 = CGRectIntersection(v134, v143);
  y = v135.origin.y;
  x = v135.origin.x;
  v23 = v135.size.width;
  height = v135.size.height;
  v108 = [[NSMutableArray alloc] initWithCapacity:8];
  v109 = [[NSMutableArray alloc] initWithCapacity:2];
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v25 = [(THChapterBrowserController *)v107 thumbnailSubviews];
  v26 = [v25 countByEnumeratingWithState:&v123 objects:v130 count:16];
  if (v26)
  {
    v27 = *v124;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v124 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v123 + 1) + 8 * i);
        if ([v29 pageIndex])
        {
          v30 = v108;
        }

        else
        {
          v30 = v109;
        }

        [v30 addObject:v29];
      }

      v26 = [v25 countByEnumeratingWithState:&v123 objects:v130 count:16];
    }

    while (v26);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v31 = [(THScrollViewWithPassthrough *)v107->mPagesScrollView subviews];
  v32 = [v31 countByEnumeratingWithState:&v119 objects:v129 count:16];
  if (v32)
  {
    v33 = *v120;
    while (2)
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v120 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v119 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v98 = v35;
          goto LABEL_23;
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v119 objects:v129 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v98 = 0;
LABEL_23:

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v36 = 0;
  mChapterInfo = v107->mChapterInfo;
  do
  {
    v37 = &mChapterInfo[v36];
    if (v37->tileModel)
    {
      v136.origin.y = y;
      v136.origin.x = x;
      v136.size.width = v23;
      v136.size.height = height;
      if (CGRectIntersectsRect(v136, v37->frame))
      {
        v137.origin.y = y;
        v137.origin.x = x;
        v137.size.width = v23;
        v137.size.height = height;
        MinX = CGRectGetMinX(v137);
        v39 = MinX - CGRectGetMinX(v37->frame);
        firstRelativePageToShowDuringBackgroundScroll = v37->firstRelativePageToShowDuringBackgroundScroll;
        if (v39 >= v102)
        {
          v42 = (v39 - v10) / v5;
          v43 = floorf(v42);
          if (v43 < 0.0)
          {
            v43 = 0.0;
          }

          v41 = (v43 + firstRelativePageToShowDuringBackgroundScroll);
        }

        else
        {
          v41 = 0;
        }

        numberOfPages = v37->numberOfPages;
        while (v41 < firstRelativePageToShowDuringBackgroundScroll + numberOfPages)
        {
          v45 = CGRectGetMinX(v37->frame);
          v138.origin.y = y;
          v138.origin.x = x;
          v138.size.width = v23;
          v138.size.height = height;
          if (v10 + v45 + (v41 - firstRelativePageToShowDuringBackgroundScroll) * v5 >= CGRectGetMaxX(v138))
          {
            break;
          }

          if (v41 == v37->firstRelativePageToShowDuringBackgroundScroll)
          {
            v46 = 0;
          }

          else
          {
            v46 = v41;
          }

          v47 = [(THChapterBrowserController *)v107 p_thumbShownForChapter:v37->chapterNumber index:v46];
          if (v47)
          {
            [v109 removeObjectIdenticalTo:v47];
            [v108 removeObjectIdenticalTo:v47];
          }

          v41 = v46 + 1;
          numberOfPages = v37->numberOfPages;
          firstRelativePageToShowDuringBackgroundScroll = v37->firstRelativePageToShowDuringBackgroundScroll;
        }
      }
    }

    ++v36;
  }

  while (v36 != 3);
  v48 = 0;
  do
  {
    v104 = v48;
    v49 = &mChapterInfo[v48];
    if (v49->tileModel)
    {
      v139.origin.y = y;
      v139.origin.x = x;
      v139.size.width = v23;
      v139.size.height = height;
      if (CGRectIntersectsRect(v139, v49->frame))
      {
        v140.origin.y = y;
        v140.origin.x = x;
        v140.size.width = v23;
        v140.size.height = height;
        v50 = CGRectGetMinX(v140);
        v51 = v50 - CGRectGetMinX(v49->frame);
        v52 = v49->firstRelativePageToShowDuringBackgroundScroll;
        if (v51 >= v102)
        {
          v54 = (v51 - v10) / v5;
          v55 = floorf(v54);
          if (v55 < 0.0)
          {
            v55 = 0.0;
          }

          v53 = (v55 + v52);
        }

        else
        {
          v53 = 0;
        }

        v56 = v49->numberOfPages;
        while (1)
        {
          if (v53 >= v52 + v56)
          {
            goto LABEL_94;
          }

          v57 = CGRectGetMinX(v49->frame);
          v141.origin.y = y;
          v141.origin.x = x;
          v141.size.width = v23;
          v141.size.height = height;
          if (v10 + v57 + (v53 - v52) * v5 >= CGRectGetMaxX(v141))
          {
            goto LABEL_94;
          }

          v58 = v49->firstRelativePageToShowDuringBackgroundScroll;
          if (v53 == v58)
          {
            v59 = 0;
          }

          else
          {
            v59 = v53;
          }

          v60 = CGRectGetMinX(v49->frame);
          v61 = [(THChapterBrowserController *)v107 view];
          [v61 safeAreaInsets];
          v63 = v62;
          v64 = 0.0;
          if (v53 != v58)
          {
            v64 = (v53 - v49->firstRelativePageToShowDuringBackgroundScroll);
          }

          v65 = v53 == v58 ? v60 + v63 + v64 * v5 : v10 + v60 + v63 + v64 * v5;
          v66 = [(THChapterBrowserController *)v107 p_thumbShownForChapter:v49->chapterNumber index:v59];
          if (!v66)
          {
            break;
          }

LABEL_89:
          v87 = [(THTOCViewController *)v107 delegate];
          -[THPageThumbnailView setIsCurrentPage:](v66, "setIsCurrentPage:", [v87 chapterBrowserController:v107 isCurrentlyDisplayedPageForRelativePageIndex:v59 andChapterIndex:v49->chapterNumber]);

          [(THPageThumbnailView *)v66 frame];
          if (v88 != v65)
          {
            [(THPageThumbnailView *)v66 setFrame:v65];
          }

          if (!v59)
          {
            v53 = v49->firstRelativePageToShowDuringBackgroundScroll;
          }

          ++v53;
          v56 = v49->numberOfPages;
          v52 = v49->firstRelativePageToShowDuringBackgroundScroll;
        }

        if (v53 == v58)
        {
          v67 = [v109 lastObject];
          v68 = v102;
          v69 = v99;
          if (v67)
          {
            v66 = v67;
            [v109 removeLastObject];
            goto LABEL_71;
          }
        }

        else
        {
          v66 = [v108 lastObject];
          v68 = v5;
          v69 = r1;
          if (v66)
          {
            [v108 removeLastObject];
            goto LABEL_71;
          }
        }

        [(THScrollViewWithPassthrough *)v107->mPagesScrollView bounds];
        v66 = [[THPageThumbnailView alloc] initWithFrame:v53 == v58 isFirstThumbnail:v107 delegate:v65, CGRectGetHeight(v142) - v69, v68, v69];
        mPagesScrollView = v107->mPagesScrollView;
        if (v98)
        {
          [(THScrollViewWithPassthrough *)mPagesScrollView insertSubview:v66 belowSubview:?];
        }

        else
        {
          [(THScrollViewWithPassthrough *)mPagesScrollView addSubview:v66];
        }

        v71 = [(THTOCViewController *)v107 delegate];
        v72 = [v71 isTwoUpForChapterBrowserController:v107];

        if ((v72 & 1) == 0)
        {
          [(THPageThumbnailView *)v66 setupFreeTransformWithDelegate:v107];
        }

LABEL_71:
        [(THPageThumbnailView *)v66 setPageIndex:v59];
        v73 = [(THChapterBrowserController *)v107 thumbnailsHiddenForPinch];
        v118[0] = _NSConcreteStackBlock;
        v118[1] = 3221225472;
        v118[2] = sub_A9204;
        v118[3] = &unk_45CD40;
        v118[4] = v59;
        v74 = [v73 objectsPassingTest:v118];
        v75 = [v74 count] != 0;

        [(THPageThumbnailView *)v66 setHidden:(v104 == 1) & v75];
        [(THPageThumbnailView *)v66 setChapterIndex:v49->chapterNumber];
        v76 = v49->tileModel;
        v77 = [(THTOCTileModel *)v76 displayPageNumberForPageIndex:[(THTOCTileModel *)v76 pageIndex]+ v59];
        if (!v77)
        {
          v78 = [(THTOCViewController *)v107 delegate];
          v77 = [v78 chapterBrowserController:v107 pageNumberStringForRelativePageIndex:v59 andChapterIndex:v49->chapterNumber];
        }

        [(THPageThumbnailView *)v66 setPageNumberText:v77];
        TSUScreenScale();
        tileModel = v49->tileModel;
        if (v80 <= 1.0)
        {
          v81 = [(THTOCTileModel *)tileModel tinyThumbs];
          if (v59 < [v81 count])
          {
            v82 = [(THTOCTileModel *)v49->tileModel tinyThumbs];
            v83 = [v82 objectAtIndex:v59];
            goto LABEL_78;
          }
        }

        else
        {
          v81 = [(THTOCTileModel *)tileModel largerThumbs];
          if (v59 < [v81 count])
          {
            v82 = [(THTOCTileModel *)v49->tileModel largerThumbs];
            v83 = [v82 objectAtIndex:v59];
LABEL_78:
            v84 = v83;

LABEL_80:
            if (v84)
            {
              v85 = v53 == v58 || v101;
              [(THPageThumbnailView *)v66 setImageData:v84 immediate:v85];
            }

            v86 = v59 >= 1 && v59 == v49->numberOfPages + v49->firstRelativePageToShowDuringBackgroundScroll - 1;
            [(THPageThumbnailView *)v66 setHasRightBorder:v86];

            goto LABEL_89;
          }
        }

        v84 = 0;
        goto LABEL_80;
      }
    }

LABEL_94:
    v48 = v104 + 1;
  }

  while (v104 != 2);
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v89 = v109;
  v90 = [v89 countByEnumeratingWithState:&v114 objects:v128 count:16];
  if (v90)
  {
    v91 = *v115;
    do
    {
      for (k = 0; k != v90; k = k + 1)
      {
        if (*v115 != v91)
        {
          objc_enumerationMutation(v89);
        }

        [*(*(&v114 + 1) + 8 * k) removeFromSuperview];
      }

      v90 = [v89 countByEnumeratingWithState:&v114 objects:v128 count:16];
    }

    while (v90);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v93 = v108;
  v94 = [v93 countByEnumeratingWithState:&v110 objects:v127 count:16];
  if (v94)
  {
    v95 = *v111;
    do
    {
      for (m = 0; m != v94; m = m + 1)
      {
        if (*v111 != v95)
        {
          objc_enumerationMutation(v93);
        }

        [*(*(&v110 + 1) + 8 * m) removeFromSuperview];
      }

      v94 = [v93 countByEnumeratingWithState:&v110 objects:v127 count:16];
    }

    while (v94);
  }

  +[CATransaction commit];
  if (v98)
  {
    [(THScrollViewWithPassthrough *)v107->mPagesScrollView bringSubviewToFront:v98];
    v97 = [v98 layer];
    [v97 setZPosition:2.0];
  }

  [v93 makeObjectsPerformSelector:"teardown"];
  [v89 makeObjectsPerformSelector:"teardown"];
}

- (BOOL)p_isTOCLandscape
{
  v2 = [(THTOCViewController *)self bookPropertiesDelegate];
  v3 = [v2 bookIsPaginatedForLandscape];

  return v3;
}

- (int)p_chapterIndexForCurrentScrollPosition
{
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  v4 = v3;
  [(THChapterBrowserController *)self chapterWidth];
  return (v4 / v5 + 0.5);
}

- (void)p_recoverFromFastScrollingDesynchronization
{
  if ([(THChapterViewController *)self->mChapterViewControllers[1] chapterIndex]!= self->mChapterIndex)
  {

    [THChapterBrowserController p_setupChapterViewControllerAtIndex:"p_setupChapterViewControllerAtIndex:withChapterIndex:allowThumbnail:" withChapterIndex:1 allowThumbnail:?];
  }
}

- (void)p_backgroundScrollingDidEnd
{
  self->mBackgroundSwipeDidInitiateScroll = 0;
  v3 = [(THChapterBrowserController *)self p_chapterIndexForCurrentScrollPosition];
  mBackgroundSwipeBeginningChapter = self->mBackgroundSwipeBeginningChapter;
  [(THChapterBrowserController *)self p_setChapterIndex:v3 forScrub:0 stillScrolling:0];
  [(THChapterBrowserController *)self p_recoverFromFastScrollingDesynchronization];
  objc_storeStrong(&self->mUpdatingScrollView, self->mBackgroundScrollView);
  if (self->mPullThroughInProgress)
  {
    [(THChapterBrowserController *)self p_updatePagesScrollView];
  }

  else
  {
    [(THChapterBrowserController *)self p_resetPagesScrollViewAndCapThumbCount:0 firstVisibleRelativePage:0 resetContentOffset:1];
    if (mBackgroundSwipeBeginningChapter == v3 && (v5 = self->mPageThumbScrollerStartContentOffsetBeforeBackgroundDrag, v5 > 0.0))
    {
      [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
      [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:v5];
      mPageThumbScrollerStartContentOffsetBeforeBackgroundDrag = self->mPageThumbScrollerStartContentOffsetBeforeBackgroundDrag;
      self->mPageThumbScrollerStartContentOffset = mPageThumbScrollerStartContentOffsetBeforeBackgroundDrag;
      self->mPreservedThumbnailOffset.x = mPageThumbScrollerStartContentOffsetBeforeBackgroundDrag;
    }

    else
    {
      self->mPreservedThumbnailOffset.x = 0.0;
      self->mPageThumbScrollerStartContentOffset = 0.0;
      self->mPageThumbScrollerStartContentOffsetBeforeBackgroundDrag = 0.0;
    }
  }

  mUpdatingScrollView = self->mUpdatingScrollView;
  self->mUpdatingScrollView = 0;

  if (!self->mDraggingInScrubber)
  {
    [(THChapterBrowserController *)self p_startIntroMediaIfNecessary];
    if (!v3)
    {
      [(THChapterBrowserController *)self p_updatePageControl];
    }
  }

  [(THScrollViewWithPassthrough *)self->mPagesScrollView setUserInteractionEnabled:1];
  mChapterPageControl = self->mChapterPageControl;

  [(THChapterBrowserScrubbablePageControl *)mChapterPageControl setUserInteractionEnabled:1];
}

- (double)p_pagesScrollViewNextChapterThreshhold
{
  [(THChapterBrowserController *)self thumbSize];
  v4 = v3;
  v5 = [(THChapterBrowserController *)self im_isCompactWidth];
  result = v4 * 0.5;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (void)p_pageThumbScrollingDidEnd
{
  mChapterIndex = self->mChapterIndex;
  [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
  v5 = v4;
  MinX = CGRectGetMinX(self->mChapterInfo[1].frame);
  MaxX = CGRectGetMaxX(self->mChapterInfo[1].frame);
  [(THChapterBrowserController *)self p_pagesScrollViewNextChapterThreshhold];
  v9 = v8;
  if (v5 < MinX)
  {
    v10 = MinX - v8;
    if (self->mChapterIndex && v5 < v10)
    {
      --mChapterIndex;
      self->mPageThumbScrollerStartContentOffset = MinX;
    }
  }

  [(THChapterBrowserController *)self chapterWidth];
  if (v5 + v12 >= MaxX)
  {
    [(THChapterBrowserController *)self chapterWidth];
    if (v5 + v13 >= MaxX + v9)
    {
      v14 = [(THTOCViewController *)self dataSource];
      v15 = [v14 toc:self numberOfTilesInDivision:0];

      if (mChapterIndex < (v15 - 1))
      {
        ++mChapterIndex;
        [(THChapterBrowserController *)self chapterWidth];
        self->mPageThumbScrollerStartContentOffset = MaxX - v16;
      }
    }
  }

  if (mChapterIndex != self->mChapterIndex)
  {
    self->mPullThroughInProgress = 1;
    [(THScrollView *)self->mBackgroundScrollView setScrollEnabled:0];
    mBackgroundScrollView = self->mBackgroundScrollView;
    [(THChapterBrowserController *)self chapterWidth];
    [(THScrollView *)mBackgroundScrollView setContentOffset:1 animated:v18 * mChapterIndex, 0.0];
    v19 = self->mBackgroundScrollView;

    [(THScrollView *)v19 setScrollEnabled:1];
  }
}

- (void)p_updatePageControl
{
  v3 = [(THTOCViewController *)self dataSource];
  v4 = [v3 toc:self numberOfTilesInDivision:0];
  v5 = &v4[[(THChapterBrowserController *)self hasIntroPage]];

  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setNumberOfPages:v5];
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setCurrentPage:[(THChapterBrowserController *)self chapterIndex]+ [(THChapterBrowserController *)self hasIntroPage]- (v6 < 0.0)];
  mChapterPageControl = self->mChapterPageControl;

  [(THChapterBrowserScrubbablePageControl *)mChapterPageControl centerHorizontallyInSuperview];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v19 = a3;
  if (self->mBackgroundScrollView == v19)
  {
    v4 = [(THTOCViewController *)self delegate];
    [v4 cancelPreloadOfContentNodesForChapterBrowserController:self];

    self->mBackgroundSwipeDidInitiateScroll = 1;
    mPagesScrollView = self->mPagesScrollView;
    [(THScrollViewWithPassthrough *)mPagesScrollView contentOffset];
    [(THScrollViewWithPassthrough *)mPagesScrollView setContentOffset:0 animated:?];
    if (([(THScrollView *)v19 isDecelerating]& 1) == 0)
    {
      self->mBackgroundSwipeBeginningChapter = self->mChapterIndex;
      [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
      v7 = v6;
      MinX = CGRectGetMinX(self->mChapterInfo[1].frame);
      [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
      self->mPageThumbScrollerStartContentOffset = v9;
      self->mPageThumbScrollerStartContentOffsetBeforeBackgroundDrag = v9;
      [(THChapterBrowserController *)self thumbSize];
      v11 = v10;
      [(THChapterBrowserController *)self firstThumbOverlap];
      v12 = v7 - MinX;
      *&v13 = (v12 - v13) / v11;
      v14 = floorf(*&v13);
      if (v14 > 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = 0.0;
      if ([(THChapterBrowserController *)self maximumNumberOfThumbsToLeftOfLeftmostDuringBackgroundDrag]<= v15)
      {
        v16 = (v15 - [(THChapterBrowserController *)self maximumNumberOfThumbsToLeftOfLeftmostDuringBackgroundDrag]);
      }

      ++self->mSuspendThumbViewUpdates;
      [(THChapterBrowserController *)self p_resetPagesScrollViewAndCapThumbCount:1 firstVisibleRelativePage:v15 resetContentOffset:1];
      --self->mSuspendThumbViewUpdates;
      v17 = CGRectGetMinX(self->mChapterInfo[1].frame);
      [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
      [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:v12 + v17 - v11 * v16];
      [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
      self->mPageThumbScrollerStartContentOffset = v18;
      [(THChapterBrowserController *)self p_updatePageThumbnails:1];
    }

    [(THScrollViewWithPassthrough *)self->mPagesScrollView setUserInteractionEnabled:0];
  }

  [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setUserInteractionEnabled:0];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v63 = v4;
  if (self->mBackgroundScrollView != v4 || self->mDeferBackgroundScrollViewScrolls)
  {
    if (self->mPagesScrollView == v4 && !self->mDeferPagesScrollViewScrolls)
    {
      [(THChapterBrowserController *)self p_updatePageThumbnails:1];
      if (self->mPullThroughInProgress && self->mUpdatingScrollView != self->mBackgroundScrollView)
      {
        objc_storeStrong(&self->mUpdatingScrollView, self->mPagesScrollView);
        mChapterIndex = self->mChapterIndex;
        [(THChapterBrowserController *)self chapterWidth];
        [(THScrollView *)self->mBackgroundScrollView setContentOffset:v6 * mChapterIndex, 0.0];
        mUpdatingScrollView = self->mUpdatingScrollView;
        self->mUpdatingScrollView = 0;
LABEL_75:

        goto LABEL_76;
      }
    }

    goto LABEL_76;
  }

  [(THScrollViewWithPassthrough *)v4 contentOffset];
  v9 = v8;
  v10 = self->mChapterIndex;
  if (v10)
  {
    [(THChapterBrowserController *)self chapterWidth];
    if (v9 < v11 * (v10 - 1))
    {
LABEL_14:
      [(THChapterBrowserController *)self p_setChapterIndex:[(THChapterBrowserController *)self p_chapterIndexForCurrentScrollPosition] forScrub:0 stillScrolling:1];
      goto LABEL_16;
    }

    v12 = self->mChapterIndex + 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = [(THTOCViewController *)self dataSource];
  if (v12 >= [v13 toc:self numberOfTilesInDivision:0])
  {

    goto LABEL_16;
  }

  v14 = self->mChapterIndex;
  [(THChapterBrowserController *)self chapterWidth];
  v16 = v15 * (v14 + 1);

  if (v9 > v16)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (self->mUpdatingScrollView == &self->mPagesScrollView->super || self->mSuspendThumbViewUpdates || self->mDraggingInScrubber)
  {
    goto LABEL_60;
  }

  objc_storeStrong(&self->mUpdatingScrollView, self->mBackgroundScrollView);
  v17 = 0;
  v18 = 0;
  mChapterInfo = self->mChapterInfo;
  v20 = 0xFFFFFFFFLL;
  do
  {
    chapterNumber = mChapterInfo[v17].chapterNumber;
    if (v20 >= chapterNumber)
    {
      v22 = mChapterInfo[v17].chapterNumber;
    }

    else
    {
      v22 = v20;
    }

    if (v18 <= chapterNumber)
    {
      v23 = mChapterInfo[v17].chapterNumber;
    }

    else
    {
      v23 = v18;
    }

    if (chapterNumber != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v23;
      v20 = v22;
    }

    ++v17;
  }

  while (v17 != 3);
  v24 = self->mChapterIndex;
  if (v24 <= v18 && v24 >= v20)
  {
    if (mChapterInfo->chapterNumber != 0x7FFFFFFFFFFFFFFFLL || self->mPullThroughInProgress || self->mBackgroundSwipeDidInitiateScroll)
    {
      [(THChapterBrowserController *)self p_updatePagesScrollView];
      goto LABEL_39;
    }

    mBackgroundSwipeDidInitiateScroll = 0;
  }

  else
  {
    mBackgroundSwipeDidInitiateScroll = self->mBackgroundSwipeDidInitiateScroll;
  }

  [(THChapterBrowserController *)self p_resetPagesScrollViewAndCapThumbCount:mBackgroundSwipeDidInitiateScroll firstVisibleRelativePage:0 resetContentOffset:1];
LABEL_39:
  v27 = [(THTOCViewController *)self dataSource];
  v28 = [v27 toc:self numberOfTilesInDivision:0];

  v29 = self->mChapterInfo[1].chapterNumber;
  v62 = v28;
  if (v29)
  {
    v30 = 1;
  }

  else
  {
    v31 = [(THChapterBrowserController *)self introMediaViewController];
    v30 = v31 != 0;
  }

  v32 = self->mChapterViewControllers[1];
  if (v32)
  {
    mBackgroundsView = self->mBackgroundsView;
    v34 = [(THChapterViewController *)v32 view];
    [v34 frame];
    v36 = v35;
    v38 = v37;
    v39 = [(THChapterBrowserController *)self view];
    [(UIView *)mBackgroundsView convertPoint:v39 toView:v36, v38];
    v41 = v40;

    [(THChapterBrowserController *)self chapterWidth];
    v43 = v41 / v42;
    if (self->mPullThroughInProgress)
    {
      v44 = self->mPageThumbScrollerStartContentOffset - v41;
    }

    else
    {
      v44 = v43 >= 0.0 ? (1.0 - v43) * self->mPageThumbScrollerStartContentOffset : self->mPageThumbScrollerStartContentOffset - v43 * (CGRectGetMaxX(self->mChapterInfo[1].frame) - self->mPageThumbScrollerStartContentOffset);
    }

    v45 = v43 >= 0.0 && v30;
    v46 = v43 > 0.0 || v29 + 1 >= v62;
    if (!v46 || v45)
    {
      [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:v44, 0.0];
    }
  }

  v48 = self->mUpdatingScrollView;
  self->mUpdatingScrollView = 0;

LABEL_60:
  [(THChapterBrowserController *)self _updateContentOffsets];
  [(THScrollView *)self->mBackgroundScrollView contentOffset];
  v49 = 0.0;
  if (v50 <= 0.0)
  {
    [(THScrollView *)self->mBackgroundScrollView contentOffset];
    v49 = v51;
  }

  [(THChapterBrowserController *)self chapterWidth];
  if (vabdd_f64(-v49, v52) >= 0.00999999978)
  {
    v57 = [(THChapterBrowserController *)self introMediaViewController];
    [v57 prepareControlsForTOC];

    [(UIView *)self->mChapterPageControlWrapper setAlpha:1.0];
    [(THChapterBrowserController *)self chapterWidth];
    if (v49 >= v58 * -0.5)
    {
      self->mDidAutoHideToolbar = 0;
    }

    else if (!self->mDidAutoHideToolbar && !self->_flags.transitioning)
    {
      v59 = [(THTOCViewController *)self delegate];
      [v59 TOCHideToolbarAnimated:1];

      self->mDidAutoHideToolbar = 1;
    }
  }

  else
  {
    v53 = [(THTOCViewController *)self delegate];
    v54 = [v53 introMediaViewControllerForChapterBrowserController:self];
    v55 = [v54 isMovie];

    if (v55 && !self->mDraggingInScrubber)
    {
      [(UIView *)self->mChapterPageControlWrapper setAlpha:0.0];
    }

    if (!self->mDidAutoHideToolbar)
    {
      v56 = [(THTOCViewController *)self delegate];
      [v56 TOCHideToolbarAnimated:0];

      self->mDidAutoHideToolbar = 1;
    }
  }

  if ([(THChapterBrowserController *)self hasIntroPage])
  {
    [(THScrollView *)self->mBackgroundScrollView contentOffset];
    v61 = v60;
    mUpdatingScrollView = [(THChapterBrowserController *)self backgroundScrollView];
    [mUpdatingScrollView setBounces:v61 >= 0.0];
    goto LABEL_75;
  }

LABEL_76:
}

- (_NSRange)p_chapterRelativePageIndexesCurrentlyVisibleInRect:(CGRect)a3 forChapterFrame:(CGRect)a4 chapterPageCount:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  if (!CGRectIntersectsRect(a3, a4) || ((v29.origin.x = v13, v29.origin.y = v12, v29.size.width = v11, v29.size.height = v10, rect = height, MinX = CGRectGetMinX(v29), v30.origin.x = v13, v30.origin.y = v12, v30.size.width = v11, v30.size.height = v10, MaxX = CGRectGetMaxX(v30), v31.origin.x = x, v31.origin.y = y, v31.size.width = width, v31.size.height = rect, v17 = CGRectGetMinX(v31), [(THChapterBrowserController *)self thumbSize], v19 = v18, [(THChapterBrowserController *)self firstThumbOverlap], v21 = v17 + v20, v21 < MaxX) ? (v22 = a5 == 0) : (v22 = 1), v22))
  {
    v23 = 0;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = 0;
    v24 = 1;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v21 >= MinX)
      {
        ++v23;
      }

      if (v21 >= MinX && v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = v24 - 1;
      }

      v21 = v19 + v21;
    }

    while (v21 < MaxX && v24++ < a5);
  }

  result.length = v23;
  result.location = v25;
  return result;
}

- (void)p_preloadContentNodesForVisibleThumbnails
{
  [(THChapterBrowserController *)self thumbSize];
  v4 = v3;
  [(THChapterBrowserController *)self thumbSize];
  v6 = v5;
  [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
  v8 = v7 + v4 * -0.5;
  [(THScrollViewWithPassthrough *)self->mPagesScrollView frame];
  v9 = v4 + CGRectGetWidth(v25);
  [(THScrollViewWithPassthrough *)self->mPagesScrollView contentSize];
  v28.size.width = v10;
  v26.origin.y = 0.0;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v26.origin.x = v8;
  v26.size.width = v9;
  v26.size.height = v6;
  v28.size.height = v6;
  v27 = CGRectIntersection(v26, v28);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  p_y = &self->mChapterInfo[0].frame.origin.y;
  v16 = 3;
  do
  {
    v17 = *(p_y - 3);
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [(THChapterBrowserController *)self p_chapterRelativePageIndexesCurrentlyVisibleInRect:*(p_y - 2) forChapterFrame:x chapterPageCount:y, width, height, *(p_y - 1), *p_y, p_y[1], p_y[2]];
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v18;
        v21 = v19;
        v22 = [(THTOCViewController *)self delegate];
        [v22 chapterBrowserController:self preloadContentNodesForPageRange:v20 chapterIndex:{v21, v17}];
      }
    }

    p_y += 8;
    --v16;
  }

  while (v16);
  [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
  self->mPreservedThumbnailOffset.x = v23;
  self->mPreservedThumbnailOffset.y = v24;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v18 = v6;
  if (self->mBackgroundScrollView == v6)
  {
    if (!v4)
    {
      [(THChapterBrowserController *)self p_backgroundScrollingDidEnd];
    }
  }

  else
  {
    v7 = v6;
    mPagesScrollView = self->mPagesScrollView;
    if (mPagesScrollView == v7)
    {
      if (v4)
      {
        [(THScrollViewWithPassthrough *)mPagesScrollView contentOffset];
        v10 = v9;
        MinX = CGRectGetMinX(self->mChapterInfo[1].frame);
        MaxX = CGRectGetMaxX(self->mChapterInfo[1].frame);
        [(THChapterBrowserController *)self p_pagesScrollViewNextChapterThreshhold];
        v14 = v13;
        v15 = MinX - v13;
        if (self->mChapterIndex)
        {
          v16 = v10 < v15;
        }

        else
        {
          v16 = 0;
        }

        if (v16 || self->mChapterInfo[2].chapterNumber != 0x7FFFFFFFFFFFFFFFLL && ([(THChapterBrowserController *)self chapterWidth], v10 + v17 >= MaxX + v14))
        {
          self->mPullThroughInProgress = 1;
        }
      }

      else
      {
        [(THChapterBrowserController *)self p_preloadContentNodesForVisibleThumbnails];
        [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setUserInteractionEnabled:1];
      }
    }
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v5 = a3;
  if (self->mPullThroughInProgress && self->mPagesScrollView == v5)
  {
    [(THScrollViewWithPassthrough *)v5 contentOffset];
    [(THScrollViewWithPassthrough *)v5 setContentOffset:0 animated:?];
    [(THScrollViewWithPassthrough *)self->mPagesScrollView contentOffset];
    self->mPageThumbScrollerStartContentOffset = v4;
    [(THChapterBrowserController *)self p_pageThumbScrollingDidEnd];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->mBackgroundScrollView == v4)
  {
    [(THChapterBrowserController *)self p_backgroundScrollingDidEnd];
  }

  else if (self->mPagesScrollView == v4)
  {
    if (!self->mBackgroundSwipeDidInitiateScroll)
    {
      [(THChapterBrowserController *)self p_preloadContentNodesForVisibleThumbnails];
    }

    [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl setUserInteractionEnabled:1];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_AA724;
  v5[3] = &unk_45CCF8;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (id)p_pageThumbnailViewForPageIndex:(unint64_t)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(THChapterBrowserController *)self thumbnailSubviews:0];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v5);
      }

      objc_opt_class();
      v9 = TSUDynamicCast();
      v10 = v9;
      if (v9)
      {
        if ([v9 chapterIndex] == self->mChapterIndex && objc_msgSend(v10, "pageIndex") == a3)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  return v10;
}

- (id)p_pageThumbnailViewForModelLink:(id)a3
{
  v4 = a3;
  v5 = [(THTOCViewController *)self delegate];
  v6 = [v5 chapterBrowserController:self relativePageIndexForLink:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(THChapterBrowserController *)self p_pageThumbnailViewForPageIndex:v6];
  }

  return v7;
}

- (CGRect)p_beginTransitionFromPageThumbnail:(id)a3 transformView:(id)a4 freeTransform:(BOOL)a5 firstThumbNailToTransition:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (v6)
  {
    [(NSMutableArray *)self->_thumbnailViewsInTransition removeAllObjects];
    v12 = +[TSKLowPriorityThreadDispatcher sharedLowPriorityDispatcher];
    [v12 suspend];

    v13 = [(THChapterBrowserController *)self introMediaViewController];
    [v13 stop];

    v14 = [(THTOCViewController *)self delegate];
    [v14 chapterBrowserController:self willTransitionToPageIndex:objc_msgSend(v10 chapterIndex:"pageIndex") freeTransform:{objc_msgSend(v10, "chapterIndex"), v7}];
  }

  v15 = [(THTOCViewController *)self delegate];
  [v15 chapterBrowserController:self rectForRelativePageIndex:objc_msgSend(v10 chapterIndex:{"pageIndex"), objc_msgSend(v10, "chapterIndex")}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(THTOCViewController *)self dataSource];
  v60 = v7;
  v25 = [v24 toc:self tileModelForChapterIndex:{objc_msgSend(v10, "chapterIndex")}];

  v26 = [(THTOCViewController *)self delegate];
  v27 = [v26 canvasScrollViewForChapterBrowserController:self];

  if (v6)
  {
    v28 = [v27 superview];
    [(THChapterBrowserController *)self setOriginalCanvasScrollViewSuperview:v28];

    [v27 frame];
    [(THChapterBrowserController *)self setOriginalCanvasScrollViewFrame:?];
  }

  v29 = objc_alloc_init(THPageThumbnailViewInTransition);
  [(THPageThumbnailViewInTransition *)v29 setThumbnailView:v10];
  [v10 frame];
  [(THPageThumbnailViewInTransition *)v29 setOriginalThumbnailFrame:?];
  [(NSMutableArray *)self->_thumbnailViewsInTransition addObject:v29];
  v30 = [(THChapterBrowserController *)self view];
  v31 = [v30 superview];
  [v11 center];
  v33 = v32;
  v35 = v34;
  v36 = [v11 superview];
  [v31 convertPoint:v36 fromView:{v33, v35}];
  [v11 setCenter:?];

  v37 = [(THChapterBrowserController *)self view];
  v38 = [v37 superview];
  [v38 addSubview:v11];

  v39 = [v10 pageIndex];
  v40 = [v25 largerThumbs];
  if (v39 >= [v40 count])
  {

    v42 = 0;
  }

  else
  {
    v41 = [v25 largerThumbs];
    v42 = [v41 objectAtIndex:{objc_msgSend(v10, "pageIndex")}];

    if (v42)
    {
      [v10 setImage:{+[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", v42)}];
    }
  }

  [v10 bounds];
  TSDCenterOfRect();
  [v27 setCenter:?];
  v43 = [(THTOCViewController *)self delegate];
  if ([v43 isTwoUpForChapterBrowserController:self])
  {
    v44 = [(THTOCViewController *)self delegate];
    v45 = [v44 isSinglePageInChapterForChapterBrowserController:self chapterIndex:{objc_msgSend(v10, "chapterIndex")}];

    if (v45)
    {
      v46 = 2.0;
    }

    else
    {
      v46 = 1.0;
    }
  }

  else
  {

    v46 = 1.0;
  }

  [v10 bounds];
  v48 = v47;
  [v27 bounds];
  v50 = v49;
  [v10 bounds];
  v52 = v51;
  [v27 bounds];
  CGAffineTransformMakeScale(&v62, v46 * v52 / v53, v48 / v50);
  v61 = v62;
  [v27 setTransform:&v61];
  [v10 setBorderVisible:0];
  [v10 setCanvasScrollView:v27 rasterize:v60];
  if ([v10 pageIndex] >= 2)
  {
    v54 = -[THChapterBrowserController p_pageThumbnailViewForPageIndex:](self, "p_pageThumbnailViewForPageIndex:", [v10 pageIndex] - 1);
    [v54 setHasRightBorder:1];
  }

  v55 = -[THChapterBrowserController p_pageThumbnailViewForPageIndex:](self, "p_pageThumbnailViewForPageIndex:", [v10 pageIndex] + 1);
  [v55 setHasLeftBorder:1];

  v56 = v17;
  v57 = v19;
  v58 = v21;
  v59 = v23;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

- (void)p_cleanupAfterTransitionFromPageThumbnail:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_thumbnailViewsInTransition count];
  v6 = [(THTOCViewController *)self delegate];
  v35 = [v6 canvasScrollViewForChapterBrowserController:self];

  [v4 clearHighlightRect];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = self->_thumbnailViewsInTransition;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v8)
  {
    v9 = *v38;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v37 + 1) + 8 * v10);
      v12 = [v11 thumbnailView];
      v13 = v12 == v4;

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    v15 = v14;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v16 = +[TSUAssertionHandler currentHandler];
  v17 = [NSString stringWithUTF8String:"[THChapterBrowserController p_cleanupAfterTransitionFromPageThumbnail:]"];
  v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterBrowserController.mm"];
  [v16 handleFailureInFunction:v17 file:v18 lineNumber:2996 description:{@"invalid nil value for '%s'", "thumbnailInTransition"}];

  v15 = 0;
LABEL_12:
  if (v5 == &dword_0 + 1)
  {
    v19 = [(THChapterBrowserController *)self originalCanvasScrollViewSuperview];
    [v19 addSubview:v35];

    v20 = *&CGAffineTransformIdentity.c;
    v36[0] = *&CGAffineTransformIdentity.a;
    v36[1] = v20;
    v36[2] = *&CGAffineTransformIdentity.tx;
    [v35 setTransform:v36];
    [(THChapterBrowserController *)self originalCanvasScrollViewFrame];
    [v35 setFrame:?];
    [(THChapterBrowserController *)self setOriginalCanvasScrollViewFrame:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    [(THChapterBrowserController *)self setOriginalCanvasScrollViewSuperview:0];
  }

  v21 = -[THChapterBrowserController p_pageThumbnailViewForPageIndex:](self, "p_pageThumbnailViewForPageIndex:", [v4 pageIndex]);
  v22 = v21;
  if (v21 && v21 != v4)
  {
    [v21 teardown];
    [v22 removeFromSuperview];
  }

  [(THScrollViewWithPassthrough *)self->mPagesScrollView addSubview:v4];
  [v15 originalThumbnailFrame];
  if (!CGRectIsNull(v42))
  {
    [v15 originalThumbnailFrame];
    [v4 setFrame:?];
  }

  v23 = [(THTOCViewController *)self dataSource];
  v24 = [v23 toc:self tileModelForChapterIndex:{objc_msgSend(v4, "chapterIndex")}];

  TSUScreenScale();
  if (v25 <= 1.0)
  {
    v30 = [v4 pageIndex];
    v27 = [v24 tinyThumbs];
    if (v30 < [v27 count])
    {
      v28 = [v24 tinyThumbs];
      v29 = [v28 objectAtIndex:{objc_msgSend(v4, "pageIndex")}];
      goto LABEL_24;
    }
  }

  else
  {
    v26 = [v4 pageIndex];
    v27 = [v24 largerThumbs];
    if (v26 < [v27 count])
    {
      v28 = [v24 largerThumbs];
      v29 = [v28 objectAtIndex:{objc_msgSend(v4, "pageIndex")}];
LABEL_24:
      v31 = v29;

      goto LABEL_26;
    }
  }

  v31 = 0;
LABEL_26:

  if (v31)
  {
    [v4 setImage:{+[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", v31)}];
  }

  [v4 setBorderVisible:1];
  if ([v4 pageIndex] >= 2)
  {
    v32 = -[THChapterBrowserController p_pageThumbnailViewForPageIndex:](self, "p_pageThumbnailViewForPageIndex:", [v4 pageIndex] - 1);
    [v32 setHasRightBorder:0];
  }

  v33 = -[THChapterBrowserController p_pageThumbnailViewForPageIndex:](self, "p_pageThumbnailViewForPageIndex:", [v4 pageIndex] + 1);
  [v33 setHasLeftBorder:0];
  [(NSMutableArray *)self->_thumbnailViewsInTransition removeObject:v15];
  if (v5 == &dword_0 + 1)
  {
    self->mIgnoringThumbnailTaps = 0;
    [(THChapterBrowserController *)self refreshStatusBarAppearance];
    v34 = +[TSKLowPriorityThreadDispatcher sharedLowPriorityDispatcher];
    [v34 resume];
  }
}

- (void)p_animationDidStopForThumbnailView:(id)a3
{
  v4 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ([(THChapterBrowserController *)self p_shouldHighlightThumbTargets])
  {
    [v4 highlightedRelativeRect];
    x = v9;
    y = v10;
    width = v11;
    height = v12;
  }

  if ([(NSMutableArray *)self->_thumbnailViewsInTransition count]== &dword_0 + 1)
  {
    v13 = [(THTOCViewController *)self delegate];
    [v13 chapterBrowserController:self didTransitionToPageIndex:objc_msgSend(v4 chapterIndex:"pageIndex") relativeTargetRect:{objc_msgSend(v4, "chapterIndex"), x, y, width, height}];
  }

  v14 = *&CGAffineTransformIdentity.c;
  v15[0] = *&CGAffineTransformIdentity.a;
  v15[1] = v14;
  v15[2] = *&CGAffineTransformIdentity.tx;
  [v4 setTransform:v15];
}

- (void)p_thumbnailAnimationDidStopWithContext:(id)a3
{
  v6 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  [(THChapterBrowserController *)self p_animationDidStopForThumbnailView:v4];
  [(THChapterBrowserController *)self p_cleanupAfterTransitionFromPageThumbnail:v4];
  v5 = +[UIApplication sharedApplication];
  [v5 endIgnoringInteractionEvents];
}

- (void)p_transitionFromPageThumbnail:(id)a3 destinationRect:(CGRect)a4 shouldShroud:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = +[UIApplication sharedApplication];
  [v12 beginIgnoringInteractionEvents];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_AB9C4;
  v16[3] = &unk_45CD68;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v24 = a5;
  v17 = v11;
  v18 = self;
  v23 = 0x3FD3333333333333;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_ABA58;
  v14[3] = &unk_45CD90;
  v14[4] = self;
  v13 = v17;
  v15 = v13;
  [UIView animateWithDuration:v16 animations:v14 completion:0.3];
}

- (void)scrollToContentOffset:(CGPoint)a3
{
  [(THScrollViewWithPassthrough *)self->mPagesScrollView setContentOffset:0 animated:a3.x, a3.y];
  v17 = self->mChapterInfo[1].tileModel;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(THChapterBrowserController *)self thumbnailSubviews];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        v9 = v8;
        if (v8 && [v8 chapterIndex] == self->mChapterIndex)
        {
          TSUScreenScale();
          if (v10 <= 1.0)
          {
            v15 = [v9 pageIndex];
            v12 = [(THTOCTileModel *)v17 tinyThumbs];
            if (v15 >= [v12 count])
            {
              goto LABEL_14;
            }

            v13 = [(THTOCTileModel *)v17 tinyThumbs];
            v14 = [v13 objectAtIndex:{objc_msgSend(v9, "pageIndex")}];
LABEL_13:
            v16 = v14;
          }

          else
          {
            v11 = [v9 pageIndex];
            v12 = [(THTOCTileModel *)v17 largerThumbs];
            if (v11 < [v12 count])
            {
              v13 = [(THTOCTileModel *)v17 largerThumbs];
              v14 = [v13 objectAtIndex:{objc_msgSend(v9, "pageIndex")}];
              goto LABEL_13;
            }

LABEL_14:
            v16 = 0;
          }

          if (v16)
          {
            [v9 setImageData:v16 immediate:1];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)flushThumbnails
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(THChapterBrowserController *)self thumbnailSubviews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        [v6 teardown];
        [v6 removeFromSuperview];
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (BOOL)followAnchor:(id)a3 pulse:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(THTOCViewController *)self delegate];
  LOBYTE(v4) = [v7 followAnchor:v6 pulse:v4];

  return v4;
}

- (BOOL)followLink:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = [(THTOCViewController *)self delegate];
  LOBYTE(self) = [v6 chapterBrowserController:self navigateToLinkInDVC:v5];

  return self;
}

- (NSArray)thumbnailSubviews
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(THScrollViewWithPassthrough *)self->mPagesScrollView subviews];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v3 = [(THChapterBrowserController *)self view];
  [v3 bounds];
  [(THChapterBrowserController *)self p_adjustViewsForSize:v4, v5];

  [(THChapterBrowserController *)self p_updateChapterWidths];
  [(THChapterBrowserController *)self p_configureThumbCaps];

  [(THChapterBrowserController *)self refreshStatusBarAppearance];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  self->_flags.transitioning = 1;
  self->mDeferBackgroundScrollViewScrolls = 1;
  v10.receiver = self;
  v10.super_class = THChapterBrowserController;
  [(THChapterBrowserController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_AC288;
  v9[3] = &unk_45CDB8;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_AC318;
  v8[3] = &unk_45CDB8;
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (void)p_adjustViewsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(THChapterBrowserController *)self cachedFrameSize];
  if (v7 != width || v6 != height)
  {
    [(THChapterBrowserController *)self setCachedFrameSize:width, height];
    [(THChapterBrowserController *)self setChapterIndex:self->mChapterIndex];
    v9 = [(THChapterBrowserController *)self introMediaControllerIsActive];
    v10 = [(THTOCViewController *)self dataSource];
    v11 = [v10 toc:self numberOfTilesInDivision:0];

    [(THChapterBrowserController *)self setChapterWidth:width];
    self->mDeferBackgroundScrollViewScrolls = 1;
    v12 = *&CGAffineTransformIdentity.c;
    v45[0] = *&CGAffineTransformIdentity.a;
    v45[1] = v12;
    v45[2] = *&CGAffineTransformIdentity.tx;
    [(THScrollView *)self->mBackgroundScrollView setTransform:v45];
    v13 = [(THChapterBrowserController *)self view];
    [v13 bounds];
    [(THScrollView *)self->mBackgroundScrollView setFrame:?];

    v14 = [(THChapterBrowserController *)self introMediaViewController];

    if (v14)
    {
      [(THChapterBrowserController *)self chapterWidth];
      [(THScrollView *)self->mBackgroundScrollView setContentInset:0.0, v15, 0.0, 0.0];
    }

    [(THChapterBrowserController *)self chapterWidth];
    [(THScrollView *)self->mBackgroundScrollView setContentSize:v16 * v11, height];
    if (v9)
    {
      [(THChapterBrowserController *)self chapterWidth];
      v18 = -v17;
    }

    else
    {
      mChapterIndex = self->mChapterIndex;
      [(THChapterBrowserController *)self chapterWidth];
      v18 = v20 * mChapterIndex;
    }

    [(THScrollView *)self->mBackgroundScrollView setContentOffset:v18, 0.0];
    v21 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];

    if (v21)
    {
      v22 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
      [v22 frame];
      v24 = v23;
      v26 = v25;

      [(THScrollView *)self->mBackgroundScrollView contentSize];
      v28 = v27;
      v29 = [(THChapterBrowserController *)self thumbnailTrackBackgroundView];
      [v29 setFrame:{0.0, v24, v28, v26}];
    }

    self->mDeferBackgroundScrollViewScrolls = 0;
    [(THChapterBrowserController *)self chapterWidth];
    [(UIView *)self->mBackgroundsView setFrame:0.0, 0.0, v30 * 3.0, height];
    [(THChapterBrowserController *)self p_updateChapterBackgroundsView];
    for (i = 0; i != 3; ++i)
    {
      v32 = self->mChapterViewControllers[i];
      if (v32)
      {
        [(THChapterBrowserController *)self frameForChapterViewController:v32];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = [(THChapterViewController *)v32 view];
        [v41 setFrame:{v34, v36, v38, v40}];
      }
    }

    [(THChapterBrowserController *)self chapterWidth];
    v43 = -v42;
    [(THChapterBrowserController *)self chapterWidth];
    [(UIView *)self->mIntroMediaContainerView setFrame:v43, 0.0, v44, height];
    [(THChapterBrowserController *)self _updateContentOffsets];
    [(THChapterBrowserController *)self p_updatePageScrubberFrame];
    [(THChapterBrowserController *)self p_updatePageControl];
    [(THChapterBrowserController *)self p_updateThumbLayout];
  }
}

- (BOOL)p_verticalSpaceLimited
{
  v2 = self;
  v3 = [(THTOCViewController *)self delegate];
  LOBYTE(v2) = [v3 isCompactHeightForChapterBrowserController:v2];

  return v2;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(THChapterBrowserController *)self showToolbarRecognizer];
  v6 = v5;
  if (v5 == v4)
  {
    v8 = [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl superview];

    if (v8)
    {
      [v4 locationInView:self->mChapterPageControl];
      v10 = v9;
      v12 = v11;
      [(THChapterBrowserScrubbablePageControl *)self->mChapterPageControl bounds];
      v14.x = v10;
      v14.y = v12;
      v7 = !CGRectContainsPoint(v15, v14);
      goto LABEL_6;
    }
  }

  else
  {
  }

  LOBYTE(v7) = 1;
LABEL_6:

  return v7;
}

- (BOOL)passthroughView:(id)a3 shouldAcceptHitAtPoint:(CGPoint)a4 onView:(id)a5 withEvent:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a5;
  v12 = a6;
  if (self->mBottomWrapperView == a3)
  {
    [(THScrollViewWithPassthrough *)self->mPagesScrollView convertPoint:x fromView:y];
    v14 = [(THScrollViewWithPassthrough *)self->mPagesScrollView hitTest:v12 withEvent:?];
    [(THScrollView *)self->mBackgroundScrollView convertPoint:self->mBottomWrapperView fromView:x, y];
    v15 = [(THScrollView *)self->mBackgroundScrollView hitTest:v12 withEvent:?];
    if (v15 && (v14 != v11 || self->mPagesScrollView == v11))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 1;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)didRotateFromFlowInPortraitLockedBook
{
  [(THChapterBrowserController *)self p_updateChapterBackgroundsView];

  [(THChapterBrowserController *)self p_updatePageControl];
}

- (id)foregroundTintColorForNavigationBar:(id)a3
{
  v3 = [(THChapterBrowserController *)self p_tintAndTitleColor];

  return v3;
}

- (id)backgroundColorForNavigationBar:(id)a3
{
  v3 = [UIColor colorWithRed:a3 green:0.121568627 blue:0.125490196 alpha:0.129411765, 1.0];

  return v3;
}

- (id)titleColorForNavigationBar:(id)a3
{
  v3 = [(THChapterBrowserController *)self p_tintAndTitleColor];

  return v3;
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  [(THChapterBrowserController *)self p_configureThumbsAndUpdateLayout:1, a4];
  [(THChapterBrowserController *)self p_updatePageScrubberControlForSizeClassChange];
  [(THChapterBrowserController *)self _configurePagesScrollView];
  [(THChapterBrowserController *)self setNeedsStatusBarAppearanceUpdate];

  [(THChapterBrowserController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
}

- (id)transitionContentView
{
  if ([(THChapterBrowserController *)self introMediaControllerIsActive])
  {
    v3 = [(THChapterBrowserController *)self introMediaViewController];
    [v3 view];
  }

  else
  {
    v3 = [(THChapterBrowserController *)self chapterViewController];
    [v3 transitionContentView];
  }
  v4 = ;

  return v4;
}

- (CGSize)cachedFrameSize
{
  width = self->_cachedFrameSize.width;
  height = self->_cachedFrameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)thumbSize
{
  width = self->_thumbSize.width;
  height = self->_thumbSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)firstThumbSize
{
  width = self->_firstThumbSize.width;
  height = self->_firstThumbSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)firstThumbOverlap
{
  width = self->_firstThumbOverlap.width;
  height = self->_firstThumbOverlap.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIView)originalCanvasScrollViewSuperview
{
  WeakRetained = objc_loadWeakRetained(&self->_originalCanvasScrollViewSuperview);

  return WeakRetained;
}

- (CGRect)originalCanvasScrollViewFrame
{
  x = self->_originalCanvasScrollViewFrame.origin.x;
  y = self->_originalCanvasScrollViewFrame.origin.y;
  width = self->_originalCanvasScrollViewFrame.size.width;
  height = self->_originalCanvasScrollViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 34) = 0;
  *(self + 42) = 0;
  *(self + 50) = 0;
  return self;
}

@end