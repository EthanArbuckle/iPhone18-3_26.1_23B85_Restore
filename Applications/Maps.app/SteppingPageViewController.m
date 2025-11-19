@interface SteppingPageViewController
- (BOOL)_isPointNearLeftEdge:(CGPoint)a3;
- (BOOL)_isPointNearRightEdge:(CGPoint)a3;
- (BOOL)_isRTL;
- (SteppingPageViewController)initWithSignGenerator:(id)a3;
- (SteppingPageViewControllerDelegate)delegate;
- (SteppingSignGenerator)signGenerator;
- (UICollectionView)collectionView;
- (double)_calculatedAuxViewHeightFrom:(int64_t)a3 to:(int64_t)a4 progress:(double)a5;
- (double)_calculatedSignToPageControlBaselineHeightFrom:(int64_t)a3 to:(int64_t)a4 progress:(double)a5;
- (double)_collectionViewContentOffsetIndex;
- (double)_heightForAuxViewAtIndex:(int64_t)a3;
- (double)_signToPageControlBottomMarginAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (double)heightForSignAtIndex:(int64_t)a3;
- (id)auxViewIfVisibleAtIndex:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4;
- (id)dequeueReusableSupplementaryViewOfKind:(id)a3 withReuseIdentifier:(id)a4 forIndexPath:(id)a5;
- (id)signCellIfVisibleAtIndex:(int64_t)a3;
- (int64_t)_adjustedSignIndex:(int64_t)a3 adjustForRTL:(BOOL)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSigns;
- (int64_t)resetCurrentSignAnimated:(BOOL)a3;
- (int64_t)signIndex;
- (void)_animateSizeClassChange;
- (void)_forcedScrollDidEnd;
- (void)_getCurrentSignIndexesAdjustedForRTL:(BOOL)a3 from:(int64_t *)a4 to:(int64_t *)a5 closest:(int64_t *)a6 progressBetweenSigns:(double *)a7;
- (void)_handleTap:(id)a3;
- (void)_initAuxView:(id)a3 forIndex:(int64_t)a4;
- (void)_initPageControl;
- (void)_initPageMarkerLabel;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_sizeClassDidChange;
- (void)_updateAuxViewsFrom:(int64_t)a3 to:(int64_t)a4 progress:(double)a5;
- (void)_updateCurrentPageAndNotifyDelegate;
- (void)_updatePageIndicatorVisibility;
- (void)_updatePageMarkerText;
- (void)_updateSignHeightAnimated:(BOOL)a3;
- (void)_updateSignHeightConstraintsFrom:(int64_t)a3 to:(int64_t)a4 progress:(double)a5;
- (void)dealloc;
- (void)refreshCurrentSign;
- (void)refreshSigns;
- (void)registerClass:(Class)a3 forCellWithReuseIdentifier:(id)a4;
- (void)registerClass:(Class)a3 forSupplementaryViewOfKind:(id)a4 withReuseIdentifier:(id)a5;
- (void)reloadWithSignGenerator:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setPageIndicatorHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setSignIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)sizeClassWillChangeWithTransitionCoordinator:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SteppingPageViewController

- (SteppingPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SteppingSignGenerator)signGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);

  return WeakRetained;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(SteppingPageViewController *)self sizeClassWillChangeWithTransitionCoordinator:v7];
  v8.receiver = self;
  v8.super_class = SteppingPageViewController;
  [(SteppingPageViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)registerClass:(Class)a3 forSupplementaryViewOfKind:(id)a4 withReuseIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SteppingPageViewController *)self collectionView];
  [v10 registerClass:a3 forSupplementaryViewOfKind:v9 withReuseIdentifier:v8];
}

- (void)registerClass:(Class)a3 forCellWithReuseIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(SteppingPageViewController *)self collectionView];
  [v7 registerClass:a3 forCellWithReuseIdentifier:v6];
}

- (id)dequeueReusableSupplementaryViewOfKind:(id)a3 withReuseIdentifier:(id)a4 forIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SteppingPageViewController *)self collectionView];
  v12 = [v11 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v9 forIndexPath:v8];

  return v12;
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SteppingPageViewController *)self collectionView];
  v9 = [v8 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v6];

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(SteppingPageViewController *)self signGenerator:a3];
  v5 = [v4 numberOfSigns];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SteppingPageViewController *)self signGenerator];
  v7 = [v5 row];

  v8 = [v6 signAtIndex:v7];

  return v8;
}

