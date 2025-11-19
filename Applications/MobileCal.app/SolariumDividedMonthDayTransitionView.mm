@interface SolariumDividedMonthDayTransitionView
- (void)animateToDayWithCompletion:(id)a3;
- (void)animateToMonthWithCompletion:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation SolariumDividedMonthDayTransitionView

- (void)animateToMonthWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MonthDayTransitionView *)self animating])
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  [(SolariumDividedMonthDayTransitionView *)self setCompletion:v4];
  v5 = [(MonthDayTransitionView *)self paletteView];
  [v5 layoutSubviews];

  v6 = [(MonthDayTransitionView *)self monthViewController];
  [v6 forceUpdateListView];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  v8 = v7;
  v123 = v9;
  v124 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(MonthDayTransitionView *)self monthViewController];
  [v15 enterAnimationSplitStateWithCutOutArea:v8 topBoundary:{v10, v12, v14, 0.0}];

  v16 = [(MonthDayTransitionView *)self monthViewController];
  v17 = [v16 view];
  [v17 frame];

  v18 = [(MonthDayTransitionView *)self bottomView];
  [v18 setHidden:1];

  v19 = [(MonthDayTransitionView *)self bottomView];
  [v19 frame];
  v21 = v20;
  v23 = v22;

  [(MonthDayTransitionView *)self dayViewDayLocation];
  v25 = v24;
  v27 = v26;
  v28 = [(MonthDayTransitionView *)self bottomView];
  [v28 setFrame:{v25, v27, v21, v23}];

  v29 = [(MonthDayTransitionView *)self allDayView];
  [v29 setAlpha:1.0];

  v30 = [(MonthDayTransitionView *)self bottomView];
  v31 = [v30 snapshotViewAfterScreenUpdates:0];

  v32 = [(MonthDayTransitionView *)self bottomView];
  [(SolariumDividedMonthDayTransitionView *)self insertSubview:v31 aboveSubview:v32];

  v33 = [(MonthDayTransitionView *)self bottomView];
  [v33 convertPoint:self toView:{CGPointZero.x, CGPointZero.y}];
  v35 = v34;
  v37 = v36;

  [v31 frame];
  v39 = v38;
  v41 = v40;
  [v31 setFrame:{v35, v37}];
  [(MonthDayTransitionView *)self setAnimating:1];
  v42 = [(MonthDayTransitionView *)self scrubber];
  [v42 setHidden:0];

  v43 = [objc_opt_class() dividedMonthPaletteBackgroundColor];
  v44 = [(MonthDayTransitionView *)self scrubber];
  [v44 setBackgroundColor:v43];

  v45 = [(MonthDayTransitionView *)self paletteView];
  v46 = [v45 dayScrubberController];
  v47 = [v46 view];
  [v47 setHidden:1];

  v48 = [(MonthDayTransitionView *)self scrubber];
  [v48 setVerticallyCompressedState:1];

  v49 = [(MonthDayTransitionView *)self scrubber];
  [v49 layoutIfNeeded];

  v50 = [(MonthDayTransitionView *)self scrubber];
  [v50 animateToMonthLayout];

  v51 = [(MonthDayTransitionView *)self scrubber];
  [(SolariumDividedMonthDayTransitionView *)self bringSubviewToFront:v51];

  v52 = [(MonthDayTransitionView *)self monthViewController];
  v53 = [v52 view];
  [v53 frame];
  v55 = v54;
  v57 = v56;

  v58 = [(MonthDayTransitionView *)self monthViewController];
  v59 = [v58 view];
  [v59 frame];
  v61 = v60;

  v62 = [(MonthDayTransitionView *)self monthViewController];
  [v62 frameOfListView];
  v63 = CGRectGetMinY(v142) + -63.0 + -17.0;

  v64 = [(MonthDayTransitionView *)self monthViewController];
  v65 = [v64 view];
  [v65 setAlpha:0.0];

  v66 = [(MonthDayTransitionView *)self monthViewController];
  v67 = [v66 view];
  [v67 setFrame:{0.0, -v63, v39, v41}];

  springAnimationDuration();
  v69 = v68;
  v70 = +[SpringFactory sharedFactory];
  v141[5] = _NSConcreteStackBlock;
  v141[6] = 3221225472;
  v141[7] = sub_10011FE8C;
  v141[8] = &unk_100211C78;
  v141[9] = self;
  v141[10] = v55;
  v141[11] = v57;
  v141[12] = v61;
  *&v141[13] = v124;
  *&v141[14] = v123;
  *&v141[15] = v12;
  *&v141[16] = v14;
  v71 = navigationAnimationsPreferringFRR();
  v141[0] = _NSConcreteStackBlock;
  v141[1] = 3221225472;
  v141[2] = sub_10011FFD8;
  v141[3] = &unk_10020EB98;
  v141[4] = self;
  [UIView _animateWithDuration:393216 delay:v70 options:v71 factory:v141 animations:v69 completion:0.0];

  v72 = [(MonthDayTransitionView *)self paletteView];
  v73 = [v72 dateLabel];
  [v73 setAlpha:0.0];

  [(MonthDayTransitionView *)self weekDayInitialsDay];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = [(MonthDayTransitionView *)self paletteView];
  v83 = [v82 dayInitialsHeaderView];
  [v83 setFrame:{v75, v77, v79, v81}];

  springAnimationDuration();
  v85 = v84;
  v86 = +[SpringFactory sharedFactory];
  v136 = _NSConcreteStackBlock;
  v137 = 3221225472;
  v138 = sub_10012001C;
  v139 = &unk_10020EB00;
  v140 = self;
  v87 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v86 options:v87 factory:0 animations:v85 completion:0.0];

  v88 = [(MonthDayTransitionView *)self monthViewController];
  [v88 frameOfListView];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = [(MonthDayTransitionView *)self monthViewController];
  v98 = [v97 view];
  [(SolariumDividedMonthDayTransitionView *)self convertRect:v98 fromView:v90, v92, v94, v96];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;

  springAnimationDuration();
  v108 = v107;
  v109 = +[SpringFactory sharedFactory];
  v127 = _NSConcreteStackBlock;
  v128 = 3221225472;
  v129 = sub_1001200E8;
  v130 = &unk_10020ED88;
  v131 = v31;
  v132 = v100;
  v133 = v102;
  v134 = v104;
  v135 = v106;
  v110 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v109 options:v110 factory:0 animations:v108 completion:0.0];

  springAnimationDuration();
  v112 = v111;
  v113 = +[SpringFactory sharedFactory];
  block[10] = _NSConcreteStackBlock;
  block[11] = 3221225472;
  block[12] = sub_1001200F8;
  block[13] = &unk_10020EB00;
  v114 = v131;
  v126 = v114;
  v115 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v113 options:v115 factory:0 animations:v112 completion:0.0];

  v116 = [(MonthDayTransitionView *)self bottomView];
  [(MonthDayTransitionView *)self dayViewMonthLocation];
  v117 = [(MonthDayTransitionView *)self _animateView:v116 toPosition:1 setDelegate:?];

  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_100120104;
  block[8] = &unk_10020EB00;
  block[9] = self;
  v118 = navigationAnimationsPreferringFRR();
  [UIView animateWithDuration:327680 delay:v118 options:0 animations:0.25 completion:0.0];

  UIAnimationDragCoefficient();
  if (v119 <= 1.5)
  {
    v121 = 600000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v121 = (v120 * 0.91 * 1000000000.0);
  }

  v122 = dispatch_time(0, v121);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012014C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v122, &_dispatch_main_q, block);
}

