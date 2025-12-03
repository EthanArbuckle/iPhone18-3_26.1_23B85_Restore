@interface BCCardSetViewController
- (BCCardSetDataSource)dataSource;
- (BCCardSetDelegate)delegate;
- (BCCardSetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BCCardStackConfiguration)configuration;
- (BCCardViewController)currentCardViewController;
- (BOOL)bc_analyticsVisibilityOfChild:(id)child;
- (BOOL)cardViewControllerCanCloseAsset:(id)asset;
- (BOOL)expanded;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)itemPushedOnCardAtIndex:(unint64_t)index;
- (CGAffineTransform)contractedTransform;
- (CGAffineTransform)expandedTransform;
- (CGRect)_frameForCardAtIndex:(int64_t)index;
- (CGRect)_frameForPageAtIndex:(int64_t)index;
- (CGRect)frameForCardAtIndex:(int64_t)index inCoordinatesOfCardAtIndex:(int64_t)atIndex;
- (CGRect)initialFrame;
- (CGSize)cardSize;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)contentInsetForCards;
- (UIEdgeInsets)horizontalContentInset;
- (_NSRange)_visibleCardRangePassingTest:(id)test;
- (_NSRange)visibleCardRange;
- (double)_cardSeparation;
- (double)_cardWidthForContainerWidth:(double)width usingConfiguration:(id)configuration;
- (double)_debugDragCoefficient;
- (double)_flipScrollViewOffsetIfNeeded:(double)needed width:(double)width;
- (double)_xOffsetForHiddenSideCardOnLeadingSide:(BOOL)side;
- (double)cutoffToDismissScrollView:(id)view;
- (double)scaleOffset:(double)offset withTransform:(CGAffineTransform *)transform;
- (id)accessibilityScrollStatusForWideTouchScrollView:(id)view;
- (id)animatorForExpandingTransformingView:(id)view timingParameter:(id)parameter duration:(double)duration;
- (id)animatorForInteractiveDismiss;
- (id)animatorForUnexpandingTransformingView:(id)view timingParameter:(id)parameter duration:(double)duration;
- (id)cardViewControllerAtIndex:(unint64_t)index;
- (id)expandedCardViewController;
- (id)im_visibleChildViewControllers;
- (id)keyCommands;
- (int64_t)_currentIndexFromScrollViewBounds;
- (unint64_t)cardCount;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_applicationWillEnterForegroundNotification:(id)notification;
- (void)_didBecomeVisibleContentScrollView;
- (void)_didCommitDismissWithVelocity:(double)velocity interactiveAnimator:(id)animator;
- (void)_goContractedCommon;
- (void)_goContractedCommonTransformingView:(id)view;
- (void)_goToNextCardWithKeyCommand:(id)command;
- (void)_goToPreviousCardWithKeyCommand:(id)command;
- (void)_layoutCards;
- (void)_scrollViewDidEndScrolling;
- (void)_updateCardNavBarAlphaForSliding;
- (void)_updateCurrentIndexIfNeeded;
- (void)_updateFramesToSize:(CGSize)size;
- (void)animationCompletedExpanded:(BOOL)expanded;
- (void)backgroundTapped:(id)tapped;
- (void)beginTransitionUpdateModeForCardsAtRange:(_NSRange)range;
- (void)cardLayoutDidChange:(BOOL)change;
- (void)cardTapped:(id)tapped;
- (void)cardViewControllerDidTapCloseAllCards:(id)cards;
- (void)cardViewControllerDidTapCloseAsset:(id)asset;
- (void)clearSavedContentOffsetsForCardAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)didBecomeTopCardSet;
- (void)dismissAllCardsAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissCardStackAnimated:(BOOL)animated;
- (void)edgePanGesture:(id)gesture;
- (void)endTransitionUpdateMode;
- (void)enumerateAllCardsUsingBlock:(id)block;
- (void)goContracted;
- (void)goContractedInteractive:(BOOL)interactive;
- (void)goContractedInteractive:(BOOL)interactive withTiming:(id)timing;
- (void)goContractedWithBounce:(double)bounce;
- (void)goExpanded;
- (void)goExpandedInteractive:(BOOL)interactive;
- (void)loadView;
- (void)prepareForDismiss;
- (void)presentationTransitionDidComplete;
- (void)resumeAndRebuildForReason:(id)reason;
- (void)scrollCurrentCardToTop;
- (void)scrollToTopCardAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContractedTransform:(CGAffineTransform *)transform;
- (void)setCovered:(BOOL)covered animated:(BOOL)animated duration:(double)duration;
- (void)setDataSource:(id)source;
- (void)setExpandedTransform:(CGAffineTransform *)transform;
- (void)setFocusedIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setLastNavigationType:(int64_t)type;
- (void)suspendAndTeardownForReason:(id)reason;
- (void)updateCards;
- (void)updateContractedTransform;
- (void)updateWithAppendedCards;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)zoomingAnimationCompletedAtPosition:(int64_t)position;
@end

@implementation BCCardSetViewController

