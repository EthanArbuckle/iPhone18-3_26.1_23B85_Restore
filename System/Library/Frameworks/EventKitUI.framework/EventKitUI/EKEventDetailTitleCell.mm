@interface EKEventDetailTitleCell
+ (id)_locationFont;
+ (id)_scaledLocationFont;
+ (id)_scaledTitleFont;
+ (id)_titleFont;
+ (void)_invalidateCachedFonts;
+ (void)_registerForInvalidation;
- (BOOL)_shouldShowConferenceCell;
- (BOOL)_shouldShowSuggestedLocationCell;
- (BOOL)conferenceCellShouldPresentShareSheet:(id)a3;
- (BOOL)update;
- (EKEventDetailTitleCell)initWithEvent:(id)a3 editable:(BOOL)a4 style:(int64_t)a5;
- (EKEventDetailTitleCellDelegate)delegate;
- (UIView)sourceViewForPopover;
- (double)_layoutForWidth:(double)a3;
- (id)_conferenceDetailView;
- (id)_dateTimeViewForLine:(unint64_t)a3 color:(id)a4;
- (id)_editButton;
- (id)_recurrenceButton;
- (id)_recurrenceView;
- (id)_statusView;
- (id)_suggestedLocationCell;
- (id)_titleView;
- (id)_travelTimeView;
- (id)owningViewController;
- (void)_promptForSpanWithSourceView:(id)a3 completionBlock:(id)a4;
- (void)_saveEventWithSpan:(int64_t)a3;
- (void)_setDateTimeString:(id)a3 line:(unint64_t)a4 color:(id)a5;
- (void)_updateSeparatorStyle;
- (void)addLocation:(id)a3;
- (void)conferenceCell:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5;
- (void)conferenceCellUpdated:(id)a3;
- (void)contentSizeCategoryChanged:(id)a3;
- (void)dealloc;
- (void)didTapAddSuggestedLocationCell:(id)a3 disambiguatedLocation:(id)a4;
- (void)didTapDismissSuggestedLocationCell:(id)a3;
- (void)editButtonTapped;
- (void)handleTapOnLabel:(id)a3;
- (void)layoutForWidth:(double)a3 position:(int)a4;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)nextButtonTapped;
- (void)previousButtonTapped;
- (void)setHideBottomCellSeparator:(BOOL)a3;
- (void)setHideTopCellSeparator:(BOOL)a3;
- (void)setNumberOfTitleLines:(unint64_t)a3;
- (void)setPrimaryTextColor:(id)a3;
- (void)setRecurrenceString:(id)a3;
- (void)setStatusString:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTravelTimeString:(id)a3;
- (void)showRecurrenceDiff:(id)a3;
@end

@implementation EKEventDetailTitleCell

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = EKEventDetailTitleCell;
  [(EKEventDetailTitleCell *)&v4 dealloc];
}

+ (void)_registerForInvalidation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EKEventDetailTitleCell__registerForInvalidation__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_registerForInvalidation_onceToken != -1)
  {
    dispatch_once(&_registerForInvalidation_onceToken, block);
  }
}

void __50__EKEventDetailTitleCell__registerForInvalidation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__invalidateCachedFonts name:*MEMORY[0x1E69DDC48] object:0];
}

- (EKEventDetailTitleCell)initWithEvent:(id)a3 editable:(BOOL)a4 style:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = EKEventDetailTitleCell;
  v9 = [(EKEventDetailCell *)&v12 initWithEvent:v8 editable:v6 style:a5];
  if (v9)
  {
    [MEMORY[0x1E6966A50] geocodeEventIfNeeded:v8];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v9 selector:sel_contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v9;
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = EKEventDetailTitleCell;
  [(EKEventDetailCell *)&v4 layoutMarginsDidChange];
  [(EKEventDetailTitleCell *)self frame];
  [(EKEventDetailTitleCell *)self layoutForWidth:self->_lastPosition position:v3];
}

- (void)contentSizeCategoryChanged:(id)a3
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [(UIButton *)self->_editButton titleLabel];
  [v4 setFont:v5];
}

- (UIView)sourceViewForPopover
{
  editButton = self->_editButton;
  if (!editButton)
  {
    editButton = self->_titleView;
    if (!editButton)
    {
      editButton = self;
    }
  }

  return editButton;
}

- (void)setTitle:(id)a3
{
  v17 = a3;
  v4 = [v17 length];
  v5 = [(EKEventDetailTitleCell *)self _titleView];
  v6 = v5;
  if (v4)
  {
    [v5 setText:v17];

    if ([(EKEventDetailTitleCell *)self nonInteractivePlatterMode])
    {
      v7 = CUIKCurrentLocaleRequiresIndianLanguageAdjustments();
    }

    else
    {
      v7 = 0;
    }

    if ([(EKEvent *)self->super._event status]!= EKEventStatusCanceled)
    {
      goto LABEL_12;
    }

    v10 = objc_opt_class();
    if (v7)
    {
      [v10 _scaledTitleFont];
    }

    else
    {
      [v10 _titleFont];
    }
    v6 = ;
    v11 = MEMORY[0x1E695DF20];
    v12 = *MEMORY[0x1E69DB648];
    v13 = [MEMORY[0x1E69DC888] labelColor];
    v14 = *MEMORY[0x1E69DB650];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v8 = [v11 dictionaryWithObjectsAndKeys:{v6, v12, v13, v14, v15, *MEMORY[0x1E69DB6B8], 0}];

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17 attributes:v8];
    v16 = [(EKEventDetailTitleCell *)self _titleView];
    [v16 setAttributedText:v9];
  }

  else
  {
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"Untitled event" value:@"New Event" table:0];
    [v6 setText:v9];
  }

LABEL_12:
  self->_visibleItems |= 1u;
}

- (void)_setDateTimeString:(id)a3 line:(unint64_t)a4 color:(id)a5
{
  v10 = a3;
  v8 = a5;
  if (-[NSMutableArray count](self->_dateTimeViews, "count") > a4 || [v10 length])
  {
    v9 = [(EKEventDetailTitleCell *)self _dateTimeViewForLine:a4 color:v8];
    [v9 setText:v10];
  }
}

- (void)setTravelTimeString:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(EKEventDetailTitleCell *)self _travelTimeView];
    [v4 setText:v6];

    v5 = self->_visibleItems | 0x10;
  }

  else
  {
    v5 = self->_visibleItems & 0xFFFFFFEF;
  }

  self->_visibleItems = v5;
}

- (void)setRecurrenceString:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = [(EKEventDetailTitleCell *)self _recurrenceView];
    [v4 setText:v7];

    v5 = [(EKEventDetailTitleCell *)self _recurrenceButton];
    [v5 setTitle:v7 forState:0];

    v6 = self->_visibleItems | 0x20;
  }

  else
  {
    v6 = self->_visibleItems & 0xFFFFFFDF;
  }

  self->_visibleItems = v6;
}

- (void)setStatusString:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(EKEventDetailTitleCell *)self _statusView];
    [v4 setText:v6];

    v5 = self->_visibleItems | 0x40;
  }

  else
  {
    v5 = self->_visibleItems & 0xFFFFFFBF;
  }

  self->_visibleItems = v5;
}

- (void)setPrimaryTextColor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UILabel *)self->_titleView setTextColor:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_locationItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) locationView];
        [v10 setTextColor:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setNumberOfTitleLines:(unint64_t)a3
{
  if (self->_numberOfTitleLines != a3)
  {
    self->_numberOfTitleLines = a3;
    [(UILabel *)self->_titleView setNumberOfLines:?];
  }
}

+ (void)_invalidateCachedFonts
{
  os_unfair_lock_lock(&_fontLock);
  v2 = s_titleFont;
  s_titleFont = 0;

  v3 = s_scaledTitleFont;
  s_scaledTitleFont = 0;

  v4 = s_locationFont;
  s_locationFont = 0;

  v5 = s_scaledLocationFont;
  s_scaledLocationFont = 0;

  os_unfair_lock_unlock(&_fontLock);
}

+ (id)_titleFont
{
  [a1 _registerForInvalidation];
  os_unfair_lock_lock(&_fontLock);
  v2 = s_titleFont;
  if (!s_titleFont)
  {
    v3 = [MEMORY[0x1E69DB880] _preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB980]];
    v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
    v5 = s_titleFont;
    s_titleFont = v4;

    v2 = s_titleFont;
  }

  v6 = v2;
  os_unfair_lock_unlock(&_fontLock);

  return v6;
}

