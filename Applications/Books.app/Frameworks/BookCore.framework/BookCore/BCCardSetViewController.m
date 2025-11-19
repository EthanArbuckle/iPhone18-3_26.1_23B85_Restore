@interface BCCardSetViewController
- (BCCardSetDataSource)dataSource;
- (BCCardSetDelegate)delegate;
- (BCCardSetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BCCardStackConfiguration)configuration;
- (BCCardViewController)currentCardViewController;
- (BOOL)bc_analyticsVisibilityOfChild:(id)a3;
- (BOOL)cardViewControllerCanCloseAsset:(id)a3;
- (BOOL)expanded;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)itemPushedOnCardAtIndex:(unint64_t)a3;
- (CGAffineTransform)contractedTransform;
- (CGAffineTransform)expandedTransform;
- (CGRect)_frameForCardAtIndex:(int64_t)a3;
- (CGRect)_frameForPageAtIndex:(int64_t)a3;
- (CGRect)frameForCardAtIndex:(int64_t)a3 inCoordinatesOfCardAtIndex:(int64_t)a4;
- (CGRect)initialFrame;
- (CGSize)cardSize;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)contentInsetForCards;
- (UIEdgeInsets)horizontalContentInset;
- (_NSRange)_visibleCardRangePassingTest:(id)a3;
- (_NSRange)visibleCardRange;
- (double)_cardSeparation;
- (double)_cardWidthForContainerWidth:(double)a3 usingConfiguration:(id)a4;
- (double)_debugDragCoefficient;
- (double)_flipScrollViewOffsetIfNeeded:(double)a3 width:(double)a4;
- (double)_xOffsetForHiddenSideCardOnLeadingSide:(BOOL)a3;
- (double)cutoffToDismissScrollView:(id)a3;
- (double)scaleOffset:(double)a3 withTransform:(CGAffineTransform *)a4;
- (id)accessibilityScrollStatusForWideTouchScrollView:(id)a3;
- (id)animatorForExpandingTransformingView:(id)a3 timingParameter:(id)a4 duration:(double)a5;
- (id)animatorForInteractiveDismiss;
- (id)animatorForUnexpandingTransformingView:(id)a3 timingParameter:(id)a4 duration:(double)a5;
- (id)cardViewControllerAtIndex:(unint64_t)a3;
- (id)expandedCardViewController;
- (id)im_visibleChildViewControllers;
- (id)keyCommands;
- (int64_t)_currentIndexFromScrollViewBounds;
- (unint64_t)cardCount;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_applicationWillEnterForegroundNotification:(id)a3;
- (void)_didBecomeVisibleContentScrollView;
- (void)_didCommitDismissWithVelocity:(double)a3 interactiveAnimator:(id)a4;
- (void)_goContractedCommon;
- (void)_goContractedCommonTransformingView:(id)a3;
- (void)_goToNextCardWithKeyCommand:(id)a3;
- (void)_goToPreviousCardWithKeyCommand:(id)a3;
- (void)_layoutCards;
- (void)_scrollViewDidEndScrolling;
- (void)_updateCardNavBarAlphaForSliding;
- (void)_updateCurrentIndexIfNeeded;
- (void)_updateFramesToSize:(CGSize)a3;
- (void)animationCompletedExpanded:(BOOL)a3;
- (void)backgroundTapped:(id)a3;
- (void)beginTransitionUpdateModeForCardsAtRange:(_NSRange)a3;
- (void)cardLayoutDidChange:(BOOL)a3;
- (void)cardTapped:(id)a3;
- (void)cardViewControllerDidTapCloseAllCards:(id)a3;
- (void)cardViewControllerDidTapCloseAsset:(id)a3;
- (void)clearSavedContentOffsetsForCardAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)didBecomeTopCardSet;
- (void)dismissAllCardsAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissCardStackAnimated:(BOOL)a3;
- (void)edgePanGesture:(id)a3;
- (void)endTransitionUpdateMode;
- (void)enumerateAllCardsUsingBlock:(id)a3;
- (void)goContracted;
- (void)goContractedInteractive:(BOOL)a3;
- (void)goContractedInteractive:(BOOL)a3 withTiming:(id)a4;
- (void)goContractedWithBounce:(double)a3;
- (void)goExpanded;
- (void)goExpandedInteractive:(BOOL)a3;
- (void)loadView;
- (void)prepareForDismiss;
- (void)presentationTransitionDidComplete;
- (void)resumeAndRebuildForReason:(id)a3;
- (void)scrollCurrentCardToTop;
- (void)scrollToTopCardAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContractedTransform:(CGAffineTransform *)a3;
- (void)setCovered:(BOOL)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)setDataSource:(id)a3;
- (void)setExpandedTransform:(CGAffineTransform *)a3;
- (void)setFocusedIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setLastNavigationType:(int64_t)a3;
- (void)suspendAndTeardownForReason:(id)a3;
- (void)updateCards;
- (void)updateContractedTransform;
- (void)updateWithAppendedCards;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (void)zoomingAnimationCompletedAtPosition:(int64_t)a3;
@end

@implementation BCCardSetViewController

