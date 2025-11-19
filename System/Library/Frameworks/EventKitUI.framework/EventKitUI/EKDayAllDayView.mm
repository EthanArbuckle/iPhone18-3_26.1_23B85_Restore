@interface EKDayAllDayView
+ (BOOL)allDayContainSpaces;
+ (BOOL)shouldAllDayTextUseTwoLines;
+ (double)allDay1LineWidth;
+ (double)allDayWidth;
+ (double)maxAllowableAllDayTextTwoLineHeight;
+ (double)maxAllowableAllDayTextWidth;
+ (id)allDayLabelFont;
+ (id)localizedAllDayString;
+ (void)clearStaticCache;
- (BOOL)containsEvent:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKDayAllDayView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4;
- (EKDayAllDayViewDelegate)delegate;
- (double)_allDayAreaHeightForEventCount:(int64_t)a3;
- (double)_height;
- (double)_languageAwareAllDayEventHeight:(id)a3;
- (double)naturalHeight;
- (double)nextAvailableOccurrenceViewYOrigin;
- (id)_findSelectedCopySubviewOfView:(id)a3;
- (id)_selectedCopyView;
- (id)occurrenceViewForEvent:(id)a3;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (int64_t)_sizeClass;
- (void)_clearTemporaryViews;
- (void)_configureOccurrenceViewMarginAndPadding:(id)a3;
- (void)_localeChanged:(id)a3;
- (void)_saveTemporaryViews;
- (void)_setUpBirthdayCountViewIfNeeded;
- (void)_smallTextSettingChanged;
- (void)addViewToScroller:(id)a3;
- (void)attemptDisplayReviewPrompt;
- (void)configureOccurrenceViewForGestureController:(id)a3;
- (void)dayOccurrenceViewSelected:(id)a3 source:(unint64_t)a4;
- (void)layoutSubviews;
- (void)lockUseOfSmallTextToState:(BOOL)a3;
- (void)reAdjustAllDayLabelLayout;
- (void)removeAllOccurrenceViews;
- (void)selectEvent:(id)a3;
- (void)setAllDayLabelHighlighted:(BOOL)a3;
- (void)setAllowsOccurrenceSelection:(BOOL)a3;
- (void)setBorderColor:(id)a3;
- (void)setDimmedOccurrence:(id)a3;
- (void)setDividerLineVisualEffect:(id)a3;
- (void)setFixedHeight:(double)a3;
- (void)setOccurrenceInset:(double)a3 labelInset:(double)a4;
- (void)setOccurrences:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setShowBirthdayCountInsteadOfEvents:(BOOL)a3;
- (void)setShowsBorderLines:(BOOL)a3;
- (void)setShowsLabel:(BOOL)a3;
- (void)setShowsSelection:(BOOL)a3;
- (void)shouldAnnotateAppEntitiesChanged;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateLabelFont;
- (void)viewTintColorDidChangeForView:(id)a3 toColor:(id)a4;
@end

@implementation EKDayAllDayView

+ (double)allDay1LineWidth
{
  v9[1] = *MEMORY[0x1E69E9840];
  result = *&s_allDay1LineWidth;
  if (*&s_allDay1LineWidth == 0.0)
  {
    v8 = *MEMORY[0x1E69DB648];
    v4 = [a1 allDayLabelFont];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    v6 = [a1 localizedAllDayString];
    [v6 sizeWithAttributes:v5];
    s_allDay1LineWidth = v7;

    return *&s_allDay1LineWidth;
  }

  return result;
}

+ (id)allDayLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v3 = [v2 fontDescriptor];
  [v3 pointSize];
  v5 = v4;

  CalRoundToScreenScale(v5);
  v7 = fmin(v6, 22.0);
  v8 = MEMORY[0x1E69DB878];

  return [v8 systemFontOfSize:v7];
}

+ (id)localizedAllDayString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"all-day" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (BOOL)allDayContainSpaces
{
  v2 = s_allDayContainSpaces;
  if (!s_allDayContainSpaces)
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = [a1 localizedAllDayString];
    v5 = [v3 numberWithInt:{objc_msgSend(v4, "rangeOfString:", @" "}];
    v6 = s_allDayContainSpaces;
    s_allDayContainSpaces = v5;

    v2 = s_allDayContainSpaces;
  }

  return [v2 BOOLValue];
}

+ (double)maxAllowableAllDayTextWidth
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v3 = [v2 fontDescriptor];
  [v3 pointSize];
  v5 = v4;

  CalRoundToScreenScale(v5 * 3.57545455);
  return fmin(v6, 78.66);
}

- (void)reAdjustAllDayLabelLayout
{
  if ([objc_opt_class() shouldAllDayTextUseTwoLines])
  {
    [objc_opt_class() maxAllowableAllDayTextWidth];
    [objc_opt_class() maxAllowableAllDayTextTwoLineHeight];
    [(UILabel *)self->_allDay frame];
    v4 = v3;
    [(UILabel *)self->_allDay frame];
    [(UILabel *)self->_allDay setFrame:v4];
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_allDay setNumberOfLines:v5];
  allDay = self->_allDay;

  [(UILabel *)allDay sizeToFit];
}

+ (BOOL)shouldAllDayTextUseTwoLines
{
  v3 = [a1 allDayContainSpaces];
  if (v3)
  {
    [a1 allDay1LineWidth];
    v5 = v4;
    [a1 maxAllowableAllDayTextWidth];
    LOBYTE(v3) = v5 > v6;
  }

  return v3;
}

