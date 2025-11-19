@interface EKDayOccurrenceView
+ (CGRect)contentStretchRectForFrame:(CGRect)a3;
+ (EKDayOccurrenceView)occurrenceViewWithFrame:(CGRect)a3;
+ (UIEdgeInsets)defaultMargin;
+ (UIEdgeInsets)defaultPadding;
+ (double)barToBarHorizontalDistanceIncludingBarWidth;
+ (double)enoughHeightForOneLineForEvents:(id)a3 usingSmallText:(BOOL)a4 sizeClass:(int64_t)a5;
+ (double)heightForAllDayOccurrenceForSizeClass:(int64_t)a3 usesSmallText:(BOOL)a4;
+ (double)minNaturalTextHeightForEvent:(id)a3 usingSmallText:(BOOL)a4 sizeClass:(int64_t)a5;
+ (double)minimumHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4;
+ (double)minimumHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4 isAllDay:(BOOL)a5;
+ (double)minimumHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4 isAllDay:(BOOL)a5 usesSmallText:(BOOL)a6;
+ (id)_viewCache;
+ (id)viewForExternalDragOperationFromEvent:(id)a3 visiblePath:(id *)a4;
+ (void)_clearViewCache;
- (BOOL)_contentViewHasContent;
- (BOOL)_isAboveAllDayOccurrenceView:(id)a3;
- (BOOL)_isAboveOccurrenceView:(id)a3 overlapToIgnore:(double)a4;
- (BOOL)_isBelowAllDayOccurrenceView:(id)a3;
- (BOOL)_isBelowOccurrenceView:(id)a3 overlapToIgnore:(double)a4;
- (BOOL)_shouldActuallyAnnotateAppEntities;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)pointInsideReminderCheckbox:(CGPoint)a3;
- (BOOL)resetContentViewToOriginalState:(BOOL)a3;
- (CGRect)_frameForText;
- (CGRect)_frameMutatedForProximityToHourLine:(CGRect)a3;
- (CGRect)frameOfOpaqueContent;
- (CGSize)_contentViewContentSize;
- (EKCalendarDate)occurrenceDate;
- (EKDayOccurrenceView)initWithFrame:(CGRect)a3;
- (EKDayOccurrenceView)selectedCopy;
- (EKDayOccurrenceViewDelegate)delegate;
- (NSString)description;
- (UIEdgeInsets)margin;
- (UIEdgeInsets)padding;
- (double)_verticalContentInset;
- (double)enoughHeightForOneLine;
- (double)viewMaxNaturalTextHeight;
- (id)_newResizeHandleView;
- (id)arrayOfResizeHandles;
- (id)copyWithZone:(_NSZone *)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int)dragTypeFromPoint:(CGPoint)a3;
- (int64_t)_compareOccurrenceViewForSelectedCopyOrdering:(id)a3;
- (int64_t)_compareOccurrenceViewLeftToRight:(id)a3;
- (int64_t)_compareOccurrenceViewTopToBottom:(id)a3;
- (int64_t)_compareOccurrenceViewTopToBottomLeftToRight:(id)a3;
- (int64_t)compareOccurrenceViewForTabOrdering:(id)a3;
- (int64_t)horizontalSizeClass;
- (int64_t)userInterfaceStyle;
- (void)_addEditMenuInteractionIfNeeded;
- (void)_addTravelTimeSubviews;
- (void)_invalidateAllImages;
- (void)_invalidateContentBounds;
- (void)_invalidateCurrentRequest;
- (void)_invalidateTravelTimeImage;
- (void)_removeEditMenuInteractionIfNeeded;
- (void)_removeTravelTimeSubviews;
- (void)_resetContentViewPosition;
- (void)_setEditingMenuEnabled:(BOOL)a3;
- (void)_setUpInteractions;
- (void)_updateAppEntityAnnotationIfNeeded;
- (void)_updateAppEntityAnnotationState;
- (void)_updateColors;
- (void)_updateContentImageViewIfNeeded;
- (void)_updateContentWithPayload:(id)a3;
- (void)_updateCornerRadius;
- (void)_updateResizeHandleLocations;
- (void)animateToFrame:(CGRect)a3 isAllDay:(BOOL)a4 beginFromCurrentState:(BOOL)a5 whenFinished:(id)a6;
- (void)bringResizeHandlesToFront;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)dismissEditingMenu;
- (void)displayLayer:(id)a3;
- (void)fadeInContentViewAt:(double)a3 minWidth:(double)a4 animated:(BOOL)a5;
- (void)forceUpdateColors;
- (void)forceUpdateContentWithPayload:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)presentEditingMenuFromGestureController:(id)a3;
- (void)removeFromSuperview;
- (void)requestContent:(unint64_t)a3 completion:(id)a4;
- (void)requestContentIfNeeded:(unint64_t)a3 completion:(id)a4;
- (void)setAllDay:(BOOL)a3;
- (void)setAllDayDrawingStyle:(BOOL)a3 animated:(BOOL)a4;
- (void)setBottomPinningProximity:(double)a3;
- (void)setDeclined:(BOOL)a3;
- (void)setDimmed:(BOOL)a3;
- (void)setDrawsResizeHandles:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHideText:(BOOL)a3 animate:(BOOL)a4;
- (void)setIsProposedTime:(BOOL)a3;
- (void)setIsReminder:(BOOL)a3;
- (void)setMargin:(UIEdgeInsets)a3;
- (void)setNeedsReply:(BOOL)a3;
- (void)setOccurrence:(id)a3;
- (void)setOccurrences:(id)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setPointerInteractionDisabled:(BOOL)a3;
- (void)setReduceLayoutProcessingForAnimation:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShouldAnnotateAppEntities:(BOOL)a3;
- (void)setShowsTravelTime:(BOOL)a3;
- (void)setTentative:(BOOL)a3;
- (void)setTopPinningProximity:(double)a3;
- (void)setTravelTime:(double)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setVisibleHeight:(double)a3;
- (void)setupWithOccurrence:(id)a3;
- (void)synchronouslyRenderContentOnNextDisplay;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateAlpha;
@end

@implementation EKDayOccurrenceView