- (BCCardSetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = BCCardSetViewController;
  v4 = [(BCCardSetViewController *)&v12 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_currentIndex = -1;
    v6 = objc_alloc_init(NSMutableDictionary);
    suspendedCardViewControllers = v5->_suspendedCardViewControllers;
    v5->_suspendedCardViewControllers = v6;

    v8 = +[NSMapTable mapTableWithStrongToStrongObjects];
    suspendedCardsScrollingAssertions = v5->_suspendedCardsScrollingAssertions;
    v5->_suspendedCardsScrollingAssertions = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v5 selector:"_applicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
    [v10 addObserver:v5 selector:"_applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];
  [v3 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];

  v4.receiver = self;
  v4.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v4 dealloc];
}

- (void)_applicationWillEnterForegroundNotification:(id)a3
{
  v4 = [(BCCardSetViewController *)self viewState];

  if (v4)
  {
    v5 = [(BCCardSetViewController *)self view];
    [v5 size];
    v7 = v6;
    v9 = v8;
    v10 = [(BCCardSetViewController *)self viewState];
    [v10 viewSize];
    v12 = v11;
    v14 = v13;

    if (v7 == v12 && v9 == v14)
    {
      v15 = [(BCCardSetViewController *)self viewState];
      v16 = [v15 isExpanded];
      v17 = [(BCCardSetViewController *)self expanded];

      if (v16 != v17)
      {
        if ([(BCCardSetViewController *)self expanded])
        {
          [(BCCardSetViewController *)self goContracted];
        }

        else
        {
          [(BCCardSetViewController *)self goExpanded];
        }
      }
    }

    [(BCCardSetViewController *)self setViewState:0];
  }
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  v4 = [(BCCardSetViewController *)self viewState];

  if (!v4)
  {
    v5 = [BCCardSetViewControllerViewState alloc];
    v6 = [(BCCardSetViewController *)self expanded];
    v8 = [(BCCardSetViewController *)self view];
    [v8 size];
    v7 = [(BCCardSetViewControllerViewState *)v5 initWithIsExpanded:v6 viewSize:?];
    [(BCCardSetViewController *)self setViewState:v7];
  }
}

- (id)expandedCardViewController
{
  if ([(BCCardSetViewController *)self expanded])
  {
    v3 = [(BCCardSetViewController *)self currentCardViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BCCardViewController)currentCardViewController
{
  v3 = [(BCCardSetViewController *)self displayedCardViewControllers];
  v4 = [NSNumber numberWithUnsignedInteger:[(BCCardSetViewController *)self currentIndex]];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (unint64_t)cardCount
{
  v3 = [(BCCardSetViewController *)self dataSource];
  if (v3)
  {
    v4 = [(BCCardSetViewController *)self dataSource];
    v5 = [v4 cardCountForCardSet:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  left = self->_contentInset.left;
  right = self->_contentInset.right;
  if (left != a3.left || self->_contentInset.top != a3.top || right != a3.right || self->_contentInset.bottom != a3.bottom)
  {
    v23[5] = v6;
    v23[6] = v5;
    v23[9] = v3;
    v23[10] = v4;
    self->_contentInset = a3;
    if (a3.left != left || a3.right != right)
    {
      if ([(BCCardSetViewController *)self isViewLoaded])
      {
        v14 = [(BCCardSetViewController *)self view];
        [v14 bounds];
        [(BCCardSetViewController *)self _updateFramesToSize:v15, v16];

        [(BCCardSetViewController *)self _frameForPageAtIndex:[(BCCardSetViewController *)self currentIndex]];
        v18 = v17;
        v20 = v19;
        v21 = [(BCCardSetViewController *)self scrollView];
        [v21 setContentOffset:0 animated:{v18, v20}];

        [(BCCardSetViewController *)self updateCards];
      }
    }

    v22 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_5125C;
    v23[3] = &unk_2C9A20;
    v23[4] = self;
    [v22 enumerateKeysAndObjectsUsingBlock:v23];
  }
}

- (UIEdgeInsets)contentInsetForCards
{
  [(BCCardSetViewController *)self contentInset];
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)horizontalContentInset
{
  [(BCCardSetViewController *)self contentInset];
  v4 = 0.0;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (void)setLastNavigationType:(int64_t)a3
{
  self->_lastNavigationType = a3;
  v5 = [(BCCardSetViewController *)self visibleCardRange];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      v9 = [(BCCardSetViewController *)self cardViewControllerAtIndex:v7];
      v10 = [v9 topContentViewController];
      v11 = BUProtocolCast();

      [v11 cardSetViewController:self willUpdateWithNavigationType:a3];
      ++v7;
      --v8;
    }

    while (v8);
  }
}

- (double)_cardSeparation
{
  v3 = [(BCCardSetViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(BCCardSetViewController *)self contentInset];
  v13 = v7 + v12;
  v16 = v9 - (v14 + v15);
  v26.size.height = v11 - (v12 + v17);
  v26.origin.x = v5 + v14;
  v26.origin.y = v13;
  v26.size.width = v16;
  Width = CGRectGetWidth(v26);

  v19 = [(BCCardSetViewController *)self configuration];
  [v19 cardGapForContainerWidth:Width];
  v21 = v20;
  v22 = [(BCCardSetViewController *)self configuration];
  [v22 cardContractedScale];
  v24 = v21 / v23;

  return v24;
}

- (double)cutoffToDismissScrollView:(id)a3
{
  [a3 frame];
  Height = CGRectGetHeight(v7);
  [(BCCardSetViewController *)self distanceToExpand];
  return floor((Height - v5) * 0.2);
}

- (double)scaleOffset:(double)a3 withTransform:(CGAffineTransform *)a4
{
  v7 = [(BCCardSetViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(BCCardSetViewController *)self horizontalContentInset];
  v17 = v9 + v16;
  v19 = v11 + v18;
  v21 = v13 - (v16 + v20);
  v23 = v15 - (v18 + v22);

  v24 = *&a4->c;
  *&v33.a = *&a4->a;
  *&v33.c = v24;
  *&v33.tx = *&a4->tx;
  v25 = v17;
  *&v24 = v19;
  v26 = v21;
  v27 = v23;
  v34 = CGRectApplyAffineTransform(*(&v24 - 8), &v33);
  height = v34.size.height;
  v29 = [(BCCardSetViewController *)self view:v34.origin.x];
  [v29 bounds];
  v31 = (a3 + (v30 - height) * -0.5) / a4->d;

  return v31;
}

- (void)updateContractedTransform
{
  v3 = [(BCCardSetViewController *)self configuration];
  [v3 cardContractedScale];
  v5 = v4;
  v6 = [(BCCardSetViewController *)self configuration];
  [v6 cardContractedScale];
  CGAffineTransformMakeScale(&v26, v5, v7);
  v25 = v26;
  [(BCCardSetViewController *)self setContractedTransform:&v25];

  v8 = [(BCCardSetViewController *)self configuration];
  [v8 cardUnexpandedTopOffset];
  v10 = v9;
  [(BCCardSetViewController *)self contractedTransform];
  [(BCCardSetViewController *)self scaleOffset:&v25 withTransform:v10];
  v12 = v11;

  v13 = [(BCCardSetViewController *)self scrollView];
  [v13 bounds];
  Height = CGRectGetHeight(v27);

  v15 = [(BCCardSetViewController *)self configuration];
  [v15 cardUnexpandedTopOffset];
  v17 = v16;
  v18 = [(BCCardSetViewController *)self configuration];
  [v18 cardExpandedTopOffset];
  [(BCCardSetViewController *)self setDistanceToExpand:v17 - v19];

  [(BCCardSetViewController *)self distanceToExpand];
  v21 = Height - v20;
  v22 = [(BCCardSetViewController *)self configuration];
  [v22 cardContractedScale];
  [(BCCardSetViewController *)self setDistanceToDismiss:v21 / v23];

  [(BCCardSetViewController *)self setScaledContractedOffset:v12];
  v24 = [(BCCardSetViewController *)self configuration];
  [v24 cardsCanExpand];
}

- (void)cardTapped:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self currentCardViewController];

  if (v5 != v4)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_51884;
    v11 = &unk_2C9A48;
    v12 = v4;
    v13 = &v14;
    [v6 enumerateKeysAndObjectsUsingBlock:&v8];

    v7 = v15[3];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BCCardSetViewController *)self setFocusedIndex:v7 animated:1, v8, v9, v10, v11];
    }

    _Block_object_dispose(&v14, 8);
  }
}

- (void)dismissCardStackAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(BCCardSetViewController *)self cardStackViewController];
  [v4 popCardsAnimated:v3];
}

- (void)dismissAllCardsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BCCardSetViewController *)self cardStackViewController];
  [v7 popAllCardsAnimated:v4 completion:v6];
}

