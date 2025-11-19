@interface MonthDayTransitionView
- (CGPoint)dayViewDayLocation;
- (CGPoint)dayViewMonthLocation;
- (CGRect)dayScrubberFrame;
- (CGRect)monthScrubberFrame;
- (CGRect)weekDayInitialsDay;
- (CGRect)weekDayInitialsMonth;
- (CGSize)dayCellSize;
- (MonthDayTransitionView)initWithFrame:(CGRect)a3;
- (id)_animateView:(id)a3 toPosition:(CGPoint)a4 setDelegate:(BOOL)a5;
- (void)_animateView:(id)a3 toAlpha:(double)a4 delay:(double)a5;
- (void)_basicAnimateView:(id)a3 toAlpha:(double)a4 duration:(double)a5;
- (void)_createViews;
- (void)_haltAnimations;
- (void)animateToDayWithCompletion:(id)a3;
- (void)animateToMonthWithCompletion:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)prepareTransitionScrubberWithSelectedDate:(id)a3 todayDate:(id)a4 dayViewController:(id)a5 monthViewController:(id)a6 paletteView:(id)a7 reverse:(BOOL)a8;
- (void)prepareTransitionWithTopView:(id)a3 bottomView:(id)a4 allDayView:(id)a5 topLabelsContainer:(id)a6;
@end

@implementation MonthDayTransitionView