- (BCCardSetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = BCCardSetViewController;
  v4 = [(BCCardSetViewController *)&v12 initWithNibName:name bundle:bundle];
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

- (void)_applicationWillEnterForegroundNotification:(id)notification
{
  viewState = [(BCCardSetViewController *)self viewState];

  if (viewState)
  {
    view = [(BCCardSetViewController *)self view];
    [view size];
    v7 = v6;
    v9 = v8;
    viewState2 = [(BCCardSetViewController *)self viewState];
    [viewState2 viewSize];
    v12 = v11;
    v14 = v13;

    if (v7 == v12 && v9 == v14)
    {
      viewState3 = [(BCCardSetViewController *)self viewState];
      isExpanded = [viewState3 isExpanded];
      expanded = [(BCCardSetViewController *)self expanded];

      if (isExpanded != expanded)
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

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  viewState = [(BCCardSetViewController *)self viewState];

  if (!viewState)
  {
    v5 = [BCCardSetViewControllerViewState alloc];
    expanded = [(BCCardSetViewController *)self expanded];
    view = [(BCCardSetViewController *)self view];
    [view size];
    v7 = [(BCCardSetViewControllerViewState *)v5 initWithIsExpanded:expanded viewSize:?];
    [(BCCardSetViewController *)self setViewState:v7];
  }
}

- (id)expandedCardViewController
{
  if ([(BCCardSetViewController *)self expanded])
  {
    currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  }

  else
  {
    currentCardViewController = 0;
  }

  return currentCardViewController;
}

- (BCCardViewController)currentCardViewController
{
  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  v4 = [NSNumber numberWithUnsignedInteger:[(BCCardSetViewController *)self currentIndex]];
  v5 = [displayedCardViewControllers objectForKeyedSubscript:v4];

  return v5;
}

- (unint64_t)cardCount
{
  dataSource = [(BCCardSetViewController *)self dataSource];
  if (dataSource)
  {
    dataSource2 = [(BCCardSetViewController *)self dataSource];
    v5 = [dataSource2 cardCountForCardSet:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  left = self->_contentInset.left;
  right = self->_contentInset.right;
  if (left != inset.left || self->_contentInset.top != inset.top || right != inset.right || self->_contentInset.bottom != inset.bottom)
  {
    v23[5] = v6;
    v23[6] = v5;
    v23[9] = v3;
    v23[10] = v4;
    self->_contentInset = inset;
    if (inset.left != left || inset.right != right)
    {
      if ([(BCCardSetViewController *)self isViewLoaded])
      {
        view = [(BCCardSetViewController *)self view];
        [view bounds];
        [(BCCardSetViewController *)self _updateFramesToSize:v15, v16];

        [(BCCardSetViewController *)self _frameForPageAtIndex:[(BCCardSetViewController *)self currentIndex]];
        v18 = v17;
        v20 = v19;
        scrollView = [(BCCardSetViewController *)self scrollView];
        [scrollView setContentOffset:0 animated:{v18, v20}];

        [(BCCardSetViewController *)self updateCards];
      }
    }

    displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_5125C;
    v23[3] = &unk_2C9A20;
    v23[4] = self;
    [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:v23];
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

- (void)setLastNavigationType:(int64_t)type
{
  self->_lastNavigationType = type;
  visibleCardRange = [(BCCardSetViewController *)self visibleCardRange];
  if (v6)
  {
    v7 = visibleCardRange;
    v8 = v6;
    do
    {
      v9 = [(BCCardSetViewController *)self cardViewControllerAtIndex:v7];
      topContentViewController = [v9 topContentViewController];
      v11 = BUProtocolCast();

      [v11 cardSetViewController:self willUpdateWithNavigationType:type];
      ++v7;
      --v8;
    }

    while (v8);
  }
}

- (double)_cardSeparation
{
  view = [(BCCardSetViewController *)self view];
  [view bounds];
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

  configuration = [(BCCardSetViewController *)self configuration];
  [configuration cardGapForContainerWidth:Width];
  v21 = v20;
  configuration2 = [(BCCardSetViewController *)self configuration];
  [configuration2 cardContractedScale];
  v24 = v21 / v23;

  return v24;
}

- (double)cutoffToDismissScrollView:(id)view
{
  [view frame];
  Height = CGRectGetHeight(v7);
  [(BCCardSetViewController *)self distanceToExpand];
  return floor((Height - v5) * 0.2);
}

- (double)scaleOffset:(double)offset withTransform:(CGAffineTransform *)transform
{
  view = [(BCCardSetViewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(BCCardSetViewController *)self horizontalContentInset];
  v17 = v9 + v16;
  v19 = v11 + v18;
  v21 = v13 - (v16 + v20);
  v23 = v15 - (v18 + v22);

  v24 = *&transform->c;
  *&v33.a = *&transform->a;
  *&v33.c = v24;
  *&v33.tx = *&transform->tx;
  v25 = v17;
  *&v24 = v19;
  v26 = v21;
  v27 = v23;
  v34 = CGRectApplyAffineTransform(*(&v24 - 8), &v33);
  height = v34.size.height;
  v29 = [(BCCardSetViewController *)self view:v34.origin.x];
  [v29 bounds];
  v31 = (offset + (v30 - height) * -0.5) / transform->d;

  return v31;
}

- (void)updateContractedTransform
{
  configuration = [(BCCardSetViewController *)self configuration];
  [configuration cardContractedScale];
  v5 = v4;
  configuration2 = [(BCCardSetViewController *)self configuration];
  [configuration2 cardContractedScale];
  CGAffineTransformMakeScale(&v26, v5, v7);
  v25 = v26;
  [(BCCardSetViewController *)self setContractedTransform:&v25];

  configuration3 = [(BCCardSetViewController *)self configuration];
  [configuration3 cardUnexpandedTopOffset];
  v10 = v9;
  [(BCCardSetViewController *)self contractedTransform];
  [(BCCardSetViewController *)self scaleOffset:&v25 withTransform:v10];
  v12 = v11;

  scrollView = [(BCCardSetViewController *)self scrollView];
  [scrollView bounds];
  Height = CGRectGetHeight(v27);

  configuration4 = [(BCCardSetViewController *)self configuration];
  [configuration4 cardUnexpandedTopOffset];
  v17 = v16;
  configuration5 = [(BCCardSetViewController *)self configuration];
  [configuration5 cardExpandedTopOffset];
  [(BCCardSetViewController *)self setDistanceToExpand:v17 - v19];

  [(BCCardSetViewController *)self distanceToExpand];
  v21 = Height - v20;
  configuration6 = [(BCCardSetViewController *)self configuration];
  [configuration6 cardContractedScale];
  [(BCCardSetViewController *)self setDistanceToDismiss:v21 / v23];

  [(BCCardSetViewController *)self setScaledContractedOffset:v12];
  configuration7 = [(BCCardSetViewController *)self configuration];
  [configuration7 cardsCanExpand];
}

- (void)cardTapped:(id)tapped
{
  tappedCopy = tapped;
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];

  if (currentCardViewController != tappedCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_51884;
    v11 = &unk_2C9A48;
    v12 = tappedCopy;
    v13 = &v14;
    [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:&v8];

    v7 = v15[3];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BCCardSetViewController *)self setFocusedIndex:v7 animated:1, v8, v9, v10, v11];
    }

    _Block_object_dispose(&v14, 8);
  }
}

- (void)dismissCardStackAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cardStackViewController = [(BCCardSetViewController *)self cardStackViewController];
  [cardStackViewController popCardsAnimated:animatedCopy];
}

- (void)dismissAllCardsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  cardStackViewController = [(BCCardSetViewController *)self cardStackViewController];
  [cardStackViewController popAllCardsAnimated:animatedCopy completion:completionCopy];
}

- (void)backgroundTapped:(id)tapped
{
  if ([tapped state] == &dword_0 + 3)
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
  view = [(BCCardSetViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(BCCardSetViewController *)self view];
  [view2 setAccessibilityViewIsModal:1];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"backgroundTapped:"];
  [v6 setDelegate:self];
  view3 = [(BCCardSetViewController *)self view];
  [view3 addGestureRecognizer:v6];

  [(BCCardSetViewController *)self setTapToDismissGestureRecognizer:v6];
  v8 = [[BCCardSetWideTouchScrollView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BCCardSetWideTouchScrollView *)v8 setAccessibilityDelegate:self];
  [(BCCardSetWideTouchScrollView *)v8 _setPocketsEnabled:0];
  [(BCCardSetViewController *)self setScrollView:v8];
  scrollView = [(BCCardSetViewController *)self scrollView];
  [scrollView setPagingEnabled:1];

  scrollView2 = [(BCCardSetViewController *)self scrollView];
  [scrollView2 setClipsToBounds:0];

  scrollView3 = [(BCCardSetViewController *)self scrollView];
  [scrollView3 setShowsHorizontalScrollIndicator:0];

  scrollView4 = [(BCCardSetViewController *)self scrollView];
  [scrollView4 setShowsVerticalScrollIndicator:0];

  view4 = [(BCCardSetViewController *)self view];
  [view4 bounds];
  [(BCCardSetViewController *)self _updateFramesToSize:v14, v15];

  [(BCCardSetViewController *)self _frameForPageAtIndex:[(BCCardSetViewController *)self currentIndex]];
  v17 = v16;
  v19 = v18;
  scrollView5 = [(BCCardSetViewController *)self scrollView];
  [scrollView5 setContentOffset:0 animated:{v17, v19}];

  view5 = [(BCCardSetViewController *)self view];
  scrollView6 = [(BCCardSetViewController *)self scrollView];
  [view5 addSubview:scrollView6];

  v23 = *&CGAffineTransformIdentity.c;
  v25[0] = *&CGAffineTransformIdentity.a;
  v25[1] = v23;
  v25[2] = *&CGAffineTransformIdentity.tx;
  [(BCCardSetViewController *)self setExpandedTransform:v25];
  [(BCCardSetViewController *)self updateContractedTransform];
  [(BCCardSetViewController *)self updateCards];
  [(BCCardSetViewController *)self goContracted];
  scrollView7 = [(BCCardSetViewController *)self scrollView];
  [scrollView7 setDelegate:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v4 viewDidAppear:appear];
  [(BCCardSetViewController *)self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v4 viewWillDisappear:disappear];
  [(BCCardSetViewController *)self resignFirstResponder];
}

- (BOOL)expanded
{
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  expanded = [currentCardViewController expanded];

  return expanded;
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    v5 = obj;
  }
}

- (void)setCovered:(BOOL)covered animated:(BOOL)animated duration:(double)duration
{
  if (self->_covered != covered)
  {
    animatedCopy = animated;
    self->_covered = covered;
    view = [(BCCardSetViewController *)self view];
    [view bounds];
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

    scrollView = [(BCCardSetViewController *)self scrollView];
    [scrollView frame];
    v26 = ceil(Width + floor(v25) * -0.5);
    [(BCCardSetViewController *)self _cardSeparation];
    v28 = v27 + v26;

    configuration = [(BCCardSetViewController *)self configuration];
    [configuration cardContractedScale];
    v31 = v28 / v30;

    cardCount = [(BCCardSetViewController *)self cardCount];
    currentIndex = [(BCCardSetViewController *)self currentIndex];
    if (currentIndex <= 0)
    {
      v34 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = currentIndex - 1;
    }

    if (currentIndex + 1 < cardCount)
    {
      v35 = currentIndex + 1;
    }

    else
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    _isRTL = [(BCCardSetViewController *)self _isRTL];
    if (_isRTL)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    if (_isRTL)
    {
      v34 = v35;
    }

    if (self->_covered)
    {
      displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
      v39 = [NSNumber numberWithInteger:v34];
      v40 = [displayedCardViewControllers objectForKeyedSubscript:v39];

      displayedCardViewControllers2 = [(BCCardSetViewController *)self displayedCardViewControllers];
      v42 = [NSNumber numberWithInteger:v37];
      v43 = [displayedCardViewControllers2 objectForKeyedSubscript:v42];

      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_52444;
      v76[3] = &unk_2C9A70;
      v76[4] = self;
      v79 = animatedCopy;
      v44 = v40;
      v77 = v44;
      v45 = v43;
      v78 = v45;
      v46 = objc_retainBlock(v76);
      if (animatedCopy)
      {
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_524E8;
        v70[3] = &unk_2C9A98;
        v71 = v44;
        v74 = v31;
        v72 = v45;
        selfCopy = self;
        durationCopy = duration;
        [UIView animateWithDuration:v70 animations:v46 completion:duration];
      }

      else
      {
        currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
        [currentCardViewController setScrimAlpha:0 animated:0.2 duration:duration];

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
      if (animatedCopy)
      {
        displayedCardViewControllers3 = [(BCCardSetViewController *)self displayedCardViewControllers];
        v48 = [NSNumber numberWithInteger:v34];
        v49 = [displayedCardViewControllers3 objectForKeyedSubscript:v48];

        displayedCardViewControllers4 = [(BCCardSetViewController *)self displayedCardViewControllers];
        v51 = [NSNumber numberWithInteger:v37];
        v52 = [displayedCardViewControllers4 objectForKeyedSubscript:v51];

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
        currentCardViewController3 = v53;
        [UIView animateWithDuration:v62 animations:duration];
        currentCardViewController2 = [(BCCardSetViewController *)self currentCardViewController];
        [currentCardViewController2 setScrimAlpha:1 animated:0.0 duration:duration];
      }

      else
      {
        currentCardViewController3 = [(BCCardSetViewController *)self currentCardViewController];
        [currentCardViewController3 setScrimAlpha:0 animated:0.0 duration:duration];
      }
    }

    displayedCardViewControllers5 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v60 = [NSNumber numberWithUnsignedInteger:[(BCCardSetViewController *)self currentIndex]];
    v61 = [displayedCardViewControllers5 objectForKeyedSubscript:v60];

    [v61 setIsCurrentCard:!self->_covered];
  }
}

- (void)didBecomeTopCardSet
{
  configuration = [(BCCardSetViewController *)self configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if (cardsCanExpand)
  {

    [(BCCardSetViewController *)self _didBecomeVisibleContentScrollView];
  }
}

- (void)_didBecomeVisibleContentScrollView
{
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  topContentViewController = [currentCardViewController topContentViewController];
  [topContentViewController didBecomeVisibleContentScrollView];
}

- (void)setFocusedIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  dataSource = [(BCCardSetViewController *)self dataSource];
  if (dataSource)
  {
    v23 = dataSource;
    currentIndex = [(BCCardSetViewController *)self currentIndex];
    scrollStartCardIndex = [(BCCardSetViewController *)self scrollStartCardIndex];

    if (!scrollStartCardIndex && animatedCopy)
    {
      v10 = [NSNumber numberWithInteger:currentIndex];
      [(BCCardSetViewController *)self setScrollStartCardIndex:v10];
    }

    if ((currentIndex & 0x8000000000000000) == 0 && currentIndex != index)
    {
      displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
      v12 = [NSNumber numberWithInteger:currentIndex];
      v13 = [displayedCardViewControllers objectForKeyedSubscript:v12];

      [v13 setIsCurrentCard:0];
    }

    v14 = [v23 cardCountForCardSet:self];
    if ((v14 - 1) < index)
    {
      index = (v14 - 1);
    }

    [(BCCardSetViewController *)self _frameForPageAtIndex:index];
    v16 = v15;
    v18 = v17;
    scrollView = [(BCCardSetViewController *)self scrollView];
    [scrollView setContentOffset:animatedCopy animated:{v16, v18}];

    [(BCCardSetViewController *)self _updateCurrentIndexIfNeeded];
    dataSource = v23;
    if (currentIndex != index)
    {
      displayedCardViewControllers2 = [(BCCardSetViewController *)self displayedCardViewControllers];
      v21 = [NSNumber numberWithUnsignedInteger:index];
      v22 = [displayedCardViewControllers2 objectForKeyedSubscript:v21];

      [v22 setIsCurrentCard:{-[BCCardSetViewController covered](self, "covered") ^ 1}];
      dataSource = v23;
    }
  }
}

- (BOOL)itemPushedOnCardAtIndex:(unint64_t)index
{
  suspendedCardViewControllers = [(BCCardSetViewController *)self suspendedCardViewControllers];
  v6 = [NSNumber numberWithUnsignedInteger:index];
  v7 = [suspendedCardViewControllers objectForKeyedSubscript:v6];

  v8 = [(BCCardSetViewController *)self cardViewControllerAtIndex:index];
  if ([v7 itemPushedOnCard])
  {
    itemPushedOnCard = 1;
  }

  else
  {
    itemPushedOnCard = [v8 itemPushedOnCard];
  }

  return itemPushedOnCard;
}

- (void)clearSavedContentOffsetsForCardAtIndex:(unint64_t)index
{
  suspendedCardViewControllers = [(BCCardSetViewController *)self suspendedCardViewControllers];
  v5 = [NSNumber numberWithUnsignedInteger:index];
  v6 = [suspendedCardViewControllers objectForKeyedSubscript:v5];

  [v6 clearSavedContentOffsets];
}

- (void)scrollToTopCardAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  suspendedCardViewControllers = [(BCCardSetViewController *)self suspendedCardViewControllers];
  v8 = [NSNumber numberWithUnsignedInteger:index];
  v10 = [suspendedCardViewControllers objectForKeyedSubscript:v8];

  v9 = [(BCCardSetViewController *)self cardViewControllerAtIndex:index];
  [v10 scrollToTop:0];
  [v9 scrollToTop:animatedCopy];
  [(BCCardSetViewController *)self setScrollToTopVelocity:0.0];
}

- (id)cardViewControllerAtIndex:(unint64_t)index
{
  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  v5 = [NSNumber numberWithUnsignedInteger:index];
  v6 = [displayedCardViewControllers objectForKeyedSubscript:v5];

  return v6;
}

- (void)enumerateAllCardsUsingBlock:(id)block
{
  blockCopy = block;
  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:blockCopy];

  suspendedCardViewControllers = [(BCCardSetViewController *)self suspendedCardViewControllers];
  [suspendedCardViewControllers enumerateKeysAndObjectsUsingBlock:blockCopy];
}

