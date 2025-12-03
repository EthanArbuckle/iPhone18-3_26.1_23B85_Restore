@interface MonthViewOccurrence
+ (double)occurrenceHeight;
+ (double)verticalSpaceBetweenOccurrences;
+ (id)_blendColor:(id)color withColor:(id)withColor alpha:(double)alpha;
+ (id)compactHourFont;
+ (id)compactTextFont;
+ (id)hourFont;
+ (id)tallCompactTextFont;
+ (id)textFont;
+ (void)clearCachedFonts;
- (BOOL)_showBackground;
- (BOOL)drawsTimeAtBottom;
- (BOOL)drawsTimeString;
- (BOOL)isNarrow;
- (BOOL)isPointInSymbol:(CGPoint)symbol;
- (BOOL)selected;
- (BOOL)textWraps;
- (CGPoint)_offsetForDotInFrame:(CGRect)frame withDot:(id)dot;
- (CGPoint)_pointForDotInFrame:(CGRect)frame withDot:(id)dot;
- (CGRect)intersectingRect:(CGRect)rect;
- (CGRect)isPointInView:(CGPoint)view;
- (CGRect)occFrame;
- (CGRect)textFrameForFrame:(CGRect)frame;
- (CGRect)timeFrameForFrame:(CGRect)frame;
- (MonthViewOccurrence)initWithFrame:(CGRect)frame occurrence:(id)occurrence forDayRange:(_NSRange)range isProposedTime:(BOOL)time isCompact:(BOOL)compact isLargeCompact:(BOOL)largeCompact isMultiDay:(BOOL)day;
- (MonthViewOccurrence)parent;
- (UIEdgeInsets)_backgroundInsetsIgnoringSplitEdges:(BOOL)edges;
- (UIEdgeInsets)_textInsets;
- (UIEdgeInsets)backgroundInsets;
- (_NSRange)dayRange;
- (double)attributedTitleHeight;
- (double)backgroundAlpha;
- (double)lineHeightAdjustmentOffsetY:(id)y;
- (double)radius;
- (double)startTime;
- (double)widthDrawingTime:(id)time textRect:(CGRect)rect;
- (id)_strikeColor;
- (id)_timeColor;
- (id)_timeString:(id)string;
- (id)_titleColor;
- (id)attributedTime;
- (id)attributedTitle;
- (id)attributedTitleForLabel;
- (id)attributedTitleForWrappingLabel;
- (id)attributedTitleWithParagraphStyle:(id)style;
- (id)backgroundImage;
- (id)description;
- (id)pillImage;
- (unint64_t)backGroundCornerMask;
- (unint64_t)gapBetweenBlock:(id)block;
- (void)_drawBackgroundInFrame:(CGRect)frame;
- (void)_drawInFrame:(CGRect)frame traitCollection:(id)collection;
- (void)_drawString:(id)string inTextRect:(CGRect)rect withTrailingFade:(BOOL)fade;
- (void)_updateColorsForUserInterfaceStyle:(int64_t)style;
- (void)_updateDotImage;
- (void)_updateDotImageView;
- (void)_updateFadeDirection;
- (void)_updateFadeVisibility;
- (void)_updateFadeWidth;
- (void)_updateOccurrenceBackgroundParameters;
- (void)_updateOccurrenceWithForce:(BOOL)force;
- (void)_updateSubviewsIfNeeded;
- (void)_updateTimeStrings;
- (void)addFadeMaskForRect:(CGRect)rect leftSide:(BOOL)side start:(double)start end:(double)end withContext:(CGContext *)context;
- (void)addSegmentWithFrame:(CGRect)frame splitLeftEdge:(BOOL)edge splitRightEdge:(BOOL)rightEdge fadeLeftEdge:(BOOL)leftEdge fadeRightEdge:(BOOL)fadeRightEdge;
- (void)loadViewsIfNeeded;
- (void)relayoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setDrawBackgroundWithLayer:(BOOL)layer;
- (void)setDrawsTimeString:(BOOL)string;
- (void)setFrame:(CGRect)frame;
- (void)setOccurrence:(id)occurrence;
- (void)setSelected:(BOOL)selected;
- (void)setSplitLeftEdge:(BOOL)edge splitRightEdge:(BOOL)rightEdge;
- (void)updateBackgroundWithEdgeInsets:(UIEdgeInsets)insets color:(id)color alpha:(double)alpha cornerMask:(unint64_t)mask;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation MonthViewOccurrence

+ (void)clearCachedFonts
{
  v2 = qword_100251E20;
  qword_100251E20 = 0;

  v3 = qword_100251E28;
  qword_100251E28 = 0;

  v4 = qword_100251E30;
  qword_100251E30 = 0;

  v5 = qword_100251E40;
  qword_100251E40 = 0;

  v6 = qword_100251E38;
  qword_100251E38 = 0;

  qword_100251E48 = 0;
  qword_100251E50 = 0;
}

+ (id)textFont
{
  v2 = qword_100251E20;
  if (!qword_100251E20)
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v4 = qword_100251E20;
    qword_100251E20 = v3;

    v2 = qword_100251E20;
  }

  return v2;
}

+ (id)compactTextFont
{
  v2 = qword_100251E28;
  if (!qword_100251E28)
  {
    v3 = [UIFont cuik_preferredTightLeadingFontForTextStyle:UIFontTextStyleHeadline];
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:11.0];
    v4 = [v3 fontWithSize:?];
    v5 = qword_100251E28;
    qword_100251E28 = v4;

    v2 = qword_100251E28;
  }

  return v2;
}

+ (id)tallCompactTextFont
{
  v2 = qword_100251E30;
  if (!qword_100251E30)
  {
    v3 = [UIFont cuik_preferredTightLeadingFontForTextStyle:UIFontTextStyleHeadline];
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:8.0];
    v4 = [v3 fontWithSize:?];
    v5 = qword_100251E30;
    qword_100251E30 = v4;

    v2 = qword_100251E30;
  }

  return v2;
}

+ (id)hourFont
{
  v2 = qword_100251E38;
  if (!qword_100251E38)
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    v4 = qword_100251E38;
    qword_100251E38 = v3;

    v2 = qword_100251E38;
  }

  return v2;
}

+ (id)compactHourFont
{
  v2 = qword_100251E40;
  if (!qword_100251E40)
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:11.0];
    v4 = [v3 fontWithSize:?];
    v5 = qword_100251E40;
    qword_100251E40 = v4;

    v2 = qword_100251E40;
  }

  return v2;
}

+ (double)occurrenceHeight
{
  result = *&qword_100251E50;
  if (*&qword_100251E50 == 0.0)
  {
    v3 = CUIKCurrentLocaleRequiresIndianLanguageAdjustments();
    v4 = 16.0;
    if (v3)
    {
      v4 = 24.0;
    }

    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v4];
    qword_100251E50 = *&result;
  }

  return result;
}

+ (double)verticalSpaceBetweenOccurrences
{
  result = *&qword_100251E48;
  if (*&qword_100251E48 == 0.0)
  {
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:3.0];
    qword_100251E48 = *&result;
  }

  return result;
}

- (id)_titleColor
{
  if (qword_100251E78 != -1)
  {
    sub_100170DDC();
  }

  if ((*(self + 56) & 0x10) != 0)
  {
    if (*(self + 72))
    {
      v3 = qword_100251E70;
      goto LABEL_24;
    }

    goto LABEL_8;
  }

  if (*(self + 72))
  {
    v4 = +[UIColor whiteColor];
LABEL_25:
    v11 = v4;
    goto LABEL_26;
  }

  if ((self->_invitationType - 3) <= 1)
  {
    v3 = qword_100251E60;
LABEL_24:
    v4 = v3;
    goto LABEL_25;
  }

  if ((*(self + 56) & 8) != 0)
  {
    if ((*(self + 56) & 0x20) != 0)
    {
LABEL_23:
      v3 = qword_100251E58;
      goto LABEL_24;
    }

LABEL_8:
    v3 = qword_100251E68;
    goto LABEL_24;
  }

  if (!self->_compact && (*(self + 56) & 1) == 0 && (*(self + 56) & 2) == 0 || ![(MonthViewOccurrence *)self _showBackground])
  {
    goto LABEL_23;
  }

  os_unfair_lock_lock(&self->_cachedTitleColorsLock);
  if (!self->_cachedTitleColors)
  {
    v5 = [[NSMutableDictionary alloc] initWithCapacity:2];
    cachedTitleColors = self->_cachedTitleColors;
    self->_cachedTitleColors = v5;
  }

  v7 = +[UITraitCollection currentTraitCollection];
  userInterfaceStyle = [v7 userInterfaceStyle];

  v9 = self->_cachedTitleColors;
  v10 = [NSNumber numberWithInteger:userInterfaceStyle];
  v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = CUIKTextColorForCalendarColorForStyle();
    if (v11)
    {
      v12 = self->_cachedTitleColors;
      v13 = [NSNumber numberWithInteger:userInterfaceStyle];
      [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
    }
  }

  os_unfair_lock_unlock(&self->_cachedTitleColorsLock);
LABEL_26:

  return v11;
}

- (id)_timeColor
{
  if (qword_100251E98 != -1)
  {
    sub_100170DF0();
  }

  if (*(self + 72))
  {
    v4 = +[UIColor whiteColor];
LABEL_19:
    v11 = v4;
    goto LABEL_20;
  }

  if ((self->_invitationType - 3) <= 1)
  {
    v3 = qword_100251E88;
LABEL_18:
    v4 = v3;
    goto LABEL_19;
  }

  if (!self->_compact && (*(self + 56) & 1) == 0 && (*(self + 56) & 2) == 0 || ![(MonthViewOccurrence *)self _showBackground])
  {
    v3 = qword_100251E80;
    goto LABEL_18;
  }

  os_unfair_lock_lock(&self->_cachedTimeColorsLock);
  if (!self->_cachedTimeColors)
  {
    v5 = [[NSMutableDictionary alloc] initWithCapacity:2];
    cachedTimeColors = self->_cachedTimeColors;
    self->_cachedTimeColors = v5;
  }

  v7 = +[UITraitCollection currentTraitCollection];
  userInterfaceStyle = [v7 userInterfaceStyle];

  v9 = self->_cachedTimeColors;
  v10 = [NSNumber numberWithInteger:userInterfaceStyle];
  v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = CUIKSecondaryTextColorForCalendarColorForStyle();
    if (v11)
    {
      v12 = self->_cachedTimeColors;
      v13 = [NSNumber numberWithInteger:userInterfaceStyle];
      [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
    }
  }

  os_unfair_lock_unlock(&self->_cachedTimeColorsLock);
LABEL_20:

  return v11;
}