- (void)_smallTextSettingChanged
{
  v3 = [(NSMutableArray *)self->_occurrenceViews count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->_occurrenceViews objectAtIndex:i];
      [v6 setUsesSmallText:self->_usesSmallText];
    }
  }

  [(EKDayAllDayView *)self setNeedsLayout];
}

- (double)naturalHeight
{
  if (self->_showBirthdayCount)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_occurrenceViews count];
  }

  [(EKDayAllDayView *)self _allDayAreaHeightForEventCount:v3];
  return result;
}

- (double)_height
{
  [(EKDayAllDayView *)self fixedHeight];
  if (v3 >= 0.0)
  {

    [(EKDayAllDayView *)self fixedHeight];
  }

  else
  {

    [(EKDayAllDayView *)self naturalHeight];
  }

  return result;
}

- (void)layoutSubviews
{
  occurrenceInset = self->_occurrenceInset;
  [EKDayOccurrenceView minimumHeightForSizeClass:[(EKDayAllDayView *)self _sizeClass] orientation:self->_orientation isAllDay:1];
  v5 = v4;
  [(EKDayAllDayView *)self bounds];
  v7 = v6;
  v8 = self;
  v9 = v8;
  if (v8->_showBirthdayCount && v8->_birthdayCountOccurrenceView)
  {
    v10 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  else
  {
    v10 = v8->_occurrenceViews;
  }

  v11 = v10;
  v12 = v7 - occurrenceInset;
  v13 = [(NSMutableArray *)v10 count];
  [(EKDayAllDayView *)v9 bounds];
  scroller = v9->_scroller;
  v115 = v13 + 1;
  v117 = (v13 + 1) >> 1;
  if (v117 > v9->_maxVisibleRows)
  {
    v17 = v15;
    if (scroller)
    {
      [(UIScrollView *)scroller frame];
      v19 = v18;
      v21 = v20;
      v22 = v17 - self->_occurrenceInset;
      v23 = 0.0;
      if (CalInterfaceIsLeftToRight())
      {
        v23 = self->_occurrenceInset;
      }

      [(UIScrollView *)v9->_scroller setFrame:v23, v19, v22, v21, v115];
    }

    else
    {
      [(EKDayAllDayView *)v9 _allDayAreaHeightForEventCount:v13];
      v26 = v25;
      v27 = objc_alloc(MEMORY[0x1E69DCEF8]);
      IsLeftToRight = CalInterfaceIsLeftToRight();
      v29 = 0.0;
      if (IsLeftToRight)
      {
        v29 = self->_occurrenceInset;
      }

      v30 = [v27 initWithFrame:{v29, 0.0, v17 - self->_occurrenceInset, v26, v115}];
      v31 = v9->_scroller;
      v9->_scroller = v30;

      if ((CalSolariumEnabled() & 1) == 0)
      {
        v32 = v9->_scroller;
        v33 = [(EKDayAllDayView *)v9 backgroundColor];
        [(UIScrollView *)v32 setBackgroundColor:v33];
      }
    }

    [(EKDayAllDayView *)v9 addSubview:v9->_scroller];
    v123 = v9->_scroller;
    occurrenceInset = 0.0;
    v24 = v9;
    goto LABEL_17;
  }

  if (scroller)
  {
    [(UIScrollView *)scroller removeFromSuperview];
    v24 = v9->_scroller;
    v9->_scroller = 0;
    v123 = v9;
LABEL_17:

    goto LABEL_18;
  }

  v123 = v9;
LABEL_18:
  v34 = v5;
  *&v14 = v34;
  v125 = [MEMORY[0x1E696AD98] numberWithFloat:{v14, v115}];
  v35 = objc_opt_new();
  CalRoundToScreenScale(v12 * 0.5);
  v37 = v36;
  v38 = [(EKDayAllDayView *)v9 _selectedCopyView];
  v39 = v38;
  if (v13)
  {
    v121 = v38;
    v40 = 0;
    v120 = v37 + -3.5;
    do
    {
      v41 = [(NSMutableArray *)v11 objectAtIndex:v40];
      v42 = [v41 currentImageState];
      v43 = [v42 requiresLanguageAwarePadding];

      if (v43)
      {
        v45 = MEMORY[0x1E696AD98];
        [(EKDayAllDayView *)v9 _languageAwareAllDayEventHeight:v41];
        *&v46 = v46;
        v47 = [v45 numberWithFloat:v46];

        [v35 addObject:v47];
        if (v40)
        {
          [v35 replaceObjectAtIndex:v40 - 1 withObject:v47];
        }

        v125 = v47;
      }

      else
      {
        if (v40)
        {
          v49 = v125;
        }

        else
        {
          *&v44 = v34;
          v48 = [MEMORY[0x1E696AD98] numberWithFloat:v44];

          v49 = v48;
        }

        v125 = v49;
        [v35 addObject:?];
      }

      ++v40;
    }

    while (v13 != v40);
    v122 = v35;
    v124 = 0;
    v50 = 0;
    v51 = occurrenceInset + 5.5;
    v118 = v12 + -7.5;
    v119 = *(MEMORY[0x1E695F058] + 16);
    v52 = 4.0;
    while (1)
    {
      v53 = v11;
      v54 = [(NSMutableArray *)v11 objectAtIndex:v50];
      v55 = [v54 superview];

      if (v55 != v123)
      {
        [(UIScrollView *)v123 addSubview:v54];
      }

      v56 = v13 == 1;
      v57 = [(EKDayAllDayView *)v9 forceSingleColumnLayout];
      v58 = v57;
      if (v50)
      {
        v56 = 0;
        v59 = v57;
      }

      else
      {
        v59 = 1;
      }

      if (CalInterfaceIsLeftToRight())
      {
        v60 = v120;
        if ((v50 & 1) == 0)
        {
          v60 = 0.0;
        }

        v61 = v51 + v60;
        if ([(EKDayAllDayView *)v9 forceSingleColumnLayout])
        {
          v62 = v51;
        }

        else
        {
          v62 = v61;
        }
      }

      else
      {
        v63 = [(EKDayAllDayView *)v9 forceSingleColumnLayout];
        if (v50)
        {
          v64 = v63;
        }

        else
        {
          v64 = 1;
        }

        if (v64)
        {
          v62 = 2.0;
        }

        else
        {
          v62 = v120 + 2.0;
        }
      }

      v65 = [v122 objectAtIndex:v50];
      [v65 floatValue];
      v67 = v66;

      v68 = 0.0;
      if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v9))
      {
        v68 = CalFloorToScreenScale(-0.5);
      }

      v69 = v67;
      v70 = v120 + -1.0;
      if ((((v50 & 1) == 0) ^ v56) & ~v58)
      {
        goto LABEL_54;
      }

      if (v59)
      {
        break;
      }

      IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v9);
      v73 = 0.0;
      if (IsRegularInViewHierarchy)
      {
        v73 = 1.0;
      }

      v62 = v62 + v73;
      v70 = v120 + -1.0 + v68;
LABEL_60:
      v71 = v52 + v69 + 2.0;
LABEL_61:
      [v54 setFrame:{v62, v52, v70, v69}];
      WeakRetained = objc_loadWeakRetained(&v9->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v75 = objc_loadWeakRetained(&v9->_delegate);
        if ([v75 allDayViewContentShouldDrawSynchronously:v9])
        {
          v76 = 16;
        }

        else
        {
          v76 = 0;
        }
      }

      else
      {
        v76 = 0;
      }

      [v54 requestContentIfNeeded:v76 completion:0];
      if (!v50)
      {
        [(UILabel *)v9->_allDay frame];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v83 = v9->_scroller;
        if (v83)
        {
          [(UIScrollView *)v83 frame];
        }

        else
        {
          v84 = 0.0;
        }

        CalRoundToScreenScale(v52 + (v69 - v82) * 0.5 + v84 + 0.5);
        [(UILabel *)v9->_allDay setFrame:v78, v85, v80, v82];
        [(EKDayAllDayView *)v9 reAdjustAllDayLabelLayout];
      }

      v86 = [v54 occurrence];
      v87 = [v86 isEqual:v9->_dimmedOccurrence];

      if (v87)
      {
        v88 = [(EKDayAllDayView *)v9 occurrenceViewForEvent:v9->_dimmedOccurrence];
        [v88 setDimmed:1];
      }

      v89 = [v54 occurrence];
      v90 = [v121 occurrence];
      v91 = [v89 isEqual:v90];

      if (v91)
      {
        v92 = v54;

        v124 = v92;
      }

      ++v50;
      v52 = v71;
      --v13;
      v11 = v53;
      if (!v13)
      {
        v39 = v121;
        v35 = v122;
        if (!v121)
        {
          goto LABEL_85;
        }

        goto LABEL_80;
      }
    }

    if (v58 | v56)
    {
      v70 = v118;
    }

    else
    {
      v70 = v119;
    }

