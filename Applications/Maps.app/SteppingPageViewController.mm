@interface SteppingPageViewController
- (BOOL)_isPointNearLeftEdge:(CGPoint)edge;
- (BOOL)_isPointNearRightEdge:(CGPoint)edge;
- (BOOL)_isRTL;
- (SteppingPageViewController)initWithSignGenerator:(id)generator;
- (SteppingPageViewControllerDelegate)delegate;
- (SteppingSignGenerator)signGenerator;
- (UICollectionView)collectionView;
- (double)_calculatedAuxViewHeightFrom:(int64_t)from to:(int64_t)to progress:(double)progress;
- (double)_calculatedSignToPageControlBaselineHeightFrom:(int64_t)from to:(int64_t)to progress:(double)progress;
- (double)_collectionViewContentOffsetIndex;
- (double)_heightForAuxViewAtIndex:(int64_t)index;
- (double)_signToPageControlBottomMarginAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (double)heightForSignAtIndex:(int64_t)index;
- (id)auxViewIfVisibleAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (id)signCellIfVisibleAtIndex:(int64_t)index;
- (int64_t)_adjustedSignIndex:(int64_t)index adjustForRTL:(BOOL)l;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSigns;
- (int64_t)resetCurrentSignAnimated:(BOOL)animated;
- (int64_t)signIndex;
- (void)_animateSizeClassChange;
- (void)_forcedScrollDidEnd;
- (void)_getCurrentSignIndexesAdjustedForRTL:(BOOL)l from:(int64_t *)from to:(int64_t *)to closest:(int64_t *)closest progressBetweenSigns:(double *)signs;
- (void)_handleTap:(id)tap;
- (void)_initAuxView:(id)view forIndex:(int64_t)index;
- (void)_initPageControl;
- (void)_initPageMarkerLabel;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_sizeClassDidChange;
- (void)_updateAuxViewsFrom:(int64_t)from to:(int64_t)to progress:(double)progress;
- (void)_updateCurrentPageAndNotifyDelegate;
- (void)_updatePageIndicatorVisibility;
- (void)_updatePageMarkerText;
- (void)_updateSignHeightAnimated:(BOOL)animated;
- (void)_updateSignHeightConstraintsFrom:(int64_t)from to:(int64_t)to progress:(double)progress;
- (void)dealloc;
- (void)refreshCurrentSign;
- (void)refreshSigns;
- (void)registerClass:(Class)class forCellWithReuseIdentifier:(id)identifier;
- (void)registerClass:(Class)class forSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier;
- (void)reloadWithSignGenerator:(id)generator;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setPageIndicatorHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setSignIndex:(int64_t)index animated:(BOOL)animated;
- (void)sizeClassWillChangeWithTransitionCoordinator:(id)coordinator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(SteppingPageViewController *)self sizeClassWillChangeWithTransitionCoordinator:coordinatorCopy];
  v8.receiver = self;
  v8.super_class = SteppingPageViewController;
  [(SteppingPageViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)registerClass:(Class)class forSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  kindCopy = kind;
  collectionView = [(SteppingPageViewController *)self collectionView];
  [collectionView registerClass:class forSupplementaryViewOfKind:kindCopy withReuseIdentifier:identifierCopy];
}

- (void)registerClass:(Class)class forCellWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collectionView = [(SteppingPageViewController *)self collectionView];
  [collectionView registerClass:class forCellWithReuseIdentifier:identifierCopy];
}

- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  kindCopy = kind;
  collectionView = [(SteppingPageViewController *)self collectionView];
  v12 = [collectionView dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:identifierCopy forIndexPath:pathCopy];

  return v12;
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  collectionView = [(SteppingPageViewController *)self collectionView];
  v9 = [collectionView dequeueReusableCellWithReuseIdentifier:identifierCopy forIndexPath:pathCopy];

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(SteppingPageViewController *)self signGenerator:view];
  numberOfSigns = [v4 numberOfSigns];

  return numberOfSigns;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  signGenerator = [(SteppingPageViewController *)self signGenerator];
  v7 = [pathCopy row];

  v8 = [signGenerator signAtIndex:v7];

  return v8;
}