- (void)backgroundTapped:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
  {

    [(BCCardSetViewController *)self dismissCardStackAnimated:1];
  }
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v5 loadView];
  v3 = [BCCardSetView alloc];
  [(BCCardSetViewController *)self initialFrame];
  v4 = [(BCCardSetView *)v3 initWithFrame:?];
  [(BCCardSetView *)v4 setAutoresizingMask:18];
  [(BCCardSetView *)v4 setAccessibilityDelegate:self];
  [(BCCardSetViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v26 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(BCCardSetViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(BCCardSetViewController *)self view];
  [v5 setAccessibilityViewIsModal:1];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"backgroundTapped:"];
  [v6 setDelegate:self];
  v7 = [(BCCardSetViewController *)self view];
  [v7 addGestureRecognizer:v6];

  [(BCCardSetViewController *)self setTapToDismissGestureRecognizer:v6];
  v8 = [[BCCardSetWideTouchScrollView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BCCardSetWideTouchScrollView *)v8 setAccessibilityDelegate:self];
  [(BCCardSetWideTouchScrollView *)v8 _setPocketsEnabled:0];
  [(BCCardSetViewController *)self setScrollView:v8];
  v9 = [(BCCardSetViewController *)self scrollView];
  [v9 setPagingEnabled:1];

  v10 = [(BCCardSetViewController *)self scrollView];
  [v10 setClipsToBounds:0];

  v11 = [(BCCardSetViewController *)self scrollView];
  [v11 setShowsHorizontalScrollIndicator:0];

  v12 = [(BCCardSetViewController *)self scrollView];
  [v12 setShowsVerticalScrollIndicator:0];

  v13 = [(BCCardSetViewController *)self view];
  [v13 bounds];
  [(BCCardSetViewController *)self _updateFramesToSize:v14, v15];

  [(BCCardSetViewController *)self _frameForPageAtIndex:[(BCCardSetViewController *)self currentIndex]];
  v17 = v16;
  v19 = v18;
  v20 = [(BCCardSetViewController *)self scrollView];
  [v20 setContentOffset:0 animated:{v17, v19}];

  v21 = [(BCCardSetViewController *)self view];
  v22 = [(BCCardSetViewController *)self scrollView];
  [v21 addSubview:v22];

  v23 = *&CGAffineTransformIdentity.c;
  v25[0] = *&CGAffineTransformIdentity.a;
  v25[1] = v23;
  v25[2] = *&CGAffineTransformIdentity.tx;
  [(BCCardSetViewController *)self setExpandedTransform:v25];
  [(BCCardSetViewController *)self updateContractedTransform];
  [(BCCardSetViewController *)self updateCards];
  [(BCCardSetViewController *)self goContracted];
  v24 = [(BCCardSetViewController *)self scrollView];
  [v24 setDelegate:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v4 viewDidAppear:a3];
  [(BCCardSetViewController *)self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v4 viewWillDisappear:a3];
  [(BCCardSetViewController *)self resignFirstResponder];
}

- (BOOL)expanded
{
  v2 = [(BCCardSetViewController *)self currentCardViewController];
  v3 = [v2 expanded];

  return v3;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    v5 = obj;
  }
}

- (void)setCovered:(BOOL)a3 animated:(BOOL)a4 duration:(double)a5
{
  if (self->_covered != a3)
  {
    v6 = a4;
    self->_covered = a3;
    v8 = [(BCCardSetViewController *)self view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(BCCardSetViewController *)self contentInset];
    v18 = v12 + v17;
    v21 = v14 - (v19 + v20);
    v80.size.height = v16 - (v17 + v22);
    v80.origin.x = v10 + v19;
    v80.origin.y = v18;
    v80.size.width = v21;
    Width = CGRectGetWidth(v80);

    v24 = [(BCCardSetViewController *)self scrollView];
    [v24 frame];
    v26 = ceil(Width + floor(v25) * -0.5);
    [(BCCardSetViewController *)self _cardSeparation];
    v28 = v27 + v26;

    v29 = [(BCCardSetViewController *)self configuration];
    [v29 cardContractedScale];
    v31 = v28 / v30;

    v32 = [(BCCardSetViewController *)self cardCount];
    v33 = [(BCCardSetViewController *)self currentIndex];
    if (v33 <= 0)
    {
      v34 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = v33 - 1;
    }

    if (v33 + 1 < v32)
    {
      v35 = v33 + 1;
    }

    else
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v36 = [(BCCardSetViewController *)self _isRTL];
    if (v36)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    if (v36)
    {
      v34 = v35;
    }

    if (self->_covered)
    {
      v38 = [(BCCardSetViewController *)self displayedCardViewControllers];
      v39 = [NSNumber numberWithInteger:v34];
      v40 = [v38 objectForKeyedSubscript:v39];

      v41 = [(BCCardSetViewController *)self displayedCardViewControllers];
      v42 = [NSNumber numberWithInteger:v37];
      v43 = [v41 objectForKeyedSubscript:v42];

      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_52444;
      v76[3] = &unk_2C9A70;
      v76[4] = self;
      v79 = v6;
      v44 = v40;
      v77 = v44;
      v45 = v43;
      v78 = v45;
      v46 = objc_retainBlock(v76);
      if (v6)
      {
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_524E8;
        v70[3] = &unk_2C9A98;
        v71 = v44;
        v74 = v31;
        v72 = v45;
        v73 = self;
        v75 = a5;
        [UIView animateWithDuration:v70 animations:v46 completion:a5];
      }

      else
      {
        v58 = [(BCCardSetViewController *)self currentCardViewController];
        [v58 setScrimAlpha:0 animated:0.2 duration:a5];

        (v46[2])(v46, 1);
      }
    }

    else
    {
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_525B4;
      v69[3] = &unk_2C7D40;
      v69[4] = self;
      [UIView performWithoutAnimation:v69];
      if (v6)
      {
        v47 = [(BCCardSetViewController *)self displayedCardViewControllers];
        v48 = [NSNumber numberWithInteger:v34];
        v49 = [v47 objectForKeyedSubscript:v48];

        v50 = [(BCCardSetViewController *)self displayedCardViewControllers];
        v51 = [NSNumber numberWithInteger:v37];
        v52 = [v50 objectForKeyedSubscript:v51];

        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_5260C;
        v65[3] = &unk_2C8DD0;
        v53 = v49;
        v66 = v53;
        v68 = v31;
        v54 = v52;
        v67 = v54;
        [UIView performWithoutAnimation:v65];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_526B0;
        v62[3] = &unk_2C7BE8;
        v63 = v53;
        v64 = v54;
        v55 = v54;
        v56 = v53;
        [UIView animateWithDuration:v62 animations:a5];
        v57 = [(BCCardSetViewController *)self currentCardViewController];
        [v57 setScrimAlpha:1 animated:0.0 duration:a5];
      }

      else
      {
        v56 = [(BCCardSetViewController *)self currentCardViewController];
        [v56 setScrimAlpha:0 animated:0.0 duration:a5];
      }
    }

    v59 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v60 = [NSNumber numberWithUnsignedInteger:[(BCCardSetViewController *)self currentIndex]];
    v61 = [v59 objectForKeyedSubscript:v60];

    [v61 setIsCurrentCard:!self->_covered];
  }
}

- (void)didBecomeTopCardSet
{
  v3 = [(BCCardSetViewController *)self configuration];
  v4 = [v3 cardsCanExpand];

  if (v4)
  {

    [(BCCardSetViewController *)self _didBecomeVisibleContentScrollView];
  }
}

- (void)_didBecomeVisibleContentScrollView
{
  v3 = [(BCCardSetViewController *)self currentCardViewController];
  v2 = [v3 topContentViewController];
  [v2 didBecomeVisibleContentScrollView];
}

- (void)setFocusedIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(BCCardSetViewController *)self dataSource];
  if (v7)
  {
    v23 = v7;
    v8 = [(BCCardSetViewController *)self currentIndex];
    v9 = [(BCCardSetViewController *)self scrollStartCardIndex];

    if (!v9 && v4)
    {
      v10 = [NSNumber numberWithInteger:v8];
      [(BCCardSetViewController *)self setScrollStartCardIndex:v10];
    }

    if ((v8 & 0x8000000000000000) == 0 && v8 != a3)
    {
      v11 = [(BCCardSetViewController *)self displayedCardViewControllers];
      v12 = [NSNumber numberWithInteger:v8];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v13 setIsCurrentCard:0];
    }

    v14 = [v23 cardCountForCardSet:self];
    if ((v14 - 1) < a3)
    {
      a3 = (v14 - 1);
    }

    [(BCCardSetViewController *)self _frameForPageAtIndex:a3];
    v16 = v15;
    v18 = v17;
    v19 = [(BCCardSetViewController *)self scrollView];
    [v19 setContentOffset:v4 animated:{v16, v18}];

    [(BCCardSetViewController *)self _updateCurrentIndexIfNeeded];
    v7 = v23;
    if (v8 != a3)
    {
      v20 = [(BCCardSetViewController *)self displayedCardViewControllers];
      v21 = [NSNumber numberWithUnsignedInteger:a3];
      v22 = [v20 objectForKeyedSubscript:v21];

      [v22 setIsCurrentCard:{-[BCCardSetViewController covered](self, "covered") ^ 1}];
      v7 = v23;
    }
  }
}