+ (UIEdgeInsets)defaultMargin
{
  [MEMORY[0x1E6993420] standardBackgroundMargins:0];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (UIEdgeInsets)defaultPadding
{
  v2 = 3.5;
  v3 = 5.0;
  v4 = 0.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_updateAppEntityAnnotationIfNeeded
{
  if (CalendarLinkLibraryCore())
  {
    if (self->_occurrence && [(EKDayOccurrenceView *)self _shouldActuallyAnnotateAppEntities])
    {
      [(EKDayOccurrenceView *)self Cal_annotateWithEvent:self->_occurrence];
      *(self + 480) |= 0x10u;

      [(EKDayOccurrenceView *)self _updateAppEntityAnnotationState];
    }

    else if ((*(self + 480) & 0x10) != 0)
    {
      [(EKDayOccurrenceView *)self Cal_annotateWithEvent:0];
      *(self + 480) &= ~0x10u;
    }
  }
}

- (void)_updateAppEntityAnnotationState
{
  if (CalendarLinkLibraryCore() && (*(self + 480) & 0x10) != 0)
  {
    v3 = [(EKDayOccurrenceView *)self isSelected];

    [(EKDayOccurrenceView *)self Cal_updateEntityAnnotationStateIsSelected:v3 isHighlighted:0 isFocused:0 isDisabled:0 isEditing:0 isPrimary:0];
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v20 layoutSubviews];
  v3 = [objc_alloc(MEMORY[0x1E6993428]) initWithState:self];
  [(EKDayOccurrenceView *)self setCurrentImageState:v3];
  if (self->_needsBackgroundImageUpdate)
  {
    [(EKDayOccurrenceView *)self _updateColors];
    if ([(EKDayOccurrenceView *)self _isTimedOccurrenceDrawingStyle])
    {
      v18 = 0u;
      v19 = 0u;
      if (self->_showsTravelTime)
      {
        v16 = 0uLL;
        v17 = 0uLL;
        v4 = MEMORY[0x1E6993420];
        [(EKDayOccurrenceView *)self margin];
        [v4 calculateBackgroundImageFrame:&v18 travelTimeFrame:&v16 forState:v3 withMargins:?];
        [(UIImageView *)self->_travelBackgroundView setFrame:v16, v17];
      }

      else
      {
        v5 = MEMORY[0x1E6993420];
        [(EKDayOccurrenceView *)self margin];
        [v5 calculateBackgroundImageFrame:&v18 travelTimeFrame:0 forState:v3 withMargins:?];
      }

      p_eventBackgroundView = &self->_eventBackgroundView;
      [(UIImageView *)self->_eventBackgroundView setFrame:v18, v19];
      if (self->_bottomPinningState == 2)
      {
        [(UIImageView *)*p_eventBackgroundView frame];
        self->_unpinnedEventBackgroundFrame.origin.x = v7;
        self->_unpinnedEventBackgroundFrame.origin.y = v8;
        self->_unpinnedEventBackgroundFrame.size.width = v9;
        self->_unpinnedEventBackgroundFrame.size.height = v10;
        [(UIImageView *)self->_travelBackgroundView frame];
        self->_unpinnedTravelBackgroundFrame.origin.x = v11;
        self->_unpinnedTravelBackgroundFrame.origin.y = v12;
        self->_unpinnedTravelBackgroundFrame.size.width = v13;
        self->_unpinnedTravelBackgroundFrame.size.height = v14;
        [(UIImageView *)self->_travelBackgroundView frame];
        if (v15 <= 2.0)
        {
          [(UIImageView *)*p_eventBackgroundView frame];
        }

        else
        {
          [(UIImageView *)self->_travelBackgroundView frame];
          p_eventBackgroundView = &self->_travelBackgroundView;
        }

        [(UIImageView *)*p_eventBackgroundView setFrame:?];
      }
    }

    self->_needsBackgroundImageUpdate = 0;
    if (self->_needsContentCalc)
    {
      goto LABEL_14;
    }
  }

  else if (self->_needsContentCalc)
  {
    [(EKDayOccurrenceView *)self _updateColors];
LABEL_14:
    [(EKDayOccurrenceView *)self _updateContentImageViewIfNeeded];
  }
}

- (int64_t)userInterfaceStyle
{
  v2 = [(EKDayOccurrenceView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

+ (id)_viewCache
{
  v2 = _viewCache___NormalOccurrenceViewCache;
  if (!_viewCache___NormalOccurrenceViewCache)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = _viewCache___NormalOccurrenceViewCache;
    _viewCache___NormalOccurrenceViewCache = v3;

    v2 = _viewCache___NormalOccurrenceViewCache;
  }

  return v2;
}

- (int64_t)horizontalSizeClass
{
  v2 = [(EKDayOccurrenceView *)self traitCollection];
  v3 = [v2 horizontalSizeClass];

  return v3;
}

- (EKDayOccurrenceView)selectedCopy
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedCopy);

  return WeakRetained;
}

- (void)_updateColors
{
  v3 = [(EKDayOccurrenceView *)self traitCollection];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v3];

  v44 = [(EKDayOccurrenceView *)self currentImageState];
  if (![(EKDayOccurrenceView *)self _isTimedOccurrenceDrawingStyle])
  {
    if (_updateColors_onceToken != -1)
    {
      [EKDayOccurrenceView _updateColors];
    }

    v11 = self->_selected && !self->_dimmed;
    v12 = [v44 userInterfaceStyle];
    v13 = @"dark";
    if (v12 == 1)
    {
      v13 = @"light";
    }

    v14 = v13;
    v7 = v14;
    if (v11)
    {
      v15 = [(__CFString *)v14 stringByAppendingString:@"Selected"];

      v7 = v15;
    }

    if (self->_tentative)
    {
      v16 = [v7 stringByAppendingString:@"Tentative"];

      v7 = v16;
    }

    if (self->_needsReply)
    {
      v17 = [v7 stringByAppendingString:@"NeedsReply"];

      v7 = v17;
    }

    if (self->_declined)
    {
      v18 = [v7 stringByAppendingString:@"Declined"];

      v7 = v18;
    }

    if ([(EKDayOccurrenceView *)self isCancelled])
    {
      v19 = [v7 stringByAppendingString:@"Canceled"];

      v7 = v19;
    }

    v9 = [v44 displayColor];

    if (v9)
    {
      v20 = _updateColors___backgroundColorCache;
      v21 = [v44 displayColor];
      v9 = [v20 objectForKeyedSubscript:v21];

      if (!v9)
      {
        v9 = objc_opt_new();
        v22 = _updateColors___backgroundColorCache;
        v23 = [v44 displayColor];
        [v22 setObject:v9 forKeyedSubscript:v23];
      }
    }

    v24 = [v9 objectForKeyedSubscript:v7];
    if (v24)
    {
      goto LABEL_53;
    }

    v25 = [v44 baseColor];
    if (self->_isReminder)
    {
      v26 = [MEMORY[0x1E6993440] reminderBackgroundColor:v11 style:v12 miniPreview:self->_isMiniPreviewInEventDetail completed:self->_isCompleted darkenForAllDayArea:1];
LABEL_50:
      v34 = v26;
LABEL_51:
      v34 = v34;
      v24 = v34;
LABEL_52:
      [v9 setObject:v24 forKeyedSubscript:v7];

LABEL_53:
      if (([(UIColor *)self->_stagedBackgroundColor isEqual:v24]& 1) == 0)
      {
        objc_storeStrong(&self->_stagedBackgroundColor, v24);
        [(EKDayOccurrenceView *)self _invalidateAllImages];
      }

      goto LABEL_55;
    }

    if (v11)
    {
      if (self->_needsReply && ![(EKDayOccurrenceView *)self isCancelled])
      {
        v34 = CUIKSelectedNeedsReplyBackgroundColor();
        v35 = MEMORY[0x1E6993350];
        v36 = CUIKSelectedNeedsReplyStripeColor();
      }

      else
      {
        if ([(EKDayOccurrenceView *)self isCancelled]|| self->_declined)
        {
          v26 = CUIKSelectedDeclinedBackgroundColor();
          goto LABEL_50;
        }

        if (!self->_tentative)
        {
          v26 = [v25 colorWithAlphaComponent:*MEMORY[0x1E6993350]];
          goto LABEL_50;
        }

        v34 = [v25 colorWithAlphaComponent:1.0];
        v35 = MEMORY[0x1E6993350];
        v36 = CUIKSelectedTentativeStripeColor();
      }
    }

    else
    {
      if (!self->_needsReply || [(EKDayOccurrenceView *)self isCancelled])
      {
        if ([(EKDayOccurrenceView *)self isCancelled]|| self->_declined)
        {
          v26 = CUIKDeclinedEventBackgroundColor();
          goto LABEL_50;
        }

        if (!self->_tentative)
        {
          v26 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
          goto LABEL_50;
        }

        v37 = CUIKLightStripeColorForColor();
        if (v12 != 1)
        {
          v41 = CUIKColorDarkenedToPercentageWithFinalAlpha();

          v37 = v41;
        }

        v34 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
        v35 = MEMORY[0x1E6993338];
        if (!v37)
        {
          goto LABEL_51;
        }

LABEL_64:
        v38 = *v35;
        EKUIScaleFactor();
        v39 = CUIKCreateStripedUIImage();
        v40 = [MEMORY[0x1E69DC888] colorWithPatternImage:v39];
        v24 = [v40 colorWithAlphaComponent:v38];

        goto LABEL_52;
      }

      v34 = CUIKNeedsReplyBackgroundColor();
      v35 = MEMORY[0x1E6993338];
      v36 = CUIKNeedsReplyStripeColor();
    }

    v37 = v36;
    if (!v36)
    {
      goto LABEL_51;
    }

    goto LABEL_64;
  }

  [(EKDayOccurrenceView *)self setBackgroundColor:0];
  if (!self->_showsTravelTime)
  {
    goto LABEL_56;
  }

  v4 = [(EKDayOccurrenceView *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = [v44 displayColor];
  v7 = CUIKColorBarColor();

  v8 = [v44 displayColor];
  v43 = v5;
  LOBYTE(v42) = self->_birthday;
  v9 = CUIKOccurrenceSecondaryTextColor();

  if (self->_selected)
  {
    v10 = v9;
  }

  else
  {
    v10 = [v7 cuik_colorWithAlphaScaled:{0.5, v42, v43}];
  }

  v24 = v10;
  v27 = [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView colorBarColor];
  v28 = [v27 isEqual:v7];

  if ((v28 & 1) == 0)
  {
    [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setColorBarColor:v7];
  }

  v29 = [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView lineColor];
  v30 = [v29 isEqual:v24];

  if (v30)
  {
    v31 = v28 ^ 1;
  }

  else
  {
    [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setLineColor:v24];
    v31 = 1;
  }

  v32 = [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView elementColor];
  v33 = [v32 isEqual:v9];

  if (v33)
  {
    if (!v31)
    {
      goto LABEL_55;
    }
  }

  else
  {
    [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setElementColor:v9];
  }

  [(EKDayOccurrenceView *)self _invalidateTravelTimeImage];
LABEL_55:

LABEL_56:
}

- (void)_updateResizeHandleLocations
{
  [(UIView *)self->_startResizeHandle frame];
  v4 = v3;
  v5 = (v3 + -12.0) * 0.5;
  [(EKDayOccurrenceView *)self frame];
  v7 = v6;
  v9 = v8;
  [(EKDayOccurrenceView *)self frame];
  v11 = v10;
  v13 = v12;
  [(EKDayOccurrenceView *)self bounds];
  height = v28.size.height;
  v14 = v5 + CGRectGetWidth(v28) - v4 + -10.0;
  if (self->_startResizeHandle)
  {
    v25 = v11;
    if (CalInterfaceIsLeftToRight())
    {
      v15 = v14;
    }

    else
    {
      v15 = 10.0 - v5;
    }

    [(EKDayOccurrenceView *)self travelTimeSubviewHeightInPoints];
    v17 = v9 + -6.0 - v5 + v16;
    [(UIView *)self->_startResizeHandle frame];
    v18 = CalRoundPointToScreenScale(v7 + v15, v17);
    v11 = v25;
    [(UIView *)self->_startResizeHandle setFrame:v18];
  }

  if (self->_endResizeHandle)
  {
    if (CalInterfaceIsLeftToRight())
    {
      v19 = 10.0 - v5;
    }

    else
    {
      v19 = v14;
    }

    v20 = v5 + height - v4 + 6.0;
    v21 = v11 + v19;
    v22 = v13 + v20;
    [(UIView *)self->_endResizeHandle frame];
    v23 = CalRoundPointToScreenScale(v21, v22);
    endResizeHandle = self->_endResizeHandle;

    [(UIView *)endResizeHandle setFrame:v23];
  }
}

- (UIEdgeInsets)margin
{
  top = self->_margin.top;
  left = self->_margin.left;
  bottom = self->_margin.bottom;
  right = self->_margin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setUpInteractions
{
  v3 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
  [(EKDayOccurrenceView *)self addInteraction:v3];
  pointerInteraction = self->_pointerInteraction;
  self->_pointerInteraction = v3;
  v5 = v3;

  v6 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:self];
  editMenuInteraction = self->_editMenuInteraction;
  self->_editMenuInteraction = v6;

  [(EKDayOccurrenceView *)self _addEditMenuInteractionIfNeeded];
}

- (void)_addEditMenuInteractionIfNeeded
{
  v3 = [(EKDayOccurrenceView *)self interactions];
  v4 = [v3 containsObject:self->_editMenuInteraction];

  if ((v4 & 1) == 0)
  {
    editMenuInteraction = self->_editMenuInteraction;

    [(EKDayOccurrenceView *)self addInteraction:editMenuInteraction];
  }
}

- (void)prepareForReuse
{
  occurrence = self->_occurrence;
  self->_occurrence = 0;

  [(EKDayOccurrenceView *)self setFrame:*MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24)];
  [(EKDayOccurrenceView *)self setAlpha:1.0];
  [(EKDayOccurrenceView *)self setSelected:0];
  [(EKDayOccurrenceView *)self setDimmed:0];
  [(EKDayOccurrenceView *)self setTentative:0];
  [(EKDayOccurrenceView *)self setDeclined:0];
  [(EKDayOccurrenceView *)self setNeedsReply:0];
  [(EKDayOccurrenceView *)self setCancelled:0];
  [(EKDayOccurrenceView *)self setUsesSmallText:0];
  [(EKDayOccurrenceView *)self setOccurrenceIsFirstVisibleDayOfEvent:0];
  [(EKDayOccurrenceView *)self setDrawsResizeHandles:0];
  [(EKDayOccurrenceView *)self setAllDay:0];
  [(EKDayOccurrenceView *)self setAllDayDrawingStyle:0];
  if ([(EKDayOccurrenceView *)self isHidden])
  {
    [(EKDayOccurrenceView *)self setHidden:0];
  }

  [(EKDayOccurrenceView *)self setContentMode:0];
  v4 = [(EKDayOccurrenceView *)self layer];
  [v4 setShadowOpacity:0.0];

  [(EKDayOccurrenceView *)self setCappedColorBarHeight:-1.0];
  [objc_opt_class() defaultMargin];
  [(EKDayOccurrenceView *)self setMargin:?];
  [objc_opt_class() defaultPadding];
  [(EKDayOccurrenceView *)self setPadding:?];
  [(EKDayOccurrenceView *)self setTravelTime:0.0];
  [(EKDayOccurrenceView *)self setRoutingMode:0];
  [(EKDayOccurrenceView *)self setIsSelectedCopyView:0];
  [(EKDayOccurrenceView *)self setIsProposedTime:0];
  [(EKDayOccurrenceView *)self setBirthdayCount:0];
  [(EKDayOccurrenceView *)self setSelectedCopy:0];
  [(EKDayOccurrenceView *)self setUserInteractionEnabled:1];
  [(EKDayOccurrenceView *)self setHideText:0];
  [(EKDayOccurrenceView *)self setPointerInteractionDisabled:0];
  [(EKDayOccurrenceView *)self setHasPrecedingDuration:0];
  [(EKDayOccurrenceView *)self setHasTrailingDuration:0];
  self->_visibleHeight = 1.79769313e308;
  self->_needsBackgroundImageUpdate = 1;
  self->_needsContentCalc = 1;
  [(UIImageView *)self->_contentView setAlpha:1.0];
  stagedBackgroundColor = self->_stagedBackgroundColor;
  self->_stagedBackgroundColor = 0;

  v6 = [(UIImageView *)self->_eventBackgroundView layer];
  [v6 setMasksToBounds:1];

  v7 = [(EKDayOccurrenceView *)self layer];
  [v7 setMasksToBounds:0];

  v8 = [objc_alloc(MEMORY[0x1E6993428]) initWithState:self];
  [(EKDayOccurrenceView *)self setCurrentImageState:v8];

  [(UIImageView *)self->_contentView setImage:0];
  [(UIImageView *)self->_eventBackgroundView setImage:0];
  backgroundChangedCallback = self->_backgroundChangedCallback;
  self->_backgroundChangedCallback = 0;

  [(EKDayOccurrenceView *)self setBackgroundColor:0];
  [(EKDayOccurrenceView *)self _invalidateCurrentRequest];
  if (self->_editMenuInteraction)
  {

    [(EKDayOccurrenceView *)self _addEditMenuInteractionIfNeeded];
  }
}

- (void)_updateContentImageViewIfNeeded
{
  if (!self->_needsContentCalc)
  {
    return;
  }

  if (self->_allDayDrawingStyle)
  {
    [(UIImageView *)self->_contentView frame];
    v4 = v3;
    v6 = v5;
    [(EKDayOccurrenceView *)self _contentViewContentSize];
    v8 = v7;
    v10 = v9;
    [(EKDayOccurrenceView *)self bounds];
    Height = CGRectGetHeight(v18);
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    v12 = (Height - CGRectGetHeight(v19)) * 0.5;
    [(EKDayOccurrenceView *)self _frameForText];
    MinX = CGRectGetMinX(v20);
LABEL_10:
    [(UIImageView *)self->_contentView setFrame:MinX, v12, v8, v10];
    if (self->_showsTravelTime)
    {
      [(UIImageView *)self->_travelBackgroundView frame];
      [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setFrame:?];
      [(EKDayOccurrenceView *)self bringSubviewToFront:self->_travelTimeContentView];
      [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setNeedsLayout];
    }

    self->_needsContentCalc = 0;

    [(EKDayOccurrenceView *)self _updateCornerRadius];
    return;
  }

  if (!self->_needsBackgroundImageUpdate)
  {
    [(EKDayOccurrenceView *)self _frameForText];
    v12 = v14;
    v8 = v15;
    v10 = v16;
    goto LABEL_10;
  }

  [(EKDayOccurrenceView *)self setNeedsLayout];
}

- (CGRect)_frameForText
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [(EKDayOccurrenceView *)self currentImageState];
  [v3 estimatedTextFrame];
  x = v4;
  y = v6;
  v9 = v8;
  v11 = v10;

  if (self->_bottomPinningState)
  {
    height = self->_unpinnedEventBackgroundFrame.size.height;
  }

  else
  {
    [(UIImageView *)self->_eventBackgroundView frame];
    height = v13;
  }

  if ([(EKDayOccurrenceView *)self _contentViewHasContent])
  {
    [(EKDayOccurrenceView *)self _contentViewContentSize];
    if (v14 >= 3.0 && height >= 3.0)
    {
      if (self->_reduceLayoutProcessingForAnimation)
      {
        x = self->_contentLocationDuringReducedProcessing.x;
        y = self->_contentLocationDuringReducedProcessing.y;
        v11 = height - y;
      }

      else
      {
        [(EKDayOccurrenceView *)self _contentViewContentSize];
        v16 = v15;
        v17 = [(EKDayOccurrenceView *)self occurrences];
        v18 = [v17 count];

        v19 = 3;
        if (v18 < 3)
        {
          v19 = v18;
        }

        if (!v18)
        {
          v20 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
          {
            v41 = 138412290;
            v42 = self;
            _os_log_impl(&dword_1D3400000, v20, OS_LOG_TYPE_ERROR, "Stack height is 0, implying that occurrence view is visible without associated occurrence. View = %@\n", &v41, 0xCu);
          }

          v21 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            v23 = [(EKDayOccurrenceView *)self occurrence];
            v41 = 138412290;
            v42 = v23;
            _os_log_impl(&dword_1D3400000, v22, OS_LOG_TYPE_ERROR, "    View->occurrence = %@\n", &v41, 0xCu);
          }

          v24 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
          {
            v25 = v24;
            v26 = [(EKDayOccurrenceView *)self occurrences];
            v41 = 138412290;
            v42 = v26;
            _os_log_impl(&dword_1D3400000, v25, OS_LOG_TYPE_ERROR, "    View->occurrenceArray = %@\n", &v41, 0xCu);
          }

          v27 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
          {
            v28 = v27;
            v29 = [(EKDayOccurrenceView *)self occurrence];
            v30 = [v29 recurrenceIdentifier];
            v31 = [v30 identifierString];
            v41 = 138543362;
            v42 = v31;
            _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_ERROR, "    recurrence ID: %{public}@", &v41, 0xCu);
          }

          v19 = 1;
        }

        v32 = CalFloorToScreenScale((height - ((v19 - 1) + (v19 - 1))) * 0.5 - v16 * 0.5);
        [(UIImageView *)self->_eventBackgroundView frame];
        if (y >= v32 + v33)
        {
          y = v32 + v33;
        }

        if (y <= -5.0)
        {
          v34 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            v35 = v34;
            v36 = [(EKDayOccurrenceView *)self occurrence];
            v41 = 134218498;
            v42 = *&y;
            v43 = 2048;
            v44 = height;
            v45 = 2112;
            v46 = v36;
            _os_log_impl(&dword_1D3400000, v35, OS_LOG_TYPE_DEBUG, "Origin value is negative: %f, Background height: %f, Occurence: %@", &v41, 0x20u);
          }
        }

        if (v11 < v16)
        {
          v11 = v16;
        }
      }
    }
  }

  v37 = x;
  v38 = y;
  v39 = v9;
  v40 = v11;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (BOOL)_contentViewHasContent
{
  v2 = [(UIImageView *)self->_contentView image];
  v3 = v2 != 0;

  return v3;
}