LABEL_54:
    if ((v50 & 1) == 0)
    {
      v71 = v52;
      if (![(EKDayAllDayView *)v9 forceSingleColumnLayout])
      {
        goto LABEL_61;
      }
    }

    goto LABEL_60;
  }

  v124 = 0;
  if (!v38)
  {
    goto LABEL_85;
  }

LABEL_80:
  v93 = [v39 superview];

  if (v93 == v123)
  {
    [(UIScrollView *)v123 bringSubviewToFront:v39];
  }

  else
  {
    [(UIScrollView *)v123 addSubview:v39];
  }

  if (v124)
  {
    [v124 frame];
    [v39 setFrame:?];
  }

LABEL_85:
  v94 = v9->_scroller;
  if (v94)
  {
    [(UIScrollView *)v94 bounds];
    v96 = v95;
    v97 = 0.0;
    if (v116 >= 2)
    {
      v98 = 0;
      v99 = v117;
      do
      {
        v100 = [v35 objectAtIndex:v98];
        [v100 floatValue];
        v97 = v97 + v101;

        v98 += 2;
        --v99;
      }

      while (v99);
    }

    [(UIScrollView *)v9->_scroller setContentSize:v96, v97 + (v117 - 1) * 2.0 + 4.0 + 4.0];
  }

  v102 = objc_loadWeakRetained(&v9->_delegate);
  v103 = objc_opt_respondsToSelector();

  if (v103)
  {
    v104 = objc_loadWeakRetained(&v9->_delegate);
    [v104 allDayViewDidLayoutSubviews:v9];
  }

  v105 = EKUISeparatorLineThickness();
  dividerLineSuperview = v9->_dividerLineSuperview;
  if (dividerLineSuperview)
  {
    v107 = [(EKUIVisualEffectView *)dividerLineSuperview contentView];
  }

  else
  {
    v107 = v9;
  }

  v108 = v107;
  v109 = [(UIView *)v9->_dividerLineViewTop superview];

  if (!v109)
  {
    [(EKDayAllDayView *)v108 addSubview:v9->_dividerLineViewTop];
    [(UIView *)v9->_dividerLineViewTop setAutoresizingMask:34];
    dividerLineViewTop = v9->_dividerLineViewTop;
    [(EKDayAllDayView *)v9 frame];
    [(UIView *)dividerLineViewTop setFrame:0.0, 0.0];
  }

  v111 = [(UIView *)v9->_dividerLineViewBottom superview];

  if (!v111)
  {
    [(EKDayAllDayView *)v108 addSubview:v9->_dividerLineViewBottom];
    [(UIView *)v9->_dividerLineViewBottom setAutoresizingMask:10];
    dividerLineViewBottom = v9->_dividerLineViewBottom;
    [(EKDayAllDayView *)v9 bounds];
    v113 = CGRectGetMaxY(v127) - v105;
    [(EKDayAllDayView *)v9 frame];
    [(UIView *)dividerLineViewBottom setFrame:0.0, v113];
  }

  v114 = v9->_dividerLineSuperview;
  if (!v114)
  {
    [(EKDayAllDayView *)v9 bringSubviewToFront:v9->_dividerLineViewTop];
    v114 = v9->_dividerLineViewBottom;
  }

  [(EKDayAllDayView *)v9 bringSubviewToFront:v114];
}