- (BOOL)itemPushedOnCardAtIndex:(unint64_t)a3
{
  v5 = [(BCCardSetViewController *)self suspendedCardViewControllers];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [(BCCardSetViewController *)self cardViewControllerAtIndex:a3];
  if ([v7 itemPushedOnCard])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 itemPushedOnCard];
  }

  return v9;
}

- (void)clearSavedContentOffsetsForCardAtIndex:(unint64_t)a3
{
  v4 = [(BCCardSetViewController *)self suspendedCardViewControllers];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  [v6 clearSavedContentOffsets];
}

- (void)scrollToTopCardAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(BCCardSetViewController *)self suspendedCardViewControllers];
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [v7 objectForKeyedSubscript:v8];

  v9 = [(BCCardSetViewController *)self cardViewControllerAtIndex:a3];
  [v10 scrollToTop:0];
  [v9 scrollToTop:v4];
  [(BCCardSetViewController *)self setScrollToTopVelocity:0.0];
}

- (id)cardViewControllerAtIndex:(unint64_t)a3
{
  v4 = [(BCCardSetViewController *)self displayedCardViewControllers];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)enumerateAllCardsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self displayedCardViewControllers];
  [v5 enumerateKeysAndObjectsUsingBlock:v4];

  v6 = [(BCCardSetViewController *)self suspendedCardViewControllers];
  [v6 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)cardLayoutDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(BCCardSetViewController *)self focusedIndex];
  v6 = [(BCCardSetViewController *)self view];
  [v6 bounds];
  [(BCCardSetViewController *)self _updateFramesToSize:v7, v8];

  [(BCCardSetViewController *)self updateContractedTransform];
  v9 = [(BCCardSetViewController *)self dataSource];
  v10 = [v9 isTopCardSetViewController:self];

  v11 = [(BCCardSetViewController *)self configuration];
  v12 = [v11 cardsCanExpand];

  if (v12)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    if (v3)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_52FF4;
      v17[3] = &unk_2C9AE0;
      v17[4] = self;
      v17[5] = &v19;
      v18 = v10;
      [(BCCardSetViewController *)self enumerateAllCardsUsingBlock:v17];
    }

    if (v10 && *(v20 + 24) != 1)
    {
      if (v3)
      {
        [(BCCardSetViewController *)self goContracted];
      }

      else if (![(BCCardSetViewController *)self expanded])
      {
        [(BCCardSetViewController *)self _goContractedCommon];
      }
    }

    else
    {
      [(BCCardSetViewController *)self goExpanded];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    [(BCCardSetViewController *)self goContracted];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_52F94;
    v23[3] = &unk_2C9AB8;
    v24 = v3;
    [(BCCardSetViewController *)self enumerateAllCardsUsingBlock:v23];
  }

  v13 = [(BCCardSetViewController *)self expanded];
  v14 = [(BCCardSetViewController *)self scrollView];
  [v14 setScrollEnabled:v13 ^ 1];

  v15 = [(BCCardSetViewController *)self currentCardViewController];
  [v15 setRawCurrentCardOffset:0.0];

  [(BCCardSetViewController *)self updateCards];
  [(BCCardSetViewController *)self setFocusedIndex:v5];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_53138;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_after(0, &_dispatch_main_q, block);
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v26.receiver = self;
  v26.super_class = BCCardSetViewController;
  v7 = a3;
  [(BCCardSetViewController *)&v26 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
  v8 = [(BCCardSetViewController *)self traitCollection];
  v9 = [v8 horizontalSizeClass];
  v10 = [v7 horizontalSizeClass];

  if (v9 != v10)
  {
    if ([(BCCardSetViewController *)self currentIndex])
    {
      v11 = [(BCCardSetViewController *)self currentIndex]- 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(BCCardSetViewController *)self currentIndex]+ 1;
    v13 = [NSMutableArray arrayWithCapacity:2];
    v14 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_53338;
    v22[3] = &unk_2C9B08;
    v24 = v11;
    v25 = v12;
    v15 = v13;
    v23 = v15;
    [v14 enumerateKeysAndObjectsUsingBlock:v22];

    v16 = [(BCCardSetViewController *)self configuration];
    v17 = [v16 cardsCanExpand];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_533D8;
    v19[3] = &unk_2C9B30;
    v19[4] = self;
    v20 = v15;
    v21 = v17;
    v18 = v15;
    [v6 animateAlongsideTransition:0 completion:v19];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = BCCardSetViewController;
  v7 = a4;
  [(BCCardSetViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5369C;
  v8[3] = &unk_2C9B58;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)viewWillLayoutSubviews
{
  if (self->_needLayoutCards && ![(BCCardSetViewController *)self isInTransitionUpdateMode])
  {
    [(BCCardSetViewController *)self _layoutCards];
    self->_needLayoutCards = 0;
  }

  v3 = [(BCCardSetViewController *)self displayedCardViewControllers];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5392C;
  v5[3] = &unk_2C9A20;
  v5[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  v4.receiver = self;
  v4.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v4 viewWillLayoutSubviews];
}

- (void)prepareForDismiss
{
  v3 = [(BCCardSetViewController *)self scrollView];
  [v3 _stopScrollingAndZoomingAnimations];

  v4 = [(BCCardSetViewController *)self displayedCardViewControllers];
  [v4 enumerateKeysAndObjectsUsingBlock:&stru_2C9B98];
}

- (double)_xOffsetForHiddenSideCardOnLeadingSide:(BOOL)a3
{
  v3 = a3;
  v4 = [(BCCardSetViewController *)self _isRTL];
  result = 50.0;
  if (v4 != v3)
  {
    return -50.0;
  }

  return result;
}

- (double)_cardWidthForContainerWidth:(double)a3 usingConfiguration:(id)a4
{
  v5 = a4;
  if (([v5 cardsCanExpand] & 1) == 0)
  {
    [v5 contractedCardWidthForContainerWidth:a3];
    a3 = v6;
  }

  return a3;
}

- (void)_updateFramesToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(BCCardSetViewController *)self contentInset];
  v7 = width - v6;
  [(BCCardSetViewController *)self contentInset];
  v9 = v7 - v8;
  v10 = [(BCCardSetViewController *)self configuration];
  [(BCCardSetViewController *)self _cardWidthForContainerWidth:v10 usingConfiguration:v9];
  v12 = v11;

  [(BCCardSetViewController *)self setCardSize:v12, height];
  [(BCCardSetViewController *)self _cardSeparation];
  v14 = v12 + v13;
  [(BCCardSetViewController *)self setPagingWidth:v14];
  [(BCCardSetViewController *)self contentInset];
  v15 = [(BCCardSetViewController *)self view];
  UIRoundToViewScale();

  CGRectMakeWithOriginSize();
  CGRectGetCenterNoRounding();
  v17 = v16;
  v19 = v18;
  v20 = [(BCCardSetViewController *)self scrollView];
  [v20 setCenter:{v17, v19}];

  v21 = [(BCCardSetViewController *)self scrollView];
  [v21 bounds];
  CGRectMakeWithOriginSize();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(BCCardSetViewController *)self scrollView];
  [v30 setBounds:{v23, v25, v27, v29}];

  v31 = v14 * [(BCCardSetViewController *)self cardCount];
  v32 = [(BCCardSetViewController *)self scrollView];
  [v32 setContentSize:{v31, height}];
}