- (CGSize)_contentViewContentSize
{
  v2 = [(UIImageView *)self->_contentView image];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_updateCornerRadius
{
  v3 = [(EKDayOccurrenceView *)self isAllDay];
  v4 = [(EKDayOccurrenceView *)self hasPrecedingDuration];
  v5 = v4;
  if (v3)
  {
    v6 = !v4 || [(EKDayOccurrenceView *)self multiAllDayRoundCorners];
    if ([(EKDayOccurrenceView *)self hasTrailingDuration])
    {
      v16 = [(EKDayOccurrenceView *)self multiAllDayRoundCorners];
    }

    else
    {
      v16 = 1;
    }

    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    v18 = 10;
    if (IsLeftToRight)
    {
      v19 = 5;
    }

    else
    {
      v19 = 10;
    }

    if (!IsLeftToRight)
    {
      v18 = 5;
    }

    if (v6)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v16)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = [(EKDayOccurrenceView *)self layer];
    [v22 setMasksToBounds:1];

    v23 = [(EKDayOccurrenceView *)self layer];
    [v23 setMaskedCorners:v20 | v21];

    [(EKDayOccurrenceView *)self bounds];
    v25 = v24 * 0.5;
    v26 = [(EKDayOccurrenceView *)self layer];
    [v26 setCornerRadius:v25];

    v27 = [(UIImageView *)self->_eventBackgroundView layer];
    [v27 setMaskedCorners:v20 | v21];

    [(EKDayOccurrenceView *)self bounds];
    v29 = v28 * 0.5;
    v15 = [(UIImageView *)self->_eventBackgroundView layer];
    [v15 setCornerRadius:v29];
  }

  else
  {
    v7 = [(EKDayOccurrenceView *)self hasTrailingDuration];
    v8 = [(EKDayOccurrenceView *)self showsTravelTime];
    v9 = 3;
    if (v8 || v5)
    {
      v9 = 0;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 | 0xC;
    }

    v11 = [(EKDayOccurrenceView *)self layer];
    [v11 setMaskedCorners:v10];

    v12 = [(EKDayOccurrenceView *)self layer];
    [v12 setCornerRadius:4.0];

    v13 = [(UIImageView *)self->_eventBackgroundView layer];
    [v13 setMaskedCorners:v10];

    v14 = [(UIImageView *)self->_eventBackgroundView layer];
    [v14 setCornerRadius:4.0];

    v15 = [(EKDayOccurrenceView *)self layer];
    [v15 setMasksToBounds:0];
  }

  [(EKDayOccurrenceView *)self setNeedsDisplay];
}

- (void)_invalidateCurrentRequest
{
  if ((self->_currentRequestId & 0x8000000000000000) == 0)
  {
    v3 = [MEMORY[0x1E6993430] sharedProvider];
    [v3 cancelRequest:self->_currentRequestId];

    self->_currentRequestId = -1;
  }
}

- (void)didMoveToSuperview
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [(EKDayOccurrenceView *)self arrayOfResizeHandles];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = [(EKDayOccurrenceView *)self superview];

        if (v9)
        {
          v10 = [v8 superview];
          [v8 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [(EKDayOccurrenceView *)self superview];
          [v10 convertRect:v19 toView:{v12, v14, v16, v18}];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v28 = [(EKDayOccurrenceView *)self superview];
          [v28 insertSubview:v8 aboveSubview:self];

          [v8 setFrame:{v21, v23, v25, v27}];
        }

        else
        {
          [v8 removeFromSuperview];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }
}

- (id)arrayOfResizeHandles
{
  if (self->_startResizeHandle)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_endResizeHandle, 0}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_invalidateAllImages
{
  [(EKDayOccurrenceView *)self _invalidateBackgroundImage];
  [(EKDayOccurrenceView *)self _invalidateTextImage];

  [(EKDayOccurrenceView *)self _invalidateTravelTimeImage];
}

- (void)_invalidateTravelTimeImage
{
  if (self->_showsTravelTime)
  {
    self->_invalidatedRequestOptions |= 4uLL;
  }
}

- (BOOL)_shouldActuallyAnnotateAppEntities
{
  if ((*(self + 480) & 8) != 0)
  {
    return ![(EKDayOccurrenceView *)self isBirthday:v2];
  }

  else
  {
    return 0;
  }
}

+ (void)_clearViewCache
{
  v2 = [a1 _viewCache];
  [v2 removeAllObjects];
}

+ (EKDayOccurrenceView)occurrenceViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [a1 _viewCache];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    [v8 removeObjectAtIndex:0];
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    if (!CGRectIsEmpty(v12))
    {
      [v9 setFrame:{x, y, width, height}];
    }
  }

  else
  {
    v9 = [[a1 alloc] initWithFrame:{x, y, width, height}];
  }

  [v9 prepareForReuse];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  [(EKDayOccurrenceView *)self frame];
  v5 = [v4 initWithFrame:?];
  v6 = [(EKDayOccurrenceView *)self delegate];
  [v5 setDelegate:v6];

  v7 = [(EKDayOccurrenceView *)self occurrences];
  [v5 setOccurrences:v7];

  [v5 setOccurrenceDateIndex:{-[EKDayOccurrenceView occurrenceDateIndex](self, "occurrenceDateIndex")}];
  [v5 setDimmed:{-[EKDayOccurrenceView dimmed](self, "dimmed")}];
  [v5 setHideText:{-[EKDayOccurrenceView hideText](self, "hideText")}];
  [v5 setHidden:{-[EKDayOccurrenceView isHidden](self, "isHidden")}];
  [(EKDayOccurrenceView *)self alpha];
  [v5 setAlpha:?];
  [v5 setSelected:{-[EKDayOccurrenceView selected](self, "selected")}];
  [v5 setTentative:{-[EKDayOccurrenceView isTentative](self, "isTentative")}];
  [v5 setDeclined:{-[EKDayOccurrenceView isDeclined](self, "isDeclined")}];
  [v5 setNeedsReply:{-[EKDayOccurrenceView needsReply](self, "needsReply")}];
  [v5 setCancelled:{-[EKDayOccurrenceView isCancelled](self, "isCancelled")}];
  [v5 setUsesSmallText:{-[EKDayOccurrenceView usesSmallText](self, "usesSmallText")}];
  [v5 setOccurrenceIsFirstVisibleDayOfEvent:{-[EKDayOccurrenceView occurrenceIsFirstVisibleDayOfEvent](self, "occurrenceIsFirstVisibleDayOfEvent")}];
  [v5 setDrawsResizeHandles:{-[EKDayOccurrenceView drawsResizeHandles](self, "drawsResizeHandles")}];
  [(EKDayOccurrenceView *)self margin];
  [v5 setMargin:?];
  [(EKDayOccurrenceView *)self padding];
  [v5 setPadding:?];
  [v5 setAllDay:{-[EKDayOccurrenceView isAllDay](self, "isAllDay")}];
  [v5 setAllDayDrawingStyle:{-[EKDayOccurrenceView allDayDrawingStyle](self, "allDayDrawingStyle")}];
  [v5 setIsProposedTime:{-[EKDayOccurrenceView isProposedTime](self, "isProposedTime")}];
  [v5 setContentMode:{-[EKDayOccurrenceView contentMode](self, "contentMode")}];
  [v5 setBirthday:{-[EKDayOccurrenceView isBirthday](self, "isBirthday")}];
  [v5 setShowsTravelTime:{-[EKDayOccurrenceView showsTravelTime](self, "showsTravelTime")}];
  [(EKDayOccurrenceView *)self travelTime];
  [v5 setTravelTime:?];
  [(EKDayOccurrenceView *)self travelTimeSubviewHeightInPoints];
  [v5 setTravelTimeSubviewHeightInPoints:?];
  [v5 setRoutingMode:{-[EKDayOccurrenceView routingMode](self, "routingMode")}];
  [v5 setIsSelectedCopyView:{-[EKDayOccurrenceView isSelectedCopyView](self, "isSelectedCopyView")}];
  v8 = [(EKDayOccurrenceView *)self selectedCopy];
  [v5 setSelectedCopy:v8];

  [v5 setHasPrecedingDuration:{-[EKDayOccurrenceView hasPrecedingDuration](self, "hasPrecedingDuration")}];
  [v5 setHasTrailingDuration:{-[EKDayOccurrenceView hasTrailingDuration](self, "hasTrailingDuration")}];
  [v5 setMultiAllDayRoundCorners:{-[EKDayOccurrenceView multiAllDayRoundCorners](self, "multiAllDayRoundCorners")}];
  return v5;
}

+ (double)minimumHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4
{
  v6 = objc_opt_class();

  [v6 minimumHeightForSizeClass:a3 orientation:a4 isAllDay:0];
  return result;
}

+ (double)minimumHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v8 = objc_opt_class();

  [v8 minimumHeightForSizeClass:a3 orientation:a4 isAllDay:v5 usesSmallText:0];
  return result;
}

+ (double)heightForAllDayOccurrenceForSizeClass:(int64_t)a3 usesSmallText:(BOOL)a4
{
  if (a3 == 2)
  {
    v6 = 22.0;
  }

  else
  {
    v6 = 17.0;
  }

  if (a3 != 2 && !a4)
  {
    CalRoundToScreenScale(23.5);
    v6 = v7;
  }

  if (a4)
  {
    [MEMORY[0x1E6993418] defaultOccurrenceSmallPrimaryTextFontForSizeClass:a3];
  }

  else
  {
    [MEMORY[0x1E6993418] defaultOccurrencePrimaryTextFontForSizeClass:a3];
  }
  v8 = ;
  [v8 lineHeight];
  v10 = v9;
  [MEMORY[0x1E6993420] occurrencePadding];
  CalRoundToScreenScale(v10 + v11 * 2.0);
  if (v6 < v12)
  {
    v6 = v12;
  }

  return v6;
}

+ (double)minimumHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4 isAllDay:(BOOL)a5 usesSmallText:(BOOL)a6
{
  if (a5)
  {

    [a1 heightForAllDayOccurrenceForSizeClass:a3 usesSmallText:a6];
  }

  else
  {
    [EKDayTimeView hourHeightForSizeClass:a3 orientation:a4, a5, a6];
    v9 = round(v8 * 0.5);
    +[EKDayOccurrenceView bottomShadowMargin];
    return v9 + v10;
  }

  return result;
}

+ (CGRect)contentStretchRectForFrame:(CGRect)a3
{
  v3 = 2.0 / a3.size.height;
  v4 = (a3.size.height + -4.0) / a3.size.height;
  v5 = 0.0;
  v6 = 1.0;
  result.size.height = v4;
  result.size.width = v6;
  result.origin.y = v3;
  result.origin.x = v5;
  return result;
}

