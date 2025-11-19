@interface CompactMonthListAnimator
- (CGPoint)listViewNormalLocation;
- (CGPoint)monthViewSplittingLocation;
- (CGRect)monthSplittingCutOutArea;
- (CGRect)weekDayInitialsMonth;
- (CompactMonthListAnimator)initWithModel:(id)a3 paletteView:(id)a4 reverse:(BOOL)a5;
- (void)_haltAnimations;
- (void)_solariumAnimateToListWithCompletion:(id)a3 inContext:(id)a4;
- (void)_solariumAnimateToMonthWithCompletion:(id)a3 inContext:(id)a4;
- (void)_terminateAnimationsAfterDelay;
- (void)animateToListWithCompletion:(id)a3 inContext:(id)a4;
- (void)animateToMonthWithCompletion:(id)a3 inContext:(id)a4;
- (void)animateTransition:(id)a3;
@end

@implementation CompactMonthListAnimator

- (CompactMonthListAnimator)initWithModel:(id)a3 paletteView:(id)a4 reverse:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = CompactMonthListAnimator;
  v11 = [(CompactMonthListAnimator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_reverse = a5;
    objc_storeStrong(&v11->_model, a3);
    objc_storeStrong(&v12->_paletteView, a4);
    size = CGRectNull.size;
    v12->_monthSplittingCutOutArea.origin = CGRectNull.origin;
    v12->_monthSplittingCutOutArea.size = size;
    v14 = CGPointZero;
    v12->_listViewNormalLocation = CGPointZero;
    v12->_monthViewSplittingLocation = v14;
  }

  return v12;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [v5 view];
  v8 = [v6 view];
  v9 = [v4 containerView];
  v44 = v8;
  if ([(CompactMonthListAnimator *)self reverse])
  {
    [v9 addSubview:v8];
  }

  else
  {
    [v9 insertSubview:v8 belowSubview:v7];
  }

  v10 = [(CompactMonthListAnimator *)self reverse];
  v11 = v10 == 0;
  if (v10)
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

  v14 = [v12 currentChildViewController];
  v15 = [v13 currentChildViewController];
  objc_storeStrong(&self->_monthViewController, v14);
  objc_storeStrong(&self->_listViewController, v15);
  [v4 finalFrameForViewController:v6];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v6 view];
  [v24 setFrame:{v17, v19, v21, v23}];

  [v6 viewWillLayoutSubviews];
  v25 = [v6 view];
  [v25 layoutSubviews];

  [v6 viewDidLayoutSubviews];
  [(PaletteView *)self->_paletteView layoutSubviews];
  v26 = [(CUIKCalendarModel *)self->_model selectedDate];
  v27 = [v26 date];
  v43 = v9;
  if ([(CompactMonthListAnimator *)self reverse])
  {
    [v14 showDate:v27 animated:0];
  }

  else
  {
    [v15 selectDate:v26 animated:0];
  }

  v28 = [v6 currentChildViewController];

  if (v14 == v28)
  {
    v42 = v7;
    v29 = [(CUIKCalendarModel *)self->_model selectedDate];
    v30 = [v14 subviewForDate:v29];

    if (!v30)
    {
      v31 = [v14 view];
      [v31 layoutBelowIfNeeded];

      v32 = [(CUIKCalendarModel *)self->_model selectedDate];
      v30 = [v14 subviewForDate:v32];
    }

    [v30 layoutSubviews];

    v7 = v42;
  }

  [v14 frameForWeekContainingDate:v27];
  self->_monthSplittingCutOutArea.origin.x = v35;
  self->_monthSplittingCutOutArea.origin.y = v33 + v34;
  self->_monthSplittingCutOutArea.size.width = v36;
  self->_monthSplittingCutOutArea.size.height = 1.0;
  self->_monthViewSplittingLocation = self->_monthSplittingCutOutArea.origin;
  v37 = [(CompactListViewController *)self->_listViewController view];
  [v37 frame];
  self->_listViewNormalLocation.x = v38;
  self->_listViewNormalLocation.y = v39;

  [v14 updatePalette:self->_paletteView];
  [(PaletteView *)self->_paletteView layoutSubviews];
  v40 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [v40 frame];
  [(CompactMonthListAnimator *)self setWeekDayInitialsMonth:?];

  self->_animating = 1;
  if ([(CompactMonthListAnimator *)self reverse])
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100038264;
    v47[3] = &unk_10020EB00;
    v41 = &v48;
    v48 = v4;
    [(CompactMonthListAnimator *)self animateToMonthWithCompletion:v47 inContext:v4];
  }

  else
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000382C4;
    v45[3] = &unk_10020EB00;
    v41 = &v46;
    v46 = v4;
    [(CompactMonthListAnimator *)self animateToListWithCompletion:v45 inContext:v4];
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

