@interface EKEventDetailTitleCell
+ (id)_locationFont;
+ (id)_scaledLocationFont;
+ (id)_scaledTitleFont;
+ (id)_titleFont;
+ (void)_invalidateCachedFonts;
+ (void)_registerForInvalidation;
- (BOOL)_shouldShowConferenceCell;
- (BOOL)_shouldShowSuggestedLocationCell;
- (BOOL)conferenceCellShouldPresentShareSheet:(id)sheet;
- (BOOL)update;
- (EKEventDetailTitleCell)initWithEvent:(id)event editable:(BOOL)editable style:(int64_t)style;
- (EKEventDetailTitleCellDelegate)delegate;
- (UIView)sourceViewForPopover;
- (double)_layoutForWidth:(double)width;
- (id)_conferenceDetailView;
- (id)_dateTimeViewForLine:(unint64_t)line color:(id)color;
- (id)_editButton;
- (id)_recurrenceButton;
- (id)_recurrenceView;
- (id)_statusView;
- (id)_suggestedLocationCell;
- (id)_titleView;
- (id)_travelTimeView;
- (id)owningViewController;
- (void)_promptForSpanWithSourceView:(id)view completionBlock:(id)block;
- (void)_saveEventWithSpan:(int64_t)span;
- (void)_setDateTimeString:(id)string line:(unint64_t)line color:(id)color;
- (void)_updateSeparatorStyle;
- (void)addLocation:(id)location;
- (void)conferenceCell:(id)cell requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view;
- (void)conferenceCellUpdated:(id)updated;
- (void)contentSizeCategoryChanged:(id)changed;
- (void)dealloc;
- (void)didTapAddSuggestedLocationCell:(id)cell disambiguatedLocation:(id)location;
- (void)didTapDismissSuggestedLocationCell:(id)cell;
- (void)editButtonTapped;
- (void)handleTapOnLabel:(id)label;
- (void)layoutForWidth:(double)width position:(int)position;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)nextButtonTapped;
- (void)previousButtonTapped;
- (void)setHideBottomCellSeparator:(BOOL)separator;
- (void)setHideTopCellSeparator:(BOOL)separator;
- (void)setNumberOfTitleLines:(unint64_t)lines;
- (void)setPrimaryTextColor:(id)color;
- (void)setRecurrenceString:(id)string;
- (void)setStatusString:(id)string;
- (void)setTitle:(id)title;
- (void)setTravelTimeString:(id)string;
- (void)showRecurrenceDiff:(id)diff;
@end

@implementation EKEventDetailTitleCell

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
  block[4] = self;
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

- (EKEventDetailTitleCell)initWithEvent:(id)event editable:(BOOL)editable style:(int64_t)style
{
  editableCopy = editable;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = EKEventDetailTitleCell;
  v9 = [(EKEventDetailCell *)&v12 initWithEvent:eventCopy editable:editableCopy style:style];
  if (v9)
  {
    [MEMORY[0x1E6966A50] geocodeEventIfNeeded:eventCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
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

- (void)contentSizeCategoryChanged:(id)changed
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  titleLabel = [(UIButton *)self->_editButton titleLabel];
  [titleLabel setFont:v5];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  v4 = [titleCopy length];
  _titleView = [(EKEventDetailTitleCell *)self _titleView];
  v6 = _titleView;
  if (v4)
  {
    [_titleView setText:titleCopy];

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
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v14 = *MEMORY[0x1E69DB650];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v8 = [v11 dictionaryWithObjectsAndKeys:{v6, v12, labelColor, v14, v15, *MEMORY[0x1E69DB6B8], 0}];

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy attributes:v8];
    _titleView2 = [(EKEventDetailTitleCell *)self _titleView];
    [_titleView2 setAttributedText:v9];
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

- (void)_setDateTimeString:(id)string line:(unint64_t)line color:(id)color
{
  stringCopy = string;
  colorCopy = color;
  if (-[NSMutableArray count](self->_dateTimeViews, "count") > line || [stringCopy length])
  {
    v9 = [(EKEventDetailTitleCell *)self _dateTimeViewForLine:line color:colorCopy];
    [v9 setText:stringCopy];
  }
}

- (void)setTravelTimeString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    _travelTimeView = [(EKEventDetailTitleCell *)self _travelTimeView];
    [_travelTimeView setText:stringCopy];

    v5 = self->_visibleItems | 0x10;
  }

  else
  {
    v5 = self->_visibleItems & 0xFFFFFFEF;
  }

  self->_visibleItems = v5;
}

- (void)setRecurrenceString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    _recurrenceView = [(EKEventDetailTitleCell *)self _recurrenceView];
    [_recurrenceView setText:stringCopy];

    _recurrenceButton = [(EKEventDetailTitleCell *)self _recurrenceButton];
    [_recurrenceButton setTitle:stringCopy forState:0];

    v6 = self->_visibleItems | 0x20;
  }

  else
  {
    v6 = self->_visibleItems & 0xFFFFFFDF;
  }

  self->_visibleItems = v6;
}

- (void)setStatusString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    _statusView = [(EKEventDetailTitleCell *)self _statusView];
    [_statusView setText:stringCopy];

    v5 = self->_visibleItems | 0x40;
  }

  else
  {
    v5 = self->_visibleItems & 0xFFFFFFBF;
  }

  self->_visibleItems = v5;
}

