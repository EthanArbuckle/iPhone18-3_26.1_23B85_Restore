@interface CompactMonthListAnimator
- (CGPoint)listViewNormalLocation;
- (CGPoint)monthViewSplittingLocation;
- (CGRect)monthSplittingCutOutArea;
- (CGRect)weekDayInitialsMonth;
- (CompactMonthListAnimator)initWithModel:(id)model paletteView:(id)view reverse:(BOOL)reverse;
- (void)_haltAnimations;
- (void)_solariumAnimateToListWithCompletion:(id)completion inContext:(id)context;
- (void)_solariumAnimateToMonthWithCompletion:(id)completion inContext:(id)context;
- (void)_terminateAnimationsAfterDelay;
- (void)animateToListWithCompletion:(id)completion inContext:(id)context;
- (void)animateToMonthWithCompletion:(id)completion inContext:(id)context;
- (void)animateTransition:(id)transition;
@end

@implementation CompactMonthListAnimator

- (CompactMonthListAnimator)initWithModel:(id)model paletteView:(id)view reverse:(BOOL)reverse
{
  modelCopy = model;
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = CompactMonthListAnimator;
  v11 = [(CompactMonthListAnimator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_reverse = reverse;
    objc_storeStrong(&v11->_model, model);
    objc_storeStrong(&v12->_paletteView, view);
    size = CGRectNull.size;
    v12->_monthSplittingCutOutArea.origin = CGRectNull.origin;
    v12->_monthSplittingCutOutArea.size = size;
    v14 = CGPointZero;
    v12->_listViewNormalLocation = CGPointZero;
    v12->_monthViewSplittingLocation = v14;
  }

  return v12;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  view = [v5 view];
  view2 = [v6 view];
  containerView = [transitionCopy containerView];
  v44 = view2;
  if ([(CompactMonthListAnimator *)self reverse])
  {
    [containerView addSubview:view2];
  }

  else
  {
    [containerView insertSubview:view2 belowSubview:view];
  }

  reverse = [(CompactMonthListAnimator *)self reverse];
  v11 = reverse == 0;
  if (reverse)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  if (v11)
  {
    v13 = v6;
  }

  else
  {
    v13 = v5;
  }

  currentChildViewController = [v12 currentChildViewController];
  currentChildViewController2 = [v13 currentChildViewController];
  objc_storeStrong(&self->_monthViewController, currentChildViewController);
  objc_storeStrong(&self->_listViewController, currentChildViewController2);
  [transitionCopy finalFrameForViewController:v6];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  view3 = [v6 view];
  [view3 setFrame:{v17, v19, v21, v23}];

  [v6 viewWillLayoutSubviews];
  view4 = [v6 view];
  [view4 layoutSubviews];

  [v6 viewDidLayoutSubviews];
  [(PaletteView *)self->_paletteView layoutSubviews];
  selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
  date = [selectedDate date];
  v43 = containerView;
  if ([(CompactMonthListAnimator *)self reverse])
  {
    [currentChildViewController showDate:date animated:0];
  }

  else
  {
    [currentChildViewController2 selectDate:selectedDate animated:0];
  }

  currentChildViewController3 = [v6 currentChildViewController];

  if (currentChildViewController == currentChildViewController3)
  {
    v42 = view;
    selectedDate2 = [(CUIKCalendarModel *)self->_model selectedDate];
    v30 = [currentChildViewController subviewForDate:selectedDate2];

    if (!v30)
    {
      view5 = [currentChildViewController view];
      [view5 layoutBelowIfNeeded];

      selectedDate3 = [(CUIKCalendarModel *)self->_model selectedDate];
      v30 = [currentChildViewController subviewForDate:selectedDate3];
    }

    [v30 layoutSubviews];

    view = v42;
  }

  [currentChildViewController frameForWeekContainingDate:date];
  self->_monthSplittingCutOutArea.origin.x = v35;
  self->_monthSplittingCutOutArea.origin.y = v33 + v34;
  self->_monthSplittingCutOutArea.size.width = v36;
  self->_monthSplittingCutOutArea.size.height = 1.0;
  self->_monthViewSplittingLocation = self->_monthSplittingCutOutArea.origin;
  view6 = [(CompactListViewController *)self->_listViewController view];
  [view6 frame];
  self->_listViewNormalLocation.x = v38;
  self->_listViewNormalLocation.y = v39;

  [currentChildViewController updatePalette:self->_paletteView];
  [(PaletteView *)self->_paletteView layoutSubviews];
  dayInitialsHeaderView = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [dayInitialsHeaderView frame];
  [(CompactMonthListAnimator *)self setWeekDayInitialsMonth:?];

  self->_animating = 1;
  if ([(CompactMonthListAnimator *)self reverse])
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100038264;
    v47[3] = &unk_10020EB00;
    v41 = &v48;
    v48 = transitionCopy;
    [(CompactMonthListAnimator *)self animateToMonthWithCompletion:v47 inContext:transitionCopy];
  }

  else
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000382C4;
    v45[3] = &unk_10020EB00;
    v41 = &v46;
    v46 = transitionCopy;
    [(CompactMonthListAnimator *)self animateToListWithCompletion:v45 inContext:transitionCopy];
  }
}