- (id)_strikeColor
{
  if (qword_100251EA8 != -1)
  {
    sub_100170E04();
  }

  if (*(self + 72))
  {
    v3 = +[UIColor whiteColor];
  }

  else
  {
    v3 = qword_100251EA0;
  }

  return v3;
}

- (MonthViewOccurrence)initWithFrame:(CGRect)frame occurrence:(id)occurrence forDayRange:(_NSRange)range isProposedTime:(BOOL)time isCompact:(BOOL)compact isLargeCompact:(BOOL)largeCompact isMultiDay:(BOOL)day
{
  compactCopy = compact;
  length = range.length;
  location = range.location;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  occurrenceCopy = occurrence;
  v49.receiver = self;
  v49.super_class = MonthViewOccurrence;
  height = [(MonthViewOccurrence *)&v49 initWithFrame:x, y, width, height];
  v21 = height;
  if (height)
  {
    height->_dayRange.location = location;
    height->_dayRange.length = length;
    if (day)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    *(height + 56) = *(height + 56) & 0xFD | v22;
    height->_cachedEndRange = height->_dayRange.location + height->_dayRange.length - 1;
    height->_isProposedTime = time;
    if (compactCopy)
    {
      +[MonthViewOccurrence compactTextFont];
    }

    else
    {
      +[MonthViewOccurrence textFont];
    }
    v23 = ;
    objc_storeStrong(&v21->_font, v23);

    v21->_compact = compactCopy;
    v21->_largeCompact = largeCompact;
    v21->_cachedTitleColorsLock._os_unfair_lock_opaque = 0;
    v21->_cachedTimeColorsLock._os_unfair_lock_opaque = 0;
    v21->_cachedTitleHeightsLock._os_unfair_lock_opaque = 0;
    if ((CUIKCurrentLocaleRequiresIndianLanguageAdjustments() & 1) == 0)
    {
      title = [occurrenceCopy title];
      v25 = +[CUIKOROccurrenceState tallCharacterSetCache];
      v26 = [title rangeOfCharacterFromSet:v25];

      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = +[MonthViewOccurrence tallCompactTextFont];
        font = v21->_font;
        v21->_font = v27;
      }
    }

    [(MonthViewOccurrence *)v21 setOccurrence:occurrenceCopy];
    v29 = objc_alloc_init(CALayer);
    glowLayer = v21->_glowLayer;
    v21->_glowLayer = v29;

    v31 = +[UIColor clearColor];
    -[CALayer setBackgroundColor:](v21->_glowLayer, "setBackgroundColor:", [v31 CGColor]);

    v32 = +[UIColor blackColor];
    -[CALayer setShadowColor:](v21->_glowLayer, "setShadowColor:", [v32 CGColor]);

    [(CALayer *)v21->_glowLayer setShadowOffset:CGSizeZero.width, CGSizeZero.height];
    [(CALayer *)v21->_glowLayer setShadowRadius:6.0];
    LODWORD(v33) = 1032805417;
    [(CALayer *)v21->_glowLayer setShadowOpacity:v33];
    layer = [(MonthViewOccurrence *)v21 layer];
    [layer addSublayer:v21->_glowLayer];

    layer2 = [(MonthViewOccurrence *)v21 layer];
    [layer2 setValue:&__kCFBooleanTrue forKeyPath:@"separatedOptions.enableContext"];
    [layer2 setNeedsDisplay];
    v35 = objc_alloc_init(CAGradientLayer);
    gradientLayer = v21->_gradientLayer;
    v21->_gradientLayer = v35;

    v46 = +[UIColor whiteColor];
    v37 = [v46 colorWithAlphaComponent:1.0];
    v50[0] = [v37 CGColor];
    v38 = +[UIColor whiteColor];
    v39 = [v38 colorWithAlphaComponent:1.0];
    v50[1] = [v39 CGColor];
    +[UIColor whiteColor];
    v40 = v48 = occurrenceCopy;
    v41 = [v40 colorWithAlphaComponent:0.0];
    v50[2] = [v41 CGColor];
    v42 = +[UIColor whiteColor];
    v43 = [v42 colorWithAlphaComponent:0.0];
    v50[3] = [v43 CGColor];
    v44 = [NSArray arrayWithObjects:v50 count:4];
    [(CAGradientLayer *)v21->_gradientLayer setColors:v44];

    occurrenceCopy = v48;
    v21->_occAlpha = 1.0;
  }

  return v21;
}

