@interface DividedMonthListAnimator
- (id)_animateView:(id)view toPosition:(CGPoint)position;
- (void)animateToListWithCompletion:(id)completion inContext:(id)context;
- (void)animateToMonthWithCompletion:(id)completion inContext:(id)context;
@end

@implementation DividedMonthListAnimator

- (void)animateToMonthWithCompletion:(id)completion inContext:(id)context
{
  completionCopy = completion;
  contextCopy = context;
  if ([(CompactMonthListAnimator *)self animating])
  {
    [(CompactMonthListAnimator *)self _haltAnimations];
  }

  containerView = [contextCopy containerView];
  monthViewController = [(CompactMonthListAnimator *)self monthViewController];
  view = [monthViewController view];
  [view frame];
  v12 = v11;
  v14 = v13;

  monthViewController2 = [(CompactMonthListAnimator *)self monthViewController];
  [monthViewController2 frameOfListView];
  v16 = CGRectGetMinY(v116) + -63.0 + -17.0;

  [(CompactMonthListAnimator *)self setAnimating:1];
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
  v24 = v23;
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v26 = v25;
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v28 = v27;
  paletteView4 = [(CompactMonthListAnimator *)self paletteView];
  dayInitialsHeaderView2 = [paletteView4 dayInitialsHeaderView];
  [dayInitialsHeaderView2 setFrame:{v24, 0.0, v26, v28}];

  paletteView5 = [(CompactMonthListAnimator *)self paletteView];
  LOBYTE(paletteView4) = [paletteView5 dividerLineVisible];

  paletteView6 = [(CompactMonthListAnimator *)self paletteView];
  [paletteView6 setDividerLineVisible:0];

  paletteView7 = [(CompactMonthListAnimator *)self paletteView];
  [paletteView7 setSuppressLayout:1];

  springAnimationDuration();
  v35 = v34;
  v36 = +[SpringFactory sharedFactory];
  v111 = _NSConcreteStackBlock;
  v112 = 3221225472;
  v113 = sub_1000728C8;
  v114 = &unk_10020EB00;
  selfCopy = self;
  v37 = navigationAnimationsPreferringFRR();
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_1000729C0;
  v108[3] = &unk_10020FCA8;
  v110 = paletteView4;
  v108[4] = self;
  v109 = completionCopy;
  v38 = completionCopy;
  [UIView _animateWithDuration:393216 delay:v36 options:v37 factory:v108 animations:v35 completion:0.0];

  monthViewController3 = [(CompactMonthListAnimator *)self monthViewController];
  view2 = [monthViewController3 view];
  [view2 frame];
  v42 = v41;
  v44 = v43;

  monthViewController4 = [(CompactMonthListAnimator *)self monthViewController];
  view3 = [monthViewController4 view];
  [view3 setFrame:{0.0, -v16, v42, v44}];

  springAnimationDuration();
  v48 = v47;
  v49 = +[SpringFactory sharedFactory];
  v101 = _NSConcreteStackBlock;
  v102 = 3221225472;
  v103 = sub_100072ACC;
  v104 = &unk_10020EDD8;
  selfCopy2 = self;
  v106 = v12;
  v107 = v14;
  v50 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v49 options:v50 factory:0 animations:v48 completion:0.0];

  listViewController = [(CompactMonthListAnimator *)self listViewController];
  view4 = [listViewController view];
  [view4 setHidden:1];

  listViewController2 = [(CompactMonthListAnimator *)self listViewController];
  view5 = [listViewController2 view];
  [view5 frame];
  v56 = v55;
  listViewController3 = [(CompactMonthListAnimator *)self listViewController];
  view6 = [listViewController3 view];
  [view6 frame];
  v60 = v59;
  listViewController4 = [(CompactMonthListAnimator *)self listViewController];
  view7 = [listViewController4 view];
  [view7 setFrame:{0.0, 0.0, v56, v60}];

  listViewController5 = [(CompactMonthListAnimator *)self listViewController];
  view8 = [listViewController5 view];
  v65 = [view8 snapshotViewAfterScreenUpdates:0];

  listViewController6 = [(CompactMonthListAnimator *)self listViewController];
  view9 = [listViewController6 view];
  [containerView insertSubview:v65 aboveSubview:view9];

  [v65 frame];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  listViewController7 = [(CompactMonthListAnimator *)self listViewController];
  view10 = [listViewController7 view];
  superview = [view10 superview];
  [containerView convertRect:superview fromView:{v69, v71, v73, v75}];
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
  selfCopy3 = self;
  v100 = v65;
  v90 = navigationAnimationsPreferringFRR();
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_100072CA8;
  v92[3] = &unk_10020F7A8;
  v93 = v100;
  selfCopy4 = self;
  v91 = v100;
  [UIView _animateWithDuration:393216 delay:v89 options:v90 factory:v92 animations:v88 completion:0.0];
}