+ (id)_scaledTitleFont
{
  [a1 _registerForInvalidation];
  os_unfair_lock_lock(&_fontLock);
  v2 = s_scaledTitleFont;
  if (!s_scaledTitleFont)
  {
    v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v4 lineHeight];
    CalRoundToScreenScale(v5 * 1.5);
    v6 = [v3 fontWithSize:?];
    v7 = s_scaledTitleFont;
    s_scaledTitleFont = v6;

    v2 = s_scaledTitleFont;
  }

  v8 = v2;
  os_unfair_lock_unlock(&_fontLock);

  return v8;
}

+ (id)_locationFont
{
  [a1 _registerForInvalidation];
  os_unfair_lock_lock(&_fontLock);
  v2 = s_locationFont;
  if (!s_locationFont)
  {
    v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v4 = s_locationFont;
    s_locationFont = v3;

    v2 = s_locationFont;
  }

  v5 = v2;
  os_unfair_lock_unlock(&_fontLock);

  return v5;
}

+ (id)_scaledLocationFont
{
  [a1 _registerForInvalidation];
  os_unfair_lock_lock(&_fontLock);
  v2 = s_scaledLocationFont;
  if (!s_scaledLocationFont)
  {
    v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v4 = s_scaledLocationFont;
    s_scaledLocationFont = v3;

    v2 = s_scaledLocationFont;
  }

  v5 = v2;
  os_unfair_lock_unlock(&_fontLock);

  return v5;
}

- (void)addLocation:(id)a3
{
  v7 = a3;
  if ([v7 length] && +[EKEventDetailLocationItem isValidLocation:event:](EKEventDetailLocationItem, "isValidLocation:event:", v7, self->super._event))
  {
    if (!self->_locationItems)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      locationItems = self->_locationItems;
      self->_locationItems = v4;
    }

    v6 = [[EKEventDetailLocationItem alloc] initWithLocationName:v7 forEvent:self->super._event];
    [(EKEventDetailLocationItem *)v6 setHasMapItemLaunchOptionFromTimeToLeaveNotification:[(EKEventDetailTitleCell *)self hasMapItemLaunchOptionFromTimeToLeaveNotification]];
    [(EKEventDetailLocationItem *)v6 updateAttributedString];
    [(NSMutableArray *)self->_locationItems addObject:v6];
    self->_visibleItems |= 2u;
  }
}

- (BOOL)update
{
  v122 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6966A50] geocodeEventIfNeeded:self->super._event];
  self->_visibleItems = 0;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v3 = self->_locationItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v113 objects:v121 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v114;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v114 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v113 + 1) + 8 * i) locationView];
        [v8 removeFromSuperview];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v113 objects:v121 count:16];
    }

    while (v5);
  }

  locationItems = self->_locationItems;
  self->_locationItems = 0;

  v93 = [(EKEvent *)self->super._event status];
  v10 = [(EKEvent *)self->super._event title];
  [(EKEventDetailTitleCell *)self setTitle:v10];

  v11 = [(EKEvent *)self->super._event locationsWithoutPrediction];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v109 objects:v120 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v110;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v110 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(EKEventDetailTitleCell *)self addLocation:*(*(&v109 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v109 objects:v120 count:16];
    }

    while (v13);
  }

  v16 = [(EKEvent *)self->super._event attendees];
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __32__EKEventDetailTitleCell_update__block_invoke;
  v108[3] = &unk_1E84414F0;
  v108[4] = self;
  [v16 enumerateObjectsUsingBlock:v108];

  if ([(EKEventDetailTitleCell *)self _shouldShowSuggestedLocationCell])
  {
    v17 = [(EKEventDetailTitleCell *)self _suggestedLocationCell];
    [v17 setEvent:self->super._event];

    self->_visibleItems |= 0x100u;
  }

  if ([(EKEventDetailTitleCell *)self _shouldShowConferenceCell])
  {
    v18 = [(EKEventDetailTitleCell *)self _conferenceDetailView];
    [v18 update];

    self->_visibleItems |= 0x200u;
  }

  v19 = [(EKEvent *)self->super._event calendar];
  v92 = v19;
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self))
  {
    [(EKEventDetailTitleCell *)self setColor:0];
  }

  else
  {
    v20 = [(EKEvent *)self->super._event eventStore];
    v21 = [v20 colorForCalendar:v19];
    [(EKEventDetailTitleCell *)self setColor:v21];
  }

  v22 = EKUIWidthSizeClassForViewHierarchy(self);
  if (!v22)
  {
    v23 = [(EKEventDetailTitleCell *)self traitCollection];
    v22 = [v23 horizontalSizeClass];

    v24 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v119 = v22;
      _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_ERROR, "Size class from EKUIWidthSizeClassForViewHierarchy was unspecified, so fall back to getting size class from view's trait collection [%ld]", buf, 0xCu);
    }

    if (!v22)
    {
      v25 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = 1;
        v119 = 1;
        _os_log_impl(&dword_1D3400000, v25, OS_LOG_TYPE_ERROR, "Size class from view's trait collection was unspecified, so fall back to default size class [%ld]", buf, 0xCu);
      }

      else
      {
        v22 = 1;
      }
    }
  }

  event = self->super._event;
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v90 = [(EKEventDetailTitleCell *)self delegate];
  v88 = [v90 proposedTime];
  CalDetailStringsForCalendarEvent(event, v22, &v107, &v106, &v105, &v104, &v103, &v102, &v101, &v100, v88, 0);
  v27 = v107;
  v28 = v106;
  v29 = v105;
  v30 = v104;
  v31 = v103;
  v32 = v102;
  v33 = v101;
  v34 = v100;

  v91 = v27;
  v85 = v31;
  [(EKEventDetailTitleCell *)self _setDateTimeString:v27 line:0 color:v31];
  v89 = v28;
  v84 = v32;
  [(EKEventDetailTitleCell *)self _setDateTimeString:v28 line:1 color:v32];
  v87 = v29;
  v83 = v33;
  [(EKEventDetailTitleCell *)self _setDateTimeString:v29 line:2 color:v33];
  v86 = v30;
  v82 = v34;
  [(EKEventDetailTitleCell *)self _setDateTimeString:v30 line:3 color:v34];
  [(EKEvent *)self->super._event travelTime];
  if (v35 == 0.0)
  {
    [(EKEventDetailTitleCell *)self setTravelTimeString:0];
  }

  else
  {
    [(EKEvent *)self->super._event travelTime];
    v36 = CUIKDisplayStringTravelTimeAndDuration();
    [(EKEventDetailTitleCell *)self setTravelTimeString:v36];
  }

  v37 = v93;
  if (![(EKEvent *)self->super._event isOrWasPartOfRecurringSeries])
  {
    v38 = 0;
    goto LABEL_39;
  }

  v38 = [(EKEvent *)self->super._event singleRecurrenceRule];
  if (!v38)
  {
LABEL_39:
    v45 = 0;
    goto LABEL_40;
  }

  v39 = [(EKEvent *)self->super._event startDate];
  v40 = CUIKStringForRecurrenceRule();

  v41 = MEMORY[0x1E696AEC0];
  v42 = EventKitUIBundle();
  v43 = [v42 localizedStringForKey:@"Repeats %@" value:&stru_1F4EF6790 table:0];
  if (v40)
  {
    v44 = v40;
  }

  else
  {
    v44 = &stru_1F4EF6790;
  }

  v45 = [v41 localizedStringWithFormat:v43, v44];

  v37 = v93;