- (id)description
{
  if (self->_occurrence)
  {
    v10.receiver = self;
    v10.super_class = MonthViewOccurrence;
    v3 = [(MonthViewOccurrence *)&v10 description];
    title = [(EKEvent *)self->_occurrence title];
    startCalendarDate = [(EKEvent *)self->_occurrence startCalendarDate];
    endCalendarDate = [(EKEvent *)self->_occurrence endCalendarDate];
    v7 = [NSString stringWithFormat:@"%@ '%@' %@ to %@", v3, title, startCalendarDate, endCalendarDate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MonthViewOccurrence;
    v3 = [(MonthViewOccurrence *)&v9 description];
    v7 = [NSString stringWithFormat:@"%@ - no occurrence set", v3];
  }

  return v7;
}

- (void)loadViewsIfNeeded
{
  if (!self->_backgroundImageView)
  {
    v3 = objc_opt_new();
    backgroundImageView = self->_backgroundImageView;
    self->_backgroundImageView = v3;

    [(MonthViewOccurrence *)self addSubview:self->_backgroundImageView];
    if ((*(self + 56) & 8) != 0)
    {
      v7 = objc_opt_new();
      dotImageView = self->_dotImageView;
      self->_dotImageView = v7;

      v9 = *(self + 56);
      occurrence = [(MonthViewOccurrence *)self occurrence];
      v11 = occurrence;
      if ((v9 & 0x20) != 0)
      {
        [occurrence CUIK_symbolColor];
      }

      else
      {
        [occurrence CUIK_disabledSymbolColor];
      }
      v12 = ;

      [(UIImageView *)self->_dotImageView setTintColor:v12];
      [(MonthViewOccurrence *)self addSubview:self->_dotImageView];
    }

    else if (*(self + 56))
    {
      v5 = objc_opt_new();
      v6 = self->_dotImageView;
      self->_dotImageView = v5;

      [(MonthViewOccurrence *)self addSubview:self->_dotImageView];
    }

    v13 = objc_opt_new();
    titleLabel = self->_titleLabel;
    self->_titleLabel = v13;

    [(MonthViewOccurrence *)self addSubview:self->_titleLabel];
    v15 = objc_opt_new();
    wrappingTitleLabel = self->_wrappingTitleLabel;
    self->_wrappingTitleLabel = v15;

    [(MonthViewOccurrence *)self addSubview:self->_wrappingTitleLabel];
    v17 = objc_opt_new();
    timeLabel = self->_timeLabel;
    self->_timeLabel = v17;

    [(MonthViewOccurrence *)self addSubview:self->_timeLabel];
    [(MonthViewOccurrence *)self _updateSubviewsIfNeeded];
    [(MonthViewOccurrence *)self frame];

    [(MonthViewOccurrence *)self setFrame:?];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  if (superview)
  {
    [(MonthViewOccurrence *)self _updateOccurrenceWithForce:0];
    [(MonthViewOccurrence *)self loadViewsIfNeeded];

    [(MonthViewOccurrence *)self relayoutSubviews];
  }
}

- (id)attributedTitleWithParagraphStyle:(id)style
{
  styleCopy = style;
  v5 = objc_opt_new();
  [v5 setObject:self->_font forKeyedSubscript:NSFontAttributeName];
  [v5 setObject:styleCopy forKeyedSubscript:NSParagraphStyleAttributeName];

  _titleColor = [(MonthViewOccurrence *)self _titleColor];
  [v5 setObject:_titleColor forKeyedSubscript:NSForegroundColorAttributeName];

  if ((self->_invitationType - 3) <= 1)
  {
    [v5 setObject:&off_100219CB8 forKeyedSubscript:NSStrikethroughStyleAttributeName];
  }

  v7 = [NSAttributedString alloc];
  occurrenceString = [(MonthViewOccurrence *)self occurrenceString];
  v9 = [v7 initWithString:occurrenceString attributes:v5];

  return v9;
}

- (double)attributedTitleHeight
{
  os_unfair_lock_lock(&self->_cachedTitleHeightsLock);
  if (!self->_cachedTitleHeights)
  {
    v3 = objc_opt_new();
    cachedTitleHeights = self->_cachedTitleHeights;
    self->_cachedTitleHeights = v3;
  }

  occurrenceString = [(MonthViewOccurrence *)self occurrenceString];
  textWraps = [(MonthViewOccurrence *)self textWraps];
  [(UIFont *)self->_font pointSize];
  v8 = [NSString stringWithFormat:@"%@ %b %f", occurrenceString, textWraps, v7];

  v9 = [(NSMutableDictionary *)self->_cachedTitleHeights objectForKeyedSubscript:v8];
  if (!v9)
  {
    attributedTitle = [(MonthViewOccurrence *)self attributedTitle];
    [attributedTitle size];
    v9 = [NSNumber numberWithDouble:v11];

    if (v9)
    {
      [(NSMutableDictionary *)self->_cachedTitleHeights setObject:v9 forKeyedSubscript:v8];
    }
  }

  os_unfair_lock_unlock(&self->_cachedTitleHeightsLock);
  [v9 doubleValue];
  v13 = v12;

  return v13;
}

- (id)attributedTitle
{
  v3 = objc_alloc_init(NSMutableParagraphStyle);
  if (self->_compact)
  {
    if ([(MonthViewOccurrence *)self textWraps])
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 4;
  }

  [v3 setLineBreakMode:v4];
  v5 = [(MonthViewOccurrence *)self attributedTitleWithParagraphStyle:v3];

  return v5;
}

- (id)attributedTitleForLabel
{
  v3 = objc_alloc_init(NSMutableParagraphStyle);
  [v3 setLineBreakMode:2];
  v4 = [(MonthViewOccurrence *)self attributedTitleWithParagraphStyle:v3];

  return v4;
}

- (id)attributedTitleForWrappingLabel
{
  v3 = objc_alloc_init(NSMutableParagraphStyle);
  [v3 setLineBreakMode:4];
  v4 = [(MonthViewOccurrence *)self attributedTitleWithParagraphStyle:v3];

  return v4;
}

- (id)attributedTime
{
  v3 = objc_opt_new();
  _timeColor = [(MonthViewOccurrence *)self _timeColor];
  [v3 setObject:_timeColor forKeyedSubscript:NSForegroundColorAttributeName];

  if (self->_compact)
  {
    +[MonthViewOccurrence compactHourFont];
  }

  else
  {
    +[MonthViewOccurrence hourFont];
  }
  v5 = ;
  [v3 setObject:v5 forKeyedSubscript:NSFontAttributeName];

  v6 = [NSAttributedString alloc];
  timeString = [(MonthViewOccurrence *)self timeString];
  v8 = [v6 initWithString:timeString attributes:v3];

  return v8;
}

- (id)pillImage
{
  if (qword_100251EB8 != -1)
  {
    sub_100170E18();
  }

  if (*(self + 72))
  {
    v3 = [&stru_1002133B8 stringByAppendingString:@"Selected"];
  }

  else
  {
    v3 = &stru_1002133B8;
  }

  v4 = +[UITraitCollection currentTraitCollection];
  userInterfaceStyle = [v4 userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    v6 = @"Light";
  }

  else
  {
    if (userInterfaceStyle != 2)
    {
      goto LABEL_11;
    }

    v6 = @"Dark";
  }

  v7 = [(__CFString *)v3 stringByAppendingString:v6];

  v3 = v7;
LABEL_11:
  v8 = [qword_100251EB0 objectForKeyedSubscript:self->_color];
  if (!v8)
  {
    v8 = objc_opt_new();
    [qword_100251EB0 setObject:v8 forKeyedSubscript:self->_color];
  }

  v9 = [v8 objectForKeyedSubscript:v3];
  if (!v9)
  {
    if (*(self + 72))
    {
      v10 = +[UIColor whiteColor];
    }

    else
    {
      v10 = self->_color;
    }

    v11 = v10;
    if (qword_100251EC8 != -1)
    {
      sub_100170E2C();
    }

    v12 = objc_opt_new();
    [v12 setScale:*&qword_100251EC0];
    [v12 setOpaque:0];
    [v12 setPreferredRange:1];
    v13 = [[UIGraphicsImageRenderer alloc] initWithSize:v12 format:{1.0, 1.0}];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10014184C;
    v21[3] = &unk_100212428;
    v23 = 0;
    v24 = 0;
    v22 = v11;
    __asm { FMOV            V0.2D, #1.0 }

    v25 = _Q0;
    v19 = v11;
    v9 = [v13 imageWithActions:v21];
    [v8 setObject:v9 forKeyedSubscript:v3];
  }

  return v9;
}

- (id)backgroundImage
{
  if (qword_100251ED8 != -1)
  {
    sub_100170E40();
  }

  if (*(self + 72))
  {
    v3 = [&stru_1002133B8 stringByAppendingString:@"Selected"];
  }

  else
  {
    v3 = &stru_1002133B8;
  }

  v4 = self->_invitationType - 1;
  if (v4 <= 3)
  {
    v5 = [(__CFString *)v3 stringByAppendingString:*(&off_1002124A8 + v4)];

    v3 = v5;
  }

  if ((*(self + 56) & 8) != 0)
  {
    v6 = [(__CFString *)v3 stringByAppendingString:@"Reminder"];
  }

  v7 = +[UITraitCollection currentTraitCollection];
  userInterfaceStyle = [v7 userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    v9 = @"Light";
  }

  else
  {
    if (userInterfaceStyle != 2)
    {
      goto LABEL_15;
    }

    v9 = @"Dark";
  }

  v10 = [(__CFString *)v3 stringByAppendingString:v9];

  v3 = v10;
LABEL_15:
  v11 = [qword_100251ED0 objectForKeyedSubscript:self->_color];
  if (!v11)
  {
    v11 = objc_opt_new();
    [qword_100251ED0 setObject:v11 forKeyedSubscript:self->_color];
  }

  v12 = [v11 objectForKeyedSubscript:v3];
  if (!v12)
  {
    invitationType = self->_invitationType;
    if ((invitationType - 3) < 2)
    {
      v17 = [UIColor colorWithWhite:0.8 alpha:1.0];
    }

    else
    {
      if (invitationType == 1)
      {
        v18 = objc_opt_class();
        color = self->_color;
        v20 = +[UIColor whiteColor];
        v14 = [v18 _blendColor:color withColor:v20 alpha:0.89];

        if ((*(self + 72) & 1) == 0)
        {
          v21 = objc_opt_class();
          v22 = self->_color;
          v23 = +[UIColor whiteColor];
          v24 = [v21 _blendColor:v22 withColor:v23 alpha:0.34];

LABEL_31:
          EKUIScaleFactor();
          v25 = CUIKCreateStripedUIImage();
          v12 = [v25 resizableImageWithCapInsets:0 resizingMode:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
LABEL_36:

          [v11 setObject:v12 forKeyedSubscript:v3];
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      if (invitationType == 2)
      {
        v14 = [UIColor colorWithWhite:dbl_1001F8720[(*(self + 72) & 1) == 0] alpha:1.0];
        if ((*(self + 72) & 1) == 0)
        {
          v15 = 0.85;
          v16 = 1.0;
LABEL_30:
          v24 = [UIColor colorWithWhite:v15 alpha:v16];
          goto LABEL_31;
        }

LABEL_29:
        v16 = 0.15;
        v15 = 1.0;
        goto LABEL_30;
      }

      if (*(self + 56) & 8) != 0 && (*(self + 72))
      {
        v17 = +[UIColor systemGray2Color];
      }

      else
      {
        v17 = self->_color;
      }
    }

    v26 = v17;
    if (qword_100251EE8 != -1)
    {
      sub_100170E54();
    }

    v24 = objc_opt_new();
    [v24 setScale:*&qword_100251EE0];
    [v24 setOpaque:0];
    [v24 setPreferredRange:1];
    v25 = [[UIGraphicsImageRenderer alloc] initWithSize:v24 format:{1.0, 1.0}];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100141D88;
    v35[3] = &unk_100212428;
    v14 = v26;
    v37 = 0;
    v38 = 0;
    v36 = v14;
    __asm { FMOV            V0.2D, #1.0 }

    v39 = _Q0;
    v12 = [v25 imageWithActions:v35];

    goto LABEL_36;
  }

LABEL_37:
  if (CalInterfaceIsLeftToRight())
  {
    imageFlippedForRightToLeftLayoutDirection = v12;
  }

  else
  {
    imageFlippedForRightToLeftLayoutDirection = [v12 imageFlippedForRightToLeftLayoutDirection];
  }

  v33 = imageFlippedForRightToLeftLayoutDirection;

  return v33;
}

+ (id)_blendColor:(id)color withColor:(id)withColor alpha:(double)alpha
{
  v7 = 1.0 - alpha;
  withColorCopy = withColor;
  colorCopy = color;
  [colorCopy redComponent];
  v11 = v10;
  [withColorCopy redComponent];
  v13 = v7 * v12 + alpha * v11;
  [colorCopy greenComponent];
  v15 = v14;
  [withColorCopy greenComponent];
  v17 = v7 * v16 + alpha * v15;
  [colorCopy blueComponent];
  v19 = v18;

  [withColorCopy blueComponent];
  v21 = v20;

  return [UIColor colorWithRed:v13 green:v17 blue:v7 * v21 + alpha * v19 alpha:1.0];
}

- (void)_drawBackgroundInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (self->_splitLeftEdge)
  {
    splitRightEdge = self->_splitRightEdge;
    CurrentContext = UIGraphicsGetCurrentContext();
    if (splitRightEdge)
    {
      v10 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    CurrentContext = UIGraphicsGetCurrentContext();
  }

  CGContextSaveGState(CurrentContext);
  if (self->_splitLeftEdge)
  {
    v11 = 0;
  }

  else if (CalTimeDirectionIsLeftToRight())
  {
    v11 = 5;
  }

  else
  {
    v11 = 10;
  }

  if (!self->_splitRightEdge)
  {
    if (CalTimeDirectionIsLeftToRight())
    {
      v11 |= 0xAuLL;
    }

    else
    {
      v11 |= 5uLL;
    }
  }

  v12 = 4.0;
  if ((*(self + 56) & 1) != 0 && self->_compact)
  {
    if (self->_largeCompact)
    {
      v12 = 4.0;
    }

    else
    {
      v12 = height * 0.5;
    }
  }

  v13 = [UIBezierPath bezierPathWithRoundedRect:v11 byRoundingCorners:x cornerRadii:y, width, height, v12, v12];
  [v13 addClip];

  v10 = 1;
LABEL_20:
  if ([(MonthViewOccurrence *)self _showBackground])
  {
    backgroundImage = [(MonthViewOccurrence *)self backgroundImage];
    [(MonthViewOccurrence *)self backgroundAlpha];
    [backgroundImage drawInRect:0 blendMode:x alpha:{y, width, height, v15}];
  }

  if (v10)
  {
    CGContextRestoreGState(CurrentContext);
  }

  if (![(MonthViewOccurrence *)self isNarrow]&& (*(self + 56) & 8) == 0 && ![(MonthViewOccurrence *)self _showBackground]&& (*(self + 72) & 1) == 0 && (*(self + 56) & 1) == 0 && !self->_splitLeftEdge)
  {
    IsLeftToRight = CalInterfaceIsLeftToRight();
    v17 = x;
    v18 = y;
    v19 = width;
    v20 = height;
    if (IsLeftToRight)
    {
      MinX = CGRectGetMinX(*&v17);
      v22 = +[CompactMonthWeekView usesRoundedRectInsteadOfCircle];
      CalRoundToScreenScale();
      if (v22)
      {
        v23 = v23 + 1.0;
      }

      v24 = MinX + v23;
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v17);
      v26 = +[CompactMonthWeekView usesRoundedRectInsteadOfCircle];
      CalRoundToScreenScale();
      if (v26)
      {
        v27 = v27 + 1.0;
      }

      v24 = MaxX + v27 * -2.0;
    }

    CGContextSaveGState(CurrentContext);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MinY = CGRectGetMinY(v45);
    v29 = +[CompactMonthWeekView usesRoundedRectInsteadOfCircle];
    CalRoundToScreenScale();
    if (v29)
    {
      v30 = v30 + 1.0;
    }

    v31 = MinY + v30;
    v32 = +[CompactMonthWeekView usesRoundedRectInsteadOfCircle];
    CalRoundToScreenScale();
    if (v32)
    {
      v34 = v33 + 1.0;
    }

    else
    {
      v34 = v33;
    }

    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v35 = CGRectGetHeight(v46);
    v36 = +[CompactMonthWeekView usesRoundedRectInsteadOfCircle];
    CalRoundToScreenScale();
    if (v36)
    {
      v37 = v37 + 1.0;
    }

    v38 = v35 + v37 * -2.0;
    v39 = +[CompactMonthWeekView usesRoundedRectInsteadOfCircle];
    CalRoundToScreenScale();
    if (v39)
    {
      v41 = v40 + 1.0;
    }

    else
    {
      v41 = v40;
    }

    v43 = [UIBezierPath bezierPathWithRoundedRect:v24 cornerRadius:v31, v34, v38, v41];
    [v43 addClip];
    pillImage = [(MonthViewOccurrence *)self pillImage];
    [pillImage drawInRect:0 blendMode:v24 alpha:{v31, v34, v38, 1.0}];

    CGContextRestoreGState(CurrentContext);
  }
}

- (double)lineHeightAdjustmentOffsetY:(id)y
{
  font = self->_font;
  yCopy = y;
  [(UIFont *)font ascender];
  CalCeilToScreenScale();
  v6 = v5;
  [yCopy ascender];

  CalCeilToScreenScale();
  return v6 - v7;
}

- (UIEdgeInsets)backgroundInsets
{
  [(MonthViewOccurrence *)self _backgroundInsetsIgnoringSplitEdges:0];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)_backgroundInsetsIgnoringSplitEdges:(BOOL)edges
{
  bottom = UIEdgeInsetsZero.bottom;
  if (edges)
  {
    if (self->_compact)
    {
      left = 2.0;
    }

    else
    {
      left = 4.0;
    }

    right = left;
  }

  else
  {
    if (self->_splitLeftEdge)
    {
      left = UIEdgeInsetsZero.left;
    }

    else if (self->_compact)
    {
      left = 2.0;
    }

    else
    {
      left = 4.0;
    }

    if (self->_splitRightEdge)
    {
      right = UIEdgeInsetsZero.right;
    }

    else if (self->_compact)
    {
      right = 2.0;
    }

    else
    {
      right = 4.0;
    }
  }

  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  top = 0.0;
  if (IsLeftToRight)
  {
    v8 = right;
  }

  else
  {
    v8 = left;
  }

  if (IsLeftToRight)
  {
    v9 = bottom;
  }

  else
  {
    v9 = 0.0;
  }

  if (IsLeftToRight)
  {
    v10 = left;
  }

  else
  {
    v10 = right;
  }

  if (IsLeftToRight)
  {
    top = UIEdgeInsetsZero.top;
  }

  result.right = v8;
  result.bottom = v9;
  result.left = v10;
  result.top = top;
  return result;
}

- (CGPoint)_offsetForDotInFrame:(CGRect)frame withDot:(id)dot
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dotCopy = dot;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  [(MonthViewOccurrence *)self backgroundInsets];
  if (IsLeftToRight)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  [dotCopy size];
  v15 = v14;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v16 = CGRectGetWidth(v21);
    [dotCopy size];
    v13 = v16 - v17 - v13;
  }

  v18 = v13;
  v19 = height * 0.5 - v15 * 0.5;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)_pointForDotInFrame:(CGRect)frame withDot:(id)dot
{
  [(MonthViewOccurrence *)self _offsetForDotInFrame:dot withDot:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  CalRoundPointToScreenScale();
  result.y = v5;
  result.x = v4;
  return result;
}

- (UIEdgeInsets)_textInsets
{
  [(MonthViewOccurrence *)self _backgroundInsetsIgnoringSplitEdges:1];
  v4 = v3;
  v5 = +[CompactMonthWeekView usesRoundedRectInsteadOfCircle];
  CalRoundToScreenScale();
  if (v5)
  {
    v6 = v6 + 1.0;
  }

  v7 = v4 + v6 * 2.0 + 3.0;
  dotImage = self->_dotImage;
  if (dotImage && ((*(self + 56) & 1) == 0 || !self->_splitLeftEdge))
  {
    [(UIImage *)dotImage size];
    v7 = v4 + v9 + 4.0;
  }

  bottom = UIEdgeInsetsZero.bottom;
  v11 = 7.0;
  if (self->_compact && [(MonthViewOccurrence *)self _showBackground])
  {
    if (*(self + 56))
    {
      if (self->_splitLeftEdge)
      {
        v11 = 2.0;
        v7 = 5.0;
      }

      else
      {
        v11 = 3.0;
        if (!self->_dotImage)
        {
          v7 = 4.0;
          if (self->_largeCompact)
          {
            v11 = 2.0;
          }

          else
          {
            v11 = 2.0;
            if (+[CompactMonthWeekView usesRoundedRectInsteadOfCircle])
            {
              [(MonthViewOccurrence *)self frame];
              v7 = v13 * 0.125 + 4.0;
              [(MonthViewOccurrence *)self frame];
              v11 = v14 * 0.125 + 2.0;
            }
          }
        }
      }
    }

    else
    {
      v12 = self->_dotImage;
      if (v12)
      {
        v11 = 3.0;
      }

      else
      {
        v11 = 2.0;
      }

      if (!v12)
      {
        v7 = 4.0;
      }
    }
  }

  IsLeftToRight = CalInterfaceIsLeftToRight();
  top = 0.0;
  if (IsLeftToRight)
  {
    v17 = v11;
  }

  else
  {
    v17 = v7;
  }

  if (IsLeftToRight)
  {
    v18 = bottom;
  }

  else
  {
    v18 = 0.0;
  }

  if (IsLeftToRight)
  {
    v19 = v7;
  }

  else
  {
    v19 = v11;
  }

  if (IsLeftToRight)
  {
    top = UIEdgeInsetsZero.top;
  }

  result.right = v17;
  result.bottom = v18;
  result.left = v19;
  result.top = top;
  return result;
}

- (id)_timeString:(id)string
{
  stringCopy = string;
  date = [stringCopy date];
  v5 = +[NSTimeZone calendarTimeZone];
  v6 = [EKCalendarDate calendarDateWithDate:date timeZone:v5];

  if ((CUIKShow24Hours() & 1) != 0 || [v6 hour] != 12 || objc_msgSend(v6, "minute"))
  {
    date2 = [stringCopy date];
    v8 = CUIKStringForTime();
  }

  else
  {
    date2 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [date2 localizedStringForKey:@"Noon" value:&stru_1002133B8 table:0];
  }

  v9 = v8;

  return v9;
}

- (double)widthDrawingTime:(id)time textRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  timeCopy = time;
  _timeColor = [(MonthViewOccurrence *)self _timeColor];
  [_timeColor set];

  hourFont = [(MonthViewOccurrence *)self hourFont];
  [(MonthViewOccurrence *)self lineHeightAdjustmentOffsetY:hourFont];
  CalRoundToScreenScale();
  v13 = v12;
  CalCeilToScreenScale();
  v15 = v14;
  if (CalInterfaceIsLeftToRight())
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  [timeCopy _legacy_drawInRect:hourFont withFont:2 lineBreakMode:v16 alignment:{x, v13, width, v15}];
  v18 = v17;

  v19 = x;
  if (CalInterfaceIsLeftToRight())
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v19 = CGRectGetMaxX(v24) - v18;
  }

  if ((self->_invitationType - 3) <= 1)
  {
    v25.origin.x = v19;
    v25.origin.y = v13;
    v25.size.width = v18;
    v25.size.height = v15;
    CGRectGetMinX(v25);
    v26.origin.x = v19;
    v26.origin.y = v13;
    v26.size.width = v18;
    v26.size.height = v15;
    CGRectGetMaxX(v26);
    _strikeColor = [(MonthViewOccurrence *)self _strikeColor];
    [_strikeColor set];

    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    CGRectGetMidY(v27);
    CalRoundRectToScreenScale();
    UIRectFillUsingBlendMode(v28, kCGBlendModeNormal);
  }

  CalCeilToScreenScale();
  v22 = v21;

  return v22;
}

- (void)setDrawsTimeString:(BOOL)string
{
  v3 = *(self + 72);
  if (((((v3 & 2) == 0) ^ string) & 1) == 0)
  {
    if (string)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(self + 72) = v3 & 0xFD | v4;
    [(MonthViewOccurrence *)self _updateTimeStrings];
  }
}

- (BOOL)drawsTimeString
{
  if ((*(self + 72) & 2) != 0)
  {
    return 1;
  }

  else
  {
    return [(MonthViewOccurrence *)self drawsTimeAtBottom];
  }
}

- (void)addFadeMaskForRect:(CGRect)rect leftSide:(BOOL)side start:(double)start end:(double)end withContext:(CGContext *)context
{
  sideCopy = side;
  height = rect.size.height;
  endPoint = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v13 = CGBitmapContextCreate(0, endPoint, height, 8uLL, 0, DeviceGray, 0);
  v14 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v15 = [UIColor colorWithWhite:0.0 alpha:1.0];
  v38[0] = [v14 CGColor];
  v38[1] = [v14 CGColor];
  v38[2] = [v15 CGColor];
  v38[3] = [v15 CGColor];
  v16 = [NSArray arrayWithObjects:v38 count:4];
  locations = 0.0;
  v17.f64[0] = start;
  v17.f64[1] = end;
  v18 = vdivq_f64(v17, vdupq_lane_s64(*&endPoint, 0));
  __asm { FMOV            V1.2D, #1.0 }

  v36 = vsubq_f64(_Q1, v18);
  v37 = 0x3FF0000000000000;
  v24 = CGGradientCreateWithColors(DeviceGray, v16, &locations);
  if (sideCopy)
  {
    v25 = CGPointZero.x;
    v26 = CGPointZero.y;
    v27 = 0.0;
    v28 = v13;
    v29 = v24;
    v30 = endPoint;
  }

  else
  {
    v30 = CGPointZero.x;
    v27 = CGPointZero.y;
    v26 = 0.0;
    v28 = v13;
    v29 = v24;
    v25 = endPoint;
  }

  CGContextDrawLinearGradient(v28, v29, *&v30, *&v25, 0);
  CGGradientRelease(v24);
  CGColorSpaceRelease(DeviceGray);
  Image = CGBitmapContextCreateImage(v13);
  CGContextRelease(v13);
  CGContextSaveGState(context);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = endPoint;
  v39.size.height = height;
  CGContextClipToMask(context, v39, Image);
  CGImageRelease(Image);
}

- (void)_drawString:(id)string inTextRect:(CGRect)rect withTrailingFade:(BOOL)fade
{
  fadeCopy = fade;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stringCopy = string;
  [stringCopy boundingRectWithSize:1 options:0 context:{1.79769313e308, height}];
  v12 = v11;
  v13 = self->_occFrame.origin.y;
  v14 = self->_occFrame.size.height;
  if (CalInterfaceIsLeftToRight())
  {
    v15 = x;
  }

  else
  {
    v15 = x + width - v12;
  }

  if (fadeCopy && v12 > width || [(MonthViewOccurrence *)self fadeLeftEdge])
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    [(MonthViewOccurrence *)self addFadeMaskForRect:CalInterfaceIsLeftToRight() ^ 1 leftSide:CurrentContext start:x end:v13 withContext:width, v14, 14.0, 2.0];
    [stringCopy drawAtPoint:{v15, y}];
    CGContextRestoreGState(CurrentContext);
  }

  else if (self->_compact)
  {
    [stringCopy drawAtPoint:{v15, y}];
  }

  else
  {
    [stringCopy size];
    [stringCopy drawInRect:{x, v13 + v14 * 0.5 - v17 * 0.5, width, v14}];
  }
}

- (CGRect)textFrameForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (self->_compact)
  {
    +[MonthViewOccurrence occurrenceHeight];
    if (height < v7)
    {
      height = v7;
    }
  }

  [(MonthViewOccurrence *)self _textInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(EKEvent *)self->_occurrence isAllDay]|| (v19 = v9 + v13, self->_compact) && ![(MonthViewOccurrence *)self textWraps])
  {
    attributedTitle = [(MonthViewOccurrence *)self attributedTitle];
    [attributedTitle size];

    CalRoundToScreenScale();
    v9 = v17;
    CalRoundToScreenScale();
    v13 = v18;
    v19 = v9 + v18;
  }

  if ([(MonthViewOccurrence *)self textWraps])
  {
    CalRoundToScreenScale();
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:?];
    v9 = v20;
    v21 = height - (v13 + v20);
    +[MonthViewOccurrence occurrenceHeight];
    v23 = v22;
    +[MonthViewOccurrence verticalSpaceBetweenOccurrences];
    v25 = v24 + v23 * 2.0;
    if (v21 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v21;
    }
  }

  else
  {
    v26 = height - v19;
  }

  v27 = width - (v11 + v15);
  v28 = x + v11;
  v29 = y + v9;
  result.size.height = v26;
  result.size.width = v27;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)timeFrameForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MonthViewOccurrence *)self _textInsets];
  v8 = x + v7;
  v11 = width - (v7 + v10);
  v13 = y + v9 + height - (v9 + v12);
  +[MonthViewOccurrence occurrenceHeight];
  v15 = v13 - v14;
  +[MonthViewOccurrence occurrenceHeight];
  v17 = v16;
  v18 = v8;
  v19 = v15;
  v20 = v11;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_drawInFrame:(CGRect)frame traitCollection:(id)collection
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  collectionCopy = collection;
  [(MonthViewOccurrence *)self _updateOccurrenceWithForce:0];
  v10 = +[UITraitCollection currentTraitCollection];
  [UITraitCollection setCurrentTraitCollection:collectionCopy];
  userInterfaceStyle = [collectionCopy userInterfaceStyle];
  if (userInterfaceStyle != self->_lastUserInterfaceStyle)
  {
    self->_lastUserInterfaceStyle = userInterfaceStyle;
    [(MonthViewOccurrence *)self _updateColorsForUserInterfaceStyle:userInterfaceStyle];
    [(MonthViewOccurrence *)self _updateDotImage];
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  if ([(MonthViewOccurrence *)self fadeLeftEdge]|| [(MonthViewOccurrence *)self fadeRightEdge])
  {
    if ([(MonthViewOccurrence *)self fadeLeftEdge]&& (CalInterfaceIsLeftToRight() & 1) != 0)
    {
      v13 = 1;
    }

    else if ([(MonthViewOccurrence *)self fadeRightEdge])
    {
      v13 = CalInterfaceIsLeftToRight() ^ 1;
    }

    else
    {
      v13 = 0;
    }

    [(MonthViewOccurrence *)self addFadeMaskForRect:v13 leftSide:CurrentContext start:x end:y withContext:width, height, 8.0, 0.0];
  }

  [(MonthViewOccurrence *)self backgroundInsets];
  [(MonthViewOccurrence *)self _drawBackgroundInFrame:x + v17, y + v14, width - (v17 + v15), height - (v14 + v16)];
  isNarrow = [(MonthViewOccurrence *)self isNarrow];
  v19 = isNarrow;
  dotImage = self->_dotImage;
  if (!dotImage)
  {
    goto LABEL_18;
  }

  if (*(self + 56))
  {
    if ((self->_splitLeftEdge | isNarrow))
    {
      goto LABEL_18;
    }
  }

  else if (isNarrow)
  {
    goto LABEL_34;
  }

  [(MonthViewOccurrence *)self _pointForDotInFrame:self->_dotImage withDot:x, y, width, height];
  [UIImage drawAtPoint:"drawAtPoint:blendMode:alpha:" blendMode:0 alpha:?];
LABEL_18:
  if ((v19 & 1) == 0)
  {
    [(MonthViewOccurrence *)self textFrameForFrame:x, y, width, height];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    if ([(MonthViewOccurrence *)self drawsTimeString]&& ![(EKEvent *)self->_occurrence isAllDay])
    {
      v54 = v28;
      if (self->_endTimeString)
      {
        endTimeString = [(MonthViewOccurrence *)self endTimeString];
        [(MonthViewOccurrence *)self widthDrawingTime:endTimeString textRect:v22, v24, v26, v28];
        v31 = v30;

        v26 = v26 - v31;
        if (!CalInterfaceIsLeftToRight())
        {
          v22 = v22 + v31;
        }
      }

      if (self->_timeString)
      {
        v28 = v54;
        if ([(MonthViewOccurrence *)self drawsTimeAtBottom])
        {
          [(MonthViewOccurrence *)self timeFrameForFrame:x, y, width, height];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:1.0];
          v41 = v35 + v40;
          attributedTime = [(MonthViewOccurrence *)self attributedTime];
          [(MonthViewOccurrence *)self _drawString:attributedTime inTextRect:1 withTrailingFade:v33, v41, v37, v39];
        }

        else
        {
          timeString = [(MonthViewOccurrence *)self timeString];
          [(MonthViewOccurrence *)self widthDrawingTime:timeString textRect:v22, v24, v26, v54];
          v45 = v44;

          v26 = v26 - v45;
          if (!CalInterfaceIsLeftToRight())
          {
            v22 = v22 + v45;
          }
        }
      }

      else
      {
        v28 = v54;
      }
    }

    attributedTitle = [(MonthViewOccurrence *)self attributedTitle];
    if ([(MonthViewOccurrence *)self textWraps])
    {
      [attributedTitle drawWithRect:33 options:0 context:{v22, v24, v26, v28}];
    }

    else
    {
      [(MonthViewOccurrence *)self _drawString:attributedTitle inTextRect:self->_compact withTrailingFade:v22, v24, v26, v28];
    }
  }

