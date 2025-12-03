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
- (BOOL)containsEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKDayAllDayView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class;
- (EKDayAllDayViewDelegate)delegate;
- (double)_allDayAreaHeightForEventCount:(int64_t)count;
- (double)_height;
- (double)_languageAwareAllDayEventHeight:(id)height;
- (double)naturalHeight;
- (double)nextAvailableOccurrenceViewYOrigin;
- (id)_findSelectedCopySubviewOfView:(id)view;
- (id)_selectedCopyView;
- (id)occurrenceViewForEvent:(id)event;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (int64_t)_sizeClass;
- (void)_clearTemporaryViews;
- (void)_configureOccurrenceViewMarginAndPadding:(id)padding;
- (void)_localeChanged:(id)changed;
- (void)_saveTemporaryViews;
- (void)_setUpBirthdayCountViewIfNeeded;
- (void)_smallTextSettingChanged;
- (void)addViewToScroller:(id)scroller;
- (void)attemptDisplayReviewPrompt;
- (void)configureOccurrenceViewForGestureController:(id)controller;
- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source;
- (void)layoutSubviews;
- (void)lockUseOfSmallTextToState:(BOOL)state;
- (void)reAdjustAllDayLabelLayout;
- (void)removeAllOccurrenceViews;
- (void)selectEvent:(id)event;
- (void)setAllDayLabelHighlighted:(BOOL)highlighted;
- (void)setAllowsOccurrenceSelection:(BOOL)selection;
- (void)setBorderColor:(id)color;
- (void)setDimmedOccurrence:(id)occurrence;
- (void)setDividerLineVisualEffect:(id)effect;
- (void)setFixedHeight:(double)height;
- (void)setOccurrenceInset:(double)inset labelInset:(double)labelInset;
- (void)setOccurrences:(id)occurrences;
- (void)setOrientation:(int64_t)orientation;
- (void)setShowBirthdayCountInsteadOfEvents:(BOOL)events;
- (void)setShowsBorderLines:(BOOL)lines;
- (void)setShowsLabel:(BOOL)label;
- (void)setShowsSelection:(BOOL)selection;
- (void)shouldAnnotateAppEntitiesChanged;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateLabelFont;
- (void)viewTintColorDidChangeForView:(id)view toColor:(id)color;
@end

@implementation EKDayAllDayView

+ (double)allDay1LineWidth
{
  v9[1] = *MEMORY[0x1E69E9840];
  result = *&s_allDay1LineWidth;
  if (*&s_allDay1LineWidth == 0.0)
  {
    v8 = *MEMORY[0x1E69DB648];
    allDayLabelFont = [self allDayLabelFont];
    v9[0] = allDayLabelFont;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    localizedAllDayString = [self localizedAllDayString];
    [localizedAllDayString sizeWithAttributes:v5];
    s_allDay1LineWidth = v7;

    return *&s_allDay1LineWidth;
  }

  return result;
}

+ (id)allDayLabelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  fontDescriptor = [v2 fontDescriptor];
  [fontDescriptor pointSize];
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
    localizedAllDayString = [self localizedAllDayString];
    v5 = [v3 numberWithInt:{objc_msgSend(localizedAllDayString, "rangeOfString:", @" "}];
    v6 = s_allDayContainSpaces;
    s_allDayContainSpaces = v5;

    v2 = s_allDayContainSpaces;
  }

  return [v2 BOOLValue];
}