- (void)_getCurrentSignIndexesAdjustedForRTL:(BOOL)a3 from:(int64_t *)a4 to:(int64_t *)a5 closest:(int64_t *)a6 progressBetweenSigns:(double *)a7
{
  v11 = a3;
  [(SteppingPageViewController *)self _collectionViewContentOffsetIndex];
  v14 = v13;
  if (a6)
  {
    *a6 = [(SteppingPageViewController *)self _adjustedSignIndex:llround(v13) adjustForRTL:v11];
  }

  v15 = vcvtmd_s64_f64(v14);
  if (a4)
  {
    *a4 = [(SteppingPageViewController *)self _adjustedSignIndex:v15 adjustForRTL:v11];
  }

  v16 = vcvtpd_s64_f64(v14);
  if (a5)
  {
    *a5 = [(SteppingPageViewController *)self _adjustedSignIndex:v16 adjustForRTL:v11];
  }

  if (a7)
  {
    v17 = [(SteppingPageViewController *)self numberOfSigns];
    v18 = 1.0;
    if (v17 > v15 && v17 > v16 && v15 != v16)
    {
      v21 = [(SteppingPageViewController *)self collectionView];
      [v21 frame];
      v23 = v22 * v15;

      v24 = [(SteppingPageViewController *)self collectionView];
      [v24 frame];
      v26 = v25;

      v27 = -(v23 - v26 * v16);
      v28 = [(SteppingPageViewController *)self collectionView];
      [v28 contentOffset];
      v30 = v29 - v23;

      v18 = v30 / v27;
    }

    *a7 = v18;
  }
}

- (int64_t)_adjustedSignIndex:(int64_t)a3 adjustForRTL:(BOOL)a4
{
  v4 = a4;
  v7 = [(SteppingPageViewController *)self numberOfSigns];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  if ((a3 & ~(a3 >> 63)) >= v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = a3 & ~(a3 >> 63);
  }

  if (v4 && [(SteppingPageViewController *)self _isRTL])
  {
    return v8 + ~v9;
  }

  return v9;
}

- (double)_collectionViewContentOffsetIndex
{
  v3 = [(SteppingPageViewController *)self collectionView];
  [v3 contentOffset];
  v4 = 0.0;
  if (v5 < 0.0)
  {
    goto LABEL_4;
  }

  v6 = [(SteppingPageViewController *)self collectionView];
  [v6 frame];
  v8 = v7;

  if (v8 > 0.0)
  {
    v3 = [(SteppingPageViewController *)self collectionView];
    [v3 contentOffset];
    v10 = v9;
    v11 = [(SteppingPageViewController *)self collectionView];
    [v11 frame];
    v4 = v10 / v12;

LABEL_4:
  }

  return v4;
}

- (double)_calculatedAuxViewHeightFrom:(int64_t)a3 to:(int64_t)a4 progress:(double)a5
{
  [(SteppingPageViewController *)self _heightForAuxViewAtIndex:?];
  v10 = v9;
  if (a3 != a4)
  {
    [(SteppingPageViewController *)self _heightForAuxViewAtIndex:a4];
    return v10 + (v11 - v10) * a5;
  }

  return v10;
}

- (void)_updateAuxViewsFrom:(int64_t)a3 to:(int64_t)a4 progress:(double)a5
{
  fromAuxView = self->_fromAuxView;
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  v11 = [WeakRetained auxViewAtIndex:a3];
  v12 = v11;
  if (fromAuxView == v11)
  {
    toAuxView = self->_toAuxView;
    v13 = objc_loadWeakRetained(&self->_signGenerator);
    v14 = [v13 auxViewAtIndex:a4];

    if (toAuxView == v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(UIView *)self->_fromAuxView removeFromSuperview];
  [(UIView *)self->_toAuxView removeFromSuperview];
  v15 = objc_loadWeakRetained(&self->_signGenerator);
  v16 = [v15 auxViewAtIndex:a3];
  v17 = self->_fromAuxView;
  self->_fromAuxView = v16;

  [(SteppingPageViewController *)self _initAuxView:self->_fromAuxView forIndex:a3];
  v18 = objc_loadWeakRetained(&self->_signGenerator);
  v19 = [v18 auxViewAtIndex:a4];
  v20 = self->_toAuxView;
  self->_toAuxView = v19;

  v21 = self->_toAuxView;
  if (v21 != self->_fromAuxView)
  {
    [(SteppingPageViewController *)self _initAuxView:v21 forIndex:a4];
  }

LABEL_6:
  [(UIView *)self->_fromAuxView setAlpha:1.0 - a5];
  v22 = self->_toAuxView;

  [(UIView *)v22 setAlpha:a5];
}

- (void)_initAuxView:(id)a3 forIndex:(int64_t)a4
{
  if (a3)
  {
    v5 = a3;
    v10 = _NSDictionaryOfVariableBindings(@"auxView", v5, 0);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_auxViewContainer addSubview:v5];

    auxViewContainer = self->_auxViewContainer;
    v7 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[auxView]|" options:0 metrics:0 views:v10];
    [(UIView *)auxViewContainer addConstraints:v7];

    v8 = self->_auxViewContainer;
    v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[auxView]|" options:0 metrics:0 views:v10];
    [(UIView *)v8 addConstraints:v9];
  }
}

- (double)_signToPageControlBottomMarginAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  [WeakRetained distanceFromPageControlBaselineToBottomOfSignAtIndex:a3 fittingSize:{width, height}];
  v10 = v9;

  if (([(UILabel *)self->_pageMarkerLabel isHidden]& 1) == 0)
  {
    v11 = [(UILabel *)self->_pageMarkerLabel font];
    [v11 _scaledValueForValue:v10];
    v10 = v12;
  }

  return v10;
}

- (double)_calculatedSignToPageControlBaselineHeightFrom:(int64_t)a3 to:(int64_t)a4 progress:(double)a5
{
  v9 = [(SteppingPageViewController *)self view];
  [v9 frame];
  v11 = v10;

  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  [WeakRetained sizeForSignAtIndex:a3 fittingSize:{v11, 2000.0}];
  v14 = v13;

  v15 = v14;
  if (a4 != a3)
  {
    v16 = objc_loadWeakRetained(&self->_signGenerator);
    [v16 sizeForSignAtIndex:a4 fittingSize:{v11, 2000.0}];
    v15 = v17;
  }

  v18 = fmax(v14, v15);
  [(NSLayoutConstraint *)self->_collectionViewHeightConstraint constant];
  if (v18 > v19)
  {
    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setConstant:v18];
  }

  v20 = [(SteppingPageViewController *)self isPageIndicatorHidden];
  v21 = 0.0;
  v22 = 0.0;
  if ((v20 & 1) == 0)
  {
    [(SteppingPageViewController *)self _signToPageControlBottomMarginAtIndex:a3 fittingSize:v11, 2000.0];
    v21 = v23;
    [(SteppingPageViewController *)self _signToPageControlBottomMarginAtIndex:a4 fittingSize:v11, 2000.0];
  }

  return v21 + v14 + (v22 - v21 + v15 - v14) * a5;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  self->_lastUserGesture = 2;
  v4 = [(SteppingPageViewController *)self delegate];
  [v4 steppingPageViewControllerUserDidStartScrolling:self];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(SteppingPageViewController *)self collectionView];
  v5 = [v4 isScrollAnimating];

  if ((v5 & 1) == 0)
  {
    [(SteppingPageViewController *)self _updateCurrentPageAndNotifyDelegate];
  }

  [(SteppingPageViewController *)self _updateSignHeight];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  [(SteppingPageViewController *)self _updateCurrentPageAndNotifyDelegate];
  self->_lastUserGesture = 0;

  [(SteppingPageViewController *)self _updateSignHeight];
}

- (void)_forcedScrollDidEnd
{
  self->_leftBuffer = 0;
  self->_rightBuffer = 0;
  v2 = [(SteppingPageViewController *)self collectionView];
  [v2 setScrollEnabled:1];
}

- (void)_updateCurrentPageAndNotifyDelegate
{
  v3 = [(UIPageControl *)self->_pageControl currentPage];
  v4 = [(SteppingPageViewController *)self signIndex];
  self->_currentSign = v4;
  [(UIPageControl *)self->_pageControl setCurrentPage:v4];
  [(SteppingPageViewController *)self _updatePageMarkerText];
  v5 = [(SteppingPageViewController *)self delegate];
  [v5 steppingPageViewController:self didChangeCurrentSign:v4 previousSign:v3 fromUserGesture:self->_lastUserGesture];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"MapsTestingSteppingSignDidChange" object:self];
}

- (void)reloadWithSignGenerator:(id)a3
{
  objc_storeWeak(&self->_signGenerator, a3);
  [(SteppingPageViewController *)self refreshSigns];

  [(SteppingPageViewController *)self setSignIndex:0 animated:0];
}

- (void)setSignIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SteppingPageViewController *)self _adjustedSignIndex:a3 adjustForRTL:0];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    self->_currentSign = v6;
    if (v4)
    {
      v8 = [(SteppingPageViewController *)self collectionView];
      [v8 setScrollEnabled:0];

      [(NSTimer *)self->_scrollTimer invalidate];
      v9 = [NSTimer scheduledTimerWithTimeInterval:self target:"_forcedScrollDidEnd" selector:0 userInfo:0 repeats:0.300000012];
      scrollTimer = self->_scrollTimer;
      self->_scrollTimer = v9;

      v11 = [(SteppingPageViewController *)self view];
      [v11 layoutIfNeeded];

      v12 = [(SteppingPageViewController *)self collectionView];
      v13 = [NSIndexPath indexPathForItem:v7 inSection:0];
      [v12 scrollToItemAtIndexPath:v13 atScrollPosition:16 animated:v4];
    }

    else
    {
      v14 = [(SteppingPageViewController *)self view];
      [v14 layoutIfNeeded];

      v15 = [(SteppingPageViewController *)self collectionView];
      v16 = [NSIndexPath indexPathForItem:v7 inSection:0];
      [v15 scrollToItemAtIndexPath:v16 atScrollPosition:16 animated:0];

      v17 = [(UIPageControl *)self->_pageControl currentPage];
      [(UIPageControl *)self->_pageControl setCurrentPage:v7];
      v12 = [(SteppingPageViewController *)self delegate];
      [v12 steppingPageViewController:self didChangeCurrentSign:v7 previousSign:v17 fromUserGesture:0];
    }

    [(SteppingPageViewController *)self _updatePageMarkerText];
  }
}