- (int64_t)_sizeClass
{
  v3 = [(EKDayAllDayView *)self window];

  if (!v3)
  {
    return self->_targetSizeClass;
  }

  return EKUIWidthSizeClassForViewHierarchy(self);
}

- (id)_selectedCopyView
{
  v3 = [(EKDayAllDayView *)self _findSelectedCopySubviewOfView:self];
  if (!v3)
  {
    v3 = [(EKDayAllDayView *)self _findSelectedCopySubviewOfView:self->_scroller];
  }

  return v3;
}

- (void)shouldAnnotateAppEntitiesChanged
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 allDayViewShouldAnnotateAppEntities:self];
  }

  else
  {
    v6 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_occurrenceViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setShouldAnnotateAppEntities:{v6, v12}];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (double)maxAllowableAllDayTextTwoLineHeight
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v3 = [v2 fontDescriptor];
  [v3 pointSize];
  v5 = v4;

  CalRoundToScreenScale(v5 * 2.54545455);
  return fmin(v6, 56.0);
}

+ (double)allDayWidth
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (*&s_allDay1LineWidth == 0.0)
  {
    if ([a1 shouldAllDayTextUseTwoLines])
    {
      v3 = [a1 localizedAllDayString];
      [a1 maxAllowableAllDayTextWidth];
      v5 = v4;
      v11 = *MEMORY[0x1E69DB648];
      v6 = [a1 allDayLabelFont];
      v12[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [v3 boundingRectWithSize:1 options:v7 attributes:0 context:{v5, 1.79769313e308}];
      s_allDayWidth = v8;
    }

    else
    {
      [a1 allDay1LineWidth];
      s_allDayWidth = v9;
    }
  }

  return *&s_allDayWidth;
}

+ (void)clearStaticCache
{
  v2 = s_allDayContainSpaces;
  s_allDayContainSpaces = 0;

  s_allDay1LineWidth = 0;
  s_allDayWidth = 0;
}

- (EKDayAllDayView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4
{
  v20.receiver = self;
  v20.super_class = EKDayAllDayView;
  v5 = [(EKDayAllDayView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    if (CalCanvasPocketEnabled())
    {
      v6 = [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      if (a4 == 1)
      {
        [MEMORY[0x1E69DC888] systemBackgroundColor];
      }

      else
      {
        CUIKAllDayBackgroundColor();
      }
      v6 = ;
    }

    v7 = v6;
    [(EKDayAllDayView *)v5 setBackgroundColor:v6];

    v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 100.0, 50.0}];
    allDay = v5->_allDay;
    v5->_allDay = v8;

    v10 = v5->_allDay;
    v11 = [objc_opt_class() allDayLabelFont];
    [(UILabel *)v10 setFont:v11];

    v12 = v5->_allDay;
    v13 = [objc_opt_class() localizedAllDayString];
    [(UILabel *)v12 setText:v13];

    [(UILabel *)v5->_allDay setTextAlignment:2];
    v14 = v5->_allDay;
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v14 setTextColor:v15];

    [(EKDayAllDayView *)v5 reAdjustAllDayLabelLayout];
    [(EKDayAllDayView *)v5 addSubview:v5->_allDay];
    v5->_allowSelection = 1;
    v5->_maxVisibleRows = 2;
    v5->_showsLabel = 1;
    v5->_fixedHeight = -1.0;
    v5->_targetSizeClass = a4;
    [(EKDayAllDayView *)v5 setClipsToBounds:1];
    v16 = objc_opt_new();
    temporaryViewCache = v5->_temporaryViewCache;
    v5->_temporaryViewCache = v16;

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v5 selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v5;
}

- (void)_localeChanged:(id)a3
{
  v3 = objc_opt_class();

  [v3 clearStaticCache];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  if ([v9 count] == 1)
  {
    v5 = [v9 anyObject];
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 allDayView:self didSelectEvent:0 userInitiated:1];
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(EKDayAllDayView *)self _height:a3.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (id)_findSelectedCopySubviewOfView:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 subviews];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          if ([v9 isSelectedCopyView])
          {
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)occurrenceViewForEvent:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_occurrenceViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 occurrence];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (double)nextAvailableOccurrenceViewYOrigin
{
  [(EKDayAllDayView *)self firstEventYOffset];
  v4 = v3;
  if ([(NSMutableArray *)self->_occurrenceViews count])
  {
    v5 = [(NSMutableArray *)self->_occurrenceViews objectAtIndex:[(NSMutableArray *)self->_occurrenceViews count]- 1];
    [v5 frame];
    v4 = CGRectGetMaxY(v7) + 2.0;
  }

  return v4;
}

