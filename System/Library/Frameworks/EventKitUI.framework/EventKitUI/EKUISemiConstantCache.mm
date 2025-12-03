@interface EKUISemiConstantCache
+ (id)sharedInstance;
- (EKUISemiConstantCache)init;
- (UIFont)weekAllDayLabelFontCompact;
- (UIFont)weekAllDayLabelFontRegular;
- (UIFont)weekAllDayTodayLabelFontCompact;
- (id)inboxDisclosureImage;
- (id)statusGlyphForStatusType:(int64_t)type;
- (int64_t)_participantStatusFromDetailAttendeesStatus:(int64_t)status;
- (void)updateMetrics;
@end

@implementation EKUISemiConstantCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[EKUISemiConstantCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __39__EKUISemiConstantCache_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (EKUISemiConstantCache)init
{
  v7.receiver = self;
  v7.super_class = EKUISemiConstantCache;
  v2 = [(EKUISemiConstantCache *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__contentCategorySizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__localeChanged_ name:*MEMORY[0x1E6993308] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__orientationChanged_ name:*MEMORY[0x1E69DDCB8] object:0];

    [(EKUISemiConstantCache *)v2 updateMetrics];
  }

  return v2;
}

- (void)updateMetrics
{
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_weekAllDayBaselineForLargeFormatWeekView = _Q0;
  *&self->_weekAllDayOccurrenceHeight = _Q0;
  weekAllDayLabelFontCompact = self->_weekAllDayLabelFontCompact;
  self->_weekAllDayLabelFontCompact = 0;

  weekAllDayLabelFontRegular = self->_weekAllDayLabelFontRegular;
  self->_weekAllDayLabelFontRegular = 0;

  weekAllDayTodayLabelFontCompact = self->_weekAllDayTodayLabelFontCompact;
  self->_weekAllDayTodayLabelFontCompact = 0;

  inboxDisclosureImage = self->_inboxDisclosureImage;
  self->_inboxDisclosureImage = 0;

  self->_minYearMonthHeaderFontSizeUsed = 0.0;
}

- (id)statusGlyphForStatusType:(int64_t)type
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [(EKUISemiConstantCache *)self _participantStatusFromDetailAttendeesStatus:type];
  v6 = attributedStatusGlyph();

  return v6;
}

- (int64_t)_participantStatusFromDetailAttendeesStatus:(int64_t)status
{
  if (status > 2)
  {
    return 0;
  }

  else
  {
    return qword_1D3600308[status];
  }
}

- (id)inboxDisclosureImage
{
  inboxDisclosureImage = self->_inboxDisclosureImage;
  if (!inboxDisclosureImage)
  {
    v4 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v5 = [v4 fontDescriptorWithSymbolicTraits:2];

    v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
    v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:1];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v7];
    v9 = self->_inboxDisclosureImage;
    self->_inboxDisclosureImage = v8;

    inboxDisclosureImage = self->_inboxDisclosureImage;
  }

  return inboxDisclosureImage;
}

- (UIFont)weekAllDayLabelFontCompact
{
  weekAllDayLabelFontCompact = self->_weekAllDayLabelFontCompact;
  if (!weekAllDayLabelFontCompact)
  {
    v4 = EKUIUsesRoundedRectsInsteadOfCircles(0, a2);
    v5 = 13.0;
    if (v4)
    {
      [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:13.0 shouldScaleForSmallerSizes:24.0];
    }

    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:v5];
    v7 = self->_weekAllDayLabelFontCompact;
    self->_weekAllDayLabelFontCompact = v6;

    weekAllDayLabelFontCompact = self->_weekAllDayLabelFontCompact;
  }

  return weekAllDayLabelFontCompact;
}

- (UIFont)weekAllDayLabelFontRegular
{
  weekAllDayLabelFontRegular = self->_weekAllDayLabelFontRegular;
  if (!weekAllDayLabelFontRegular)
  {
    v4 = EKUIUsesRoundedRectsInsteadOfCircles(0, a2);
    v5 = 17.0;
    if (v4)
    {
      [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:17.0 shouldScaleForSmallerSizes:24.0];
    }

    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:v5];
    v7 = self->_weekAllDayLabelFontRegular;
    self->_weekAllDayLabelFontRegular = v6;

    weekAllDayLabelFontRegular = self->_weekAllDayLabelFontRegular;
  }

  return weekAllDayLabelFontRegular;
}

- (UIFont)weekAllDayTodayLabelFontCompact
{
  weekAllDayTodayLabelFontCompact = self->_weekAllDayTodayLabelFontCompact;
  if (!weekAllDayTodayLabelFontCompact)
  {
    v4 = EKUIUsesRoundedRectsInsteadOfCircles(0, a2);
    v5 = 13.0;
    if (v4)
    {
      [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:13.0 shouldScaleForSmallerSizes:24.0];
    }

    v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:v5];
    v7 = self->_weekAllDayTodayLabelFontCompact;
    self->_weekAllDayTodayLabelFontCompact = v6;

    weekAllDayTodayLabelFontCompact = self->_weekAllDayTodayLabelFontCompact;
  }

  return weekAllDayTodayLabelFontCompact;
}

@end