@interface DividedMonthDayTransitionView
- (void)animateToDayWithCompletion:(id)completion;
- (void)animateToMonthWithCompletion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation DividedMonthDayTransitionView

- (void)animateToMonthWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MonthDayTransitionView *)self animating])
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  v202 = completionCopy;
  [(DividedMonthDayTransitionView *)self setCompletion:completionCopy];
  paletteView = [(MonthDayTransitionView *)self paletteView];
  [paletteView layoutSubviews];

  monthViewController = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController viewWillLayoutSubviews];

  monthViewController2 = [(MonthDayTransitionView *)self monthViewController];
  view = [monthViewController2 view];
  [view layoutSubviews];

  monthViewController3 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController3 viewDidLayoutSubviews];

  monthViewController4 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController4 forceUpdateListView];

  monthViewController5 = [(MonthDayTransitionView *)self monthViewController];
  view2 = [monthViewController5 view];
  [view2 frame];
  v14 = v13;
  v200 = v15;

  monthViewController6 = [(MonthDayTransitionView *)self monthViewController];
  view3 = [monthViewController6 view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [view3 convertRect:self fromView:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  monthViewController7 = [(MonthDayTransitionView *)self monthViewController];
  view4 = [monthViewController7 view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [view4 convertPoint:self fromView:?];
  v29 = v28;

  monthViewController8 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController8 frameOfListView];
  v198 = CGRectGetMinY(v243) - v29;

  monthViewController9 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController9 enterAnimationSplitStateWithCutOutArea:v19 topBoundary:{v21, v23, v25, v29}];

  [(MonthDayTransitionView *)self dayScrubberFrame];
  v33 = v29 + v32;
  monthViewController10 = [(MonthDayTransitionView *)self monthViewController];
  view5 = [monthViewController10 view];
  [view5 frame];
  v37 = v36;
  v39 = v38;

  monthViewController11 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController11 frameOfListView];
  v42 = v33 - v41;

  monthViewController12 = [(MonthDayTransitionView *)self monthViewController];
  view6 = [monthViewController12 view];
  [view6 setFrame:{0.0, v42, v37, v39}];

  bottomView = [(MonthDayTransitionView *)self bottomView];
  [bottomView setHidden:1];

  bottomView2 = [(MonthDayTransitionView *)self bottomView];
  [bottomView2 frame];
  v48 = v47;
  v50 = v49;

  [(MonthDayTransitionView *)self dayViewDayLocation];
  v52 = v51;
  v54 = v53;
  bottomView3 = [(MonthDayTransitionView *)self bottomView];
  [bottomView3 setFrame:{v52, v54, v48, v50}];

  allDayView = [(MonthDayTransitionView *)self allDayView];
  [allDayView setAlpha:1.0];

  monthViewController13 = [(MonthDayTransitionView *)self monthViewController];
  view7 = [monthViewController13 view];
  [view7 setAlpha:1.0];

  monthViewController14 = [(MonthDayTransitionView *)self monthViewController];
  view8 = [monthViewController14 view];
  v61 = captureImageFromView();

  v201 = v61;
  v62 = [[UIImageView alloc] initWithImage:v61];
  paletteView2 = [(MonthDayTransitionView *)self paletteView];
  paletteView3 = [(MonthDayTransitionView *)self paletteView];
  subviews = [paletteView3 subviews];
  firstObject = [subviews firstObject];
  [paletteView2 insertSubview:v62 belowSubview:firstObject];

  paletteView4 = [(MonthDayTransitionView *)self paletteView];
  layer = [paletteView4 layer];
  [layer setMasksToBounds:0];

  paletteView5 = [(MonthDayTransitionView *)self paletteView];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [paletteView5 convertRect:self fromView:?];
  v71 = v70;
  v73 = v72;

  [v62 setAlpha:0.0];
  [v62 frame];
  [v62 setFrame:{v71, v73 - v21}];
  [v62 setAutoresizingMask:0];
  topView = [(MonthDayTransitionView *)self topView];
  [topView bounds];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  topView2 = [(MonthDayTransitionView *)self topView];
  [(DividedMonthDayTransitionView *)self convertRect:topView2 fromView:v76, v78, v80, v82];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  bottomView4 = [(MonthDayTransitionView *)self bottomView];
  v85 = [bottomView4 snapshotViewAfterScreenUpdates:0];

  bottomView5 = [(MonthDayTransitionView *)self bottomView];
  [(DividedMonthDayTransitionView *)self insertSubview:v85 aboveSubview:bottomView5];

  bottomView6 = [(MonthDayTransitionView *)self bottomView];
  [bottomView6 convertPoint:self toView:{CGPointZero.x, CGPointZero.y}];
  v89 = v88;
  v91 = v90;

  v196 = v85;
  [v85 frame];
  [v85 setFrame:{v89, v91}];
  paletteView6 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView = [paletteView6 dayInitialsHeaderView];
  [dayInitialsHeaderView frame];
  v95 = v94;
  v97 = v96;

  paletteView7 = [(MonthDayTransitionView *)self paletteView];
  [paletteView7 bounds];
  v100 = v99;

  v101 = [[UIView alloc] initWithFrame:{0.0, v95, v100, v97}];
  v102 = +[UIColor systemBackgroundColor];
  [v101 setBackgroundColor:v102];

  paletteView8 = [(MonthDayTransitionView *)self paletteView];
  paletteView9 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView2 = [paletteView9 dayInitialsHeaderView];
  [paletteView8 insertSubview:v101 belowSubview:dayInitialsHeaderView2];

  paletteView10 = [(MonthDayTransitionView *)self paletteView];
  [paletteView10 bounds];
  v108 = v107;
  [v101 frame];
  v109 = CGRectGetMaxY(v244) + 500.0;

  v110 = [[UIView alloc] initWithFrame:{0.0, -500.0, v108, v109}];
  v111 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  [v110 setBackgroundColor:v111];

  paletteView11 = [(MonthDayTransitionView *)self paletteView];
  [paletteView11 insertSubview:v110 belowSubview:v101];

  v113 = [[UIView alloc] initWithFrame:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  v245.origin.x = 0.0;
  v245.origin.y = v95;
  v245.size.width = v100;
  v245.size.height = v97;
  Height = CGRectGetHeight(v245);
  EKUIScaleFactor();
  v116 = v95 + Height - 1.0 / v115;
  EKUIScaleFactor();
  v118 = 1.0 / v117;
  [(DividedMonthDayTransitionView *)self bounds];
  [v113 setFrame:{0.0, v116, CGRectGetWidth(v246), v118}];
  [v113 setAlpha:0.0];
  v119 = +[UIColor separatorColor];
  [v113 setBackgroundColor:v119];

  [v101 addSubview:v113];
  [(MonthDayTransitionView *)self setAnimating:1];
  paletteView12 = [(MonthDayTransitionView *)self paletteView];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [paletteView12 convertRect:self fromView:?];
  v122 = v121;

  v123 = v122 - v21;
  scrubber = [(MonthDayTransitionView *)self scrubber];
  [scrubber setHidden:0];

  v125 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  scrubber2 = [(MonthDayTransitionView *)self scrubber];
  [scrubber2 setBackgroundColor:v125];

  paletteView13 = [(MonthDayTransitionView *)self paletteView];
  dayScrubberController = [paletteView13 dayScrubberController];
  view9 = [dayScrubberController view];
  [view9 setHidden:1];

  scrubber3 = [(MonthDayTransitionView *)self scrubber];
  [scrubber3 setVerticallyCompressedState:1];

  scrubber4 = [(MonthDayTransitionView *)self scrubber];
  [scrubber4 layoutIfNeeded];

  scrubber5 = [(MonthDayTransitionView *)self scrubber];
  [scrubber5 animateToMonthLayout];

  springAnimationDuration();
  v134 = v133;
  v135 = +[SpringFactory sharedFactory];
  v235 = _NSConcreteStackBlock;
  v236 = 3221225472;
  v237 = sub_100070900;
  v238 = &unk_10020FC18;
  v239 = v101;
  v197 = v113;
  v240 = v197;
  selfCopy = self;
  v242 = v198;
  v136 = navigationAnimationsPreferringFRR();
  v232[0] = _NSConcreteStackBlock;
  v232[1] = 3221225472;
  v232[2] = sub_1000709DC;
  v232[3] = &unk_10020EB28;
  v232[4] = self;
  v199 = v239;
  v233 = v199;
  v137 = v110;
  v234 = v137;
  [UIView _animateWithDuration:393216 delay:v135 options:v136 factory:v232 animations:v134 completion:0.0];

  paletteView14 = [(MonthDayTransitionView *)self paletteView];
  dateLabel = [paletteView14 dateLabel];
  [dateLabel setAlpha:0.0];

  [(MonthDayTransitionView *)self weekDayInitialsDay];
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  paletteView15 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView3 = [paletteView15 dayInitialsHeaderView];
  [dayInitialsHeaderView3 setFrame:{v141, v143, v145, v147}];

  springAnimationDuration();
  v151 = v150;
  v152 = +[SpringFactory sharedFactory];
  v227 = _NSConcreteStackBlock;
  v228 = 3221225472;
  v229 = sub_100070A4C;
  v230 = &unk_10020EB00;
  selfCopy2 = self;
  v153 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v152 options:v153 factory:0 animations:v151 completion:0.0];

  monthViewController15 = [(MonthDayTransitionView *)self monthViewController];
  view10 = [monthViewController15 view];
  [view10 setHidden:1];

  springAnimationDuration();
  v157 = v156;
  v158 = +[SpringFactory sharedFactory];
  v217 = _NSConcreteStackBlock;
  v218 = 3221225472;
  v219 = sub_100070B18;
  v220 = &unk_10020FC40;
  selfCopy3 = self;
  v223 = v14;
  v224 = v200;
  v222 = v62;
  v225 = v14;
  v226 = v123;
  v159 = navigationAnimationsPreferringFRR();
  v214[0] = _NSConcreteStackBlock;
  v214[1] = 3221225472;
  v214[2] = sub_100070C14;
  v214[3] = &unk_10020F7A8;
  v160 = v222;
  v215 = v160;
  selfCopy4 = self;
  [UIView _animateWithDuration:393216 delay:v158 options:v159 factory:v214 animations:v157 completion:0.0];

  monthViewController16 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController16 frameOfListView];
  v163 = v162;
  v165 = v164;
  v167 = v166;
  v169 = v168;
  monthViewController17 = [(MonthDayTransitionView *)self monthViewController];
  view11 = [monthViewController17 view];
  [(DividedMonthDayTransitionView *)self convertRect:view11 fromView:v163, v165, v167, v169];
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v179 = v178;

  springAnimationDuration();
  v181 = v180;
  v182 = +[SpringFactory sharedFactory];
  v205 = _NSConcreteStackBlock;
  v206 = 3221225472;
  v207 = sub_100070C80;
  v208 = &unk_10020ED88;
  v209 = v196;
  v210 = v173;
  v211 = v175;
  v212 = v177;
  v213 = v179;
  v183 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v182 options:v183 factory:0 animations:v181 completion:0.0];

  springAnimationDuration();
  v185 = v184;
  v186 = +[SpringFactory sharedFactory];
  block[10] = _NSConcreteStackBlock;
  block[11] = 3221225472;
  block[12] = sub_100070C90;
  block[13] = &unk_10020EB00;
  v187 = v209;
  v204 = v187;
  v188 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v186 options:v188 factory:0 animations:v185 completion:0.0];

  bottomView7 = [(MonthDayTransitionView *)self bottomView];
  [(MonthDayTransitionView *)self dayViewMonthLocation];
  v190 = [(MonthDayTransitionView *)self _animateView:bottomView7 toPosition:1 setDelegate:?];

  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_100070C9C;
  block[8] = &unk_10020EB00;
  block[9] = self;
  v191 = navigationAnimationsPreferringFRR();
  [UIView animateWithDuration:327680 delay:v191 options:0 animations:0.25 completion:0.0];

  UIAnimationDragCoefficient();
  if (v192 <= 1.5)
  {
    v194 = 600000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v194 = (v193 * 0.91 * 1000000000.0);
  }

  v195 = dispatch_time(0, v194);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070CE4;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v195, &_dispatch_main_q, block);
}