- (MonthDayTransitionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MonthDayTransitionView;
  v3 = [(MonthDayTransitionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v7 = [(MonthDayTransitionView *)self scrubber];
  [v7 setDebug:v6];

  v8 = [(MonthDayTransitionView *)self scrubber];
  [v8 setHidden:1];
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

- (void)prepareTransitionWithTopView:(id)a3 bottomView:(id)a4 allDayView:(id)a5 topLabelsContainer:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  [(MonthDayTransitionView *)self setTopView:a3];
  [(MonthDayTransitionView *)self setBottomView:v12];

  allDayView = self->_allDayView;
  self->_allDayView = v10;
  v15 = v10;

  topLabelsContainer = self->_topLabelsContainer;
  self->_topLabelsContainer = v11;
}

- (void)prepareTransitionScrubberWithSelectedDate:(id)a3 todayDate:(id)a4 dayViewController:(id)a5 monthViewController:(id)a6 paletteView:(id)a7 reverse:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v259 = a7;
  v18 = a7;
  [(MonthDayTransitionView *)self setSelectedDate:v14];
  objc_storeStrong(&self->_monthViewController, a6);
  v19 = [v16 dayScrubberController];
  v20 = [v19 view];
  [v20 layoutIfNeeded];

  v21 = [v16 dayScrubberController];
  v22 = [v21 weekScrollView];
  [v22 frame];
  v266 = v23;

  v24 = [v16 dayScrubberController];
  v25 = [v24 weekScrollView];
  [v25 cellSize];
  v27 = v26;
  v29 = v28;

  v30 = [v16 dayScrubberController];
  v31 = [v30 view];
  [v31 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = [v16 view];
  v273 = v18;
  [v40 convertRect:v18 fromView:{v33, v35, v37, v39}];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = [v16 view];
  [(MonthDayTransitionView *)self convertRect:v49 fromView:v42, v44, v46, v48];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v264 = v56;

  v57 = CalSystemSolariumEnabled();
  v58 = v53 + -58.0;
  v271 = v8;
  if ((v57 & v8) == 0)
  {
    v58 = v53;
  }

  v263 = v58;
  v272 = [v17 cellFramesForWeekContainingDate:v14];
  [v17 frameForWeekContainingDate:v14];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v283 = v17;
  v67 = [v17 view];
  v287 = self;
  [(MonthDayTransitionView *)self convertRect:v67 fromView:v60, v62, v64, v66];
  v261 = v68;
  v262 = v69;
  v71 = v70;
  v284 = v72;

  v276 = v16;
  v73 = [v16 dayScrubberController];
  v74 = [v73 weekScrollView];
  v75 = [v74 firstVisibleDayOffsetFromSelectedDay];

  v76 = v75 + 6;
  v77 = CUIKCalendar();
  v78 = objc_alloc_init(NSDateComponents);
  [v78 setHour:1];
  v270 = [v77 dateByAddingComponents:v78 toDate:v14 options:0];
  v269 = [v77 components:512 fromDate:?];
  v79 = [v269 weekday];
  v80 = CUIKZeroIndexedWeekStart();
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v82 = v80 - v79 - 6;
  if (!IsLeftToRight)
  {
    v82 = v79 - v80 + 6;
  }

  v83 = v82 % 7;
  v84 = (7 - v79) % 7;
  v86 = &v75[-v83];
  v85 = v75 < v83;
  if (v75 >= v83)
  {
    v87 = v83;
  }

  else
  {
    v87 = v75;
  }

  if (v75 >= v83)
  {
    v88 = 0;
  }

  else
  {
    v88 = v83 - v75;
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
    v90 = (v75 + 6);
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
  v285 = v14;
  v93 = [v77 dateByAddingComponents:v91 toDate:v14 options:0];
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
  v274 = v15;
  v267 = v94;
  v278 = v29;
  v279 = v27;
  if (v15)
  {
    v277 = [v77 components:542 fromDate:v15];
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
          v123 = [(MonthDayTransitionView *)v287 traitCollection];
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
          v121 = [(MonthDayTransitionView *)v287 traitCollection];
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
      v126 = [v109 month];
      v127 = [v114 month];
      v128 = v299;
      if (v126 != v127)
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
      v136 = [v135 showWeekNumbers];

      if (v136)
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
  v138 = [v77 timeZone];
  v139 = [EKCalendarDate calendarDateWithDate:v285 timeZone:v138];

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
  v143 = [v142 visibleDaySummaryViews];
  v145 = v275;
  v144 = v276;
  p_isa = &v287->super.super.super.isa;
  v303 = v142;
  v255 = v143;
  if (v142)
  {
    v147 = v143;
    v281 = v109;
    if (v143)
    {
      v148 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v143 count]);
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
            v166 = [NSValue valueWithCGRect:v158, v160, v162, v164];
            [v149 addObject:v166];
          }

          v151 = [obj countByEnumeratingWithState:&v304 objects:v308 count:16];
        }

        while (v151);
      }

      p_isa = &v287->super.super.super.isa;
      v167 = [(MonthDayTransitionView *)v287 scrubber];
      [v167 setMonthSummarySnapshots:v148];

      v168 = [(MonthDayTransitionView *)v287 scrubber];
      [v168 setMonthSummaryFrames:v149];

      v145 = v275;
      v144 = v276;
      v109 = v281;
    }

    else
    {
      v169 = [v142 occurrencesView];
      v170 = captureImageFromView();

      v171 = [[UIImageView alloc] initWithImage:v170];
      v172 = [v303 occurrencesView];
      [v172 bounds];
      v174 = v173;
      v176 = v175;
      v178 = v177;
      v180 = v179;
      v181 = [v303 occurrencesView];
      [v303 convertRect:v181 fromView:{v174, v176, v178, v180}];
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
      v191 = [(MonthDayTransitionView *)v287 scrubber];
      [v191 setMonthOccurrencesSnapshot:v171];

      v192 = [(MonthDayTransitionView *)v287 scrubber];
      [v192 setMonthOccurrencesFrame:{v183, v185, v187, v189}];
    }
  }

  objc_storeStrong(p_isa + 15, v259);
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

  v205 = [p_isa[15] window];

  if (!v205)
  {
    v206 = [v283 navigationController];
    v207 = [v206 navigationBar];
    [v207 frame];
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
    v216 = [p_isa scrubber];
    v217 = p_isa;
  }

  else
  {
    v218 = p_isa[15];
    v216 = [p_isa scrubber];
    v217 = v218;
  }

  [v217 addSubview:v216];
  v282 = v109;

  v219 = [p_isa scrubber];
  [v219 setDayCellSize:{v279, v278}];

  v220 = [p_isa scrubber];
  [v220 setSelectedIndex:v300];

  v221 = [p_isa scrubber];
  [v221 setTodayIndex:v298];

  v222 = [v277 month];
  v223 = v145;
  v225 = v222 == [v145 month] && v298 >= 0;
  v226 = [p_isa scrubber];
  [v226 setStrings:v297 overlayStrings:v296 weekNumberString:v288 todayInWeek:v225];

  if ((v286 & 0x8000000000000000) == 0)
  {
    v227 = [p_isa scrubber];
    [v227 setUnderlineThickness:v286 forOverlayStringAtIndex:v113];
  }

  v228 = [p_isa scrubber];
  [v228 setWeekendIndices:v290];

  v229 = [p_isa scrubber];
  v230 = [v144 dayScrubberController];
  v231 = [v230 visibleCellDayTypes];
  v232 = [v144 dayScrubberController];
  v233 = [v232 visibleCellBadgeColors];
  v234 = [v144 dayScrubberController];
  v235 = [v234 visibleCellBadgeLocales];
  [v229 setDayTypes:v231 badgeColors:v233 badgeLocales:v235];

  v236 = [(MonthDayTransitionView *)v287 scrubber];
  [v236 setDayFrame:{v101, v194, v100, v193}];

  v237 = [(MonthDayTransitionView *)v287 scrubber];
  [v237 setMonthFrame:{v195, v196, v112, v284}];

  v238 = [(MonthDayTransitionView *)v287 scrubber];
  [v238 setFirstDayCellInset:v266];

  v239 = [(MonthDayTransitionView *)v287 scrubber];
  [v239 setFirstDayCellIndex:v260];

  v240 = [(MonthDayTransitionView *)v287 scrubber];
  [v240 setFirstMonthCellIndex:v292];

  v241 = [(MonthDayTransitionView *)v287 scrubber];
  [v241 setMonthCellFrames:v272];

  v242 = [(MonthDayTransitionView *)v287 scrubber];
  [v242 setMonthRowHeight:v284];

  v243 = [(MonthDayTransitionView *)v287 scrubber];
  [v243 setMonthBreakIndex:v299];

  [(MonthDayTransitionView *)v287 setDayCellSize:v279, v278];
  v244 = [(MonthDayTransitionView *)v287 scrubber];
  [v244 completeSetup];

  v245 = [(MonthDayTransitionView *)v287 bottomView];
  [v245 frame];
  v287->_dayViewDayLocation.x = v246;
  v287->_dayViewDayLocation.y = v247;

  [(MonthDayTransitionView *)v287 monthScrubberFrame];
  v287->_dayViewMonthLocation.x = v249;
  v287->_dayViewMonthLocation.y = v284 + v248;
  if (v271)
  {
    v250 = v283;
    v251 = v273;
    [v283 updatePalette:v273];
    [v273 layoutSubviews];
    v252 = [v273 dayInitialsHeaderView];
    [v252 frame];
    [(MonthDayTransitionView *)v287 setWeekDayInitialsMonth:?];

    [v144 updatePalette:v273];
    [v273 layoutSubviews];
    v253 = [v273 dayInitialsHeaderView];
    [v253 frame];
    [(MonthDayTransitionView *)v287 setWeekDayInitialsDay:?];
  }

  else
  {
    v251 = v273;
    [v144 updatePalette:v273];
    [v273 layoutSubviews];
    v254 = [v273 dayInitialsHeaderView];
    [v254 frame];
    [(MonthDayTransitionView *)v287 setWeekDayInitialsDay:?];

    v250 = v283;
    [v283 updatePalette:v273];
    [v273 layoutSubviews];
    v253 = [v273 dayInitialsHeaderView];
    [v253 frame];
    [(MonthDayTransitionView *)v287 setWeekDayInitialsMonth:?];
  }
}