- (void)addViewToScroller:(id)a3
{
  v4 = a3;
  if (self->_scroller)
  {
    v16 = v4;
    v5 = [v4 superview];
    scroller = self->_scroller;

    v4 = v16;
    if (v5 != scroller)
    {
      v7 = [v16 superview];
      [v16 frame];
      [v7 convertRect:self->_scroller toView:?];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [(UIScrollView *)self->_scroller addSubview:v16];
      [v16 setFrame:{v9, v11, v13, v15}];
      v4 = v16;
    }
  }
}

- (BOOL)containsEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_occurrenceViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) occurrence];
        v10 = [v9 isEqual:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)selectEvent:(id)a3
{
  v6 = a3;
  if (self->_selectedEvent != v6)
  {
    v7 = v6;
    if (v6 && ![(EKDayAllDayView *)self containsEvent:v6])
    {
      [(EKDayAllDayView *)a2 selectEvent:?];
    }

    objc_storeStrong(&self->_selectedEvent, a3);
    v6 = v7;
  }
}

- (void)setDimmedOccurrence:(id)a3
{
  v5 = a3;
  dimmedOccurrence = self->_dimmedOccurrence;
  v9 = v5;
  if (dimmedOccurrence != v5)
  {
    if (dimmedOccurrence)
    {
      v7 = [(EKDayAllDayView *)self occurrenceViewForEvent:?];
      [v7 setDimmed:0];
    }

    objc_storeStrong(&self->_dimmedOccurrence, a3);
    if (self->_dimmedOccurrence)
    {
      v8 = [(EKDayAllDayView *)self occurrenceViewForEvent:?];
      [v8 setDimmed:1];
    }
  }
}

- (void)setOccurrenceInset:(double)a3 labelInset:(double)a4
{
  self->_occurrenceInset = a3;
  [(UILabel *)self->_allDay frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (CalInterfaceIsLeftToRight())
  {
    v12 = a4 - v9 + -1.0;
    if (v12 < 0.0)
    {
      v9 = v9 + v12;
      v12 = 0.0;
    }
  }

  else
  {
    [(EKDayAllDayView *)self bounds];
    v12 = CGRectGetWidth(v17) - a4 + 1.0;
    v18.origin.x = v12;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    MaxX = CGRectGetMaxX(v18);
    [(EKDayAllDayView *)self bounds];
    if (MaxX > CGRectGetMaxX(v19))
    {
      v20.origin.x = v12;
      v20.origin.y = v7;
      v20.size.width = v9;
      v20.size.height = v11;
      v14 = CGRectGetMaxX(v20);
      [(EKDayAllDayView *)self bounds];
      v9 = v9 - (v14 - CGRectGetMaxX(v21));
    }
  }

  allDay = self->_allDay;

  [(UILabel *)allDay setFrame:v12, v7, v9, v11];
}

- (void)lockUseOfSmallTextToState:(BOOL)a3
{
  self->_usesSmallText = a3;
  self->_smallTextSettingLocked = 1;
  [(EKDayAllDayView *)self _smallTextSettingChanged];
}

- (void)setOrientation:(int64_t)a3
{
  self->_orientation = a3;
  if (!self->_smallTextSettingLocked)
  {
    self->_usesSmallText = (a3 - 3) < 2;
    [(EKDayAllDayView *)self _smallTextSettingChanged];
  }
}

- (void)removeAllOccurrenceViews
{
  v3 = [(NSMutableArray *)self->_occurrenceViews count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->_occurrenceViews objectAtIndex:i];
      v7 = [v6 occurrence];
      v8 = [v7 calendarItemIdentifier];

      if (!v8 || ([(NSMutableDictionary *)self->_temporaryViewCache objectForKeyedSubscript:v8], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
      {
        [v6 removeFromSuperview];
      }
    }
  }

  occurrenceViews = self->_occurrenceViews;
  self->_occurrenceViews = 0;
}

- (double)_languageAwareAllDayEventHeight:(id)a3
{
  v4 = a3;
  [EKDayOccurrenceView minimumHeightForSizeClass:[(EKDayAllDayView *)self _sizeClass] orientation:self->_orientation isAllDay:1];
  v6 = v5;
  v7 = [v4 currentImageState];
  v8 = [v7 requiresLanguageAwarePadding];

  if (v8)
  {
    v9 = [v4 currentImageState];
    [v9 totalLanguageAwareHeightPadding];
    v6 = v6 + v10;
  }

  return v6;
}

- (double)_allDayAreaHeightForEventCount:(int64_t)a3
{
  if (a3 < 1)
  {
    return 0.0;
  }

  [EKDayOccurrenceView minimumHeightForSizeClass:[(EKDayAllDayView *)self _sizeClass] orientation:self->_orientation isAllDay:1];
  v6 = v5;
  if ([(EKDayAllDayView *)self forceSingleColumnLayout])
  {
    v7 = a3;
  }

  else
  {
    v7 = (a3 + 1) >> 1;
  }

  v8 = [(EKDayAllDayView *)self forceSingleColumnLayout];
  v9 = 0;
  if (a3 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = a3;
  }

  v11 = 0.0;
  do
  {
    v12 = [(NSMutableArray *)self->_occurrenceViews objectAtIndex:v9];
    if ([(EKDayAllDayView *)self forceSingleColumnLayout])
    {
LABEL_10:
      [(EKDayAllDayView *)self _languageAwareAllDayEventHeight:v12];
      v11 = v11 + v13;
      goto LABEL_24;
    }

    if (v9)
    {
      v16 = [(NSMutableArray *)self->_occurrenceViews objectAtIndex:v9 - 1];
      [(EKDayAllDayView *)self _languageAwareAllDayEventHeight:v12];
      v18 = v17;
      [(EKDayAllDayView *)self _languageAwareAllDayEventHeight:v16];
      if (v18 >= v19)
      {
        v19 = v18;
      }

      v11 = v11 + v19;
    }

    else
    {
      v15 = a3 == 3 && v9 == 2;
      if (a3 == 1 || v15)
      {
        goto LABEL_10;
      }
    }

LABEL_24:

    ++v9;
  }

  while (v10 != v9);
  v20 = 2;
  if ((a3 + 1) >> 1 < 2)
  {
    v20 = (a3 + 1) >> 1;
  }

  if (v8)
  {
    v20 = a3;
  }

  v21 = floor(v11) + 4.0 + (v20 - 1) * 2.0;
  v22 = v21 + 4.0;
  v23 = floor(v6 * 0.5) + 2.0 + v21;
  if (v7 >= 3)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if ([(EKDayAllDayView *)self showsBorderLines])
  {
    return v24 + EKUISeparatorLineThickness();
  }

  return v24;
}

- (void)configureOccurrenceViewForGestureController:(id)a3
{
  v19 = a3;
  [(EKDayAllDayView *)self _configureOccurrenceViewMarginAndPadding:v19];
  v4 = [v19 occurrence];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained allDayViewRequestsCurrentDisplayDate:self];

    v7 = [v6 calendarDateForDay];
    [v7 absoluteTime];
    v9 = v8;

    v10 = [v6 calendarDateForEndOfDay];
    [v10 absoluteTime];
    v12 = v11 + 1.0;

    v13 = [v19 occurrence];
    v14 = [v13 startDate];
    [v14 timeIntervalSinceReferenceDate];
    [v19 setHasPrecedingDuration:v15 < v9];

    v16 = [v19 occurrence];
    v17 = [v16 endDateUnadjustedForLegacyClients];
    [v17 timeIntervalSinceReferenceDate];
    [v19 setHasTrailingDuration:v18 > v12];
  }
}

