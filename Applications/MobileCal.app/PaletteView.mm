@interface PaletteView
- (BOOL)focusBannerVisible;
- (BOOL)hasContent;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PaletteView)initWithBarPalette:(id)palette;
- (PaletteViewDelegate)delegate;
- (_UINavigationBarPalette)containingPalette;
- (double)paletteTopMargin;
- (id)_generateWeekDayInitialsHeaderViewWithHorizontalSizeClass:(BOOL)class;
- (id)newDateLabel;
- (id)todayButtonFont;
- (void)_contentSizeCategoryChanged;
- (void)_localeChanged:(id)changed;
- (void)_updateFocusBanner;
- (void)_updateFocusBannerVisibility;
- (void)avatarTapped;
- (void)dealloc;
- (void)focusBannerViewToggled:(id)toggled;
- (void)layoutSubviews;
- (void)removeAllContent;
- (void)setAvatarContact:(id)contact;
- (void)setAvatarViewVisible:(BOOL)visible;
- (void)setContainingPalette:(id)palette;
- (void)setDateString:(id)string;
- (void)setDateStringVisible:(BOOL)visible;
- (void)setDayHeaderFrames:(id)frames;
- (void)setDayScrubberController:(id)controller;
- (void)setDividerLineVisible:(BOOL)visible;
- (void)setExtraPaletteHeight:(double)height;
- (void)setFocusBannerPlacement:(unint64_t)placement;
- (void)setShouldHideInlineFocusBanner:(BOOL)banner;
- (void)setTodayButtonVisible:(BOOL)visible;
- (void)setWeekdayHeaderVisible:(BOOL)visible;
- (void)todayTapped;
- (void)updateForChangeToTraitCollection:(id)collection;
- (void)willMoveToWindow:(id)window;
@end

@implementation PaletteView

- (BOOL)focusBannerVisible
{
  focusBannerPlacement = [(PaletteView *)self focusBannerPlacement];
  if (focusBannerPlacement)
  {
    v4 = focusBannerPlacement;
    delegate = [(PaletteView *)self delegate];
    focusFilterMode = [delegate focusFilterMode];

    LOBYTE(focusBannerPlacement) = focusFilterMode && (v4 != 2 || ![(PaletteView *)self shouldHideInlineFocusBanner]);
  }

  return focusBannerPlacement;
}

- (PaletteViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UINavigationBarPalette)containingPalette
{
  WeakRetained = objc_loadWeakRetained(&self->_containingPalette);

  return WeakRetained;
}

- (BOOL)hasContent
{
  if ([(PaletteView *)self weekdayHeaderVisible])
  {
    return 1;
  }

  dayScrubberController = [(PaletteView *)self dayScrubberController];
  if (dayScrubberController || [(PaletteView *)self todayButtonVisible]|| [(PaletteView *)self dateStringVisible])
  {
    focusBannerVisible = 1;
  }

  else
  {
    focusBannerVisible = [(PaletteView *)self focusBannerVisible];
  }

  return focusBannerVisible;
}

- (void)_updateFocusBannerVisibility
{
  [(PaletteView *)self setFocusBannerPlacement:[(PaletteView *)self focusBannerPlacement]];
  [(PaletteView *)self _updateFocusBanner];
  [(PaletteView *)self setNeedsLayout];

  [(PaletteView *)self layoutIfNeeded];
}

- (void)_updateFocusBanner
{
  delegate = [(PaletteView *)self delegate];
  -[EKUIFocusBannerView setOn:](self->_focusFilterBanner, "setOn:", [delegate focusFilterMode] == 1);
}

