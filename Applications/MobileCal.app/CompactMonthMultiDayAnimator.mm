@interface CompactMonthMultiDayAnimator
- (CompactMonthMultiDayAnimator)initWithModel:(id)model paletteView:(id)view reverse:(BOOL)reverse;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation CompactMonthMultiDayAnimator

- (CompactMonthMultiDayAnimator)initWithModel:(id)model paletteView:(id)view reverse:(BOOL)reverse
{
  modelCopy = model;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = CompactMonthMultiDayAnimator;
  v11 = [(CompactMonthMultiDayAnimator *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(objc_msgSend(objc_opt_class() "monthMultiDayTransitionViewClass"))];
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
  transitionView = [(CompactMonthMultiDayAnimator *)self transitionView];
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
  v49 = view;
  if ([(CompactMonthMultiDayAnimator *)self reverse])
  {
    [containerView addSubview:view2];
  }

  else
  {
    [containerView insertSubview:view2 belowSubview:view];
  }

  transitionView = [(CompactMonthMultiDayAnimator *)self transitionView];
  [containerView addSubview:transitionView];

  transitionView2 = [(CompactMonthMultiDayAnimator *)self transitionView];
  [containerView bringSubviewToFront:transitionView2];

  transitionView3 = [(CompactMonthMultiDayAnimator *)self transitionView];
  reverse = [(CompactMonthMultiDayAnimator *)self reverse];
  v13 = reverse == 0;
  if (reverse)
  {
    v14 = v6;
  }

  else
  {
    v14 = v5;
  }

  if (v13)
  {
    v15 = v6;
  }

  else
  {
    v15 = v5;
  }

  currentChildViewController = [v14 currentChildViewController];
  currentChildViewController2 = [v15 currentChildViewController];
  [v6 viewWillLayoutSubviews];
  view3 = [v6 view];
  [view3 layoutSubviews];

  [v6 viewDidLayoutSubviews];
  [(PaletteView *)self->_paletteView layoutSubviews];
  model = [(CompactMonthMultiDayAnimator *)self model];
  selectedDate = [model selectedDate];

  v21 = selectedDate;
  date = [selectedDate date];
  v48 = view2;
  v51 = date;
  if ([(CompactMonthMultiDayAnimator *)self reverse])
  {
    view4 = [currentChildViewController view];
    [view4 layoutIfNeeded];

    [currentChildViewController showDate:date animated:0];
  }

  else
  {
    [currentChildViewController2 selectDate:v21 animated:{0, v21}];
  }

  [containerView bounds];
  v24 = transitionView3;
  [transitionView3 setFrame:?];
  view5 = [currentChildViewController view];
  view6 = [currentChildViewController2 view];
  [transitionView3 prepareTransitionWithTopView:view5 bottomView:view6 allDayView:0 topLabelsContainer:0];

  currentChildViewController3 = [v6 currentChildViewController];

  v50 = currentChildViewController2;
  if (currentChildViewController == currentChildViewController3)
  {
    model2 = [(CompactMonthMultiDayAnimator *)self model];
    selectedDate2 = [model2 selectedDate];
    v30 = [currentChildViewController subviewForDate:selectedDate2];

    if (!v30)
    {
      view7 = [currentChildViewController view];
      [view7 layoutBelowIfNeeded];

      model3 = [(CompactMonthMultiDayAnimator *)self model];
      selectedDate3 = [model3 selectedDate];
      v30 = [currentChildViewController subviewForDate:selectedDate3];
    }

    [v30 layoutSubviews];

    currentChildViewController2 = v50;
    v24 = transitionView3;
  }

  v47 = containerView;
  v34 = CUIKTodayDate();
  [v24 prepareTransitionScrubberWithSelectedDate:v51 todayDate:v34 dayViewController:currentChildViewController2 monthViewController:currentChildViewController paletteView:self->_paletteView reverse:{-[CompactMonthMultiDayAnimator reverse](self, "reverse")}];

  [v24 setHidden:0];
  [v6 updatePalette:self->_paletteView];
  [v5 setAnimatingViewTransition:1];
  [v6 setAnimatingViewTransition:1];
  reverse2 = [(CompactMonthMultiDayAnimator *)self reverse];
  transitionView4 = [(CompactMonthMultiDayAnimator *)self transitionView];
  if (reverse2)
  {
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000C6F68;
    v57[3] = &unk_10020F290;
    v37 = &v58;
    v38 = v59;
    v58 = v5;
    v59[0] = v6;
    v39 = &v60;
    v59[1] = self;
    v60 = transitionCopy;
    v40 = transitionCopy;
    v41 = v6;
    v42 = v5;
    [transitionView4 animateToMonthWithCompletion:v57];
  }

  else
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000C6FD0;
    v53[3] = &unk_10020F290;
    v37 = &v54;
    v38 = v55;
    v54 = v5;
    v55[0] = v6;
    v39 = &v56;
    v55[1] = self;
    v56 = transitionCopy;
    v43 = transitionCopy;
    v44 = v6;
    v45 = v5;
    [transitionView4 animateToDayWithCompletion:v53];
  }
}

@end