LABEL_34:
  subOccurrences = self->_subOccurrences;
  if (subOccurrences)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v48 = subOccurrences;
    v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v56;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v56 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v55 + 1) + 8 * i);
          [v53 occFrame];
          [v53 _drawInFrame:collectionCopy traitCollection:?];
        }

        v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v50);
    }
  }

  if ([(MonthViewOccurrence *)self fadeLeftEdge]|| [(MonthViewOccurrence *)self fadeRightEdge])
  {
    CGContextRestoreGState(CurrentContext);
  }

  [UITraitCollection setCurrentTraitCollection:v10];
}

- (void)_updateOccurrenceWithForce:(BOOL)force
{
  occurrence = [(MonthViewOccurrence *)self occurrence];
  if (occurrence && (force || !self->_updateOccurrenceHasBeenCalled))
  {
    v11 = occurrence;
    [(MonthViewOccurrence *)self _updateOccurrenceBackgroundParameters];
    [(MonthViewOccurrence *)self _updateColorsForUserInterfaceStyle:self->_lastUserInterfaceStyle];
    [(MonthViewOccurrence *)self _updateDotImage];
    title = [(EKEvent *)self->_occurrence title];
    if (title)
    {
      v7 = CUIKDisplayedTitleForEvent();
      occurrenceString = self->_occurrenceString;
      self->_occurrenceString = v7;
    }

    else
    {
      occurrenceString = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [occurrenceString localizedStringForKey:@"Untitled event" value:@"New Event" table:0];
      v10 = self->_occurrenceString;
      self->_occurrenceString = v9;
    }

    [(MonthViewOccurrence *)self _updateTimeStrings];
    [(MonthViewOccurrence *)self _updateSubviewsIfNeeded];
    self->_updateOccurrenceHasBeenCalled = 1;

    occurrence = v11;
  }
}