- (void)_getCurrentSignIndexesAdjustedForRTL:(BOOL)l from:(int64_t *)from to:(int64_t *)to closest:(int64_t *)closest progressBetweenSigns:(double *)signs
{
  lCopy = l;
  [(SteppingPageViewController *)self _collectionViewContentOffsetIndex];
  v14 = v13;
  if (closest)
  {
    *closest = [(SteppingPageViewController *)self _adjustedSignIndex:llround(v13) adjustForRTL:lCopy];
  }

  v15 = vcvtmd_s64_f64(v14);
  if (from)
  {
    *from = [(SteppingPageViewController *)self _adjustedSignIndex:v15 adjustForRTL:lCopy];
  }

  v16 = vcvtpd_s64_f64(v14);
  if (to)
  {
    *to = [(SteppingPageViewController *)self _adjustedSignIndex:v16 adjustForRTL:lCopy];
  }

  if (signs)
  {
    numberOfSigns = [(SteppingPageViewController *)self numberOfSigns];
    v18 = 1.0;
    if (numberOfSigns > v15 && numberOfSigns > v16 && v15 != v16)
    {
      collectionView = [(SteppingPageViewController *)self collectionView];
      [collectionView frame];
      v23 = v22 * v15;

      collectionView2 = [(SteppingPageViewController *)self collectionView];
      [collectionView2 frame];
      v26 = v25;

      v27 = -(v23 - v26 * v16);
      collectionView3 = [(SteppingPageViewController *)self collectionView];
      [collectionView3 contentOffset];
      v30 = v29 - v23;

      v18 = v30 / v27;
    }

    *signs = v18;
  }
}

- (int64_t)_adjustedSignIndex:(int64_t)index adjustForRTL:(BOOL)l
{
  lCopy = l;
  numberOfSigns = [(SteppingPageViewController *)self numberOfSigns];
  if (!numberOfSigns)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = numberOfSigns;
  if ((index & ~(index >> 63)) >= numberOfSigns)
  {
    v9 = numberOfSigns - 1;
  }

  else
  {
    v9 = index & ~(index >> 63);
  }

  if (lCopy && [(SteppingPageViewController *)self _isRTL])
  {
    return v8 + ~v9;
  }

  return v9;
}

- (double)_collectionViewContentOffsetIndex
{
  collectionView = [(SteppingPageViewController *)self collectionView];
  [collectionView contentOffset];
  v4 = 0.0;
  if (v5 < 0.0)
  {
    goto LABEL_4;
  }

  collectionView2 = [(SteppingPageViewController *)self collectionView];
  [collectionView2 frame];
  v8 = v7;

  if (v8 > 0.0)
  {
    collectionView = [(SteppingPageViewController *)self collectionView];
    [collectionView contentOffset];
    v10 = v9;
    collectionView3 = [(SteppingPageViewController *)self collectionView];
    [collectionView3 frame];
    v4 = v10 / v12;

LABEL_4:
  }

  return v4;
}

- (double)_calculatedAuxViewHeightFrom:(int64_t)from to:(int64_t)to progress:(double)progress
{
  [(SteppingPageViewController *)self _heightForAuxViewAtIndex:?];
  v10 = v9;
  if (from != to)
  {
    [(SteppingPageViewController *)self _heightForAuxViewAtIndex:to];
    return v10 + (v11 - v10) * progress;
  }

  return v10;
}

