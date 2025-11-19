@interface YearMonthTransitionView
- (CGRect)_calculateMonthFrameForYearViewZoom;
- (CGRect)_calculateYearFrameForYearViewZoom;
- (CGRect)_monthFrameForMonthAfter:(id)a3 anchorMonth:(id)a4;
- (CGRect)_monthFrameForMonthBefore:(id)a3 anchorMonth:(id)a4;
- (YearMonthTransitionView)initWithFrame:(CGRect)a3;
- (id)_captureImageOfMonthInYearView;
- (id)_createLabelWithFont:(id)a3;
- (id)_getMonthViewMonthContainingDate:(id)a3 hideMonthLabel:(BOOL)a4;
- (id)_getWeekContainingDate:(id)a3 prevDate:(id)a4;
- (id)_setUpMonthViewInMonthViewFrame;
- (void)_animateZoomToMonthState;
- (void)_animateZoomToYearState;
- (void)_animationComplete;
- (void)_basicAnimateView:(id)a3 toAlpha:(double)a4 duration:(double)a5;
- (void)_captureImagesForSlidingPiecesFromMonthViewController:(id)a3 selectedDate:(id)a4 calendar:(id)a5;
- (void)_haltAnimations;
- (void)_setToMonthState;
- (void)_setToYearState;
- (void)animateToMonthViewWithCompletion:(id)a3;
- (void)animateToYearViewWithCompletion:(id)a3;
- (void)prepareWithYearViewController:(id)a3 monthViewController:(id)a4 selectedDate:(id)a5 calendar:(id)a6 yearToMonth:(BOOL)a7 paletteView:(id)a8;
@end

@implementation YearMonthTransitionView