- (void)setPrimaryTextColor:(id)color
{
  v16 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  [(UILabel *)self->_titleView setTextColor:colorCopy];
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

        locationView = [*(*(&v11 + 1) + 8 * v9) locationView];
        [locationView setTextColor:colorCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setNumberOfTitleLines:(unint64_t)lines
{
  if (self->_numberOfTitleLines != lines)
  {
    self->_numberOfTitleLines = lines;
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
  [self _registerForInvalidation];
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
  [self _registerForInvalidation];
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
  [self _registerForInvalidation];
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
  [self _registerForInvalidation];
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

- (void)addLocation:(id)location
{
  locationCopy = location;
  if ([locationCopy length] && +[EKEventDetailLocationItem isValidLocation:event:](EKEventDetailLocationItem, "isValidLocation:event:", locationCopy, self->super._event))
  {
    if (!self->_locationItems)
    {
      array = [MEMORY[0x1E695DF70] array];
      locationItems = self->_locationItems;
      self->_locationItems = array;
    }

    v6 = [[EKEventDetailLocationItem alloc] initWithLocationName:locationCopy forEvent:self->super._event];
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

        locationView = [*(*(&v113 + 1) + 8 * i) locationView];
        [locationView removeFromSuperview];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v113 objects:v121 count:16];
    }

    while (v5);
  }

  locationItems = self->_locationItems;
  self->_locationItems = 0;

  status = [(EKEvent *)self->super._event status];
  title = [(EKEvent *)self->super._event title];
  [(EKEventDetailTitleCell *)self setTitle:title];

  locationsWithoutPrediction = [(EKEvent *)self->super._event locationsWithoutPrediction];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v12 = [locationsWithoutPrediction countByEnumeratingWithState:&v109 objects:v120 count:16];
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
          objc_enumerationMutation(locationsWithoutPrediction);
        }

        [(EKEventDetailTitleCell *)self addLocation:*(*(&v109 + 1) + 8 * j)];
      }

      v13 = [locationsWithoutPrediction countByEnumeratingWithState:&v109 objects:v120 count:16];
    }

    while (v13);
  }

  attendees = [(EKEvent *)self->super._event attendees];
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __32__EKEventDetailTitleCell_update__block_invoke;
  v108[3] = &unk_1E84414F0;
  v108[4] = self;
  [attendees enumerateObjectsUsingBlock:v108];

  if ([(EKEventDetailTitleCell *)self _shouldShowSuggestedLocationCell])
  {
    _suggestedLocationCell = [(EKEventDetailTitleCell *)self _suggestedLocationCell];
    [_suggestedLocationCell setEvent:self->super._event];

    self->_visibleItems |= 0x100u;
  }

  if ([(EKEventDetailTitleCell *)self _shouldShowConferenceCell])
  {
    _conferenceDetailView = [(EKEventDetailTitleCell *)self _conferenceDetailView];
    [_conferenceDetailView update];

    self->_visibleItems |= 0x200u;
  }

  calendar = [(EKEvent *)self->super._event calendar];
  v92 = calendar;
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self))
  {
    [(EKEventDetailTitleCell *)self setColor:0];
  }

  else
  {
    eventStore = [(EKEvent *)self->super._event eventStore];
    v21 = [eventStore colorForCalendar:calendar];
    [(EKEventDetailTitleCell *)self setColor:v21];
  }

  horizontalSizeClass = EKUIWidthSizeClassForViewHierarchy(self);
  if (!horizontalSizeClass)
  {
    traitCollection = [(EKEventDetailTitleCell *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    v24 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v119 = horizontalSizeClass;
      _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_ERROR, "Size class from EKUIWidthSizeClassForViewHierarchy was unspecified, so fall back to getting size class from view's trait collection [%ld]", buf, 0xCu);
    }

    if (!horizontalSizeClass)
    {
      v25 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        horizontalSizeClass = 1;
        v119 = 1;
        _os_log_impl(&dword_1D3400000, v25, OS_LOG_TYPE_ERROR, "Size class from view's trait collection was unspecified, so fall back to default size class [%ld]", buf, 0xCu);
      }

      else
      {
        horizontalSizeClass = 1;
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
  delegate = [(EKEventDetailTitleCell *)self delegate];
  proposedTime = [delegate proposedTime];
  CalDetailStringsForCalendarEvent(event, horizontalSizeClass, &v107, &v106, &v105, &v104, &v103, &v102, &v101, &v100, proposedTime, 0);
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

  v37 = status;
  if (![(EKEvent *)self->super._event isOrWasPartOfRecurringSeries])
  {
    singleRecurrenceRule = 0;
    goto LABEL_39;
  }

  singleRecurrenceRule = [(EKEvent *)self->super._event singleRecurrenceRule];
  if (!singleRecurrenceRule)
  {
LABEL_39:
    v45 = 0;
    goto LABEL_40;
  }

  startDate = [(EKEvent *)self->super._event startDate];
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

  v37 = status;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_update name:*MEMORY[0x1E6993308] object:0];

    self->_observingLocaleChanges = 1;
  }

  if ([(EKEventDetailTitleCell *)self nonInteractivePlatterMode]&& (CUIKCurrentLocaleRequiresIndianLanguageAdjustments() & 1) != 0)
  {
    _scaledTitleFont = [objc_opt_class() _scaledTitleFont];
    v50 = 1;
  }

  else
  {
    _scaledTitleFont = [objc_opt_class() _titleFont];
    v50 = 0;
  }

  v79 = _scaledTitleFont;
  [(UILabel *)self->_titleView setFont:_scaledTitleFont];
  titleView = self->_titleView;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)titleView setTextColor:labelColor];

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

        locationView2 = [*(*(&v96 + 1) + 8 * k) locationView];
        [locationView2 setFont:v54];
      }

      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v96 objects:v117 count:16];
    }

    while (v57);
  }

  travelTimeView = self->_travelTimeView;
  _locationFont = [objc_opt_class() _locationFont];
  [(UILabel *)travelTimeView setFont:_locationFont];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_travelTimeView setTextColor:secondaryLabelColor];

  dateTimeViews = self->_dateTimeViews;
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __32__EKEventDetailTitleCell_update__block_invoke_235;
  v94[3] = &unk_1E8441D10;
  v65 = v54;
  v95 = v65;
  [(NSMutableArray *)dateTimeViews enumerateObjectsUsingBlock:v94];
  recurrenceView = self->_recurrenceView;
  _locationFont2 = [objc_opt_class() _locationFont];
  [(UILabel *)recurrenceView setFont:_locationFont2];

  v68 = self->_recurrenceView;
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v68 setTextColor:secondaryLabelColor2];

  statusView = self->_statusView;
  _locationFont3 = [objc_opt_class() _locationFont];
  [(UILabel *)statusView setFont:_locationFont3];

  v72 = self->_statusView;
  if (status == EKEventStatusCanceled)
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
    preferredLocation = [(EKEvent *)self->super._event preferredLocation];
    if ([preferredLocation isStructured] && objc_msgSend(preferredLocation, "isPrediction"))
    {
      delegate = [(EKEventDetailTitleCell *)self delegate];
      proposedTime = [delegate proposedTime];
      if (proposedTime)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        delegate2 = [(EKEventDetailTitleCell *)self delegate];
        v3 = [delegate2 minimalMode] ^ 1;
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

  delegate = [(EKEventDetailTitleCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKEventDetailTitleCell *)self delegate];
    showsDetectedConferenceItem = [delegate2 showsDetectedConferenceItem];
  }

  else
  {
    showsDetectedConferenceItem = 0;
  }

  virtualConference = [(EKEvent *)self->super._event virtualConference];
  if (virtualConference)
  {
    v3 = 1;
  }

  else
  {
    conferenceURLForDisplay = [(EKEvent *)self->super._event conferenceURLForDisplay];
    v3 = (conferenceURLForDisplay != 0) & showsDetectedConferenceItem;
  }

  return v3;
}