- (void)animateToDayWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MonthDayTransitionView *)self animating])
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  v196 = completionCopy;
  [(DividedMonthDayTransitionView *)self setCompletion:completionCopy];
  monthViewController = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController forceUpdateListView];

  topView = [(MonthDayTransitionView *)self topView];
  [topView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  topView2 = [(MonthDayTransitionView *)self topView];
  [(DividedMonthDayTransitionView *)self convertRect:topView2 fromView:v8, v10, v12, v14];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  monthViewController2 = [(MonthDayTransitionView *)self monthViewController];
  view = [monthViewController2 view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [view convertRect:self fromView:?];
  v19 = v18;
  v194 = v18;
  v21 = v20;
  v191 = v20;
  v23 = v22;
  v25 = v24;

  monthViewController3 = [(MonthDayTransitionView *)self monthViewController];
  view2 = [monthViewController3 view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [view2 convertPoint:self fromView:?];
  v29 = v28;

  v229.origin.x = v19;
  v229.origin.y = v21;
  v229.size.width = v23;
  v229.size.height = v25;
  v193 = CGRectGetMinY(v229) - v29;
  monthViewController4 = [(MonthDayTransitionView *)self monthViewController];
  view3 = [monthViewController4 view];
  paletteView = [(MonthDayTransitionView *)self paletteView];
  [paletteView bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  paletteView2 = [(MonthDayTransitionView *)self paletteView];
  [view3 convertRect:paletteView2 fromView:{v34, v36, v38, v40}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  monthViewController5 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController5 frameOfListView];
  MinY = CGRectGetMinY(v230);
  v231.origin.x = v43;
  v231.origin.y = v45;
  v231.size.width = v47;
  v231.size.height = v49;
  v52 = MinY - CGRectGetMaxY(v231);

  monthViewController6 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController6 enterAnimationSplitStateWithCutOutArea:v194 topBoundary:{v191, v23, v25, v29}];

  monthViewController7 = [(MonthDayTransitionView *)self monthViewController];
  view4 = [monthViewController7 view];
  [view4 setAlpha:1.0];

  monthViewController8 = [(MonthDayTransitionView *)self monthViewController];
  view5 = [monthViewController8 view];
  v58 = captureImageFromView();

  v195 = v58;
  v59 = [[UIImageView alloc] initWithImage:v58];
  paletteView3 = [(MonthDayTransitionView *)self paletteView];
  paletteView4 = [(MonthDayTransitionView *)self paletteView];
  subviews = [paletteView4 subviews];
  firstObject = [subviews firstObject];
  [paletteView3 insertSubview:v59 belowSubview:firstObject];

  paletteView5 = [(MonthDayTransitionView *)self paletteView];
  layer = [paletteView5 layer];
  [layer setMasksToBounds:0];

  paletteView6 = [(MonthDayTransitionView *)self paletteView];
  [paletteView6 setExtraPaletteHeight:v52];

  paletteView7 = [(MonthDayTransitionView *)self paletteView];
  [paletteView7 layoutSubviews];

  paletteView8 = [(MonthDayTransitionView *)self paletteView];
  monthViewController9 = [(MonthDayTransitionView *)self monthViewController];
  view6 = [monthViewController9 view];
  [paletteView8 convertPoint:view6 fromView:{CGPointZero.x, CGPointZero.y}];
  v72 = v71;
  v74 = v73;

  [v59 frame];
  [v59 setFrame:{v72, v74}];
  [(MonthDayTransitionView *)self weekDayInitialsMonth];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  paletteView9 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView = [paletteView9 dayInitialsHeaderView];
  [dayInitialsHeaderView setFrame:{v76, v78, v80, v82}];

  paletteView10 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView2 = [paletteView10 dayInitialsHeaderView];
  [dayInitialsHeaderView2 frame];
  v88 = v87;
  v90 = v89;

  paletteView11 = [(MonthDayTransitionView *)self paletteView];
  [paletteView11 bounds];
  v93 = v92;

  v94 = [[UIView alloc] initWithFrame:{0.0, v88, v93, v90}];
  v95 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  [v94 setBackgroundColor:v95];

  paletteView12 = [(MonthDayTransitionView *)self paletteView];
  paletteView13 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView3 = [paletteView13 dayInitialsHeaderView];
  [paletteView12 insertSubview:v94 belowSubview:dayInitialsHeaderView3];

  paletteView14 = [(MonthDayTransitionView *)self paletteView];
  [paletteView14 bounds];
  v101 = v100;
  [v94 frame];
  v102 = CGRectGetMaxY(v232) + 500.0;

  v103 = [[UIView alloc] initWithFrame:{0.0, -500.0, v101, v102}];
  v104 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  [v103 setBackgroundColor:v104];

  paletteView15 = [(MonthDayTransitionView *)self paletteView];
  [paletteView15 insertSubview:v103 aboveSubview:v59];

  v106 = [[UIView alloc] initWithFrame:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  v233.origin.x = 0.0;
  v233.origin.y = v88;
  v233.size.width = v93;
  v233.size.height = v90;
  Height = CGRectGetHeight(v233);
  EKUIScaleFactor();
  v109 = v88 + Height - 1.0 / v108;
  EKUIScaleFactor();
  v111 = 1.0 / v110;
  [(DividedMonthDayTransitionView *)self bounds];
  [v106 setFrame:{0.0, v109, CGRectGetWidth(v234), v111}];
  [v106 setAlpha:1.0];
  v112 = +[UIColor separatorColor];
  [v106 setBackgroundColor:v112];

  [v94 addSubview:v106];
  [(MonthDayTransitionView *)self setAnimating:1];
  paletteView16 = [(MonthDayTransitionView *)self paletteView];
  dayScrubberController = [paletteView16 dayScrubberController];
  view7 = [dayScrubberController view];
  [view7 setHidden:1];

  scrubber = [(MonthDayTransitionView *)self scrubber];
  [scrubber setHidden:0];

  scrubber2 = [(MonthDayTransitionView *)self scrubber];
  [scrubber2 setAlpha:1.0];

  scrubber3 = [(MonthDayTransitionView *)self scrubber];
  [scrubber3 setVerticallyCompressedState:1];

  scrubber4 = [(MonthDayTransitionView *)self scrubber];
  [scrubber4 layoutIfNeeded];

  v120 = +[CompactMonthViewController dividedModeBackgroundColor];
  scrubber5 = [(MonthDayTransitionView *)self scrubber];
  [scrubber5 setBackgroundColor:v120];

  scrubber6 = [(MonthDayTransitionView *)self scrubber];
  [scrubber6 animateToDayLayout];

  springAnimationDuration();
  v124 = v123;
  v125 = +[SpringFactory sharedFactory];
  v223 = _NSConcreteStackBlock;
  v224 = 3221225472;
  v225 = sub_100071CD4;
  v226 = &unk_10020EC68;
  v192 = v106;
  v227 = v192;
  selfCopy = self;
  v126 = navigationAnimationsPreferringFRR();
  v220[0] = _NSConcreteStackBlock;
  v220[1] = 3221225472;
  v220[2] = sub_100071D6C;
  v220[3] = &unk_10020F7A8;
  v190 = v94;
  v221 = v190;
  v189 = v103;
  v222 = v189;
  [UIView _animateWithDuration:393216 delay:v125 options:v126 factory:v220 animations:v124 completion:0.0];

  [(MonthDayTransitionView *)self weekDayInitialsMonth];
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v134 = v133;
  paletteView17 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView4 = [paletteView17 dayInitialsHeaderView];
  [dayInitialsHeaderView4 setFrame:{v128, v130, v132, v134}];

  paletteView18 = [(MonthDayTransitionView *)self paletteView];
  animatableDateLabel = [paletteView18 animatableDateLabel];
  [animatableDateLabel setAlpha:1.0];

  springAnimationDuration();
  v140 = v139;
  v141 = +[SpringFactory sharedFactory];
  v215 = _NSConcreteStackBlock;
  v216 = 3221225472;
  v217 = sub_100071DA8;
  v218 = &unk_10020EB00;
  selfCopy2 = self;
  v142 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v141 options:v142 factory:0 animations:v140 completion:0.0];

  springAnimationDuration();
  v144 = v143;
  v210 = _NSConcreteStackBlock;
  v211 = 3221225472;
  v212 = sub_100071E74;
  v213 = &unk_10020EB00;
  selfCopy3 = self;
  v145 = navigationAnimationsPreferringFRR();
  [UIView _animateUsingSpringWithDuration:0 delay:v145 options:0 mass:v144 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:400.0 completion:0.0];

  monthViewController10 = [(MonthDayTransitionView *)self monthViewController];
  view8 = [monthViewController10 view];
  [view8 setHidden:1];

  springAnimationDuration();
  v149 = v148;
  v150 = +[SpringFactory sharedFactory];
  v204 = _NSConcreteStackBlock;
  v205 = 3221225472;
  v206 = sub_100071EE0;
  v207 = &unk_10020EE00;
  v208 = v59;
  v209 = v193;
  v151 = navigationAnimationsPreferringFRR();
  v202[0] = _NSConcreteStackBlock;
  v202[1] = 3221225472;
  v202[2] = sub_100071F40;
  v202[3] = &unk_10020F7A8;
  v202[4] = self;
  v152 = v208;
  v203 = v152;
  [UIView _animateWithDuration:393216 delay:v150 options:v151 factory:v202 animations:v149 completion:0.0];

  [(DividedMonthDayTransitionView *)self bounds];
  MaxY = CGRectGetMaxY(v235);
  bottomView = [(MonthDayTransitionView *)self bottomView];
  [bottomView frame];
  v155 = MaxY - CGRectGetHeight(v236);
  monthViewController11 = [(MonthDayTransitionView *)self monthViewController];
  navigationController = [monthViewController11 navigationController];
  toolbar = [navigationController toolbar];
  [toolbar frame];
  v159 = v155 - CGRectGetHeight(v237);

  monthViewController12 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController12 frameOfListView];
  v161 = CGRectGetMinY(v238);
  monthViewController13 = [(MonthDayTransitionView *)self monthViewController];
  view9 = [monthViewController13 view];
  [view9 frame];
  v164 = v161 / CGRectGetHeight(v239);

  bottomView2 = [(MonthDayTransitionView *)self bottomView];
  [bottomView2 frame];
  v166 = CGRectGetHeight(v240);
  CATransform3DMakeTranslation(&a, 0.0, v166 * 0.5, 0.0);
  CATransform3DMakeScale(&b, 1.0, v164, 1.0);
  CATransform3DConcat(&v201, &a, &b);
  bottomView3 = [(MonthDayTransitionView *)self bottomView];
  layer2 = [bottomView3 layer];
  a = v201;
  [layer2 setTransform:&a];

  bottomView4 = [(MonthDayTransitionView *)self bottomView];
  [bottomView4 setAlpha:0.0];

  bottomView5 = [(MonthDayTransitionView *)self bottomView];
  [bottomView5 setHidden:0];

  bottomView6 = [(MonthDayTransitionView *)self bottomView];
  [bottomView6 frame];
  v173 = v172;
  v175 = v174;

  bottomView7 = [(MonthDayTransitionView *)self bottomView];
  [bottomView7 setFrame:{0.0, v159, v173, v175}];

  springAnimationDuration();
  v178 = v177;
  v179 = +[SpringFactory sharedFactory];
  v198[5] = _NSConcreteStackBlock;
  v198[6] = 3221225472;
  v198[7] = sub_100071FA8;
  v198[8] = &unk_10020EB00;
  v198[9] = self;
  v180 = navigationAnimationsPreferringFRR();
  v198[0] = _NSConcreteStackBlock;
  v198[1] = 3221225472;
  v198[2] = sub_100072094;
  v198[3] = &unk_10020EB98;
  v198[4] = self;
  [UIView _animateWithDuration:393216 delay:v179 options:v180 factory:v198 animations:v178 completion:0.0];

  UIAnimationDragCoefficient();
  if (v181 <= 1.5)
  {
    v183 = 600000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v183 = (v182 * 0.91 * 1000000000.0);
  }

  v184 = dispatch_time(0, v183);
  springAnimationDuration();
  v186 = v185;
  v187 = +[SpringFactory sharedFactory];
  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_1000720A4;
  block[8] = &unk_10020EB00;
  block[9] = self;
  v188 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v187 options:v188 factory:&stru_10020FC80 animations:v186 completion:0.0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000720F0;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v184, &_dispatch_main_q, block);
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v12.receiver = self;
  v12.super_class = DividedMonthDayTransitionView;
  [(MonthDayTransitionView *)&v12 animationDidStop:stop finished:finished];
  bottomView = [(MonthDayTransitionView *)self bottomView];
  layer = [bottomView layer];
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
  [layer setTransform:v11];
}

@end