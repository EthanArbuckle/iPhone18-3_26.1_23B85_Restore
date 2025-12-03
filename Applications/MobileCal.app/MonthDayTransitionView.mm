@interface MonthDayTransitionView
- (CGPoint)dayViewDayLocation;
- (CGPoint)dayViewMonthLocation;
- (CGRect)dayScrubberFrame;
- (CGRect)monthScrubberFrame;
- (CGRect)weekDayInitialsDay;
- (CGRect)weekDayInitialsMonth;
- (CGSize)dayCellSize;
- (MonthDayTransitionView)initWithFrame:(CGRect)frame;
- (id)_animateView:(id)view toPosition:(CGPoint)position setDelegate:(BOOL)delegate;
- (void)_animateView:(id)view toAlpha:(double)alpha delay:(double)delay;
- (void)_basicAnimateView:(id)view toAlpha:(double)alpha duration:(double)duration;
- (void)_createViews;
- (void)_haltAnimations;
- (void)animateToDayWithCompletion:(id)completion;
- (void)animateToMonthWithCompletion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)prepareTransitionScrubberWithSelectedDate:(id)date todayDate:(id)todayDate dayViewController:(id)controller monthViewController:(id)viewController paletteView:(id)view reverse:(BOOL)reverse;
- (void)prepareTransitionWithTopView:(id)view bottomView:(id)bottomView allDayView:(id)dayView topLabelsContainer:(id)container;
@end

@implementation MonthDayTransitionView

- (MonthDayTransitionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MonthDayTransitionView;
  v3 = [(MonthDayTransitionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MonthDayTransitionView *)v3 _createViews];
  }

  return v4;
}

- (void)_createViews
{
  v3 = +[UIColor clearColor];
  [(MonthDayTransitionView *)self setBackgroundColor:v3];

  v4 = objc_alloc_init([objc_opt_class() monthDayNavigationTransitionViewClass]);
  [(MonthDayTransitionView *)self setScrubber:v4];

  UIAnimationDragCoefficient();
  v6 = v5 > 1.5;
  scrubber = [(MonthDayTransitionView *)self scrubber];
  [scrubber setDebug:v6];

  scrubber2 = [(MonthDayTransitionView *)self scrubber];
  [scrubber2 setHidden:1];
}