- (double)_debugDragCoefficient
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BCCardStackTransitionAnimatorSlowModeEnabled"];

  if (v3)
  {
    v4 = 3.0;
  }

  else
  {
    v4 = 1.0;
  }

  UIAnimationDragCoefficient();
  return v4 * v5;
}

- (void)animationCompletedExpanded:(BOOL)a3
{
  v3 = a3;
  v5 = !a3;
  v6 = [(BCCardSetViewController *)self scrollView];
  [v6 setScrollEnabled:v5];

  v7 = [(BCCardSetViewController *)self currentCardViewController];
  v8 = v7;
  if (v5)
  {
    [v7 configureChromeForContracted];
  }

  else
  {
    [v7 configureChromeForExpanded];
  }

  v9 = [(BCCardSetViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(BCCardSetViewController *)self delegate];
    [v11 cardSetViewController:self animationCompletedExpanded:v3];
  }
}

- (void)zoomingAnimationCompletedAtPosition:(int64_t)a3
{
  v4 = [(BCCardSetViewController *)self currentCardViewController];
  [v4 animationCompletedAtPosition:a3];
}

- (id)animatorForExpandingTransformingView:(id)a3 timingParameter:(id)a4 duration:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [UIViewPropertyAnimator alloc];
  if (v9)
  {
    v11 = [v10 initWithDuration:v9 timingParameters:0.0];
  }

  else
  {
    v11 = [v10 initWithDuration:2 curve:0 animations:a5];
  }

  v12 = v11;
  [v11 setFlushUpdates:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_53FD0;
  v15[3] = &unk_2C7BE8;
  v16 = v8;
  v17 = self;
  v13 = v8;
  [v12 addAnimations:v15];

  return v12;
}

- (void)goExpandedInteractive:(BOOL)a3
{
  v3 = a3;
  v5 = [(BCCardSetViewController *)self traitCollection];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_5440C;
  v43[3] = &unk_2C9BB8;
  v43[4] = 0;
  v6 = [v5 traitCollectionByModifyingTraits:v43];

  v7 = isPad();
  v8 = 0;
  if ((v7 & 1) == 0)
  {
    v9 = [(BCCardSetViewController *)self currentCardViewController];
    v10 = [v9 topContentViewController];
    v8 = [v10 viewIfLoaded];
  }

  v11 = [v8 backgroundColor];
  v12 = v11;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_54418;
  v41[4] = sub_54428;
  v42 = 0;
  if (v11)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_54430;
    v38[3] = &unk_2C7AE0;
    v40 = v41;
    v39 = v11;
    [v6 performAsCurrentTraitCollection:v38];
  }

  if (v12)
  {
    v13 = v7 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = _os_feature_enabled_impl();
  v15 = [(BCCardSetViewController *)self cardStackViewController];
  v16 = [v15 statusBarBackgroundController];
  [v16 setOpacity:(v14 ^ 1u)];

  v17 = [(BCCardSetViewController *)self scrollView];
  v18 = [(BCCardSetViewController *)self animatorForExpandingTransformingView:v17 duration:0.2];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_54494;
  v33[3] = &unk_2C9C08;
  v33[4] = self;
  v36 = v13;
  v19 = v8;
  v34 = v19;
  v35 = v41;
  v37 = v14;
  [v18 addAnimations:v33];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_546E4;
  v27 = &unk_2C9C30;
  v32 = v13;
  v28 = self;
  v31 = 0;
  v20 = v19;
  v29 = v20;
  v21 = v12;
  v30 = v21;
  [v18 addCompletion:&v24];
  [v18 setInterruptible:{1, v24, v25, v26, v27, v28}];
  v22 = [(BCCardSetViewController *)self delegate];
  [v22 cardSetViewController:self animatorForExpanding:v18];

  if (v3)
  {
    [v18 pauseAnimation];
  }

  v23 = [(BCCardSetViewController *)self currentCardViewController];
  [v23 setAnimator:v18];

  if (!v3)
  {
    [v18 startAnimation];
  }

  _Block_object_dispose(v41, 8);
}

- (void)goContractedInteractive:(BOOL)a3
{
  v3 = a3;
  [(BCCardSetViewController *)self scrollToTopVelocity];
  if (v5 == 0.0)
  {

    [(BCCardSetViewController *)self goContractedInteractive:v3 withTiming:0];
  }

  else
  {
    [(BCCardSetViewController *)self scrollToTopVelocity];
    v7 = v6;
    [(BCCardSetViewController *)self setScrollToTopVelocity:0.0];

    [(BCCardSetViewController *)self goContractedWithBounce:v7];
  }
}

- (void)goContractedWithBounce:(double)a3
{
  v4 = fabs(a3 * 1000000000.0 / 1000000.0);
  [(BCCardSetViewController *)self distanceToExpand];
  v6 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:100.0 damping:80.0 initialVelocity:{v4 / v5, 0.0}];
  [(BCCardSetViewController *)self goContractedInteractive:1 withTiming:v6];
}

- (id)animatorForUnexpandingTransformingView:(id)a3 timingParameter:(id)a4 duration:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [UIViewPropertyAnimator alloc];
  if (v9)
  {
    v11 = [v10 initWithDuration:v9 timingParameters:0.0];
  }

  else
  {
    v11 = [v10 initWithDuration:2 curve:0 animations:a5];
  }

  v12 = v11;
  [v11 setFlushUpdates:1];
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (v8)
  {
    [v8 transform];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_54A64;
  v21[3] = &unk_2C7BE8;
  v21[4] = self;
  v13 = v8;
  v22 = v13;
  [v12 addAnimations:v21];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v18 = v23;
  v19 = v24;
  v16[2] = sub_54AC0;
  v16[3] = &unk_2C9C58;
  v20 = v25;
  v17 = v13;
  v14 = v13;
  [v12 addCompletion:v16];

  return v12;
}

- (void)goContractedInteractive:(BOOL)a3 withTiming:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BCCardSetViewController *)self traitCollection];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_54EEC;
  v41[3] = &unk_2C9BB8;
  v41[4] = 1;
  v8 = [v7 traitCollectionByModifyingTraits:v41];

  v9 = isPad();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(BCCardSetViewController *)self currentCardViewController];
    v12 = [v11 topContentViewController];
    v10 = [v12 viewIfLoaded];
  }

  v13 = [v10 backgroundColor];
  v14 = v13;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_54418;
  v39[4] = sub_54428;
  v40 = 0;
  if (v13)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_54EF8;
    v36[3] = &unk_2C7AE0;
    v38 = v39;
    v37 = v13;
    [v8 performAsCurrentTraitCollection:v36];
  }

  if (v14)
  {
    v15 = v9 ^ 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(BCCardSetViewController *)self scrollView];
  v17 = [(BCCardSetViewController *)self animatorForUnexpandingTransformingView:v16 timingParameter:v6 duration:0.2];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_54F5C;
  v32[3] = &unk_2C9CA8;
  v32[4] = self;
  v35 = v15;
  v18 = v10;
  v33 = v18;
  v34 = v39;
  [v17 addAnimations:v32];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_551B4;
  v26 = &unk_2C9C30;
  v31 = v15;
  v27 = self;
  v30 = 1;
  v19 = v18;
  v28 = v19;
  v20 = v14;
  v29 = v20;
  [v17 addCompletion:&v23];
  [v17 setInterruptible:{1, v23, v24, v25, v26, v27}];
  v21 = [(BCCardSetViewController *)self delegate];
  [v21 cardSetViewController:self animatorForUnexpanding:v17];

  if (v4)
  {
    [v17 pauseAnimation];
  }

  v22 = [(BCCardSetViewController *)self currentCardViewController];
  [v22 setAnimator:v17];

  if (!v4)
  {
    [v17 startAnimation];
  }

  _Block_object_dispose(v39, 8);
}