- (void)editButtonTapped
{
  delegate = [(EKEventDetailTitleCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(EKEventDetailTitleCell *)self delegate];
    [delegate2 editButtonPressed];
  }
}

- (void)nextButtonTapped
{
  delegate = [(EKEventDetailTitleCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(EKEventDetailTitleCell *)self delegate];
    [delegate2 nextButtonPressed];
  }
}

- (void)previousButtonTapped
{
  delegate = [(EKEventDetailTitleCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(EKEventDetailTitleCell *)self delegate];
    [delegate2 previousButtonPressed];
  }
}

- (void)showRecurrenceDiff:(id)diff
{
  diffCopy = diff;
  v5 = [EKUIRecurrenceDifferenceViewController alloc];
  event = [(EKEventDetailCell *)self event];
  v10 = [(EKUIRecurrenceDifferenceViewController *)v5 initWithEvent:event andSummary:diffCopy];

  delegate = [(EKEventDetailTitleCell *)self delegate];
  owningViewController = [delegate owningViewController];
  navigationController = [owningViewController navigationController];
  [navigationController pushViewController:v10 animated:1];
}

- (void)setHideTopCellSeparator:(BOOL)separator
{
  if (self->_hideTopCellSeparator != separator)
  {
    self->_hideTopCellSeparator = separator;
    [(EKEventDetailTitleCell *)self _updateSeparatorStyle];
  }
}

- (void)setHideBottomCellSeparator:(BOOL)separator
{
  if (self->_hideBottomCellSeparator != separator)
  {
    self->_hideBottomCellSeparator = separator;
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_titleView setBackgroundColor:clearColor];

    [(UILabel *)self->_titleView setAccessibilityIdentifier:@"event-details-title-text"];
    titleView = self->_titleView;
  }

  return titleView;
}

- (void)handleTapOnLabel:(id)label
{
  if (!self->_showAllLocation)
  {
    labelCopy = label;
    view = [labelCopy view];
    [labelCopy locationInView:view];
    v6 = v5;
    v8 = v7;

    [view bounds];
    v10 = v9;
    v12 = v11;
    textContainer = [view textContainer];
    layoutManager = [textContainer layoutManager];
    textContainer2 = [view textContainer];
    [layoutManager usedRectForTextContainer:textContainer2];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    textContainer3 = [view textContainer];
    layoutManager2 = [textContainer3 layoutManager];
    textContainer4 = [view textContainer];
    v27 = [layoutManager2 characterIndexForPoint:textContainer4 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v6 - -(v17 - (v10 - v21) * 0.5), v8 - -(v19 - (v12 - v23) * 0.5)}];

    location = self->_showLocationRange.location;
    v30 = v27 >= location;
    v29 = v27 - location;
    v30 = !v30 || v29 >= self->_showLocationRange.length;
    if (!v30)
    {
      self->_showAllLocation = 1;
      delegate = [(EKEventDetailTitleCell *)self delegate];
      [delegate refreshForHeightChange];
    }
  }
}