- (YearMonthTransitionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = YearMonthTransitionView;
  v3 = [(YearMonthTransitionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(YearMonthTransitionView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (id)_createLabelWithFont:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UILabel);
  [v4 setFont:v3];

  return v4;
}

- (void)prepareWithYearViewController:(id)a3 monthViewController:(id)a4 selectedDate:(id)a5 calendar:(id)a6 yearToMonth:(BOOL)a7 paletteView:(id)a8
{
  v15 = a3;
  v16 = a4;
  v142 = a5;
  v140 = a8;
  objc_storeStrong(&self->_yearViewController, a3);
  v139 = a6;
  objc_storeStrong(&self->_monthViewController, a4);
  self->_yearToMonth = a7;
  objc_storeStrong(&self->_paletteView, a8);
  if (!a7)
  {
    [v16 setSuspendEventLoading:1];
  }

  v17 = +[CUIKPreferences sharedPreferences];
  v18 = [v17 showWeekNumbers];
  v19 = 0.0;
  if (v18)
  {
    v19 = 4.0;
  }

  self->_monthWeekViewExtent = v19;

  objc_storeStrong(&self->_monthViewController, a4);
  v20 = [(YearMonthTransitionView *)self _getMonthViewMonthContainingDate:v142 hideMonthLabel:1];
  objc_storeStrong(&self->_monthViewInMonthView, v20);
  v21 = [v15 monthViewForCalendarDate:v142];
  objc_storeStrong(&self->_monthViewInYearView, v21);
  [objc_opt_class() _monthHeaderHeight];
  self->_monthHeaderHeight = v22;
  v141 = v15;
  if ([v16 dividedListMode])
  {
    v23 = objc_alloc_init(UIView);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v23;

    [(YearMonthTransitionView *)self bounds];
    [(UIView *)self->_backgroundView setFrame:?];
    [(UIView *)self->_backgroundView setAlpha:0.0];
    *buf = 0;
    v143 = 0;
    v25 = [v16 scrollView];
    v26 = [v25 backgroundColor];

    if (([v16 dividedListMode] & 1) != 0 || !objc_msgSend(v26, "getWhite:alpha:", buf, &v143))
    {
      [(UIView *)self->_backgroundView setBackgroundColor:v26];
    }

    else
    {
      self->_backgroundViewMonthAlpha = 1.0 - *buf;
      v27 = +[UIColor blackColor];
      [(UIView *)self->_backgroundView setBackgroundColor:v27];
    }

    [(YearMonthTransitionView *)self addSubview:self->_backgroundView];
  }

  if ([v16 dividedListMode])
  {
    v28 = 0.0;
    if (self->_yearToMonth && ([(PaletteView *)self->_paletteView frame], v30 = v29, paletteView = self->_paletteView, [(PaletteView *)paletteView frame], [(PaletteView *)paletteView sizeThatFits:v32, v33], v34 > v30))
    {
      v28 = v30 - v34;
      [(PaletteView *)self->_paletteView layoutSubviews];
      [(InfiniteScrollViewController *)self->_monthViewController viewWillLayoutSubviews];
      v35 = [(CompactWidthMonthViewController *)self->_monthViewController view];
      [v35 layoutSubviews];

      [(CompactMonthViewController *)self->_monthViewController viewDidLayoutSubviews];
      v36 = 1;
    }

    else
    {
      v36 = 0;
    }

    [v16 frameOfListView];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = [v16 view];
    [(YearMonthTransitionView *)self convertRect:v45 fromView:v38, v40, v42, v44];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v54 = [v16 view];
    [v16 frameOfListView];
    v55 = createImageViewFromView();
    monthListView = self->_monthListView;
    self->_monthListView = v55;

    [(UIView *)self->_monthListView setFrame:v47, v49, v51, v53];
    if (v36)
    {
      [(PaletteView *)self->_paletteView setExtraPaletteHeight:v28];
      [(PaletteView *)self->_paletteView layoutSubviews];
      [(PaletteView *)self->_paletteView setExtraPaletteHeight:0.0];
    }
  }

  [v15 monthFrameForCalendarDate:v142 adjustHeightUp:0];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = [v15 view];
  [(YearMonthTransitionView *)self convertRect:v65 fromView:v58, v60, v62, v64];
  self->_monthInYearViewFrame.origin.x = v66;
  self->_monthInYearViewFrame.origin.y = v67;
  self->_monthInYearViewFrame.size.width = v68;
  self->_monthInYearViewFrame.size.height = v69;

  [v20 monthFrame];
  self->_monthInMonthViewFrame.origin.x = v70;
  self->_monthInMonthViewFrame.origin.y = v71;
  self->_monthInMonthViewFrame.size.width = v72;
  self->_monthInMonthViewFrame.size.height = v73;
  [v15 monthHeaderLocationForCalendarDate:v142];
  v75 = v74;
  v77 = v76;
  v78 = [v15 view];
  [(YearMonthTransitionView *)self convertPoint:v78 fromView:v75, v77];
  v80 = v79;
  v82 = v81;

  [(YearMonthTransitionView *)self addSubview:v20];
  [v20 monthLabelFrame];
  [(YearMonthTransitionView *)self convertPoint:v20 fromView:?];
  v84 = v83;
  v86 = v85;
  [v20 removeFromSuperview];
  v87 = [v21 headerFont];
  v88 = [(YearMonthTransitionView *)self _createLabelWithFont:v87];

  v89 = +[CompactMonthViewController monthNameFont];
  v90 = [(YearMonthTransitionView *)self _createLabelWithFont:v89];

  v91 = [v21 headerFont];
  v92 = [v21 monthString];
  v138 = v91;
  if (v91)
  {
    v93 = [NSAttributedString alloc];
    v144[0] = NSFontAttributeName;
    v144[1] = NSKernAttributeName;
    v145[0] = v91;
    [v21 headerFontKerning];
    v94 = [NSNumber numberWithDouble:?];
    v145[1] = v94;
    v95 = [NSDictionary dictionaryWithObjects:v145 forKeys:v144 count:2];
    v96 = [v93 initWithString:v92 attributes:v95];

    [v88 setAttributedText:v96];
  }

  else
  {
    v97 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "yearMonthViewHeaderFont is nil. yearMonthView = %@", buf, 0xCu);
    }

    [v88 setText:v92];
  }

  v98 = [v20 monthLabelText];
  [v90 setText:v98];

  v136 = v92;
  if ([v21 isCurrentMonth])
  {
    CalendarAppTintColor();
  }

  else
  {
    [UIColor labelColor:v92];
  }
  v99 = ;
  [v88 setTextColor:{v99, v136}];
  [v90 setTextColor:v99];

  [v88 sizeToFit];
  *buf = 0;
  v143 = 0;
  v100 = [v88 font];
  CTFontGetLanguageAwareOutsets();

  [v88 frame];
  v102 = v101;
  v104 = v103;
  v106 = v105;
  CalInterfaceIsLeftToRight();
  CalCeilToScreenScale();
  [v88 setFrame:{v102, v104, v107, ceil(v106 + 0.0 + 0.0)}];
  v108 = [v20 monthLabel];
  [v108 frame];
  [v90 setFrame:?];
  [v20 monthLabelFrame];
  v110 = v109;
  v112 = v111;
  [v90 bounds];
  v113 = v84 + (v110 - CGRectGetWidth(v147)) * 0.5;
  [v90 bounds];
  v114 = self->_monthWeekViewExtent + v86 + (v112 - CGRectGetHeight(v148)) * 0.5;
  [v88 bounds];
  v116 = v115;
  v118 = v117;
  v119 = v82 - ceil((0.0 + 0.0) * 0.5);
  if (EKUICurrentWindowSizeParadigmForViewHierarchy() != 16)
  {
    v119 = v119 + -0.5;
  }

  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    v149.origin.x = v80;
    v149.origin.y = v119;
    v149.size.width = v116;
    v149.size.height = v118;
    v80 = v80 - CGRectGetWidth(v149);
  }

  [v90 bounds];
  v121 = v120;
  v123 = v122;
  [v88 frame];
  v124 = createImageViewFromView();
  v125 = [[CrossFadeView alloc] initWithStartView:v90 endView:v124 startFrame:v113 endFrame:{v114, v121, v123, v80, v119, v116, v118}];
  monthLabel = self->_monthLabel;
  self->_monthLabel = v125;

  [(YearMonthTransitionView *)self addSubview:self->_monthLabel];
  v127 = [(CompactYearViewController *)self->_yearViewController view];
  [v127 frame];
  self->_yearViewOriginalFrame.origin.x = v128;
  self->_yearViewOriginalFrame.origin.y = v129;
  self->_yearViewOriginalFrame.size.width = v130;
  self->_yearViewOriginalFrame.size.height = v131;

  [v16 setSuspendEventLoading:1];
  v132 = [(YearMonthTransitionView *)self _captureImageOfMonthInYearView];
  monthTransitionViewInYearState = self->_monthTransitionViewInYearState;
  self->_monthTransitionViewInYearState = v132;

  [(YearMonthTransitionView *)self _captureImagesForSlidingPiecesFromMonthViewController:v16 selectedDate:v142 calendar:v139];
  v134 = [(YearMonthTransitionView *)self _setUpMonthViewInMonthViewFrame];
  monthTransitionViewInMonthState = self->_monthTransitionViewInMonthState;
  self->_monthTransitionViewInMonthState = v134;

  [(YearMonthTransitionView *)self addSubview:self->_monthTransitionViewInYearState];
  [(YearMonthTransitionView *)self addSubview:self->_monthTransitionViewInMonthState];
  if (self->_monthBottomSlidingPiece)
  {
    [(YearMonthTransitionView *)self bringSubviewToFront:?];
  }

  if (self->_monthBottomSlidingPiece2)
  {
    [(YearMonthTransitionView *)self bringSubviewToFront:?];
  }

  [v16 setSuspendEventLoading:0];
  [(YearMonthTransitionView *)self bringSubviewToFront:self->_monthLabel];
  [(YearMonthTransitionView *)self addSubview:self->_monthListView];
}