- (void)_goContractedCommon
{
  v3 = [(BCCardSetViewController *)self scrollView];
  [(BCCardSetViewController *)self _goContractedCommonTransformingView:v3];
}

- (void)_goContractedCommonTransformingView:(id)a3
{
  v4 = a3;
  [(BCCardSetViewController *)self contractedTransform];
  v5[0] = v5[3];
  v5[1] = v5[4];
  v5[2] = v5[5];
  [v4 setTransform:v5];
}

- (void)goContracted
{
  [(BCCardSetViewController *)self _goContractedCommon];
  v3 = [(BCCardSetViewController *)self currentCardViewController];
  [v3 goContracted];
}

- (void)goExpanded
{
  v2 = [(BCCardSetViewController *)self currentCardViewController];
  [v2 goExpanded];
}

- (id)animatorForInteractiveDismiss
{
  v3 = objc_alloc_init(BCCardStackInteractiveDismissAnimator);
  v4 = [(BCCardSetViewController *)self displayedCardViewControllers];
  [(BCCardStackInteractiveDismissAnimator *)v3 setDisplayedCardViewControllers:v4];

  [(BCCardStackInteractiveDismissAnimator *)v3 setFocusedIndex:[(BCCardSetViewController *)self currentIndex]];
  [(BCCardSetViewController *)self distanceToDismiss];
  [(BCCardStackInteractiveDismissAnimator *)v3 setMaxSlideDistance:?];
  [(BCCardSetViewController *)self distanceToDismiss];
  v6 = v5;
  v7 = [(BCCardSetViewController *)self configuration];
  [v7 cardContractedScale];
  [(BCCardStackInteractiveDismissAnimator *)v3 setMaxTitleSlideDistance:v6 * v8];

  v9 = [(BCCardSetViewController *)self delegate];
  [v9 cardSetViewController:self animatorForInteractiveDismiss:v3];

  [(BCCardStackInteractiveDismissAnimator *)v3 setupForInteractiveDismiss];

  return v3;
}

- (void)scrollCurrentCardToTop
{
  v3 = [(BCCardSetViewController *)self currentCardViewController];
  v7 = [v3 scrollView];

  [v7 contentOffset];
  v5 = v4;
  [v7 adjustedContentInset];
  [(BCCardSetViewController *)self setScrollToTopVelocity:(v5 + v6) / 300.0];
  [(BCCardSetViewController *)self scrollToTopCardAtIndex:[(BCCardSetViewController *)self focusedIndex] animated:1];
}

- (id)accessibilityScrollStatusForWideTouchScrollView:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(BCCardSetViewController *)self currentCardViewController];
  v6 = [v5 topContentViewController];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 accessibilityCardContentSummary];
    if ([v7 length])
    {
      [v4 addObject:v7];
    }
  }

  v8 = [(BCCardSetViewController *)self currentIndex];
  v9 = [(BCCardSetViewController *)self cardCount];
  v10 = IMCommonCoreBundle();
  v11 = [v10 localizedStringForKey:@"%1$lu of %2$lu" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v12 = [NSString localizedStringWithFormat:v11, v8 + 1, v9];
  [v4 addObject:v12];

  v13 = [v4 componentsJoinedByString:{@", "}];

  return v13;
}

- (double)_flipScrollViewOffsetIfNeeded:(double)a3 width:(double)a4
{
  if ([(BCCardSetViewController *)self _isRTL])
  {
    v7 = [(BCCardSetViewController *)self scrollView];
    [v7 contentSize];
    a3 = v8 - a3 - a4;
  }

  return a3;
}