- (id)_animateView:(id)view toPosition:(CGPoint)position
{
  v4 = springAnimateViewPosition();
  preferredNavigationAnimationFrameRateRange();
  [v4 setPreferredFrameRateRange:?];

  return v4;
}

- (void)animateToListWithCompletion:(id)completion inContext:(id)context
{
  completionCopy = completion;
  contextCopy = context;
  if ([(CompactMonthListAnimator *)self animating])
  {
    [(CompactMonthListAnimator *)self _haltAnimations];
  }

  containerView = [contextCopy containerView];
  monthViewController = [(CompactMonthListAnimator *)self monthViewController];
  view = [monthViewController view];
  [view frame];
  v10 = v9;

  monthViewController2 = [(CompactMonthListAnimator *)self monthViewController];
  [monthViewController2 frameOfListView];
  v12 = CGRectGetMinY(v122) + -63.0 + -17.0;

  monthViewController3 = [(CompactMonthListAnimator *)self monthViewController];
  view2 = [monthViewController3 view];
  [view2 setAlpha:1.0];

  v15 = dispatch_time(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073608;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v15, &_dispatch_main_q, block);
  monthViewController4 = [(CompactMonthListAnimator *)self monthViewController];
  view3 = [monthViewController4 view];
  v18 = [view3 snapshotViewAfterScreenUpdates:0];

  [containerView addSubview:v18];
  [v18 setAlpha:1.0];
  monthViewController5 = [(CompactMonthListAnimator *)self monthViewController];
  view4 = [monthViewController5 view];
  [view4 frame];
  v22 = v21;
  v24 = v23;

  [v18 setFrame:{v10, 0.0, v22, v24}];
  [(CompactMonthListAnimator *)self setAnimating:1];
  [(CompactMonthListAnimator *)self weekDayInitialsMonth];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  paletteView = [(CompactMonthListAnimator *)self paletteView];
  dayInitialsHeaderView = [paletteView dayInitialsHeaderView];
  [dayInitialsHeaderView setFrame:{v26, v28, v30, v32}];

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
  LOBYTE(paletteView4) = [paletteView5 dividerLineVisible];

  paletteView6 = [(CompactMonthListAnimator *)self paletteView];
  [paletteView6 setDividerLineVisible:0];

  paletteView7 = [(CompactMonthListAnimator *)self paletteView];
  [paletteView7 setSuppressLayout:1];

  springAnimationDuration();
  v45 = v44;
  v46 = +[SpringFactory sharedFactory];
  v116 = _NSConcreteStackBlock;
  v117 = 3221225472;
  v118 = sub_100073668;
  v119 = &unk_10020EB00;
  selfCopy = self;
  v47 = navigationAnimationsPreferringFRR();
  v113[0] = _NSConcreteStackBlock;
  v113[1] = 3221225472;
  v113[2] = sub_10007376C;
  v113[3] = &unk_10020FCA8;
  v115 = paletteView4;
  v113[4] = self;
  v114 = completionCopy;
  v92 = completionCopy;
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
  selfCopy2 = self;
  v52 = v111;
  [UIView _animateWithDuration:393216 delay:v50 options:v51 factory:v104 animations:v49 completion:0.0];

  listViewController = [(CompactMonthListAnimator *)self listViewController];
  view5 = [listViewController view];
  [view5 setHidden:0];

  v55 = dispatch_time(0, 0);
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_100073964;
  v103[3] = &unk_10020EB00;
  v103[4] = self;
  dispatch_after(v55, &_dispatch_main_q, v103);

  listViewController2 = [(CompactMonthListAnimator *)self listViewController];
  view6 = [listViewController2 view];
  v58 = [view6 snapshotViewAfterScreenUpdates:1];

  [containerView addSubview:v58];
  [v58 frame];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  listViewController3 = [(CompactMonthListAnimator *)self listViewController];
  view7 = [listViewController3 view];
  superview = [view7 superview];
  [containerView convertRect:superview fromView:{v60, v62, v64, v66}];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;

  [v58 setFrame:{v71, v73, v75, v77}];
  monthViewController6 = [(CompactMonthListAnimator *)self monthViewController];
  [monthViewController6 frameOfListView];
  MinY = CGRectGetMinY(v123);
  monthViewController7 = [(CompactMonthListAnimator *)self monthViewController];
  view8 = [monthViewController7 view];
  [view8 frame];
  v82 = MinY / CGRectGetHeight(v124);

  [v58 frame];
  Height = CGRectGetHeight(v125);
  CATransform3DMakeTranslation(&a, 0.0, Height * 0.5, 0.0);
  CATransform3DMakeScale(&b, 1.0, v82, 1.0);
  CATransform3DConcat(&v102, &a, &b);
  layer = [v58 layer];
  a = v102;
  [layer setTransform:&a];

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