- (void)animateToMonthViewWithCompletion:(id)a3
{
  v4 = a3;
  [(YearMonthTransitionView *)self _setToYearState];
  v5 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [v5 setAlpha:0.0];

  [(YearMonthTransitionView *)self _animateZoomToMonthState];
  UIAnimationDragCoefficient();
  if (v6 <= 1.5)
  {
    v8 = 750000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v8 = (v7 * 0.9 * 1000000000.0);
  }

  v9 = dispatch_time(0, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012F8B8;
  v11[3] = &unk_10020F5D0;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_after(v9, &_dispatch_main_q, v11);
}

- (void)animateToYearViewWithCompletion:(id)a3
{
  v4 = a3;
  [(YearMonthTransitionView *)self _setToMonthState];
  v5 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [v5 setAlpha:0.0];

  [(YearMonthTransitionView *)self _animateZoomToYearState];
  UIAnimationDragCoefficient();
  if (v6 <= 1.5)
  {
    v8 = 750000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v8 = (v7 * 0.9 * 1000000000.0);
  }

  v9 = dispatch_time(0, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012FA24;
  v11[3] = &unk_10020F5D0;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_after(v9, &_dispatch_main_q, v11);
}

- (void)_animationComplete
{
  [(YearMonthTransitionView *)self _haltAnimations];
  [(CrossFadeView *)self->_monthLabel setAlpha:1.0];
  v3 = [(CompactYearViewController *)self->_yearViewController view];
  [v3 setAlpha:1.0];

  v4 = [(CompactWidthMonthViewController *)self->_monthViewController view];
  [v4 setAlpha:1.0];

  [(UIView *)self->_monthViewInYearView setHidden:0];
  v5 = [(CompactYearViewController *)self->_yearViewController view];
  v6 = *&CGAffineTransformIdentity.c;
  v14[0] = *&CGAffineTransformIdentity.a;
  v14[1] = v6;
  v14[2] = *&CGAffineTransformIdentity.tx;
  [v5 setTransform:v14];

  x = self->_yearViewOriginalFrame.origin.x;
  y = self->_yearViewOriginalFrame.origin.y;
  width = self->_yearViewOriginalFrame.size.width;
  height = self->_yearViewOriginalFrame.size.height;
  v11 = [(CompactYearViewController *)self->_yearViewController view];
  [v11 setFrame:{x, y, width, height}];

  [(PaletteView *)self->_paletteView setAlpha:1.0];
  v12 = [(PaletteView *)self->_paletteView dateLabel];
  [v12 setAlpha:1.0];

  v13 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [v13 setAlpha:1.0];
}

- (void)_setToYearState
{
  [(CrossFadeView *)self->_monthLabel setAlpha:1.0];
  [(CrossFadeView *)self->_monthLabel setToEndState];
  [(UIView *)self->_monthViewInYearView setHidden:1];
  v3 = [(CompactYearViewController *)self->_yearViewController view];
  [(YearMonthTransitionView *)self _calculateYearFrameForYearViewZoom];
  scaleViewToFrame();

  p_monthInYearViewFrame = &self->_monthInYearViewFrame;
  scaleViewToFrame();
  scaleViewToFrame();
  v5 = [(CompactYearViewController *)self->_yearViewController view];
  [v5 setAlpha:1.0];

  [(UIView *)self->_monthTransitionViewInYearState setAlpha:1.0];
  [(UIView *)self->_monthTransitionViewInMonthState setAlpha:0.0];
  width = self->_monthInYearViewFrame.size.width;
  v7 = width / width;
  if (width == 0.0)
  {
    v7 = 0.0;
  }

  x = p_monthInYearViewFrame->origin.x;
  v28.origin.y = self->_monthInYearViewFrame.origin.y;
  v9 = v7 * self->_bottomSlidingStartFrame.size.height;
  v28.origin.x = p_monthInYearViewFrame->origin.x;
  v28.size.width = self->_monthInYearViewFrame.size.width;
  v28.size.height = self->_monthInYearViewFrame.size.height;
  MaxY = CGRectGetMaxY(v28);
  scaleViewToFrame();
  scaleViewToFrame();
  if (self->_monthBottomSlidingPiece2)
  {
    v29.origin.x = x;
    v29.origin.y = MaxY;
    v29.size.width = width;
    v29.size.height = v9;
    CGRectGetMaxY(v29);
    scaleViewToFrame();
    [(UIView *)self->_monthBottomSlidingPiece2 setAlpha:0.0];
  }

  [(UIView *)self->_monthTopSlidingPiece setAlpha:0.0];
  [(UIView *)self->_monthBottomSlidingPiece setAlpha:0.0];
  [(UIView *)self->_backgroundView setAlpha:0.0];
  [(CompactYearViewController *)self->_yearViewController updatePalette:self->_paletteView];
  [(PaletteView *)self->_paletteView sizeToFit];
  [(PaletteView *)self->_paletteView layoutSubviews];
  v11 = [(PaletteView *)self->_paletteView containingPalette];
  [v11 frame];
  v13 = v12;
  v14 = [(PaletteView *)self->_paletteView containingPalette];
  [v14 frame];
  v16 = v15;
  [(PaletteView *)self->_paletteView frame];
  v18 = v17;
  [(PaletteView *)self->_paletteView frame];
  v20 = v19;
  v21 = [(PaletteView *)self->_paletteView containingPalette];
  [v21 setFrame:{v13, v16, v18, v20}];

  [(PaletteView *)self->_paletteView frame];
  v23 = v22;
  v24 = [(PaletteView *)self->_paletteView containingPalette];
  [v24 setPreferredHeight:v23];

  [(PaletteView *)self->_paletteView setAlpha:0.0];
  v25 = [(PaletteView *)self->_paletteView dateLabel];
  [v25 setAlpha:0.0];

  v26 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [v26 setAlpha:0.0];
}

- (void)_setToMonthState
{
  [(CrossFadeView *)self->_monthLabel setAlpha:0.0];
  [(CrossFadeView *)self->_monthLabel setToStartState];
  [(UIView *)self->_monthViewInYearView setHidden:1];
  v3 = [(CompactYearViewController *)self->_yearViewController view];
  [(YearMonthTransitionView *)self _calculateMonthFrameForYearViewZoom];
  scaleViewToFrame();

  scaleViewToFrame();
  scaleViewToFrame();
  v4 = [(CompactYearViewController *)self->_yearViewController view];
  [v4 setAlpha:0.0];

  [(UIView *)self->_monthTransitionViewInYearState setAlpha:0.0];
  [(UIView *)self->_monthTransitionViewInMonthState setAlpha:1.0];
  scaleViewToFrame();
  scaleViewToFrame();
  if (self->_monthBottomSlidingPiece2)
  {
    scaleViewToFrame();
    [(UIView *)self->_monthBottomSlidingPiece setAlpha:1.0];
  }

  [(UIView *)self->_monthTopSlidingPiece setAlpha:1.0];
  [(UIView *)self->_monthBottomSlidingPiece setAlpha:1.0];
  [(UIView *)self->_backgroundView setAlpha:self->_backgroundViewMonthAlpha];
  [(CompactWidthMonthViewController *)self->_monthViewController updatePalette:self->_paletteView];
  [(PaletteView *)self->_paletteView sizeToFit];
  [(PaletteView *)self->_paletteView layoutSubviews];
  v5 = [(PaletteView *)self->_paletteView containingPalette];
  [v5 frame];
  v7 = v6;
  v8 = [(PaletteView *)self->_paletteView containingPalette];
  [v8 frame];
  v10 = v9;
  [(PaletteView *)self->_paletteView frame];
  v12 = v11;
  [(PaletteView *)self->_paletteView frame];
  v14 = v13;
  v15 = [(PaletteView *)self->_paletteView containingPalette];
  [v15 setFrame:{v7, v10, v12, v14}];

  [(PaletteView *)self->_paletteView frame];
  v17 = v16;
  v18 = [(PaletteView *)self->_paletteView containingPalette];
  [v18 setPreferredHeight:v17];

  [(PaletteView *)self->_paletteView setAlpha:1.0];
  v19 = [(PaletteView *)self->_paletteView dateLabel];
  [v19 setAlpha:1.0];

  v20 = [(PaletteView *)self->_paletteView dayInitialsHeaderView];
  [v20 setAlpha:1.0];
}

- (void)_animateZoomToYearState
{
  springAnimationDuration();
  v4 = v3;
  v5 = +[SpringFactory sharedFactory];
  v6 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v5 options:v6 factory:0 animations:v4 completion:0.0];

  animateNavigationPreferringFRR();
  springAnimationDuration();
  v8 = v7;
  v9 = +[SpringFactory sharedFactory];
  v10 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v9 options:v10 factory:0 animations:v8 completion:0.0];

  monthListView = self->_monthListView;
  if (monthListView)
  {
    [(UIView *)monthListView frame];
    [(YearMonthTransitionView *)self frame];
  }

  springAnimationDuration();
  v13 = v12;
  v14 = +[SpringFactory sharedFactory];
  v15 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v14 options:v15 factory:0 animations:v13 completion:0.0];

  v16 = navigationAnimationsPreferringFRR();
  [UIView animateWithDuration:327680 delay:v16 options:0 animations:0.25 completion:0.15];
}