LABEL_40:
  if (v37 == EKEventStatusCanceled)
  {
    v46 = EventKitUIBundle();
    v47 = [v46 localizedStringForKey:@"Event has been canceled" value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v47 = 0;
  }

  [(EKEventDetailTitleCell *)self setRecurrenceString:v45];
  [(EKEventDetailTitleCell *)self setStatusString:v47];
  if (!self->_observingLocaleChanges)
  {
    v48 = [MEMORY[0x1E696AD88] defaultCenter];
    [v48 addObserver:self selector:sel_update name:*MEMORY[0x1E6993308] object:0];

    self->_observingLocaleChanges = 1;
  }

  if ([(EKEventDetailTitleCell *)self nonInteractivePlatterMode]&& (CUIKCurrentLocaleRequiresIndianLanguageAdjustments() & 1) != 0)
  {
    v49 = [objc_opt_class() _scaledTitleFont];
    v50 = 1;
  }

  else
  {
    v49 = [objc_opt_class() _titleFont];
    v50 = 0;
  }

  v79 = v49;
  [(UILabel *)self->_titleView setFont:v49];
  titleView = self->_titleView;
  v52 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)titleView setTextColor:v52];

  v53 = objc_opt_class();
  v80 = v47;
  v81 = v45;
  if (v50)
  {
    [v53 _scaledLocationFont];
  }

  else
  {
    [v53 _locationFont];
  }
  v54 = ;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v55 = self->_locationItems;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v96 objects:v117 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v97;
    do
    {
      for (k = 0; k != v57; ++k)
      {
        if (*v97 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v96 + 1) + 8 * k) locationView];
        [v60 setFont:v54];
      }

      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v96 objects:v117 count:16];
    }

    while (v57);
  }

  travelTimeView = self->_travelTimeView;
  v62 = [objc_opt_class() _locationFont];
  [(UILabel *)travelTimeView setFont:v62];

  v63 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_travelTimeView setTextColor:v63];

  dateTimeViews = self->_dateTimeViews;
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __32__EKEventDetailTitleCell_update__block_invoke_235;
  v94[3] = &unk_1E8441D10;
  v65 = v54;
  v95 = v65;
  [(NSMutableArray *)dateTimeViews enumerateObjectsUsingBlock:v94];
  recurrenceView = self->_recurrenceView;
  v67 = [objc_opt_class() _locationFont];
  [(UILabel *)recurrenceView setFont:v67];

  v68 = self->_recurrenceView;
  v69 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v68 setTextColor:v69];

  statusView = self->_statusView;
  v71 = [objc_opt_class() _locationFont];
  [(UILabel *)statusView setFont:v71];

  v72 = self->_statusView;
  if (v93 == EKEventStatusCanceled)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v73 = ;
  [(UILabel *)v72 setTextColor:v73];

  [(UILabel *)self->_travelTimeView setLineBreakMode:0];
  v74 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v74 pointSize];
  v76 = v75;

  if (v76 >= 18.5)
  {
    [(UILabel *)self->_recurrenceView setLineBreakMode:0];
    [(UILabel *)self->_statusView setLineBreakMode:0];
    v77 = 0;
  }

  else
  {
    v77 = 1;
  }

  [(UILabel *)self->_statusView setNumberOfLines:v77];

  return 1;
}

void __32__EKEventDetailTitleCell_update__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 participantType] == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(*(a1 + 32) + 1128);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) locationTitle];
        v10 = [v3 name];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v12 = *(a1 + 32);
      v4 = [v3 name];
      [v12 addLocation:v4];
    }
  }
}

void __32__EKEventDetailTitleCell_update__block_invoke_235(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setFont:*(a1 + 32)];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 pointSize];
  v5 = v4;

  if (v5 >= 18.5)
  {
    [v7 setLineBreakMode:0];
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  [v7 setNumberOfLines:v6];
}

- (BOOL)_shouldShowSuggestedLocationCell
{
  if (MEMORY[0x1D38B98D0](self, a2))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(EKEvent *)self->super._event preferredLocation];
    if ([v4 isStructured] && objc_msgSend(v4, "isPrediction"))
    {
      v5 = [(EKEventDetailTitleCell *)self delegate];
      v6 = [v5 proposedTime];
      if (v6)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        v7 = [(EKEventDetailTitleCell *)self delegate];
        v3 = [v7 minimalMode] ^ 1;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_shouldShowConferenceCell
{
  if (MEMORY[0x1D38B98D0](self, a2))
  {
    return 0;
  }

  v4 = [(EKEventDetailTitleCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKEventDetailTitleCell *)self delegate];
    v7 = [v6 showsDetectedConferenceItem];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(EKEvent *)self->super._event virtualConference];
  if (v8)
  {
    v3 = 1;
  }

  else
  {
    v9 = [(EKEvent *)self->super._event conferenceURLForDisplay];
    v3 = (v9 != 0) & v7;
  }

  return v3;
}

- (void)editButtonTapped
{
  v3 = [(EKEventDetailTitleCell *)self delegate];

  if (v3)
  {
    v4 = [(EKEventDetailTitleCell *)self delegate];
    [v4 editButtonPressed];
  }
}

- (void)nextButtonTapped
{
  v3 = [(EKEventDetailTitleCell *)self delegate];

  if (v3)
  {
    v4 = [(EKEventDetailTitleCell *)self delegate];
    [v4 nextButtonPressed];
  }
}

- (void)previousButtonTapped
{
  v3 = [(EKEventDetailTitleCell *)self delegate];

  if (v3)
  {
    v4 = [(EKEventDetailTitleCell *)self delegate];
    [v4 previousButtonPressed];
  }
}

- (void)showRecurrenceDiff:(id)a3
{
  v4 = a3;
  v5 = [EKUIRecurrenceDifferenceViewController alloc];
  v6 = [(EKEventDetailCell *)self event];
  v10 = [(EKUIRecurrenceDifferenceViewController *)v5 initWithEvent:v6 andSummary:v4];

  v7 = [(EKEventDetailTitleCell *)self delegate];
  v8 = [v7 owningViewController];
  v9 = [v8 navigationController];
  [v9 pushViewController:v10 animated:1];
}

- (void)setHideTopCellSeparator:(BOOL)a3
{
  if (self->_hideTopCellSeparator != a3)
  {
    self->_hideTopCellSeparator = a3;
    [(EKEventDetailTitleCell *)self _updateSeparatorStyle];
  }
}

- (void)setHideBottomCellSeparator:(BOOL)a3
{
  if (self->_hideBottomCellSeparator != a3)
  {
    self->_hideBottomCellSeparator = a3;
    [(EKEventDetailTitleCell *)self _updateSeparatorStyle];
  }
}

- (void)_updateSeparatorStyle
{
  if (self->_hideBottomCellSeparator || self->_hideTopCellSeparator)
  {
    [(EKEventDetailTitleCell *)self setSeparatorStyle:0];
    if (__PAIR64__(self->_hideBottomCellSeparator, self->_hideTopCellSeparator) != 0x100000001)
    {
      [(EKUITableViewCell *)self setDrawsOwnRowSeparators:1];
      if (self->_hideBottomCellSeparator)
      {
        v3 = 1;
      }

      else
      {
        v3 = 4;
      }

      [(EKUITableViewCell *)self setSeparatorEdges:v3];
      return;
    }
  }

  else
  {
    [(EKEventDetailTitleCell *)self setSeparatorStyle:1];
  }

  [(EKUITableViewCell *)self setDrawsOwnRowSeparators:0];
}

- (id)_titleView
{
  titleView = self->_titleView;
  if (!titleView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = self->_titleView;
    self->_titleView = v4;

    [(UILabel *)self->_titleView setLineBreakMode:0];
    [(UILabel *)self->_titleView setNumberOfLines:[(EKEventDetailTitleCell *)self numberOfTitleLines]];
    [(UILabel *)self->_titleView setLineBreakMode:4];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_titleView setBackgroundColor:v6];

    [(UILabel *)self->_titleView setAccessibilityIdentifier:@"event-details-title-text"];
    titleView = self->_titleView;
  }

  return titleView;
}

- (void)handleTapOnLabel:(id)a3
{
  if (!self->_showAllLocation)
  {
    v4 = a3;
    v32 = [v4 view];
    [v4 locationInView:v32];
    v6 = v5;
    v8 = v7;

    [v32 bounds];
    v10 = v9;
    v12 = v11;
    v13 = [v32 textContainer];
    v14 = [v13 layoutManager];
    v15 = [v32 textContainer];
    [v14 usedRectForTextContainer:v15];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [v32 textContainer];
    v25 = [v24 layoutManager];
    v26 = [v32 textContainer];
    v27 = [v25 characterIndexForPoint:v26 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v6 - -(v17 - (v10 - v21) * 0.5), v8 - -(v19 - (v12 - v23) * 0.5)}];

    location = self->_showLocationRange.location;
    v30 = v27 >= location;
    v29 = v27 - location;
    v30 = !v30 || v29 >= self->_showLocationRange.length;
    if (!v30)
    {
      self->_showAllLocation = 1;
      v31 = [(EKEventDetailTitleCell *)self delegate];
      [v31 refreshForHeightChange];
    }
  }
}

