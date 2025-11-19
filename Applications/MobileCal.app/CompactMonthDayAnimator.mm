@interface CompactMonthDayAnimator
- (CompactMonthDayAnimator)initWithModel:(id)a3 paletteView:(id)a4 reverse:(BOOL)a5;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation CompactMonthDayAnimator

- (CompactMonthDayAnimator)initWithModel:(id)a3 paletteView:(id)a4 reverse:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = CompactMonthDayAnimator;
  v11 = [(CompactMonthDayAnimator *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(objc_msgSend(objc_opt_class() "monthDayTransitionViewClass"))];
    transitionView = v11->_transitionView;
    v11->_transitionView = v12;

    v11->_reverse = a5;
    objc_storeStrong(&v11->_model, a3);
    objc_storeStrong(&v11->_paletteView, a4);
  }

  return v11;
}

- (double)transitionDuration:(id)a3
{
  v3 = [(CompactMonthDayAnimator *)self transitionView];
  [v3 animationDuration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [v5 view];
  v8 = [v6 view];
  v9 = [v4 containerView];
  v56 = v7;
  if ([(CompactMonthDayAnimator *)self reverse])
  {
    [v9 addSubview:v8];
  }

  else
  {
    [v9 insertSubview:v8 belowSubview:v7];
  }

  v10 = [(CompactMonthDayAnimator *)self transitionView];
  [v9 addSubview:v10];

  v11 = [(CompactMonthDayAnimator *)self transitionView];
  [v9 bringSubviewToFront:v11];

  v12 = [(CompactMonthDayAnimator *)self transitionView];
  v13 = [(CompactMonthDayAnimator *)self reverse];
  v14 = v13 == 0;
  if (v13)
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

  v17 = [v15 currentChildViewController];
  v18 = [v16 currentChildViewController];
  [v6 viewWillLayoutSubviews];
  v19 = [v6 view];
  [v19 layoutSubviews];

  [v6 viewDidLayoutSubviews];
  [(PaletteView *)self->_paletteView layoutSubviews];
  v20 = [(CompactMonthDayAnimator *)self model];
  v21 = [v20 selectedDate];

  v22 = v21;
  v23 = [v21 date];
  v55 = v8;
  v51 = v22;
  v52 = v4;
  if ([(CompactMonthDayAnimator *)self reverse])
  {
    v24 = [v17 view];
    [v24 layoutIfNeeded];

    [v17 showDate:v23 animated:0];
  }

  else
  {
    [v18 selectDate:v22 animated:0];
  }

  v54 = v9;
  [v9 bounds];
  [v12 setFrame:?];
  v25 = [v17 view];
  v26 = [v18 view];
  v27 = [v18 allDayView];
  [v18 topLabelsContainer];
  v29 = v28 = v12;
  [v28 prepareTransitionWithTopView:v25 bottomView:v26 allDayView:v27 topLabelsContainer:v29];

  v30 = [v6 currentChildViewController];

  if (v17 == v30)
  {
    v31 = [(CompactMonthDayAnimator *)self model];
    v32 = [v31 selectedDate];
    v33 = [v17 subviewForDate:v32];

    if (!v33)
    {
      v34 = [v17 view];
      [v34 layoutBelowIfNeeded];

      v35 = [(CompactMonthDayAnimator *)self model];
      v36 = [v35 selectedDate];
      v33 = [v17 subviewForDate:v36];
    }

    [v33 layoutSubviews];
  }

  v37 = CUIKTodayDate();
  [v28 prepareTransitionScrubberWithSelectedDate:v23 todayDate:v37 dayViewController:v18 monthViewController:v17 paletteView:self->_paletteView reverse:{-[CompactMonthDayAnimator reverse](self, "reverse")}];

  v53 = v28;
  [v28 setHidden:0];
  [v6 updatePalette:self->_paletteView];
  [v50 setAnimatingViewTransition:1];
  [v6 setAnimatingViewTransition:1];
  v38 = [(CompactMonthDayAnimator *)self reverse];
  v39 = [(CompactMonthDayAnimator *)self transitionView];
  if (v38)
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
    [v39 animateToMonthWithCompletion:v61];
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
    [v39 animateToDayWithCompletion:v57];
  }
}

@end