- (void)cardLayoutDidChange:(BOOL)change
{
  changeCopy = change;
  focusedIndex = [(BCCardSetViewController *)self focusedIndex];
  view = [(BCCardSetViewController *)self view];
  [view bounds];
  [(BCCardSetViewController *)self _updateFramesToSize:v7, v8];

  [(BCCardSetViewController *)self updateContractedTransform];
  dataSource = [(BCCardSetViewController *)self dataSource];
  v10 = [dataSource isTopCardSetViewController:self];

  configuration = [(BCCardSetViewController *)self configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if (cardsCanExpand)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    if (changeCopy)
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
      if (changeCopy)
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
    v24 = changeCopy;
    [(BCCardSetViewController *)self enumerateAllCardsUsingBlock:v23];
  }

  expanded = [(BCCardSetViewController *)self expanded];
  scrollView = [(BCCardSetViewController *)self scrollView];
  [scrollView setScrollEnabled:expanded ^ 1];

  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  [currentCardViewController setRawCurrentCardOffset:0.0];

  [(BCCardSetViewController *)self updateCards];
  [(BCCardSetViewController *)self setFocusedIndex:focusedIndex];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_53138;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_after(0, &_dispatch_main_q, block);
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v26.receiver = self;
  v26.super_class = BCCardSetViewController;
  collectionCopy = collection;
  [(BCCardSetViewController *)&v26 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  traitCollection = [(BCCardSetViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [collectionCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
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
    displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_53338;
    v22[3] = &unk_2C9B08;
    v24 = v11;
    v25 = v12;
    v15 = v13;
    v23 = v15;
    [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:v22];

    configuration = [(BCCardSetViewController *)self configuration];
    cardsCanExpand = [configuration cardsCanExpand];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_533D8;
    v19[3] = &unk_2C9B30;
    v19[4] = self;
    v20 = v15;
    v21 = cardsCanExpand;
    v18 = v15;
    [coordinatorCopy animateAlongsideTransition:0 completion:v19];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = BCCardSetViewController;
  coordinatorCopy = coordinator;
  [(BCCardSetViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5369C;
  v8[3] = &unk_2C9B58;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewWillLayoutSubviews
{
  if (self->_needLayoutCards && ![(BCCardSetViewController *)self isInTransitionUpdateMode])
  {
    [(BCCardSetViewController *)self _layoutCards];
    self->_needLayoutCards = 0;
  }

  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5392C;
  v5[3] = &unk_2C9A20;
  v5[4] = self;
  [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:v5];

  v4.receiver = self;
  v4.super_class = BCCardSetViewController;
  [(BCCardSetViewController *)&v4 viewWillLayoutSubviews];
}

- (void)prepareForDismiss
{
  scrollView = [(BCCardSetViewController *)self scrollView];
  [scrollView _stopScrollingAndZoomingAnimations];

  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:&stru_2C9B98];
}

- (double)_xOffsetForHiddenSideCardOnLeadingSide:(BOOL)side
{
  sideCopy = side;
  _isRTL = [(BCCardSetViewController *)self _isRTL];
  result = 50.0;
  if (_isRTL != sideCopy)
  {
    return -50.0;
  }

  return result;
}

- (double)_cardWidthForContainerWidth:(double)width usingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([configurationCopy cardsCanExpand] & 1) == 0)
  {
    [configurationCopy contractedCardWidthForContainerWidth:width];
    width = v6;
  }

  return width;
}

- (void)_updateFramesToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(BCCardSetViewController *)self contentInset];
  v7 = width - v6;
  [(BCCardSetViewController *)self contentInset];
  v9 = v7 - v8;
  configuration = [(BCCardSetViewController *)self configuration];
  [(BCCardSetViewController *)self _cardWidthForContainerWidth:configuration usingConfiguration:v9];
  v12 = v11;

  [(BCCardSetViewController *)self setCardSize:v12, height];
  [(BCCardSetViewController *)self _cardSeparation];
  v14 = v12 + v13;
  [(BCCardSetViewController *)self setPagingWidth:v14];
  [(BCCardSetViewController *)self contentInset];
  view = [(BCCardSetViewController *)self view];
  UIRoundToViewScale();

  CGRectMakeWithOriginSize();
  CGRectGetCenterNoRounding();
  v17 = v16;
  v19 = v18;
  scrollView = [(BCCardSetViewController *)self scrollView];
  [scrollView setCenter:{v17, v19}];

  scrollView2 = [(BCCardSetViewController *)self scrollView];
  [scrollView2 bounds];
  CGRectMakeWithOriginSize();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  scrollView3 = [(BCCardSetViewController *)self scrollView];
  [scrollView3 setBounds:{v23, v25, v27, v29}];

  v31 = v14 * [(BCCardSetViewController *)self cardCount];
  scrollView4 = [(BCCardSetViewController *)self scrollView];
  [scrollView4 setContentSize:{v31, height}];
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

- (void)animationCompletedExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v5 = !expanded;
  scrollView = [(BCCardSetViewController *)self scrollView];
  [scrollView setScrollEnabled:v5];

  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  v8 = currentCardViewController;
  if (v5)
  {
    [currentCardViewController configureChromeForContracted];
  }

  else
  {
    [currentCardViewController configureChromeForExpanded];
  }

  delegate = [(BCCardSetViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(BCCardSetViewController *)self delegate];
    [delegate2 cardSetViewController:self animationCompletedExpanded:expandedCopy];
  }
}

- (void)zoomingAnimationCompletedAtPosition:(int64_t)position
{
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  [currentCardViewController animationCompletedAtPosition:position];
}

- (id)animatorForExpandingTransformingView:(id)view timingParameter:(id)parameter duration:(double)duration
{
  viewCopy = view;
  parameterCopy = parameter;
  v10 = [UIViewPropertyAnimator alloc];
  if (parameterCopy)
  {
    v11 = [v10 initWithDuration:parameterCopy timingParameters:0.0];
  }

  else
  {
    v11 = [v10 initWithDuration:2 curve:0 animations:duration];
  }

  v12 = v11;
  [v11 setFlushUpdates:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_53FD0;
  v15[3] = &unk_2C7BE8;
  v16 = viewCopy;
  selfCopy = self;
  v13 = viewCopy;
  [v12 addAnimations:v15];

  return v12;
}

- (void)goExpandedInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  traitCollection = [(BCCardSetViewController *)self traitCollection];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_5440C;
  v43[3] = &unk_2C9BB8;
  v43[4] = 0;
  v6 = [traitCollection traitCollectionByModifyingTraits:v43];

  v7 = isPad();
  viewIfLoaded = 0;
  if ((v7 & 1) == 0)
  {
    currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
    topContentViewController = [currentCardViewController topContentViewController];
    viewIfLoaded = [topContentViewController viewIfLoaded];
  }

  backgroundColor = [viewIfLoaded backgroundColor];
  v12 = backgroundColor;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_54418;
  v41[4] = sub_54428;
  v42 = 0;
  if (backgroundColor)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_54430;
    v38[3] = &unk_2C7AE0;
    v40 = v41;
    v39 = backgroundColor;
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
  cardStackViewController = [(BCCardSetViewController *)self cardStackViewController];
  statusBarBackgroundController = [cardStackViewController statusBarBackgroundController];
  [statusBarBackgroundController setOpacity:(v14 ^ 1u)];

  scrollView = [(BCCardSetViewController *)self scrollView];
  v18 = [(BCCardSetViewController *)self animatorForExpandingTransformingView:scrollView duration:0.2];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_54494;
  v33[3] = &unk_2C9C08;
  v33[4] = self;
  v36 = v13;
  v19 = viewIfLoaded;
  v34 = v19;
  v35 = v41;
  v37 = v14;
  [v18 addAnimations:v33];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_546E4;
  v27 = &unk_2C9C30;
  v32 = v13;
  selfCopy = self;
  v31 = 0;
  v20 = v19;
  v29 = v20;
  v21 = v12;
  v30 = v21;
  [v18 addCompletion:&v24];
  [v18 setInterruptible:{1, v24, v25, v26, v27, selfCopy}];
  delegate = [(BCCardSetViewController *)self delegate];
  [delegate cardSetViewController:self animatorForExpanding:v18];

  if (interactiveCopy)
  {
    [v18 pauseAnimation];
  }

  currentCardViewController2 = [(BCCardSetViewController *)self currentCardViewController];
  [currentCardViewController2 setAnimator:v18];

  if (!interactiveCopy)
  {
    [v18 startAnimation];
  }

  _Block_object_dispose(v41, 8);
}

- (void)goContractedInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  [(BCCardSetViewController *)self scrollToTopVelocity];
  if (v5 == 0.0)
  {

    [(BCCardSetViewController *)self goContractedInteractive:interactiveCopy withTiming:0];
  }

  else
  {
    [(BCCardSetViewController *)self scrollToTopVelocity];
    v7 = v6;
    [(BCCardSetViewController *)self setScrollToTopVelocity:0.0];

    [(BCCardSetViewController *)self goContractedWithBounce:v7];
  }
}

- (void)goContractedWithBounce:(double)bounce
{
  v4 = fabs(bounce * 1000000000.0 / 1000000.0);
  [(BCCardSetViewController *)self distanceToExpand];
  v6 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:100.0 damping:80.0 initialVelocity:{v4 / v5, 0.0}];
  [(BCCardSetViewController *)self goContractedInteractive:1 withTiming:v6];
}