- (id)_dateTimeViewForLine:(unint64_t)a3 color:(id)a4
{
  v6 = a4;
  if (a3 <= 3)
  {
    dateTimeViews = self->_dateTimeViews;
    if (!dateTimeViews)
    {
      v9 = objc_opt_new();
      v10 = self->_dateTimeViews;
      self->_dateTimeViews = v9;

      dateTimeViews = self->_dateTimeViews;
    }

    if ([(NSMutableArray *)dateTimeViews count]<= a3)
    {
      do
      {
        v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v12 = [MEMORY[0x1E69DC888] clearColor];
        [v11 setBackgroundColor:v12];

        [(NSMutableArray *)self->_dateTimeViews addObject:v11];
      }

      while ([(NSMutableArray *)self->_dateTimeViews count]<= a3);
    }

    v13 = [(NSMutableArray *)self->_dateTimeViews objectAtIndexedSubscript:a3];
    v7 = v13;
    if (v6)
    {
      [v13 setTextColor:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_travelTimeView
{
  travelTimeView = self->_travelTimeView;
  if (!travelTimeView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = self->_travelTimeView;
    self->_travelTimeView = v4;

    v6 = self->_travelTimeView;
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6 setTextColor:v7];

    v8 = self->_travelTimeView;
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v8 setBackgroundColor:v9];

    [(UILabel *)self->_travelTimeView setNumberOfLines:0];
    travelTimeView = self->_travelTimeView;
  }

  return travelTimeView;
}

- (id)_recurrenceView
{
  recurrenceView = self->_recurrenceView;
  if (!recurrenceView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = self->_recurrenceView;
    self->_recurrenceView = v4;

    v6 = self->_recurrenceView;
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6 setTextColor:v7];

    v8 = self->_recurrenceView;
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v8 setBackgroundColor:v9];

    [(UILabel *)self->_recurrenceView setNumberOfLines:0];
    recurrenceView = self->_recurrenceView;
  }

  return recurrenceView;
}

- (id)_recurrenceButton
{
  v53[3] = *MEMORY[0x1E69E9840];
  if (!self->_recurrenceButton)
  {
    v3 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v3 setTitleLineBreakMode:4];
    [v3 setTitleLineBreakMode:0];
    [v3 setTitleTextAttributesTransformer:&__block_literal_global_247];
    if (MEMORY[0x1D38B98D0]([v3 setContentInsets:{0.0, 0.0, 0.0, 0.0}]))
    {
      v4 = [MEMORY[0x1E69DC6E8] clearConfiguration];
      [v4 setCornerRadius:0.0];
      [v3 setBackground:v4];
      [v3 setCornerStyle:-1];
    }

    v5 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v3 primaryAction:0];
    recurrenceButton = self->_recurrenceButton;
    self->_recurrenceButton = v5;

    [(UIButton *)self->_recurrenceButton setAccessibilityIdentifier:@"event-details-recurrence-button"];
    [(UILabel *)self->_recurrenceView frame];
    [(UIButton *)self->_recurrenceButton setFrame:?];
  }

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC628];
  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"Go to Next Occurrence" value:&stru_1F4EF6790 table:0];
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.forward.circle"];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __43__EKEventDetailTitleCell__recurrenceButton__block_invoke_2;
  v49[3] = &unk_1E8441A90;
  objc_copyWeak(&v50, &location);
  v11 = [v7 actionWithTitle:v9 image:v10 identifier:0 handler:v49];

  [v11 setAccessibilityIdentifier:@"recurrence-show-next-button"];
  v12 = MEMORY[0x1E69DC628];
  v13 = EventKitUIBundle();
  v14 = [v13 localizedStringForKey:@"Go to Previous Occurrence" value:&stru_1F4EF6790 table:0];
  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.backward.circle"];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __43__EKEventDetailTitleCell__recurrenceButton__block_invoke_3;
  v47[3] = &unk_1E8441A90;
  objc_copyWeak(&v48, &location);
  v16 = [v12 actionWithTitle:v14 image:v15 identifier:0 handler:v47];

  [v16 setAccessibilityIdentifier:@"recurrence-show-previous-button"];
  v17 = [(EKEventDetailTitleCell *)self delegate];
  LOBYTE(v14) = [v17 shouldShowNextButton];

  if ((v14 & 1) == 0)
  {
    [v11 setAttributes:1];
  }

  v18 = [(EKEventDetailTitleCell *)self delegate];
  v19 = [v18 shouldShowPreviousButton];

  if ((v19 & 1) == 0)
  {
    [v16 setAttributes:1];
  }

  v20 = [(EKEventDetailCell *)self event];
  v21 = [v20 isDetached];

  if (v21)
  {
    v22 = MEMORY[0x1E6966A60];
    v23 = [(EKEventDetailCell *)self event];
    v24 = [v23 originalItem];
    v25 = [(EKEventDetailCell *)self event];
    v26 = [v22 diffSummaryBetweenObject:v24 andObject:v25];

    if ([EKUIRecurrenceDifferenceViewController shouldShowRecurrenceDiff:v26])
    {
      v27 = MEMORY[0x1E69DC628];
      v28 = EventKitUIBundle();
      v29 = [v28 localizedStringForKey:@"Show Event Changes" value:&stru_1F4EF6790 table:0];
      v30 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"slider.horizontal.2.gobackward"];
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __43__EKEventDetailTitleCell__recurrenceButton__block_invoke_4;
      v44 = &unk_1E843FAB0;
      objc_copyWeak(&v46, &location);
      v45 = v26;
      v31 = [v27 actionWithTitle:v29 image:v30 identifier:0 handler:&v41];

      [v31 setAccessibilityIdentifier:{@"recurrence-show-diff-button", v41, v42, v43, v44}];
      v32 = MEMORY[0x1E69DCC60];
      v53[0] = v11;
      v53[1] = v16;
      v53[2] = v31;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
      v34 = [v32 menuWithChildren:v33];
      [(UIButton *)self->_recurrenceButton setMenu:v34];

      objc_destroyWeak(&v46);
    }
  }

  v35 = MEMORY[0x1E69DCC60];
  v52[0] = v11;
  v52[1] = v16;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v37 = [v35 menuWithChildren:v36];
  [(UIButton *)self->_recurrenceButton setMenu:v37];

  v38 = [(UIButton *)self->_recurrenceButton menu];
  [v38 setAccessibilityIdentifier:@"event-details-recurrence-menu"];

  [(UIButton *)self->_recurrenceButton setShowsMenuAsPrimaryAction:1];
  v39 = self->_recurrenceButton;

  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);

  return v39;
}

id __43__EKEventDetailTitleCell__recurrenceButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = CalendarAppTintColor();
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v4 = +[EKEventDetailTitleCell _locationFont];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

void __43__EKEventDetailTitleCell__recurrenceButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained nextButtonTapped];
}

void __43__EKEventDetailTitleCell__recurrenceButton__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained previousButtonTapped];
}

void __43__EKEventDetailTitleCell__recurrenceButton__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showRecurrenceDiff:*(a1 + 32)];
}

- (id)_statusView
{
  statusView = self->_statusView;
  if (!statusView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = self->_statusView;
    self->_statusView = v4;

    v6 = self->_statusView;
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.917647059 green:0.0 blue:0.0 alpha:1.0];
    [(UILabel *)v6 setTextColor:v7];

    v8 = self->_statusView;
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v8 setBackgroundColor:v9];

    statusView = self->_statusView;
  }

  return statusView;
}

- (id)_editButton
{
  editButton = self->_editButton;
  if (!editButton)
  {
    if (MEMORY[0x1D38B98D0](0, a2))
    {
      v4 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v5 = self->_editButton;
      self->_editButton = v4;

      v6 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      [(UIButton *)self->_editButton setBackgroundColor:v6];

      v7 = self->_editButton;
      v8 = [MEMORY[0x1E69DC888] labelColor];
      [(UIButton *)v7 setTitleColor:v8 forState:0];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC738] buttonWithType:1];
      v8 = self->_editButton;
      self->_editButton = v9;
    }

    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v11 = [(UIButton *)self->_editButton titleLabel];
    [v11 setFont:v10];

    v12 = self->_editButton;
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Edit" value:&stru_1F4EF6790 table:0];
    [(UIButton *)v12 setTitle:v14 forState:0];

    [(UIButton *)self->_editButton addTarget:self action:sel_editButtonTapped forControlEvents:64];
    [(UIButton *)self->_editButton setAccessibilityIdentifier:@"event-details-edit-button"];
    editButton = self->_editButton;
  }

  return editButton;
}

- (id)_suggestedLocationCell
{
  suggestedLocationCell = self->_suggestedLocationCell;
  if (!suggestedLocationCell)
  {
    v4 = [[EKEventDetailSuggestedLocationCell alloc] initWithInlineStyle:0];
    v5 = self->_suggestedLocationCell;
    self->_suggestedLocationCell = v4;

    [(EKEventDetailSuggestedLocationCell *)self->_suggestedLocationCell setDelegate:self];
    [(EKEventDetailSuggestedLocationCell *)self->_suggestedLocationCell setAccessibilityIdentifier:@"event-details-suggested-location-cell"];
    suggestedLocationCell = self->_suggestedLocationCell;
  }

  return suggestedLocationCell;
}