+ (id)viewForExternalDragOperationFromEvent:(id)a3 visiblePath:(id *)a4
{
  v5 = a3;
  if ([v5 isReminderIntegrationEvent])
  {
    v6 = EKUIListViewReminderCell;
LABEL_5:
    v7 = [[v6 alloc] initForDragPreview];
    [v7 updateWithEvent:v5 dimmed:0];
    goto LABEL_7;
  }

  if ([v5 isAllDay])
  {
    v6 = EKUIListViewAllDayEventCell;
    goto LABEL_5;
  }

  v7 = [(EKUIListViewCell *)[EKUIListViewTimedEventCell alloc] initForDragPreview];
  v10 = [v5 startDate];
  [v7 updateWithEvent:v5 isMultiday:0 occurrenceStartDate:v10 dimmed:0];

LABEL_7:
  LODWORD(v8) = 1148846080;
  LODWORD(v9) = 1.0;
  [v7 systemLayoutSizeFittingSize:300.0 withHorizontalFittingPriority:200.0 verticalFittingPriority:{v8, v9}];
  [v7 setBounds:{0.0, 0.0, v11, v12}];
  v13 = objc_opt_class();
  [v7 bounds];
  *a4 = [v13 pathForBackgroundForRect:objc_msgSend(v5 allDay:{"isAllDay"), v14, v15, v16, v17}];

  return v7;
}

- (EKDayOccurrenceView)initWithFrame:(CGRect)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = EKDayOccurrenceView;
  v3 = [(EKDayOccurrenceView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_visibleHeight = 1.79769313e308;
    [(EKDayOccurrenceView *)v3 setAutoresizingMask:2];
    [(EKDayOccurrenceView *)v4 setOpaque:0];
    v4->_isMiniPreviewInEventDetail = 0;
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    eventBackgroundView = v4->_eventBackgroundView;
    v4->_eventBackgroundView = v5;

    [(UIImageView *)v4->_eventBackgroundView setAccessibilityIdentifier:@"_eventBackgroundView"];
    [(EKDayOccurrenceView *)v4 addSubview:v4->_eventBackgroundView];
    v7 = [(UIImageView *)v4->_eventBackgroundView layer];
    [v7 setCornerRadius:4.0];

    v8 = [(UIImageView *)v4->_eventBackgroundView layer];
    [v8 setMasksToBounds:1];

    v9 = [(UIImageView *)v4->_eventBackgroundView layer];
    [v9 setMinificationFilter:*MEMORY[0x1E6979C48]];

    v4->_needsBackgroundImageUpdate = 1;
    v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    contentView = v4->_contentView;
    v4->_contentView = v10;

    [(UIImageView *)v4->_contentView setContentMode:9];
    [(UIImageView *)v4->_contentView setClipsToBounds:1];
    [(UIImageView *)v4->_contentView setAccessibilityIdentifier:@"_contentView"];
    [(EKDayOccurrenceView *)v4 addSubview:v4->_contentView];
    v4->_needsContentCalc = 1;
    v4->_cappedColorBarHeight = -1.0;
    v4->_originalXBeforeOffset = -1.0;
    [objc_opt_class() defaultMargin];
    v4->_margin.top = v12;
    v4->_margin.left = v13;
    v4->_margin.bottom = v14;
    v4->_margin.right = v15;
    [objc_opt_class() defaultPadding];
    v4->_padding.top = v16;
    v4->_padding.left = v17;
    v4->_padding.bottom = v18;
    v4->_padding.right = v19;
    v4->_currentRequestId = -1;
    v20 = objc_alloc_init(MEMORY[0x1E6993428]);
    currentImageState = v4->_currentImageState;
    v4->_currentImageState = v20;

    v4->_contentLocationDuringReducedProcessing = *MEMORY[0x1E695EFF8];
    [(EKDayOccurrenceView *)v4 _setUpInteractions];
    objc_initWeak(&location, v4);
    v33[0] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __37__EKDayOccurrenceView_initWithFrame___block_invoke;
    v29 = &unk_1E843EBE8;
    objc_copyWeak(&v30, &location);
    v23 = [(EKDayOccurrenceView *)v4 registerForTraitChanges:v22 withHandler:&v26];

    v24 = [(EKDayOccurrenceView *)v4 layer:v26];
    [v24 setDelegate:v4];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __37__EKDayOccurrenceView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained forceUpdateColors];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  [(UIView *)self->_startResizeHandle removeFromSuperview];
  [(UIView *)self->_endResizeHandle removeFromSuperview];
  v3.receiver = self;
  v3.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v21.receiver = self;
  v21.super_class = EKDayOccurrenceView;
  v4 = [(EKDayOccurrenceView *)&v21 description];
  [v3 appendString:v4];

  v5 = [(EKDayOccurrenceView *)self occurrence];
  v6 = [v5 title];
  [v3 appendFormat:@"title:     %@\n", v6];

  v7 = [(EKDayOccurrenceView *)self occurrence];
  v8 = [v7 location];
  [v3 appendFormat:@"location:  %@\n", v8];

  v9 = [(EKDayOccurrenceView *)self occurrence];
  v10 = [v9 calendar];
  v11 = [v10 title];
  [v3 appendFormat:@"calendar:  %@\n", v11];

  v12 = [(EKDayOccurrenceView *)self occurrence];
  v13 = [v12 startCalendarDate];
  [v3 appendFormat:@"startDate: %@\n", v13];

  v14 = [(EKDayOccurrenceView *)self occurrence];
  v15 = [v14 endCalendarDate];
  [v3 appendFormat:@"endDate:   %@\n", v15];

  [(EKDayOccurrenceView *)self frame];
  v16 = NSStringFromRect(v23);
  [v3 appendFormat:@"frame:     %@\n", v16];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[EKDayOccurrenceView isSelectedCopyView](self, "isSelectedCopyView")}];
  [v3 appendFormat:@"isSelectedCopyView:     %@\n", v17];

  v18 = [(EKDayOccurrenceView *)self selectedCopy];
  [v3 appendFormat:@"selectedCopy:     %@\n", v18];

  v19 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v19;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v5 setUserInteractionEnabled:?];
  [(UIView *)self->_startResizeHandle setUserInteractionEnabled:v3];
  [(UIView *)self->_endResizeHandle setUserInteractionEnabled:v3];
}

- (void)forceUpdateColors
{
  self->_needsContentCalc = 1;
  self->_needsBackgroundImageUpdate = 1;
  [(EKDayOccurrenceView *)self _invalidateAllImages];
  v3 = [objc_alloc(MEMORY[0x1E6993428]) initWithState:self];
  [(EKDayOccurrenceView *)self setCurrentImageState:v3];

  [(EKDayOccurrenceView *)self _updateColors];
  [(EKDayOccurrenceView *)self requestContentIfNeeded:16 completion:0];
  [(EKDayOccurrenceView *)self setNeedsLayout];

  [(EKDayOccurrenceView *)self updateAlpha];
}

- (void)synchronouslyRenderContentOnNextDisplay
{
  self->_needSynchronousRender = 1;
  v2 = [(EKDayOccurrenceView *)self layer];
  [v2 setNeedsDisplay];
}

- (void)displayLayer:(id)a3
{
  if (self->_needSynchronousRender)
  {
    if (self->_showsTravelTime)
    {
      v3 = 23;
    }

    else
    {
      v3 = 19;
    }

    [(EKDayOccurrenceView *)self requestContent:v3 completion:0];
  }
}

- (void)setShouldAnnotateAppEntities:(BOOL)a3
{
  v3 = *(self + 480);
  if (((((v3 & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(self + 480) = v3 & 0xF7 | v4;
    [(EKDayOccurrenceView *)self _updateAppEntityAnnotationIfNeeded];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(EKDayOccurrenceView *)self _updateColors];
    [(EKDayOccurrenceView *)self updateAlpha];
    self->_needsBackgroundImageUpdate = 1;
    [(EKDayOccurrenceView *)self _invalidateAllImages];
    [(EKDayOccurrenceView *)self setNeedsDisplay];
    [(EKDayOccurrenceView *)self setNeedsLayout];
    if (!a3 && self->_occurrence)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 postNotificationName:@"EKDayOccurrenceViewDidEndSelectionNotification" object:self];
    }

    [(EKDayOccurrenceView *)self _updateAppEntityAnnotationState];
  }
}

- (void)_addTravelTimeSubviews
{
  travelTimeContentView = self->_travelTimeContentView;
  v4 = travelTimeContentView == 0;
  if (!travelTimeContentView)
  {
    v5 = objc_alloc_init(EKDayOccurrenceTravelTimeView);
    v6 = self->_travelTimeContentView;
    self->_travelTimeContentView = v5;
  }

  if (!self->_travelBackgroundView)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    travelBackgroundView = self->_travelBackgroundView;
    self->_travelBackgroundView = v7;

    v9 = [(UIImageView *)self->_travelBackgroundView layer];
    [v9 setCornerRadius:4.0];

    v10 = [(UIImageView *)self->_travelBackgroundView layer];
    v4 = 1;
    [v10 setMasksToBounds:1];

    v11 = [(UIImageView *)self->_travelBackgroundView layer];
    [v11 setMaskedCorners:3];
  }

  v12 = [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView superview];

  if (!v12)
  {
    [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setAccessibilityIdentifier:@"_travelTimeContentView"];
    [(EKDayOccurrenceView *)self addSubview:self->_travelTimeContentView];
    v4 = 1;
  }

  v13 = [(UIImageView *)self->_travelBackgroundView superview];

  if (v13)
  {
    if (!v4)
    {
      return;
    }
  }

  else
  {
    [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setAccessibilityIdentifier:@"_travelBackgroundView"];
    [(EKDayOccurrenceView *)self addSubview:self->_travelBackgroundView];
  }

  self->_needsContentCalc = 1;
  self->_needsBackgroundImageUpdate = 1;

  [(EKDayOccurrenceView *)self _updateColors];
}

- (void)_removeTravelTimeSubviews
{
  [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView removeFromSuperview];
  [(UIImageView *)self->_travelBackgroundView removeFromSuperview];
  self->_needsContentCalc = 1;
  self->_needsBackgroundImageUpdate = 1;
}

- (void)setTravelTime:(double)a3
{
  if (self->_travelTime != a3)
  {
    self->_travelTime = a3;
    [(EKDayOccurrenceView *)self setShowsTravelTime:a3 > 0.0];
  }
}

- (void)setShowsTravelTime:(BOOL)a3
{
  if (self->_showsTravelTime != a3)
  {
    v8 = v3;
    self->_showsTravelTime = a3;
    if (a3)
    {
      [(EKDayOccurrenceView *)self _addTravelTimeSubviews];
    }

    else
    {
      [(EKDayOccurrenceView *)self _removeTravelTimeSubviews];
    }

    [(EKDayOccurrenceView *)self _invalidateTravelTimeImage:v4];
    [(EKDayOccurrenceView *)self setNeedsLayout];

    [(EKDayOccurrenceView *)self _updateCornerRadius];
  }
}

- (void)setMargin:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  top = a3.top;
  bottom = a3.bottom;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  if (IsLeftToRight)
  {
    v7 = left;
  }

  else
  {
    v7 = right;
  }

  if (IsLeftToRight)
  {
    v8 = right;
  }

  else
  {
    v8 = left;
  }

  v9.f64[0] = top;
  v9.f64[1] = v7;
  v10.f64[0] = bottom;
  v10.f64[1] = v8;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *&self->_margin.top), vceqq_f64(v10, *&self->_margin.bottom)))) & 1) == 0)
  {
    self->_margin.top = top;
    self->_margin.left = v7;
    self->_margin.bottom = bottom;
    self->_margin.right = v8;
    self->_needsBackgroundImageUpdate = 1;
    [(EKDayOccurrenceView *)self _invalidateBackgroundImage];

    [(EKDayOccurrenceView *)self setNeedsLayout];
  }
}

- (void)setPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  top = a3.top;
  bottom = a3.bottom;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  if (IsLeftToRight)
  {
    v7 = left;
  }

  else
  {
    v7 = right;
  }

  if (IsLeftToRight)
  {
    v8 = right;
  }

  else
  {
    v8 = left;
  }

  v9.f64[0] = top;
  v9.f64[1] = v7;
  v10.f64[0] = bottom;
  v10.f64[1] = v8;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *&self->_padding.top), vceqq_f64(v10, *&self->_padding.bottom)))) & 1) == 0)
  {
    self->_padding.top = top;
    self->_padding.left = v7;
    self->_padding.bottom = bottom;
    self->_padding.right = v8;
    [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setNeedsLayout];

    [(EKDayOccurrenceView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setupWithOccurrence:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = [v4 calendar];
    v6 = [v12 travelRoutingMode];
    -[EKDayOccurrenceView setAllDay:](self, "setAllDay:", [v12 isAllDay]);
    -[EKDayOccurrenceView setIsReminder:](self, "setIsReminder:", [v12 isIntegrationEvent]);
    -[EKDayOccurrenceView setIsCompleted:](self, "setIsCompleted:", [v12 completed]);
    -[EKDayOccurrenceView setCancelled:](self, "setCancelled:", [v12 status] == 3);
    [(EKDayOccurrenceView *)self setTentative:CUIKEventDisplaysAsTentative()];
    [(EKDayOccurrenceView *)self setDeclined:CUIKEventDisplaysAsDeclined()];
    [(EKDayOccurrenceView *)self setNeedsReply:CUIKEventDisplaysAsNeedsReply()];
    -[EKDayOccurrenceView setBirthday:](self, "setBirthday:", [v5 type] == 4);
    [v12 travelTime];
    [(EKDayOccurrenceView *)self setTravelTime:?];
    [(EKDayOccurrenceView *)self setRoutingMode:v6];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v12 title];
    v9 = [v7 stringWithFormat:@"event-shown:%@", v8];
    [(EKDayOccurrenceView *)self setAccessibilityIdentifier:v9];

    v10 = [objc_alloc(MEMORY[0x1E6993428]) initWithState:self];
    [(EKDayOccurrenceView *)self setCurrentImageState:v10];

    [(EKDayOccurrenceView *)self _invalidateAllImages];
    stagedBackgroundColor = self->_stagedBackgroundColor;
    self->_stagedBackgroundColor = 0;
  }

  else
  {
    [(EKDayOccurrenceView *)self _invalidateCurrentRequest];
  }

  [(EKDayOccurrenceView *)self _updateAppEntityAnnotationIfNeeded];
}

