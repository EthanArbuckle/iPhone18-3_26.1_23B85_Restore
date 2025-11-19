@interface CompactMonthMultiDayAnimator
- (CompactMonthMultiDayAnimator)initWithModel:(id)a3 paletteView:(id)a4 reverse:(BOOL)a5;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation CompactMonthMultiDayAnimator

- (CompactMonthMultiDayAnimator)initWithModel:(id)a3 paletteView:(id)a4 reverse:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = CompactMonthMultiDayAnimator;
  v11 = [(CompactMonthMultiDayAnimator *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(objc_msgSend(objc_opt_class() "monthMultiDayTransitionViewClass"))];
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
  v3 = [(CompactMonthMultiDayAnimator *)self transitionView];
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
  v49 = v7;
  if ([(CompactMonthMultiDayAnimator *)self reverse])
  {
    [v9 addSubview:v8];
  }

  else
  {
    [v9 insertSubview:v8 belowSubview:v7];
  }

  v10 = [(CompactMonthMultiDayAnimator *)self transitionView];
  [v9 addSubview:v10];

  v11 = [(CompactMonthMultiDayAnimator *)self transitionView];
  [v9 bringSubviewToFront:v11];

  v52 = [(CompactMonthMultiDayAnimator *)self transitionView];
  v12 = [(CompactMonthMultiDayAnimator *)self reverse];
  v13 = v12 == 0;
  if (v12)
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

  v16 = [v14 currentChildViewController];
  v17 = [v15 currentChildViewController];
  [v6 viewWillLayoutSubviews];
  v18 = [v6 view];
  [v18 layoutSubviews];

  [v6 viewDidLayoutSubviews];
  [(PaletteView *)self->_paletteView layoutSubviews];
  v19 = [(CompactMonthMultiDayAnimator *)self model];
  v20 = [v19 selectedDate];

  v21 = v20;
  v22 = [v20 date];
  v48 = v8;
  v51 = v22;
  if ([(CompactMonthMultiDayAnimator *)self reverse])
  {
    v23 = [v16 view];
    [v23 layoutIfNeeded];

    [v16 showDate:v22 animated:0];
  }

  else
  {
    [v17 selectDate:v21 animated:{0, v21}];
  }

  [v9 bounds];
  v24 = v52;
  [v52 setFrame:?];
  v25 = [v16 view];
  v26 = [v17 view];
  [v52 prepareTransitionWithTopView:v25 bottomView:v26 allDayView:0 topLabelsContainer:0];

  v27 = [v6 currentChildViewController];

  v50 = v17;
  if (v16 == v27)
  {
    v28 = [(CompactMonthMultiDayAnimator *)self model];
    v29 = [v28 selectedDate];
    v30 = [v16 subviewForDate:v29];

    if (!v30)
    {
      v31 = [v16 view];
      [v31 layoutBelowIfNeeded];

      v32 = [(CompactMonthMultiDayAnimator *)self model];
      v33 = [v32 selectedDate];
      v30 = [v16 subviewForDate:v33];
    }

    [v30 layoutSubviews];

    v17 = v50;
    v24 = v52;
  }

  v47 = v9;
  v34 = CUIKTodayDate();
  [v24 prepareTransitionScrubberWithSelectedDate:v51 todayDate:v34 dayViewController:v17 monthViewController:v16 paletteView:self->_paletteView reverse:{-[CompactMonthMultiDayAnimator reverse](self, "reverse")}];

  [v24 setHidden:0];
  [v6 updatePalette:self->_paletteView];
  [v5 setAnimatingViewTransition:1];
  [v6 setAnimatingViewTransition:1];
  v35 = [(CompactMonthMultiDayAnimator *)self reverse];
  v36 = [(CompactMonthMultiDayAnimator *)self transitionView];
  if (v35)
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
    v60 = v4;
    v40 = v4;
    v41 = v6;
    v42 = v5;
    [v36 animateToMonthWithCompletion:v57];
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
    v56 = v4;
    v43 = v4;
    v44 = v6;
    v45 = v5;
    [v36 animateToDayWithCompletion:v53];
  }
}

@end