- (id)_conferenceDetailView
{
  conferenceDetailView = self->_conferenceDetailView;
  if (!conferenceDetailView)
  {
    v4 = [[EKEventDetailConferenceCell alloc] initWithEvent:self->super._event editable:0];
    v5 = self->_conferenceDetailView;
    self->_conferenceDetailView = v4;

    [(EKEventDetailConferenceCell *)self->_conferenceDetailView setDelegate:self];
    [(EKEventDetailConferenceCell *)self->_conferenceDetailView setAccessibilityIdentifier:@"event-details-conference-detail-cell"];
    conferenceDetailView = self->_conferenceDetailView;
  }

  return conferenceDetailView;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = EKEventDetailTitleCell;
  [(EKUITableViewCell *)&v4 layoutSubviews];
  [(EKEventDetailTitleCell *)self bounds];
  [(EKEventDetailTitleCell *)self _layoutForWidth:v3];
}

- (double)_layoutForWidth:(double)a3
{
  v326 = *MEMORY[0x1E69E9840];
  v279 = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  v299 = self;
  if (MEMORY[0x1D38B98D0]([MEMORY[0x1E69DD250] setAnimationsEnabled:0]))
  {
    v4 = [(EKEventDetailTitleCell *)self layer];
    [v4 setMasksToBounds:0];

    v5 = [(EKEventDetailTitleCell *)self layer];
    [v5 setCornerRadius:0.0];
  }

  v6 = [(EKEventDetailTitleCell *)self delegate];

  if (v6)
  {
    v7 = [(EKEventDetailTitleCell *)self delegate];
    LODWORD(v6) = [v7 shouldShowEditButtonInline];

    v8 = [(EKEventDetailTitleCell *)v299 delegate];
    if ([v8 shouldShowNextButton])
    {
      v277 = 1;
    }

    else
    {
      v10 = [(EKEventDetailTitleCell *)v299 delegate];
      v277 = [v10 shouldShowPreviousButton];
    }

    v9 = v299;
  }

  else
  {
    v277 = 0;
    v9 = self;
  }

  [(EKEventDetailTitleCell *)v9 layoutMargins];
  v297 = v11;
  [(EKEventDetailTitleCell *)v9 layoutMargins];
  v295 = v12;
  [(EKEventDetailTitleCell *)v9 safeAreaInsets];
  v293 = v13;
  [(EKEventDetailTitleCell *)v9 safeAreaInsets];
  v291 = v14;
  if ([(EKEventDetailTitleCell *)v9 nonInteractivePlatterMode]&& (CUIKCurrentLocaleRequiresIndianLanguageAdjustments() & 1) != 0)
  {
    v281 = [objc_opt_class() _scaledTitleFont];
    v15 = 1;
  }

  else
  {
    v281 = [objc_opt_class() _titleFont];

    v15 = 0;
  }

  v316 = 0;
  v317 = &v316;
  v318 = 0x3010000000;
  v320 = 0;
  v321 = 0.0;
  v319 = "";
  [(EKEventDetailCell *)v299 detailsLeftInset];
  v17 = v16;
  [v281 _scaledValueForValue:30.0];
  v19 = v18;
  [(UILabel *)v299->_titleView _firstBaselineOffsetFromTop];
  v320 = v17;
  v321 = v19 - v20;
  if (!v6)
  {
    v40 = v299;
    [(UIButton *)v299->_editButton removeFromSuperview];
    goto LABEL_39;
  }

  v21 = [(EKEventDetailTitleCell *)v299 _editButton];
  [v21 sizeToFit];

  v22 = v299;
  if (MEMORY[0x1D38B98D0]())
  {
    [(UIButton *)v299->_editButton frame];
    v24 = v23;
    [(UIButton *)v299->_editButton frame];
    v26 = v25;
    [(UIButton *)v299->_editButton frame];
    v28 = v27;
    [(UIButton *)v299->_editButton frame];
    [(UIButton *)v299->_editButton setFrame:v24, v26, v28 + 20.0, v29 + 8.0];
    [(UIButton *)v299->_editButton frame];
    v31 = v30;
    v32 = [(UIButton *)v299->_editButton layer];
    [v32 setCornerRadius:v31 * 0.5];

    v33 = [(UIButton *)v299->_editButton layer];
    [v33 setMasksToBounds:1];

    v22 = v299;
  }

  [(UIButton *)v22->_editButton layoutIfNeeded];
  v34 = [(UIButton *)v22->_editButton frame];
  rect = v35;
  v37 = v36;
  v38 = v317[4];
  v39 = v317[5];
  if (MEMORY[0x1D38B98D0](v34))
  {
    if (CalInterfaceIsLeftToRight())
    {
      v38 = a3 - v37;
    }

    else
    {
      v38 = 0.0;
    }

    goto LABEL_26;
  }

  v41 = [(EKEventDetailTitleCell *)v22 traitCollection];
  if (EKUIUsesLargeTextLayout(v41))
  {
    IsLeftToRight = CalInterfaceIsLeftToRight();

    v22 = v299;
    if (IsLeftToRight)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v22 = v299;
  }

  v43 = [(UIButton *)v22->_editButton titleLabel];
  [v43 frame];
  v45 = v44;
  v46 = [(UIButton *)v22->_editButton titleLabel];
  [v46 frame];
  v48 = v47;

  v22 = v299;
  [(EKEventDetailTitleCell *)v299 layoutMargins];
  v38 = v37 - v45 - v48 + a3 - v49 - v37;
LABEL_26:
  if (v22->_visibleItems)
  {
    v50 = [(EKEventDetailTitleCell *)v22 traitCollection];
    v51 = EKUIUsesLargeTextLayout(v50);

    if (!v51)
    {
      v52 = [(UILabel *)v299->_titleView font];
      v53 = [(UIButton *)v299->_editButton titleLabel];
      v54 = [v53 font];

      [v52 ascender];
      v56 = v55;
      [v52 capHeight];
      v58 = v57;
      [v54 ascender];
      v60 = v59;
      [v52 capHeight];
      v62 = v61;
      v63 = [(UIButton *)v299->_editButton titleLabel];
      [v63 frame];
      v65 = v64;

      CalRoundToScreenScale(v56 + v58 - (v60 + v62) - v65);
      v67 = v66;

      v39 = v39 + v67;
    }

    v22 = v299;
  }

  if ((CalInterfaceIsLeftToRight() & 1) != 0 || ([(EKEventDetailTitleCell *)v22 traitCollection], v68 = objc_claimAutoreleasedReturnValue(), v69 = EKUIUsesLargeTextLayout(v68), v68, v22 = v299, v69))
  {
    if (CalInterfaceIsLeftToRight())
    {
      v70 = [(EKEventDetailTitleCell *)v22 traitCollection];
      v71 = EKUIUsesLargeTextLayout(v70);

      v22 = v299;
      if (v71)
      {
        [(EKEventDetailTitleCell *)v299 safeAreaInsets];
        v38 = v38 + v72;
      }
    }
  }

  else
  {
    [(EKEventDetailTitleCell *)v299 layoutMargins];
    v38 = v73;
  }

  v74 = [(EKEventDetailTitleCell *)v22 contentView];
  [v74 convertRect:v22 fromView:{v38, v39, v37, rect}];
  [(UIButton *)v22->_editButton setFrame:?];

  v75 = [(EKEventDetailTitleCell *)v299 contentView];
  [v75 addSubview:v299->_editButton];

  v76 = [(EKEventDetailTitleCell *)v299 traitCollection];
  v77 = EKUIUsesLargeTextLayout(v76);

  if (v77)
  {
    v327.origin.x = v38;
    v327.origin.y = v39;
    v327.size.width = v37;
    v327.size.height = rect;
    v40 = v299;
    v317[5] = CGRectGetMaxY(v327);
  }

  else
  {
    v40 = v299;
  }

LABEL_39:
  v78 = a3 - v297 - v295;
  v284 = v293 + v291;
  v79 = *(v317 + 5);
  v312 = 0;
  v313 = &v312;
  v314 = 0x2020000000;
  v315 = v79;
  if (v40->_visibleItems)
  {
    v80 = [(EKEventDetailTitleCell *)v40 _editButton];
    [(UIButton *)v40->_editButton frame];
    [v80 sizeThatFits:{v81, v82}];
    v84 = v83;

    v85 = [(EKEventDetailTitleCell *)v299 delegate];
    LODWORD(v80) = [v85 titleShouldInsetForEditButton:v299];

    LODWORD(v85) = MEMORY[0x1D38B98D0]();
    [(UILabel *)v299->_titleView frame];
    v87 = v86;
    if ((v85 & v80) != 0)
    {
      v88 = v84 + 8.0;
    }

    else
    {
      v88 = 0.0;
    }

    v89 = v317[4];
    v90 = v317[5];
    v91 = [(EKEventDetailTitleCell *)v299 traitCollection];
    v92 = EKUIUsesLargeTextLayout(v91);

    v93 = v78 - v88;
    if (v92)
    {
      p_isa = &v299->super.super.super.super.super.super.isa;
    }

    else
    {
      p_isa = &v299->super.super.super.super.super.super.isa;
      [(UIButton *)v299->_editButton frame];
      v93 = v93 - v95;
    }

    [p_isa[140] setFrame:{CalRoundRectToScreenScale(v89, v90, v93, v87)}];
    [p_isa[140] sizeToFit];
    if ((CalInterfaceIsLeftToRight() & 1) == 0)
    {
      [p_isa[140] frame];
      [p_isa[140] setFrame:a3 - v284 - v96 - v97];
    }

    [p_isa[140] frame];
    v99 = v98;
    v100 = [p_isa contentView];
    [v100 addSubview:p_isa[140]];

    v40 = v299;
    [(UILabel *)v299->_titleView _lastLineBaseline];
    v313[3] = v99 + v101;
  }

  else
  {
    [(UILabel *)v40->_titleView removeFromSuperview];
  }

  if (CalInterfaceIsLeftToRight())
  {
    v102 = EKUIScaleFactor();
    v103 = -1.0;
  }

  else
  {
    v102 = EKUIScaleFactor();
    v103 = 1.0;
  }

  v317[4] = v103 / v102 + v317[4];
  visibleItems = v40->_visibleItems;
  if (v15)
  {
    [objc_opt_class() _scaledLocationFont];
  }

  else
  {
    [objc_opt_class() _locationFont];
  }
  v280 = ;

  [v280 _scaledValueForValue:30.0];
  v278 = v104;
  [v280 _scaledValueForValue:21.0];
  v283 = v105;
  if ((visibleItems & 2) != 0)
  {
    v310 = 0u;
    v311 = 0u;
    v308 = 0u;
    v309 = 0u;
    obj = v299->_locationItems;
    v111 = [(NSMutableArray *)obj countByEnumeratingWithState:&v308 objects:v325 count:16];
    if (v111)
    {
      v294 = *v309;
      v286 = *MEMORY[0x1E69DB650];
      do
      {
        v296 = v111;
        for (i = 0; i != v296; ++i)
        {
          if (*v309 != v294)
          {
            objc_enumerationMutation(obj);
          }

          v113 = *(*(&v308 + 1) + 8 * i);
          v114 = [v113 locationView];
          [v114 frame];
          v116 = v115;
          v118 = v117;
          [v113 updateAttributedString];
          [v114 setFrame:{v116, v118, v78, 0.0}];
          [v114 sizeToFit];
          v119 = [v114 font];
          [v119 _scaledValueForValue:22.0];
          v121 = v120;

          [v114 frame];
          if (v122 > v121 * 8.0 && !v299->_showAllLocation)
          {
            [v114 frame];
            v124 = v123;
            [v114 frame];
            [v114 setFrame:v124];
            v323 = v286;
            v125 = [MEMORY[0x1E69DC888] labelColor];
            v324 = v125;
            v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v324 forKeys:&v323 count:1];
            [v114 setLinkTextAttributes:v126];

            v127 = [v114 layoutManager];
            v128 = [v114 textContainer];
            v129 = [v127 glyphRangeForTextContainer:v128];
            v131 = v130;

            v132 = [v114 attributedText];
            v292 = [v132 attributesAtIndex:0 effectiveRange:0];

            v133 = objc_alloc(MEMORY[0x1E696AD40]);
            v134 = [MEMORY[0x1E696AEC0] ellipsisString];
            v298 = [v133 initWithString:v134 attributes:v292];

            v135 = EventKitUIBundle();
            v288 = [v135 localizedStringForKey:@"ShowMoreLocation" value:@"   Show More" table:0];

            recta = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v292];
            v136 = CalendarAppTintColor();
            [recta setObject:v136 forKeyedSubscript:v286];

            v137 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v288 attributes:recta];
            [v298 appendAttributedString:v137];

            v138 = objc_alloc(MEMORY[0x1E69DB800]);
            v139 = [v114 textContainer];
            [v139 size];
            v140 = [v138 initWithSize:?];

            v141 = objc_alloc_init(MEMORY[0x1E69DB808]);
            [v141 setAttributedString:v298];
            v142 = objc_opt_new();
            [v142 setTextContainer:v140];
            [v141 addTextLayoutManager:v142];
            v143 = [v142 textContainer];
            v144 = [v143 layoutManager];
            [v144 boundingRectForGlyphRange:0 inTextContainer:{objc_msgSend(v298, "length"), v140}];
            v146 = v145;

            v147 = [v114 layoutManager];
            v148 = [v114 textContainer];
            [v147 boundingRectForGlyphRange:v131 + v129 - 1 inTextContainer:{1, v148}];
            v150 = v149;

            v151 = [v114 textContainer];
            [v151 size];
            v153 = v152;

            v154 = [v114 textContainer];
            v155 = [v154 layoutManager];
            v156 = [v114 textContainer];
            v157 = [v155 glyphIndexForPoint:v156 inTextContainer:{v153 - v146, v150}];

            v158 = [v114 textContainer];
            v159 = [v158 layoutManager];
            v160 = [v159 characterIndexForGlyphAtIndex:v157];

            v161 = [v114 textStorage];
            v162 = [v161 string];
            v163 = [v162 length];
            v299->_showLocationRange.location = v160 - 1;
            v299->_showLocationRange.length = v163 - (v160 - 1);

            v164 = [v114 textStorage];
            [v164 replaceCharactersInRange:v299->_showLocationRange.location withAttributedString:{v299->_showLocationRange.length, v298}];

            v165 = [v113 tapRecognizer];
            LODWORD(v164) = v165 == 0;

            if (v164)
            {
              v166 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v299 action:sel_handleTapOnLabel_];
              [v114 addGestureRecognizer:v166];
            }
          }

          [v114 frame];
          v168 = v167;
          v170 = v169;
          v171 = v313[3];
          v172 = [v114 font];
          [v172 _scaledValueForValue:22.0];
          v174 = v173;
          v175 = [v114 font];
          [v175 ascender];
          v317[5] = v171 + v174 - v176;

          v177 = v317[4];
          v178 = v317[5];
          v179 = CalInterfaceIsLeftToRight();
          v180 = a3 - v284 - v168 - v177;
          if (v179)
          {
            v180 = v177;
          }

          [v114 setFrame:{CalRoundRectToScreenScale(v180, v178, v168, v170)}];
          v181 = [(EKEventDetailTitleCell *)v299 contentView];
          [v181 addSubview:v114];

          v328.origin.x = v177;
          v328.origin.y = v178;
          v328.size.width = v168;
          v328.size.height = v170;
          MaxY = CGRectGetMaxY(v328);
          v183 = [v114 font];
          [v183 descender];
          v313[3] = MaxY + v184 + -8.0;

          v317[5] = v313[3];
        }

        v111 = [(NSMutableArray *)obj countByEnumeratingWithState:&v308 objects:v325 count:16];
      }

      while (v111);
    }
  }

  else
  {
    v306 = 0u;
    v307 = 0u;
    v304 = 0u;
    v305 = 0u;
    v106 = v299->_locationItems;
    v107 = [(NSMutableArray *)v106 countByEnumeratingWithState:&v304 objects:v322 count:16];
    if (v107)
    {
      v108 = *v305;
      do
      {
        for (j = 0; j != v107; ++j)
        {
          if (*v305 != v108)
          {
            objc_enumerationMutation(v106);
          }

          v110 = [*(*(&v304 + 1) + 8 * j) locationView];
          [v110 removeFromSuperview];
        }

        v107 = [(NSMutableArray *)v106 countByEnumeratingWithState:&v304 objects:v322 count:16];
      }

      while (v107);
    }

    v317[5] = v313[3];
  }

  v185 = &v299->super.super.super.super.super.super.isa;
  if (CalInterfaceIsLeftToRight())
  {
    v186 = EKUIScaleFactor();
    v187 = -1.0;
  }

  else
  {
    v186 = EKUIScaleFactor();
    v187 = 1.0;
  }

  v188 = v317;
  v317[4] = v317[4] - v187 / v186;
  if ((visibleItems & 0x100) != 0)
  {
    if ((visibleItems & 2) != 0)
    {
      v192 = v188[5] + 5.5;
    }

    else
    {
      v192 = v188[5] + 5.5 + 8.0;
    }

    v188[5] = v192;
    v193 = [(EKEventDetailTitleCell *)v299 _suggestedLocationCell];
    LODWORD(v194) = 1148846080;
    LODWORD(v195) = 1112014848;
    [v193 systemLayoutSizeFittingSize:a3 - v284 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v194, v195}];
    v197 = v196;
    v199 = v198;

    v329.origin.x = CalRoundRectToScreenScale(0.0, v192, v197, v199);
    x = v329.origin.x;
    y = v329.origin.y;
    width = v329.size.width;
    height = v329.size.height;
    v204 = CGRectGetMaxY(v329);
    v313[3] = v204;
    v317[5] = v204 + -8.0;
    [(EKEventDetailSuggestedLocationCell *)v299->_suggestedLocationCell setFrame:x, y, width, height];
    v205 = [(EKEventDetailTitleCell *)v299 contentView];
    [v205 addSubview:v299->_suggestedLocationCell];

    v185 = &v299->super.super.super.super.super.super.isa;
    if ((v299->_visibleItems & 0x200) != 0)
    {
      v190 = v317;
      v189 = v317[5];
      v191 = 23.5;
LABEL_94:
      v208 = v189 + v191;
      v190[5] = v189 + v191;
      v209 = [v185 _conferenceDetailView];
      LODWORD(v210) = 1148846080;
      LODWORD(v211) = 1112014848;
      [v209 systemLayoutSizeFittingSize:a3 - v284 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v210, v211}];
      v213 = v212;
      v215 = v214;

      v330.origin.x = CalRoundRectToScreenScale(0.0, v208, v213, v215);
      v216 = v330.origin.x;
      v217 = v330.origin.y;
      v218 = v330.size.width;
      v219 = v330.size.height;
      v220 = CGRectGetMaxY(v330);
      v313[3] = v220;
      v317[5] = v220 + -8.0;
      [(EKEventDetailConferenceCell *)v299->_conferenceDetailView setFrame:v216, v217, v218, v219];
      v221 = [(EKEventDetailTitleCell *)v299 contentView];
      [v221 addSubview:v299->_conferenceDetailView];

      v207 = v317;
      v206 = v317[5];
      v185 = &v299->super.super.super.super.super.super.isa;
      goto LABEL_95;
    }
  }

  else
  {
    [(EKEventDetailSuggestedLocationCell *)v299->_suggestedLocationCell removeFromSuperview];
    v189 = v313[3];
    v190 = v317;
    v317[5] = v189;
    if ((v299->_visibleItems & 0x200) != 0)
    {
      if ((visibleItems & 2) != 0)
      {
        v191 = 8.0;
      }

      else
      {
        v191 = 13.5;
      }

      goto LABEL_94;
    }
  }

  [v185[146] removeFromSuperview];
  v206 = v313[3];
  v207 = v317;
  v317[5] = v206;