- (void)animateToDayWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_animating)
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  [(MonthDayTransitionView *)self weekDayInitialsMonth];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [v14 setAlpha:1.0];

  v15 = [(PaletteView *)self->_paletteView dateLabel];
  [v15 setAlpha:1.0];

  v16 = [(PaletteView *)self->_paletteView animatableDateLabel];
  [v16 setAlpha:1.0];

  v17 = [(MonthDayTransitionView *)self topView];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(MonthDayTransitionView *)self topView];
  [(MonthDayTransitionView *)self convertRect:v26 fromView:v19, v21, v23, v25];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  v27 = [(MonthDayTransitionView *)self topView];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [(MonthDayTransitionView *)self topView];
  [(MonthDayTransitionView *)self convertRect:v36 fromView:v29, v31, v33, v35];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  v37 = [(MonthDayTransitionView *)self topView];
  [v37 bounds];

  v38 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [v38 convertRect:self fromView:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [v47 convertPoint:self fromView:?];
  v49 = v48;

  [(CompactWidthMonthViewController *)self->_monthViewController enterAnimationSplitStateWithCutOutArea:v40 topBoundary:v42, v44, v46, v49];
  [(CompactWidthMonthViewController *)self->_monthViewController setSplitStateOpen:0];
  v50 = [(MonthDayTransitionView *)self topView];
  [v50 setAlpha:1.0];

  v51 = [(MonthDayTransitionView *)self bottomView];
  [v51 frame];
  v53 = v52;
  v55 = v54;

  x = self->_dayViewMonthLocation.x;
  y = self->_dayViewMonthLocation.y;
  v58 = [(MonthDayTransitionView *)self bottomView];
  [v58 setFrame:{x, y, v53, v55}];

  [(UIView *)self->_allDayView setAlpha:0.0];
  [(UIView *)self->_topLabelsContainer setAlpha:0.0];
  v59 = [(PaletteView *)self->_paletteView dayScrubberController];
  v60 = [v59 view];
  [v60 setHidden:1];

  v61 = [(MonthDayTransitionView *)self scrubber];
  [v61 setHidden:0];

  v62 = [(MonthDayTransitionView *)self scrubber];
  [v62 animateToDayLayout];

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
  [(MonthDayTransitionView *)self setCompletion:v4];
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

  v71 = [(MonthDayTransitionView *)self bottomView];
  v72 = [(MonthDayTransitionView *)self _animateView:v71 toPosition:1 setDelegate:self->_dayViewDayLocation.x, self->_dayViewDayLocation.y];

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

- (void)animateToMonthWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_animating)
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  v5 = [(PaletteView *)self->_paletteView dateLabel];
  [v5 setHidden:1];

  v6 = [(PaletteView *)self->_paletteView animatableDateLabel];
  [v6 setAlpha:0.0];

  [(MonthDayTransitionView *)self weekDayInitialsDay];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [v16 setAlpha:1.0];

  v17 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [v17 convertRect:self fromView:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [v26 convertPoint:self fromView:?];
  v28 = v27;

  [(CompactWidthMonthViewController *)self->_monthViewController enterAnimationSplitStateWithCutOutArea:v19 topBoundary:v21, v23, v25, v28];
  [(CompactWidthMonthViewController *)self->_monthViewController setSplitStateOpen:1];
  v29 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [v29 setAlpha:0.0];

  v30 = [(MonthDayTransitionView *)self topView];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [(MonthDayTransitionView *)self topView];
  [(MonthDayTransitionView *)self convertRect:v39 fromView:v32, v34, v36, v38];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  v40 = [(MonthDayTransitionView *)self topView];
  [v40 setAlpha:1.0];

  v41 = [(MonthDayTransitionView *)self bottomView];
  [v41 setAlpha:1.0];

  [(MonthDayTransitionView *)self dayScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  v42 = [(MonthDayTransitionView *)self bottomView];
  [v42 frame];
  v44 = v43;
  v46 = v45;

  x = self->_dayViewDayLocation.x;
  y = self->_dayViewDayLocation.y;
  v49 = [(MonthDayTransitionView *)self bottomView];
  [v49 setFrame:{x, y, v44, v46}];

  [(UIView *)self->_allDayView setAlpha:1.0];
  [(UIView *)self->_topLabelsContainer setAlpha:1.0];
  v50 = [(MonthDayTransitionView *)self scrubber];
  [v50 setHidden:0];

  v51 = [(MonthDayTransitionView *)self scrubber];
  [v51 animateToMonthLayout];

  v52 = [(PaletteView *)self->_paletteView dayScrubberController];
  v53 = [v52 view];
  [v53 setHidden:1];

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
  [(MonthDayTransitionView *)self setCompletion:v4];
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

  v62 = [(MonthDayTransitionView *)self bottomView];
  v63 = [(MonthDayTransitionView *)self _animateView:v62 toPosition:1 setDelegate:self->_dayViewMonthLocation.x, self->_dayViewMonthLocation.y];

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
  v9 = [(MonthDayTransitionView *)self window];
  v4 = [v9 layer];
  if (v3)
  {
    v5 = [(MonthDayTransitionView *)self monthViewController];
    v6 = [v5 navigationController];
    v7 = [v6 navigationBar];
    v8 = [v7 layer];
    recursiveAnimationRemoveWithExclusion();
  }

  else
  {
    recursiveAnimationRemove();
  }
}

- (id)_animateView:(id)a3 toPosition:(CGPoint)a4 setDelegate:(BOOL)a5
{
  v5 = springAnimateViewPosition();
  preferredNavigationAnimationFrameRateRange();
  [v5 setPreferredFrameRateRange:?];

  return v5;
}

- (void)_animateView:(id)a3 toAlpha:(double)a4 delay:(double)a5
{
  v7 = a3;
  UIAnimationDragCoefficient();
  v9 = dispatch_time(0, (v8 * a5 * 1000000000.0));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AA6EC;
  v11[3] = &unk_10020EE00;
  v12 = v7;
  v13 = a4;
  v10 = v7;
  dispatch_after(v9, &_dispatch_main_q, v11);
}

- (void)_basicAnimateView:(id)a3 toAlpha:(double)a4 duration:(double)a5
{
  v7 = a3;
  v12 = objc_alloc_init(CABasicAnimation);
  [v12 setKeyPath:@"opacity"];
  [v7 alpha];
  v8 = [NSNumber numberWithDouble:?];
  [v12 setFromValue:v8];

  v9 = [NSNumber numberWithDouble:a4];
  [v12 setToValue:v9];

  UIAnimationDragCoefficient();
  [v12 setDuration:v10 * a5];
  v11 = [v7 layer];
  [v11 addAnimation:v12 forKey:@"opacity"];

  preferredNavigationAnimationFrameRateRange();
  [v12 setPreferredFrameRateRange:?];
  [v7 setAlpha:a4];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  [(CompactWidthMonthViewController *)self->_monthViewController endAnimationSplitState:a3];
  v5 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [v5 setAlpha:1.0];

  v6 = [(MonthDayTransitionView *)self scrubber];
  [v6 setHidden:1];

  v7 = [(MonthDayTransitionView *)self scrubber];
  [v7 setAlpha:1.0];

  v8 = [(MonthDayTransitionView *)self scrubber];
  [v8 removeFromSuperview];

  v9 = [(PaletteView *)self->_paletteView dayScrubberController];
  v10 = [v9 view];
  [v10 setHidden:0];

  v11 = [(MonthDayTransitionView *)self bottomView];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  x = self->_dayViewDayLocation.x;
  y = self->_dayViewDayLocation.y;
  v18 = [(MonthDayTransitionView *)self bottomView];
  [v18 setFrame:{x, y, v13, v15}];

  [(UIView *)self->_allDayView setAlpha:1.0];
  [(UIView *)self->_topLabelsContainer setAlpha:1.0];
  [(MonthDayTransitionView *)self setAlpha:1.0];
  self->_animating = 0;
  v20 = [(MonthDayTransitionView *)self completion];
  [(MonthDayTransitionView *)self setCompletion:0];
  v19 = v20;
  if (v20)
  {
    (*(v20 + 16))(v20);
    v19 = v20;
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