- (CGRect)weekDayInitialsDay
{
  x = self->_weekDayInitialsDay.origin.x;
  y = self->_weekDayInitialsDay.origin.y;
  width = self->_weekDayInitialsDay.size.width;
  height = self->_weekDayInitialsDay.size.height;
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

- (void)prepareTransitionWithTopView:(id)view bottomView:(id)bottomView allDayView:(id)dayView topLabelsContainer:(id)container
{
  dayViewCopy = dayView;
  containerCopy = container;
  bottomViewCopy = bottomView;
  [(MonthDayTransitionView *)self setTopView:view];
  [(MonthDayTransitionView *)self setBottomView:bottomViewCopy];

  allDayView = self->_allDayView;
  self->_allDayView = dayViewCopy;
  v15 = dayViewCopy;

  topLabelsContainer = self->_topLabelsContainer;
  self->_topLabelsContainer = containerCopy;
}

- (void)prepareTransitionScrubberWithSelectedDate:(id)date todayDate:(id)todayDate dayViewController:(id)controller monthViewController:(id)viewController paletteView:(id)view reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  dateCopy = date;
  todayDateCopy = todayDate;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  viewCopy = view;
  viewCopy2 = view;
  [(MonthDayTransitionView *)self setSelectedDate:dateCopy];
  objc_storeStrong(&self->_monthViewController, viewController);
  dayScrubberController = [controllerCopy dayScrubberController];
  view = [dayScrubberController view];
  [view layoutIfNeeded];

  dayScrubberController2 = [controllerCopy dayScrubberController];
  weekScrollView = [dayScrubberController2 weekScrollView];
  [weekScrollView frame];
  v266 = v23;

  dayScrubberController3 = [controllerCopy dayScrubberController];
  weekScrollView2 = [dayScrubberController3 weekScrollView];
  [weekScrollView2 cellSize];
  v27 = v26;
  v29 = v28;

  dayScrubberController4 = [controllerCopy dayScrubberController];
  view2 = [dayScrubberController4 view];
  [view2 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  view3 = [controllerCopy view];
  v273 = viewCopy2;
  [view3 convertRect:viewCopy2 fromView:{v33, v35, v37, v39}];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  view4 = [controllerCopy view];
  [(MonthDayTransitionView *)self convertRect:view4 fromView:v42, v44, v46, v48];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v264 = v56;

  v57 = CalSystemSolariumEnabled();
  v58 = v53 + -58.0;
  v271 = reverseCopy;
  if ((v57 & reverseCopy) == 0)
  {
    v58 = v53;
  }

  v263 = v58;
  v272 = [viewControllerCopy cellFramesForWeekContainingDate:dateCopy];
  [viewControllerCopy frameForWeekContainingDate:dateCopy];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v283 = viewControllerCopy;
  view5 = [viewControllerCopy view];
  selfCopy = self;
  [(MonthDayTransitionView *)self convertRect:view5 fromView:v60, v62, v64, v66];
  v261 = v68;
  v262 = v69;
  v71 = v70;
  v284 = v72;

  v276 = controllerCopy;
  dayScrubberController5 = [controllerCopy dayScrubberController];
  weekScrollView3 = [dayScrubberController5 weekScrollView];
  firstVisibleDayOffsetFromSelectedDay = [weekScrollView3 firstVisibleDayOffsetFromSelectedDay];

  v76 = firstVisibleDayOffsetFromSelectedDay + 6;
  v77 = CUIKCalendar();
  v78 = objc_alloc_init(NSDateComponents);
  [v78 setHour:1];
  v270 = [v77 dateByAddingComponents:v78 toDate:dateCopy options:0];
  v269 = [v77 components:512 fromDate:?];
  weekday = [v269 weekday];
  v80 = CUIKZeroIndexedWeekStart();
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v82 = v80 - weekday - 6;
  if (!IsLeftToRight)
  {
    v82 = weekday - v80 + 6;
  }

  v83 = v82 % 7;
  v84 = (7 - weekday) % 7;
  v86 = &firstVisibleDayOffsetFromSelectedDay[-v83];
  v85 = firstVisibleDayOffsetFromSelectedDay < v83;
  if (firstVisibleDayOffsetFromSelectedDay >= v83)
  {
    v87 = v83;
  }

  else
  {
    v87 = firstVisibleDayOffsetFromSelectedDay;
  }

  if (firstVisibleDayOffsetFromSelectedDay >= v83)
  {
    v88 = 0;
  }

  else
  {
    v88 = v83 - firstVisibleDayOffsetFromSelectedDay;
  }

  v292 = v88;
  if (v85)
  {
    v89 = 0;
  }

  else
  {
    v89 = v86;
  }

  v260 = v89;
  if (v76 <= v84)
  {
    v90 = v84;
  }

  else
  {
    v90 = (firstVisibleDayOffsetFromSelectedDay + 6);
  }

  v91 = objc_alloc_init(NSDateComponents);
  if (CalTimeDirectionIsLeftToRight())
  {
    v92 = v87;
  }

  else
  {
    v92 = -v87;
  }

  [v91 setDay:v92];
  v268 = v91;
  v285 = dateCopy;
  v93 = [v77 dateByAddingComponents:v91 toDate:dateCopy options:0];
  v291 = v77;
  v280 = v78;
  v94 = [v77 dateByAddingComponents:v78 toDate:v93 options:0];

  if (v87 >= 0)
  {
    v95 = v87;
  }

  else
  {
    v95 = -v87;
  }

  if (v90 >= 0)
  {
    v96 = v90;
  }

  else
  {
    v96 = -v90;
  }

  v97 = v95 + v96;
  v297 = [[NSMutableArray alloc] initWithCapacity:v95 + v96 + 1];
  v98 = CUIKGetOverlayCalendar();
  v289 = v98;
  if (v98)
  {
    v98 = [[NSMutableArray alloc] initWithCapacity:v97 + 1];
  }

  v296 = v98;
  v99 = [v77 components:542 fromDate:v94];
  v275 = [v77 components:542 fromDate:v285];
  v295 = [v77 dateFromComponents:?];
  v100 = v55;
  v101 = v51;
  v274 = todayDateCopy;
  v267 = v94;
  v278 = v29;
  v279 = v27;
  if (todayDateCopy)
  {
    v277 = [v77 components:542 fromDate:todayDateCopy];
    v294 = [v77 dateFromComponents:?];
  }

  else
  {
    v294 = 0;
    v277 = 0;
  }

  v265 = v99;
  v102 = [v77 dateFromComponents:v99];
  v103 = [v77 dateByAddingComponents:v280 toDate:v102 options:0];

  v104 = objc_alloc_init(NSDateComponents);
  [v104 setHour:0];
  if (CalTimeDirectionIsLeftToRight())
  {
    v105 = 1;
  }

  else
  {
    v105 = -1;
  }

  v293 = v104;
  [v104 setDay:v105];
  v290 = [[NSMutableArray alloc] initWithCapacity:v97 + 1];
  v288 = 0;
  v106 = 0;
  if (v84 <= -v90)
  {
    v107 = -v90;
  }

  else
  {
    v107 = v84;
  }

  v108 = v103;
  if (v107 <= v76)
  {
    v107 = v76;
  }

  v109 = 0;
  if (v87 >= 0)
  {
    v110 = v87;
  }

  else
  {
    v110 = -v87;
  }

  v111 = v107 + v110 + 1;
  v299 = -1;
  v300 = -1;
  v298 = -1;
  v286 = -1;
  v112 = v71;
  v113 = 0.0;
  do
  {
    v114 = v109;
    v115 = v108;
    v109 = [v77 components:542 fromDate:v108];
    [v109 day];
    v116 = CUIKLocalizedStringForInteger();
    [v297 addObject:v116];

    if (v296)
    {
      v117 = v109;
      v118 = [CUIKDateStrings overlayShortStringForDate:v115 inCalendar:v289];
      [v296 addObject:v118];

      v119 = [v289 components:1073741848 fromDate:v115];
      v120 = v294;
      if ([v119 day] == 1)
      {
        if ([v119 month] == 1 && (objc_msgSend(v119, "isLeapMonth") & 1) == 0)
        {
          traitCollection = [(MonthDayTransitionView *)selfCopy traitCollection];
          v124 = EKUIUsesLargeTextLayout();

          if (v124)
          {
            v113 = 3.0;
          }

          else
          {
            v113 = 1.5;
          }
        }

        else
        {
          traitCollection2 = [(MonthDayTransitionView *)selfCopy traitCollection];
          v122 = EKUIUsesLargeTextLayout();

          if (v122)
          {
            v113 = 2.0;
          }

          else
          {
            v113 = 1.0;
          }
        }

        v286 = v106;
        v77 = v291;
      }

      v109 = v117;
    }

    else
    {
      v120 = v294;
    }

    if ([v109 weekday] == 1 || objc_msgSend(v109, "weekday") == 7)
    {
      v125 = [NSNumber numberWithInteger:v106];
      [v290 addObject:v125];
    }

    if (v114)
    {
      month = [v109 month];
      month2 = [v114 month];
      v128 = v299;
      if (month != month2)
      {
        v128 = v106 - 1;
      }

      v299 = v128;
    }

    v129 = [v77 dateFromComponents:v109];
    v130 = [v129 isEqualToDate:v295];
    v131 = v300;
    if (v130)
    {
      v131 = v106;
    }

    v300 = v131;
    if (v120)
    {
      v132 = [v129 isEqualToDate:v120];
      v133 = v298;
      if (v132)
      {
        v133 = v106;
      }

      v298 = v133;
    }

    if (v292 == v106)
    {
      v134 = v109;
      v135 = +[CUIKPreferences sharedPreferences];
      showWeekNumbers = [v135 showWeekNumbers];

      if (showWeekNumbers)
      {
        v77 = v291;
        [v291 component:0x2000 fromDate:v115];
        v137 = CUIKLocalizedStringForInteger();

        v288 = v137;
      }

      else
      {
        v77 = v291;
      }

      v109 = v134;
    }

    v108 = [v77 dateByAddingComponents:v293 toDate:v115 options:0];

    ++v106;
  }

  while (v111 != v106);
  v258 = v108;
  timeZone = [v77 timeZone];
  v139 = [EKCalendarDate calendarDateWithDate:v285 timeZone:timeZone];

  v257 = v139;
  v140 = [v283 subviewForDate:v139];
  objc_opt_class();
  v256 = v140;
  if (objc_opt_isKindOfClass())
  {
    v141 = v140;
  }

  else
  {
    v141 = 0;
  }

  v142 = v141;
  visibleDaySummaryViews = [v142 visibleDaySummaryViews];
  v145 = v275;
  v144 = v276;
  p_isa = &selfCopy->super.super.super.isa;
  v303 = v142;
  v255 = visibleDaySummaryViews;
  if (v142)
  {
    v147 = visibleDaySummaryViews;
    v281 = v109;
    if (visibleDaySummaryViews)
    {
      v148 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [visibleDaySummaryViews count]);
      v149 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v147 count]);
      v304 = 0u;
      v305 = 0u;
      v306 = 0u;
      v307 = 0u;
      obj = v147;
      v150 = [obj countByEnumeratingWithState:&v304 objects:v308 count:16];
      if (v150)
      {
        v151 = v150;
        v152 = *v305;
        do
        {
          for (i = 0; i != v151; i = i + 1)
          {
            if (*v305 != v152)
            {
              objc_enumerationMutation(obj);
            }

            v154 = *(*(&v304 + 1) + 8 * i);
            v155 = captureImageFromView();
            v156 = [[UIImageView alloc] initWithImage:v155];
            [v154 bounds];
            [v303 convertRect:v154 fromView:?];
            v158 = v157;
            v160 = v159;
            v162 = v161;
            v164 = v163;
            [v156 setFrame:?];
            if ([v303 containsFirstDayOfMonth])
            {
              +[CompactMonthWeekView headerHeight];
              v160 = v160 - v165;
            }

            [v148 addObject:v156];
            v164 = [NSValue valueWithCGRect:v158, v160, v162, v164];
            [v149 addObject:v164];
          }

          v151 = [obj countByEnumeratingWithState:&v304 objects:v308 count:16];
        }

        while (v151);
      }

      p_isa = &selfCopy->super.super.super.isa;
      scrubber = [(MonthDayTransitionView *)selfCopy scrubber];
      [scrubber setMonthSummarySnapshots:v148];

      scrubber2 = [(MonthDayTransitionView *)selfCopy scrubber];
      [scrubber2 setMonthSummaryFrames:v149];

      v145 = v275;
      v144 = v276;
      v109 = v281;
    }

    else
    {
      occurrencesView = [v142 occurrencesView];
      v170 = captureImageFromView();

      v171 = [[UIImageView alloc] initWithImage:v170];
      occurrencesView2 = [v303 occurrencesView];
      [occurrencesView2 bounds];
      v174 = v173;
      v176 = v175;
      v178 = v177;
      v180 = v179;
      occurrencesView3 = [v303 occurrencesView];
      [v303 convertRect:occurrencesView3 fromView:{v174, v176, v178, v180}];
      v183 = v182;
      v185 = v184;
      v187 = v186;
      v189 = v188;

      [v171 setFrame:{v183, v185, v187, v189}];
      if ([v303 containsFirstDayOfMonth])
      {
        +[CompactMonthWeekView headerHeight];
        v185 = v185 - v190;
      }

      v109 = v281;
      scrubber3 = [(MonthDayTransitionView *)selfCopy scrubber];
      [scrubber3 setMonthOccurrencesSnapshot:v171];

      scrubber4 = [(MonthDayTransitionView *)selfCopy scrubber];
      [scrubber4 setMonthOccurrencesFrame:{v183, v185, v187, v189}];
    }
  }

  objc_storeStrong(p_isa + 15, viewCopy);
  v194 = v263;
  v193 = v264;
  [p_isa setDayScrubberFrame:{v101, v263, v100, v264}];
  v195 = v261;
  v196 = v262;
  [p_isa setMonthScrubberFrame:{v261, v262, v112, v284}];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    [p_isa[15] convertRect:p_isa fromView:{v101, v263, v100, v264}];
    v101 = v197;
    v194 = v198;
    v100 = v199;
    v193 = v200;
    [p_isa[15] convertRect:p_isa fromView:{v261, v262, v112, v284}];
    v195 = v201;
    v196 = v202;
    v112 = v203;
    v284 = v204;
  }

  window = [p_isa[15] window];

  if (!window)
  {
    navigationController = [v283 navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    obja = v112;
    v208 = v195;
    v209 = v194;
    v210 = v113;
    v211 = v101;
    v212 = v100;
    v213 = v193;
    v215 = v214;

    v196 = v196 - v215;
    v193 = v213;
    v100 = v212;
    v101 = v211;
    v113 = v210;
    v194 = v209;
    v195 = v208;
    v112 = obja;
  }

  if (CalSystemSolariumEnabled())
  {
    scrubber5 = [p_isa scrubber];
    v217 = p_isa;
  }

  else
  {
    v218 = p_isa[15];
    scrubber5 = [p_isa scrubber];
    v217 = v218;
  }

  [v217 addSubview:scrubber5];
  v282 = v109;

  scrubber6 = [p_isa scrubber];
  [scrubber6 setDayCellSize:{v279, v278}];

  scrubber7 = [p_isa scrubber];
  [scrubber7 setSelectedIndex:v300];

  scrubber8 = [p_isa scrubber];
  [scrubber8 setTodayIndex:v298];

  month3 = [v277 month];
  v223 = v145;
  v225 = month3 == [v145 month] && v298 >= 0;
  scrubber9 = [p_isa scrubber];
  [scrubber9 setStrings:v297 overlayStrings:v296 weekNumberString:v288 todayInWeek:v225];

  if ((v286 & 0x8000000000000000) == 0)
  {
    scrubber10 = [p_isa scrubber];
    [scrubber10 setUnderlineThickness:v286 forOverlayStringAtIndex:v113];
  }

  scrubber11 = [p_isa scrubber];
  [scrubber11 setWeekendIndices:v290];

  scrubber12 = [p_isa scrubber];
  dayScrubberController6 = [v144 dayScrubberController];
  visibleCellDayTypes = [dayScrubberController6 visibleCellDayTypes];
  dayScrubberController7 = [v144 dayScrubberController];
  visibleCellBadgeColors = [dayScrubberController7 visibleCellBadgeColors];
  dayScrubberController8 = [v144 dayScrubberController];
  visibleCellBadgeLocales = [dayScrubberController8 visibleCellBadgeLocales];
  [scrubber12 setDayTypes:visibleCellDayTypes badgeColors:visibleCellBadgeColors badgeLocales:visibleCellBadgeLocales];

  scrubber13 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber13 setDayFrame:{v101, v194, v100, v193}];

  scrubber14 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber14 setMonthFrame:{v195, v196, v112, v284}];

  scrubber15 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber15 setFirstDayCellInset:v266];

  scrubber16 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber16 setFirstDayCellIndex:v260];

  scrubber17 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber17 setFirstMonthCellIndex:v292];

  scrubber18 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber18 setMonthCellFrames:v272];

  scrubber19 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber19 setMonthRowHeight:v284];

  scrubber20 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber20 setMonthBreakIndex:v299];

  [(MonthDayTransitionView *)selfCopy setDayCellSize:v279, v278];
  scrubber21 = [(MonthDayTransitionView *)selfCopy scrubber];
  [scrubber21 completeSetup];

  bottomView = [(MonthDayTransitionView *)selfCopy bottomView];
  [bottomView frame];
  selfCopy->_dayViewDayLocation.x = v246;
  selfCopy->_dayViewDayLocation.y = v247;

  [(MonthDayTransitionView *)selfCopy monthScrubberFrame];
  selfCopy->_dayViewMonthLocation.x = v249;
  selfCopy->_dayViewMonthLocation.y = v284 + v248;
  if (v271)
  {
    v250 = v283;
    v251 = v273;
    [v283 updatePalette:v273];
    [v273 layoutSubviews];
    dayInitialsHeaderView = [v273 dayInitialsHeaderView];
    [dayInitialsHeaderView frame];
    [(MonthDayTransitionView *)selfCopy setWeekDayInitialsMonth:?];

    [v144 updatePalette:v273];
    [v273 layoutSubviews];
    dayInitialsHeaderView2 = [v273 dayInitialsHeaderView];
    [dayInitialsHeaderView2 frame];
    [(MonthDayTransitionView *)selfCopy setWeekDayInitialsDay:?];
  }

  else
  {
    v251 = v273;
    [v144 updatePalette:v273];
    [v273 layoutSubviews];
    dayInitialsHeaderView3 = [v273 dayInitialsHeaderView];
    [dayInitialsHeaderView3 frame];
    [(MonthDayTransitionView *)selfCopy setWeekDayInitialsDay:?];

    v250 = v283;
    [v283 updatePalette:v273];
    [v273 layoutSubviews];
    dayInitialsHeaderView2 = [v273 dayInitialsHeaderView];
    [dayInitialsHeaderView2 frame];
    [(MonthDayTransitionView *)selfCopy setWeekDayInitialsMonth:?];
  }
}