- (int64_t)signIndex
{
  v3 = 0;
  [(SteppingPageViewController *)self _getCurrentSignIndexesAdjustedForRTL:1 from:&v3 to:0 closest:0 progressBetweenSigns:0];
  return v3;
}

- (id)auxViewIfVisibleAtIndex:(int64_t)a3
{
  p_fromAuxView = &self->_fromAuxView;
  fromAuxView = self->_fromAuxView;
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  v8 = [WeakRetained auxViewAtIndex:a3];

  if (fromAuxView == v8 || (p_fromAuxView = &self->_toAuxView, toAuxView = self->_toAuxView, v10 = objc_loadWeakRetained(&self->_signGenerator), [v10 auxViewAtIndex:a3], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, toAuxView == v11))
  {
    v12 = *p_fromAuxView;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)signCellIfVisibleAtIndex:(int64_t)a3
{
  v4 = [NSIndexPath indexPathForItem:a3 inSection:0];
  v5 = [(SteppingPageViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  return v6;
}

- (int64_t)numberOfSigns
{
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  v3 = [WeakRetained numberOfSigns];

  return v3;
}

- (double)_heightForAuxViewAtIndex:(int64_t)a3
{
  auxViewHeightCache = self->_auxViewHeightCache;
  v6 = [NSNumber numberWithInteger:?];
  v7 = [(NSMutableDictionary *)auxViewHeightCache objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
    v11 = [WeakRetained auxViewAtIndex:a3];

    v9 = 0.0;
    if (v11 && ([v11 isHidden] & 1) == 0)
    {
      v12 = [(SteppingPageViewController *)self view];
      [v12 frame];
      v14 = v13;

      [v11 sizeThatFits:{v14, 2000.0}];
      v9 = v15;
    }

    v16 = [NSNumber numberWithDouble:v9];
    v17 = self->_auxViewHeightCache;
    v18 = [NSNumber numberWithInteger:a3];
    [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];
  }

  return v9;
}

- (double)heightForSignAtIndex:(int64_t)a3
{
  v5 = [(SteppingPageViewController *)self view];
  [v5 frame];
  v7 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  [WeakRetained sizeForSignAtIndex:a3 fittingSize:{v7, 2000.0}];
  v10 = v9;

  return v10;
}

- (void)_sizeClassDidChange
{
  [(UIView *)self->_resizeSnapshot removeFromSuperview];
  resizeSnapshot = self->_resizeSnapshot;
  self->_resizeSnapshot = 0;
}

- (void)_animateSizeClassChange
{
  if (+[UIView _maps_shouldAdoptImplicitAnimationParameters])
  {
    [(UIView *)self->_resizeSnapshot setAlpha:0.0];
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v3 = [(UIPageControl *)self->_pageControl currentPage];
  [(SteppingPageViewController *)self refreshSigns];
  if (+[UIView _maps_shouldAdoptImplicitAnimationParameters])
  {
    v4 = [(SteppingPageViewController *)self view];
    v5 = [v4 layer];
    v6 = +[CAAnimation animation];
    [v5 addAnimation:v6 forKey:@"transition"];
  }

  [(SteppingPageViewController *)self setSignIndex:v3 animated:0];

  +[CATransaction commit];
}

- (void)sizeClassWillChangeWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  resizeSnapshot = self->_resizeSnapshot;
  if (resizeSnapshot)
  {
    [(UIView *)resizeSnapshot removeFromSuperview];
  }

  v6 = [(SteppingPageViewController *)self view];
  v7 = [v6 snapshotViewAfterScreenUpdates:0];
  v8 = self->_resizeSnapshot;
  self->_resizeSnapshot = v7;

  [(UIView *)self->_resizeSnapshot setAutoresizingMask:18];
  v9 = [(SteppingPageViewController *)self view];
  [v9 addSubview:self->_resizeSnapshot];

  v10[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100699468;
  v11[3] = &unk_101661710;
  v11[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100699470;
  v10[3] = &unk_101661710;
  [v4 animateAlongsideTransition:v11 completion:v10];
}

- (int64_t)resetCurrentSignAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPageControl *)self->_pageControl currentPage];
  [(SteppingPageViewController *)self refreshSigns];
  [(SteppingPageViewController *)self setSignIndex:v5 animated:v3];
  return v5;
}

- (void)setPageIndicatorHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_pageIndicatorHidden != a3)
  {
    v4 = a4;
    self->_pageIndicatorHidden = a3;
    if ([(SteppingPageViewController *)self isViewLoaded])
    {
      widthAsOfLastSignRefresh = self->_widthAsOfLastSignRefresh;
      v7 = [(SteppingPageViewController *)self view];
      [v7 bounds];
      v9 = v8;

      if (widthAsOfLastSignRefresh == v9)
      {

        [(SteppingPageViewController *)self _updateSignHeightAnimated:v4];
      }

      else
      {

        [(SteppingPageViewController *)self refreshSigns];
      }
    }
  }
}