- (void)_terminateAnimationsAfterDelay
{
  v3 = dispatch_time(0, 600000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000383B4;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)_solariumAnimateToListWithCompletion:(id)completion inContext:(id)context
{
  completionCopy = completion;
  if ([(CompactMonthListAnimator *)self animating])
  {
    [(CompactMonthListAnimator *)self _haltAnimations];
  }

  monthViewController = [(CompactMonthListAnimator *)self monthViewController];
  [(CompactMonthListAnimator *)self monthSplittingCutOutArea];
  [monthViewController enterAnimationSplitStateWithCutOutArea:? topBoundary:?];

  listViewController = [(CompactMonthListAnimator *)self listViewController];
  navigationController = [listViewController navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v11 = v10;

  [(CompactMonthListAnimator *)self monthViewSplittingLocation];
  v13 = v12;
  v15 = v14 - v11;
  monthViewController2 = [(CompactMonthListAnimator *)self monthViewController];
  [monthViewController2 setSplitStateOpen:0];

  monthViewController3 = [(CompactMonthListAnimator *)self monthViewController];
  view = [monthViewController3 view];
  [view setAlpha:1.0];

  listViewController2 = [(CompactMonthListAnimator *)self listViewController];
  view2 = [listViewController2 view];
  [view2 frame];
  v22 = v21;
  v24 = v23;

  listViewController3 = [(CompactMonthListAnimator *)self listViewController];
  view3 = [listViewController3 view];
  [view3 setFrame:{v13, v15, v22, v24}];

  listViewController4 = [(CompactMonthListAnimator *)self listViewController];
  view4 = [listViewController4 view];
  [view4 setAlpha:0.0];

  springAnimationDuration();
  v30 = v29;
  v31 = +[SpringFactory sharedFactory];
  v58 = _NSConcreteStackBlock;
  v59 = 3221225472;
  v60 = sub_100038848;
  v61 = &unk_10020EB00;
  selfCopy = self;
  v32 = navigationAnimationsPreferringFRR();
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100038984;
  v56[3] = &unk_10020F308;
  v56[4] = self;
  v57 = completionCopy;
  v33 = completionCopy;
  [UIView _animateWithDuration:393216 delay:v31 options:v32 factory:v56 animations:v30 completion:0.0];

  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  paletteView = [(CompactMonthListAnimator *)self paletteView];
  dayInitialsHeaderView = [paletteView dayInitialsHeaderView];
  [dayInitialsHeaderView setFrame:{v35, v37, v39, v41}];

  paletteView2 = [(CompactMonthListAnimator *)self paletteView];
  dayInitialsHeaderView2 = [paletteView2 dayInitialsHeaderView];
  [dayInitialsHeaderView2 setAlpha:1.0];

  paletteView3 = [(CompactMonthListAnimator *)self paletteView];
  dateLabel = [paletteView3 dateLabel];
  [dateLabel setHidden:1];

  paletteView4 = [(CompactMonthListAnimator *)self paletteView];
  animatableDateLabel = [paletteView4 animatableDateLabel];
  [animatableDateLabel setAlpha:1.0];

  paletteView5 = [(CompactMonthListAnimator *)self paletteView];
  [paletteView5 setSuppressLayout:1];

  springAnimationDuration();
  v52 = v51;
  v53 = +[SpringFactory sharedFactory];
  v55[5] = _NSConcreteStackBlock;
  v55[6] = 3221225472;
  v55[7] = sub_100038A94;
  v55[8] = &unk_10020EB00;
  v55[9] = self;
  v54 = navigationAnimationsPreferringFRR();
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100038B98;
  v55[3] = &unk_10020EB98;
  v55[4] = self;
  [UIView _animateWithDuration:393216 delay:v53 options:v54 factory:v55 animations:v52 completion:0.0];
}

- (void)animateToListWithCompletion:(id)completion inContext:(id)context
{
  completionCopy = completion;
  contextCopy = context;
  if (CalSystemSolariumEnabled())
  {
    [(CompactMonthListAnimator *)self _solariumAnimateToListWithCompletion:completionCopy inContext:contextCopy];
  }

  else
  {
    if ([(CompactMonthListAnimator *)self animating])
    {
      [(CompactMonthListAnimator *)self _haltAnimations];
    }

    monthViewController = [(CompactMonthListAnimator *)self monthViewController];
    [(CompactMonthListAnimator *)self monthSplittingCutOutArea];
    [monthViewController enterAnimationSplitStateWithCutOutArea:? topBoundary:?];

    listViewController = [(CompactMonthListAnimator *)self listViewController];
    navigationController = [listViewController navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v13 = v12;

    [(CompactMonthListAnimator *)self monthViewSplittingLocation];
    v15 = v14;
    v17 = v16 - v13;
    monthViewController2 = [(CompactMonthListAnimator *)self monthViewController];
    [monthViewController2 setSplitStateOpen:0];

    monthViewController3 = [(CompactMonthListAnimator *)self monthViewController];
    view = [monthViewController3 view];
    [view setAlpha:1.0];

    listViewController2 = [(CompactMonthListAnimator *)self listViewController];
    view2 = [listViewController2 view];
    [view2 frame];
    v24 = v23;
    v26 = v25;

    listViewController3 = [(CompactMonthListAnimator *)self listViewController];
    view3 = [listViewController3 view];
    [view3 setFrame:{v15, v17, v24, v26}];

    listViewController4 = [(CompactMonthListAnimator *)self listViewController];
    view4 = [listViewController4 view];
    [view4 setAlpha:0.0];

    springAnimationDuration();
    v32 = v31;
    v33 = +[SpringFactory sharedFactory];
    v63[5] = _NSConcreteStackBlock;
    v63[6] = 3221225472;
    v63[7] = sub_100039148;
    v63[8] = &unk_10020EB00;
    v63[9] = self;
    v34 = navigationAnimationsPreferringFRR();
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100039284;
    v63[3] = &unk_10020EB98;
    v63[4] = self;
    [UIView _animateWithDuration:393216 delay:v33 options:v34 factory:v63 animations:v32 completion:0.0];

    [(CompactMonthListAnimator *)self weekDayInitialsMonth];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    paletteView = [(CompactMonthListAnimator *)self paletteView];
    dayInitialsHeaderView = [paletteView dayInitialsHeaderView];
    [dayInitialsHeaderView setFrame:{v36, v38, v40, v42}];

    paletteView2 = [(CompactMonthListAnimator *)self paletteView];
    dayInitialsHeaderView2 = [paletteView2 dayInitialsHeaderView];
    [dayInitialsHeaderView2 setAlpha:1.0];

    paletteView3 = [(CompactMonthListAnimator *)self paletteView];
    dateLabel = [paletteView3 dateLabel];
    [dateLabel setHidden:1];

    paletteView4 = [(CompactMonthListAnimator *)self paletteView];
    animatableDateLabel = [paletteView4 animatableDateLabel];
    [animatableDateLabel setAlpha:1.0];

    paletteView5 = [(CompactMonthListAnimator *)self paletteView];
    [paletteView5 setSuppressLayout:1];

    springAnimationDuration();
    v53 = v52;
    v54 = +[SpringFactory sharedFactory];
    v58 = _NSConcreteStackBlock;
    v59 = 3221225472;
    v60 = sub_100039378;
    v61 = &unk_10020EB00;
    selfCopy = self;
    v55 = navigationAnimationsPreferringFRR();
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10003947C;
    v56[3] = &unk_10020F308;
    v56[4] = self;
    v57 = completionCopy;
    [UIView _animateWithDuration:393216 delay:v54 options:v55 factory:v56 animations:v53 completion:0.0];
  }
}

- (void)_solariumAnimateToMonthWithCompletion:(id)completion inContext:(id)context
{
  completionCopy = completion;
  if ([(CompactMonthListAnimator *)self animating])
  {
    [(CompactMonthListAnimator *)self _haltAnimations];
  }

  monthViewController = [(CompactMonthListAnimator *)self monthViewController];
  [(CompactMonthListAnimator *)self monthSplittingCutOutArea];
  [monthViewController enterAnimationSplitStateWithCutOutArea:? topBoundary:?];

  listViewController = [(CompactMonthListAnimator *)self listViewController];
  navigationController = [listViewController navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v11 = v10;

  [(CompactMonthListAnimator *)self monthViewSplittingLocation];
  v13 = v12;
  v15 = v14 - v11;
  monthViewController2 = [(CompactMonthListAnimator *)self monthViewController];
  [monthViewController2 setSplitStateOpen:1];

  monthViewController3 = [(CompactMonthListAnimator *)self monthViewController];
  view = [monthViewController3 view];
  [view setAlpha:0.0];

  listViewController2 = [(CompactMonthListAnimator *)self listViewController];
  view2 = [listViewController2 view];
  [view2 frame];
  v22 = v21;
  v24 = v23;

  [(CompactMonthListAnimator *)self listViewNormalLocation];
  v26 = v25;
  v28 = v27;
  listViewController3 = [(CompactMonthListAnimator *)self listViewController];
  view3 = [listViewController3 view];
  [view3 setFrame:{v26, v28, v22, v24}];

  listViewController4 = [(CompactMonthListAnimator *)self listViewController];
  view4 = [listViewController4 view];
  [view4 setAlpha:1.0];

  springAnimationDuration();
  v34 = v33;
  v35 = +[SpringFactory sharedFactory];
  v60 = _NSConcreteStackBlock;
  v61 = 3221225472;
  v62 = sub_100039A40;
  v63 = &unk_10020EDD8;
  selfCopy = self;
  v65 = v13;
  v66 = v15;
  v36 = navigationAnimationsPreferringFRR();
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100039B70;
  v58[3] = &unk_10020F308;
  v58[4] = self;
  v59 = completionCopy;
  v37 = completionCopy;
  [UIView _animateWithDuration:393216 delay:v35 options:v36 factory:v58 animations:v34 completion:0.0];

  paletteView = [(CompactMonthListAnimator *)self paletteView];
  dateLabel = [paletteView dateLabel];
  [dateLabel setHidden:1];

  paletteView2 = [(CompactMonthListAnimator *)self paletteView];
  animatableDateLabel = [paletteView2 animatableDateLabel];
  [animatableDateLabel setAlpha:0.0];

  paletteView3 = [(CompactMonthListAnimator *)self paletteView];
  dayInitialsHeaderView = [paletteView3 dayInitialsHeaderView];
  [dayInitialsHeaderView setAlpha:0.0];

  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v45 = v44;
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v47 = v46;
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v49 = v48;
  paletteView4 = [(CompactMonthListAnimator *)self paletteView];
  dayInitialsHeaderView2 = [paletteView4 dayInitialsHeaderView];
  [dayInitialsHeaderView2 setFrame:{v45, 0.0, v47, v49}];

  paletteView5 = [(CompactMonthListAnimator *)self paletteView];
  [paletteView5 setSuppressLayout:1];

  springAnimationDuration();
  v54 = v53;
  v55 = +[SpringFactory sharedFactory];
  v57[5] = _NSConcreteStackBlock;
  v57[6] = 3221225472;
  v57[7] = sub_100039BC4;
  v57[8] = &unk_10020EB00;
  v57[9] = self;
  v56 = navigationAnimationsPreferringFRR();
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100039CBC;
  v57[3] = &unk_10020EB98;
  v57[4] = self;
  [UIView _animateWithDuration:393216 delay:v55 options:v56 factory:v57 animations:v54 completion:0.0];
}

- (void)animateToMonthWithCompletion:(id)completion inContext:(id)context
{
  completionCopy = completion;
  contextCopy = context;
  if (CalSystemSolariumEnabled())
  {
    [(CompactMonthListAnimator *)self _solariumAnimateToMonthWithCompletion:completionCopy inContext:contextCopy];
  }

  else
  {
    if ([(CompactMonthListAnimator *)self animating])
    {
      [(CompactMonthListAnimator *)self _haltAnimations];
    }

    monthViewController = [(CompactMonthListAnimator *)self monthViewController];
    [(CompactMonthListAnimator *)self monthSplittingCutOutArea];
    [monthViewController enterAnimationSplitStateWithCutOutArea:? topBoundary:?];

    listViewController = [(CompactMonthListAnimator *)self listViewController];
    navigationController = [listViewController navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v13 = v12;

    [(CompactMonthListAnimator *)self monthViewSplittingLocation];
    v15 = v14;
    v17 = v16 - v13;
    monthViewController2 = [(CompactMonthListAnimator *)self monthViewController];
    [monthViewController2 setSplitStateOpen:1];

    monthViewController3 = [(CompactMonthListAnimator *)self monthViewController];
    view = [monthViewController3 view];
    [view setAlpha:0.0];

    listViewController2 = [(CompactMonthListAnimator *)self listViewController];
    view2 = [listViewController2 view];
    [view2 frame];
    v24 = v23;
    v26 = v25;

    [(CompactMonthListAnimator *)self listViewNormalLocation];
    v28 = v27;
    v30 = v29;
    listViewController3 = [(CompactMonthListAnimator *)self listViewController];
    view3 = [listViewController3 view];
    [view3 setFrame:{v28, v30, v24, v26}];

    listViewController4 = [(CompactMonthListAnimator *)self listViewController];
    view4 = [listViewController4 view];
    [view4 setAlpha:1.0];

    springAnimationDuration();
    v36 = v35;
    v37 = +[SpringFactory sharedFactory];
    v65 = _NSConcreteStackBlock;
    v66 = 3221225472;
    v67 = sub_10003A228;
    v68 = &unk_10020EDD8;
    selfCopy = self;
    v70 = v15;
    v71 = v17;
    v38 = navigationAnimationsPreferringFRR();
    [UIView _animateWithDuration:393216 delay:v37 options:v38 factory:0 animations:v36 completion:0.0];

    paletteView = [(CompactMonthListAnimator *)self paletteView];
    dateLabel = [paletteView dateLabel];
    [dateLabel setHidden:1];

    paletteView2 = [(CompactMonthListAnimator *)self paletteView];
    animatableDateLabel = [paletteView2 animatableDateLabel];
    [animatableDateLabel setAlpha:0.0];

    paletteView3 = [(CompactMonthListAnimator *)self paletteView];
    dayInitialsHeaderView = [paletteView3 dayInitialsHeaderView];
    [dayInitialsHeaderView setAlpha:0.0];

    [(CompactMonthListAnimator *)self weekDayInitialsMonth];
    v46 = v45;
    [(CompactMonthListAnimator *)self weekDayInitialsMonth];
    v48 = v47;
    [(CompactMonthListAnimator *)self weekDayInitialsMonth];
    v50 = v49;
    paletteView4 = [(CompactMonthListAnimator *)self paletteView];
    dayInitialsHeaderView2 = [paletteView4 dayInitialsHeaderView];
    [dayInitialsHeaderView2 setFrame:{v46, 0.0, v48, v50}];

    paletteView5 = [(CompactMonthListAnimator *)self paletteView];
    [paletteView5 setSuppressLayout:1];

    springAnimationDuration();
    v55 = v54;
    v56 = +[SpringFactory sharedFactory];
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_10003A358;
    v63 = &unk_10020EB00;
    selfCopy2 = self;
    v57 = navigationAnimationsPreferringFRR();
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10003A450;
    v58[3] = &unk_10020F308;
    v58[4] = self;
    v59 = completionCopy;
    [UIView _animateWithDuration:393216 delay:v56 options:v57 factory:v58 animations:v55 completion:0.0];
  }
}

- (void)_haltAnimations
{
  view = [(CompactWidthMonthViewController *)self->_monthViewController view];
  window = [view window];
  layer = [window layer];
  [layer removeAllAnimations];

  [(CompactWidthMonthViewController *)self->_monthViewController endAnimationSplitState];
  view2 = [(CompactListViewController *)self->_listViewController view];
  [view2 frame];
  v8 = v7;
  v10 = v9;

  x = self->_listViewNormalLocation.x;
  y = self->_listViewNormalLocation.y;
  view3 = [(CompactListViewController *)self->_listViewController view];
  [view3 setFrame:{x, y, v8, v10}];

  self->_animating = 0;
}

- (CGPoint)listViewNormalLocation
{
  x = self->_listViewNormalLocation.x;
  y = self->_listViewNormalLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)monthViewSplittingLocation
{
  x = self->_monthViewSplittingLocation.x;
  y = self->_monthViewSplittingLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)monthSplittingCutOutArea
{
  x = self->_monthSplittingCutOutArea.origin.x;
  y = self->_monthSplittingCutOutArea.origin.y;
  width = self->_monthSplittingCutOutArea.size.width;
  height = self->_monthSplittingCutOutArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)weekDayInitialsMonth
{
  x = self->_weekDayInitialsMonth.origin.x;
  y = self->_weekDayInitialsMonth.origin.y;
  width = self->_weekDayInitialsMonth.size.width;
  height = self->_weekDayInitialsMonth.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end