- (void)_solariumAnimateToListWithCompletion:(id)a3 inContext:(id)a4
{
  v5 = a3;
  if ([(CompactMonthListAnimator *)self animating])
  {
    [(CompactMonthListAnimator *)self _haltAnimations];
  }

  v6 = [(CompactMonthListAnimator *)self monthViewController];
  [(CompactMonthListAnimator *)self monthSplittingCutOutArea];
  [v6 enterAnimationSplitStateWithCutOutArea:? topBoundary:?];

  v7 = [(CompactMonthListAnimator *)self listViewController];
  v8 = [v7 navigationController];
  v9 = [v8 navigationBar];
  [v9 frame];
  v11 = v10;

  [(CompactMonthListAnimator *)self monthViewSplittingLocation];
  v13 = v12;
  v15 = v14 - v11;
  v16 = [(CompactMonthListAnimator *)self monthViewController];
  [v16 setSplitStateOpen:0];

  v17 = [(CompactMonthListAnimator *)self monthViewController];
  v18 = [v17 view];
  [v18 setAlpha:1.0];

  v19 = [(CompactMonthListAnimator *)self listViewController];
  v20 = [v19 view];
  [v20 frame];
  v22 = v21;
  v24 = v23;

  v25 = [(CompactMonthListAnimator *)self listViewController];
  v26 = [v25 view];
  [v26 setFrame:{v13, v15, v22, v24}];

  v27 = [(CompactMonthListAnimator *)self listViewController];
  v28 = [v27 view];
  [v28 setAlpha:0.0];

  springAnimationDuration();
  v30 = v29;
  v31 = +[SpringFactory sharedFactory];
  v58 = _NSConcreteStackBlock;
  v59 = 3221225472;
  v60 = sub_100038848;
  v61 = &unk_10020EB00;
  v62 = self;
  v32 = navigationAnimationsPreferringFRR();
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100038984;
  v56[3] = &unk_10020F308;
  v56[4] = self;
  v57 = v5;
  v33 = v5;
  [UIView _animateWithDuration:393216 delay:v31 options:v32 factory:v56 animations:v30 completion:0.0];

  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = [(CompactMonthListAnimator *)self paletteView];
  v43 = [v42 dayInitialsHeaderView];
  [v43 setFrame:{v35, v37, v39, v41}];

  v44 = [(CompactMonthListAnimator *)self paletteView];
  v45 = [v44 dayInitialsHeaderView];
  [v45 setAlpha:1.0];

  v46 = [(CompactMonthListAnimator *)self paletteView];
  v47 = [v46 dateLabel];
  [v47 setHidden:1];

  v48 = [(CompactMonthListAnimator *)self paletteView];
  v49 = [v48 animatableDateLabel];
  [v49 setAlpha:1.0];

  v50 = [(CompactMonthListAnimator *)self paletteView];
  [v50 setSuppressLayout:1];

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

- (void)animateToListWithCompletion:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (CalSystemSolariumEnabled())
  {
    [(CompactMonthListAnimator *)self _solariumAnimateToListWithCompletion:v6 inContext:v7];
  }

  else
  {
    if ([(CompactMonthListAnimator *)self animating])
    {
      [(CompactMonthListAnimator *)self _haltAnimations];
    }

    v8 = [(CompactMonthListAnimator *)self monthViewController];
    [(CompactMonthListAnimator *)self monthSplittingCutOutArea];
    [v8 enterAnimationSplitStateWithCutOutArea:? topBoundary:?];

    v9 = [(CompactMonthListAnimator *)self listViewController];
    v10 = [v9 navigationController];
    v11 = [v10 navigationBar];
    [v11 frame];
    v13 = v12;

    [(CompactMonthListAnimator *)self monthViewSplittingLocation];
    v15 = v14;
    v17 = v16 - v13;
    v18 = [(CompactMonthListAnimator *)self monthViewController];
    [v18 setSplitStateOpen:0];

    v19 = [(CompactMonthListAnimator *)self monthViewController];
    v20 = [v19 view];
    [v20 setAlpha:1.0];

    v21 = [(CompactMonthListAnimator *)self listViewController];
    v22 = [v21 view];
    [v22 frame];
    v24 = v23;
    v26 = v25;

    v27 = [(CompactMonthListAnimator *)self listViewController];
    v28 = [v27 view];
    [v28 setFrame:{v15, v17, v24, v26}];

    v29 = [(CompactMonthListAnimator *)self listViewController];
    v30 = [v29 view];
    [v30 setAlpha:0.0];

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
    v43 = [(CompactMonthListAnimator *)self paletteView];
    v44 = [v43 dayInitialsHeaderView];
    [v44 setFrame:{v36, v38, v40, v42}];

    v45 = [(CompactMonthListAnimator *)self paletteView];
    v46 = [v45 dayInitialsHeaderView];
    [v46 setAlpha:1.0];

    v47 = [(CompactMonthListAnimator *)self paletteView];
    v48 = [v47 dateLabel];
    [v48 setHidden:1];

    v49 = [(CompactMonthListAnimator *)self paletteView];
    v50 = [v49 animatableDateLabel];
    [v50 setAlpha:1.0];

    v51 = [(CompactMonthListAnimator *)self paletteView];
    [v51 setSuppressLayout:1];

    springAnimationDuration();
    v53 = v52;
    v54 = +[SpringFactory sharedFactory];
    v58 = _NSConcreteStackBlock;
    v59 = 3221225472;
    v60 = sub_100039378;
    v61 = &unk_10020EB00;
    v62 = self;
    v55 = navigationAnimationsPreferringFRR();
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10003947C;
    v56[3] = &unk_10020F308;
    v56[4] = self;
    v57 = v6;
    [UIView _animateWithDuration:393216 delay:v54 options:v55 factory:v56 animations:v53 completion:0.0];
  }
}