LABEL_95:
  v207[5] = v278 + 3.0 + v206;
  v222 = [v185[136] startCalendarDate];
  v223 = [v222 dayComponents];

  v224 = [(EKEvent *)v299->super._event endCalendarDate];
  v225 = [v224 dayComponents];

  v226 = v299;
  v227 = [v223 day];
  if (v227 == [v225 day] && (v228 = objc_msgSend(v223, "month"), v228 == objc_msgSend(v225, "month")))
  {
    v229 = [v223 year];
    v230 = v229 != [v225 year];
  }

  else
  {
    v230 = 1;
  }

  v302[0] = 0;
  v302[1] = v302;
  v302[2] = 0x2020000000;
  v303 = 0;
  dateTimeViews = v299->_dateTimeViews;
  v300[0] = MEMORY[0x1E69E9820];
  v300[1] = 3221225472;
  v300[2] = __42__EKEventDetailTitleCell__layoutForWidth___block_invoke;
  v300[3] = &unk_1E8441D58;
  *&v300[8] = a3;
  v300[9] = 0;
  v300[4] = v299;
  v300[5] = v302;
  v300[6] = &v316;
  v300[7] = &v312;
  *&v300[10] = v78;
  *&v300[11] = v283;
  v301 = v230;
  [(NSMutableArray *)dateTimeViews enumerateObjectsUsingBlock:v300];
  if ((v299->_visibleItems & 0x20) != 0)
  {
    v232 = &OBJC_IVAR___EKEventDetailTitleCell__recurrenceButton;
    if (!v277)
    {
      v232 = &OBJC_IVAR___EKEventDetailTitleCell__recurrenceView;
    }

    v233 = *(&v299->super.super.super.super.super.super.isa + *v232);
    p_recurrenceView = &v299->_recurrenceView;
    v235 = v299->_recurrenceView;
    p_recurrenceButton = &v299->_recurrenceView;
    if ((v277 & 1) == 0)
    {
      p_recurrenceButton = &v299->_recurrenceButton;
    }

    [*p_recurrenceButton removeFromSuperview];
    [v233 frame];
    [v233 sizeThatFits:{v78, 0.0}];
    v239 = v238;
    if (v78 >= v237)
    {
      v240 = v237;
    }

    else
    {
      v240 = v78;
    }

    [(UILabel *)v235 _firstLineBaseline];
    v241 = v317[4];
    v243 = v317[5] - v242;
    v317[5] = v243;
    [v233 sizeToFit];
    [*p_recurrenceView sizeToFit];
    if (CalInterfaceIsLeftToRight())
    {
      v244 = v241;
    }

    else
    {
      v244 = a3 - v284 - v240 - v241;
    }

    [v233 setFrame:{CalRoundRectToScreenScale(v244, v243, v240, v239)}];
    [*p_recurrenceView setFrame:{CalRoundRectToScreenScale(v244, v243, v240, v239)}];
    v245 = v317[5];
    [(UILabel *)v235 _lastLineBaseline];
    v247 = v245 + v246;
    v313[3] = v247;
    v317[5] = v283 + v247;
    v248 = [(EKEventDetailTitleCell *)v299 contentView];
    [v248 addSubview:v233];

    v226 = v299;
  }

  else
  {
    [(UILabel *)v299->_recurrenceView removeFromSuperview];
    [(UIButton *)v299->_recurrenceButton removeFromSuperview];
  }

  travelTimeView = v226->_travelTimeView;
  if ((v226->_visibleItems & 0x10) != 0)
  {
    [(UILabel *)travelTimeView sizeToFit];
    [(UILabel *)v226->_travelTimeView frame];
    v251 = v250;
    [(UILabel *)v226->_travelTimeView sizeToFit];
    [(UILabel *)v226->_travelTimeView _firstLineBaseline];
    v252 = v317[4];
    v254 = v317[5] - v253;
    v317[5] = v254;
    v255 = CalInterfaceIsLeftToRight();
    v256 = a3 - v284 - v78 - v252;
    if (v255)
    {
      v256 = v252;
    }

    [(UILabel *)v226->_travelTimeView setFrame:CalRoundRectToScreenScale(v256, v254, v78, v251)];
    v257 = [(EKEventDetailTitleCell *)v226 contentView];
    [v257 addSubview:v226->_travelTimeView];

    v258 = v317[5];
    v226 = v299;
    [(UILabel *)v299->_travelTimeView _lastLineBaseline];
    v260 = v258 + v259;
    v313[3] = v260;
    v317[5] = v283 + v260;
  }

  else
  {
    [(UILabel *)travelTimeView removeFromSuperview];
  }

  statusView = v226->_statusView;
  if ((v226->_visibleItems & 0x40) != 0)
  {
    [(UILabel *)statusView frame];
    [(UILabel *)v226->_statusView sizeThatFits:v78, 0.0];
    v263 = v262;
    v265 = v264;
    [(UILabel *)v226->_statusView _firstLineBaseline];
    v266 = v317[4];
    v268 = v317[5] - v267;
    v317[5] = v268;
    [(UILabel *)v226->_statusView sizeToFit];
    v269 = CalInterfaceIsLeftToRight();
    v270 = a3 - v284 - v263 - v266;
    if (v269)
    {
      v270 = v266;
    }

    [(UILabel *)v226->_statusView setFrame:CalRoundRectToScreenScale(v270, v268, v263, v265)];
    v271 = [(EKEventDetailTitleCell *)v226 contentView];
    [v271 addSubview:v226->_statusView];

    v272 = v317[5];
    v226 = v299;
    [(UILabel *)v299->_statusView _lastLineBaseline];
    v274 = v272 + v273;
    v313[3] = v274;
    v317[5] = v283 + v274;
  }

  else
  {
    [(UILabel *)statusView removeFromSuperview];
  }

  if (v226->_hideTopCellSeparator || v226->_hideBottomCellSeparator)
  {
    [(EKEventDetailTitleCell *)v226 _updateSeparatorStyle];
  }

  [MEMORY[0x1E69DD250] setAnimationsEnabled:v279];
  v275 = v313[3];
  _Block_object_dispose(v302, 8);

  _Block_object_dispose(&v312, 8);
  _Block_object_dispose(&v316, 8);

  return v275;
}