- (void)_animateZoomToMonthState
{
  springAnimationDuration();
  v4 = v3;
  v5 = +[SpringFactory sharedFactory];
  v35 = self;
  v6 = navigationAnimationsPreferringFRR();
  v7 = 0;
  [UIView _animateWithDuration:393216 delay:v5 options:v6 factory:0 animations:v4 completion:0.0];

  v34 = self;
  animateNavigationPreferringFRR();
  springAnimationDuration();
  v9 = v8;
  v10 = +[SpringFactory sharedFactory];
  v33 = self;
  v11 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v10 options:v11 factory:0 animations:v9 completion:0.0];

  monthListView = self->_monthListView;
  v13 = 0;
  if (monthListView)
  {
    [(UIView *)monthListView frame];
    v13 = v14;
    v7 = v15;
    [(UIView *)self->_monthListView frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(YearMonthTransitionView *)self frame];
    [(UIView *)self->_monthListView setFrame:v17, v22, v19, v21];
  }

  springAnimationDuration();
  v24 = v23;
  v25 = +[SpringFactory sharedFactory];
  v32 = self;
  v26 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v25 options:v26 factory:0 animations:v24 completion:0.0];

  v27 = +[SpringFactory sharedFactory];
  v31 = self;
  v28 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v27 options:v28 factory:0 animations:0.75 completion:0.0];

  v30 = self;
  v29 = navigationAnimationsPreferringFRR();
  [UIView animateWithDuration:327680 delay:v29 options:0 animations:0.25 completion:0.0, _NSConcreteStackBlock, 3221225472, sub_1001310C8, &unk_10020EB00, v30, _NSConcreteStackBlock, 3221225472, sub_100131068, &unk_10020EDD8, v31, v13, v7, _NSConcreteStackBlock, 3221225472, sub_100130ED8, &unk_10020EB00, v32, _NSConcreteStackBlock, 3221225472, sub_100130EC0, &unk_10020EB00, v33, _NSConcreteStackBlock, 3221225472, sub_100130EA8, &unk_10020EB00, v34, _NSConcreteStackBlock, 3221225472, sub_100130D0C, &unk_10020EB00, v35];
}

