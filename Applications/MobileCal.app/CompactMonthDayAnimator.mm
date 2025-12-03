@interface CompactMonthDayAnimator
- (CompactMonthDayAnimator)initWithModel:(id)model paletteView:(id)view reverse:(BOOL)reverse;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation CompactMonthDayAnimator

- (CompactMonthDayAnimator)initWithModel:(id)model paletteView:(id)view reverse:(BOOL)reverse
{
  modelCopy = model;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = CompactMonthDayAnimator;
  v11 = [(CompactMonthDayAnimator *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(objc_msgSend(objc_opt_class() "monthDayTransitionViewClass"))];
    transitionView = v11->_transitionView;
    v11->_transitionView = v12;

    v11->_reverse = reverse;
    objc_storeStrong(&v11->_model, model);
    objc_storeStrong(&v11->_paletteView, view);
  }

  return v11;
}

- (double)transitionDuration:(id)duration
{
  transitionView = [(CompactMonthDayAnimator *)self transitionView];
  [transitionView animationDuration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  view = [v5 view];
  view2 = [v6 view];
  containerView = [transitionCopy containerView];
  v56 = view;
  if ([(CompactMonthDayAnimator *)self reverse])
  {
    [containerView addSubview:view2];
  }

  else
  {
    [containerView insertSubview:view2 belowSubview:view];
  }

  transitionView = [(CompactMonthDayAnimator *)self transitionView];
  [containerView addSubview:transitionView];

  transitionView2 = [(CompactMonthDayAnimator *)self transitionView];
  [containerView bringSubviewToFront:transitionView2];

  transitionView3 = [(CompactMonthDayAnimator *)self transitionView];
  reverse = [(CompactMonthDayAnimator *)self reverse];
  v14 = reverse == 0;
  if (reverse)
  {
    v15 = v6;
  }

  else
  {
    v15 = v5;
  }

  v50 = v5;
  if (v14)
  {
    v16 = v6;
  }

  else
  {
    v16 = v5;
  }

  currentChildViewController = [v15 currentChildViewController];
  currentChildViewController2 = [v16 currentChildViewController];
  [v6 viewWillLayoutSubviews];
  view3 = [v6 view];
  [view3 layoutSubviews];

  [v6 viewDidLayoutSubviews];
  [(PaletteView *)self->_paletteView layoutSubviews];
  model = [(CompactMonthDayAnimator *)self model];
  selectedDate = [model selectedDate];

  v22 = selectedDate;
  date = [selectedDate date];
  v55 = view2;
  v51 = v22;
  v52 = transitionCopy;
  if ([(CompactMonthDayAnimator *)self reverse])
  {
    view4 = [currentChildViewController view];
    [view4 layoutIfNeeded];

    [currentChildViewController showDate:date animated:0];
  }

  else
  {
    [currentChildViewController2 selectDate:v22 animated:0];
  }

  v54 = containerView;
  [containerView bounds];
  [transitionView3 setFrame:?];
  view5 = [currentChildViewController view];
  view6 = [currentChildViewController2 view];
  allDayView = [currentChildViewController2 allDayView];
  [currentChildViewController2 topLabelsContainer];
  v29 = v28 = transitionView3;
  [v28 prepareTransitionWithTopView:view5 bottomView:view6 allDayView:allDayView topLabelsContainer:v29];

  currentChildViewController3 = [v6 currentChildViewController];

  if (currentChildViewController == currentChildViewController3)
  {
    model2 = [(CompactMonthDayAnimator *)self model];
    selectedDate2 = [model2 selectedDate];
    v33 = [currentChildViewController subviewForDate:selectedDate2];

    if (!v33)
    {
      view7 = [currentChildViewController view];
      [view7 layoutBelowIfNeeded];

      model3 = [(CompactMonthDayAnimator *)self model];
      selectedDate3 = [model3 selectedDate];
      v33 = [currentChildViewController subviewForDate:selectedDate3];
    }

    [v33 layoutSubviews];
  }

  v37 = CUIKTodayDate();
  [v28 prepareTransitionScrubberWithSelectedDate:date todayDate:v37 dayViewController:currentChildViewController2 monthViewController:currentChildViewController paletteView:self->_paletteView reverse:{-[CompactMonthDayAnimator reverse](self, "reverse")}];

  v53 = v28;
  [v28 setHidden:0];
  [v6 updatePalette:self->_paletteView];
  [v50 setAnimatingViewTransition:1];
  [v6 setAnimatingViewTransition:1];
  reverse2 = [(CompactMonthDayAnimator *)self reverse];
  transitionView4 = [(CompactMonthDayAnimator *)self transitionView];
  if (reverse2)
  {
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10014A500;
    v61[3] = &unk_10020F290;
    v40 = &v62;
    v41 = v63;
    v62 = v50;
    v63[0] = v6;
    v42 = &v64;
    v43 = v52;
    v63[1] = self;
    v64 = v52;
    v44 = v52;
    v45 = v6;
    v46 = v50;
    [transitionView4 animateToMonthWithCompletion:v61];
  }

  else
  {
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10014A59C;
    v57[3] = &unk_10020F290;
    v40 = &v58;
    v41 = v59;
    v58 = v50;
    v59[0] = v6;
    v42 = &v60;
    v43 = v52;
    v59[1] = self;
    v60 = v52;
    v47 = v52;
    v48 = v6;
    v49 = v50;
    [transitionView4 animateToDayWithCompletion:v57];
  }
}

@end