- (void)setOccurrence:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    occurrences = self->_occurrences;
    self->_occurrences = v7;
  }

  else
  {
    occurrences = self->_occurrences;
    self->_occurrences = MEMORY[0x1E695E0F0];
  }

  if (self->_occurrence != v6)
  {
    objc_storeStrong(&self->_occurrence, a3);
    [(EKDayOccurrenceView *)self setupWithOccurrence:v6];
  }
}

- (void)setOccurrences:(id)a3
{
  v4 = [(EKDayOccurrenceView *)self sortOccurrences:a3];
  occurrences = self->_occurrences;
  self->_occurrences = v4;

  v6 = [(NSArray *)self->_occurrences firstObject];
  occurrence = self->_occurrence;
  self->_occurrence = v6;

  v8 = self->_occurrence;

  [(EKDayOccurrenceView *)self setupWithOccurrence:v8];
}

- (EKCalendarDate)occurrenceDate
{
  v3 = [(EKDayOccurrenceView *)self occurrence];
  v4 = [v3 startCalendarDate];
  v5 = [v4 calendarDateByAddingDays:{-[EKDayOccurrenceView occurrenceDateIndex](self, "occurrenceDateIndex")}];

  return v5;
}

- (void)_invalidateContentBounds
{
  self->_needsContentCalc = 1;
  [(EKDayOccurrenceView *)self _invalidateCurrentRequest];
  [(EKDayOccurrenceView *)self _invalidateTextImage];

  [(EKDayOccurrenceView *)self setNeedsLayout];
}

- (void)setTentative:(BOOL)a3
{
  if (self->_tentative != a3)
  {
    self->_tentative = a3;
    self->_needsBackgroundImageUpdate = 1;
    [(EKDayOccurrenceView *)self _invalidateContentBounds];
  }
}

- (void)setNeedsReply:(BOOL)a3
{
  if (self->_needsReply != a3)
  {
    self->_needsReply = a3;
    self->_needsBackgroundImageUpdate = 1;
    [(EKDayOccurrenceView *)self _invalidateContentBounds];
  }
}

- (void)setDeclined:(BOOL)a3
{
  if (self->_declined != a3)
  {
    self->_declined = a3;
    [(EKDayOccurrenceView *)self _invalidateContentBounds];
  }
}

- (void)setAllDay:(BOOL)a3
{
  if (self->_allDay != a3)
  {
    self->_allDay = a3;
    [(EKDayOccurrenceView *)self _invalidateContentBounds];

    [(EKDayOccurrenceView *)self _updateCornerRadius];
  }
}

- (void)setIsProposedTime:(BOOL)a3
{
  if (self->_isProposedTime != a3)
  {
    self->_isProposedTime = a3;
    [(EKDayOccurrenceView *)self _invalidateAllImages];
  }
}

- (void)setIsReminder:(BOOL)a3
{
  if (self->_isReminder != a3)
  {
    self->_isReminder = a3;
  }
}

- (void)setAllDayDrawingStyle:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_allDayDrawingStyle != a3)
  {
    self->_allDayDrawingStyle = a3;
    if (a4)
    {
      if (a3)
      {
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __54__EKDayOccurrenceView_setAllDayDrawingStyle_animated___block_invoke;
        v20 = &unk_1E843EC60;
        v21 = self;
        v5 = &v17;
        v6 = self;
        v7 = 5242880;
      }

      else
      {
        v12 = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __54__EKDayOccurrenceView_setAllDayDrawingStyle_animated___block_invoke_2;
        v15 = &unk_1E843EC60;
        v16 = self;
        v5 = &v12;
        v6 = self;
        v7 = 5242881;
      }

      [MEMORY[0x1E69DD250] transitionWithView:v6 duration:v7 options:v5 animations:0 completion:{0.2, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
    }

    else
    {
      [(EKDayOccurrenceView *)self setShowsTravelTime:0];
      if (self->_allDayDrawingStyle)
      {
        [(UIImageView *)self->_eventBackgroundView removeFromSuperview];
        eventBackgroundView = self->_eventBackgroundView;
        self->_eventBackgroundView = 0;

        [(EKDayOccurrenceView *)self _removeTravelTimeSubviews];
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        v10 = self->_eventBackgroundView;
        self->_eventBackgroundView = v9;

        [(UIImageView *)self->_eventBackgroundView setAutoresizingMask:16];
        v11 = [(UIImageView *)self->_eventBackgroundView layer];
        [v11 setMasksToBounds:1];

        [(EKDayOccurrenceView *)self insertSubview:self->_eventBackgroundView atIndex:0];
        if (self->_showsTravelTime)
        {
          [(EKDayOccurrenceView *)self _addTravelTimeSubviews];
        }
      }

      self->_needsBackgroundImageUpdate = 1;
      [(EKDayOccurrenceView *)self _invalidateBackgroundImage];

      [(EKDayOccurrenceView *)self setNeedsLayout];
    }
  }
}

uint64_t __54__EKDayOccurrenceView_setAllDayDrawingStyle_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 416) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 416);
  *(v2 + 416) = 0;

  result = [*(a1 + 32) _removeTravelTimeSubviews];
  *(*(a1 + 32) + 449) = 1;
  return result;
}

uint64_t __54__EKDayOccurrenceView_setAllDayDrawingStyle_animated___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [*(a1 + 32) bounds];
  v3 = [v2 initWithFrame:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 416);
  *(v4 + 416) = v3;

  [*(*(a1 + 32) + 416) setAutoresizingMask:16];
  v6 = [*(*(a1 + 32) + 416) layer];
  [v6 setMasksToBounds:1];

  [*(a1 + 32) insertSubview:*(*(a1 + 32) + 416) atIndex:0];
  v7 = *(a1 + 32);
  if (v7[700] == 1)
  {
    [v7 _addTravelTimeSubviews];
    v7 = *(a1 + 32);
  }

  v7[449] = 1;
  v8 = *(a1 + 32);

  return [v8 _invalidateBackgroundImage];
}

void __36__EKDayOccurrenceView__updateColors__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _updateColors___backgroundColorCache;
  _updateColors___backgroundColorCache = v0;
}

- (void)removeFromSuperview
{
  v3 = [objc_opt_class() _viewCache];
  v4 = v3;
  if (v3)
  {
    if ([v3 count] <= 9)
    {
      v5 = [(EKDayOccurrenceView *)self superview];

      if (v5)
      {
        [v4 addObject:self];
      }
    }
  }

  v6.receiver = self;
  v6.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v6 removeFromSuperview];
}

- (void)setVisibleHeight:(double)a3
{
  if (self->_visibleHeight != a3)
  {
    self->_visibleHeight = a3;
    [(EKDayOccurrenceView *)self _invalidateContentBounds];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(EKDayOccurrenceView *)self frame];
  if (![(EKDayOccurrenceView *)self _sizesEffectivelyEqualWithSize:width andSize:height])
  {
    [(EKDayOccurrenceView *)self frame];
    if (vabdd_f64(height, v8) >= 2.22044605e-16)
    {
      self->_visibleHeight = 1.79769313e308;
      self->_visibleHeightLocked = 0;
    }

    self->_needsContentCalc = 1;
    self->_needsBackgroundImageUpdate = 1;
    [(EKDayOccurrenceView *)self _invalidateCurrentRequest];
    [(EKDayOccurrenceView *)self _invalidateAllImages];
    [(EKDayOccurrenceView *)self setNeedsLayout];
  }

  v11.receiver = self;
  v11.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v11 setFrame:x, y, width, height];
  v9 = [(EKDayOccurrenceView *)self selectedCopy];

  if (v9)
  {
    v10 = [(EKDayOccurrenceView *)self selectedCopy];
    [v10 setFrame:{x, y, width, height}];
  }

  [(EKDayOccurrenceView *)self _updateResizeHandleLocations];
}

- (void)animateToFrame:(CGRect)a3 isAllDay:(BOOL)a4 beginFromCurrentState:(BOOL)a5 whenFinished:(id)a6
{
  v6 = a5;
  v7 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  [(EKDayOccurrenceView *)self frame];
  v28.origin.x = v14;
  v28.origin.y = v15;
  v28.size.width = v16;
  v28.size.height = v17;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectEqualToRect(v27, v28))
  {
    v18 = [(EKDayOccurrenceView *)self drawsResizeHandles];
    if (v7)
    {
      [(EKDayOccurrenceView *)self setDrawsResizeHandles:0];
    }

    v19 = MEMORY[0x1E69DD250];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__EKDayOccurrenceView_animateToFrame_isAllDay_beginFromCurrentState_whenFinished___block_invoke;
    v25[3] = &unk_1E8442A08;
    if (v6)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    v25[4] = self;
    *&v25[5] = x;
    *&v25[6] = y;
    *&v25[7] = width;
    *&v25[8] = height;
    v26 = v7;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__EKDayOccurrenceView_animateToFrame_isAllDay_beginFromCurrentState_whenFinished___block_invoke_2;
    v21[3] = &unk_1E8442A30;
    v23 = v7;
    v21[4] = self;
    v24 = v18;
    v22 = v13;
    [v19 animateWithDuration:v20 delay:v25 options:v21 animations:0.2 completion:0.0];
  }
}

uint64_t __82__EKDayOccurrenceView_animateToFrame_isAllDay_beginFromCurrentState_whenFinished___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) setAllDay:*(a1 + 72)];
  v2 = *(a1 + 32);

  return [v2 requestContentIfNeeded:16 completion:0];
}

uint64_t __82__EKDayOccurrenceView_animateToFrame_isAllDay_beginFromCurrentState_whenFinished___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) alpha];
    if (v2 > 0.0 && ([*(a1 + 32) isHidden] & 1) == 0)
    {
      [*(a1 + 32) setDrawsResizeHandles:*(a1 + 49)];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)_newResizeHandleView
{
  v3 = [[EKDayOccurrenceResizeHandleView alloc] initWithFrame:self occurrenceView:0.0, 0.0, 61.0, 61.0];
  [(EKDayOccurrenceResizeHandleView *)v3 setUserInteractionEnabled:[(EKDayOccurrenceView *)self isUserInteractionEnabled]];
  return v3;
}

- (void)setDrawsResizeHandles:(BOOL)a3
{
  if (self->_drawsResizeHandles != a3)
  {
    self->_drawsResizeHandles = a3;
    if (a3)
    {
      if ([(EKDayOccurrenceView *)self isAllDay]|| [(EKDayOccurrenceView *)self isReminder])
      {
        self->_drawsResizeHandles = 0;
      }

      else
      {
        if (!self->_startResizeHandle)
        {
          v26 = [(EKDayOccurrenceView *)self _newResizeHandleView];
          startResizeHandle = self->_startResizeHandle;
          self->_startResizeHandle = v26;

          v28 = [(EKDayOccurrenceView *)self superview];
          [v28 addSubview:self->_startResizeHandle];
        }

        if (!self->_endResizeHandle)
        {
          v29 = [(EKDayOccurrenceView *)self _newResizeHandleView];
          endResizeHandle = self->_endResizeHandle;
          self->_endResizeHandle = v29;

          v31 = [(EKDayOccurrenceView *)self superview];
          [v31 addSubview:self->_endResizeHandle];
        }

        [(EKDayOccurrenceView *)self _updateResizeHandleLocations];
        v32 = self->_startResizeHandle;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __45__EKDayOccurrenceView_setDrawsResizeHandles___block_invoke;
        v39[3] = &unk_1E843EC60;
        v39[4] = self;
        CalPopViewIn(v32, v39);
        v33 = self->_endResizeHandle;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __45__EKDayOccurrenceView_setDrawsResizeHandles___block_invoke_2;
        v38[3] = &unk_1E843EC60;
        v38[4] = self;
        CalPopViewIn(v33, v38);
      }
    }

    else
    {
      v4 = self->_startResizeHandle;
      v5 = self->_endResizeHandle;
      [(UIView *)v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __45__EKDayOccurrenceView_setDrawsResizeHandles___block_invoke_3;
      v36[3] = &unk_1E843EC60;
      v37 = v4;
      v14 = v4;
      CalScaleViewOut(v14, v36, v7, v9, v11, v13);
      [(UIView *)v5 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __45__EKDayOccurrenceView_setDrawsResizeHandles___block_invoke_4;
      v34[3] = &unk_1E843EC60;
      v35 = v5;
      v23 = v5;
      CalScaleViewOut(v23, v34, v16, v18, v20, v22);
      v24 = self->_startResizeHandle;
      self->_startResizeHandle = 0;

      v25 = self->_endResizeHandle;
      self->_endResizeHandle = 0;
    }
  }
}

uint64_t __45__EKDayOccurrenceView_setDrawsResizeHandles___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 456) frame];
  v6 = CalRoundRectToScreenScale(v2, v3, v4, v5);
  v7 = *(*(a1 + 32) + 456);

  return [v7 setFrame:v6];
}