- (void)refreshSigns
{
  if ([(SteppingPageViewController *)self numberOfSigns])
  {
    WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
    [WeakRetained invalidateSizeCaches];

    [(NSMutableDictionary *)self->_auxViewHeightCache removeAllObjects];
    [(UIPageControl *)self->_pageControl setNumberOfPages:[(SteppingPageViewController *)self numberOfSigns]];
    v4 = [UIFont defaultFontForTextStyle:UIFontTextStyleCaption2];
    [(UILabel *)self->_pageMarkerLabel setFont:v4];

    [(SteppingPageViewController *)self _updatePageMarkerText];
    [(SteppingPageViewController *)self heightForSignAtIndex:[(UIPageControl *)self->_pageControl currentPage]];
    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setConstant:?];
    [(SteppingPageViewController *)self _updateSignHeight];
    v5 = [(SteppingPageViewController *)self view];
    [v5 layoutIfNeeded];

    [(UICollectionView *)self->_collectionView reloadData];
    v7 = [(SteppingPageViewController *)self collectionView];
    v6 = [NSIndexPath indexPathForItem:self->_currentSign inSection:0];
    [v7 scrollToItemAtIndexPath:v6 atScrollPosition:16 animated:0];
  }
}

- (void)refreshCurrentSign
{
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_signGenerator);
    [v5 reloadSignAtIndex:{-[SteppingPageViewController signIndex](self, "signIndex")}];

    [(SteppingPageViewController *)self refreshSigns];
  }
}

- (void)_updateSignHeightConstraintsFrom:(int64_t)a3 to:(int64_t)a4 progress:(double)a5
{
  [SteppingPageViewController _calculatedAuxViewHeightFrom:"_calculatedAuxViewHeightFrom:to:progress:" to:? progress:?];
  [(NSLayoutConstraint *)self->_auxViewHeightConstraint setConstant:?];
  [(SteppingPageViewController *)self _calculatedSignToPageControlBaselineHeightFrom:a3 to:a4 progress:a5];
  v10 = v9;
  v11 = [(SteppingPageViewController *)self isPageIndicatorHidden];
  v12 = 8.0;
  v13 = 0.0;
  if (v11)
  {
    v12 = 0.0;
  }

  [(NSLayoutConstraint *)self->_pageControlHeightConstraint setConstant:v12];
  if (![(SteppingPageViewController *)self isPageIndicatorHidden])
  {
    WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
    [WeakRetained distanceFromPageControlBaselineToTopOfAuxView];
    v13 = v15;
  }

  [(NSLayoutConstraint *)self->_topAuxViewToPageControlBottomConstraint setConstant:v13];
  [(NSLayoutConstraint *)self->_topAuxViewToPageMarkerBaselineConstraint setConstant:v13];
  [(NSLayoutConstraint *)self->_auxViewHeightConstraint constant];
  v17 = v13 + v10 + v16;
  signHeightConstraint = self->_signHeightConstraint;

  [(NSLayoutConstraint *)signHeightConstraint setConstant:v17];
}

- (void)_updateSignHeightAnimated:(BOOL)a3
{
  v3 = a3;
  v14 = 0;
  v15 = 0;
  v13 = 0.0;
  [(SteppingPageViewController *)self _getCurrentSignIndexesAdjustedForRTL:1 from:&v15 to:&v14 closest:0 progressBetweenSigns:&v13];
  [(SteppingPageViewController *)self _updateAuxViewsFrom:v15 to:v14 progress:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100699AB4;
  v12[3] = &unk_1016328E0;
  v12[4] = self;
  v12[5] = v15;
  v12[6] = v14;
  *&v12[7] = v13;
  v5 = objc_retainBlock(v12);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100699AF8;
  v11[3] = &unk_101661B18;
  v11[4] = self;
  v6 = objc_retainBlock(v11);
  v7 = v6;
  if (v3)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100699B4C;
    v9[3] = &unk_101655D58;
    v9[4] = self;
    v10 = v6;
    [UIView animateWithDuration:v5 animations:v9 completion:0.5];
  }

  else
  {
    (v5[2])(v5);
    v8 = [(SteppingPageViewController *)self view];
    [v8 setNeedsUpdateConstraints];

    v7[2](v7);
  }
}