- (void)_updateAuxViewsFrom:(int64_t)from to:(int64_t)to progress:(double)progress
{
  fromAuxView = self->_fromAuxView;
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  v11 = [WeakRetained auxViewAtIndex:from];
  v12 = v11;
  if (fromAuxView == v11)
  {
    toAuxView = self->_toAuxView;
    v13 = objc_loadWeakRetained(&self->_signGenerator);
    v14 = [v13 auxViewAtIndex:to];

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
  v16 = [v15 auxViewAtIndex:from];
  v17 = self->_fromAuxView;
  self->_fromAuxView = v16;

  [(SteppingPageViewController *)self _initAuxView:self->_fromAuxView forIndex:from];
  v18 = objc_loadWeakRetained(&self->_signGenerator);
  v19 = [v18 auxViewAtIndex:to];
  v20 = self->_toAuxView;
  self->_toAuxView = v19;

  v21 = self->_toAuxView;
  if (v21 != self->_fromAuxView)
  {
    [(SteppingPageViewController *)self _initAuxView:v21 forIndex:to];
  }

LABEL_6:
  [(UIView *)self->_fromAuxView setAlpha:1.0 - progress];
  v22 = self->_toAuxView;

  [(UIView *)v22 setAlpha:progress];
}

- (void)_initAuxView:(id)view forIndex:(int64_t)index
{
  if (view)
  {
    viewCopy = view;
    v10 = _NSDictionaryOfVariableBindings(@"auxView", viewCopy, 0);
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_auxViewContainer addSubview:viewCopy];

    auxViewContainer = self->_auxViewContainer;
    v7 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[auxView]|" options:0 metrics:0 views:v10];
    [(UIView *)auxViewContainer addConstraints:v7];

    v8 = self->_auxViewContainer;
    v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[auxView]|" options:0 metrics:0 views:v10];
    [(UIView *)v8 addConstraints:v9];
  }
}

- (double)_signToPageControlBottomMarginAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  [WeakRetained distanceFromPageControlBaselineToBottomOfSignAtIndex:index fittingSize:{width, height}];
  v10 = v9;

  if (([(UILabel *)self->_pageMarkerLabel isHidden]& 1) == 0)
  {
    font = [(UILabel *)self->_pageMarkerLabel font];
    [font _scaledValueForValue:v10];
    v10 = v12;
  }

  return v10;
}

- (double)_calculatedSignToPageControlBaselineHeightFrom:(int64_t)from to:(int64_t)to progress:(double)progress
{
  view = [(SteppingPageViewController *)self view];
  [view frame];
  v11 = v10;

  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  [WeakRetained sizeForSignAtIndex:from fittingSize:{v11, 2000.0}];
  v14 = v13;

  v15 = v14;
  if (to != from)
  {
    v16 = objc_loadWeakRetained(&self->_signGenerator);
    [v16 sizeForSignAtIndex:to fittingSize:{v11, 2000.0}];
    v15 = v17;
  }

  v18 = fmax(v14, v15);
  [(NSLayoutConstraint *)self->_collectionViewHeightConstraint constant];
  if (v18 > v19)
  {
    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setConstant:v18];
  }

  isPageIndicatorHidden = [(SteppingPageViewController *)self isPageIndicatorHidden];
  v21 = 0.0;
  v22 = 0.0;
  if ((isPageIndicatorHidden & 1) == 0)
  {
    [(SteppingPageViewController *)self _signToPageControlBottomMarginAtIndex:from fittingSize:v11, 2000.0];
    v21 = v23;
    [(SteppingPageViewController *)self _signToPageControlBottomMarginAtIndex:to fittingSize:v11, 2000.0];
  }

  return v21 + v14 + (v22 - v21 + v15 - v14) * progress;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  self->_lastUserGesture = 2;
  delegate = [(SteppingPageViewController *)self delegate];
  [delegate steppingPageViewControllerUserDidStartScrolling:self];
}

- (void)scrollViewDidScroll:(id)scroll
{
  collectionView = [(SteppingPageViewController *)self collectionView];
  isScrollAnimating = [collectionView isScrollAnimating];

  if ((isScrollAnimating & 1) == 0)
  {
    [(SteppingPageViewController *)self _updateCurrentPageAndNotifyDelegate];
  }

  [(SteppingPageViewController *)self _updateSignHeight];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(SteppingPageViewController *)self _updateCurrentPageAndNotifyDelegate];
  self->_lastUserGesture = 0;

  [(SteppingPageViewController *)self _updateSignHeight];
}

- (void)_forcedScrollDidEnd
{
  self->_leftBuffer = 0;
  self->_rightBuffer = 0;
  collectionView = [(SteppingPageViewController *)self collectionView];
  [collectionView setScrollEnabled:1];
}