- (CGRect)_frameForPageAtIndex:(int64_t)a3
{
  [(BCCardSetViewController *)self pagingWidth];
  v6 = v5 * a3;
  [(BCCardSetViewController *)self pagingWidth];
  [(BCCardSetViewController *)self _flipScrollViewOffsetIfNeeded:v6 width:v7];
  v9 = v8;
  [(BCCardSetViewController *)self pagingWidth];
  v11 = v10;
  v12 = [(BCCardSetViewController *)self view];
  [v12 bounds];
  Height = CGRectGetHeight(v18);

  v14 = 0.0;
  v15 = v9;
  v16 = v11;
  v17 = Height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (CGRect)_frameForCardAtIndex:(int64_t)a3
{
  [(BCCardSetViewController *)self cardSize];
  v6 = v5;
  [(BCCardSetViewController *)self pagingWidth];
  v8 = v7;
  [(BCCardSetViewController *)self _cardSeparation];
  [(BCCardSetViewController *)self _flipScrollViewOffsetIfNeeded:v9 * 0.5 + a3 * v8 width:v6];

  CGRectMakeWithOriginSize();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)frameForCardAtIndex:(int64_t)a3 inCoordinatesOfCardAtIndex:(int64_t)a4
{
  [(BCCardSetViewController *)self cardSize];
  [(BCCardSetViewController *)self _isRTL];
  [(BCCardSetViewController *)self pagingWidth];

  CGRectMakeWithOriginSize();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (int64_t)_currentIndexFromScrollViewBounds
{
  v3 = [(BCCardSetViewController *)self dataSource];

  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(BCCardSetViewController *)self cardCount];
  v5 = [(BCCardSetViewController *)self scrollView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = vcvtmd_s64_f64(v7 / v9 + 0.5);
  v11 = v4 - 1;
  v12 = v10 & ~(v10 >> 63);
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if ([(BCCardSetViewController *)self _isRTL])
  {
    return v11 - v13;
  }

  else
  {
    return v13;
  }
}

- (void)_updateCardNavBarAlphaForSliding
{
  [(BCCardSetViewController *)self _frameForPageAtIndex:[(BCCardSetViewController *)self currentIndex]];
  MinX = CGRectGetMinX(v22);
  v4 = [(BCCardSetViewController *)self scrollView];
  [v4 contentOffset];
  v6 = v5;
  *v7.i64 = v5 - MinX;
  v19 = v7;

  [(BCCardSetViewController *)self pagingWidth];
  v9 = vabdd_f64(v6, MinX) / v8;
  v20 = [(BCCardSetViewController *)self cardViewControllerAtIndex:[(BCCardSetViewController *)self currentIndex]];
  v10 = [(BCCardSetViewController *)self currentIndex];
  v11.i64[0] = 1.0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v18 = *vbslq_s8(vnegq_f64(v12), v11, v19).i64;
  v13 = [(BCCardSetViewController *)self cardViewControllerAtIndex:(v18 + v10)];
  if (_UISolariumEnabled())
  {
    [v20 updateNavBarAlphaForTransition:1.0 - v9];
  }

  else if (([v20 itemPushedOnCard] & 1) == 0)
  {
    v14 = [v20 auxiliaryNavigationBarView];
    [v14 setAlpha:1.0 - v9];
  }

  if (_UISolariumEnabled())
  {
    [v13 updateNavBarAlphaForTransition:v9];
  }

  else if (([v13 itemPushedOnCard] & 1) == 0)
  {
    v15 = [v13 auxiliaryNavigationBarView];
    [v15 setAlpha:v9];
  }

  if (*v19.i64 == 0.0)
  {
    v16 = [(BCCardSetViewController *)self cardViewControllerAtIndex:([(BCCardSetViewController *)self currentIndex]- v18)];

    if (_UISolariumEnabled())
    {
      [v16 updateNavBarAlphaForTransition:0.0];
    }

    else if (([v16 itemPushedOnCard] & 1) == 0)
    {
      v17 = [v16 auxiliaryNavigationBarView];
      [v17 setAlpha:0.0];
    }
  }

  else
  {
    v16 = v13;
  }
}

- (void)_updateCurrentIndexIfNeeded
{
  [(BCCardSetViewController *)self _updateCardNavBarAlphaForSliding];
  v3 = [(BCCardSetViewController *)self _currentIndexFromScrollViewBounds];
  v4 = [(BCCardSetViewController *)self currentIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || v4 == v3)
  {
    return;
  }

  v5 = [(BCCardSetViewController *)self scrollView];
  if ([v5 isTracking])
  {
  }

  else
  {
    v6 = [(BCCardSetViewController *)self scrollView];
    v7 = [v6 isDragging];

    if (!v7)
    {
      goto LABEL_12;
    }
  }

  if ([(BCCardSetViewController *)self currentIndex]< v3)
  {
    v8 = 3;
LABEL_11:
    [(BCCardSetViewController *)self setLastNavigationType:v8];
    goto LABEL_12;
  }

  if ([(BCCardSetViewController *)self currentIndex]> v3)
  {
    v8 = 2;
    goto LABEL_11;
  }

LABEL_12:

  [(BCCardSetViewController *)self updateCards];
}

- (void)updateCards
{
  if (!self->_needLayoutCards)
  {
    self->_needLayoutCards = 1;
    v3 = [(BCCardSetViewController *)self view];
    [v3 setNeedsLayout];
  }
}

- (void)updateWithAppendedCards
{
  if ([(BCCardSetViewController *)self isInTransitionUpdateMode])
  {

    [(BCCardSetViewController *)self setCardsAppendedDuringTransition:1];
  }

  else
  {
    v3 = [(BCCardSetViewController *)self view];
    [v3 bounds];
    [(BCCardSetViewController *)self _updateFramesToSize:v4, v5];

    [(BCCardSetViewController *)self _frameForPageAtIndex:[(BCCardSetViewController *)self currentIndex]];
    v7 = v6;
    v9 = v8;
    v10 = [(BCCardSetViewController *)self scrollView];
    [v10 setContentOffset:0 animated:{v7, v9}];

    [(BCCardSetViewController *)self _updateCurrentIndexIfNeeded];

    [(BCCardSetViewController *)self updateCards];
  }
}

- (void)_layoutCards
{
  v3 = [(BCCardSetViewController *)self dataSource];
  v4 = v3;
  if (v3)
  {
    [v3 cardCountForCardSet:self];
    v5 = [(BCCardSetViewController *)self _currentIndexFromScrollViewBounds];
    [(BCCardSetViewController *)self setCurrentIndex:v5];
    if (![(BCCardSetViewController *)self covered])
    {
      v6 = [(BCCardSetViewController *)self configuration];
      [v6 cardBufferCount];
    }

    v7 = [NSIndexSet indexSetWithIndexesInRange:?];
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_5600C;
    v24[3] = &unk_2C9CD0;
    v25 = v7;
    v10 = v8;
    v26 = v10;
    v27 = self;
    v11 = v7;
    [v9 enumerateKeysAndObjectsUsingBlock:v24];

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v13 = [WeakRetained cardNavigationControllerForCardSet:self];

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_5614C;
    v18 = &unk_2C9CF8;
    v19 = v10;
    v20 = self;
    v22 = v5;
    v23 = v13;
    v21 = v4;
    v14 = v10;
    [v11 enumerateIndexesUsingBlock:&v15];
    [(BCCardSetViewController *)self setDisplayedCardViewControllers:v14, v15, v16, v17, v18];
    [(BCCardSetViewController *)self _updateCardNavBarAlphaForSliding];
  }
}

- (_NSRange)_visibleCardRangePassingTest:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self cardCount];
  if (v5)
  {
    v6 = [(BCCardSetViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(BCCardSetViewController *)self contentInset];
    v16 = v8 + v15;
    v18 = v10 + v17;
    v20 = v12 - (v15 + v19);
    v22 = v14 - (v17 + v21);

    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_56A14;
    v32 = &unk_2C9D20;
    v33 = self;
    v35 = v16;
    v36 = v18;
    v37 = v20;
    v38 = v22;
    v34 = v4;
    v23 = objc_retainBlock(&v29);
    v24 = [(BCCardSetViewController *)self currentIndex:v29]+ 1;
    while (1)
    {
      v25 = v24 - 2;
      if (v24 - 2 < 0)
      {
        break;
      }

      --v24;
      if (((v23[2])(v23, v25) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v24 = 0;
LABEL_8:
    v26 = [(BCCardSetViewController *)self currentIndex]- 1;
    while ((v26 + 2) < v5)
    {
      ++v26;
      if (((v23[2])(v23) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v26 = (v5 - 1);
LABEL_13:
    v5 = &v26[-v24 + 1];
  }

  else
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v27 = v24;
  v28 = v5;
  result.length = v28;
  result.location = v27;
  return result;
}

- (_NSRange)visibleCardRange
{
  v2 = [(BCCardSetViewController *)self _visibleCardRangePassingTest:&stru_2C9D60];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)beginTransitionUpdateModeForCardsAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(BCCardSetViewController *)self setIsInTransitionUpdateMode:1];
  v6 = [(BCCardSetViewController *)self displayedCardViewControllers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_56BC8;
  v7[3] = &unk_2C9D80;
  v7[4] = location;
  v7[5] = length;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)endTransitionUpdateMode
{
  [(BCCardSetViewController *)self setIsInTransitionUpdateMode:0];
  v3 = [(BCCardSetViewController *)self displayedCardViewControllers];
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_2C9DA0];

  if ([(BCCardSetViewController *)self cardsAppendedDuringTransition])
  {
    [(BCCardSetViewController *)self updateWithAppendedCards];

    [(BCCardSetViewController *)self setCardsAppendedDuringTransition:0];
  }
}

- (void)presentationTransitionDidComplete
{
  if (!self->_isPresentationTransitionCompleted)
  {
    self->_isPresentationTransitionCompleted = 1;
    [(BCCardSetViewController *)self enumerateAllCardsUsingBlock:&stru_2C9DC0];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = [(BCCardSetViewController *)self scrollView];

  if (v5 == v4)
  {
    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    [(BCCardSetViewController *)self setScrollingAssertions:v6];

    v7 = [(BCCardSetViewController *)self currentIndex];
    v8 = [(BCCardSetViewController *)self scrollStartCardIndex];
    v9 = [v8 integerValue];

    if (v9 != v7)
    {
      sub_1E6248(self);
    }

    v10 = [NSNumber numberWithInteger:v7];
    [(BCCardSetViewController *)self setScrollStartCardIndex:v10];

    [(BCCardSetViewController *)self setIsDragging:1];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self scrollView];

  if (v5 == v4)
  {

    [(BCCardSetViewController *)self _updateCurrentIndexIfNeeded];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = [(BCCardSetViewController *)self scrollView];

  if (v7 == v6)
  {
    sub_1E6248(self);
    if (!a4)
    {

      [(BCCardSetViewController *)self _scrollViewDidEndScrolling];
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self scrollView];

  if (v5 == v4)
  {

    [(BCCardSetViewController *)self _scrollViewDidEndScrolling];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self scrollView];

  if (v5 == v4)
  {

    [(BCCardSetViewController *)self _scrollViewDidEndScrolling];
  }
}

- (id)im_visibleChildViewControllers
{
  v3 = [(BCCardSetViewController *)self currentIndex];
  if (v3 == -1)
  {
    v16 = &__NSArray0__struct;
  }

  else
  {
    v4 = v3;
    v5 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v6 = [NSNumber numberWithUnsignedInteger:v4];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);

    [v9 addObject:v7];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v11 = [v10 allValues];

    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if (*(*(&v18 + 1) + 8 * i) != v7)
          {
            [v9 addObject:?];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    v16 = [v9 copy];
  }

  return v16;
}

- (BOOL)bc_analyticsVisibilityOfChild:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self currentCardViewController];

  return v5 == v4;
}

- (BOOL)cardViewControllerCanCloseAsset:(id)a3
{
  v3 = [(BCCardSetViewController *)self presentingViewController];
  v4 = [v3 bc_canCloseAsset];

  return v4;
}

- (void)cardViewControllerDidTapCloseAllCards:(id)a3
{
  v5 = [(BCCardSetViewController *)self presentingViewController];
  if ([v5 bc_canCloseAsset])
  {
    v4 = [(BCCardSetViewController *)self cardStackViewController];
    [v5 bc_closeToAssetWithCardStackViewController:v4 completion:&stru_2C9DE0];
  }

  else
  {
    [(BCCardSetViewController *)self dismissAllCardsAnimated:1 completion:0];
  }
}

- (void)cardViewControllerDidTapCloseAsset:(id)a3
{
  v5 = [(BCCardSetViewController *)self presentingViewController];
  v4 = [(BCCardSetViewController *)self cardStackViewController];
  [v5 bc_closeAssetWithCardStackViewController:v4 completion:&stru_2C9E00];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [v5 view];
  v7 = [(BCCardSetViewController *)self view];
  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v8 = [v5 view];
    v9 = [(BCCardSetViewController *)self scrollView];
    v10 = v8 == v9;
  }

  return v10;
}

- (void)edgePanGesture:(id)a3
{
  v25 = a3;
  v4 = [(BCCardSetViewController *)self currentCardViewController];
  v5 = [v4 cardNavigationController];
  v6 = [v5 view];

  v7 = [v6 effectiveUserInterfaceLayoutDirection];
  v8 = [v25 view];
  [v25 translationInView:v8];
  v10 = v9;

  v11 = [v25 view];
  [v11 bounds];
  v12 = v10 / CGRectGetWidth(v27);
  if (v7 == &dword_0 + 1)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v13 * v12;

  v15 = [v25 state];
  if (v15 > 2)
  {
    if (v15 == (&dword_0 + 3))
    {
      v22 = [v25 view];
      [v25 velocityInView:v22];
      v24 = v23;

      v17 = [(BCCardSetViewController *)self percentDrivenInteractiveTransition];
      v18 = v17;
      if (v14 > 0.5 || v13 * v24 > 0.0)
      {
        [v17 finishInteractiveTransition];
        goto LABEL_17;
      }
    }

    else
    {
      if (v15 != &dword_4)
      {
        goto LABEL_18;
      }

      v17 = [(BCCardSetViewController *)self percentDrivenInteractiveTransition];
      v18 = v17;
    }

    [v17 cancelInteractiveTransition];
LABEL_17:

    [(BCCardSetViewController *)self setPercentDrivenInteractiveTransition:0];
    goto LABEL_18;
  }

  if (v15 == (&dword_0 + 1))
  {
    v19 = objc_alloc_init(UIPercentDrivenInteractiveTransition);
    [(BCCardSetViewController *)self setPercentDrivenInteractiveTransition:v19];

    v16 = [(BCCardSetViewController *)self currentCardViewController];
    v20 = [v16 cardNavigationController];
    v21 = [v20 popViewControllerAnimated:1];
  }

  else
  {
    if (v15 != (&dword_0 + 2))
    {
      goto LABEL_18;
    }

    v16 = [(BCCardSetViewController *)self percentDrivenInteractiveTransition];
    [v16 updateInteractiveTransition:v14];
  }

LABEL_18:
}

- (void)_didCommitDismissWithVelocity:(double)a3 interactiveAnimator:(id)a4
{
  v6 = a4;
  v7 = [(BCCardSetViewController *)self delegate];
  [v7 cardSetViewController:self didCommitDismissWithVelocity:v6 interactiveAnimator:a3];
}

- (void)suspendAndTeardownForReason:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self displayedCardViewControllers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5785C;
  v7[3] = &unk_2C9A20;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)resumeAndRebuildForReason:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetViewController *)self displayedCardViewControllers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_57918;
  v7[3] = &unk_2C9A20;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0x100000 action:"_goToPreviousCardWithKeyCommand:"];
  [v2 setAllowsAutomaticMirroring:1];
  v3 = [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0x100000 action:"_goToNextCardWithKeyCommand:"];
  [v3 setAllowsAutomaticMirroring:1];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)_goToPreviousCardWithKeyCommand:(id)a3
{
  v4 = [(BCCardSetViewController *)self currentIndex];
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = [(BCCardSetViewController *)self scrollStartCardIndex];

    if (!v6)
    {

      [(BCCardSetViewController *)self setFocusedIndex:v5 animated:1];
    }
  }
}