+ (double)maxAllowableAllDayTextWidth
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  fontDescriptor = [v2 fontDescriptor];
  [fontDescriptor pointSize];
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
  allDayContainSpaces = [self allDayContainSpaces];
  if (allDayContainSpaces)
  {
    [self allDay1LineWidth];
    v5 = v4;
    [self maxAllowableAllDayTextWidth];
    LOBYTE(allDayContainSpaces) = v5 > v6;
  }

  return allDayContainSpaces;
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
  selfCopy = self;
  v9 = selfCopy;
  if (selfCopy->_showBirthdayCount && selfCopy->_birthdayCountOccurrenceView)
  {
    v10 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  else
  {
    v10 = selfCopy->_occurrenceViews;
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
        backgroundColor = [(EKDayAllDayView *)v9 backgroundColor];
        [(UIScrollView *)v32 setBackgroundColor:backgroundColor];
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
  _selectedCopyView = [(EKDayAllDayView *)v9 _selectedCopyView];
  v39 = _selectedCopyView;
  if (v13)
  {
    v121 = _selectedCopyView;
    v40 = 0;
    v120 = v37 + -3.5;
    do
    {
      v41 = [(NSMutableArray *)v11 objectAtIndex:v40];
      currentImageState = [v41 currentImageState];
      requiresLanguageAwarePadding = [currentImageState requiresLanguageAwarePadding];

      if (requiresLanguageAwarePadding)
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
      superview = [v54 superview];

      if (superview != v123)
      {
        [(UIScrollView *)v123 addSubview:v54];
      }

      v56 = v13 == 1;
      forceSingleColumnLayout = [(EKDayAllDayView *)v9 forceSingleColumnLayout];
      v58 = forceSingleColumnLayout;
      if (v50)
      {
        v56 = 0;
        v59 = forceSingleColumnLayout;
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
        forceSingleColumnLayout2 = [(EKDayAllDayView *)v9 forceSingleColumnLayout];
        if (v50)
        {
          v64 = forceSingleColumnLayout2;
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

      occurrence = [v54 occurrence];
      v87 = [occurrence isEqual:v9->_dimmedOccurrence];

      if (v87)
      {
        v88 = [(EKDayAllDayView *)v9 occurrenceViewForEvent:v9->_dimmedOccurrence];
        [v88 setDimmed:1];
      }

      occurrence2 = [v54 occurrence];
      occurrence3 = [v121 occurrence];
      v91 = [occurrence2 isEqual:occurrence3];

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
  if (!_selectedCopyView)
  {
    goto LABEL_85;
  }

LABEL_80:
  superview2 = [v39 superview];

  if (superview2 == v123)
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
    contentView = [(EKUIVisualEffectView *)dividerLineSuperview contentView];
  }

  else
  {
    contentView = v9;
  }

  v108 = contentView;
  superview3 = [(UIView *)v9->_dividerLineViewTop superview];

  if (!superview3)
  {
    [(EKDayAllDayView *)v108 addSubview:v9->_dividerLineViewTop];
    [(UIView *)v9->_dividerLineViewTop setAutoresizingMask:34];
    dividerLineViewTop = v9->_dividerLineViewTop;
    [(EKDayAllDayView *)v9 frame];
    [(UIView *)dividerLineViewTop setFrame:0.0, 0.0];
  }

  superview4 = [(UIView *)v9->_dividerLineViewBottom superview];

  if (!superview4)
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
  window = [(EKDayAllDayView *)self window];

  if (!window)
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
  fontDescriptor = [v2 fontDescriptor];
  [fontDescriptor pointSize];
  v5 = v4;

  CalRoundToScreenScale(v5 * 2.54545455);
  return fmin(v6, 56.0);
}

+ (double)allDayWidth
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (*&s_allDay1LineWidth == 0.0)
  {
    if ([self shouldAllDayTextUseTwoLines])
    {
      localizedAllDayString = [self localizedAllDayString];
      [self maxAllowableAllDayTextWidth];
      v5 = v4;
      v11 = *MEMORY[0x1E69DB648];
      allDayLabelFont = [self allDayLabelFont];
      v12[0] = allDayLabelFont;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [localizedAllDayString boundingRectWithSize:1 options:v7 attributes:0 context:{v5, 1.79769313e308}];
      s_allDayWidth = v8;
    }

    else
    {
      [self allDay1LineWidth];
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

- (EKDayAllDayView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class
{
  v20.receiver = self;
  v20.super_class = EKDayAllDayView;
  v5 = [(EKDayAllDayView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    if (CalCanvasPocketEnabled())
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      if (class == 1)
      {
        [MEMORY[0x1E69DC888] systemBackgroundColor];
      }

      else
      {
        CUIKAllDayBackgroundColor();
      }
      clearColor = ;
    }

    v7 = clearColor;
    [(EKDayAllDayView *)v5 setBackgroundColor:clearColor];

    v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 100.0, 50.0}];
    allDay = v5->_allDay;
    v5->_allDay = v8;

    v10 = v5->_allDay;
    allDayLabelFont = [objc_opt_class() allDayLabelFont];
    [(UILabel *)v10 setFont:allDayLabelFont];

    v12 = v5->_allDay;
    localizedAllDayString = [objc_opt_class() localizedAllDayString];
    [(UILabel *)v12 setText:localizedAllDayString];

    [(UILabel *)v5->_allDay setTextAlignment:2];
    v14 = v5->_allDay;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v14 setTextColor:secondaryLabelColor];

    [(EKDayAllDayView *)v5 reAdjustAllDayLabelLayout];
    [(EKDayAllDayView *)v5 addSubview:v5->_allDay];
    v5->_allowSelection = 1;
    v5->_maxVisibleRows = 2;
    v5->_showsLabel = 1;
    v5->_fixedHeight = -1.0;
    v5->_targetSizeClass = class;
    [(EKDayAllDayView *)v5 setClipsToBounds:1];
    v16 = objc_opt_new();
    temporaryViewCache = v5->_temporaryViewCache;
    v5->_temporaryViewCache = v16;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v5;
}

- (void)_localeChanged:(id)changed
{
  v3 = objc_opt_class();

  [v3 clearStaticCache];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  if ([endedCopy count] == 1)
  {
    anyObject = [endedCopy anyObject];
    if (anyObject)
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
    anyObject = 0;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(EKDayAllDayView *)self _height:fits.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (id)_findSelectedCopySubviewOfView:(id)view
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [view subviews];
  v4 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(subviews);
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

      v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)occurrenceViewForEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
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
        occurrence = [v9 occurrence];
        v11 = [occurrence isEqual:eventCopy];

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

- (void)addViewToScroller:(id)scroller
{
  scrollerCopy = scroller;
  if (self->_scroller)
  {
    v16 = scrollerCopy;
    superview = [scrollerCopy superview];
    scroller = self->_scroller;

    scrollerCopy = v16;
    if (superview != scroller)
    {
      superview2 = [v16 superview];
      [v16 frame];
      [superview2 convertRect:self->_scroller toView:?];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [(UIScrollView *)self->_scroller addSubview:v16];
      [v16 setFrame:{v9, v11, v13, v15}];
      scrollerCopy = v16;
    }
  }
}

- (BOOL)containsEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
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

        occurrence = [*(*(&v12 + 1) + 8 * i) occurrence];
        v10 = [occurrence isEqual:eventCopy];

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

- (void)selectEvent:(id)event
{
  eventCopy = event;
  if (self->_selectedEvent != eventCopy)
  {
    v7 = eventCopy;
    if (eventCopy && ![(EKDayAllDayView *)self containsEvent:eventCopy])
    {
      [(EKDayAllDayView *)a2 selectEvent:?];
    }

    objc_storeStrong(&self->_selectedEvent, event);
    eventCopy = v7;
  }
}

- (void)setDimmedOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  dimmedOccurrence = self->_dimmedOccurrence;
  v9 = occurrenceCopy;
  if (dimmedOccurrence != occurrenceCopy)
  {
    if (dimmedOccurrence)
    {
      v7 = [(EKDayAllDayView *)self occurrenceViewForEvent:?];
      [v7 setDimmed:0];
    }

    objc_storeStrong(&self->_dimmedOccurrence, occurrence);
    if (self->_dimmedOccurrence)
    {
      v8 = [(EKDayAllDayView *)self occurrenceViewForEvent:?];
      [v8 setDimmed:1];
    }
  }
}

- (void)setOccurrenceInset:(double)inset labelInset:(double)labelInset
{
  self->_occurrenceInset = inset;
  [(UILabel *)self->_allDay frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (CalInterfaceIsLeftToRight())
  {
    v12 = labelInset - v9 + -1.0;
    if (v12 < 0.0)
    {
      v9 = v9 + v12;
      v12 = 0.0;
    }
  }

  else
  {
    [(EKDayAllDayView *)self bounds];
    v12 = CGRectGetWidth(v17) - labelInset + 1.0;
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

- (void)lockUseOfSmallTextToState:(BOOL)state
{
  self->_usesSmallText = state;
  self->_smallTextSettingLocked = 1;
  [(EKDayAllDayView *)self _smallTextSettingChanged];
}

- (void)setOrientation:(int64_t)orientation
{
  self->_orientation = orientation;
  if (!self->_smallTextSettingLocked)
  {
    self->_usesSmallText = (orientation - 3) < 2;
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
      occurrence = [v6 occurrence];
      calendarItemIdentifier = [occurrence calendarItemIdentifier];

      if (!calendarItemIdentifier || ([(NSMutableDictionary *)self->_temporaryViewCache objectForKeyedSubscript:calendarItemIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
      {
        [v6 removeFromSuperview];
      }
    }
  }

  occurrenceViews = self->_occurrenceViews;
  self->_occurrenceViews = 0;
}

- (double)_languageAwareAllDayEventHeight:(id)height
{
  heightCopy = height;
  [EKDayOccurrenceView minimumHeightForSizeClass:[(EKDayAllDayView *)self _sizeClass] orientation:self->_orientation isAllDay:1];
  v6 = v5;
  currentImageState = [heightCopy currentImageState];
  requiresLanguageAwarePadding = [currentImageState requiresLanguageAwarePadding];

  if (requiresLanguageAwarePadding)
  {
    currentImageState2 = [heightCopy currentImageState];
    [currentImageState2 totalLanguageAwareHeightPadding];
    v6 = v6 + v10;
  }

  return v6;
}

- (double)_allDayAreaHeightForEventCount:(int64_t)count
{
  if (count < 1)
  {
    return 0.0;
  }

  [EKDayOccurrenceView minimumHeightForSizeClass:[(EKDayAllDayView *)self _sizeClass] orientation:self->_orientation isAllDay:1];
  v6 = v5;
  if ([(EKDayAllDayView *)self forceSingleColumnLayout])
  {
    countCopy = count;
  }

  else
  {
    countCopy = (count + 1) >> 1;
  }

  forceSingleColumnLayout = [(EKDayAllDayView *)self forceSingleColumnLayout];
  v9 = 0;
  if (count >= 4)
  {
    countCopy2 = 4;
  }

  else
  {
    countCopy2 = count;
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
      v15 = count == 3 && v9 == 2;
      if (count == 1 || v15)
      {
        goto LABEL_10;
      }
    }

LABEL_24:

    ++v9;
  }

  while (countCopy2 != v9);
  countCopy3 = 2;
  if ((count + 1) >> 1 < 2)
  {
    countCopy3 = (count + 1) >> 1;
  }

  if (forceSingleColumnLayout)
  {
    countCopy3 = count;
  }

  v21 = floor(v11) + 4.0 + (countCopy3 - 1) * 2.0;
  v22 = v21 + 4.0;
  v23 = floor(v6 * 0.5) + 2.0 + v21;
  if (countCopy >= 3)
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

- (void)configureOccurrenceViewForGestureController:(id)controller
{
  controllerCopy = controller;
  [(EKDayAllDayView *)self _configureOccurrenceViewMarginAndPadding:controllerCopy];
  occurrence = [controllerCopy occurrence];

  if (occurrence)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained allDayViewRequestsCurrentDisplayDate:self];

    calendarDateForDay = [v6 calendarDateForDay];
    [calendarDateForDay absoluteTime];
    v9 = v8;

    calendarDateForEndOfDay = [v6 calendarDateForEndOfDay];
    [calendarDateForEndOfDay absoluteTime];
    v12 = v11 + 1.0;

    occurrence2 = [controllerCopy occurrence];
    startDate = [occurrence2 startDate];
    [startDate timeIntervalSinceReferenceDate];
    [controllerCopy setHasPrecedingDuration:v15 < v9];

    occurrence3 = [controllerCopy occurrence];
    endDateUnadjustedForLegacyClients = [occurrence3 endDateUnadjustedForLegacyClients];
    [endDateUnadjustedForLegacyClients timeIntervalSinceReferenceDate];
    [controllerCopy setHasTrailingDuration:v18 > v12];
  }
}

- (void)_configureOccurrenceViewMarginAndPadding:(id)padding
{
  paddingCopy = padding;
  +[EKDayOccurrenceView defaultPadding];
  v5 = v4;
  v7 = v6;
  hasIcon = [paddingCopy hasIcon];
  window = [(EKDayAllDayView *)self window];

  if (window)
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
  if (hasIcon)
  {
    v13 = 1.5;
  }

  [paddingCopy setPadding:{v11, v13, v5, v7}];
}

- (void)setOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  [(EKDayAllDayView *)self _saveTemporaryViews];
  [(EKDayAllDayView *)self removeAllOccurrenceViews];
  v4 = [occurrencesCopy count];
  self->_birthdayCount = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained allDayViewRequestsCurrentDisplayDate:self];

  calendarDateForDay = [v6 calendarDateForDay];
  [calendarDateForDay absoluteTime];
  v9 = v8;

  calendarDateForEndOfDay = [v6 calendarDateForEndOfDay];
  [calendarDateForEndOfDay absoluteTime];
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
    v23 = [occurrencesCopy objectAtIndexedSubscript:{v17, v43}];
    calendarItemIdentifier = [v23 calendarItemIdentifier];
    v25 = [(NSMutableDictionary *)self->_temporaryViewCache objectForKeyedSubscript:calendarItemIdentifier];
    if (v25)
    {
      v26 = v25;
      [(NSMutableDictionary *)self->_temporaryViewCache removeObjectForKey:calendarItemIdentifier];
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
    startDate = [v23 startDate];
    [startDate timeIntervalSinceReferenceDate];
    [v26 setHasPrecedingDuration:v28 < v9];

    endDateUnadjustedForLegacyClients = [v23 endDateUnadjustedForLegacyClients];
    [endDateUnadjustedForLegacyClients timeIntervalSinceReferenceDate];
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
        occurrence = [v8 occurrence];
        calendarItemIdentifier = [occurrence calendarItemIdentifier];

        if (calendarItemIdentifier)
        {
          [(NSMutableDictionary *)self->_temporaryViewCache setObject:v8 forKeyedSubscript:calendarItemIdentifier];
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
  allValues = [(NSMutableDictionary *)self->_temporaryViewCache allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
      firstObject = [(NSMutableArray *)self->_occurrenceViews firstObject];
      [firstObject frame];
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

- (void)setShowBirthdayCountInsteadOfEvents:(BOOL)events
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_showBirthdayCount != events)
  {
    eventsCopy = events;
    self->_showBirthdayCount = events;
    if (events)
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

    [(EKDayOccurrenceView *)self->_birthdayCountOccurrenceView setHidden:!eventsCopy, v15];
    [(EKDayAllDayView *)self setNeedsLayout];
  }
}

- (void)setAllowsOccurrenceSelection:(BOOL)selection
{
  if (self->_allowSelection != selection)
  {
    selectionCopy = selection;
    self->_allowSelection = selection;
    v5 = [(NSMutableArray *)self->_occurrenceViews count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSMutableArray *)self->_occurrenceViews objectAtIndex:i];
        [v8 setEnabled:selectionCopy];
      }
    }
  }
}

- (void)setShowsSelection:(BOOL)selection
{
  if (self->_showSelection != selection)
  {
    self->_showSelection = selection;
  }
}

- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source
{
  selectedCopy = selected;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    occurrence = [selectedCopy occurrence];
    [v8 allDayView:self didSelectEvent:occurrence userInitiated:{+[EKDayOccurrenceView isUserInitiated:](EKDayOccurrenceView, "isUserInitiated:", source)}];
  }
}

- (id)presentationControllerForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  presentationControllerForEditMenu = [WeakRetained presentationControllerForEditMenu];

  return presentationControllerForEditMenu;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  selectedEventsForEditMenu = [WeakRetained selectedEventsForEditMenu];

  return selectedEventsForEditMenu;
}

- (void)attemptDisplayReviewPrompt
{
  delegate = [(EKDayAllDayView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKDayAllDayView *)self delegate];
    [delegate2 attemptDisplayReviewPrompt];
  }
}

- (void)setFixedHeight:(double)height
{
  self->_fixedHeight = height;
  [(EKDayAllDayView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(EKDayAllDayView *)self _height];

  [(EKDayAllDayView *)self setFrame:v5, v7, v9, v10];
}

- (void)setAllDayLabelHighlighted:(BOOL)highlighted
{
  if (self->_allDayLabelHighlighted != highlighted)
  {
    self->_allDayLabelHighlighted = highlighted;
  }
}

- (void)setShowsBorderLines:(BOOL)lines
{
  if (self->_showsBorderLines != lines)
  {
    linesCopy = lines;
    self->_showsBorderLines = lines;
    [(UIView *)self->_dividerLineViewTop setHidden:1];
    dividerLineViewBottom = self->_dividerLineViewBottom;
    if (linesCopy)
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
          separatorColor = [MEMORY[0x1E69DC888] separatorColor];
          [(UIView *)self->_dividerLineViewBottom setBackgroundColor:separatorColor];
        }
      }
    }

    else
    {

      [(UIView *)dividerLineViewBottom setHidden:1];
    }
  }
}