- (void)_configureOccurrenceViewMarginAndPadding:(id)a3
{
  v14 = a3;
  +[EKDayOccurrenceView defaultPadding];
  v5 = v4;
  v7 = v6;
  v8 = [v14 hasIcon];
  v9 = [(EKDayAllDayView *)self window];

  if (v9)
  {
    if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self))
    {
LABEL_3:
      v10 = (self->_orientation - 3) >= 2;
      v11 = 2.0;
      v12 = 3.0;
      goto LABEL_6;
    }
  }

  else if (self->_targetSizeClass == 2)
  {
    goto LABEL_3;
  }

  v10 = (self->_orientation - 3) >= 2;
  v11 = 1.5;
  v12 = 1.0;
LABEL_6:
  if (!v10)
  {
    v11 = v12;
  }

  v13 = 0.5;
  if (v8)
  {
    v13 = 1.5;
  }

  [v14 setPadding:{v11, v13, v5, v7}];
}

- (void)setOccurrences:(id)a3
{
  v45 = a3;
  [(EKDayAllDayView *)self _saveTemporaryViews];
  [(EKDayAllDayView *)self removeAllOccurrenceViews];
  v4 = [v45 count];
  self->_birthdayCount = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained allDayViewRequestsCurrentDisplayDate:self];

  v7 = [v6 calendarDateForDay];
  [v7 absoluteTime];
  v9 = v8;

  v10 = [v6 calendarDateForEndOfDay];
  [v10 absoluteTime];
  v12 = v11;

  v13 = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  v43 = v6;
  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = [v15 allDayViewShouldAnnotateAppEntities:self];

    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 0;
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  v17 = 0;
  v18 = v12 + 1.0;
  v19 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 8);
  v21 = *(MEMORY[0x1E695F058] + 16);
  v22 = *(MEMORY[0x1E695F058] + 24);
  do
  {
    v23 = [v45 objectAtIndexedSubscript:{v17, v43}];
    v24 = [v23 calendarItemIdentifier];
    v25 = [(NSMutableDictionary *)self->_temporaryViewCache objectForKeyedSubscript:v24];
    if (v25)
    {
      v26 = v25;
      [(NSMutableDictionary *)self->_temporaryViewCache removeObjectForKey:v24];
    }

    else
    {
      v26 = [EKDayOccurrenceView occurrenceViewWithFrame:v19, v20, v21, v22];
    }

    [v26 setOccurrence:v23];
    [v26 setUsesSmallText:self->_usesSmallText];
    [v26 setAllDayDrawingStyle:1];
    [v26 setDelegate:self];
    [v26 setIsSelectedCopyView:0];
    v27 = [v23 startDate];
    [v27 timeIntervalSinceReferenceDate];
    [v26 setHasPrecedingDuration:v28 < v9];

    v29 = [v23 endDateUnadjustedForLegacyClients];
    [v29 timeIntervalSinceReferenceDate];
    [v26 setHasTrailingDuration:v30 > v18];

    [v26 setMultiAllDayRoundCorners:1];
    [v26 setShouldAnnotateAppEntities:v16];
    [v26 setOpaque:1];
    [(EKDayAllDayView *)self _configureOccurrenceViewMarginAndPadding:v26];
    if (!self->_showBirthdayCount)
    {
      [(EKDayAllDayView *)self addSubview:v26];
    }

    occurrenceViews = self->_occurrenceViews;
    if (!occurrenceViews)
    {
      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v33 = self->_occurrenceViews;
      self->_occurrenceViews = v32;

      occurrenceViews = self->_occurrenceViews;
    }

    [(NSMutableArray *)occurrenceViews addObject:v26];
    if ([v26 isBirthday])
    {
      ++self->_birthdayCount;
    }

    ++v17;
  }

  while (v4 != v17);
