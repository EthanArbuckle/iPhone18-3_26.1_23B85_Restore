@interface DividedMonthListAnimator
- (id)_animateView:(id)a3 toPosition:(CGPoint)a4;
- (void)animateToListWithCompletion:(id)a3 inContext:(id)a4;
- (void)animateToMonthWithCompletion:(id)a3 inContext:(id)a4;
@end

@implementation DividedMonthListAnimator

- (void)animateToMonthWithCompletion:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CompactMonthListAnimator *)self animating])
  {
    [(CompactMonthListAnimator *)self _haltAnimations];
  }

  v8 = [v7 containerView];
  v9 = [(CompactMonthListAnimator *)self monthViewController];
  v10 = [v9 view];
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = [(CompactMonthListAnimator *)self monthViewController];
  [v15 frameOfListView];
  v16 = CGRectGetMinY(v116) + -63.0 + -17.0;

  [(CompactMonthListAnimator *)self setAnimating:1];
  v17 = [(CompactMonthListAnimator *)self paletteView];
  v18 = [v17 dateLabel];
  [v18 setHidden:1];

  v19 = [(CompactMonthListAnimator *)self paletteView];
  v20 = [v19 animatableDateLabel];
  [v20 setAlpha:0.0];

  v21 = [(CompactMonthListAnimator *)self paletteView];
  v22 = [v21 dayInitialsHeaderView];
  [v22 setAlpha:0.0];

  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v24 = v23;
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v26 = v25;
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v28 = v27;
  v29 = [(CompactMonthListAnimator *)self paletteView];
  v30 = [v29 dayInitialsHeaderView];
  [v30 setFrame:{v24, 0.0, v26, v28}];

  v31 = [(CompactMonthListAnimator *)self paletteView];
  LOBYTE(v29) = [v31 dividerLineVisible];

  v32 = [(CompactMonthListAnimator *)self paletteView];
  [v32 setDividerLineVisible:0];

  v33 = [(CompactMonthListAnimator *)self paletteView];
  [v33 setSuppressLayout:1];

  springAnimationDuration();
  v35 = v34;
  v36 = +[SpringFactory sharedFactory];
  v111 = _NSConcreteStackBlock;
  v112 = 3221225472;
  v113 = sub_1000728C8;
  v114 = &unk_10020EB00;
  v115 = self;
  v37 = navigationAnimationsPreferringFRR();
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_1000729C0;
  v108[3] = &unk_10020FCA8;
  v110 = v29;
  v108[4] = self;
  v109 = v6;
  v38 = v6;
  [UIView _animateWithDuration:393216 delay:v36 options:v37 factory:v108 animations:v35 completion:0.0];

  v39 = [(CompactMonthListAnimator *)self monthViewController];
  v40 = [v39 view];
  [v40 frame];
  v42 = v41;
  v44 = v43;

  v45 = [(CompactMonthListAnimator *)self monthViewController];
  v46 = [v45 view];
  [v46 setFrame:{0.0, -v16, v42, v44}];

  springAnimationDuration();
  v48 = v47;
  v49 = +[SpringFactory sharedFactory];
  v101 = _NSConcreteStackBlock;
  v102 = 3221225472;
  v103 = sub_100072ACC;
  v104 = &unk_10020EDD8;
  v105 = self;
  v106 = v12;
  v107 = v14;
  v50 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v49 options:v50 factory:0 animations:v48 completion:0.0];

  v51 = [(CompactMonthListAnimator *)self listViewController];
  v52 = [v51 view];
  [v52 setHidden:1];

  v53 = [(CompactMonthListAnimator *)self listViewController];
  v54 = [v53 view];
  [v54 frame];
  v56 = v55;
  v57 = [(CompactMonthListAnimator *)self listViewController];
  v58 = [v57 view];
  [v58 frame];
  v60 = v59;
  v61 = [(CompactMonthListAnimator *)self listViewController];
  v62 = [v61 view];
  [v62 setFrame:{0.0, 0.0, v56, v60}];

  v63 = [(CompactMonthListAnimator *)self listViewController];
  v64 = [v63 view];
  v65 = [v64 snapshotViewAfterScreenUpdates:0];

  v66 = [(CompactMonthListAnimator *)self listViewController];
  v67 = [v66 view];
  [v8 insertSubview:v65 aboveSubview:v67];

  [v65 frame];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = [(CompactMonthListAnimator *)self listViewController];
  v77 = [v76 view];
  v78 = [v77 superview];
  [v8 convertRect:v78 fromView:{v69, v71, v73, v75}];
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;

  [v65 setFrame:{v80, v82, v84, v86}];
  springAnimationDuration();
  v88 = v87;
  v89 = +[SpringFactory sharedFactory];
  v95 = _NSConcreteStackBlock;
  v96 = 3221225472;
  v97 = sub_100072B88;
  v98 = &unk_10020EC68;
  v99 = self;
  v100 = v65;
  v90 = navigationAnimationsPreferringFRR();
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_100072CA8;
  v92[3] = &unk_10020F7A8;
  v93 = v100;
  v94 = self;
  v91 = v100;
  [UIView _animateWithDuration:393216 delay:v89 options:v90 factory:v92 animations:v88 completion:0.0];
}

- (id)_animateView:(id)a3 toPosition:(CGPoint)a4
{
  v4 = springAnimateViewPosition();
  preferredNavigationAnimationFrameRateRange();
  [v4 setPreferredFrameRateRange:?];

  return v4;
}

