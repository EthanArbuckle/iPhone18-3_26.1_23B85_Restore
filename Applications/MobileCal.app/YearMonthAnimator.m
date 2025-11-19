@interface YearMonthAnimator
- (YearMonthAnimator)initWithModel:(id)a3 paletteView:(id)a4 reverse:(BOOL)a5;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation YearMonthAnimator

- (YearMonthAnimator)initWithModel:(id)a3 paletteView:(id)a4 reverse:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = YearMonthAnimator;
  v11 = [(YearMonthAnimator *)&v15 init];
  if (v11)
  {
    v12 = [[YearMonthTransitionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
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
  v3 = [(YearMonthAnimator *)self transitionView];
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
  v57 = v8;
  v58 = v7;
  if ([(YearMonthAnimator *)self reverse])
  {
    [v9 addSubview:v8];
  }

  else
  {
    [v9 insertSubview:v8 belowSubview:v7];
  }

  v10 = [(YearMonthAnimator *)self transitionView];
  [v9 addSubview:v10];

  [v4 finalFrameForViewController:v6];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v6 view];
  [v19 setFrame:{v12, v14, v16, v18}];

  v55 = [(YearMonthAnimator *)self transitionView];
  v20 = [(YearMonthAnimator *)self reverse];
  v21 = v20 == 0;
  if (v20)
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

  v24 = [v22 currentChildViewController];
  v25 = [v23 currentChildViewController];
  v26 = [(YearMonthAnimator *)self model];
  v27 = [v26 selectedDate];
  v28 = [v27 date];

  if ([(YearMonthAnimator *)self reverse])
  {
    v29 = v24;
  }

  else
  {
    v29 = v25;
  }

  v56 = v28;
  [v29 showDate:v28 animated:0];
  [v25 forceUpdateListView];
  v30 = [v6 view];
  [v6 viewWillLayoutSubviews];
  v31 = [v6 view];
  [v31 layoutSubviews];

  [v6 viewDidLayoutSubviews];
  v32 = [(YearMonthAnimator *)self selectedDate];
  v59 = v9;
  if (v32)
  {
    goto LABEL_19;
  }

  if ([(YearMonthAnimator *)self reverse])
  {
    v32 = [v25 dateForCurrentMonthOnScreen];
    if (v32)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v33 = [(YearMonthAnimator *)self model];
    v32 = [v33 selectedDate];

    if (v32)
    {
      goto LABEL_19;
    }
  }

  v34 = CUIKTodayComponents();
  v54 = [(YearMonthAnimator *)self model];
  v35 = [v54 eventStore];
  v36 = [v35 timeZone];
  v32 = [EKCalendarDate calendarDateWithDateComponents:v34 timeZone:v36];

  v9 = v59;
LABEL_19:
  [v9 bounds];
  [v55 setFrame:?];
  v37 = [(YearMonthAnimator *)self model];
  v38 = [v37 calendar];
  [v55 prepareWithYearViewController:v24 monthViewController:v25 selectedDate:v32 calendar:v38 yearToMonth:!self->_reverse paletteView:self->_paletteView];

  v39 = [v24 view];
  [v39 setHidden:0];

  v40 = [v25 view];
  [v40 setHidden:0];

  [v55 setHidden:0];
  [v5 setAnimatingViewTransition:1];
  [v6 setAnimatingViewTransition:1];
  LODWORD(v38) = [(YearMonthAnimator *)self reverse];
  v41 = [(YearMonthAnimator *)self transitionView];
  if (v38)
  {
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10009D0BC;
    v67[3] = &unk_1002101C0;
    v42 = v68;
    v68[0] = v24;
    v68[1] = self;
    v69 = v5;
    v70 = v6;
    v71 = v4;
    v72 = v25;
    v43 = v4;
    v44 = v6;
    v45 = v5;
    v46 = v25;
    v47 = v24;
    [v41 animateToYearViewWithCompletion:v67];

    v48 = v69;
  }

  else
  {
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10009D190;
    v60[3] = &unk_1002101C0;
    v42 = &v61;
    v61 = v24;
    v62 = v25;
    v63 = self;
    v64 = v5;
    v65 = v6;
    v66 = v4;
    v49 = v4;
    v50 = v6;
    v51 = v5;
    v52 = v25;
    v53 = v24;
    [v41 animateToMonthViewWithCompletion:v60];

    v48 = v62;
  }
}

@end