LABEL_16:
  [(EKDayAllDayView *)self _clearTemporaryViews];
  [(EKDayAllDayView *)self frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [(EKDayAllDayView *)self _height];
  [(EKDayAllDayView *)self setFrame:v35, v37, v39, v40];
  [(UIScrollView *)self->_scroller setShowsHorizontalScrollIndicator:0];
  if (self->_selectedEvent && ![(EKDayAllDayView *)self containsEvent:?])
  {
    selectedEvent = self->_selectedEvent;
    self->_selectedEvent = 0;
  }

  if (v4)
  {
    v42 = !self->_showsLabel;
  }

  else
  {
    v42 = 1;
  }

  [(UILabel *)self->_allDay setHidden:v42];
  [(EKDayAllDayView *)self setNeedsLayout];
}

- (void)_saveTemporaryViews
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_occurrenceViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 occurrence];
        v10 = [v9 calendarItemIdentifier];

        if (v10)
        {
          [(NSMutableDictionary *)self->_temporaryViewCache setObject:v8 forKeyedSubscript:v10];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_clearTemporaryViews
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_temporaryViewCache allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_temporaryViewCache removeAllObjects];
}

- (void)_setUpBirthdayCountViewIfNeeded
{
  birthdayCountOccurrenceView = self->_birthdayCountOccurrenceView;
  if (!birthdayCountOccurrenceView)
  {
    if ([(NSMutableArray *)self->_occurrenceViews count])
    {
      v4 = [(NSMutableArray *)self->_occurrenceViews firstObject];
      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
    }

    else
    {
      v6 = *MEMORY[0x1E695F058];
      v8 = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 16);
      v12 = *(MEMORY[0x1E695F058] + 24);
    }

    v13 = [[EKDayOccurrenceView alloc] initWithFrame:v6, v8, v10, v12];
    [(EKDayOccurrenceView *)v13 setUsesSmallText:self->_usesSmallText];
    [(EKDayOccurrenceView *)v13 setAllDayDrawingStyle:1];
    [(EKDayOccurrenceView *)v13 setDelegate:self];
    [(EKDayOccurrenceView *)v13 setIsSelectedCopyView:0];
    [(EKDayOccurrenceView *)v13 setOpaque:1];
    [(EKDayAllDayView *)self _configureOccurrenceViewMarginAndPadding:v13];
    [(EKDayOccurrenceView *)v13 setBirthday:1];
    v14 = self->_birthdayCountOccurrenceView;
    self->_birthdayCountOccurrenceView = v13;
    v15 = v13;

    [(EKDayAllDayView *)self addSubview:self->_birthdayCountOccurrenceView];
    birthdayCountOccurrenceView = self->_birthdayCountOccurrenceView;
  }

  birthdayCount = self->_birthdayCount;

  [(EKDayOccurrenceView *)birthdayCountOccurrenceView setBirthdayCount:birthdayCount];
}

- (void)setShowBirthdayCountInsteadOfEvents:(BOOL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_showBirthdayCount != a3)
  {
    v3 = a3;
    self->_showBirthdayCount = a3;
    if (a3)
    {
      v21 = 0uLL;
      v22 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v5 = self->_occurrenceViews;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v19 + 1) + 8 * i) setHidden:1];
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v7);
      }

      [(EKDayAllDayView *)self _setUpBirthdayCountViewIfNeeded];
    }

    else
    {
      v17 = 0uLL;
      v18 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v10 = self->_occurrenceViews;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * j) setHidden:{0, v15}];
          }

          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v12);
      }
    }

    [(EKDayOccurrenceView *)self->_birthdayCountOccurrenceView setHidden:!v3, v15];
    [(EKDayAllDayView *)self setNeedsLayout];
  }
}

- (void)setAllowsOccurrenceSelection:(BOOL)a3
{
  if (self->_allowSelection != a3)
  {
    v3 = a3;
    self->_allowSelection = a3;
    v5 = [(NSMutableArray *)self->_occurrenceViews count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSMutableArray *)self->_occurrenceViews objectAtIndex:i];
        [v8 setEnabled:v3];
      }
    }
  }
}