- (id)_dateTimeViewForLine:(unint64_t)line color:(id)color
{
  colorCopy = color;
  if (line <= 3)
  {
    dateTimeViews = self->_dateTimeViews;
    if (!dateTimeViews)
    {
      v9 = objc_opt_new();
      v10 = self->_dateTimeViews;
      self->_dateTimeViews = v9;

      dateTimeViews = self->_dateTimeViews;
    }

    if ([(NSMutableArray *)dateTimeViews count]<= line)
    {
      do
      {
        v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [v11 setBackgroundColor:clearColor];

        [(NSMutableArray *)self->_dateTimeViews addObject:v11];
      }

      while ([(NSMutableArray *)self->_dateTimeViews count]<= line);
    }

    v13 = [(NSMutableArray *)self->_dateTimeViews objectAtIndexedSubscript:line];
    v7 = v13;
    if (colorCopy)
    {
      [v13 setTextColor:colorCopy];
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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6 setTextColor:secondaryLabelColor];

    v8 = self->_travelTimeView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v8 setBackgroundColor:clearColor];

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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6 setTextColor:secondaryLabelColor];

    v8 = self->_recurrenceView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v8 setBackgroundColor:clearColor];

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
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setTitleLineBreakMode:4];
    [plainButtonConfiguration setTitleLineBreakMode:0];
    [plainButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_247];
    if (MEMORY[0x1D38B98D0]([plainButtonConfiguration setContentInsets:{0.0, 0.0, 0.0, 0.0}]))
    {
      clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
      [clearConfiguration setCornerRadius:0.0];
      [plainButtonConfiguration setBackground:clearConfiguration];
      [plainButtonConfiguration setCornerStyle:-1];
    }

    v5 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
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
  delegate = [(EKEventDetailTitleCell *)self delegate];
  LOBYTE(v14) = [delegate shouldShowNextButton];

  if ((v14 & 1) == 0)
  {
    [v11 setAttributes:1];
  }

  delegate2 = [(EKEventDetailTitleCell *)self delegate];
  shouldShowPreviousButton = [delegate2 shouldShowPreviousButton];

  if ((shouldShowPreviousButton & 1) == 0)
  {
    [v16 setAttributes:1];
  }

  event = [(EKEventDetailCell *)self event];
  isDetached = [event isDetached];

  if (isDetached)
  {
    v22 = MEMORY[0x1E6966A60];
    event2 = [(EKEventDetailCell *)self event];
    originalItem = [event2 originalItem];
    event3 = [(EKEventDetailCell *)self event];
    v26 = [v22 diffSummaryBetweenObject:originalItem andObject:event3];

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

  menu = [(UIButton *)self->_recurrenceButton menu];
  [menu setAccessibilityIdentifier:@"event-details-recurrence-menu"];

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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v8 setBackgroundColor:clearColor];

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

      secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      [(UIButton *)self->_editButton setBackgroundColor:secondarySystemFillColor];

      v7 = self->_editButton;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIButton *)v7 setTitleColor:labelColor forState:0];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC738] buttonWithType:1];
      labelColor = self->_editButton;
      self->_editButton = v9;
    }

    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    titleLabel = [(UIButton *)self->_editButton titleLabel];
    [titleLabel setFont:v10];

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