void __42__EKEventDetailTitleCell__layoutForWidth___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 text];
  v7 = [v6 length];

  if (!v7)
  {
    [v5 removeFromSuperview];
    goto LABEL_24;
  }

  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = *(a1 + 64);
  [*(a1 + 32) detailsLeftInset];
  v13 = v11 - v12;
  [*(a1 + 32) detailsRightInset];
  [v5 setFrame:{v8, v9, v13 - v14 - *(a1 + 72), v10}];
  [v5 sizeToFit];
  [v5 frame];
  v16 = v15;
  v18 = v17;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v19 = [*(a1 + 32) _dateTimeViewForLine:a3 - 1 color:0];
  v20 = [*(a1 + 32) window];
  if (v20)
  {
  }

  else if ((EKUIHasFallbackSizingContext() & 1) == 0)
  {
    v28 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v45 = 0;
      _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_DEBUG, "Unable to determine size class for event detail title cell", v45, 2u);
    }

    goto LABEL_14;
  }

  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(*(a1 + 32));
  if ((a3 & 1) == 0 || !IsRegularInViewHierarchy || ([v19 bounds], v22 = v16 + CGRectGetWidth(v46), v23 = *(a1 + 80), objc_msgSend(*(a1 + 32), "detailsLeftInset"), v22 >= v23 - v24))
  {
LABEL_14:
    v29 = [v5 font];
    [v29 ascender];
    *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 48) + 8) + 40) - v30;

    v31 = *(*(a1 + 48) + 8);
    v25 = *(v31 + 32);
    v27 = *(v31 + 40);
    v47.origin.x = v25;
    v47.origin.y = v27;
    v47.size.width = v16;
    v47.size.height = v18;
    MaxY = CGRectGetMaxY(v47);
    v33 = [v5 font];
    [v33 descender];
    *(*(*(a1 + 56) + 8) + 24) = MaxY + v34;

    *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 56) + 8) + 24) + *(a1 + 88);
    goto LABEL_15;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v25 = *(*(*(a1 + 48) + 8) + 32);
  [v19 frame];
  v27 = v26;