- (void)_updateSubviewsIfNeeded
{
  if (self->_backgroundImageView)
  {
    if ([(MonthViewOccurrence *)self _showBackground])
    {
      backgroundImage = [(MonthViewOccurrence *)self backgroundImage];
      [(UIImageView *)self->_backgroundImageView setImage:backgroundImage];
    }

    else
    {
      [(UIImageView *)self->_backgroundImageView setImage:0];
    }

    [(UIImageView *)self->_backgroundImageView setClipsToBounds:1];
    backGroundCornerMask = [(MonthViewOccurrence *)self backGroundCornerMask];
    layer = [(UIImageView *)self->_backgroundImageView layer];
    [layer setMaskedCorners:backGroundCornerMask];

    [(MonthViewOccurrence *)self backgroundAlpha];
    [(UIImageView *)self->_backgroundImageView setAlpha:?];
    [(MonthViewOccurrence *)self _updateDotImageView];
    attributedTitleForLabel = [(MonthViewOccurrence *)self attributedTitleForLabel];
    [(TrailingFadeLabel *)self->_titleLabel setAttributedText:attributedTitleForLabel];

    attributedTitleForWrappingLabel = [(MonthViewOccurrence *)self attributedTitleForWrappingLabel];
    [(UILabel *)self->_wrappingTitleLabel setAttributedText:attributedTitleForWrappingLabel];

    if (self->_timeString)
    {
      attributedTime = [(MonthViewOccurrence *)self attributedTime];
      [(UILabel *)self->_timeLabel setAttributedText:attributedTime];
    }
  }
}