- (id)animatorForUnexpandingTransformingView:(id)view timingParameter:(id)parameter duration:(double)duration
{
  viewCopy = view;
  parameterCopy = parameter;
  v10 = [UIViewPropertyAnimator alloc];
  if (parameterCopy)
  {
    v11 = [v10 initWithDuration:parameterCopy timingParameters:0.0];
  }

  else
  {
    v11 = [v10 initWithDuration:2 curve:0 animations:duration];
  }

  v12 = v11;
  [v11 setFlushUpdates:1];
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (viewCopy)
  {
    [viewCopy transform];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_54A64;
  v21[3] = &unk_2C7BE8;
  v21[4] = self;
  v13 = viewCopy;
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

- (void)goContractedInteractive:(BOOL)interactive withTiming:(id)timing
{
  interactiveCopy = interactive;
  timingCopy = timing;
  traitCollection = [(BCCardSetViewController *)self traitCollection];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_54EEC;
  v41[3] = &unk_2C9BB8;
  v41[4] = 1;
  v8 = [traitCollection traitCollectionByModifyingTraits:v41];

  v9 = isPad();
  if (v9)
  {
    viewIfLoaded = 0;
  }

  else
  {
    currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
    topContentViewController = [currentCardViewController topContentViewController];
    viewIfLoaded = [topContentViewController viewIfLoaded];
  }

  backgroundColor = [viewIfLoaded backgroundColor];
  v14 = backgroundColor;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_54418;
  v39[4] = sub_54428;
  v40 = 0;
  if (backgroundColor)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_54EF8;
    v36[3] = &unk_2C7AE0;
    v38 = v39;
    v37 = backgroundColor;
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

  scrollView = [(BCCardSetViewController *)self scrollView];
  v17 = [(BCCardSetViewController *)self animatorForUnexpandingTransformingView:scrollView timingParameter:timingCopy duration:0.2];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_54F5C;
  v32[3] = &unk_2C9CA8;
  v32[4] = self;
  v35 = v15;
  v18 = viewIfLoaded;
  v33 = v18;
  v34 = v39;
  [v17 addAnimations:v32];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_551B4;
  v26 = &unk_2C9C30;
  v31 = v15;
  selfCopy = self;
  v30 = 1;
  v19 = v18;
  v28 = v19;
  v20 = v14;
  v29 = v20;
  [v17 addCompletion:&v23];
  [v17 setInterruptible:{1, v23, v24, v25, v26, selfCopy}];
  delegate = [(BCCardSetViewController *)self delegate];
  [delegate cardSetViewController:self animatorForUnexpanding:v17];

  if (interactiveCopy)
  {
    [v17 pauseAnimation];
  }

  currentCardViewController2 = [(BCCardSetViewController *)self currentCardViewController];
  [currentCardViewController2 setAnimator:v17];

  if (!interactiveCopy)
  {
    [v17 startAnimation];
  }

  _Block_object_dispose(v39, 8);
}

- (void)_goContractedCommon
{
  scrollView = [(BCCardSetViewController *)self scrollView];
  [(BCCardSetViewController *)self _goContractedCommonTransformingView:scrollView];
}

- (void)_goContractedCommonTransformingView:(id)view
{
  viewCopy = view;
  [(BCCardSetViewController *)self contractedTransform];
  v5[0] = v5[3];
  v5[1] = v5[4];
  v5[2] = v5[5];
  [viewCopy setTransform:v5];
}

- (void)goContracted
{
  [(BCCardSetViewController *)self _goContractedCommon];
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  [currentCardViewController goContracted];
}

- (void)goExpanded
{
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  [currentCardViewController goExpanded];
}

- (id)animatorForInteractiveDismiss
{
  v3 = objc_alloc_init(BCCardStackInteractiveDismissAnimator);
  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  [(BCCardStackInteractiveDismissAnimator *)v3 setDisplayedCardViewControllers:displayedCardViewControllers];

  [(BCCardStackInteractiveDismissAnimator *)v3 setFocusedIndex:[(BCCardSetViewController *)self currentIndex]];
  [(BCCardSetViewController *)self distanceToDismiss];
  [(BCCardStackInteractiveDismissAnimator *)v3 setMaxSlideDistance:?];
  [(BCCardSetViewController *)self distanceToDismiss];
  v6 = v5;
  configuration = [(BCCardSetViewController *)self configuration];
  [configuration cardContractedScale];
  [(BCCardStackInteractiveDismissAnimator *)v3 setMaxTitleSlideDistance:v6 * v8];

  delegate = [(BCCardSetViewController *)self delegate];
  [delegate cardSetViewController:self animatorForInteractiveDismiss:v3];

  [(BCCardStackInteractiveDismissAnimator *)v3 setupForInteractiveDismiss];

  return v3;
}

- (void)scrollCurrentCardToTop
{
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  scrollView = [currentCardViewController scrollView];

  [scrollView contentOffset];
  v5 = v4;
  [scrollView adjustedContentInset];
  [(BCCardSetViewController *)self setScrollToTopVelocity:(v5 + v6) / 300.0];
  [(BCCardSetViewController *)self scrollToTopCardAtIndex:[(BCCardSetViewController *)self focusedIndex] animated:1];
}

- (id)accessibilityScrollStatusForWideTouchScrollView:(id)view
{
  v4 = objc_opt_new();
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  topContentViewController = [currentCardViewController topContentViewController];

  if (objc_opt_respondsToSelector())
  {
    accessibilityCardContentSummary = [topContentViewController accessibilityCardContentSummary];
    if ([accessibilityCardContentSummary length])
    {
      [v4 addObject:accessibilityCardContentSummary];
    }
  }

  currentIndex = [(BCCardSetViewController *)self currentIndex];
  cardCount = [(BCCardSetViewController *)self cardCount];
  v10 = IMCommonCoreBundle();
  v11 = [v10 localizedStringForKey:@"%1$lu of %2$lu" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v12 = [NSString localizedStringWithFormat:v11, currentIndex + 1, cardCount];
  [v4 addObject:v12];

  v13 = [v4 componentsJoinedByString:{@", "}];

  return v13;
}

- (double)_flipScrollViewOffsetIfNeeded:(double)needed width:(double)width
{
  if ([(BCCardSetViewController *)self _isRTL])
  {
    scrollView = [(BCCardSetViewController *)self scrollView];
    [scrollView contentSize];
    needed = v8 - needed - width;
  }

  return needed;
}

- (CGRect)_frameForPageAtIndex:(int64_t)index
{
  [(BCCardSetViewController *)self pagingWidth];
  v6 = v5 * index;
  [(BCCardSetViewController *)self pagingWidth];
  [(BCCardSetViewController *)self _flipScrollViewOffsetIfNeeded:v6 width:v7];
  v9 = v8;
  [(BCCardSetViewController *)self pagingWidth];
  v11 = v10;
  view = [(BCCardSetViewController *)self view];
  [view bounds];
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

- (CGRect)_frameForCardAtIndex:(int64_t)index
{
  [(BCCardSetViewController *)self cardSize];
  v6 = v5;
  [(BCCardSetViewController *)self pagingWidth];
  v8 = v7;
  [(BCCardSetViewController *)self _cardSeparation];
  [(BCCardSetViewController *)self _flipScrollViewOffsetIfNeeded:v9 * 0.5 + index * v8 width:v6];

  CGRectMakeWithOriginSize();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)frameForCardAtIndex:(int64_t)index inCoordinatesOfCardAtIndex:(int64_t)atIndex
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
  dataSource = [(BCCardSetViewController *)self dataSource];

  if (!dataSource)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  cardCount = [(BCCardSetViewController *)self cardCount];
  scrollView = [(BCCardSetViewController *)self scrollView];
  [scrollView bounds];
  v7 = v6;
  v9 = v8;

  v10 = vcvtmd_s64_f64(v7 / v9 + 0.5);
  v11 = cardCount - 1;
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
  scrollView = [(BCCardSetViewController *)self scrollView];
  [scrollView contentOffset];
  v6 = v5;
  *v7.i64 = v5 - MinX;
  v19 = v7;

  [(BCCardSetViewController *)self pagingWidth];
  v9 = vabdd_f64(v6, MinX) / v8;
  v20 = [(BCCardSetViewController *)self cardViewControllerAtIndex:[(BCCardSetViewController *)self currentIndex]];
  currentIndex = [(BCCardSetViewController *)self currentIndex];
  v11.i64[0] = 1.0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v18 = *vbslq_s8(vnegq_f64(v12), v11, v19).i64;
  v13 = [(BCCardSetViewController *)self cardViewControllerAtIndex:(v18 + currentIndex)];
  if (_UISolariumEnabled())
  {
    [v20 updateNavBarAlphaForTransition:1.0 - v9];
  }

  else if (([v20 itemPushedOnCard] & 1) == 0)
  {
    auxiliaryNavigationBarView = [v20 auxiliaryNavigationBarView];
    [auxiliaryNavigationBarView setAlpha:1.0 - v9];
  }

  if (_UISolariumEnabled())
  {
    [v13 updateNavBarAlphaForTransition:v9];
  }

  else if (([v13 itemPushedOnCard] & 1) == 0)
  {
    auxiliaryNavigationBarView2 = [v13 auxiliaryNavigationBarView];
    [auxiliaryNavigationBarView2 setAlpha:v9];
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
      auxiliaryNavigationBarView3 = [v16 auxiliaryNavigationBarView];
      [auxiliaryNavigationBarView3 setAlpha:0.0];
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
  _currentIndexFromScrollViewBounds = [(BCCardSetViewController *)self _currentIndexFromScrollViewBounds];
  currentIndex = [(BCCardSetViewController *)self currentIndex];
  if (_currentIndexFromScrollViewBounds == 0x7FFFFFFFFFFFFFFFLL || currentIndex == _currentIndexFromScrollViewBounds)
  {
    return;
  }

  scrollView = [(BCCardSetViewController *)self scrollView];
  if ([scrollView isTracking])
  {
  }

  else
  {
    scrollView2 = [(BCCardSetViewController *)self scrollView];
    isDragging = [scrollView2 isDragging];

    if (!isDragging)
    {
      goto LABEL_12;
    }
  }

  if ([(BCCardSetViewController *)self currentIndex]< _currentIndexFromScrollViewBounds)
  {
    v8 = 3;
LABEL_11:
    [(BCCardSetViewController *)self setLastNavigationType:v8];
    goto LABEL_12;
  }

  if ([(BCCardSetViewController *)self currentIndex]> _currentIndexFromScrollViewBounds)
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
    view = [(BCCardSetViewController *)self view];
    [view setNeedsLayout];
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
    view = [(BCCardSetViewController *)self view];
    [view bounds];
    [(BCCardSetViewController *)self _updateFramesToSize:v4, v5];

    [(BCCardSetViewController *)self _frameForPageAtIndex:[(BCCardSetViewController *)self currentIndex]];
    v7 = v6;
    v9 = v8;
    scrollView = [(BCCardSetViewController *)self scrollView];
    [scrollView setContentOffset:0 animated:{v7, v9}];

    [(BCCardSetViewController *)self _updateCurrentIndexIfNeeded];

    [(BCCardSetViewController *)self updateCards];
  }
}

- (void)_layoutCards
{
  dataSource = [(BCCardSetViewController *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    [dataSource cardCountForCardSet:self];
    _currentIndexFromScrollViewBounds = [(BCCardSetViewController *)self _currentIndexFromScrollViewBounds];
    [(BCCardSetViewController *)self setCurrentIndex:_currentIndexFromScrollViewBounds];
    if (![(BCCardSetViewController *)self covered])
    {
      configuration = [(BCCardSetViewController *)self configuration];
      [configuration cardBufferCount];
    }

    v7 = [NSIndexSet indexSetWithIndexesInRange:?];
    v8 = objc_alloc_init(NSMutableDictionary);
    displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_5600C;
    v24[3] = &unk_2C9CD0;
    v25 = v7;
    v10 = v8;
    v26 = v10;
    selfCopy = self;
    v11 = v7;
    [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:v24];

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v13 = [WeakRetained cardNavigationControllerForCardSet:self];

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_5614C;
    v18 = &unk_2C9CF8;
    v19 = v10;
    selfCopy2 = self;
    v22 = _currentIndexFromScrollViewBounds;
    v23 = v13;
    v21 = v4;
    v14 = v10;
    [v11 enumerateIndexesUsingBlock:&v15];
    [(BCCardSetViewController *)self setDisplayedCardViewControllers:v14, v15, v16, v17, v18];
    [(BCCardSetViewController *)self _updateCardNavBarAlphaForSliding];
  }
}

- (_NSRange)_visibleCardRangePassingTest:(id)test
{
  testCopy = test;
  cardCount = [(BCCardSetViewController *)self cardCount];
  if (cardCount)
  {
    view = [(BCCardSetViewController *)self view];
    [view bounds];
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
    selfCopy = self;
    v35 = v16;
    v36 = v18;
    v37 = v20;
    v38 = v22;
    v34 = testCopy;
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
    while ((v26 + 2) < cardCount)
    {
      ++v26;
      if (((v23[2])(v23) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v26 = (cardCount - 1);
LABEL_13:
    cardCount = &v26[-v24 + 1];
  }

  else
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v27 = v24;
  v28 = cardCount;
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

- (void)beginTransitionUpdateModeForCardsAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(BCCardSetViewController *)self setIsInTransitionUpdateMode:1];
  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_56BC8;
  v7[3] = &unk_2C9D80;
  v7[4] = location;
  v7[5] = length;
  [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)endTransitionUpdateMode
{
  [(BCCardSetViewController *)self setIsInTransitionUpdateMode:0];
  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:&stru_2C9DA0];

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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  kdebug_trace();
  scrollView = [(BCCardSetViewController *)self scrollView];

  if (scrollView == draggingCopy)
  {
    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    [(BCCardSetViewController *)self setScrollingAssertions:v6];

    currentIndex = [(BCCardSetViewController *)self currentIndex];
    scrollStartCardIndex = [(BCCardSetViewController *)self scrollStartCardIndex];
    integerValue = [scrollStartCardIndex integerValue];

    if (integerValue != currentIndex)
    {
      sub_1E6248(self);
    }

    v10 = [NSNumber numberWithInteger:currentIndex];
    [(BCCardSetViewController *)self setScrollStartCardIndex:v10];

    [(BCCardSetViewController *)self setIsDragging:1];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollView = [(BCCardSetViewController *)self scrollView];

  if (scrollView == scrollCopy)
  {

    [(BCCardSetViewController *)self _updateCurrentIndexIfNeeded];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  scrollView = [(BCCardSetViewController *)self scrollView];

  if (scrollView == draggingCopy)
  {
    sub_1E6248(self);
    if (!decelerate)
    {

      [(BCCardSetViewController *)self _scrollViewDidEndScrolling];
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  scrollView = [(BCCardSetViewController *)self scrollView];

  if (scrollView == deceleratingCopy)
  {

    [(BCCardSetViewController *)self _scrollViewDidEndScrolling];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  scrollView = [(BCCardSetViewController *)self scrollView];

  if (scrollView == animationCopy)
  {

    [(BCCardSetViewController *)self _scrollViewDidEndScrolling];
  }
}

- (id)im_visibleChildViewControllers
{
  currentIndex = [(BCCardSetViewController *)self currentIndex];
  if (currentIndex == -1)
  {
    v16 = &__NSArray0__struct;
  }

  else
  {
    v4 = currentIndex;
    displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
    v6 = [NSNumber numberWithUnsignedInteger:v4];
    v7 = [displayedCardViewControllers objectForKeyedSubscript:v6];

    displayedCardViewControllers2 = [(BCCardSetViewController *)self displayedCardViewControllers];
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [displayedCardViewControllers2 count]);

    [v9 addObject:v7];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    displayedCardViewControllers3 = [(BCCardSetViewController *)self displayedCardViewControllers];
    allValues = [displayedCardViewControllers3 allValues];

    v12 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allValues);
          }

          if (*(*(&v18 + 1) + 8 * i) != v7)
          {
            [v9 addObject:?];
          }
        }

        v13 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    v16 = [v9 copy];
  }

  return v16;
}

- (BOOL)bc_analyticsVisibilityOfChild:(id)child
{
  childCopy = child;
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];

  return currentCardViewController == childCopy;
}

- (BOOL)cardViewControllerCanCloseAsset:(id)asset
{
  presentingViewController = [(BCCardSetViewController *)self presentingViewController];
  bc_canCloseAsset = [presentingViewController bc_canCloseAsset];

  return bc_canCloseAsset;
}

- (void)cardViewControllerDidTapCloseAllCards:(id)cards
{
  presentingViewController = [(BCCardSetViewController *)self presentingViewController];
  if ([presentingViewController bc_canCloseAsset])
  {
    cardStackViewController = [(BCCardSetViewController *)self cardStackViewController];
    [presentingViewController bc_closeToAssetWithCardStackViewController:cardStackViewController completion:&stru_2C9DE0];
  }

  else
  {
    [(BCCardSetViewController *)self dismissAllCardsAnimated:1 completion:0];
  }
}

- (void)cardViewControllerDidTapCloseAsset:(id)asset
{
  presentingViewController = [(BCCardSetViewController *)self presentingViewController];
  cardStackViewController = [(BCCardSetViewController *)self cardStackViewController];
  [presentingViewController bc_closeAssetWithCardStackViewController:cardStackViewController completion:&stru_2C9E00];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [touchCopy view];
  view2 = [(BCCardSetViewController *)self view];
  if (view == view2)
  {
    v10 = 1;
  }

  else
  {
    view3 = [touchCopy view];
    scrollView = [(BCCardSetViewController *)self scrollView];
    v10 = view3 == scrollView;
  }

  return v10;
}

- (void)edgePanGesture:(id)gesture
{
  gestureCopy = gesture;
  currentCardViewController = [(BCCardSetViewController *)self currentCardViewController];
  cardNavigationController = [currentCardViewController cardNavigationController];
  view = [cardNavigationController view];

  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
  view2 = [gestureCopy view];
  [gestureCopy translationInView:view2];
  v10 = v9;

  view3 = [gestureCopy view];
  [view3 bounds];
  v12 = v10 / CGRectGetWidth(v27);
  if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v13 * v12;

  state = [gestureCopy state];
  if (state > 2)
  {
    if (state == (&dword_0 + 3))
    {
      view4 = [gestureCopy view];
      [gestureCopy velocityInView:view4];
      v24 = v23;

      percentDrivenInteractiveTransition = [(BCCardSetViewController *)self percentDrivenInteractiveTransition];
      v18 = percentDrivenInteractiveTransition;
      if (v14 > 0.5 || v13 * v24 > 0.0)
      {
        [percentDrivenInteractiveTransition finishInteractiveTransition];
        goto LABEL_17;
      }
    }

    else
    {
      if (state != &dword_4)
      {
        goto LABEL_18;
      }

      percentDrivenInteractiveTransition = [(BCCardSetViewController *)self percentDrivenInteractiveTransition];
      v18 = percentDrivenInteractiveTransition;
    }

    [percentDrivenInteractiveTransition cancelInteractiveTransition];
LABEL_17:

    [(BCCardSetViewController *)self setPercentDrivenInteractiveTransition:0];
    goto LABEL_18;
  }

  if (state == (&dword_0 + 1))
  {
    v19 = objc_alloc_init(UIPercentDrivenInteractiveTransition);
    [(BCCardSetViewController *)self setPercentDrivenInteractiveTransition:v19];

    currentCardViewController2 = [(BCCardSetViewController *)self currentCardViewController];
    cardNavigationController2 = [currentCardViewController2 cardNavigationController];
    v21 = [cardNavigationController2 popViewControllerAnimated:1];
  }

  else
  {
    if (state != (&dword_0 + 2))
    {
      goto LABEL_18;
    }

    currentCardViewController2 = [(BCCardSetViewController *)self percentDrivenInteractiveTransition];
    [currentCardViewController2 updateInteractiveTransition:v14];
  }

LABEL_18:
}

- (void)_didCommitDismissWithVelocity:(double)velocity interactiveAnimator:(id)animator
{
  animatorCopy = animator;
  delegate = [(BCCardSetViewController *)self delegate];
  [delegate cardSetViewController:self didCommitDismissWithVelocity:animatorCopy interactiveAnimator:velocity];
}

- (void)suspendAndTeardownForReason:(id)reason
{
  reasonCopy = reason;
  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5785C;
  v7[3] = &unk_2C9A20;
  v8 = reasonCopy;
  v6 = reasonCopy;
  [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)resumeAndRebuildForReason:(id)reason
{
  reasonCopy = reason;
  displayedCardViewControllers = [(BCCardSetViewController *)self displayedCardViewControllers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_57918;
  v7[3] = &unk_2C9A20;
  v8 = reasonCopy;
  v6 = reasonCopy;
  [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:v7];
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

- (void)_goToPreviousCardWithKeyCommand:(id)command
{
  currentIndex = [(BCCardSetViewController *)self currentIndex];
  v5 = currentIndex - 1;
  if (currentIndex >= 1)
  {
    scrollStartCardIndex = [(BCCardSetViewController *)self scrollStartCardIndex];

    if (!scrollStartCardIndex)
    {

      [(BCCardSetViewController *)self setFocusedIndex:v5 animated:1];
    }
  }
}

- (void)_goToNextCardWithKeyCommand:(id)command
{
  v4 = [(BCCardSetViewController *)self currentIndex]+ 1;
  if (v4 < [(BCCardSetViewController *)self cardCount])
  {
    scrollStartCardIndex = [(BCCardSetViewController *)self scrollStartCardIndex];

    if (!scrollStartCardIndex)
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

- (void)setExpandedTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_expandedTransform.a = *&transform->a;
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

- (void)setContractedTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_contractedTransform.a = *&transform->a;
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
  scrollStartCardIndex = [(BCCardSetViewController *)self scrollStartCardIndex];

  if (scrollStartCardIndex)
  {
    [(BCCardSetViewController *)self setScrollingAssertions:0];
    [(BCCardSetViewController *)self setScrollStartCardIndex:0];
  }

  [(BCCardSetViewController *)self setIsDragging:0];
}

@end