- (CGRect)_calculateMonthFrameForYearViewZoom
{
  x = self->_monthInYearViewFrame.origin.x;
  y = self->_monthInYearViewFrame.origin.y;
  height = self->_monthInYearViewFrame.size.height;
  v5 = self->_monthInMonthViewFrame.origin.x;
  v6 = self->_monthInMonthViewFrame.origin.y;
  v7 = self->_monthInMonthViewFrame.size.height;
  [(YearMonthTransitionView *)self _calculateYearFrameForYearViewZoom];
  v12 = v7 / height;
  if (height == 0.0)
  {
    v12 = 0.0;
  }

  v13 = v12 * v10;
  v14 = v12 * v11;
  v15 = v5 - v12 * (x - v8);
  v16 = v6 - v12 * (y - v9);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_calculateYearFrameForYearViewZoom
{
  x = self->_yearViewOriginalFrame.origin.x;
  y = self->_yearViewOriginalFrame.origin.y;
  width = self->_yearViewOriginalFrame.size.width;
  height = self->_yearViewOriginalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_setUpMonthViewInMonthViewFrame
{
  [(YearMonthTransitionMonthView *)self->_monthViewInMonthView monthFrameInMonthView];
  v4 = v3;
  v6 = v5;
  v9 = [[UIView alloc] initWithFrame:{v3, v5, v7, v8}];
  [v9 setClipsToBounds:1];
  [v9 addSubview:self->_monthViewInMonthView];
  [(YearMonthTransitionMonthView *)self->_monthViewInMonthView frame];
  [(YearMonthTransitionMonthView *)self->_monthViewInMonthView setFrame:-v4, -v6];

  return v9;
}

- (id)_captureImageOfMonthInYearView
{
  [(UIView *)self->_monthViewInYearView convertRect:self fromView:self->_monthInYearViewFrame.origin.x, self->_monthInYearViewFrame.origin.y, self->_monthInYearViewFrame.size.width, self->_monthInYearViewFrame.size.height];

  return createImageViewFromView();
}

- (void)_captureImagesForSlidingPiecesFromMonthViewController:(id)a3 selectedDate:(id)a4 calendar:(id)a5
{
  v36 = a5;
  v7 = a4;
  v8 = objc_alloc_init(NSDateComponents);
  v9 = [v7 date];

  [v8 setMonth:1];
  v10 = [v36 dateByAddingComponents:v8 toDate:v9 options:0];
  [v8 setMonth:-1];
  v11 = [v36 dateByAddingComponents:v8 toDate:v9 options:0];
  v12 = [v36 timeZone];
  v13 = [EKCalendarDate calendarDateWithDate:v10 timeZone:v12];

  v14 = [v36 timeZone];
  v15 = [EKCalendarDate calendarDateWithDate:v11 timeZone:v14];

  v34 = v15;
  v16 = [(YearMonthTransitionView *)self _getMonthViewMonthContainingDate:v15 hideMonthLabel:0];
  [v16 setHidden:1];
  v35 = v13;
  v17 = [(YearMonthTransitionView *)self _getMonthViewMonthContainingDate:v13 hideMonthLabel:0];
  [(YearMonthTransitionView *)self _monthFrameForMonthBefore:v16 anchorMonth:self->_monthViewInMonthView];
  [v16 setFrame:?];
  [(YearMonthTransitionView *)self _monthFrameForMonthAfter:v17 anchorMonth:self->_monthViewInMonthView];
  [v17 setFrame:?];
  if (v16)
  {
    [v16 frame];
    self->_topSlidingStartFrame.origin.x = v18;
    self->_topSlidingStartFrame.origin.y = v19;
    self->_topSlidingStartFrame.size.width = v20;
    self->_topSlidingStartFrame.size.height = v21;
    objc_storeStrong(&self->_monthTopSlidingPiece, v16);
    [(YearMonthTransitionView *)self addSubview:self->_monthTopSlidingPiece];
  }

  if (v17)
  {
    [v17 frame];
    self->_bottomSlidingStartFrame.origin.x = v22;
    self->_bottomSlidingStartFrame.origin.y = v23;
    self->_bottomSlidingStartFrame.size.width = v24;
    self->_bottomSlidingStartFrame.size.height = v25;
    objc_storeStrong(&self->_monthBottomSlidingPiece, v17);
    [(YearMonthTransitionView *)self addSubview:self->_monthBottomSlidingPiece];
  }

  [v8 setMonth:2];
  v26 = [v36 dateByAddingComponents:v8 toDate:v9 options:0];
  v27 = [v36 timeZone];
  v28 = [EKCalendarDate calendarDateWithDate:v26 timeZone:v27];

  v29 = [(YearMonthTransitionView *)self _getMonthViewMonthContainingDate:v28 hideMonthLabel:0];
  if (v29)
  {
    [(YearMonthTransitionView *)self _monthFrameForMonthAfter:v29 anchorMonth:v17];
    [v29 setFrame:?];
    [v29 frame];
    self->_bottomSliding2StartFrame.origin.x = v30;
    self->_bottomSliding2StartFrame.origin.y = v31;
    self->_bottomSliding2StartFrame.size.width = v32;
    self->_bottomSliding2StartFrame.size.height = v33;
    self->_bottomSliding2StartFrame.origin.y = CGRectGetMaxY(self->_bottomSlidingStartFrame);
    objc_storeStrong(&self->_monthBottomSlidingPiece2, v29);
    [(YearMonthTransitionView *)self addSubview:self->_monthBottomSlidingPiece2];
  }
}

- (void)_haltAnimations
{
  [(CrossFadeView *)self->_monthLabel haltAnimation];
  v3 = CalSystemSolariumEnabled();
  v4 = [(YearMonthTransitionView *)self window];
  v5 = [v4 layer];
  if (v3)
  {
    v6 = [(CompactYearViewController *)self->_yearViewController navigationController];
    v7 = [v6 navigationBar];
    v8 = [v7 layer];
    recursiveAnimationRemoveWithExclusion();
  }

  else
  {
    recursiveAnimationRemove();
  }

  v9 = [(CompactYearViewController *)self->_yearViewController view];
  v10 = [v9 layer];
  [v10 removeAllAnimations];

  v11 = [(UIView *)self->_monthTransitionViewInYearState layer];
  [v11 removeAllAnimations];

  v12 = [(UIView *)self->_monthTransitionViewInMonthState layer];
  [v12 removeAllAnimations];

  v13 = [(UIView *)self->_monthTopSlidingPiece layer];
  [v13 removeAllAnimations];

  v14 = [(UIView *)self->_monthBottomSlidingPiece layer];
  [v14 removeAllAnimations];

  v15 = [(UIView *)self->_monthBottomSlidingPiece2 layer];
  [v15 removeAllAnimations];
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

  [v7 setAlpha:a4];
}

- (CGRect)_monthFrameForMonthBefore:(id)a3 anchorMonth:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v5 frame];
  v14 = v13;
  [v6 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v30.origin.x = v16;
  v30.origin.y = v18;
  v30.size.width = v20;
  v30.size.height = v22;
  v23 = v14 - CGRectGetHeight(v30);
  [v5 topInset];
  v25 = v24;

  v26 = v23 + v25;
  v27 = v8;
  v28 = v10;
  v29 = v12;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v26;
  result.origin.x = v27;
  return result;
}

- (CGRect)_monthFrameForMonthAfter:(id)a3 anchorMonth:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v5 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  MaxY = CGRectGetMaxY(v28);
  [v6 topInset];
  v23 = v22;

  v24 = MaxY - v23;
  v25 = v8;
  v26 = v10;
  v27 = v12;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v24;
  result.origin.x = v25;
  return result;
}