- (void)_updateDotImageView
{
  [(UIImageView *)self->_dotImageView setImage:self->_dotImage];
  dotImageView = self->_dotImageView;

  [(UIImageView *)dotImageView sizeToFit];
}

- (BOOL)_showBackground
{
  if (*(self + 72) & 1) != 0 || self->_compact && !self->_largeCompact || (*(self + 56))
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return (*(self + 56) >> 1) & 1;
  }

  return v2;
}

- (BOOL)isNarrow
{
  compact = [(MonthViewOccurrence *)self compact];
  if (compact)
  {
    height = self->_occFrame.size.height;
    +[MonthViewOccurrence occurrenceHeight];
    LOBYTE(compact) = height < v5;
  }

  return compact;
}

- (BOOL)textWraps
{
  compact = [(MonthViewOccurrence *)self compact];
  if (compact)
  {
    height = self->_occFrame.size.height;
    +[MonthViewOccurrence occurrenceHeight];
    LOBYTE(compact) = height > v5 + v5;
  }

  return compact;
}

- (BOOL)drawsTimeAtBottom
{
  compact = [(MonthViewOccurrence *)self compact];
  if (compact)
  {
    compact = [(MonthViewOccurrence *)self textWraps];
    if (compact)
    {
      height = self->_occFrame.size.height;
      +[MonthViewOccurrence occurrenceHeight];
      LOBYTE(compact) = height > v5 * 2.5;
    }
  }

  return compact;
}

- (double)radius
{
  [(MonthViewOccurrence *)self bounds];
  v4 = fmin(v3 * 0.5, 4.0);
  if ((*(self + 56) & 1) != 0 && self->_compact && ![(MonthViewOccurrence *)self isNarrow])
  {
    [(MonthViewOccurrence *)self bounds];
    return v5 * 0.5;
  }

  return v4;
}

- (void)relayoutSubviews
{
  [(MonthViewOccurrence *)self frame];
  if (v3 != 0.0)
  {
    occurrence = [(MonthViewOccurrence *)self occurrence];

    if (occurrence)
    {
      p_wrappingTitleLabel = &self->_wrappingTitleLabel;
      [(UILabel *)self->_wrappingTitleLabel alpha];
      v7 = v6 > 0.0;
      [(MonthViewOccurrence *)self bounds];
      CalRoundToScreenScale();
      v9 = v8;
      +[MonthViewOccurrence occurrenceHeight];
      if (v9 >= v10)
      {
        if (self->_dotImage)
        {
          [(UIImageView *)self->_dotImageView setAlpha:1.0];
        }

        if ([(MonthViewOccurrence *)self textWraps])
        {
          [(UILabel *)*p_wrappingTitleLabel setAlpha:1.0];
          p_titleLabel = &self->_titleLabel;
          v7 = 1;
        }

        else
        {
          [(TrailingFadeLabel *)self->_titleLabel setAlpha:1.0];
          p_titleLabel = &self->_wrappingTitleLabel;
        }

        v11 = 0.0;
        [*p_titleLabel setAlpha:0.0];
        drawsTimeAtBottom = [(MonthViewOccurrence *)self drawsTimeAtBottom];
        p_timeLabel = &self->_timeLabel;
        if (drawsTimeAtBottom)
        {
          v11 = 1.0;
        }
      }

      else
      {
        v11 = 0.0;
        [(TrailingFadeLabel *)self->_titleLabel setAlpha:0.0];
        [(UIImageView *)self->_dotImageView setAlpha:0.0];
        [(UILabel *)self->_timeLabel setAlpha:0.0];
        p_timeLabel = &self->_wrappingTitleLabel;
      }

      [(UILabel *)*p_timeLabel setAlpha:v11];
      [(MonthViewOccurrence *)self backgroundInsets];
      v16 = v15;
      v18 = v17;
      [(MonthViewOccurrence *)self bounds];
      v20 = v19 - v16 - v18;
      [(MonthViewOccurrence *)self bounds];
      [(UIImageView *)self->_backgroundImageView setFrame:v16, 0.0, v20];
      [(MonthViewOccurrence *)self radius];
      v22 = v21;
      layer = [(UIImageView *)self->_backgroundImageView layer];
      [layer setCornerRadius:v22];

      [(MonthViewOccurrence *)self bounds];
      [(UIView *)self->_backgroundView setFrame:?];
      [(MonthViewOccurrence *)self bounds];
      [(MonthViewOccurrence *)self _pointForDotInFrame:self->_dotImage withDot:?];
      v25 = v24;
      v27 = v26;
      [(UIImage *)self->_dotImage size];
      v29 = v25 + v28 * 0.5;
      [(UIImage *)self->_dotImage size];
      [(UIImageView *)self->_dotImageView setCenter:v29, v27 + v30 * 0.5];
      v31 = (*(self + 56) & 1) != 0 && self->_splitLeftEdge;
      [(UIImageView *)self->_dotImageView setHidden:v31];
      occurrenceString = [(MonthViewOccurrence *)self occurrenceString];

      if (occurrenceString)
      {
        [(MonthViewOccurrence *)self bounds];
        [(MonthViewOccurrence *)self textFrameForFrame:?];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        +[MonthViewOccurrence occurrenceHeight];
        v42 = v41;
        [(TrailingFadeLabel *)self->_titleLabel frame];
        if (v38 == v44 && v42 == v43)
        {
          v63.origin.x = v34;
          v63.origin.y = v36;
          v63.size.width = v38;
          v63.size.height = v42;
          MidX = CGRectGetMidX(v63);
          v64.origin.x = v34;
          v64.origin.y = v36;
          v64.size.width = v38;
          v64.size.height = v42;
          [(TrailingFadeLabel *)self->_titleLabel setCenter:MidX, CGRectGetMidY(v64)];
        }

        else
        {
          [(TrailingFadeLabel *)self->_titleLabel setFrame:v34, v36, v38, v42];
        }

        v46 = *p_wrappingTitleLabel;
        if (v7)
        {
          [(UILabel *)v46 setHidden:0];
          [(UILabel *)*p_wrappingTitleLabel setNumberOfLines:0];
          [(UILabel *)*p_wrappingTitleLabel sizeToFit];
          [(UILabel *)*p_wrappingTitleLabel setNumberOfLines:2];
          [(UILabel *)*p_wrappingTitleLabel frame];
          if (v47 <= v40)
          {
            [(UILabel *)*p_wrappingTitleLabel frame];
            v40 = v49;
            CalRoundToScreenScale();
          }

          else
          {
            v48 = -1.5;
          }

          [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v48];
          [(UILabel *)*p_wrappingTitleLabel setFrame:v34, v50, v38, v40];
        }

        else
        {
          [(UILabel *)v46 setHidden:1];
        }
      }

      if (self->_timeString)
      {
        [(MonthViewOccurrence *)self bounds];
        [(MonthViewOccurrence *)self timeFrameForFrame:?];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        [(UILabel *)self->_timeLabel frame];
        if (v56 == v60 && v58 == v59)
        {
          v65.origin.x = v52;
          v65.origin.y = v54;
          v65.size.width = v56;
          v65.size.height = v58;
          v61 = CGRectGetMidX(v65);
          v66.origin.x = v52;
          v66.origin.y = v54;
          v66.size.width = v56;
          v66.size.height = v58;
          [(UILabel *)self->_timeLabel setCenter:v61, CGRectGetMidY(v66)];
        }

        else
        {
          [(UILabel *)self->_timeLabel setFrame:v52, v54, v56, v58];
        }
      }

      [(MonthViewOccurrence *)self _updateFadeWidth];
      [(MonthViewOccurrence *)self _updateFadeVisibility];

      [(MonthViewOccurrence *)self _updateFadeDirection];
    }
  }
}