- (void)layoutSubviews
{
  *&v106.size.height = self;
  v107 = PaletteView;
  [(CGFloat *)&v106.size.height layoutSubviews];
  if ([(PaletteView *)self suppressLayout])
  {
    return;
  }

  [(PaletteView *)self bounds];
  y = v3;
  v101 = v5;
  v7 = v6;
  v9 = v8;
  safeAreaLayoutGuide = [(PaletteView *)self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v12 = v11;
  rect = v13;
  width = v14;
  v17 = v16;

  traitCollection = [(PaletteView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  [(PaletteView *)self paletteTopMargin];
  v21 = v20;
  if (userInterfaceIdiom)
  {
    v22 = 37.0;
  }

  else
  {
    v22 = 28.0;
  }

  avatarView = self->_avatarView;
  if (avatarView && self->_avatarViewVisible)
  {
    [(EKUILabeledAvatarView *)avatarView frame];
    IsLeftToRight = CalInterfaceIsLeftToRight();
    v25 = v12;
    v26 = rect;
    v27 = width;
    v28 = v17;
    if (IsLeftToRight)
    {
      v29 = CGRectGetMinX(*&v25) + 20.0;
    }

    else
    {
      v29 = CGRectGetMaxX(*&v25) + -16.0 - v22;
    }

    [(EKUILabeledAvatarView *)self->_avatarView setFrame:v29, v21, v22, v22];
  }

  v30 = 0.0;
  v106.origin.x = v12;
  v106.size.width = width;
  v102 = v7;
  v104 = v9;
  if (self->_dateStringVisible)
  {
    v106.origin.y = y;
    [(UILabel *)self->_dateLabel sizeToFit];
    v31 = self->_avatarView;
    if (v31 && self->_avatarViewVisible)
    {
      [(EKUILabeledAvatarView *)v31 frame];
      MaxX = CGRectGetMaxX(v108);
      [(UILabel *)self->_dateLabel frame];
      v34 = v33;
      v36 = v35;
      if (!userInterfaceIdiom)
      {
        [(EKUILabeledAvatarView *)self->_avatarView frame];
        v21 = CGRectGetMaxY(v109) - v36 + -1.2;
      }

      if (CalInterfaceIsLeftToRight())
      {
        v37 = MaxX + 8.0;
LABEL_23:
        [(UILabel *)self->_dateLabel setFrame:v37, v21, v34, v36];
        [(UILabel *)self->_animatableDateLabel setFrame:v37, v21, v34, v36];
        v113.origin.x = v37;
        v113.origin.y = v21;
        v113.size.width = v34;
        v113.size.height = v36;
        v30 = CGRectGetMaxY(v113) + 7.0;
        y = v106.origin.y;
        width = v106.size.width;
        goto LABEL_24;
      }

      [(EKUILabeledAvatarView *)self->_avatarView frame];
      v42 = CGRectGetMinX(v112) + -8.0;
    }

    else
    {
      v110.origin.x = v12;
      v110.origin.y = rect;
      v110.size.width = width;
      v110.size.height = v17;
      v38 = width;
      MinX = CGRectGetMinX(v110);
      [(UILabel *)self->_dateLabel frame];
      v34 = v40;
      v36 = v41;
      if (CalInterfaceIsLeftToRight())
      {
        v37 = MinX + 20.0;
        v9 = v104;
        goto LABEL_23;
      }

      v111.origin.x = v12;
      v111.origin.y = rect;
      v111.size.width = v38;
      v111.size.height = v17;
      v42 = CGRectGetMaxX(v111) + -16.0;
      v9 = v104;
    }

    v37 = v42 - v34;
    goto LABEL_23;
  }

LABEL_24:
  v106.origin.y = v30;
  if (self->_todayButtonVisible)
  {
    [(UIButton *)self->_todayButton sizeToFit];
    [(UIButton *)self->_todayButton frame];
    v44 = v43;
    v46 = v45;
    v47 = CalInterfaceIsLeftToRight();
    v48 = v12;
    v49 = rect;
    v50 = v106.size.width;
    v51 = v17;
    if (v47)
    {
      v52 = CGRectGetMaxX(*&v48) - v44;
      v53 = -16.0;
    }

    else
    {
      v52 = CGRectGetMinX(*&v48);
      v53 = 16.0;
    }

    v54 = v52 + v53;
    [(UILabel *)self->_dateLabel frame];
    [(UIButton *)self->_todayButton setFrame:v54, CGRectGetMidY(v114) + v46 * -0.5, v44, v46];
    width = v106.size.width;
  }

  if ([(PaletteView *)self focusBannerVisible]&& [(PaletteView *)self focusBannerPlacement]== 3)
  {
    [(EKUIFocusBannerView *)self->_focusFilterBanner sizeThatFits:width, 0.0];
    [(EKUIFocusBannerView *)self->_focusFilterBanner setFrame:0.0, 0.0, width, v55];
  }

  v56 = 0.0;
  v103 = v17;
  if ([(PaletteView *)self weekdayHeaderVisible])
  {
    [(WeekDayInitialsHeaderView *)self->_dayInitialsHeaderView sizeThatFits:width, v17];
    v58 = v57;
    v60 = v59;
    if ([(PaletteView *)self focusBannerVisible])
    {
      focusBannerPlacement = [(PaletteView *)self focusBannerPlacement];
      MaxY = v106.origin.y;
      if (focusBannerPlacement == 3)
      {
        [(EKUIFocusBannerView *)self->_focusFilterBanner frame];
        MaxY = CGRectGetMaxY(v115);
      }
    }

    else
    {
      MaxY = v106.origin.y;
    }

    [(WeekDayInitialsHeaderView *)self->_dayInitialsHeaderView setFrame:v12, MaxY, v58, v60];
    [(WeekDayInitialsHeaderView *)self->_dayInitialsHeaderView frame];
    v63 = v64;
    v106.origin.y = v65;
    width = v66;
    v56 = v67;
  }

  else
  {
    v63 = v12;
  }

  dayScrubberController = [(PaletteView *)self dayScrubberController];
  view = [dayScrubberController view];

  if (view)
  {
    if (!userInterfaceIdiom)
    {
      v17 = v9;
    }

    v70 = v106.size.width;
    if (!userInterfaceIdiom)
    {
      v70 = v7;
    }

    v71 = y;
    if (userInterfaceIdiom)
    {
      y = v106.origin.x;
    }

    [view sizeThatFits:{v70, v17}];
    v73 = v72;
    v75 = v74;
    v116.origin.x = v63;
    v116.origin.y = v106.origin.y;
    v116.size.width = width;
    v116.size.height = v56;
    v76 = CGRectGetMaxY(v116);
    if ([(PaletteView *)self focusBannerVisible]&& [(PaletteView *)self focusBannerPlacement]== 3)
    {
      v76 = v17 - v75;
    }

    [view setFrame:{y, v76, v73, v75}];
    y = v71;
    v7 = v102;
    v9 = v104;
    if (!userInterfaceIdiom)
    {
      [(PaletteView *)self safeAreaInsets];
      v78 = v77;
      [(PaletteView *)self safeAreaInsets];
      v80 = v79;
      dayScrubberController2 = [(PaletteView *)self dayScrubberController];
      [dayScrubberController2 setPaletteSafeAreaInsets:{0.0, v78, 0.0, v80}];
    }
  }

  if (![(PaletteView *)self focusBannerVisible])
  {
    goto LABEL_71;
  }

  v82 = 0.0;
  [(EKUIFocusBannerView *)self->_focusFilterBanner sizeThatFits:v106.size.width, 0.0];
  v84 = v83;
  v86 = v85;
  if ([(PaletteView *)self focusBannerPlacement]== 1)
  {
    v87 = v9;
    v88 = v103 - v86;
    v84 = v106.size.width;
LABEL_70:
    [(EKUIFocusBannerView *)self->_focusFilterBanner setFrame:v82, v88, v84, v86];
    v9 = v87;
    goto LABEL_71;
  }

  if ([(PaletteView *)self focusBannerPlacement]!= 3)
  {
    v117.origin.x = y;
    v117.origin.y = v101;
    v117.size.width = v7;
    v117.size.height = v9;
    v89 = CGRectGetMidX(v117) + v84 * -0.5;
    v90 = rect;
    v91 = v103;
    if (self->_dateStringVisible)
    {
      [(UILabel *)self->_dateLabel frame];
      v106.origin.x = v92;
      v106.size.width = v93;
    }

    x = v106.origin.x;
    v95 = v106.size.width;
    v88 = CGRectGetMidY(*(&v90 - 1)) + v86 * -0.5;
    if (CalInterfaceIsLeftToRight())
    {
      v96 = &OBJC_IVAR___PaletteView__dateLabel;
    }

    else
    {
      v96 = &OBJC_IVAR___PaletteView__todayButton;
    }

    [*(&self->super.super.super.isa + *v96) frame];
    v82 = CGRectGetMaxX(v118);
    if (CalInterfaceIsLeftToRight())
    {
      v97 = &OBJC_IVAR___PaletteView__todayButton;
    }

    else
    {
      v97 = &OBJC_IVAR___PaletteView__dateLabel;
    }

    [*(&self->super.super.super.isa + *v97) frame];
    v98 = CGRectGetMinX(v119);
    v120.origin.x = v89;
    v120.origin.y = v88;
    v120.size.width = v84;
    v120.size.height = v86;
    if (CGRectGetMinX(v120) >= v82 || (v121.origin.x = v89, v121.origin.y = v88, v121.size.width = v84, v121.size.height = v86, CGRectGetMaxX(v121) <= v98))
    {
      v122.origin.x = v89;
      v122.origin.y = v88;
      v122.size.width = v84;
      v122.size.height = v86;
      if (CGRectGetMinX(v122) < v82)
      {
LABEL_69:
        v87 = v104;
        goto LABEL_70;
      }

      v123.origin.x = v89;
      v123.origin.y = v88;
      v123.size.width = v84;
      v123.size.height = v86;
      if (CGRectGetMaxX(v123) > v98)
      {
        v124.origin.x = v89;
        v124.origin.y = v88;
        v124.size.width = v84;
        v124.size.height = v86;
        v82 = v89 - (CGRectGetMaxX(v124) - v98);
        goto LABEL_69;
      }
    }

    v82 = v89;
    goto LABEL_69;
  }

LABEL_71:
  if (self->_dividerLineVisible)
  {
    EKUISeparatorLineThickness();
    v100 = v99;
    v125.origin.x = y;
    v125.origin.y = v101;
    v125.size.width = v7;
    v125.size.height = v9;
    [(UIView *)self->_dividerLine setFrame:y, v101 + CGRectGetHeight(v125) - v100, v7, v100];
  }
}

- (double)paletteTopMargin
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;

  traitCollection = [(PaletteView *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    [(PaletteView *)self bounds];
    v8 = v7 <= v5 + 1.0;
  }

  else
  {
    v8 = 0;
  }

  traitCollection2 = [(PaletteView *)self traitCollection];
  v10 = [traitCollection2 userInterfaceIdiom] == 0;

  result = 16.0;
  if (v10 || v8)
  {
    return 6.0;
  }

  return result;
}

- (id)newDateLabel
{
  v2 = objc_alloc_init(UILabel);
  [v2 setAccessibilityIdentifier:@"current-month-year"];
  [v2 setUserInteractionEnabled:1];
  [v2 setShowsLargeContentViewer:1];
  v3 = objc_opt_new();
  [v2 addInteraction:v3];

  return v2;
}

- (PaletteView)initWithBarPalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy bounds];
  v12.receiver = self;
  v12.super_class = PaletteView;
  v5 = [(PaletteView *)&v12 initWithFrame:?];
  if (v5)
  {
    v6 = +[UIColor clearColor];
    [(PaletteView *)v5 setBackgroundColor:v6];

    v7 = objc_storeWeak(&v5->_containingPalette, paletteCopy);
    [paletteCopy setClipsToBounds:0];

    [(PaletteView *)v5 setPreservesSuperviewLayoutMargins:1];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"_focusConfigurationChanged" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:0];

    if ((CalSolariumEnabled() & 1) == 0)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:v5 selector:"_contentSizeCategoryChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PaletteView;
  [(PaletteView *)&v4 dealloc];
}

- (void)setContainingPalette:(id)palette
{
  paletteCopy = palette;
  v4 = objc_storeWeak(&self->_containingPalette, paletteCopy);
  [paletteCopy setClipsToBounds:0];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = PaletteView;
  [(PaletteView *)&v5 willMoveToWindow:?];
  if (window)
  {
    [(PaletteView *)self _focusConfigurationChanged];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (self->_todayButtonVisible || (v6 = 0.0, self->_dateStringVisible))
  {
    [(PaletteView *)self paletteTopMargin];
    v8 = v7;
    [(UIButton *)self->_todayButton sizeThatFits:width, height];
    v10 = v9;
    [(UILabel *)self->_dateLabel sizeThatFits:width, height];
    if (v10 >= v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v6 = v8 + v12 + 7.0;
  }

  if ([(PaletteView *)self weekdayHeaderVisible])
  {
    [(WeekDayInitialsHeaderView *)self->_dayInitialsHeaderView sizeThatFits:width, height];
    v6 = v6 + v13;
  }

  dayScrubberController = [(PaletteView *)self dayScrubberController];
  view = [dayScrubberController view];

  if (view)
  {
    [view sizeThatFits:{width, height}];
    v6 = v6 + v16;
  }

  if ([(PaletteView *)self focusBannerVisible]&& ([(PaletteView *)self focusBannerPlacement]== 1 || [(PaletteView *)self focusBannerPlacement]== 3))
  {
    [(EKUIFocusBannerView *)self->_focusFilterBanner sizeThatFits:width, 0.0];
    v6 = v6 + v17;
  }

  [(PaletteView *)self extraPaletteHeight];
  v19 = v6 + v18;

  v20 = width;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)removeAllContent
{
  [(PaletteView *)self setWeekdayHeaderVisible:0];
  [(PaletteView *)self setDayScrubberController:0];
  [(PaletteView *)self setWeekdayHeaderFillsHalfWidth:0];
  [(PaletteView *)self setWeekdayHeaderMovedBeyondLeftEdge:0];
  [(PaletteView *)self setExtraPaletteHeight:0.0];
  [(PaletteView *)self setTodayButtonVisible:0];
  [(PaletteView *)self setDateStringVisible:0];
  [(PaletteView *)self setDateString:0];

  [(PaletteView *)self setFocusBannerPlacement:0];
}

- (void)setShouldHideInlineFocusBanner:(BOOL)banner
{
  if (self->_shouldHideInlineFocusBanner != banner)
  {
    self->_shouldHideInlineFocusBanner = banner;
    [(PaletteView *)self _updateFocusBannerVisibility];
  }
}

- (void)setFocusBannerPlacement:(unint64_t)placement
{
  self->_focusBannerPlacement = placement;
  focusBannerVisible = [(PaletteView *)self focusBannerVisible];
  superview = [(EKUIFocusBannerView *)self->_focusFilterBanner superview];

  if (((focusBannerVisible ^ (superview == 0)) & 1) == 0)
  {
    focusFilterBanner = self->_focusFilterBanner;
    if (focusBannerVisible)
    {
      if (!focusFilterBanner)
      {
        if (CalSolariumEnabled())
        {
          v7 = objc_opt_new();
          [v7 setWantsBorder:1];
        }

        else
        {
          v7 = objc_opt_new();
        }

        v8 = self->_focusFilterBanner;
        self->_focusFilterBanner = v7;

        [(EKUIFocusBannerView *)self->_focusFilterBanner setAutoresizingMask:0];
        [(EKUIFocusBannerView *)self->_focusFilterBanner setDelegate:self];
        focusFilterBanner = self->_focusFilterBanner;
      }

      [(PaletteView *)self addSubview:focusFilterBanner];
      [(PaletteView *)self _updateFocusBanner];
    }

    else
    {
      [(EKUIFocusBannerView *)self->_focusFilterBanner removeFromSuperview];
    }
  }

  focusBannerPlacement = self->_focusBannerPlacement;
  v10 = focusBannerPlacement != 1;
  [(EKUIFocusBannerView *)self->_focusFilterBanner setShowDividers:focusBannerPlacement == 1];
  [(EKUIFocusBannerView *)self->_focusFilterBanner setLayout:v10];
  v11 = self->_focusFilterBanner;

  [(EKUIFocusBannerView *)v11 setDisallowAccessibilityTextSizes:v10];
}

- (void)focusBannerViewToggled:(id)toggled
{
  if ([toggled on])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  delegate = [(PaletteView *)self delegate];
  [delegate setFocusFilterMode:v4];
}

- (void)setExtraPaletteHeight:(double)height
{
  if (self->_extraPaletteHeight != height)
  {
    self->_extraPaletteHeight = height;
  }
}

- (void)setWeekdayHeaderVisible:(BOOL)visible
{
  if (self->_weekdayHeaderVisible != visible)
  {
    v12 = v3;
    self->_weekdayHeaderVisible = visible;
    dayInitialsHeaderView = self->_dayInitialsHeaderView;
    if (visible)
    {
      if (!dayInitialsHeaderView)
      {
        v9 = [(PaletteView *)self _generateWeekDayInitialsHeaderViewWithHorizontalSizeClass:EKUICurrentWindowInterfaceParadigm_SupportsLargeWeekdayNamesInNavigationPalette()];
        v10 = self->_dayInitialsHeaderView;
        self->_dayInitialsHeaderView = v9;

        dayInitialsHeaderView = self->_dayInitialsHeaderView;
      }

      [(PaletteView *)self addSubview:dayInitialsHeaderView, v4, v12, v5];
    }

    else
    {
      [(WeekDayInitialsHeaderView *)self->_dayInitialsHeaderView removeFromSuperview];
    }

    v11 = self->_dayInitialsHeaderView;

    [(WeekDayInitialsHeaderView *)v11 sizeToFit];
  }
}

- (void)setDayScrubberController:(id)controller
{
  controllerCopy = controller;
  dayScrubberController = self->_dayScrubberController;
  v37 = controllerCopy;
  if (dayScrubberController != controllerCopy)
  {
    if (dayScrubberController)
    {
      view = [(DayNavigationViewController *)dayScrubberController view];
      [view frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      superview = [(PaletteView *)self superview];
      [superview frame];
      v18 = v9 + v17;

      superview2 = [(PaletteView *)self superview];
      [superview2 frame];
      v21 = v11 + v20;

      view2 = [(DayNavigationViewController *)self->_dayScrubberController view];
      [view2 setFrame:{v18, v21, v13, v15}];

      [(DayNavigationViewController *)self->_dayScrubberController removeFromParentViewController];
      view3 = [(DayNavigationViewController *)self->_dayScrubberController view];
      [view3 removeFromSuperview];
    }

    objc_storeStrong(&self->_dayScrubberController, controller);
    if (self->_dayScrubberController)
    {
      window = [(PaletteView *)self window];
      if (window)
      {
        EKUIPushFallbackSizingContextWithViewHierarchy();
      }

      [(DayNavigationViewController *)self->_dayScrubberController removeFromParentViewController];
      view4 = [(DayNavigationViewController *)self->_dayScrubberController view];
      [view4 removeFromSuperview];

      view5 = [(DayNavigationViewController *)self->_dayScrubberController view];
      [(PaletteView *)self addSubview:view5];

      view6 = [(DayNavigationViewController *)self->_dayScrubberController view];
      [view6 sizeToFit];

      view7 = [(DayNavigationViewController *)self->_dayScrubberController view];
      [view7 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;

      [(PaletteView *)self bounds];
      Width = CGRectGetWidth(v39);
      view8 = [(DayNavigationViewController *)self->_dayScrubberController view];
      [view8 setFrame:{v30, v32, Width, v34}];

      if (window)
      {
        EKUIPopFallbackSizingContextWithViewHierarchy();
      }
    }
  }
}

- (void)setDayHeaderFrames:(id)frames
{
  framesCopy = frames;
  if ([framesCopy count])
  {
    [(PaletteView *)self layoutSubviews];
    self->_useCustomDayFrames = 1;
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(framesCopy, "count")}];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100110808;
    v11 = &unk_100211958;
    if (CalTimeDirectionIsLeftToRight())
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    selfCopy = self;
    v13 = v5;
    v7 = v5;
    [framesCopy enumerateObjectsWithOptions:v6 usingBlock:&v8];
    [(WeekDayInitialsHeaderView *)self->_dayInitialsHeaderView setDayFrames:v7, v8, v9, v10, v11, selfCopy];
  }
}

- (void)updateForChangeToTraitCollection:(id)collection
{
  collectionCopy = collection;
  [(PaletteView *)self setWeekdayHeaderVisible:0];
  dayInitialsHeaderView = self->_dayInitialsHeaderView;
  self->_dayInitialsHeaderView = 0;

  self->_weekdayHeaderFillsHalfWidth = 0;
  self->_weekdayHeaderMovedBeyondLeftEdge = 0;
  if (collectionCopy)
  {
    v5 = [collectionCopy horizontalSizeClass] == 2 && objc_msgSend(collectionCopy, "verticalSizeClass") == 2;
    v6 = [(PaletteView *)self _generateWeekDayInitialsHeaderViewWithHorizontalSizeClass:v5];
    v7 = self->_dayInitialsHeaderView;
    self->_dayInitialsHeaderView = v6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  -[PaletteView setAvatarViewVisible:](self, "setAvatarViewVisible:", [WeakRetained paletteShouldShowAvatarView]);
}

- (void)setTodayButtonVisible:(BOOL)visible
{
  if (self->_todayButtonVisible != visible)
  {
    visibleCopy = visible;
    todayButton = self->_todayButton;
    if (visibleCopy)
    {
      if (!todayButton)
      {
        v6 = [UIButton buttonWithType:1];
        v7 = self->_todayButton;
        self->_todayButton = v6;

        if (CalSolariumEnabled())
        {
          todayButtonFont = +[UIButtonConfiguration plainButtonConfiguration];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100110C50;
          v21[3] = &unk_100211980;
          v21[4] = self;
          [todayButtonFont setTitleTextAttributesTransformer:v21];
          v9 = [NSBundle bundleForClass:objc_opt_class()];
          v10 = [v9 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
          [todayButtonFont setTitle:v10];

          [(UIButton *)self->_todayButton setConfiguration:todayButtonFont];
          v11 = CalendarAppTintColor();
          [(UIButton *)self->_todayButton setTintColor:v11];

          [(UIButton *)self->_todayButton setTranslatesAutoresizingMaskIntoConstraints:0];
          LODWORD(v12) = 1132068864;
          [(UIButton *)self->_todayButton setContentHuggingPriority:0 forAxis:v12];
          LODWORD(v13) = 1144750080;
          [(UIButton *)self->_todayButton setContentCompressionResistancePriority:1 forAxis:v13];
        }

        else
        {
          v14 = self->_todayButton;
          v15 = [NSBundle bundleForClass:objc_opt_class()];
          v16 = [v15 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
          [(UIButton *)v14 setTitle:v16 forState:0];

          v17 = CalendarAppTintColor();
          [(UIButton *)self->_todayButton setTintColor:v17];

          todayButtonFont = [(PaletteView *)self todayButtonFont];
          titleLabel = [(UIButton *)self->_todayButton titleLabel];
          [titleLabel setFont:todayButtonFont];
        }

        [(UIButton *)self->_todayButton addTarget:self action:"todayTapped" forControlEvents:64];
        [(UIButton *)self->_todayButton setPointerInteractionEnabled:1];
        [(UIButton *)self->_todayButton setShowsLargeContentViewer:1];
        v19 = self->_todayButton;
        v20 = objc_opt_new();
        [(UIButton *)v19 addInteraction:v20];

        [(UIButton *)self->_todayButton setAccessibilityIdentifier:@"today-button"];
        todayButton = self->_todayButton;
      }

      [(PaletteView *)self addSubview:todayButton];
    }

    else
    {
      [(UIButton *)self->_todayButton removeFromSuperview];
    }

    self->_todayButtonVisible = visibleCopy;
  }
}

- (void)setDateStringVisible:(BOOL)visible
{
  if (self->_dateStringVisible != visible)
  {
    dateLabel = self->_dateLabel;
    if (visible)
    {
      if (!dateLabel)
      {
        newDateLabel = [(PaletteView *)self newDateLabel];
        v7 = self->_dateLabel;
        self->_dateLabel = newDateLabel;
      }

      if (!self->_animatableDateLabel)
      {
        newDateLabel2 = [(PaletteView *)self newDateLabel];
        animatableDateLabel = self->_animatableDateLabel;
        self->_animatableDateLabel = newDateLabel2;

        [(UILabel *)self->_animatableDateLabel setAlpha:0.0];
        [(PaletteView *)self addSubview:self->_animatableDateLabel];
      }

      v10 = self->_dateLabel;
      if (self->_dateString)
      {
        [(UILabel *)self->_dateLabel setAttributedText:self->_dateString];
        [(UILabel *)self->_animatableDateLabel setAttributedText:self->_dateString];
        v10 = self->_dateLabel;
      }

      [(PaletteView *)self addSubview:v10];
    }

    else
    {
      [(UILabel *)dateLabel removeFromSuperview];
    }

    self->_dateStringVisible = visible;
  }
}

- (void)setDateString:(id)string
{
  stringCopy = string;
  if (!self->_dateLabel)
  {
    newDateLabel = [(PaletteView *)self newDateLabel];
    dateLabel = self->_dateLabel;
    self->_dateLabel = newDateLabel;
  }

  if (!self->_animatableDateLabel)
  {
    newDateLabel2 = [(PaletteView *)self newDateLabel];
    animatableDateLabel = self->_animatableDateLabel;
    self->_animatableDateLabel = newDateLabel2;

    [(UILabel *)self->_animatableDateLabel setAlpha:0.0];
    [(PaletteView *)self addSubview:self->_animatableDateLabel];
  }

  [(UILabel *)self->_dateLabel setAttributedText:stringCopy];
  [(UILabel *)self->_animatableDateLabel setAttributedText:stringCopy];
  dateString = self->_dateString;
  self->_dateString = stringCopy;
  v10 = stringCopy;

  [(UILabel *)self->_dateLabel sizeToFit];
  [(UILabel *)self->_animatableDateLabel sizeToFit];
}

- (void)setAvatarContact:(id)contact
{
  contactCopy = contact;
  avatarView = self->_avatarView;
  v9 = contactCopy;
  if (!avatarView)
  {
    v6 = [[EKUILabeledAvatarView alloc] initWithPlacement:0 options:0];
    v7 = self->_avatarView;
    self->_avatarView = v6;

    v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"avatarTapped"];
    [(EKUILabeledAvatarView *)self->_avatarView addGestureRecognizer:v8];
    [(PaletteView *)self addSubview:self->_avatarView];

    contactCopy = v9;
    avatarView = self->_avatarView;
  }

  [(EKUILabeledAvatarView *)avatarView setContact:contactCopy];
}

- (void)setAvatarViewVisible:(BOOL)visible
{
  self->_avatarViewVisible = visible;
  avatarView = self->_avatarView;
  if (avatarView)
  {
    [(EKUILabeledAvatarView *)avatarView setAlpha:visible];
    [(PaletteView *)self setNeedsLayout];

    [(PaletteView *)self layoutIfNeeded];
  }
}

- (void)todayTapped
{
  delegate = [(PaletteView *)self delegate];
  [delegate paletteTodayButtonTapped:self];
}

- (void)avatarTapped
{
  delegate = [(PaletteView *)self delegate];
  [delegate paletteAvatarViewTapped:self];
}

- (void)setDividerLineVisible:(BOOL)visible
{
  if (self->_dividerLineVisible != visible)
  {
    self->_dividerLineVisible = visible;
    dividerLine = self->_dividerLine;
    if (visible)
    {
      if (!dividerLine)
      {
        v5 = objc_alloc_init(UIView);
        v6 = self->_dividerLine;
        self->_dividerLine = v5;

        v7 = +[UIColor separatorColor];
        [(UIView *)self->_dividerLine setBackgroundColor:v7];

        [(UIView *)self->_dividerLine setAlpha:0.5];
        dividerLine = self->_dividerLine;
      }

      [(PaletteView *)self addSubview:dividerLine];
    }

    else
    {
      v8 = self->_dividerLine;

      [(UIView *)v8 removeFromSuperview];
    }
  }
}

- (void)_localeChanged:(id)changed
{
  dayInitialsHeaderView = self->_dayInitialsHeaderView;
  if (self->_weekdayHeaderVisible)
  {
    [(WeekDayInitialsHeaderView *)self->_dayInitialsHeaderView setNeedsDisplay];
  }

  else
  {
    self->_dayInitialsHeaderView = 0;
    _objc_release_x1(self, dayInitialsHeaderView);
  }
}

- (void)_contentSizeCategoryChanged
{
  todayButtonFont = [(PaletteView *)self todayButtonFont];
  titleLabel = [(UIButton *)self->_todayButton titleLabel];
  [titleLabel setFont:todayButtonFont];

  todayButton = self->_todayButton;

  [(UIButton *)todayButton sizeToFit];
}

- (id)todayButtonFont
{
  v3 = CalSystemSolariumEnabled();
  v4 = &UIFontTextStyleCallout;
  if (!v3)
  {
    v4 = &UIFontTextStyleSubheadline;
  }

  v5 = *v4;
  traitCollection = [(PaletteView *)self traitCollection];
  v7 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:v5 minimumContentSizeCategory:UIContentSizeCategoryLarge maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge traitCollection:traitCollection];

  return v7;
}

- (id)_generateWeekDayInitialsHeaderViewWithHorizontalSizeClass:(BOOL)class
{
  v3 = off_10020D510;
  if (!class)
  {
    v3 = off_10020D4A8;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

@end