LABEL_15:
  if (CalInterfaceIsLeftToRight() && (*(*(*(a1 + 40) + 8) + 24) & 1) != 0 || (CalInterfaceIsLeftToRight() & 1) == 0 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v35 = *(a1 + 64);
    [*(a1 + 32) layoutMargins];
    v37 = v35 - v36 - v16;
    v38 = [*(a1 + 32) contentView];
    [v38 convertRect:*(a1 + 32) fromView:{v37, v27, v16, v18}];
    v25 = v39;
    v27 = v40;
    v16 = v41;
    v18 = v42;
  }

  v43 = *(*(a1 + 40) + 8);
  if (*(v43 + 24) == 1 && *(a1 + 96) == 1)
  {
    *(v43 + 24) = 0;
  }

  [v5 setFrame:{v25, v27, v16, v18}];
  v44 = [*(a1 + 32) contentView];
  [v44 addSubview:v5];

LABEL_24:
}

- (void)layoutForWidth:(double)a3 position:(int)a4
{
  v19.receiver = self;
  v19.super_class = EKEventDetailTitleCell;
  [EKEventDetailCell layoutForWidth:sel_layoutForWidth_position_ position:?];
  self->_lastPosition = a4;
  [(EKEventDetailTitleCell *)self _layoutForWidth:a3];
  v8 = v7;
  v9 = [(EKEventDetailTitleCell *)self frame];
  v11 = v10;
  v13 = v12;
  if ((MEMORY[0x1D38B98D0](v9) & 1) == 0)
  {
    v14 = 0.0;
    v15 = 0.0;
    if (a4)
    {
      [objc_opt_class() detailsTopVerticalInset];
      v15 = v16;
    }

    if ((a4 & 4) != 0)
    {
      [objc_opt_class() detailsBottomVerticalInset];
      v14 = v17;
    }

    v8 = v8 + v15 + v14;
  }

  CalRoundToScreenScale(v8);
  [(EKEventDetailTitleCell *)self setFrame:v11, v13, a3, v18];
}

- (void)_promptForSpanWithSourceView:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(EKEvent *)self->super._event isOrWasPartOfRecurringSeries]& 1) != 0)
  {
    v8 = [(EKEventDetailTitleCell *)self window];
    v9 = [v8 rootViewController];

    v10 = [v9 presentedViewController];

    if (v10)
    {
      do
      {
        v11 = [v9 presentedViewController];

        v12 = [v11 presentedViewController];

        v9 = v11;
      }

      while (v12);
    }

    else
    {
      v11 = v9;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__17;
    v40 = __Block_byref_object_dispose__17;
    v41 = 0;
    [v6 bannerPopoverSourceRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v6 bannerView];
    [v6 convertRect:v21 fromView:{v14, v16, v18, v20}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    event = self->super._event;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __71__EKEventDetailTitleCell__promptForSpanWithSourceView_completionBlock___block_invoke;
    v33[3] = &unk_1E8441210;
    v34 = v7;
    v35 = &v36;
    v31 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v11 sourceView:v6 sourceRect:event forEvent:v33 withCompletionHandler:v23, v25, v27, v29];
    v32 = v37[5];
    v37[5] = v31;

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __71__EKEventDetailTitleCell__promptForSpanWithSourceView_completionBlock___block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    (*(*(a1 + 32) + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)didTapAddSuggestedLocationCell:(id)a3 disambiguatedLocation:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__EKEventDetailTitleCell_didTapAddSuggestedLocationCell_disambiguatedLocation___block_invoke;
  v8[3] = &unk_1E8441238;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(EKEventDetailTitleCell *)self _promptForSpanWithSourceView:a3 completionBlock:v8];
}

void __79__EKEventDetailTitleCell_didTapAddSuggestedLocationCell_disambiguatedLocation___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(*(a1 + 32) + 1128);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v19 + 1) + 8 * v9) locationTitle];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 40) title];
  v12 = [*(a1 + 40) address];
  v13 = [v11 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v14 = [*(a1 + 40) title];
    [v4 addObject:v14];
  }

  v15 = [MEMORY[0x1E6966A08] _locationStringForLocations:{v4, v19}];
  [*(a1 + 40) setTitle:v15];

  v16 = MEMORY[0x1E6966B10];
  v17 = [*(*(a1 + 32) + 1088) preferredLocation];
  v18 = [v17 predictedLOI];
  [v16 userInteractionWithPredictedLocationOfInterest:v18 interaction:7];

  [*(*(a1 + 32) + 1088) confirmPredictedLocation:*(a1 + 40)];
  [*(a1 + 32) _saveEventWithSpan:a2];
}

- (void)didTapDismissSuggestedLocationCell:(id)a3
{
  v4 = MEMORY[0x1E6966B10];
  v5 = [(EKEvent *)self->super._event preferredLocation];
  v6 = [v5 predictedLOI];
  [v4 userInteractionWithPredictedLocationOfInterest:v6 interaction:8];

  [(EKEvent *)self->super._event rejectPredictedLocation];

  [(EKEventDetailTitleCell *)self _saveEventWithSpan:4];
}

- (void)_saveEventWithSpan:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(UIResponder *)self EKUI_editor];
  event = self->super._event;
  v14 = 0;
  v7 = [v5 saveEvent:event span:a3 error:&v14];
  v8 = v14;
  if ((v7 & 1) == 0)
  {
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = self->super._event;
      v11 = v9;
      v12 = [(EKEvent *)v10 title];
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Error saving event %@ from the buttons detail item: %@", buf, 0x16u);
    }
  }

  v13 = [(EKEventDetailTitleCell *)self delegate];
  [v13 predictionWasActedOn];
}

- (id)owningViewController
{
  v2 = [(EKEventDetailTitleCell *)self delegate];
  v3 = [v2 owningViewController];

  return v3;
}

- (void)conferenceCellUpdated:(id)a3
{
  v3 = [(EKEventDetailTitleCell *)self delegate];
  [v3 refreshForHeightChange];
}

- (BOOL)conferenceCellShouldPresentShareSheet:(id)a3
{
  v3 = self;
  v4 = [(EKEventDetailTitleCell *)self delegate];
  LOBYTE(v3) = [v4 titleCellShouldPresentShareSheet:v3];

  return v3;
}

- (void)conferenceCell:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(EKEventDetailTitleCell *)self delegate];
  [v9 titleCell:self requestPresentShareSheetWithActivityItems:v8 withPopoverSourceView:v7];
}

- (EKEventDetailTitleCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end