- (id)_getMonthViewMonthContainingDate:(id)a3 hideMonthLabel:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setClipsToBounds:1];
  v90 = objc_opt_new();
  v7 = objc_opt_new();
  v89 = v5;
  v8 = [v5 calendarDateForMonth];
  v9 = [v8 copy];

  v10 = v9;
  y = CGRectNull.origin.y;
  v12 = [v10 month];
  v92 = v10;
  if (v12 == [v10 month])
  {
    v13 = 0;
    v14 = 0;
    v98 = 0;
    v91 = !v4;
    v15 = -1;
    v16 = 0.0;
    v17 = v10;
    v18 = self;
    while (1)
    {
      v96 = v13;
      v19 = [(InfiniteScrollViewController *)v18->_monthViewController subviewForDate:v10];
      v20 = v19;
      if (v19)
      {
        break;
      }

      v47 = v98;
      if (!v98)
      {
        goto LABEL_18;
      }

LABEL_21:
      v98 = v47;
      if (!v14)
      {
        [v20 topInset];
        v16 = v55;
      }

      v56 = v10;

      v10 = [(MonthViewController *)v18->_monthViewController calendarDateForSubviewBelowSubviewWithCalendarDate:v56];

      ++v14;
      v57 = [v10 month];
      v58 = [v17 month];
      v13 = v56;
      if (v57 != v58)
      {
        goto LABEL_26;
      }
    }

    [v19 layoutIfNeeded];
    if (v15 < 0)
    {
      [v20 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [v20 superview];
      [(YearMonthTransitionView *)self convertRect:v29 fromView:v22, v24, v26, v28];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v18 = self;
      v110.origin.x = v31;
      v110.origin.y = v33;
      v110.size.width = v35;
      v110.size.height = v37;
      if (!CGRectIsNull(v110))
      {
        y = v33;
        v15 = v14;
      }
    }

    [v20 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [v20 setBounds:{v38, v40 - v18->_monthWeekViewExtent}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v20;
    }

    else
    {
      v46 = 0;
    }

    v48 = [v46 monthNameLabel];
    v49 = [v48 isHidden];

    if ((v91 | v49))
    {
      v50 = [v20 snapshotViewAfterScreenUpdates:self->_yearToMonth];
    }

    else
    {
      v51 = [v46 monthNameLabel];
      [v51 setHidden:1];

      [v20 bounds];
      v50 = createSnapshotFromView();
      v52 = [v46 monthNameLabel];
      [v52 setHidden:0];
    }

    [v20 setBounds:{v39, v41, v43, v45}];
    if (v50)
    {
      [v20 frame];
      [v50 setFrame:?];
      [v90 addObject:v50];
      [v20 topInset];
      *&v53 = v53;
      v54 = [NSNumber numberWithFloat:v53];
      [v7 addObject:v54];
    }

    v17 = v92;
    v47 = v98;
    v18 = self;
    if (v98)
    {
      goto LABEL_21;
    }

LABEL_18:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [v20 monthNameLabel];
    }

    else
    {
      v47 = 0;
    }

    goto LABEL_21;
  }

  v98 = 0;
  v56 = 0;
  v16 = 0.0;
  v15 = -1;
LABEL_26:
  v97 = v56;
  v94 = v10;
  v59 = v90;
  if ([v90 count])
  {
    v60 = [v90 firstObject];
    v61 = v60;
    if (v60)
    {
      [v60 frame];
      CGRectGetMinY(v111);
    }

    width = CGRectZero.size.width;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v63 = v90;
    v64 = [v63 countByEnumeratingWithState:&v103 objects:v108 count:16];
    if (v64)
    {
      v65 = v64;
      v93 = v61;
      v66 = 0;
      v67 = *v104;
      v68 = 0.0;
      do
      {
        for (i = 0; i != v65; i = i + 1)
        {
          if (*v104 != v67)
          {
            objc_enumerationMutation(v63);
          }

          v70 = *(*(&v103 + 1) + 8 * i);
          [v70 frame];
          [v70 setFrame:?];
          if (v66 < v15)
          {
            v71 = [v7 objectAtIndex:v66];
            [v71 floatValue];
            v73 = v72;

            [v70 bounds];
            v68 = v68 + CGRectGetHeight(v112) - v73;
          }

          [v70 frame];
          MaxY = CGRectGetMaxY(v113);
          [v70 bounds];
          v75 = CGRectGetWidth(v114);
          if (v75 >= width)
          {
            width = v75;
          }

          ++v66;
        }

        v65 = [v63 countByEnumeratingWithState:&v103 objects:v108 count:16];
      }

      while (v65);
      v59 = v90;
      v61 = v93;
    }

    else
    {
      MaxY = CGRectZero.size.height;
      v68 = 0.0;
    }

    if (v15 < 0)
    {
      x = CGRectZero.origin.x;
      v78 = CGRectZero.origin.y;
    }

    else
    {
      v78 = y - v68;
      [v6 setHasValidOrigin:1];
      x = 0.0;
    }

    v77 = v89;
    if ([(CompactWidthMonthViewController *)self->_monthViewController dividedListMode])
    {
      [(CompactWidthMonthViewController *)self->_monthViewController showDateVerticalOffsetForDate:v89];
      MaxY = MaxY + v80;
    }

    v81 = [(InfiniteScrollViewController *)self->_monthViewController scrollView];
    v82 = [v81 backgroundColor];
    [v6 setBackgroundColor:v82];

    [v6 setTopInset:v16];
    [v6 setFrame:{x, v78, width, MaxY}];
    [v6 setMonthLabel:v98];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v83 = v63;
    v84 = [v83 countByEnumeratingWithState:&v99 objects:v107 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v100;
      do
      {
        for (j = 0; j != v85; j = j + 1)
        {
          if (*v100 != v86)
          {
            objc_enumerationMutation(v83);
          }

          [v6 addSubview:*(*(&v99 + 1) + 8 * j)];
        }

        v85 = [v83 countByEnumeratingWithState:&v99 objects:v107 count:16];
      }

      while (v85);
    }

    [v6 setWeekViews:v83];
    v76 = v6;
  }

  else
  {
    v76 = 0;
    v77 = v89;
  }

  return v76;
}

- (id)_getWeekContainingDate:(id)a3 prevDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  monthViewController = self->_monthViewController;
  if (v7)
  {
    v9 = [(CompactWidthMonthViewController *)monthViewController newBottomViewBelowViewWithCalendarDate:v7];
  }

  else
  {
    v9 = [(CompactWidthMonthViewController *)monthViewController createInitialViewForDate:v6];
  }

  v10 = v9;
  [v9 sizeToFit];
  [v10 bounds];
  if (fabs(CGRectGetWidth(v18)) < 2.22044605e-16)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
    [(YearMonthTransitionView *)self bounds];
    Width = CGRectGetWidth(v19);
    [v10 bounds];
    [v10 setFrame:{v12, v14, Width, CGRectGetWidth(v20)}];
  }

  [v10 layoutIfNeeded];

  return v10;
}

@end