- (void)setShowsSelection:(BOOL)a3
{
  if (self->_showSelection != a3)
  {
    self->_showSelection = a3;
  }
}

- (void)dayOccurrenceViewSelected:(id)a3 source:(unint64_t)a4
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v10 occurrence];
    [v8 allDayView:self didSelectEvent:v9 userInitiated:{+[EKDayOccurrenceView isUserInitiated:](EKDayOccurrenceView, "isUserInitiated:", a4)}];
  }
}

- (id)presentationControllerForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained presentationControllerForEditMenu];

  return v3;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained selectedEventsForEditMenu];

  return v3;
}

- (void)attemptDisplayReviewPrompt
{
  v3 = [(EKDayAllDayView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(EKDayAllDayView *)self delegate];
    [v5 attemptDisplayReviewPrompt];
  }
}

- (void)setFixedHeight:(double)a3
{
  self->_fixedHeight = a3;
  [(EKDayAllDayView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(EKDayAllDayView *)self _height];

  [(EKDayAllDayView *)self setFrame:v5, v7, v9, v10];
}

- (void)setAllDayLabelHighlighted:(BOOL)a3
{
  if (self->_allDayLabelHighlighted != a3)
  {
    self->_allDayLabelHighlighted = a3;
  }
}

- (void)setShowsBorderLines:(BOOL)a3
{
  if (self->_showsBorderLines != a3)
  {
    v3 = a3;
    self->_showsBorderLines = a3;
    [(UIView *)self->_dividerLineViewTop setHidden:1];
    dividerLineViewBottom = self->_dividerLineViewBottom;
    if (v3)
    {
      if (!dividerLineViewBottom)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v7 = self->_dividerLineViewBottom;
        self->_dividerLineViewBottom = v6;

        if (self->_dividerLineVisualEffectColor)
        {
          v8 = self->_dividerLineViewBottom;

          [(UIView *)v8 setBackgroundColor:?];
        }

        else
        {
          v9 = [MEMORY[0x1E69DC888] separatorColor];
          [(UIView *)self->_dividerLineViewBottom setBackgroundColor:v9];
        }
      }
    }

    else
    {

      [(UIView *)dividerLineViewBottom setHidden:1];
    }
  }
}

- (void)setBorderColor:(id)a3
{
  dividerLineViewTop = self->_dividerLineViewTop;
  v5 = a3;
  [(UIView *)dividerLineViewTop setBackgroundColor:v5];
  [(UIView *)self->_dividerLineViewBottom setBackgroundColor:v5];
}

- (void)setShowsLabel:(BOOL)a3
{
  if (self->_showsLabel != a3)
  {
    self->_showsLabel = a3;
    [(UILabel *)self->_allDay setHidden:!a3];
  }
}

- (void)updateLabelFont
{
  allDay = self->_allDay;
  v4 = [objc_opt_class() allDayLabelFont];
  [(UILabel *)allDay setFont:v4];

  [(UILabel *)self->_allDay sizeToFit];

  [(EKDayAllDayView *)self setNeedsLayout];
}

- (void)setDividerLineVisualEffect:(id)a3
{
  v11 = a3;
  [(UIView *)self->_dividerLineViewTop removeFromSuperview];
  [(UIView *)self->_dividerLineViewBottom removeFromSuperview];
  [(EKDayAllDayView *)self setNeedsLayout];
  dividerLineSuperview = self->_dividerLineSuperview;
  if (v11)
  {
    if (!dividerLineSuperview)
    {
      v5 = [EKUIVisualEffectView alloc];
      [(EKDayAllDayView *)self bounds];
      v6 = [(EKUIVisualEffectView *)v5 initWithFrame:?];
      v7 = self->_dividerLineSuperview;
      self->_dividerLineSuperview = v6;

      v8 = [MEMORY[0x1E69DC888] clearColor];
      [(EKUIVisualEffectView *)self->_dividerLineSuperview setBackgroundColor:v8];

      [(EKUIVisualEffectView *)self->_dividerLineSuperview setUserInteractionEnabled:0];
      [(EKUIVisualEffectView *)self->_dividerLineSuperview setAutoresizingMask:18];
      [(EKUIVisualEffectView *)self->_dividerLineSuperview setTintColorDelegate:self];
      [(EKDayAllDayView *)self addSubview:self->_dividerLineSuperview];
      dividerLineSuperview = self->_dividerLineSuperview;
    }

    [(EKUIVisualEffectView *)dividerLineSuperview setEffect:v11];
    if (self->_dividerLineVisualEffectColor)
    {
      [(EKDayAllDayView *)self setBorderColor:?];
    }
  }

  else if (dividerLineSuperview)
  {
    [(EKUIVisualEffectView *)dividerLineSuperview removeFromSuperview];
    v9 = self->_dividerLineSuperview;
    self->_dividerLineSuperview = 0;

    dividerLineVisualEffectColor = self->_dividerLineVisualEffectColor;
    self->_dividerLineVisualEffectColor = 0;
  }
}

- (void)viewTintColorDidChangeForView:(id)a3 toColor:(id)a4
{
  objc_storeStrong(&self->_dividerLineVisualEffectColor, a4);
  v6 = a4;
  [(EKDayAllDayView *)self setBorderColor:v6];
}

- (EKDayAllDayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)selectEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKDayAllDayView.m" lineNumber:517 description:@"Attempt to select an event not contained by this all-day view"];
}

@end