- (void)_updateFadeWidth
{
  [(MonthViewOccurrence *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
  [(MonthViewOccurrence *)self bounds];
  v4 = -8.0 / v3;
  [(MonthViewOccurrence *)self bounds];
  v11[0] = &off_10021A2B0;
  v5 = v4 + 1.0;
  v7 = -0.0 / v6;
  v8 = [NSNumber numberWithDouble:v5];
  v11[1] = v8;
  v9 = [NSNumber numberWithDouble:v7 + 1.0];
  v11[2] = v9;
  v11[3] = &off_10021A2C0;
  v10 = [NSArray arrayWithObjects:v11 count:4];
  [(CAGradientLayer *)self->_gradientLayer setLocations:v10];

  [(CAGradientLayer *)self->_gradientLayer setNeedsDisplay];
}

- (void)_updateFadeDirection
{
  if ([(MonthViewOccurrence *)self fadeLeftEdge]&& (CalInterfaceIsLeftToRight() & 1) != 0 || [(MonthViewOccurrence *)self fadeRightEdge]&& !CalInterfaceIsLeftToRight())
  {
    v3 = 1.0;
    v4 = 0.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 1.0;
  }

  [(CAGradientLayer *)self->_gradientLayer setStartPoint:v3, 0.0];
  gradientLayer = self->_gradientLayer;

  [(CAGradientLayer *)gradientLayer setEndPoint:v4, 0.0];
}

- (void)_updateFadeVisibility
{
  if ([(MonthViewOccurrence *)self fadeLeftEdge]|| [(MonthViewOccurrence *)self fadeRightEdge])
  {
    gradientLayer = self->_gradientLayer;
  }

  else
  {
    gradientLayer = 0;
  }

  layer = [(MonthViewOccurrence *)self layer];
  [layer setMask:gradientLayer];
}

- (unint64_t)backGroundCornerMask
{
  if (self->_splitLeftEdge)
  {
    v3 = 0;
    result = 0;
    if (self->_splitRightEdge)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (CalTimeDirectionIsLeftToRight())
  {
    v3 = 5;
  }

  else
  {
    v3 = 10;
  }

  result = v3;
  if (!self->_splitRightEdge)
  {
LABEL_8:
    if (CalTimeDirectionIsLeftToRight())
    {
      return v3 | 0xA;
    }

    else
    {
      return v3 | 5;
    }
  }

  return result;
}

- (double)backgroundAlpha
{
  result = 1.0;
  if ((*(self + 72) & 1) == 0)
  {
    isNarrow = [(MonthViewOccurrence *)self isNarrow];
    result = 0.25;
    if (isNarrow)
    {
      traitCollection = [(MonthViewOccurrence *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      result = 0.699999988;
      if (userInterfaceStyle != 2)
      {
        return 0.5;
      }
    }
  }

  return result;
}

- (void)setDrawBackgroundWithLayer:(BOOL)layer
{
  if (self->_drawBackgroundWithLayer != layer)
  {
    layerCopy = layer;
    self->_drawBackgroundWithLayer = layer;
    if (layer)
    {
      v6 = objc_opt_new();
      backgroundView = self->_backgroundView;
      self->_backgroundView = v6;

      p_backgroundImageView = &self->_backgroundImageView;
      [(MonthViewOccurrence *)self insertSubview:self->_backgroundView belowSubview:self->_backgroundImageView];
    }

    else
    {
      [(UIView *)self->_backgroundView removeFromSuperview];
      p_backgroundImageView = &self->_backgroundImageView;
    }

    v9 = *p_backgroundImageView;

    [(UIImageView *)v9 setHidden:layerCopy];
  }
}

- (void)updateBackgroundWithEdgeInsets:(UIEdgeInsets)insets color:(id)color alpha:(double)alpha cornerMask:(unint64_t)mask
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  colorCopy = color;
  [(MonthViewOccurrence *)self bounds];
  [(UIView *)self->_backgroundView setFrame:left + v14, top + v15, v16 - (left + right), v17 - (top + bottom)];
  [(UIView *)self->_backgroundView setBackgroundColor:colorCopy];

  [(UIView *)self->_backgroundView setAlpha:alpha];
  [(UIView *)self->_backgroundView setClipsToBounds:1];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setMaskedCorners:mask];

  [(MonthViewOccurrence *)self radius];
  v20 = v19;
  layer2 = [(UIView *)self->_backgroundView layer];
  [layer2 setCornerRadius:v20];
}

- (void)_updateOccurrenceBackgroundParameters
{
  occurrence = [(MonthViewOccurrence *)self occurrence];
  self->_invitationType = 0;
  v7 = occurrence;
  v4 = CUIKEventParticipantStatusForDisplay();
  if ((v4 - 1) >= 3)
  {
    occurrence2 = [(MonthViewOccurrence *)self occurrence];
    status = [occurrence2 status];

    if (status != 3)
    {
      goto LABEL_5;
    }

    v4 = 4;
  }

  self->_invitationType = v4;
LABEL_5:
}

- (void)_updateDotImage
{
  if (qword_100251EF8 != -1)
  {
    sub_100170E68();
  }

  if (self->_compact && +[CompactMonthWeekView usesRoundedRectInsteadOfCircle]&& (*(self + 56) & 8) == 0)
  {
    dotImage = self->_dotImage;
    self->_dotImage = 0;
  }

  else
  {
    occurrence = [(MonthViewOccurrence *)self occurrence];
    image = [occurrence image];

    if (image && [image type] == 1)
    {
      v6 = +[CUIKSemiConstantCache sharedInstance];
      name = [image name];
      v8 = [v6 symbolImage:name forFont:self->_font];
      v9 = self->_dotImage;
      self->_dotImage = v8;

      v10 = self->_dotImage;
      v11 = +[UIColor systemBackgroundColor];
      v12 = [(UIImage *)v10 flattenedImageWithColor:v11];
      v13 = self->_dotImage;
      self->_dotImage = v12;
    }

    else
    {
      v14 = *(self + 56);
      occurrence2 = [(MonthViewOccurrence *)self occurrence];
      occurrence3 = [(MonthViewOccurrence *)self occurrence];
      v17 = [occurrence2 CUIK_symbolName:{objc_msgSend(occurrence3, "isAllDay")}];

      if ((v14 & 8) != 0)
      {
        if (*(self + 72))
        {
          v28 = +[UIColor systemWhiteColor];
        }

        else
        {
          v24 = *(self + 56);
          occurrence4 = [(MonthViewOccurrence *)self occurrence];
          v26 = occurrence4;
          if ((v24 & 0x20) != 0)
          {
            [occurrence4 CUIK_symbolColor];
          }

          else
          {
            [occurrence4 CUIK_disabledSymbolColor];
          }
          v28 = ;
        }

        [(UIFont *)self->_font pointSize];
        v30 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:2 scale:v29 + -1.0];
        v31 = [UIImage systemImageNamed:v17 withConfiguration:v30];
        v32 = self->_dotImage;
        self->_dotImage = v31;

        v33 = [(UIImage *)self->_dotImage flattenedImageWithColor:v28];
        v34 = self->_dotImage;
        self->_dotImage = v33;
      }

      else if (v17 && self->_color)
      {
        occurrence5 = [(MonthViewOccurrence *)self occurrence];
        [occurrence5 status];

        occurrence6 = [(MonthViewOccurrence *)self occurrence];
        CUIKEventDisplaysAsDeclined();

        traitCollection = [(MonthViewOccurrence *)self traitCollection];
        [traitCollection userInterfaceStyle];
        occurrence7 = [(MonthViewOccurrence *)self occurrence];
        [occurrence7 needsResponse];
        occurrence8 = [(MonthViewOccurrence *)self occurrence];
        [occurrence8 isReminderIntegrationEvent];
        v23 = CUIKColorBarColor();

        if (*(self + 72))
        {
          +[UIColor systemWhiteColor];
        }

        else
        {
          +[UIColor systemBackgroundColor];
        }
        v35 = ;
        v43[0] = v35;
        v43[1] = v23;
        v36 = [NSArray arrayWithObjects:v43 count:2];
        v37 = [UIImageSymbolConfiguration configurationWithPaletteColors:v36];

        [(UIFont *)self->_font pointSize];
        v38 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:?];
        v39 = [v37 configurationByApplyingConfiguration:v38];
        v40 = [UIImage systemImageNamed:v17 withConfiguration:v39];
        v41 = self->_dotImage;
        self->_dotImage = v40;
      }

      else
      {
        v27 = self->_dotImage;
        self->_dotImage = 0;
      }
    }

    if (self->_dotImageView)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100144A74;
      block[3] = &unk_10020EB00;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)_updateTimeStrings
{
  timeString = self->_timeString;
  self->_timeString = 0;

  endTimeString = self->_endTimeString;
  self->_endTimeString = 0;

  if ([(MonthViewOccurrence *)self isSingleDay])
  {
    startCalendarDate = [(EKEvent *)self->_occurrence startCalendarDate];
    v5 = [(MonthViewOccurrence *)self _timeString:?];
    v6 = self->_timeString;
    self->_timeString = v5;
  }

  else
  {
    if (self->_splitRightEdge)
    {
      return;
    }

    startCalendarDate = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [startCalendarDate localizedStringForKey:@"ends %@" value:&stru_1002133B8 table:0];
    endCalendarDate = [(EKEvent *)self->_occurrence endCalendarDate];
    v8 = [(MonthViewOccurrence *)self _timeString:endCalendarDate];
    v9 = [NSString localizedStringWithFormat:v6, v8];
    v10 = self->_endTimeString;
    self->_endTimeString = v9;
  }
}

- (void)setSelected:(BOOL)selected
{
  v4 = *(self + 72);
  if ((v4 & 1) != selected)
  {
    *(self + 72) = v4 & 0xFE | selected;
    [(MonthViewOccurrence *)self _updateColorsForUserInterfaceStyle:self->_lastUserInterfaceStyle];

    [(MonthViewOccurrence *)self _updateDotImage];
  }
}

- (BOOL)selected
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (!WeakRetained)
  {
    return *(self + 72) & 1;
  }

  v4 = objc_loadWeakRetained(&self->_parent);
  selected = [v4 selected];

  return selected;
}

- (void)_updateColorsForUserInterfaceStyle:(int64_t)style
{
  v4 = self->_occurrence;
  v8 = v4;
  if ((*(self + 56) & 4) != 0)
  {
    v7 = CUIKBirthdayMonthCalendarColor();
    if (!v7)
    {
LABEL_8:
      v7 = +[UIColor secondaryLabelColor];
    }
  }

  else
  {
    if ((*(self + 56) & 8) != 0)
    {
      calendar = CUIKIntegrationEventBackgroundColor();
      v7 = CUIKAdjustedColorForColor();
    }

    else
    {
      calendar = [(EKEvent *)v4 calendar];
      displayColor = [calendar displayColor];
      v7 = CUIKAdjustedColorForColor();
    }

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if (!self->_color || ([v7 isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_color, v7);
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_occFrame = &self->_occFrame;
  if (!CGRectEqualToRect(frame, self->_occFrame))
  {
    v9 = p_occFrame->size.height;
    if (width == p_occFrame->size.width && height == v9)
    {
      p_occFrame->origin.x = x;
      p_occFrame->origin.y = y;
      p_occFrame->size.width = width;
      p_occFrame->size.height = height;
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MidX = CGRectGetMidX(v22);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      MidY = CGRectGetMidY(v23);
      v20.receiver = self;
      v20.super_class = MonthViewOccurrence;
      [(MonthViewOccurrence *)&v20 setCenter:MidX, MidY];
      glowLayer = self->_glowLayer;
      [(MonthViewOccurrence *)self bounds];
      [(CALayer *)glowLayer setFrame:?];
    }

    else
    {
      if (self->_color)
      {
        if (self->_compact)
        {
          +[MonthViewOccurrence occurrenceHeight];
          v12 = v9 < v11;
          +[MonthViewOccurrence occurrenceHeight];
          if (((v12 ^ (height >= v13)) & 1) == 0)
          {
            p_occFrame->origin.x = x;
            p_occFrame->origin.y = y;
            p_occFrame->size.width = width;
            p_occFrame->size.height = height;
            backgroundImage = [(MonthViewOccurrence *)self backgroundImage];
            [(UIImageView *)self->_backgroundImageView setImage:backgroundImage];

            [(MonthViewOccurrence *)self backgroundAlpha];
            [(UIImageView *)self->_backgroundImageView setAlpha:?];
          }
        }
      }

      p_occFrame->origin.x = x;
      p_occFrame->origin.y = y;
      p_occFrame->size.width = width;
      p_occFrame->size.height = height;
      layer = [(MonthViewOccurrence *)self layer];
      [layer setFrame:{x, y, width, height}];

      v16 = self->_glowLayer;
      [(MonthViewOccurrence *)self bounds];
      [(CALayer *)v16 setFrame:?];

      [(MonthViewOccurrence *)self relayoutSubviews];
    }
  }
}

- (CGRect)occFrame
{
  x = self->_occFrame.origin.x;
  y = self->_occFrame.origin.y;
  width = self->_occFrame.size.width;
  height = self->_occFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setAlpha:(double)alpha
{
  self->_occAlpha = alpha;
  v3.receiver = self;
  v3.super_class = MonthViewOccurrence;
  [(MonthViewOccurrence *)&v3 setAlpha:?];
}

- (void)setOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if (self->_occurrence != occurrenceCopy)
  {
    v19 = occurrenceCopy;
    objc_storeStrong(&self->_occurrence, occurrence);
    *(self + 56) = *(self + 56) & 0xFE | [(EKEvent *)v19 isAllDay];
    calendar = [(EKEvent *)v19 calendar];
    *(self + 56) = *(self + 56) & 0xFB | (4 * ([calendar type] == 4));

    if ([(EKEvent *)v19 isReminderIntegrationEvent])
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *(self + 56) = *(self + 56) & 0xF7 | v7;
    completed = [(EKEvent *)v19 completed];
    v9 = 0;
    if (completed)
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *(self + 56) = *(self + 56) & 0xEF | v10;
    if ((*(self + 56) & 8) != 0)
    {
      if ([(EKEvent *)v19 CUIK_reminderShouldBeEditable])
      {
        v9 = 32;
      }

      else
      {
        v9 = 0;
      }
    }

    *(self + 56) = *(self + 56) & 0xDF | v9;
    calendar2 = [(EKEvent *)v19 calendar];
    if ([calendar2 isHolidayCalendar])
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *(self + 56) = *(self + 56) & 0xBF | v12;

    occurrenceCopy = v19;
    if ((*(self + 56) & 4) == 0)
    {
      calendar3 = [(EKEvent *)v19 calendar];
      source = [calendar3 source];
      appGroupIdentifier = [source appGroupIdentifier];
      if ([appGroupIdentifier isEqualToString:EKSourceBirthdaysAppGroupID])
      {
        calendar4 = [(EKEvent *)v19 calendar];
        externalID = [calendar4 externalID];
        if ([externalID isEqualToString:EKBirthdayCalendarExternalIdentifier])
        {
          v18 = 4;
        }

        else
        {
          v18 = 0;
        }

        *(self + 56) = *(self + 56) & 0xFB | v18;
      }

      else
      {
        *(self + 56) &= ~4u;
      }

      occurrenceCopy = v19;
    }
  }
}

- (void)setSplitLeftEdge:(BOOL)edge splitRightEdge:(BOOL)rightEdge
{
  splitRightEdge = self->_splitRightEdge;
  self->_splitLeftEdge = edge;
  self->_splitRightEdge = rightEdge;
  if (splitRightEdge != rightEdge)
  {
    [(MonthViewOccurrence *)self _updateTimeStrings];
  }
}

- (unint64_t)gapBetweenBlock:(id)block
{
  blockCopy = block;
  startRange = [(MonthViewOccurrence *)self startRange];
  if (startRange <= [(MonthViewOccurrence *)blockCopy endRange])
  {
    startRange2 = [(MonthViewOccurrence *)blockCopy startRange];
    endRange = [(MonthViewOccurrence *)self endRange];
    selfCopy = blockCopy;
    if (startRange2 <= endRange)
    {
      v10 = -1;
      goto LABEL_6;
    }
  }

  else
  {
    selfCopy = self;
    self = blockCopy;
  }

  startRange3 = [(MonthViewOccurrence *)selfCopy startRange];
  v10 = startRange3 - [(MonthViewOccurrence *)self endRange];
LABEL_6:

  return v10;
}

- (double)startTime
{
  occurrence = [(MonthViewOccurrence *)self occurrence];
  startDate = [occurrence startDate];
  [startDate timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (void)addSegmentWithFrame:(CGRect)frame splitLeftEdge:(BOOL)edge splitRightEdge:(BOOL)rightEdge fadeLeftEdge:(BOOL)leftEdge fadeRightEdge:(BOOL)fadeRightEdge
{
  fadeRightEdgeCopy = fadeRightEdge;
  leftEdgeCopy = leftEdge;
  rightEdgeCopy = rightEdge;
  edgeCopy = edge;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (self->_subOccurrences)
  {
    v16 = [MonthViewOccurrence alloc];
    occurrence = [(MonthViewOccurrence *)self occurrence];
    height = [(MonthViewOccurrence *)v16 initWithFrame:occurrence occurrence:self->_dayRange.location forDayRange:self->_dayRange.length isCompact:[(MonthViewOccurrence *)self compact] isLargeCompact:[(MonthViewOccurrence *)self largeCompact] isMultiDay:(*(self + 56) >> 1) & 1, x, y, width, height];

    [(MonthViewOccurrence *)height setParent:self];
    [(MonthViewOccurrence *)height setHidden:[(MonthViewOccurrence *)self hidden]];
    [(MonthViewOccurrence *)height setSplitLeftEdge:edgeCopy splitRightEdge:rightEdgeCopy];
    [(MonthViewOccurrence *)height setFadeLeftEdge:leftEdgeCopy];
    [(MonthViewOccurrence *)height setFadeRightEdge:fadeRightEdgeCopy];
    [(NSMutableArray *)self->_subOccurrences addObject:height];
  }

  else
  {
    v18 = objc_alloc_init(NSMutableArray);
    subOccurrences = self->_subOccurrences;
    self->_subOccurrences = v18;

    [(MonthViewOccurrence *)self setFrame:x, y, width, height];
    self->_splitLeftEdge = edgeCopy;
    self->_splitRightEdge = rightEdgeCopy;
    [(MonthViewOccurrence *)self setFadeLeftEdge:leftEdgeCopy];

    [(MonthViewOccurrence *)self setFadeRightEdge:fadeRightEdgeCopy];
  }
}

- (CGRect)intersectingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(MonthViewOccurrence *)self frame];
  v45.origin.x = v8;
  v45.origin.y = v9;
  v45.size.width = v10;
  v45.size.height = v11;
  v33 = x;
  v34 = y;
  v42.origin.x = x;
  v42.origin.y = y;
  v35 = width;
  v36 = height;
  v42.size.width = width;
  v42.size.height = height;
  if (CGRectIntersectsRect(v42, v45))
  {
    [(MonthViewOccurrence *)self frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    subOccurrences = self->_subOccurrences;
    if (subOccurrences)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = subOccurrences;
      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        v25 = CGRectZero.origin.y;
        v26 = CGRectZero.size.width;
        v27 = CGRectZero.size.height;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v37 + 1) + 8 * i) intersectingRect:{v33, v34, v35, v36, *&v33, *&v34, *&v35, *&v36, v37}];
            v13 = v43.origin.x;
            v15 = v43.origin.y;
            v17 = v43.size.width;
            v19 = v43.size.height;
            v46.origin.x = CGRectZero.origin.x;
            v46.origin.y = v25;
            v46.size.width = v26;
            v46.size.height = v27;
            if (!CGRectEqualToRect(v43, v46))
            {

              goto LABEL_15;
            }
          }

          v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }
    }

    v13 = CGRectZero.origin.x;
    v15 = CGRectZero.origin.y;
    v17 = CGRectZero.size.width;
    v19 = CGRectZero.size.height;
  }