- (void)animateToDayWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MonthDayTransitionView *)self animating])
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  [(SolariumDividedMonthDayTransitionView *)self setCompletion:v4];
  v5 = [(MonthDayTransitionView *)self monthViewController];
  [v5 forceUpdateListView];

  v6 = [(MonthDayTransitionView *)self monthViewController];
  v7 = [v6 view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [v7 convertRect:self fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(MonthDayTransitionView *)self monthViewController];
  v17 = [v16 view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [v17 convertPoint:self fromView:?];
  v19 = v18;

  v111.origin.x = v9;
  v111.origin.y = v11;
  v111.size.width = v13;
  v111.size.height = v15;
  v20 = CGRectGetMinY(v111) - v19;
  v21 = [(MonthDayTransitionView *)self monthViewController];
  [v21 enterAnimationSplitStateWithCutOutArea:v9 topBoundary:{v11, v13, v15, v19}];

  v22 = [(MonthDayTransitionView *)self paletteView];
  v23 = [(MonthDayTransitionView *)self monthViewController];
  v24 = [v23 view];
  [v22 convertPoint:v24 fromView:{CGPointZero.x, CGPointZero.y}];

  v25 = [(MonthDayTransitionView *)self monthViewController];
  v26 = [v25 view];
  [v26 frame];
  v28 = v27;

  [(MonthDayTransitionView *)self weekDayInitialsMonth];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [(MonthDayTransitionView *)self paletteView];
  v38 = [v37 dayInitialsHeaderView];
  [v38 setFrame:{v30, v32, v34, v36}];

  [(MonthDayTransitionView *)self setAnimating:1];
  v39 = [(MonthDayTransitionView *)self paletteView];
  v40 = [v39 dayScrubberController];
  v41 = [v40 view];
  [v41 setHidden:1];

  v42 = [(MonthDayTransitionView *)self scrubber];
  [v42 setHidden:0];

  v43 = [(MonthDayTransitionView *)self scrubber];
  [v43 setVerticallyCompressedState:1];

  v44 = [(MonthDayTransitionView *)self scrubber];
  [v44 layoutIfNeeded];

  v45 = +[CompactMonthViewController dividedModeBackgroundColor];
  v46 = [(MonthDayTransitionView *)self scrubber];
  [v46 setBackgroundColor:v45];

  v47 = [(MonthDayTransitionView *)self scrubber];
  [v47 animateToDayLayout];

  v48 = [(MonthDayTransitionView *)self scrubber];
  [(SolariumDividedMonthDayTransitionView *)self bringSubviewToFront:v48];

  springAnimationDuration();
  v50 = v49;
  v51 = +[SpringFactory sharedFactory];
  v110[21] = _NSConcreteStackBlock;
  v110[22] = 3221225472;
  v110[23] = sub_100120A4C;
  v110[24] = &unk_10020EB00;
  v110[25] = self;
  v52 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v51 options:v52 factory:0 animations:v50 completion:0.0];

  [(MonthDayTransitionView *)self weekDayInitialsMonth];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = [(MonthDayTransitionView *)self paletteView];
  v62 = [v61 dayInitialsHeaderView];
  [v62 setFrame:{v54, v56, v58, v60}];

  v63 = [(MonthDayTransitionView *)self paletteView];
  v64 = [v63 animatableDateLabel];
  [v64 setAlpha:1.0];

  springAnimationDuration();
  v66 = v65;
  v67 = +[SpringFactory sharedFactory];
  v110[16] = _NSConcreteStackBlock;
  v110[17] = 3221225472;
  v110[18] = sub_100120ABC;
  v110[19] = &unk_10020EB00;
  v110[20] = self;
  v68 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v67 options:v68 factory:0 animations:v66 completion:0.0];

  v69 = [(MonthDayTransitionView *)self monthViewController];
  v70 = [v69 view];
  [v70 frame];
  v72 = v71;

  v73 = [(MonthDayTransitionView *)self monthViewController];
  v74 = [v73 view];
  [v74 frame];
  v76 = v75;

  v77 = [(MonthDayTransitionView *)self monthViewController];
  v78 = [v77 view];
  [v78 setAlpha:1.0];

  springAnimationDuration();
  v80 = v79;
  v81 = +[SpringFactory sharedFactory];
  v110[8] = _NSConcreteStackBlock;
  v110[9] = 3221225472;
  v110[10] = sub_100120B88;
  v110[11] = &unk_100211CA0;
  v110[12] = self;
  v110[13] = 0;
  *&v110[14] = -(v20 + 63.0);
  v110[15] = v76;
  v82 = navigationAnimationsPreferringFRR();
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_100120C70;
  v110[3] = &unk_100211CC8;
  v110[5] = 0;
  v110[6] = 0;
  v110[4] = self;
  v110[7] = v72;
  [UIView _animateWithDuration:393216 delay:v81 options:v82 factory:v110 animations:v80 completion:0.0];

  v83 = [(MonthDayTransitionView *)self monthViewController];
  [v83 frameOfListView];
  MinY = CGRectGetMinY(v112);
  v85 = [(MonthDayTransitionView *)self monthViewController];
  v86 = [v85 view];
  [v86 frame];
  v87 = MinY / CGRectGetHeight(v113);

  CATransform3DMakeScale(&v109, 1.0, v87, 1.0);
  v88 = [(MonthDayTransitionView *)self bottomView];
  v89 = [v88 layer];
  v108 = v109;
  [v89 setTransform:&v108];

  v90 = [(MonthDayTransitionView *)self bottomView];
  [v90 setAlpha:0.0];

  v91 = [(MonthDayTransitionView *)self bottomView];
  [v91 setHidden:0];

  v92 = [(MonthDayTransitionView *)self bottomView];
  [v92 frame];
  v94 = v93;
  v96 = v95;

  v97 = [(MonthDayTransitionView *)self bottomView];
  [v97 setFrame:{0.0, v28, v94, v96}];

  springAnimationDuration();
  v99 = v98;
  v100 = +[SpringFactory sharedFactory];
  v107[5] = _NSConcreteStackBlock;
  v107[6] = 3221225472;
  v107[7] = sub_100120D2C;
  v107[8] = &unk_10020EB00;
  v107[9] = self;
  v101 = navigationAnimationsPreferringFRR();
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_100120E34;
  v107[3] = &unk_10020EB98;
  v107[4] = self;
  [UIView _animateWithDuration:393216 delay:v100 options:v101 factory:v107 animations:v99 completion:0.0];

  UIAnimationDragCoefficient();
  if (v102 <= 1.5)
  {
    v104 = 600000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v104 = (v103 * 0.91 * 1000000000.0);
  }

  v105 = dispatch_time(0, v104);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100120E44;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v105, &_dispatch_main_q, block);
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = SolariumDividedMonthDayTransitionView;
  [(MonthDayTransitionView *)&v12 animationDidStop:a3 finished:a4];
  v5 = [(MonthDayTransitionView *)self bottomView];
  v6 = [v5 layer];
  v7 = *&CATransform3DIdentity.m33;
  v11[4] = *&CATransform3DIdentity.m31;
  v11[5] = v7;
  v8 = *&CATransform3DIdentity.m43;
  v11[6] = *&CATransform3DIdentity.m41;
  v11[7] = v8;
  v9 = *&CATransform3DIdentity.m13;
  v11[0] = *&CATransform3DIdentity.m11;
  v11[1] = v9;
  v10 = *&CATransform3DIdentity.m23;
  v11[2] = *&CATransform3DIdentity.m21;
  v11[3] = v10;
  [v6 setTransform:v11];
}

@end