- (void)_goToNextCardWithKeyCommand:(id)a3
{
  v4 = [(BCCardSetViewController *)self currentIndex]+ 1;
  if (v4 < [(BCCardSetViewController *)self cardCount])
  {
    v5 = [(BCCardSetViewController *)self scrollStartCardIndex];

    if (!v5)
    {

      [(BCCardSetViewController *)self setFocusedIndex:v4 animated:1];
    }
  }
}

- (CGAffineTransform)expandedTransform
{
  v3 = *&self[7].b;
  *&retstr->a = *&self[6].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[7].d;
  return self;
}

- (void)setExpandedTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_expandedTransform.a = *&a3->a;
  *&self->_expandedTransform.c = v4;
  *&self->_expandedTransform.tx = v3;
}

- (CGAffineTransform)contractedTransform
{
  v3 = *&self[8].b;
  *&retstr->a = *&self[7].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].d;
  return self;
}

- (void)setContractedTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_contractedTransform.a = *&a3->a;
  *&self->_contractedTransform.c = v4;
  *&self->_contractedTransform.tx = v3;
}

- (BCCardSetDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BCCardSetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BCCardStackConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)initialFrame
{
  x = self->_initialFrame.origin.x;
  y = self->_initialFrame.origin.y;
  width = self->_initialFrame.size.width;
  height = self->_initialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)cardSize
{
  width = self->_cardSize.width;
  height = self->_cardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_scrollViewDidEndScrolling
{
  kdebug_trace();
  sub_1E6248(self);
  v3 = [(BCCardSetViewController *)self scrollStartCardIndex];

  if (v3)
  {
    [(BCCardSetViewController *)self setScrollingAssertions:0];
    [(BCCardSetViewController *)self setScrollStartCardIndex:0];
  }

  [(BCCardSetViewController *)self setIsDragging:0];
}

@end