- (void)setBorderColor:(id)color
{
  dividerLineViewTop = self->_dividerLineViewTop;
  colorCopy = color;
  [(UIView *)dividerLineViewTop setBackgroundColor:colorCopy];
  [(UIView *)self->_dividerLineViewBottom setBackgroundColor:colorCopy];
}

- (void)setShowsLabel:(BOOL)label
{
  if (self->_showsLabel != label)
  {
    self->_showsLabel = label;
    [(UILabel *)self->_allDay setHidden:!label];
  }
}

- (void)updateLabelFont
{
  allDay = self->_allDay;
  allDayLabelFont = [objc_opt_class() allDayLabelFont];
  [(UILabel *)allDay setFont:allDayLabelFont];

  [(UILabel *)self->_allDay sizeToFit];

  [(EKDayAllDayView *)self setNeedsLayout];
}

- (void)setDividerLineVisualEffect:(id)effect
{
  effectCopy = effect;
  [(UIView *)self->_dividerLineViewTop removeFromSuperview];
  [(UIView *)self->_dividerLineViewBottom removeFromSuperview];
  [(EKDayAllDayView *)self setNeedsLayout];
  dividerLineSuperview = self->_dividerLineSuperview;
  if (effectCopy)
  {
    if (!dividerLineSuperview)
    {
      v5 = [EKUIVisualEffectView alloc];
      [(EKDayAllDayView *)self bounds];
      v6 = [(EKUIVisualEffectView *)v5 initWithFrame:?];
      v7 = self->_dividerLineSuperview;
      self->_dividerLineSuperview = v6;

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(EKUIVisualEffectView *)self->_dividerLineSuperview setBackgroundColor:clearColor];

      [(EKUIVisualEffectView *)self->_dividerLineSuperview setUserInteractionEnabled:0];
      [(EKUIVisualEffectView *)self->_dividerLineSuperview setAutoresizingMask:18];
      [(EKUIVisualEffectView *)self->_dividerLineSuperview setTintColorDelegate:self];
      [(EKDayAllDayView *)self addSubview:self->_dividerLineSuperview];
      dividerLineSuperview = self->_dividerLineSuperview;
    }

    [(EKUIVisualEffectView *)dividerLineSuperview setEffect:effectCopy];
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

- (void)viewTintColorDidChangeForView:(id)view toColor:(id)color
{
  objc_storeStrong(&self->_dividerLineVisualEffectColor, color);
  colorCopy = color;
  [(EKDayAllDayView *)self setBorderColor:colorCopy];
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