uint64_t __45__EKDayOccurrenceView_setDrawsResizeHandles___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 464) frame];
  v6 = CalRoundRectToScreenScale(v2, v3, v4, v5);
  v7 = *(*(a1 + 32) + 464);

  return [v7 setFrame:v6];
}

- (CGRect)_frameMutatedForProximityToHourLine:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CalRoundToScreenScale(0.5);
  v8 = y + v7;
  CalRoundToScreenScale(0.5);
  v10 = height - v9;
  v11 = x;
  v12 = v8;
  v13 = width;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)frameOfOpaqueContent
{
  eventBackgroundView = self->_eventBackgroundView;
  if (eventBackgroundView && ([(UIImageView *)eventBackgroundView superview], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(UIImageView *)self->_eventBackgroundView bounds];
    [(EKDayOccurrenceView *)self convertRect:self->_eventBackgroundView fromView:?];
  }

  else
  {
    [(EKDayOccurrenceView *)self frame];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)requestContentIfNeeded:(unint64_t)a3 completion:(id)a4
{
  if (self->_invalidatedRequestOptions)
  {
    v4 = a3;
    v6 = MEMORY[0x1E6993428];
    v7 = a4;
    v8 = [[v6 alloc] initWithState:self];
    [(EKDayOccurrenceView *)self setCurrentImageState:v8];
    [(EKDayOccurrenceView *)self requestContent:self->_invalidatedRequestOptions | v4 & 0x18 completion:v7];
  }
}

- (void)requestContent:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (self->_drawsResizeHandles)
  {
    v7 = a3 | 0x20;
  }

  else
  {
    v7 = a3;
  }

  objc_initWeak(&location, self);
  v8 = [MEMORY[0x1E6993430] sharedProvider];
  v9 = [(EKDayOccurrenceView *)self currentImageState];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__EKDayOccurrenceView_requestContent_completion___block_invoke;
  v12[3] = &unk_1E8442A58;
  objc_copyWeak(&v14, &location);
  v10 = v6;
  v13 = v10;
  v11 = [v8 requestPayloadForState:v9 requestOptions:v7 resultHandler:v12];

  if ((v11 & 0x8000000000000000) == 0)
  {
    self->_currentRequestId = v11;
    self->_invalidatedRequestOptions = 0;
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

uint64_t __49__EKDayOccurrenceView_requestContent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateContentWithPayload:v3];

  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_updateContentWithPayload:(id)a3
{
  v7 = a3;
  v4 = [v7 requestOptions];
  currentRequestId = self->_currentRequestId;
  v6 = [v7 requestId];
  if ((v4 & 0x10) != 0 || currentRequestId == v6)
  {
    [(EKDayOccurrenceView *)self forceUpdateContentWithPayload:v7];
  }
}

- (void)forceUpdateContentWithPayload:(id)a3
{
  v4 = a3;
  [v4 requestOptions];
  if (!_bitmaskContainsOption())
  {
    goto LABEL_5;
  }

  v5 = [(UIImageView *)self->_eventBackgroundView image];
  if (v5)
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if ([(EKDayOccurrenceView *)self _contentViewHasContent])
  {
    goto LABEL_5;
  }

  [(EKDayOccurrenceView *)self setAlpha:0.0];
  v6 = 1;
LABEL_6:
  if (_bitmaskContainsOption())
  {
    v7 = [v4 backgroundImage];
    [(UIImageView *)self->_eventBackgroundView setImage:v7];
  }

  else
  {
    [(UIImageView *)self->_eventBackgroundView setImage:0];
  }

  v8 = _Block_copy(self->_backgroundChangedCallback);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, self);
  }

  if (_bitmaskContainsOption())
  {
    v10 = [v4 textImage];
    [(UIImageView *)self->_contentView setImage:v10];
  }

  else
  {
    [(UIImageView *)self->_contentView setImage:0];
  }

  if (_bitmaskContainsOption())
  {
    v11 = [v4 travelTimeImage];
    [(UIImageView *)self->_travelBackgroundView setImage:v11];

    v12 = [v4 travelTimeString];
    [(EKDayOccurrenceTravelTimeView *)self->_travelTimeContentView setTravelTimeString:v12];
  }

  stagedBackgroundColor = self->_stagedBackgroundColor;
  if (!stagedBackgroundColor)
  {
    [(EKDayOccurrenceView *)self _updateColors];
    stagedBackgroundColor = self->_stagedBackgroundColor;
  }

  [(EKDayOccurrenceView *)self setBackgroundColor:stagedBackgroundColor];
  if (v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__EKDayOccurrenceView_forceUpdateContentWithPayload___block_invoke;
    v14[3] = &unk_1E843EC60;
    v14[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v14 options:0 animations:0.300000012 completion:0.0];
  }

  self->_needSynchronousRender = 0;
  self->_needsContentCalc = 1;
  [(EKDayOccurrenceView *)self _updateContentImageViewIfNeeded];
}

- (void)setTopPinningProximity:(double)a3
{
  topPinningProximity = self->_topPinningProximity;
  if (a3 >= 1.0 && topPinningProximity < 1.0)
  {
    v9 = [(UIImageView *)self->_eventBackgroundView layer];
    [v9 setMasksToBounds:0];
  }

  else if (a3 < 1.0 && topPinningProximity >= 1.0)
  {
    v8 = [(UIImageView *)self->_eventBackgroundView layer];
    [v8 setMasksToBounds:1];

    [(EKDayOccurrenceView *)self _updateCornerRadius];
  }

  if (a3 > 0.0 && a3 < 1.0)
  {
    v11 = (1.0 - a3) * 4.0;
  }

  else
  {
    v11 = 4.0;
  }

  v12 = [(UIImageView *)self->_eventBackgroundView layer];
  [v12 setCornerRadius:v11];

  self->_topPinningProximity = a3;
}

- (void)setBottomPinningProximity:(double)a3
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
  bottomPinningState = self->_bottomPinningState;
  v6 = v4 > 0.0;
  if (v4 <= 0.0)
  {
    v8 = 0;
    goto LABEL_7;
  }

  if (v4 < 1.0)
  {
    v7 = bottomPinningState == 1;
    if (bottomPinningState == 1)
    {
      goto LABEL_21;
    }

    if ([(EKDayOccurrenceView *)self isSelectedCopyView])
    {
      pinFadeView = self->_pinFadeView;
      if (pinFadeView)
      {
        [(UIView *)pinFadeView removeFromSuperview];
        v12 = self->_pinFadeView;
        self->_pinFadeView = 0;
      }

      goto LABEL_21;
    }

    v13 = objc_opt_new();
    v14 = self->_pinFadeView;
    self->_pinFadeView = v13;

    v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)self->_pinFadeView setBackgroundColor:v15];

    if (bottomPinningState)
    {
      x = self->_unpinnedEventBackgroundFrame.origin.x;
      y = self->_unpinnedEventBackgroundFrame.origin.y;
      width = self->_unpinnedEventBackgroundFrame.size.width;
      height = self->_unpinnedEventBackgroundFrame.size.height;
      v20 = self->_unpinnedTravelBackgroundFrame.size.height;
      if (v20 > 0.0)
      {
        v21 = self->_unpinnedTravelBackgroundFrame.origin.x;
        v22 = self->_unpinnedTravelBackgroundFrame.origin.y;
        v23 = self->_unpinnedTravelBackgroundFrame.size.width;
LABEL_19:
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v61 = CGRectUnion(v60, *(&v20 - 3));
        x = v61.origin.x;
        y = v61.origin.y;
        width = v61.size.width;
        height = v61.size.height;
      }
    }

    else
    {
      [(UIImageView *)self->_eventBackgroundView frame];
      x = v24;
      y = v25;
      width = v26;
      height = v27;
      [(UIImageView *)self->_travelBackgroundView frame];
      if (v28 > 0.0)
      {
        [(UIImageView *)self->_travelBackgroundView frame];
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v20 = v32;
        goto LABEL_19;
      }
    }

    v59[1] = 3221225472;
    v59[0] = MEMORY[0x1E69E9820];
    v59[2] = __49__EKDayOccurrenceView_setBottomPinningProximity___block_invoke;
    v59[3] = &unk_1E8441260;
    v59[4] = self;
    *&v59[5] = x;
    *&v59[6] = y + 2.0;
    *&v59[7] = width;
    *&v59[8] = height + -2.0;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v59];
LABEL_21:
    [(UIView *)self->_pinFadeView setAlpha:v4];
    v10 = 1.0 - v4;
    v33 = [(UIImageView *)self->_travelBackgroundView layer];
    [v33 setCornerRadius:(1.0 - v4) * 4.0];

    v34 = [(UIImageView *)self->_eventBackgroundView layer];
    [v34 setCornerRadius:(1.0 - v4) * 4.0];

    v6 = 0;
    v57 = 1;
    v8 = 1;
    goto LABEL_22;
  }

  v8 = 2;
LABEL_7:
  if (bottomPinningState == 1)
  {
    [(UIView *)self->_pinFadeView removeFromSuperview];
    v9 = self->_pinFadeView;
    self->_pinFadeView = 0;
  }

  if (v8 != bottomPinningState)
  {
    v7 = 0;
    v57 = 0;
    v10 = 1.0 - v4;
LABEL_22:
    [(UIImageView *)self->_contentView setAlpha:v10];
    v35 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
    v36 = [(EKDayOccurrenceView *)self traitCollection];
    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v36];

    if (![(EKDayOccurrenceView *)self isSelectedCopyView])
    {
      v37 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v58 = 0.0;
      [v37 getWhite:&v58 alpha:0];
      v38 = [MEMORY[0x1E69DC888] colorWithWhite:v58 alpha:v4 * 0.75];
      [(EKDayOccurrenceView *)self setBackgroundColor:v38];
    }

    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v35];

    if (!v7)
    {
      if (v6)
      {
        [(EKDayOccurrenceView *)self layoutIfNeeded];
        p_eventBackgroundView = &self->_eventBackgroundView;
        [(UIImageView *)self->_eventBackgroundView frame];
        self->_unpinnedEventBackgroundFrame.origin.x = v40;
        self->_unpinnedEventBackgroundFrame.origin.y = v41;
        self->_unpinnedEventBackgroundFrame.size.width = v42;
        self->_unpinnedEventBackgroundFrame.size.height = v43;
        p_travelBackgroundView = &self->_travelBackgroundView;
        [(UIImageView *)self->_travelBackgroundView frame];
        self->_unpinnedTravelBackgroundFrame.origin.x = v45;
        self->_unpinnedTravelBackgroundFrame.origin.y = v46;
        self->_unpinnedTravelBackgroundFrame.size.width = v47;
        self->_unpinnedTravelBackgroundFrame.size.height = v48;
        [(UIImageView *)self->_travelBackgroundView frame];
        if (v49 <= 2.0)
        {
          [(UIImageView *)*p_eventBackgroundView frame];
          v50 = &self->_eventBackgroundView;
        }

        else
        {
          [(UIImageView *)*p_travelBackgroundView frame];
          v50 = &self->_travelBackgroundView;
        }

        [(UIImageView *)*v50 setFrame:?];
        v53 = [(UIImageView *)*p_eventBackgroundView layer];
        [v53 setMasksToBounds:0];

        v54 = [(UIImageView *)*p_travelBackgroundView layer];
        [v54 setMasksToBounds:0];
      }

      else if (bottomPinningState == 2)
      {
        v51 = [(UIImageView *)self->_eventBackgroundView layer];
        [v51 setMasksToBounds:1];

        v52 = [(UIImageView *)self->_travelBackgroundView layer];
        [v52 setMasksToBounds:1];

        [(UIImageView *)self->_eventBackgroundView setFrame:self->_unpinnedEventBackgroundFrame.origin.x, self->_unpinnedEventBackgroundFrame.origin.y, self->_unpinnedEventBackgroundFrame.size.width, self->_unpinnedEventBackgroundFrame.size.height];
        [(UIImageView *)self->_travelBackgroundView setFrame:self->_unpinnedTravelBackgroundFrame.origin.x, self->_unpinnedTravelBackgroundFrame.origin.y, self->_unpinnedTravelBackgroundFrame.size.width, self->_unpinnedTravelBackgroundFrame.size.height];
        [(EKDayOccurrenceView *)self _updateCornerRadius];
      }

      if ((v57 & 1) == 0)
      {
        v55 = [(UIImageView *)self->_travelBackgroundView layer];
        [v55 setCornerRadius:4.0];

        v56 = [(UIImageView *)self->_eventBackgroundView layer];
        [v56 setCornerRadius:4.0];
      }
    }

    bottomPinningState = v8;
  }

  self->_bottomPinningProximity = v4;
  self->_bottomPinningState = bottomPinningState;
}