- (void)_updateCurrentPageAndNotifyDelegate
{
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  signIndex = [(SteppingPageViewController *)self signIndex];
  self->_currentSign = signIndex;
  [(UIPageControl *)self->_pageControl setCurrentPage:signIndex];
  [(SteppingPageViewController *)self _updatePageMarkerText];
  delegate = [(SteppingPageViewController *)self delegate];
  [delegate steppingPageViewController:self didChangeCurrentSign:signIndex previousSign:currentPage fromUserGesture:self->_lastUserGesture];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"MapsTestingSteppingSignDidChange" object:self];
}

- (void)reloadWithSignGenerator:(id)generator
{
  objc_storeWeak(&self->_signGenerator, generator);
  [(SteppingPageViewController *)self refreshSigns];

  [(SteppingPageViewController *)self setSignIndex:0 animated:0];
}

- (void)setSignIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(SteppingPageViewController *)self _adjustedSignIndex:index adjustForRTL:0];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    self->_currentSign = v6;
    if (animatedCopy)
    {
      collectionView = [(SteppingPageViewController *)self collectionView];
      [collectionView setScrollEnabled:0];

      [(NSTimer *)self->_scrollTimer invalidate];
      v9 = [NSTimer scheduledTimerWithTimeInterval:self target:"_forcedScrollDidEnd" selector:0 userInfo:0 repeats:0.300000012];
      scrollTimer = self->_scrollTimer;
      self->_scrollTimer = v9;

      view = [(SteppingPageViewController *)self view];
      [view layoutIfNeeded];

      collectionView2 = [(SteppingPageViewController *)self collectionView];
      v13 = [NSIndexPath indexPathForItem:v7 inSection:0];
      [collectionView2 scrollToItemAtIndexPath:v13 atScrollPosition:16 animated:animatedCopy];
    }

    else
    {
      view2 = [(SteppingPageViewController *)self view];
      [view2 layoutIfNeeded];

      collectionView3 = [(SteppingPageViewController *)self collectionView];
      v16 = [NSIndexPath indexPathForItem:v7 inSection:0];
      [collectionView3 scrollToItemAtIndexPath:v16 atScrollPosition:16 animated:0];

      currentPage = [(UIPageControl *)self->_pageControl currentPage];
      [(UIPageControl *)self->_pageControl setCurrentPage:v7];
      collectionView2 = [(SteppingPageViewController *)self delegate];
      [collectionView2 steppingPageViewController:self didChangeCurrentSign:v7 previousSign:currentPage fromUserGesture:0];
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

- (id)auxViewIfVisibleAtIndex:(int64_t)index
{
  p_fromAuxView = &self->_fromAuxView;
  fromAuxView = self->_fromAuxView;
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  v8 = [WeakRetained auxViewAtIndex:index];

  if (fromAuxView == v8 || (p_fromAuxView = &self->_toAuxView, toAuxView = self->_toAuxView, v10 = objc_loadWeakRetained(&self->_signGenerator), [v10 auxViewAtIndex:index], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, toAuxView == v11))
  {
    v12 = *p_fromAuxView;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)signCellIfVisibleAtIndex:(int64_t)index
{
  v4 = [NSIndexPath indexPathForItem:index inSection:0];
  collectionView = [(SteppingPageViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:v4];

  return v6;
}

- (int64_t)numberOfSigns
{
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  numberOfSigns = [WeakRetained numberOfSigns];

  return numberOfSigns;
}

- (double)_heightForAuxViewAtIndex:(int64_t)index
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
    v11 = [WeakRetained auxViewAtIndex:index];

    v9 = 0.0;
    if (v11 && ([v11 isHidden] & 1) == 0)
    {
      view = [(SteppingPageViewController *)self view];
      [view frame];
      v14 = v13;

      [v11 sizeThatFits:{v14, 2000.0}];
      v9 = v15;
    }

    v16 = [NSNumber numberWithDouble:v9];
    v17 = self->_auxViewHeightCache;
    v18 = [NSNumber numberWithInteger:index];
    [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];
  }

  return v9;
}

- (double)heightForSignAtIndex:(int64_t)index
{
  view = [(SteppingPageViewController *)self view];
  [view frame];
  v7 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  [WeakRetained sizeForSignAtIndex:index fittingSize:{v7, 2000.0}];
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
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  [(SteppingPageViewController *)self refreshSigns];
  if (+[UIView _maps_shouldAdoptImplicitAnimationParameters])
  {
    view = [(SteppingPageViewController *)self view];
    layer = [view layer];
    v6 = +[CAAnimation animation];
    [layer addAnimation:v6 forKey:@"transition"];
  }

  [(SteppingPageViewController *)self setSignIndex:currentPage animated:0];

  +[CATransaction commit];
}

- (void)sizeClassWillChangeWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  resizeSnapshot = self->_resizeSnapshot;
  if (resizeSnapshot)
  {
    [(UIView *)resizeSnapshot removeFromSuperview];
  }

  view = [(SteppingPageViewController *)self view];
  v7 = [view snapshotViewAfterScreenUpdates:0];
  v8 = self->_resizeSnapshot;
  self->_resizeSnapshot = v7;

  [(UIView *)self->_resizeSnapshot setAutoresizingMask:18];
  view2 = [(SteppingPageViewController *)self view];
  [view2 addSubview:self->_resizeSnapshot];

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
  [coordinatorCopy animateAlongsideTransition:v11 completion:v10];
}