- (void)_solariumAnimateToMonthWithCompletion:(id)a3 inContext:(id)a4
{
  v5 = a3;
  if ([(CompactMonthListAnimator *)self animating])
  {
    [(CompactMonthListAnimator *)self _haltAnimations];
  }

  v6 = [(CompactMonthListAnimator *)self monthViewController];
  [(CompactMonthListAnimator *)self monthSplittingCutOutArea];
  [v6 enterAnimationSplitStateWithCutOutArea:? topBoundary:?];

  v7 = [(CompactMonthListAnimator *)self listViewController];
  v8 = [v7 navigationController];
  v9 = [v8 navigationBar];
  [v9 frame];
  v11 = v10;

  [(CompactMonthListAnimator *)self monthViewSplittingLocation];
  v13 = v12;
  v15 = v14 - v11;
  v16 = [(CompactMonthListAnimator *)self monthViewController];
  [v16 setSplitStateOpen:1];

  v17 = [(CompactMonthListAnimator *)self monthViewController];
  v18 = [v17 view];
  [v18 setAlpha:0.0];

  v19 = [(CompactMonthListAnimator *)self listViewController];
  v20 = [v19 view];
  [v20 frame];
  v22 = v21;
  v24 = v23;

  [(CompactMonthListAnimator *)self listViewNormalLocation];
  v26 = v25;
  v28 = v27;
  v29 = [(CompactMonthListAnimator *)self listViewController];
  v30 = [v29 view];
  [v30 setFrame:{v26, v28, v22, v24}];

  v31 = [(CompactMonthListAnimator *)self listViewController];
  v32 = [v31 view];
  [v32 setAlpha:1.0];

  springAnimationDuration();
  v34 = v33;
  v35 = +[SpringFactory sharedFactory];
  v60 = _NSConcreteStackBlock;
  v61 = 3221225472;
  v62 = sub_100039A40;
  v63 = &unk_10020EDD8;
  v64 = self;
  v65 = v13;
  v66 = v15;
  v36 = navigationAnimationsPreferringFRR();
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100039B70;
  v58[3] = &unk_10020F308;
  v58[4] = self;
  v59 = v5;
  v37 = v5;
  [UIView _animateWithDuration:393216 delay:v35 options:v36 factory:v58 animations:v34 completion:0.0];

  v38 = [(CompactMonthListAnimator *)self paletteView];
  v39 = [v38 dateLabel];
  [v39 setHidden:1];

  v40 = [(CompactMonthListAnimator *)self paletteView];
  v41 = [v40 animatableDateLabel];
  [v41 setAlpha:0.0];

  v42 = [(CompactMonthListAnimator *)self paletteView];
  v43 = [v42 dayInitialsHeaderView];
  [v43 setAlpha:0.0];

  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v45 = v44;
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v47 = v46;
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v49 = v48;
  v50 = [(CompactMonthListAnimator *)self paletteView];
  v51 = [v50 dayInitialsHeaderView];
  [v51 setFrame:{v45, 0.0, v47, v49}];

  v52 = [(CompactMonthListAnimator *)self paletteView];
  [v52 setSuppressLayout:1];

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

- (void)animateToMonthWithCompletion:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (CalSystemSolariumEnabled())
  {
    [(CompactMonthListAnimator *)self _solariumAnimateToMonthWithCompletion:v6 inContext:v7];
  }

  else
  {
    if ([(CompactMonthListAnimator *)self animating])
    {
      [(CompactMonthListAnimator *)self _haltAnimations];
    }

    v8 = [(CompactMonthListAnimator *)self monthViewController];
    [(CompactMonthListAnimator *)self monthSplittingCutOutArea];
    [v8 enterAnimationSplitStateWithCutOutArea:? topBoundary:?];

    v9 = [(CompactMonthListAnimator *)self listViewController];
    v10 = [v9 navigationController];
    v11 = [v10 navigationBar];
    [v11 frame];
    v13 = v12;

    [(CompactMonthListAnimator *)self monthViewSplittingLocation];
    v15 = v14;
    v17 = v16 - v13;
    v18 = [(CompactMonthListAnimator *)self monthViewController];
    [v18 setSplitStateOpen:1];

    v19 = [(CompactMonthListAnimator *)self monthViewController];
    v20 = [v19 view];
    [v20 setAlpha:0.0];

    v21 = [(CompactMonthListAnimator *)self listViewController];
    v22 = [v21 view];
    [v22 frame];
    v24 = v23;
    v26 = v25;

    [(CompactMonthListAnimator *)self listViewNormalLocation];
    v28 = v27;
    v30 = v29;
    v31 = [(CompactMonthListAnimator *)self listViewController];
    v32 = [v31 view];
    [v32 setFrame:{v28, v30, v24, v26}];

    v33 = [(CompactMonthListAnimator *)self listViewController];
    v34 = [v33 view];
    [v34 setAlpha:1.0];

    springAnimationDuration();
    v36 = v35;
    v37 = +[SpringFactory sharedFactory];
    v65 = _NSConcreteStackBlock;
    v66 = 3221225472;
    v67 = sub_10003A228;
    v68 = &unk_10020EDD8;
    v69 = self;
    v70 = v15;
    v71 = v17;
    v38 = navigationAnimationsPreferringFRR();
    [UIView _animateWithDuration:393216 delay:v37 options:v38 factory:0 animations:v36 completion:0.0];

    v39 = [(CompactMonthListAnimator *)self paletteView];
    v40 = [v39 dateLabel];
    [v40 setHidden:1];

    v41 = [(CompactMonthListAnimator *)self paletteView];
    v42 = [v41 animatableDateLabel];
    [v42 setAlpha:0.0];

    v43 = [(CompactMonthListAnimator *)self paletteView];
    v44 = [v43 dayInitialsHeaderView];
    [v44 setAlpha:0.0];

    [(CompactMonthListAnimator *)self weekDayInitialsMonth];
    v46 = v45;
    [(CompactMonthListAnimator *)self weekDayInitialsMonth];
    v48 = v47;
    [(CompactMonthListAnimator *)self weekDayInitialsMonth];
    v50 = v49;
    v51 = [(CompactMonthListAnimator *)self paletteView];
    v52 = [v51 dayInitialsHeaderView];
    [v52 setFrame:{v46, 0.0, v48, v50}];

    v53 = [(CompactMonthListAnimator *)self paletteView];
    [v53 setSuppressLayout:1];

    springAnimationDuration();
    v55 = v54;
    v56 = +[SpringFactory sharedFactory];
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_10003A358;
    v63 = &unk_10020EB00;
    v64 = self;
    v57 = navigationAnimationsPreferringFRR();
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10003A450;
    v58[3] = &unk_10020F308;
    v58[4] = self;
    v59 = v6;
    [UIView _animateWithDuration:393216 delay:v56 options:v57 factory:v58 animations:v55 completion:0.0];
  }
}

- (void)_haltAnimations
{
  v3 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  v4 = [v3 window];
  v5 = [v4 layer];
  [v5 removeAllAnimations];

  [(CompactWidthMonthViewController *)self->_monthViewController endAnimationSplitState];
  v6 = [(CompactListViewController *)self->_listViewController view];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  x = self->_listViewNormalLocation.x;
  y = self->_listViewNormalLocation.y;
  v13 = [(CompactListViewController *)self->_listViewController view];
  [v13 setFrame:{x, y, v8, v10}];

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