uint64_t __49__EKDayOccurrenceView_setBottomPinningProximity___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 592) setAlpha:0.0];
  [*(*(a1 + 32) + 592) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = v2[74];

  return [v2 addSubview:v3];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EKDayOccurrenceView;
  v9 = 1;
  if (![(EKDayOccurrenceView *)&v11 pointInside:v7 withEvent:x, y])
  {
    startResizeHandle = self->_startResizeHandle;
    if (!startResizeHandle || ![(UIView *)startResizeHandle pointInside:v7 withEvent:x, y]&& ![(UIView *)self->_endResizeHandle pointInside:v7 withEvent:x, y])
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(EKDayOccurrenceView *)self setTouchesAreBeingTracked:1];
  if ([v6 count] == 1)
  {
    v8 = [v6 anyObject];
  }

  else
  {
    v8 = 0;
  }

  v14.receiver = self;
  v14.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v14 touchesBegan:v6 withEvent:v7];
  if (v8)
  {
    [v8 locationInView:self];
    v10 = v9;
    v12 = v11;
    if ([(EKDayOccurrenceView *)self pointInside:v7 withEvent:?])
    {
      if ([(EKDayOccurrenceView *)self isReminder])
      {
        if ([(EKDayOccurrenceView *)self pointInsideReminderCheckbox:v10, v12])
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      *(self + 480) = *(self + 480) & 0xFD | v13;
      *(self + 480) |= 1u;
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] == 1)
  {
    v8 = [v6 anyObject];
  }

  else
  {
    v8 = 0;
  }

  v9.receiver = self;
  v9.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v9 touchesMoved:v6 withEvent:v7];
  if (v8)
  {
    [v8 locationInView:self];
    if (![(EKDayOccurrenceView *)self pointInside:v7 withEvent:?])
    {
      *(self + 480) &= ~1u;
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count] == 1)
  {
    v8 = [v6 anyObject];
  }

  else
  {
    v8 = 0;
  }

  v29.receiver = self;
  v29.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v29 touchesEnded:v6 withEvent:v7];
  if ([(EKDayOccurrenceView *)self touchesAreBeingTracked])
  {
    if (v8)
    {
      [v8 locationInView:self];
      v10 = v9;
      v12 = v11;
      if (![(EKDayOccurrenceView *)self isReminder]|| (*(self + 480) & 2) == 0 || [(EKDayOccurrenceView *)self isReminderStack])
      {
        if ([(EKDayOccurrenceView *)self pointInside:v7 withEvent:v10, v12]&& (*(self + 480) & 1) != 0)
        {
          v13 = [v8 type] == 1 || objc_msgSend(v8, "type") == 3;
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v25 = objc_opt_respondsToSelector();

          if (v25)
          {
            v26 = objc_loadWeakRetained(&self->_delegate);
            [v26 dayOccurrenceViewSelected:self source:v13];
          }
        }

        goto LABEL_26;
      }

      if ([(EKDayOccurrenceView *)self pointInsideReminderCheckbox:v10, v12])
      {
        v14 = [(EKDayOccurrenceView *)self occurrence];
        v15 = [v14 CUIK_reminderShouldBeEditable];

        if (v15)
        {
          v16 = [(EKDayOccurrenceView *)self occurrence];
          [v16 setCompleted:[v16 completed]^ 1];
          v17 = [(UIResponder *)self EKUI_editor];
          v28 = 0;
          v18 = [v17 saveEvent:v16 span:0 error:&v28];
          v19 = v28;

          if (v18)
          {
            goto LABEL_25;
          }

          v20 = kEKUILogHandle;
          if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          *buf = 138412290;
          v31 = v19;
          v21 = "Error saving completion state: %@";
          v22 = v20;
          v23 = OS_LOG_TYPE_ERROR;
LABEL_24:
          _os_log_impl(&dword_1D3400000, v22, v23, v21, buf, 0xCu);
LABEL_25:

          goto LABEL_26;
        }

        v27 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v16 = v27;
          v19 = [(EKDayOccurrenceView *)self occurrence];
          *buf = 138412290;
          v31 = v19;
          v21 = "Tapped reminder isn't editable: %@";
          v22 = v16;
          v23 = OS_LOG_TYPE_DEBUG;
          goto LABEL_24;
        }
      }
    }

LABEL_26:
    [(EKDayOccurrenceView *)self setTouchesAreBeingTracked:0];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  *(self + 480) &= ~1u;
  v6 = a4;
  v7 = a3;
  [(EKDayOccurrenceView *)self setTouchesAreBeingTracked:0];
  v8.receiver = self;
  v8.super_class = EKDayOccurrenceView;
  [(EKDayOccurrenceView *)&v8 touchesCancelled:v7 withEvent:v6];
}

- (BOOL)pointInsideReminderCheckbox:(CGPoint)a3
{
  x = a3.x;
  v50 = *MEMORY[0x1E69E9840];
  v5 = [(EKDayOccurrenceView *)self currentImageState:a3.x];
  v6 = [v5 trailingIcons];
  v7 = [v6 count];

  if (v7)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = [v5 trailingIcons];
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v45 + 1) + 8 * i) size];
          v15 = v12 + v14;
          [MEMORY[0x1E6993420] occurrencePadding];
          v12 = v15 + v16;
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = 0.0;
  }

  [v5 textSpace];
  v18 = v17;
  v19 = [v5 leadingIcon];
  [v19 size];
  v21 = v18 - (v12 + v20);
  [MEMORY[0x1E6993420] hideIconBreakpoint];
  v23 = v22;

  if (v21 >= v23)
  {
    v25 = [v5 leadingIcon];
    [(UIImageView *)self->_contentView frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [MEMORY[0x1E69933F8] shared];
    v35 = [v34 interfaceIsLeftToRight];

    v36 = v27;
    v37 = v29;
    v38 = v31;
    v39 = v33;
    if (v35)
    {
      MinX = CGRectGetMinX(*&v36);
      [v25 size];
      v24 = x < MinX + v41 + 5.0;
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v36);
      [v25 size];
      v24 = x > MaxX - v43 + -5.0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)setDimmed:(BOOL)a3
{
  if (self->_dimmed != a3)
  {
    self->_dimmed = a3;
    [(EKDayOccurrenceView *)self updateAlpha];
  }
}

- (void)updateAlpha
{
  v3 = 1.0;
  if (self->_dimmed && !self->_selected)
  {
    v4 = [(EKDayOccurrenceView *)self currentImageState];
    v5 = [v4 userInterfaceStyle];

    v3 = 0.65;
    if (v5 != 2)
    {
      v3 = 0.5;
    }
  }

  [(EKDayOccurrenceView *)self setAlpha:v3];
}

- (int)dragTypeFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(EKDayOccurrenceView *)self bounds];
  v7 = v6;
  v9 = v8;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  if (IsLeftToRight)
  {
    v11 = v7 + -40.0;
  }

  else
  {
    v11 = 0.0;
  }

  if (IsLeftToRight)
  {
    v12 = v7;
  }

  else
  {
    v12 = 40.0;
  }

  if (IsLeftToRight)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7 + -40.0;
  }

  if (IsLeftToRight)
  {
    v7 = 40.0;
  }

  if (!self->_startResizeHandle && !self->_endResizeHandle)
  {
    return 1;
  }

  [(EKDayOccurrenceView *)self travelTime];
  v16 = v14 <= 0.0 || v11 >= x || x > v12;
  if (v16 || ([(EKDayOccurrenceView *)self travelTimeSubviewHeightInPoints], y >= v17 + 40.0) || ([(EKDayOccurrenceView *)self travelTimeSubviewHeightInPoints], y <= v18 + -40.0))
  {
    v19 = v11 >= x || x > v12;
    if (v19 || y >= 40.0)
    {
      if (v13 <= x && x < v7 && y > v9 + -40.0)
      {
        return 2;
      }

      return 1;
    }
  }

  return 0;
}

- (void)bringResizeHandlesToFront
{
  if ([(EKDayOccurrenceView *)self drawsResizeHandles])
  {
    v3 = [(EKDayOccurrenceView *)self superview];
    [v3 bringSubviewToFront:self->_startResizeHandle];

    v4 = [(EKDayOccurrenceView *)self superview];
    [v4 bringSubviewToFront:self->_endResizeHandle];
  }
}

+ (double)minNaturalTextHeightForEvent:(id)a3 usingSmallText:(BOOL)a4 sizeClass:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  [objc_opt_class() defaultMargin];
  v9 = v8;
  v11 = v10;
  [objc_opt_class() defaultPadding];
  v13 = v12;
  v15 = v14;
  [MEMORY[0x1E6993438] minNaturalTextHeightForEvent:v7 usingSmallText:v6 sizeClass:a5];
  v17 = v16;

  return v17 + v15 + v9 + v11 + v13;
}

- (double)viewMaxNaturalTextHeight
{
  v3 = [(EKDayOccurrenceView *)self currentImageState];
  [v3 minimumNaturalHeightAllText];
  v5 = v4;

  [(EKDayOccurrenceView *)self margin];
  v7 = v6;
  [(EKDayOccurrenceView *)self _verticalContentInset];
  v9 = v5 + v7 + v8;
  if (self->_showsTravelTime)
  {
    [(EKDayOccurrenceView *)self travelTimeSubviewHeightInPoints];
    return v9 + v10;
  }

  return v9;
}

- (double)enoughHeightForOneLine
{
  v3 = objc_opt_class();
  v4 = [(EKDayOccurrenceView *)self occurrences];
  [v3 enoughHeightForOneLineForEvents:v4 usingSmallText:-[EKDayOccurrenceView usesSmallText](self sizeClass:{"usesSmallText"), EKUIWidthSizeClassForViewHierarchy(self)}];
  v6 = v5;

  return v6;
}

+ (double)enoughHeightForOneLineForEvents:(id)a3 usingSmallText:(BOOL)a4 sizeClass:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 firstObject];
  if ([v8 isIntegrationEvent])
  {
    [MEMORY[0x1E6993438] naturalHeightForPrimaryTextUsingSmallText:v6 sizeClass:a5];
    v10 = v9 * 1.43;
    v11 = [v7 count];
    v12 = 3;
    if (v11 < 3)
    {
      v12 = v11;
    }

    v13 = v10 + (v12 - 1) * 2.0;
  }

  else
  {
    [MEMORY[0x1E6993438] minimumNaturalHeightForPrimaryTextUsingSmallText:v6 sizeClass:a5];
    v13 = v14;
  }

  if (([v8 isAllDay] & 1) == 0)
  {
    v15 = [v8 startCalendarDate];
    v16 = [v15 minute];

    if (v16)
    {
      CalRoundToScreenScale(0.5);
      v13 = v13 - v17;
    }
  }

  [objc_opt_class() defaultMargin];
  v19 = v18;
  v21 = v20;
  [objc_opt_class() defaultPadding];
  CalRoundToScreenScale(v13 + v23 + v19 + v21 + v22);
  v25 = v24;

  return v25;
}

- (double)_verticalContentInset
{
  v3 = 0.0;
  if ([(EKDayOccurrenceView *)self _isTimedOccurrenceDrawingStyle])
  {
    v4 = [(EKDayOccurrenceView *)self occurrence];
    v5 = [v4 startCalendarDate];
    v6 = [v5 minute];

    if (v6)
    {
      CalRoundToScreenScale(0.5);
      return 0.0 - v7;
    }
  }

  return v3;
}

+ (double)barToBarHorizontalDistanceIncludingBarWidth
{
  [a1 barToBarGapWidth];
  v4 = v3;
  [MEMORY[0x1E6993420] colorBarThickness];
  v6 = v4 + v5;
  [a1 barToBarGapWidth];
  return v6 + v7;
}

- (void)fadeInContentViewAt:(double)a3 minWidth:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  [(UIImageView *)self->_contentView frame];
  if (v10 - (a3 - v9) >= a4 - (self->_margin.right + self->_padding.right))
  {
    if ((*(self + 480) & 4) == 0)
    {
      self->_originalXBeforeOffset = v9;
      *(self + 480) |= 4u;
    }

    [(UIImageView *)self->_contentView setFrame:self->_originalXBeforeOffset + a3];
    [(UIImageView *)self->_contentView setHidden:0];
    [(UIImageView *)self->_contentView setNeedsDisplay];
    contentView = self->_contentView;
    if (v5)
    {
      [(UIImageView *)contentView setAlpha:0.0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __61__EKDayOccurrenceView_fadeInContentViewAt_minWidth_animated___block_invoke;
      v12[3] = &unk_1E843EC60;
      v12[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.15];
    }

    else
    {

      [(UIImageView *)contentView setAlpha:1.0];
    }
  }
}