- (double)_layoutForWidth:(double)width
{
  v326 = *MEMORY[0x1E69E9840];
  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  selfCopy = self;
  if (MEMORY[0x1D38B98D0]([MEMORY[0x1E69DD250] setAnimationsEnabled:0]))
  {
    layer = [(EKEventDetailTitleCell *)self layer];
    [layer setMasksToBounds:0];

    layer2 = [(EKEventDetailTitleCell *)self layer];
    [layer2 setCornerRadius:0.0];
  }

  delegate = [(EKEventDetailTitleCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(EKEventDetailTitleCell *)self delegate];
    LODWORD(delegate) = [delegate2 shouldShowEditButtonInline];

    delegate3 = [(EKEventDetailTitleCell *)selfCopy delegate];
    if ([delegate3 shouldShowNextButton])
    {
      shouldShowPreviousButton = 1;
    }

    else
    {
      delegate4 = [(EKEventDetailTitleCell *)selfCopy delegate];
      shouldShowPreviousButton = [delegate4 shouldShowPreviousButton];
    }

    selfCopy2 = selfCopy;
  }

  else
  {
    shouldShowPreviousButton = 0;
    selfCopy2 = self;
  }

  [(EKEventDetailTitleCell *)selfCopy2 layoutMargins];
  v297 = v11;
  [(EKEventDetailTitleCell *)selfCopy2 layoutMargins];
  v295 = v12;
  [(EKEventDetailTitleCell *)selfCopy2 safeAreaInsets];
  v293 = v13;
  [(EKEventDetailTitleCell *)selfCopy2 safeAreaInsets];
  v291 = v14;
  if ([(EKEventDetailTitleCell *)selfCopy2 nonInteractivePlatterMode]&& (CUIKCurrentLocaleRequiresIndianLanguageAdjustments() & 1) != 0)
  {
    _scaledTitleFont = [objc_opt_class() _scaledTitleFont];
    v15 = 1;
  }

  else
  {
    _scaledTitleFont = [objc_opt_class() _titleFont];

    v15 = 0;
  }

  v316 = 0;
  v317 = &v316;
  v318 = 0x3010000000;
  v320 = 0;
  v321 = 0.0;
  v319 = "";
  [(EKEventDetailCell *)selfCopy detailsLeftInset];
  v17 = v16;
  [_scaledTitleFont _scaledValueForValue:30.0];
  v19 = v18;
  [(UILabel *)selfCopy->_titleView _firstBaselineOffsetFromTop];
  v320 = v17;
  v321 = v19 - v20;
  if (!delegate)
  {
    v40 = selfCopy;
    [(UIButton *)selfCopy->_editButton removeFromSuperview];
    goto LABEL_39;
  }

  _editButton = [(EKEventDetailTitleCell *)selfCopy _editButton];
  [_editButton sizeToFit];

  v22 = selfCopy;
  if (MEMORY[0x1D38B98D0]())
  {
    [(UIButton *)selfCopy->_editButton frame];
    v24 = v23;
    [(UIButton *)selfCopy->_editButton frame];
    v26 = v25;
    [(UIButton *)selfCopy->_editButton frame];
    v28 = v27;
    [(UIButton *)selfCopy->_editButton frame];
    [(UIButton *)selfCopy->_editButton setFrame:v24, v26, v28 + 20.0, v29 + 8.0];
    [(UIButton *)selfCopy->_editButton frame];
    v31 = v30;
    layer3 = [(UIButton *)selfCopy->_editButton layer];
    [layer3 setCornerRadius:v31 * 0.5];

    layer4 = [(UIButton *)selfCopy->_editButton layer];
    [layer4 setMasksToBounds:1];

    v22 = selfCopy;
  }

  [(UIButton *)v22->_editButton layoutIfNeeded];
  frame = [(UIButton *)v22->_editButton frame];
  rect = v35;
  v37 = v36;
  v38 = v317[4];
  v39 = v317[5];
  if (MEMORY[0x1D38B98D0](frame))
  {
    if (CalInterfaceIsLeftToRight())
    {
      v38 = width - v37;
    }

    else
    {
      v38 = 0.0;
    }

    goto LABEL_26;
  }

  traitCollection = [(EKEventDetailTitleCell *)v22 traitCollection];
  if (EKUIUsesLargeTextLayout(traitCollection))
  {
    IsLeftToRight = CalInterfaceIsLeftToRight();

    v22 = selfCopy;
    if (IsLeftToRight)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v22 = selfCopy;
  }

  titleLabel = [(UIButton *)v22->_editButton titleLabel];
  [titleLabel frame];
  v45 = v44;
  titleLabel2 = [(UIButton *)v22->_editButton titleLabel];
  [titleLabel2 frame];
  v48 = v47;

  v22 = selfCopy;
  [(EKEventDetailTitleCell *)selfCopy layoutMargins];
  v38 = v37 - v45 - v48 + width - v49 - v37;
LABEL_26:
  if (v22->_visibleItems)
  {
    traitCollection2 = [(EKEventDetailTitleCell *)v22 traitCollection];
    v51 = EKUIUsesLargeTextLayout(traitCollection2);

    if (!v51)
    {
      font = [(UILabel *)selfCopy->_titleView font];
      titleLabel3 = [(UIButton *)selfCopy->_editButton titleLabel];
      font2 = [titleLabel3 font];

      [font ascender];
      v56 = v55;
      [font capHeight];
      v58 = v57;
      [font2 ascender];
      v60 = v59;
      [font capHeight];
      v62 = v61;
      titleLabel4 = [(UIButton *)selfCopy->_editButton titleLabel];
      [titleLabel4 frame];
      v65 = v64;

      CalRoundToScreenScale(v56 + v58 - (v60 + v62) - v65);
      v67 = v66;

      v39 = v39 + v67;
    }

    v22 = selfCopy;
  }

  if ((CalInterfaceIsLeftToRight() & 1) != 0 || ([(EKEventDetailTitleCell *)v22 traitCollection], v68 = objc_claimAutoreleasedReturnValue(), v69 = EKUIUsesLargeTextLayout(v68), v68, v22 = selfCopy, v69))
  {
    if (CalInterfaceIsLeftToRight())
    {
      traitCollection3 = [(EKEventDetailTitleCell *)v22 traitCollection];
      v71 = EKUIUsesLargeTextLayout(traitCollection3);

      v22 = selfCopy;
      if (v71)
      {
        [(EKEventDetailTitleCell *)selfCopy safeAreaInsets];
        v38 = v38 + v72;
      }
    }
  }

  else
  {
    [(EKEventDetailTitleCell *)selfCopy layoutMargins];
    v38 = v73;
  }

  contentView = [(EKEventDetailTitleCell *)v22 contentView];
  [contentView convertRect:v22 fromView:{v38, v39, v37, rect}];
  [(UIButton *)v22->_editButton setFrame:?];

  contentView2 = [(EKEventDetailTitleCell *)selfCopy contentView];
  [contentView2 addSubview:selfCopy->_editButton];

  traitCollection4 = [(EKEventDetailTitleCell *)selfCopy traitCollection];
  v77 = EKUIUsesLargeTextLayout(traitCollection4);

  if (v77)
  {
    v327.origin.x = v38;
    v327.origin.y = v39;
    v327.size.width = v37;
    v327.size.height = rect;
    v40 = selfCopy;
    v317[5] = CGRectGetMaxY(v327);
  }

  else
  {
    v40 = selfCopy;
  }

LABEL_39:
  v78 = width - v297 - v295;
  v284 = v293 + v291;
  v79 = *(v317 + 5);
  v312 = 0;
  v313 = &v312;
  v314 = 0x2020000000;
  v315 = v79;
  if (v40->_visibleItems)
  {
    _editButton2 = [(EKEventDetailTitleCell *)v40 _editButton];
    [(UIButton *)v40->_editButton frame];
    [_editButton2 sizeThatFits:{v81, v82}];
    v84 = v83;

    delegate5 = [(EKEventDetailTitleCell *)selfCopy delegate];
    LODWORD(_editButton2) = [delegate5 titleShouldInsetForEditButton:selfCopy];

    LODWORD(delegate5) = MEMORY[0x1D38B98D0]();
    [(UILabel *)selfCopy->_titleView frame];
    v87 = v86;
    if ((delegate5 & _editButton2) != 0)
    {
      v88 = v84 + 8.0;
    }

    else
    {
      v88 = 0.0;
    }

    v89 = v317[4];
    v90 = v317[5];
    traitCollection5 = [(EKEventDetailTitleCell *)selfCopy traitCollection];
    v92 = EKUIUsesLargeTextLayout(traitCollection5);

    v93 = v78 - v88;
    if (v92)
    {
      p_isa = &selfCopy->super.super.super.super.super.super.isa;
    }

    else
    {
      p_isa = &selfCopy->super.super.super.super.super.super.isa;
      [(UIButton *)selfCopy->_editButton frame];
      v93 = v93 - v95;
    }

    [p_isa[140] setFrame:{CalRoundRectToScreenScale(v89, v90, v93, v87)}];
    [p_isa[140] sizeToFit];
    if ((CalInterfaceIsLeftToRight() & 1) == 0)
    {
      [p_isa[140] frame];
      [p_isa[140] setFrame:width - v284 - v96 - v97];
    }

    [p_isa[140] frame];
    v99 = v98;
    contentView3 = [p_isa contentView];
    [contentView3 addSubview:p_isa[140]];

    v40 = selfCopy;
    [(UILabel *)selfCopy->_titleView _lastLineBaseline];
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
    obj = selfCopy->_locationItems;
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
          locationView = [v113 locationView];
          [locationView frame];
          v116 = v115;
          v118 = v117;
          [v113 updateAttributedString];
          [locationView setFrame:{v116, v118, v78, 0.0}];
          [locationView sizeToFit];
          font3 = [locationView font];
          [font3 _scaledValueForValue:22.0];
          v121 = v120;

          [locationView frame];
          if (v122 > v121 * 8.0 && !selfCopy->_showAllLocation)
          {
            [locationView frame];
            v124 = v123;
            [locationView frame];
            [locationView setFrame:v124];
            v323 = v286;
            labelColor = [MEMORY[0x1E69DC888] labelColor];
            v324 = labelColor;
            v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v324 forKeys:&v323 count:1];
            [locationView setLinkTextAttributes:v126];

            layoutManager = [locationView layoutManager];
            textContainer = [locationView textContainer];
            v129 = [layoutManager glyphRangeForTextContainer:textContainer];
            v131 = v130;

            attributedText = [locationView attributedText];
            v292 = [attributedText attributesAtIndex:0 effectiveRange:0];

            v133 = objc_alloc(MEMORY[0x1E696AD40]);
            ellipsisString = [MEMORY[0x1E696AEC0] ellipsisString];
            v298 = [v133 initWithString:ellipsisString attributes:v292];

            v135 = EventKitUIBundle();
            v288 = [v135 localizedStringForKey:@"ShowMoreLocation" value:@"   Show More" table:0];

            recta = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v292];
            v136 = CalendarAppTintColor();
            [recta setObject:v136 forKeyedSubscript:v286];

            v137 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v288 attributes:recta];
            [v298 appendAttributedString:v137];

            v138 = objc_alloc(MEMORY[0x1E69DB800]);
            textContainer2 = [locationView textContainer];
            [textContainer2 size];
            v140 = [v138 initWithSize:?];

            v141 = objc_alloc_init(MEMORY[0x1E69DB808]);
            [v141 setAttributedString:v298];
            v142 = objc_opt_new();
            [v142 setTextContainer:v140];
            [v141 addTextLayoutManager:v142];
            textContainer3 = [v142 textContainer];
            layoutManager2 = [textContainer3 layoutManager];
            [layoutManager2 boundingRectForGlyphRange:0 inTextContainer:{objc_msgSend(v298, "length"), v140}];
            v146 = v145;

            layoutManager3 = [locationView layoutManager];
            textContainer4 = [locationView textContainer];
            [layoutManager3 boundingRectForGlyphRange:v131 + v129 - 1 inTextContainer:{1, textContainer4}];
            v150 = v149;

            textContainer5 = [locationView textContainer];
            [textContainer5 size];
            v153 = v152;

            textContainer6 = [locationView textContainer];
            layoutManager4 = [textContainer6 layoutManager];
            textContainer7 = [locationView textContainer];
            v157 = [layoutManager4 glyphIndexForPoint:textContainer7 inTextContainer:{v153 - v146, v150}];

            textContainer8 = [locationView textContainer];
            layoutManager5 = [textContainer8 layoutManager];
            v160 = [layoutManager5 characterIndexForGlyphAtIndex:v157];

            textStorage = [locationView textStorage];
            string = [textStorage string];
            v163 = [string length];
            selfCopy->_showLocationRange.location = v160 - 1;
            selfCopy->_showLocationRange.length = v163 - (v160 - 1);

            textStorage2 = [locationView textStorage];
            [textStorage2 replaceCharactersInRange:selfCopy->_showLocationRange.location withAttributedString:{selfCopy->_showLocationRange.length, v298}];

            tapRecognizer = [v113 tapRecognizer];
            LODWORD(textStorage2) = tapRecognizer == 0;

            if (textStorage2)
            {
              v166 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:selfCopy action:sel_handleTapOnLabel_];
              [locationView addGestureRecognizer:v166];
            }
          }

          [locationView frame];
          v168 = v167;
          v170 = v169;
          v171 = v313[3];
          font4 = [locationView font];
          [font4 _scaledValueForValue:22.0];
          v174 = v173;
          font5 = [locationView font];
          [font5 ascender];
          v317[5] = v171 + v174 - v176;

          v177 = v317[4];
          v178 = v317[5];
          v179 = CalInterfaceIsLeftToRight();
          v180 = width - v284 - v168 - v177;
          if (v179)
          {
            v180 = v177;
          }

          [locationView setFrame:{CalRoundRectToScreenScale(v180, v178, v168, v170)}];
          contentView4 = [(EKEventDetailTitleCell *)selfCopy contentView];
          [contentView4 addSubview:locationView];

          v328.origin.x = v177;
          v328.origin.y = v178;
          v328.size.width = v168;
          v328.size.height = v170;
          MaxY = CGRectGetMaxY(v328);
          font6 = [locationView font];
          [font6 descender];
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
    v106 = selfCopy->_locationItems;
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

          locationView2 = [*(*(&v304 + 1) + 8 * j) locationView];
          [locationView2 removeFromSuperview];
        }

        v107 = [(NSMutableArray *)v106 countByEnumeratingWithState:&v304 objects:v322 count:16];
      }

      while (v107);
    }

    v317[5] = v313[3];
  }

  v185 = &selfCopy->super.super.super.super.super.super.isa;
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
    _suggestedLocationCell = [(EKEventDetailTitleCell *)selfCopy _suggestedLocationCell];
    LODWORD(v194) = 1148846080;
    LODWORD(v195) = 1112014848;
    [_suggestedLocationCell systemLayoutSizeFittingSize:width - v284 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v194, v195}];
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
    [(EKEventDetailSuggestedLocationCell *)selfCopy->_suggestedLocationCell setFrame:x, y, width, height];
    contentView5 = [(EKEventDetailTitleCell *)selfCopy contentView];
    [contentView5 addSubview:selfCopy->_suggestedLocationCell];

    v185 = &selfCopy->super.super.super.super.super.super.isa;
    if ((selfCopy->_visibleItems & 0x200) != 0)
    {
      v190 = v317;
      v189 = v317[5];
      v191 = 23.5;
LABEL_94:
      v208 = v189 + v191;
      v190[5] = v189 + v191;
      _conferenceDetailView = [v185 _conferenceDetailView];
      LODWORD(v210) = 1148846080;
      LODWORD(v211) = 1112014848;
      [_conferenceDetailView systemLayoutSizeFittingSize:width - v284 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v210, v211}];
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
      [(EKEventDetailConferenceCell *)selfCopy->_conferenceDetailView setFrame:v216, v217, v218, v219];
      contentView6 = [(EKEventDetailTitleCell *)selfCopy contentView];
      [contentView6 addSubview:selfCopy->_conferenceDetailView];

      v207 = v317;
      v206 = v317[5];
      v185 = &selfCopy->super.super.super.super.super.super.isa;
      goto LABEL_95;
    }
  }

  else
  {
    [(EKEventDetailSuggestedLocationCell *)selfCopy->_suggestedLocationCell removeFromSuperview];
    v189 = v313[3];
    v190 = v317;
    v317[5] = v189;
    if ((selfCopy->_visibleItems & 0x200) != 0)
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
  startCalendarDate = [v185[136] startCalendarDate];
  dayComponents = [startCalendarDate dayComponents];

  endCalendarDate = [(EKEvent *)selfCopy->super._event endCalendarDate];
  dayComponents2 = [endCalendarDate dayComponents];

  v226 = selfCopy;
  v227 = [dayComponents day];
  if (v227 == [dayComponents2 day] && (v228 = objc_msgSend(dayComponents, "month"), v228 == objc_msgSend(dayComponents2, "month")))
  {
    year = [dayComponents year];
    v230 = year != [dayComponents2 year];
  }

  else
  {
    v230 = 1;
  }

  v302[0] = 0;
  v302[1] = v302;
  v302[2] = 0x2020000000;
  v303 = 0;
  dateTimeViews = selfCopy->_dateTimeViews;
  v300[0] = MEMORY[0x1E69E9820];
  v300[1] = 3221225472;
  v300[2] = __42__EKEventDetailTitleCell__layoutForWidth___block_invoke;
  v300[3] = &unk_1E8441D58;
  *&v300[8] = width;
  v300[9] = 0;
  v300[4] = selfCopy;
  v300[5] = v302;
  v300[6] = &v316;
  v300[7] = &v312;
  *&v300[10] = v78;
  *&v300[11] = v283;
  v301 = v230;
  [(NSMutableArray *)dateTimeViews enumerateObjectsUsingBlock:v300];
  if ((selfCopy->_visibleItems & 0x20) != 0)
  {
    v232 = &OBJC_IVAR___EKEventDetailTitleCell__recurrenceButton;
    if (!shouldShowPreviousButton)
    {
      v232 = &OBJC_IVAR___EKEventDetailTitleCell__recurrenceView;
    }

    v233 = *(&selfCopy->super.super.super.super.super.super.isa + *v232);
    p_recurrenceView = &selfCopy->_recurrenceView;
    v235 = selfCopy->_recurrenceView;
    p_recurrenceButton = &selfCopy->_recurrenceView;
    if ((shouldShowPreviousButton & 1) == 0)
    {
      p_recurrenceButton = &selfCopy->_recurrenceButton;
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
      v244 = width - v284 - v240 - v241;
    }

    [v233 setFrame:{CalRoundRectToScreenScale(v244, v243, v240, v239)}];
    [*p_recurrenceView setFrame:{CalRoundRectToScreenScale(v244, v243, v240, v239)}];
    v245 = v317[5];
    [(UILabel *)v235 _lastLineBaseline];
    v247 = v245 + v246;
    v313[3] = v247;
    v317[5] = v283 + v247;
    contentView7 = [(EKEventDetailTitleCell *)selfCopy contentView];
    [contentView7 addSubview:v233];

    v226 = selfCopy;
  }

  else
  {
    [(UILabel *)selfCopy->_recurrenceView removeFromSuperview];
    [(UIButton *)selfCopy->_recurrenceButton removeFromSuperview];
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
    v256 = width - v284 - v78 - v252;
    if (v255)
    {
      v256 = v252;
    }

    [(UILabel *)v226->_travelTimeView setFrame:CalRoundRectToScreenScale(v256, v254, v78, v251)];
    contentView8 = [(EKEventDetailTitleCell *)v226 contentView];
    [contentView8 addSubview:v226->_travelTimeView];

    v258 = v317[5];
    v226 = selfCopy;
    [(UILabel *)selfCopy->_travelTimeView _lastLineBaseline];
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
    v270 = width - v284 - v263 - v266;
    if (v269)
    {
      v270 = v266;
    }

    [(UILabel *)v226->_statusView setFrame:CalRoundRectToScreenScale(v270, v268, v263, v265)];
    contentView9 = [(EKEventDetailTitleCell *)v226 contentView];
    [contentView9 addSubview:v226->_statusView];

    v272 = v317[5];
    v226 = selfCopy;
    [(UILabel *)selfCopy->_statusView _lastLineBaseline];
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

  [MEMORY[0x1E69DD250] setAnimationsEnabled:areAnimationsEnabled];
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

- (void)layoutForWidth:(double)width position:(int)position
{
  v19.receiver = self;
  v19.super_class = EKEventDetailTitleCell;
  [EKEventDetailCell layoutForWidth:sel_layoutForWidth_position_ position:?];
  self->_lastPosition = position;
  [(EKEventDetailTitleCell *)self _layoutForWidth:width];
  v8 = v7;
  frame = [(EKEventDetailTitleCell *)self frame];
  v11 = v10;
  v13 = v12;
  if ((MEMORY[0x1D38B98D0](frame) & 1) == 0)
  {
    v14 = 0.0;
    v15 = 0.0;
    if (position)
    {
      [objc_opt_class() detailsTopVerticalInset];
      v15 = v16;
    }

    if ((position & 4) != 0)
    {
      [objc_opt_class() detailsBottomVerticalInset];
      v14 = v17;
    }

    v8 = v8 + v15 + v14;
  }

  CalRoundToScreenScale(v8);
  [(EKEventDetailTitleCell *)self setFrame:v11, v13, width, v18];
}

- (void)_promptForSpanWithSourceView:(id)view completionBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  if (([(EKEvent *)self->super._event isOrWasPartOfRecurringSeries]& 1) != 0)
  {
    window = [(EKEventDetailTitleCell *)self window];
    rootViewController = [window rootViewController];

    presentedViewController = [rootViewController presentedViewController];

    if (presentedViewController)
    {
      do
      {
        presentedViewController2 = [rootViewController presentedViewController];

        v11PresentedViewController = [presentedViewController2 presentedViewController];

        rootViewController = presentedViewController2;
      }

      while (v11PresentedViewController);
    }

    else
    {
      presentedViewController2 = rootViewController;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__17;
    v40 = __Block_byref_object_dispose__17;
    v41 = 0;
    [viewCopy bannerPopoverSourceRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    bannerView = [viewCopy bannerView];
    [viewCopy convertRect:bannerView fromView:{v14, v16, v18, v20}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    event = self->super._event;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __71__EKEventDetailTitleCell__promptForSpanWithSourceView_completionBlock___block_invoke;
    v33[3] = &unk_1E8441210;
    v34 = blockCopy;
    v35 = &v36;
    v31 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:presentedViewController2 sourceView:viewCopy sourceRect:event forEvent:v33 withCompletionHandler:v23, v25, v27, v29];
    v32 = v37[5];
    v37[5] = v31;

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
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

- (void)didTapAddSuggestedLocationCell:(id)cell disambiguatedLocation:(id)location
{
  locationCopy = location;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__EKEventDetailTitleCell_didTapAddSuggestedLocationCell_disambiguatedLocation___block_invoke;
  v8[3] = &unk_1E8441238;
  v8[4] = self;
  v9 = locationCopy;
  v7 = locationCopy;
  [(EKEventDetailTitleCell *)self _promptForSpanWithSourceView:cell completionBlock:v8];
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

- (void)didTapDismissSuggestedLocationCell:(id)cell
{
  v4 = MEMORY[0x1E6966B10];
  preferredLocation = [(EKEvent *)self->super._event preferredLocation];
  predictedLOI = [preferredLocation predictedLOI];
  [v4 userInteractionWithPredictedLocationOfInterest:predictedLOI interaction:8];

  [(EKEvent *)self->super._event rejectPredictedLocation];

  [(EKEventDetailTitleCell *)self _saveEventWithSpan:4];
}

- (void)_saveEventWithSpan:(int64_t)span
{
  v19 = *MEMORY[0x1E69E9840];
  eKUI_editor = [(UIResponder *)self EKUI_editor];
  event = self->super._event;
  v14 = 0;
  v7 = [eKUI_editor saveEvent:event span:span error:&v14];
  v8 = v14;
  if ((v7 & 1) == 0)
  {
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = self->super._event;
      v11 = v9;
      title = [(EKEvent *)v10 title];
      *buf = 138412546;
      v16 = title;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Error saving event %@ from the buttons detail item: %@", buf, 0x16u);
    }
  }

  delegate = [(EKEventDetailTitleCell *)self delegate];
  [delegate predictionWasActedOn];
}

- (id)owningViewController
{
  delegate = [(EKEventDetailTitleCell *)self delegate];
  owningViewController = [delegate owningViewController];

  return owningViewController;
}

- (void)conferenceCellUpdated:(id)updated
{
  delegate = [(EKEventDetailTitleCell *)self delegate];
  [delegate refreshForHeightChange];
}

- (BOOL)conferenceCellShouldPresentShareSheet:(id)sheet
{
  selfCopy = self;
  delegate = [(EKEventDetailTitleCell *)self delegate];
  LOBYTE(selfCopy) = [delegate titleCellShouldPresentShareSheet:selfCopy];

  return selfCopy;
}

- (void)conferenceCell:(id)cell requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view
{
  viewCopy = view;
  itemsCopy = items;
  delegate = [(EKEventDetailTitleCell *)self delegate];
  [delegate titleCell:self requestPresentShareSheetWithActivityItems:itemsCopy withPopoverSourceView:viewCopy];
}

- (EKEventDetailTitleCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end