- (void)animateToDayWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_animating)
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  [(MonthDayTransitionView *)self weekDayInitialsMonth];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  dayInitialsHeaderView = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [dayInitialsHeaderView setFrame:{v6, v8, v10, v12}];

  dayInitialsHeaderView2 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [dayInitialsHeaderView2 setAlpha:1.0];

  dateLabel = [(PaletteView *)self->_paletteView dateLabel];
  [dateLabel setAlpha:1.0];

  animatableDateLabel = [(PaletteView *)self->_paletteView animatableDateLabel];
  [animatableDateLabel setAlpha:1.0];

  topView = [(MonthDayTransitionView *)self topView];
  [topView bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  topView2 = [(MonthDayTransitionView *)self topView];
  [(MonthDayTransitionView *)self convertRect:topView2 fromView:v19, v21, v23, v25];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  topView3 = [(MonthDayTransitionView *)self topView];
  [topView3 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  topView4 = [(MonthDayTransitionView *)self topView];
  [(MonthDayTransitionView *)self convertRect:topView4 fromView:v29, v31, v33, v35];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  topView5 = [(MonthDayTransitionView *)self topView];
  [topView5 bounds];

  view = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [view convertRect:self fromView:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  view2 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [view2 convertPoint:self fromView:?];
  v49 = v48;

  [(CompactWidthMonthViewController *)self->_monthViewController enterAnimationSplitStateWithCutOutArea:v40 topBoundary:v42, v44, v46, v49];
  [(CompactWidthMonthViewController *)self->_monthViewController setSplitStateOpen:0];
  topView6 = [(MonthDayTransitionView *)self topView];
  [topView6 setAlpha:1.0];

  bottomView = [(MonthDayTransitionView *)self bottomView];
  [bottomView frame];
  v53 = v52;
  v55 = v54;

  x = self->_dayViewMonthLocation.x;
  y = self->_dayViewMonthLocation.y;
  bottomView2 = [(MonthDayTransitionView *)self bottomView];
  [bottomView2 setFrame:{x, y, v53, v55}];

  [(UIView *)self->_allDayView setAlpha:0.0];
  [(UIView *)self->_topLabelsContainer setAlpha:0.0];
  dayScrubberController = [(PaletteView *)self->_paletteView dayScrubberController];
  view3 = [dayScrubberController view];
  [view3 setHidden:1];

  scrubber = [(MonthDayTransitionView *)self scrubber];
  [scrubber setHidden:0];

  scrubber2 = [(MonthDayTransitionView *)self scrubber];
  [scrubber2 animateToDayLayout];

  springAnimationDuration();
  v64 = v63;
  v65 = +[SpringFactory sharedFactory];
  block[15] = _NSConcreteStackBlock;
  block[16] = 3221225472;
  block[17] = sub_1000A9B20;
  block[18] = &unk_10020EB00;
  block[19] = self;
  v66 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v65 options:v66 factory:0 animations:v64 completion:0.0];

  self->_animating = 1;
  [(MonthDayTransitionView *)self setCompletion:completionCopy];
  springAnimationDuration();
  v68 = v67;
  v69 = +[SpringFactory sharedFactory];
  block[10] = _NSConcreteStackBlock;
  block[11] = 3221225472;
  block[12] = sub_1000A9B34;
  block[13] = &unk_10020EB00;
  block[14] = self;
  v70 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v69 options:v70 factory:0 animations:v68 completion:0.0];

  bottomView3 = [(MonthDayTransitionView *)self bottomView];
  v72 = [(MonthDayTransitionView *)self _animateView:bottomView3 toPosition:1 setDelegate:self->_dayViewDayLocation.x, self->_dayViewDayLocation.y];

  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_1000A9C28;
  block[8] = &unk_10020EB00;
  block[9] = self;
  v73 = navigationAnimationsPreferringFRR();
  [UIView animateWithDuration:327680 delay:v73 options:0 animations:0.395 completion:0.205];

  UIAnimationDragCoefficient();
  if (v74 <= 1.5)
  {
    v76 = 600000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v76 = (v75 * 0.91 * 1000000000.0);
  }

  v77 = dispatch_time(0, v76);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9C84;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v77, &_dispatch_main_q, block);
}