- (void)_handleTap:(id)a3
{
  v12 = a3;
  if ([v12 state] == 3 && !self->_lastUserGesture)
  {
    if (!self->_leftBuffer && !self->_rightBuffer)
    {
      [(SteppingPageViewController *)self _getCurrentSignIndexesAdjustedForRTL:1 from:0 to:0 closest:&self->_startSign progressBetweenSigns:0];
    }

    v4 = [(SteppingPageViewController *)self view];
    [v12 locationInView:v4];
    v6 = v5;
    v8 = v7;

    if ([(SteppingPageViewController *)self _isRTL])
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if ([(SteppingPageViewController *)self _isPointNearLeftEdge:v6, v8])
    {
      ++self->_leftBuffer;
      self->_lastUserGesture = 1;
      v10 = self->_startSign - self->_leftBuffer * v9;
LABEL_13:
      [(SteppingPageViewController *)self setSignIndex:v10 animated:1];
      goto LABEL_15;
    }

    if ([(SteppingPageViewController *)self _isPointNearRightEdge:v6, v8])
    {
      ++self->_rightBuffer;
      self->_lastUserGesture = 1;
      v10 = self->_startSign + self->_rightBuffer * v9;
      goto LABEL_13;
    }

    v11 = [(SteppingPageViewController *)self delegate];
    [v11 steppingPageViewController:self didTapOnSignAtIndex:{-[SteppingPageViewController signIndex](self, "signIndex")}];
  }

LABEL_15:
}

- (BOOL)_isPointNearRightEdge:(CGPoint)a3
{
  x = a3.x;
  v5 = [(SteppingPageViewController *)self view:a3.x];
  [v5 frame];
  v7 = v6;

  if (x < v7 + -90.0)
  {
    return 0;
  }

  v9 = [(SteppingPageViewController *)self _isRTL];
  v10 = [(UIPageControl *)self->_pageControl currentPage];
  if (v9)
  {
    return v10 > 0;
  }

  else
  {
    return v10 < [(UIPageControl *)self->_pageControl numberOfPages]- 1;
  }
}

- (BOOL)_isPointNearLeftEdge:(CGPoint)a3
{
  if (a3.x > 90.0)
  {
    return 0;
  }

  v5 = [(SteppingPageViewController *)self _isRTL];
  v6 = [(UIPageControl *)self->_pageControl currentPage];
  if (v5)
  {
    return v6 < [(UIPageControl *)self->_pageControl numberOfPages]- 1;
  }

  else
  {
    return v6 > 0;
  }
}