LABEL_15:
  v29 = v13;
  v30 = v15;
  v31 = v17;
  v32 = v19;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)isPointInView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  [(MonthViewOccurrence *)self frame];
  v27 = x;
  v28 = y;
  v34.x = x;
  v34.y = y;
  if (CGRectContainsPoint(v35, v34))
  {
    [(MonthViewOccurrence *)self frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    subOccurrences = self->_subOccurrences;
    if (subOccurrences)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = subOccurrences;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        v19 = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v29 + 1) + 8 * i) isPointInView:{v27, v28, *&v27, *&v28, v29}];
            v7 = v36.origin.x;
            v9 = v36.origin.y;
            v11 = v36.size.width;
            v13 = v36.size.height;
            v38.origin.x = CGRectZero.origin.x;
            v38.origin.y = v19;
            v38.size.width = width;
            v38.size.height = height;
            if (!CGRectEqualToRect(v36, v38))
            {

              goto LABEL_15;
            }
          }

          v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    v7 = CGRectZero.origin.x;
    v9 = CGRectZero.origin.y;
    v11 = CGRectZero.size.width;
    v13 = CGRectZero.size.height;
  }

LABEL_15:
  v23 = v7;
  v24 = v9;
  v25 = v11;
  v26 = v13;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (BOOL)isPointInSymbol:(CGPoint)symbol
{
  if (!self->_dotImage)
  {
    return 0;
  }

  x = symbol.x;
  [(MonthViewOccurrence *)self _pointForDotInFrame:self->_occFrame.origin.x withDot:self->_occFrame.origin.y, self->_occFrame.size.width, self->_occFrame.size.height];
  v6 = v5;
  if (!CalInterfaceIsLeftToRight())
  {
    return x >= v6;
  }

  [(UIImage *)self->_dotImage size];
  return x <= v6 + v7;
}

- (_NSRange)dayRange
{
  p_dayRange = &self->_dayRange;
  location = self->_dayRange.location;
  length = p_dayRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (MonthViewOccurrence)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end