- (void)animateToMonthWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_animating)
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  dateLabel = [(PaletteView *)self->_paletteView dateLabel];
  [dateLabel setHidden:1];

  animatableDateLabel = [(PaletteView *)self->_paletteView animatableDateLabel];
  [animatableDateLabel setAlpha:0.0];

  [(MonthDayTransitionView *)self weekDayInitialsDay];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  dayInitialsHeaderView = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [dayInitialsHeaderView setFrame:{v8, v10, v12, v14}];

  dayInitialsHeaderView2 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [dayInitialsHeaderView2 setAlpha:1.0];

  view = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [view convertRect:self fromView:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  view2 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [view2 convertPoint:self fromView:?];
  v28 = v27;

  [(CompactWidthMonthViewController *)self->_monthViewController enterAnimationSplitStateWithCutOutArea:v19 topBoundary:v21, v23, v25, v28];
  [(CompactWidthMonthViewController *)self->_monthViewController setSplitStateOpen:1];
  view3 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [view3 setAlpha:0.0];

  topView = [(MonthDayTransitionView *)self topView];
  [topView bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  topView2 = [(MonthDayTransitionView *)self topView];
  [(MonthDayTransitionView *)self convertRect:topView2 fromView:v32, v34, v36, v38];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  topView3 = [(MonthDayTransitionView *)self topView];
  [topView3 setAlpha:1.0];

  bottomView = [(MonthDayTransitionView *)self bottomView];
  [bottomView setAlpha:1.0];

  [(MonthDayTransitionView *)self dayScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  bottomView2 = [(MonthDayTransitionView *)self bottomView];
  [bottomView2 frame];
  v44 = v43;
  v46 = v45;

  x = self->_dayViewDayLocation.x;
  y = self->_dayViewDayLocation.y;
  bottomView3 = [(MonthDayTransitionView *)self bottomView];
  [bottomView3 setFrame:{x, y, v44, v46}];

  [(UIView *)self->_allDayView setAlpha:1.0];
  [(UIView *)self->_topLabelsContainer setAlpha:1.0];
  scrubber = [(MonthDayTransitionView *)self scrubber];
  [scrubber setHidden:0];

  scrubber2 = [(MonthDayTransitionView *)self scrubber];
  [scrubber2 animateToMonthLayout];

  dayScrubberController = [(PaletteView *)self->_paletteView dayScrubberController];
  view4 = [dayScrubberController view];
  [view4 setHidden:1];

  springAnimationDuration();
  v55 = v54;
  v56 = +[SpringFactory sharedFactory];
  v70[10] = _NSConcreteStackBlock;
  v70[11] = 3221225472;
  v70[12] = sub_1000AA2AC;
  v70[13] = &unk_10020EB00;
  v70[14] = self;
  v57 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v56 options:v57 factory:0 animations:v55 completion:0.0];

  self->_animating = 1;
  [(MonthDayTransitionView *)self setCompletion:completionCopy];
  springAnimationDuration();
  v59 = v58;
  v60 = +[SpringFactory sharedFactory];
  v70[5] = _NSConcreteStackBlock;
  v70[6] = 3221225472;
  v70[7] = sub_1000AA2C0;
  v70[8] = &unk_10020EB00;
  v70[9] = self;
  v61 = navigationAnimationsPreferringFRR();
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1000AA3B4;
  v70[3] = &unk_10020EB98;
  v70[4] = self;
  [UIView _animateWithDuration:393216 delay:v60 options:v61 factory:v70 animations:v59 completion:0.0];

  bottomView4 = [(MonthDayTransitionView *)self bottomView];
  v63 = [(MonthDayTransitionView *)self _animateView:bottomView4 toPosition:1 setDelegate:self->_dayViewMonthLocation.x, self->_dayViewMonthLocation.y];

  v69[5] = _NSConcreteStackBlock;
  v69[6] = 3221225472;
  v69[7] = sub_1000AA43C;
  v69[8] = &unk_10020EB00;
  v69[9] = self;
  v64 = navigationAnimationsPreferringFRR();
  [UIView animateWithDuration:327680 delay:v64 options:0 animations:0.25 completion:0.0];

  UIAnimationDragCoefficient();
  if (v65 <= 1.5)
  {
    v67 = 600000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v67 = (v66 * 0.91 * 1000000000.0);
  }

  v68 = dispatch_time(0, v67);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000AA498;
  v69[3] = &unk_10020EB00;
  v69[4] = self;
  dispatch_after(v68, &_dispatch_main_q, v69);
}

- (void)_haltAnimations
{
  v3 = CalSystemSolariumEnabled();
  window = [(MonthDayTransitionView *)self window];
  layer = [window layer];
  if (v3)
  {
    monthViewController = [(MonthDayTransitionView *)self monthViewController];
    navigationController = [monthViewController navigationController];
    navigationBar = [navigationController navigationBar];
    layer2 = [navigationBar layer];
    recursiveAnimationRemoveWithExclusion();
  }

  else
  {
    recursiveAnimationRemove();
  }
}

- (id)_animateView:(id)view toPosition:(CGPoint)position setDelegate:(BOOL)delegate
{
  v5 = springAnimateViewPosition();
  preferredNavigationAnimationFrameRateRange();
  [v5 setPreferredFrameRateRange:?];

  return v5;
}

- (void)_animateView:(id)view toAlpha:(double)alpha delay:(double)delay
{
  viewCopy = view;
  UIAnimationDragCoefficient();
  v9 = dispatch_time(0, (v8 * delay * 1000000000.0));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AA6EC;
  v11[3] = &unk_10020EE00;
  v12 = viewCopy;
  alphaCopy = alpha;
  v10 = viewCopy;
  dispatch_after(v9, &_dispatch_main_q, v11);
}

- (void)_basicAnimateView:(id)view toAlpha:(double)alpha duration:(double)duration
{
  viewCopy = view;
  v12 = objc_alloc_init(CABasicAnimation);
  [v12 setKeyPath:@"opacity"];
  [viewCopy alpha];
  v8 = [NSNumber numberWithDouble:?];
  [v12 setFromValue:v8];

  v9 = [NSNumber numberWithDouble:alpha];
  [v12 setToValue:v9];

  UIAnimationDragCoefficient();
  [v12 setDuration:v10 * duration];
  layer = [viewCopy layer];
  [layer addAnimation:v12 forKey:@"opacity"];

  preferredNavigationAnimationFrameRateRange();
  [v12 setPreferredFrameRateRange:?];
  [viewCopy setAlpha:alpha];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  [(CompactWidthMonthViewController *)self->_monthViewController endAnimationSplitState:stop];
  view = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [view setAlpha:1.0];

  scrubber = [(MonthDayTransitionView *)self scrubber];
  [scrubber setHidden:1];

  scrubber2 = [(MonthDayTransitionView *)self scrubber];
  [scrubber2 setAlpha:1.0];

  scrubber3 = [(MonthDayTransitionView *)self scrubber];
  [scrubber3 removeFromSuperview];

  dayScrubberController = [(PaletteView *)self->_paletteView dayScrubberController];
  view2 = [dayScrubberController view];
  [view2 setHidden:0];

  bottomView = [(MonthDayTransitionView *)self bottomView];
  [bottomView frame];
  v13 = v12;
  v15 = v14;

  x = self->_dayViewDayLocation.x;
  y = self->_dayViewDayLocation.y;
  bottomView2 = [(MonthDayTransitionView *)self bottomView];
  [bottomView2 setFrame:{x, y, v13, v15}];

  [(UIView *)self->_allDayView setAlpha:1.0];
  [(UIView *)self->_topLabelsContainer setAlpha:1.0];
  [(MonthDayTransitionView *)self setAlpha:1.0];
  self->_animating = 0;
  completion = [(MonthDayTransitionView *)self completion];
  [(MonthDayTransitionView *)self setCompletion:0];
  v19 = completion;
  if (completion)
  {
    (*(completion + 16))(completion);
    v19 = completion;
  }
}

- (CGRect)dayScrubberFrame
{
  x = self->_dayScrubberFrame.origin.x;
  y = self->_dayScrubberFrame.origin.y;
  width = self->_dayScrubberFrame.size.width;
  height = self->_dayScrubberFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)dayCellSize
{
  width = self->_dayCellSize.width;
  height = self->_dayCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)monthScrubberFrame
{
  x = self->_monthScrubberFrame.origin.x;
  y = self->_monthScrubberFrame.origin.y;
  width = self->_monthScrubberFrame.size.width;
  height = self->_monthScrubberFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)dayViewDayLocation
{
  x = self->_dayViewDayLocation.x;
  y = self->_dayViewDayLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)dayViewMonthLocation
{
  x = self->_dayViewMonthLocation.x;
  y = self->_dayViewMonthLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end