- (BOOL)resetContentViewToOriginalState:(BOOL)a3
{
  if ((*(self + 480) & 4) == 0)
  {
    return 0;
  }

  v7[5] = v3;
  v7[6] = v4;
  if (a3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__EKDayOccurrenceView_resetContentViewToOriginalState___block_invoke;
    v7[3] = &unk_1E843EC60;
    v7[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__EKDayOccurrenceView_resetContentViewToOriginalState___block_invoke_2;
    v6[3] = &unk_1E843EC10;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.2];
    return 1;
  }

  else
  {
    [(EKDayOccurrenceView *)self _resetContentViewPosition];
    return 0;
  }
}

uint64_t __55__EKDayOccurrenceView_resetContentViewToOriginalState___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _resetContentViewPosition];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__EKDayOccurrenceView_resetContentViewToOriginalState___block_invoke_3;
  v3[3] = &unk_1E843EC60;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.2];
}

- (void)_resetContentViewPosition
{
  if ((*(self + 480) & 4) != 0)
  {
    [(UIImageView *)self->_contentView frame];
    [(UIImageView *)self->_contentView setFrame:v3 + self->_originalXBeforeOffset - v3];
    *(self + 480) &= ~4u;
    self->_originalXBeforeOffset = -1.0;
    contentView = self->_contentView;

    [(UIImageView *)contentView setNeedsDisplay];
  }
}

- (void)setHideText:(BOOL)a3 animate:(BOOL)a4
{
  if (self->_hideText != a3)
  {
    v6 = 1.0;
    if (a3)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (a4)
    {
      if (!a3)
      {
        v6 = 0.0;
      }

      [(UIImageView *)self->_contentView setAlpha:v6];
      [(EKDayOccurrenceView *)self setHideText:0];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43__EKDayOccurrenceView_setHideText_animate___block_invoke;
      v10[3] = &unk_1E843F690;
      v10[4] = self;
      *&v10[5] = v7;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__EKDayOccurrenceView_setHideText_animate___block_invoke_2;
      v8[3] = &unk_1E8442A80;
      v8[4] = self;
      v9 = a3;
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v8 completion:0.3];
    }

    else
    {
      [(UIImageView *)self->_contentView setAlpha:v7];
      self->_hideText = a3;
    }
  }
}

- (int64_t)compareOccurrenceViewForTabOrdering:(id)a3
{
  v4 = a3;
  v5 = [(EKDayOccurrenceView *)self _compareOccurrenceViewTopToBottomLeftToRight:v4];
  if (!v5)
  {
    v5 = [(EKDayOccurrenceView *)self _compareOccurrenceViewForSelectedCopyOrdering:v4];
  }

  return v5;
}

- (int64_t)_compareOccurrenceViewForSelectedCopyOrdering:(id)a3
{
  v4 = a3;
  if ([(EKDayOccurrenceView *)self isSelectedCopyView])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isSelectedCopyView] << 63 >> 63;
  }

  return v5;
}

- (int64_t)_compareOccurrenceViewTopToBottomLeftToRight:(id)a3
{
  v4 = a3;
  v5 = [(EKDayOccurrenceView *)self _compareOccurrenceViewTopToBottom:v4];
  if (!v5)
  {
    v5 = [(EKDayOccurrenceView *)self _compareOccurrenceViewLeftToRight:v4];
  }

  return v5;
}

- (int64_t)_compareOccurrenceViewTopToBottom:(id)a3
{
  v4 = a3;
  v5 = [(EKDayOccurrenceView *)self occurrence];
  [v5 duration];
  if (v6 == 0.0)
  {
    v7 = [v4 occurrence];
    [v7 duration];
    v9 = v8;

    if (v9 == 0.0)
    {
      v10 = [(EKDayOccurrenceView *)self occurrence];
      v11 = [v10 startDate];
      v12 = [v4 occurrence];
      v13 = [v12 startDate];
      v14 = [v11 compare:v13];

      if (!v14)
      {
        v15 = 0;
        goto LABEL_15;
      }
    }
  }

  else
  {
  }

  v16 = [(EKDayOccurrenceView *)self occurrence];
  [v16 duration];
  v18 = v17 * 0.25;

  v19 = [v4 occurrence];
  [v19 duration];
  v21 = v20 * 0.25;

  if (v18 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v18;
  }

  if (v22 <= 300.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 300.0;
  }

  if ([(EKDayOccurrenceView *)self _isBelowOccurrenceView:v4 overlapToIgnore:v23])
  {
    v15 = 1;
  }

  else
  {
    v15 = [(EKDayOccurrenceView *)self _isAboveOccurrenceView:v4 overlapToIgnore:v23]<< 63 >> 63;
  }

LABEL_15:

  return v15;
}

- (BOOL)_isAboveOccurrenceView:(id)a3 overlapToIgnore:(double)a4
{
  v6 = a3;
  v7 = [v6 occurrence];
  v8 = [v7 isAllDay];

  if (v8)
  {
    v9 = [(EKDayOccurrenceView *)self _isAboveAllDayOccurrenceView:v6];
  }

  else
  {
    v10 = [v6 occurrence];

    v11 = [v10 startDate];
    v12 = [(EKDayOccurrenceView *)self occurrence];
    v13 = [v12 endDateUnadjustedForLegacyClients];
    [v11 timeIntervalSinceDate:v13];
    v9 = v14 >= -a4;

    v6 = v10;
  }

  return v9;
}

- (BOOL)_isAboveAllDayOccurrenceView:(id)a3
{
  v4 = a3;
  v5 = [(EKDayOccurrenceView *)self occurrence];
  v6 = [v5 startDate];
  v7 = [v4 occurrence];
  v8 = [v7 startDate];
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v6 compareDateIgnoringTimeComponents:v8 inCalendar:v9];

  if (v10 == -1)
  {
    v11 = 1;
  }

  else if (v10 == 1)
  {
    v11 = 0;
  }

  else
  {
    [(EKDayOccurrenceView *)self frame];
    v13 = v12;
    [v4 frame];
    v11 = v13 < v14;
  }

  return v11;
}

- (BOOL)_isBelowOccurrenceView:(id)a3 overlapToIgnore:(double)a4
{
  v6 = a3;
  v7 = [v6 occurrence];
  v8 = [v7 isAllDay];

  if (v8)
  {
    v9 = [(EKDayOccurrenceView *)self _isBelowAllDayOccurrenceView:v6];
  }

  else
  {
    v10 = [(EKDayOccurrenceView *)self occurrence];
    v11 = [v10 startDate];
    v12 = [v6 occurrence];
    v13 = [v12 endDateUnadjustedForLegacyClients];
    [v11 timeIntervalSinceDate:v13];
    v9 = v14 >= -a4;
  }

  return v9;
}

- (BOOL)_isBelowAllDayOccurrenceView:(id)a3
{
  v4 = a3;
  v5 = [(EKDayOccurrenceView *)self occurrence];
  v6 = [v5 startDate];
  v7 = [v4 occurrence];
  v8 = [v7 startDate];
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v6 compareDateIgnoringTimeComponents:v8 inCalendar:v9];

  if (v10 == -1)
  {
    v11 = 0;
  }

  else if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    [(EKDayOccurrenceView *)self frame];
    v13 = v12;
    [v4 frame];
    v11 = v13 > v14;
  }

  return v11;
}

- (int64_t)_compareOccurrenceViewLeftToRight:(id)a3
{
  v4 = a3;
  [(EKDayOccurrenceView *)self frame];
  v6 = v5;
  [v4 frame];
  if (v6 >= v7)
  {
    [(EKDayOccurrenceView *)self frame];
    v10 = v9;
    [v4 frame];
    v8 = v10 > v11;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)setReduceLayoutProcessingForAnimation:(BOOL)a3
{
  if (self->_reduceLayoutProcessingForAnimation != a3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__EKDayOccurrenceView_setReduceLayoutProcessingForAnimation___block_invoke;
    v7[3] = &unk_1E84407B0;
    v7[4] = self;
    v8 = a3;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
    self->_reduceLayoutProcessingForAnimation = a3;
    [(UIImageView *)self->_contentView frame];
    self->_contentLocationDuringReducedProcessing.x = v5;
    self->_contentLocationDuringReducedProcessing.y = v6;
  }
}

uint64_t __61__EKDayOccurrenceView_setReduceLayoutProcessingForAnimation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 702) ^ 1;
  }

  [*(v2 + 664) setEnabled:v3 & 1];
  v4 = *(*(a1 + 32) + 664);

  return [v4 invalidate];
}

- (void)setPointerInteractionDisabled:(BOOL)a3
{
  if (self->_pointerInteractionDisabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_pointerInteractionDisabled = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__EKDayOccurrenceView_setPointerInteractionDisabled___block_invoke;
    v5[3] = &unk_1E843EC60;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

uint64_t __53__EKDayOccurrenceView_setPointerInteractionDisabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 701))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 702) ^ 1;
  }

  [*(v2 + 664) setEnabled:v3 & 1];
  v4 = *(*(a1 + 32) + 664);

  return [v4 invalidate];
}

- (void)_removeEditMenuInteractionIfNeeded
{
  v3 = [(EKDayOccurrenceView *)self interactions];
  v4 = [v3 containsObject:self->_editMenuInteraction];

  if (v4)
  {
    editMenuInteraction = self->_editMenuInteraction;

    [(EKDayOccurrenceView *)self removeInteraction:editMenuInteraction];
  }
}

- (void)_setEditingMenuEnabled:(BOOL)a3
{
  if (a3)
  {
    [(EKDayOccurrenceView *)self _addEditMenuInteractionIfNeeded];
  }

  else
  {
    [(EKDayOccurrenceView *)self _removeEditMenuInteractionIfNeeded];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  [(EKDayOccurrenceView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (![(EKDayOccurrenceView *)self isAllDay])
  {
    top = self->_margin.top;
    left = self->_margin.left;
    bottom = self->_margin.bottom;
    right = self->_margin.right;
    v19 = top + CalOnePixelInPoints();
    v8 = v8 + left;
    v10 = v10 + v19;
    v12 = v12 - (left + right);
    v14 = v14 - (bottom + v19);
  }

  [v6 location];
  v25.x = v20;
  v25.y = v21;
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  if (CGRectContainsPoint(v26, v25))
  {
    v22 = [MEMORY[0x1E69DCDC0] regionWithRect:0 identifier:{v8, v10, v12, v14}];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = self;
  v6 = a4;
  v7 = [(EKDayOccurrenceView *)v5 delegate];
  v8 = objc_opt_respondsToSelector();

  v9 = v5;
  if (v8)
  {
    v10 = [(EKDayOccurrenceView *)v5 delegate];
    v11 = [v10 selectedCopyViewForDayOccurrenceView:v5];

    v9 = v5;
    if (v11)
    {
      v9 = v11;
    }
  }

  v12 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v6 rect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(EKDayOccurrenceView *)v9 convertRect:v5 fromView:v14, v16, v18, v20];
  v21 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
  [v12 setVisiblePath:v21];

  v22 = [MEMORY[0x1E69DC888] clearColor];
  [v12 setBackgroundColor:v22];

  v23 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v9 parameters:v12];
  v24 = [MEMORY[0x1E69DCDA8] effectWithPreview:v23];
  [v24 setPreferredTintMode:1];
  [v24 setPrefersShadow:0];
  [v24 setPrefersScaledContent:0];
  v25 = [MEMORY[0x1E69DCDD0] styleWithEffect:v24 shape:0];

  return v25;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dayOccurrenceViewSelected:self source:2];

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 selectedEventsForEditMenu];
  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = [v10 presentationControllerForEditMenu];
  editMenuPresented = self->_editMenuPresented;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__EKDayOccurrenceView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke;
  v17[3] = &unk_1E8442AA8;
  v17[4] = self;
  v13 = [EKUIContextMenuActions menuForEvents:v9 presentationController:v11 isEditMenu:editMenuPresented overrideActionBlock:v17 completionBlock:0];

  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count") + 1}];
  [v14 addObjectsFromArray:v6];

  [v14 addObject:v13];
  v15 = [MEMORY[0x1E69DCC60] menuWithChildren:v14];

  return v15;
}

uint64_t __81__EKDayOccurrenceView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 648));
  [WeakRetained endForcedStartAndUndim];

  objc_storeWeak((*(a1 + 32) + 648), 0);
  return 0;
}

- (void)presentEditingMenuFromGestureController:(id)a3
{
  obj = a3;
  v4 = [(EKDayOccurrenceView *)self superview];

  if (v4)
  {
    objc_storeWeak(&self->_gestureController, obj);
    self->_editMenuPresented = 1;
    [(EKDayOccurrenceView *)self _setEditingMenuEnabled:1];
    [(EKDayOccurrenceView *)self bounds];
    MidX = CGRectGetMidX(v9);
    [(EKDayOccurrenceView *)self bounds];
    v6 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:0 sourcePoint:{MidX, CGRectGetMinY(v10)}];
    [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v6];
  }
}

- (void)dismissEditingMenu
{
  [(EKDayOccurrenceView *)self _setEditingMenuEnabled:0];
  objc_storeWeak(&self->_gestureController, 0);
  self->_editMenuPresented = 0;
}

- (EKDayOccurrenceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end