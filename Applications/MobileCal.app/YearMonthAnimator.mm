@interface YearMonthAnimator
- (YearMonthAnimator)initWithModel:(id)model paletteView:(id)view reverse:(BOOL)reverse;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation YearMonthAnimator

- (YearMonthAnimator)initWithModel:(id)model paletteView:(id)view reverse:(BOOL)reverse
{
  modelCopy = model;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = YearMonthAnimator;
  v11 = [(YearMonthAnimator *)&v15 init];
  if (v11)
  {
    v12 = [[YearMonthTransitionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
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
  transitionView = [(YearMonthAnimator *)self transitionView];
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
  v57 = view2;
  v58 = view;
  if ([(YearMonthAnimator *)self reverse])
  {
    [containerView addSubview:view2];
  }

  else
  {
    [containerView insertSubview:view2 belowSubview:view];
  }

  transitionView = [(YearMonthAnimator *)self transitionView];
  [containerView addSubview:transitionView];

  [transitionCopy finalFrameForViewController:v6];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view3 = [v6 view];
  [view3 setFrame:{v12, v14, v16, v18}];

  transitionView2 = [(YearMonthAnimator *)self transitionView];
  reverse = [(YearMonthAnimator *)self reverse];
  v21 = reverse == 0;
  if (reverse)
  {
    v22 = v6;
  }

  else
  {
    v22 = v5;
  }

  if (v21)
  {
    v23 = v6;
  }

  else
  {
    v23 = v5;
  }

  currentChildViewController = [v22 currentChildViewController];
  currentChildViewController2 = [v23 currentChildViewController];
  model = [(YearMonthAnimator *)self model];
  selectedDate = [model selectedDate];
  date = [selectedDate date];

  if ([(YearMonthAnimator *)self reverse])
  {
    v29 = currentChildViewController;
  }

  else
  {
    v29 = currentChildViewController2;
  }

  v56 = date;
  [v29 showDate:date animated:0];
  [currentChildViewController2 forceUpdateListView];
  view4 = [v6 view];
  [v6 viewWillLayoutSubviews];
  view5 = [v6 view];
  [view5 layoutSubviews];

  [v6 viewDidLayoutSubviews];
  selectedDate2 = [(YearMonthAnimator *)self selectedDate];
  v59 = containerView;
  if (selectedDate2)
  {
    goto LABEL_19;
  }

  if ([(YearMonthAnimator *)self reverse])
  {
    selectedDate2 = [currentChildViewController2 dateForCurrentMonthOnScreen];
    if (selectedDate2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    model2 = [(YearMonthAnimator *)self model];
    selectedDate2 = [model2 selectedDate];

    if (selectedDate2)
    {
      goto LABEL_19;
    }
  }

  v34 = CUIKTodayComponents();
  model3 = [(YearMonthAnimator *)self model];
  eventStore = [model3 eventStore];
  timeZone = [eventStore timeZone];
  selectedDate2 = [EKCalendarDate calendarDateWithDateComponents:v34 timeZone:timeZone];

  containerView = v59;
LABEL_19:
  [containerView bounds];
  [transitionView2 setFrame:?];
  model4 = [(YearMonthAnimator *)self model];
  calendar = [model4 calendar];
  [transitionView2 prepareWithYearViewController:currentChildViewController monthViewController:currentChildViewController2 selectedDate:selectedDate2 calendar:calendar yearToMonth:!self->_reverse paletteView:self->_paletteView];

  view6 = [currentChildViewController view];
  [view6 setHidden:0];

  view7 = [currentChildViewController2 view];
  [view7 setHidden:0];

  [transitionView2 setHidden:0];
  [v5 setAnimatingViewTransition:1];
  [v6 setAnimatingViewTransition:1];
  LODWORD(calendar) = [(YearMonthAnimator *)self reverse];
  transitionView3 = [(YearMonthAnimator *)self transitionView];
  if (calendar)
  {
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10009D0BC;
    v67[3] = &unk_1002101C0;
    v42 = v68;
    v68[0] = currentChildViewController;
    v68[1] = self;
    v69 = v5;
    v70 = v6;
    v71 = transitionCopy;
    v72 = currentChildViewController2;
    v43 = transitionCopy;
    v44 = v6;
    v45 = v5;
    v46 = currentChildViewController2;
    v47 = currentChildViewController;
    [transitionView3 animateToYearViewWithCompletion:v67];

    v48 = v69;
  }

  else
  {
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10009D190;
    v60[3] = &unk_1002101C0;
    v42 = &v61;
    v61 = currentChildViewController;
    v62 = currentChildViewController2;
    selfCopy = self;
    v64 = v5;
    v65 = v6;
    v66 = transitionCopy;
    v49 = transitionCopy;
    v50 = v6;
    v51 = v5;
    v52 = currentChildViewController2;
    v53 = currentChildViewController;
    [transitionView3 animateToMonthViewWithCompletion:v60];

    v48 = v62;
  }
}

@end