- (BOOL)_isRTL
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = SteppingPageViewController;
  [(SteppingPageViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(SteppingPageViewController *)self view];
  [v3 bounds];
  if (v4 == self->_widthAsOfLastSignRefresh)
  {
  }

  else
  {
    v5 = [(SteppingPageViewController *)self numberOfSigns];

    if (v5 >= 1)
    {
      v6 = [(SteppingPageViewController *)self view];
      [v6 bounds];
      self->_widthAsOfLastSignRefresh = v7;

      [(SteppingPageViewController *)self refreshSigns];
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SteppingPageViewController;
  [(SteppingPageViewController *)&v4 dealloc];
}

- (void)_setupConstraints
{
  v3 = [(SteppingPageViewController *)self view];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];
  signHeightConstraint = self->_signHeightConstraint;
  self->_signHeightConstraint = v5;

  LODWORD(v7) = 1148829696;
  [(NSLayoutConstraint *)self->_signHeightConstraint setPriority:v7];
  v8 = [(UIView *)self->_auxViewContainer heightAnchor];
  v9 = [v8 constraintEqualToConstant:0.0];
  auxViewHeightConstraint = self->_auxViewHeightConstraint;
  self->_auxViewHeightConstraint = v9;

  v11 = [(UICollectionView *)self->_collectionView heightAnchor];
  v12 = [v11 constraintEqualToConstant:0.0];
  collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  self->_collectionViewHeightConstraint = v12;

  v14 = [(UIView *)self->_auxViewContainer topAnchor];
  v15 = [(UIPageControl *)self->_pageControl bottomAnchor];
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  [WeakRetained distanceFromPageControlBaselineToTopOfAuxView];
  v17 = [v14 constraintEqualToAnchor:v15 constant:?];
  topAuxViewToPageControlBottomConstraint = self->_topAuxViewToPageControlBottomConstraint;
  self->_topAuxViewToPageControlBottomConstraint = v17;

  v19 = [(UIView *)self->_auxViewContainer topAnchor];
  v20 = [(UILabel *)self->_pageMarkerLabel lastBaselineAnchor];
  v21 = objc_loadWeakRetained(&self->_signGenerator);
  [v21 distanceFromPageControlBaselineToTopOfAuxView];
  v22 = [v19 constraintEqualToAnchor:v20 constant:?];
  topAuxViewToPageMarkerBaselineConstraint = self->_topAuxViewToPageMarkerBaselineConstraint;
  self->_topAuxViewToPageMarkerBaselineConstraint = v22;

  v24 = [(UIPageControl *)self->_pageControl heightAnchor];
  v25 = [v24 constraintEqualToConstant:8.0];
  pageControlHeightConstraint = self->_pageControlHeightConstraint;
  self->_pageControlHeightConstraint = v25;

  v69 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v70 = [(SteppingPageViewController *)self view];
  v68 = [v70 leadingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v71[0] = v67;
  v65 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v66 = [(SteppingPageViewController *)self view];
  v64 = [v66 trailingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v71[1] = v63;
  v61 = [(UIView *)self->_auxViewContainer leadingAnchor];
  v62 = [(SteppingPageViewController *)self view];
  v60 = [v62 leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v71[2] = v59;
  v57 = [(UIView *)self->_auxViewContainer trailingAnchor];
  v58 = [(SteppingPageViewController *)self view];
  v56 = [v58 trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v71[3] = v55;
  v53 = [(UIPageControl *)self->_pageControl leadingAnchor];
  v54 = [(SteppingPageViewController *)self view];
  v52 = [v54 leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:16.0];
  v71[4] = v51;
  v49 = [(UIPageControl *)self->_pageControl trailingAnchor];
  v50 = [(SteppingPageViewController *)self view];
  v48 = [v50 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48 constant:-16.0];
  v71[5] = v47;
  v45 = [(UILabel *)self->_pageMarkerLabel leadingAnchor];
  v46 = [(SteppingPageViewController *)self view];
  v44 = [v46 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:16.0];
  v71[6] = v43;
  v41 = [(UILabel *)self->_pageMarkerLabel trailingAnchor];
  v42 = [(SteppingPageViewController *)self view];
  v40 = [v42 trailingAnchor];
  v27 = [v41 constraintEqualToAnchor:v40 constant:-16.0];
  v71[7] = v27;
  v28 = [(UICollectionView *)self->_collectionView topAnchor];
  v29 = [(SteppingPageViewController *)self view];
  v30 = [v29 topAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v32 = self->_pageControlHeightConstraint;
  v71[8] = v31;
  v71[9] = v32;
  v33 = self->_topAuxViewToPageMarkerBaselineConstraint;
  v71[10] = self->_topAuxViewToPageControlBottomConstraint;
  v71[11] = v33;
  v34 = [(UIView *)self->_auxViewContainer bottomAnchor];
  v35 = [(SteppingPageViewController *)self view];
  v36 = [v35 bottomAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  v38 = self->_auxViewHeightConstraint;
  v71[12] = v37;
  v71[13] = v38;
  v71[14] = self->_collectionViewHeightConstraint;
  v39 = [NSArray arrayWithObjects:v71 count:15];
  [NSLayoutConstraint activateConstraints:v39];
}

- (void)_initPageMarkerLabel
{
  v3 = objc_alloc_init(UILabel);
  pageMarkerLabel = self->_pageMarkerLabel;
  self->_pageMarkerLabel = v3;

  [(UILabel *)self->_pageMarkerLabel setTextAlignment:1];
  v5 = [UIFont defaultFontForTextStyle:UIFontTextStyleCaption2];
  [(UILabel *)self->_pageMarkerLabel setFont:v5];

  v6 = +[UIColor whiteColor];
  [(UILabel *)self->_pageMarkerLabel setTextColor:v6];

  [(UILabel *)self->_pageMarkerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = self->_pageMarkerLabel;

  [(UILabel *)v7 setHidden:1];
}

- (void)_initPageControl
{
  v7 = +[UIColor whiteColor];
  v3 = [[UIPageControl alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  pageControl = self->_pageControl;
  self->_pageControl = v3;

  [(UIPageControl *)self->_pageControl setUserInteractionEnabled:0];
  v5 = [v7 colorWithAlphaComponent:0.300000012];
  [(UIPageControl *)self->_pageControl setPageIndicatorTintColor:v5];

  v6 = [v7 colorWithAlphaComponent:0.899999976];
  [(UIPageControl *)self->_pageControl setCurrentPageIndicatorTintColor:v6];

  [(UIPageControl *)self->_pageControl setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (UICollectionView)collectionView
{
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v4 = objc_alloc_init(StepPagingCollectionViewFlowLayout);
    [(StepPagingCollectionViewFlowLayout *)v4 setScrollDirection:1];
    [(StepPagingCollectionViewFlowLayout *)v4 setMinimumLineSpacing:0.0];
    [(StepPagingCollectionViewFlowLayout *)v4 setMinimumInteritemSpacing:0.0];
    [(StepPagingCollectionViewFlowLayout *)v4 setSectionInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v5 = [[UICollectionView alloc] initWithFrame:v4 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v6 = self->_collectionView;
    self->_collectionView = v5;

    [(UICollectionView *)self->_collectionView setDataSource:self];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setOpaque:0];
    [(UICollectionView *)self->_collectionView setPagingEnabled:1];
    [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    v7 = +[UIColor clearColor];
    [(UICollectionView *)self->_collectionView setBackgroundColor:v7];

    [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
    collectionView = self->_collectionView;
  }

  return collectionView;
}

- (void)_setupViews
{
  v3 = [(SteppingPageViewController *)self view];
  [v3 setClipsToBounds:1];

  v4 = [(SteppingPageViewController *)self theme];
  v5 = [v4 navSignPrimaryColor];
  v6 = [(SteppingPageViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(SteppingPageViewController *)self view];
  v8 = [(SteppingPageViewController *)self collectionView];
  [v7 addSubview:v8];

  v9 = [(SteppingPageViewController *)self view];
  v10 = [(SteppingPageViewController *)self collectionView];
  v11 = [v10 panGestureRecognizer];
  [v9 addGestureRecognizer:v11];

  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  auxViewContainer = self->_auxViewContainer;
  self->_auxViewContainer = v12;

  [(UIView *)self->_auxViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_auxViewContainer setClipsToBounds:1];
  v14 = [(SteppingPageViewController *)self view];
  [v14 addSubview:self->_auxViewContainer];

  [(SteppingPageViewController *)self _initPageControl];
  v15 = [(SteppingPageViewController *)self view];
  [v15 addSubview:self->_pageControl];

  [(SteppingPageViewController *)self _initPageMarkerLabel];
  v16 = [(SteppingPageViewController *)self view];
  [v16 addSubview:self->_pageMarkerLabel];

  v17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTap:"];
  singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
  self->_singleTapGestureRecognizer = v17;

  v19 = [(SteppingPageViewController *)self view];
  [v19 addGestureRecognizer:self->_singleTapGestureRecognizer];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SteppingPageViewController;
  [(SteppingPageViewController *)&v5 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"MapsTestingMapsRegionUpdatedWithGuidanceStep" object:self];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SteppingPageViewController;
  [(SteppingPageViewController *)&v6 viewDidLoad];
  [(SteppingPageViewController *)self _setupViews];
  [(SteppingPageViewController *)self _setupConstraints];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = MNLocaleDidChangeNotification();
  [v4 addObserver:self selector:"_localeDidChange" name:v5 object:0];
}

- (SteppingPageViewController)initWithSignGenerator:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SteppingPageViewController;
  v5 = [(SteppingPageViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_signGenerator, v4);
    v7 = objc_alloc_init(NSMutableDictionary);
    auxViewHeightCache = v6->_auxViewHeightCache;
    v6->_auxViewHeightCache = v7;
  }

  return v6;
}

- (void)_updatePageIndicatorVisibility
{
  v3 = [(SteppingPageViewController *)self isPageIndicatorHidden];
  pageControl = self->_pageControl;
  if (v3)
  {
    [(UIPageControl *)pageControl setHidden:1];
  }

  else
  {
    [(UIPageControl *)pageControl intrinsicContentSize];
    v6 = v5;
    v7 = [(SteppingPageViewController *)self view];
    [v7 frame];
    [(UIPageControl *)self->_pageControl setHidden:v6 > v8 + -32.0];
  }

  if ([(SteppingPageViewController *)self isPageIndicatorHidden])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(UIPageControl *)self->_pageControl isHidden]^ 1;
  }

  pageMarkerLabel = self->_pageMarkerLabel;

  [(UILabel *)pageMarkerLabel setHidden:v9];
}

- (void)_updatePageMarkerText
{
  v3 = +[NSBundle mainBundle];
  v9 = [v3 localizedStringForKey:@"%@ of %@" value:@"localized string not found" table:0];

  v4 = [NSNumber numberWithInteger:[(UIPageControl *)self->_pageControl currentPage]+ 1];
  v5 = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:1];

  v6 = [NSNumber numberWithInteger:[(UIPageControl *)self->_pageControl numberOfPages]];
  v7 = [NSNumberFormatter localizedStringFromNumber:v6 numberStyle:1];

  v8 = [NSString stringWithFormat:v9, v5, v7];
  [(UILabel *)self->_pageMarkerLabel setText:v8];
}

@end