- (int64_t)resetCurrentSignAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  [(SteppingPageViewController *)self refreshSigns];
  [(SteppingPageViewController *)self setSignIndex:currentPage animated:animatedCopy];
  return currentPage;
}

- (void)setPageIndicatorHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_pageIndicatorHidden != hidden)
  {
    animatedCopy = animated;
    self->_pageIndicatorHidden = hidden;
    if ([(SteppingPageViewController *)self isViewLoaded])
    {
      widthAsOfLastSignRefresh = self->_widthAsOfLastSignRefresh;
      view = [(SteppingPageViewController *)self view];
      [view bounds];
      v9 = v8;

      if (widthAsOfLastSignRefresh == v9)
      {

        [(SteppingPageViewController *)self _updateSignHeightAnimated:animatedCopy];
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
    view = [(SteppingPageViewController *)self view];
    [view layoutIfNeeded];

    [(UICollectionView *)self->_collectionView reloadData];
    collectionView = [(SteppingPageViewController *)self collectionView];
    v6 = [NSIndexPath indexPathForItem:self->_currentSign inSection:0];
    [collectionView scrollToItemAtIndexPath:v6 atScrollPosition:16 animated:0];
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

- (void)_updateSignHeightConstraintsFrom:(int64_t)from to:(int64_t)to progress:(double)progress
{
  [SteppingPageViewController _calculatedAuxViewHeightFrom:"_calculatedAuxViewHeightFrom:to:progress:" to:? progress:?];
  [(NSLayoutConstraint *)self->_auxViewHeightConstraint setConstant:?];
  [(SteppingPageViewController *)self _calculatedSignToPageControlBaselineHeightFrom:from to:to progress:progress];
  v10 = v9;
  isPageIndicatorHidden = [(SteppingPageViewController *)self isPageIndicatorHidden];
  v12 = 8.0;
  v13 = 0.0;
  if (isPageIndicatorHidden)
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

- (void)_updateSignHeightAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
  if (animatedCopy)
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
    view = [(SteppingPageViewController *)self view];
    [view setNeedsUpdateConstraints];

    v7[2](v7);
  }
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3 && !self->_lastUserGesture)
  {
    if (!self->_leftBuffer && !self->_rightBuffer)
    {
      [(SteppingPageViewController *)self _getCurrentSignIndexesAdjustedForRTL:1 from:0 to:0 closest:&self->_startSign progressBetweenSigns:0];
    }

    view = [(SteppingPageViewController *)self view];
    [tapCopy locationInView:view];
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

    delegate = [(SteppingPageViewController *)self delegate];
    [delegate steppingPageViewController:self didTapOnSignAtIndex:{-[SteppingPageViewController signIndex](self, "signIndex")}];
  }

LABEL_15:
}

- (BOOL)_isPointNearRightEdge:(CGPoint)edge
{
  x = edge.x;
  v5 = [(SteppingPageViewController *)self view:edge.x];
  [v5 frame];
  v7 = v6;

  if (x < v7 + -90.0)
  {
    return 0;
  }

  _isRTL = [(SteppingPageViewController *)self _isRTL];
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  if (_isRTL)
  {
    return currentPage > 0;
  }

  else
  {
    return currentPage < [(UIPageControl *)self->_pageControl numberOfPages]- 1;
  }
}

- (BOOL)_isPointNearLeftEdge:(CGPoint)edge
{
  if (edge.x > 90.0)
  {
    return 0;
  }

  _isRTL = [(SteppingPageViewController *)self _isRTL];
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  if (_isRTL)
  {
    return currentPage < [(UIPageControl *)self->_pageControl numberOfPages]- 1;
  }

  else
  {
    return currentPage > 0;
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
  view = [(SteppingPageViewController *)self view];
  [view bounds];
  if (v4 == self->_widthAsOfLastSignRefresh)
  {
  }

  else
  {
    numberOfSigns = [(SteppingPageViewController *)self numberOfSigns];

    if (numberOfSigns >= 1)
    {
      view2 = [(SteppingPageViewController *)self view];
      [view2 bounds];
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
  view = [(SteppingPageViewController *)self view];
  heightAnchor = [view heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:0.0];
  signHeightConstraint = self->_signHeightConstraint;
  self->_signHeightConstraint = v5;

  LODWORD(v7) = 1148829696;
  [(NSLayoutConstraint *)self->_signHeightConstraint setPriority:v7];
  heightAnchor2 = [(UIView *)self->_auxViewContainer heightAnchor];
  v9 = [heightAnchor2 constraintEqualToConstant:0.0];
  auxViewHeightConstraint = self->_auxViewHeightConstraint;
  self->_auxViewHeightConstraint = v9;

  heightAnchor3 = [(UICollectionView *)self->_collectionView heightAnchor];
  v12 = [heightAnchor3 constraintEqualToConstant:0.0];
  collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  self->_collectionViewHeightConstraint = v12;

  topAnchor = [(UIView *)self->_auxViewContainer topAnchor];
  bottomAnchor = [(UIPageControl *)self->_pageControl bottomAnchor];
  WeakRetained = objc_loadWeakRetained(&self->_signGenerator);
  [WeakRetained distanceFromPageControlBaselineToTopOfAuxView];
  v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  topAuxViewToPageControlBottomConstraint = self->_topAuxViewToPageControlBottomConstraint;
  self->_topAuxViewToPageControlBottomConstraint = v17;

  topAnchor2 = [(UIView *)self->_auxViewContainer topAnchor];
  lastBaselineAnchor = [(UILabel *)self->_pageMarkerLabel lastBaselineAnchor];
  v21 = objc_loadWeakRetained(&self->_signGenerator);
  [v21 distanceFromPageControlBaselineToTopOfAuxView];
  v22 = [topAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  topAuxViewToPageMarkerBaselineConstraint = self->_topAuxViewToPageMarkerBaselineConstraint;
  self->_topAuxViewToPageMarkerBaselineConstraint = v22;

  heightAnchor4 = [(UIPageControl *)self->_pageControl heightAnchor];
  v25 = [heightAnchor4 constraintEqualToConstant:8.0];
  pageControlHeightConstraint = self->_pageControlHeightConstraint;
  self->_pageControlHeightConstraint = v25;

  leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
  view2 = [(SteppingPageViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v71[0] = v67;
  trailingAnchor = [(UICollectionView *)self->_collectionView trailingAnchor];
  view3 = [(SteppingPageViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v71[1] = v63;
  leadingAnchor3 = [(UIView *)self->_auxViewContainer leadingAnchor];
  view4 = [(SteppingPageViewController *)self view];
  leadingAnchor4 = [view4 leadingAnchor];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v71[2] = v59;
  trailingAnchor3 = [(UIView *)self->_auxViewContainer trailingAnchor];
  view5 = [(SteppingPageViewController *)self view];
  trailingAnchor4 = [view5 trailingAnchor];
  v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v71[3] = v55;
  leadingAnchor5 = [(UIPageControl *)self->_pageControl leadingAnchor];
  view6 = [(SteppingPageViewController *)self view];
  leadingAnchor6 = [view6 leadingAnchor];
  v51 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  v71[4] = v51;
  trailingAnchor5 = [(UIPageControl *)self->_pageControl trailingAnchor];
  view7 = [(SteppingPageViewController *)self view];
  trailingAnchor6 = [view7 trailingAnchor];
  v47 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v71[5] = v47;
  leadingAnchor7 = [(UILabel *)self->_pageMarkerLabel leadingAnchor];
  view8 = [(SteppingPageViewController *)self view];
  leadingAnchor8 = [view8 leadingAnchor];
  v43 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
  v71[6] = v43;
  trailingAnchor7 = [(UILabel *)self->_pageMarkerLabel trailingAnchor];
  view9 = [(SteppingPageViewController *)self view];
  trailingAnchor8 = [view9 trailingAnchor];
  v27 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
  v71[7] = v27;
  topAnchor3 = [(UICollectionView *)self->_collectionView topAnchor];
  view10 = [(SteppingPageViewController *)self view];
  topAnchor4 = [view10 topAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v32 = self->_pageControlHeightConstraint;
  v71[8] = v31;
  v71[9] = v32;
  v33 = self->_topAuxViewToPageMarkerBaselineConstraint;
  v71[10] = self->_topAuxViewToPageControlBottomConstraint;
  v71[11] = v33;
  bottomAnchor2 = [(UIView *)self->_auxViewContainer bottomAnchor];
  view11 = [(SteppingPageViewController *)self view];
  bottomAnchor3 = [view11 bottomAnchor];
  v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
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
  view = [(SteppingPageViewController *)self view];
  [view setClipsToBounds:1];

  theme = [(SteppingPageViewController *)self theme];
  navSignPrimaryColor = [theme navSignPrimaryColor];
  view2 = [(SteppingPageViewController *)self view];
  [view2 setBackgroundColor:navSignPrimaryColor];

  view3 = [(SteppingPageViewController *)self view];
  collectionView = [(SteppingPageViewController *)self collectionView];
  [view3 addSubview:collectionView];

  view4 = [(SteppingPageViewController *)self view];
  collectionView2 = [(SteppingPageViewController *)self collectionView];
  panGestureRecognizer = [collectionView2 panGestureRecognizer];
  [view4 addGestureRecognizer:panGestureRecognizer];

  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  auxViewContainer = self->_auxViewContainer;
  self->_auxViewContainer = v12;

  [(UIView *)self->_auxViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_auxViewContainer setClipsToBounds:1];
  view5 = [(SteppingPageViewController *)self view];
  [view5 addSubview:self->_auxViewContainer];

  [(SteppingPageViewController *)self _initPageControl];
  view6 = [(SteppingPageViewController *)self view];
  [view6 addSubview:self->_pageControl];

  [(SteppingPageViewController *)self _initPageMarkerLabel];
  view7 = [(SteppingPageViewController *)self view];
  [view7 addSubview:self->_pageMarkerLabel];

  v17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTap:"];
  singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
  self->_singleTapGestureRecognizer = v17;

  view8 = [(SteppingPageViewController *)self view];
  [view8 addGestureRecognizer:self->_singleTapGestureRecognizer];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SteppingPageViewController;
  [(SteppingPageViewController *)&v5 viewDidAppear:appear];
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

- (SteppingPageViewController)initWithSignGenerator:(id)generator
{
  generatorCopy = generator;
  v10.receiver = self;
  v10.super_class = SteppingPageViewController;
  v5 = [(SteppingPageViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_signGenerator, generatorCopy);
    v7 = objc_alloc_init(NSMutableDictionary);
    auxViewHeightCache = v6->_auxViewHeightCache;
    v6->_auxViewHeightCache = v7;
  }

  return v6;
}

- (void)_updatePageIndicatorVisibility
{
  isPageIndicatorHidden = [(SteppingPageViewController *)self isPageIndicatorHidden];
  pageControl = self->_pageControl;
  if (isPageIndicatorHidden)
  {
    [(UIPageControl *)pageControl setHidden:1];
  }

  else
  {
    [(UIPageControl *)pageControl intrinsicContentSize];
    v6 = v5;
    view = [(SteppingPageViewController *)self view];
    [view frame];
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