- (void)animateToListWithCompletion:(id)a3 inContext:(id)a4
{
  v91 = a3;
  v6 = a4;
  if ([(CompactMonthListAnimator *)self animating])
  {
    [(CompactMonthListAnimator *)self _haltAnimations];
  }

  v90 = [v6 containerView];
  v7 = [(CompactMonthListAnimator *)self monthViewController];
  v8 = [v7 view];
  [v8 frame];
  v10 = v9;

  v11 = [(CompactMonthListAnimator *)self monthViewController];
  [v11 frameOfListView];
  v12 = CGRectGetMinY(v122) + -63.0 + -17.0;

  v13 = [(CompactMonthListAnimator *)self monthViewController];
  v14 = [v13 view];
  [v14 setAlpha:1.0];

  v15 = dispatch_time(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073608;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v15, &_dispatch_main_q, block);
  v16 = [(CompactMonthListAnimator *)self monthViewController];
  v17 = [v16 view];
  v18 = [v17 snapshotViewAfterScreenUpdates:0];

  [v90 addSubview:v18];
  [v18 setAlpha:1.0];
  v19 = [(CompactMonthListAnimator *)self monthViewController];
  v20 = [v19 view];
  [v20 frame];
  v22 = v21;
  v24 = v23;

  [v18 setFrame:{v10, 0.0, v22, v24}];
  [(CompactMonthListAnimator *)self setAnimating:1];
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(CompactMonthListAnimator *)self paletteView];
  v34 = [v33 dayInitialsHeaderView];
  [v34 setFrame:{v26, v28, v30, v32}];

  v35 = [(CompactMonthListAnimator *)self paletteView];
  v36 = [v35 dayInitialsHeaderView];
  [v36 setAlpha:1.0];

  v37 = [(CompactMonthListAnimator *)self paletteView];
  v38 = [v37 dateLabel];
  [v38 setHidden:1];

  v39 = [(CompactMonthListAnimator *)self paletteView];
  v40 = [v39 animatableDateLabel];
  [v40 setAlpha:1.0];

  v41 = [(CompactMonthListAnimator *)self paletteView];
  LOBYTE(v39) = [v41 dividerLineVisible];

  v42 = [(CompactMonthListAnimator *)self paletteView];
  [v42 setDividerLineVisible:0];

  v43 = [(CompactMonthListAnimator *)self paletteView];
  [v43 setSuppressLayout:1];

  springAnimationDuration();
  v45 = v44;
  v46 = +[SpringFactory sharedFactory];
  v116 = _NSConcreteStackBlock;
  v117 = 3221225472;
  v118 = sub_100073668;
  v119 = &unk_10020EB00;
  v120 = self;
  v47 = navigationAnimationsPreferringFRR();
  v113[0] = _NSConcreteStackBlock;
  v113[1] = 3221225472;
  v113[2] = sub_10007376C;
  v113[3] = &unk_10020FCA8;
  v115 = v39;
  v113[4] = self;
  v114 = v91;
  v92 = v91;
  [UIView _animateWithDuration:393216 delay:v46 options:v47 factory:v113 animations:v45 completion:0.0];

  springAnimationDuration();
  v49 = v48;
  v50 = +[SpringFactory sharedFactory];
  v107 = _NSConcreteStackBlock;
  v108 = 3221225472;
  v109 = sub_1000738A4;
  v110 = &unk_10020EE00;
  v111 = v18;
  v112 = v12;
  v51 = navigationAnimationsPreferringFRR();
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_1000738F8;
  v104[3] = &unk_10020F7A8;
  v105 = v111;
  v106 = self;
  v52 = v111;
  [UIView _animateWithDuration:393216 delay:v50 options:v51 factory:v104 animations:v49 completion:0.0];

  v53 = [(CompactMonthListAnimator *)self listViewController];
  v54 = [v53 view];
  [v54 setHidden:0];

  v55 = dispatch_time(0, 0);
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_100073964;
  v103[3] = &unk_10020EB00;
  v103[4] = self;
  dispatch_after(v55, &_dispatch_main_q, v103);

  v56 = [(CompactMonthListAnimator *)self listViewController];
  v57 = [v56 view];
  v58 = [v57 snapshotViewAfterScreenUpdates:1];

  [v90 addSubview:v58];
  [v58 frame];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = [(CompactMonthListAnimator *)self listViewController];
  v68 = [v67 view];
  v69 = [v68 superview];
  [v90 convertRect:v69 fromView:{v60, v62, v64, v66}];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;

  [v58 setFrame:{v71, v73, v75, v77}];
  v78 = [(CompactMonthListAnimator *)self monthViewController];
  [v78 frameOfListView];
  MinY = CGRectGetMinY(v123);
  v80 = [(CompactMonthListAnimator *)self monthViewController];
  v81 = [v80 view];
  [v81 frame];
  v82 = MinY / CGRectGetHeight(v124);

  [v58 frame];
  Height = CGRectGetHeight(v125);
  CATransform3DMakeTranslation(&a, 0.0, Height * 0.5, 0.0);
  CATransform3DMakeScale(&b, 1.0, v82, 1.0);
  CATransform3DConcat(&v102, &a, &b);
  v84 = [v58 layer];
  a = v102;
  [v84 setTransform:&a];

  [v58 setAlpha:0.0];
  springAnimationDuration();
  v86 = v85;
  v87 = +[SpringFactory sharedFactory];
  v95 = _NSConcreteStackBlock;
  v96 = 3221225472;
  v97 = sub_100073A70;
  v98 = &unk_10020EB00;
  v99 = v58;
  v88 = navigationAnimationsPreferringFRR();
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_100073AE8;
  v93[3] = &unk_10020F7A8;
  v93[4] = self;
  v94 = v99;
  v89 = v99;
  [UIView _animateWithDuration:393216 delay:v87 options:v88 factory:v93 animations:v86 completion:0.0];
}

@end