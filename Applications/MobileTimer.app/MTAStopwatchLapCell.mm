@interface MTAStopwatchLapCell
+ (double)cellHeightWithCellStyle:(unint64_t)style;
+ (id)labelBaseFontForCellStyle:(unint64_t)style;
+ (id)lapLabelTextForNumber:(int64_t)number;
+ (id)textStyleForCellStyle:(unint64_t)style;
+ (void)ensureLapFormatter;
+ (void)handleLocaleChange;
+ (void)lapLabelBaselineTopOffset:(double *)offset bottomOffset:(double *)bottomOffset forCellStyle:(unint64_t)style;
+ (void)resetLapFormatter;
- (MTAStopwatchLapCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateForContentSizeChange;
- (void)layoutSubviews;
- (void)setLapStyle:(unint64_t)style;
@end

@implementation MTAStopwatchLapCell

- (MTAStopwatchLapCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v37.receiver = self;
  v37.super_class = MTAStopwatchLapCell;
  v4 = [(MTAStopwatchLapCell *)&v37 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTAStopwatchLapCell *)v4 setSelectionStyle:0];
    v6 = +[UIColor clearColor];
    [(MTAStopwatchLapCell *)v5 setBackgroundColor:v6];

    contentView = [(MTAStopwatchLapCell *)v5 contentView];
    v8 = +[UIColor mtui_primaryTextColor];
    [(MTAStopwatchLapCell *)v5 setColor:v8];

    v9 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapCell *)v5 setLapLabel:v13];

    lapLabel = [(MTAStopwatchLapCell *)v5 lapLabel];
    [lapLabel setTextAlignment:4];

    v15 = +[UIColor clearColor];
    lapLabel2 = [(MTAStopwatchLapCell *)v5 lapLabel];
    [lapLabel2 setBackgroundColor:v15];

    lapLabel3 = [(MTAStopwatchLapCell *)v5 lapLabel];
    [contentView addSubview:lapLabel3];

    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapCell *)v5 setTimeLabel:v18];

    timeLabel = [(MTAStopwatchLapCell *)v5 timeLabel];
    [timeLabel setTextAlignment:2];

    timeLabel2 = [(MTAStopwatchLapCell *)v5 timeLabel];
    [timeLabel2 setMinimumScaleFactor:0.590909091];

    v21 = +[UIColor clearColor];
    timeLabel3 = [(MTAStopwatchLapCell *)v5 timeLabel];
    [timeLabel3 setBackgroundColor:v21];

    timeLabel4 = [(MTAStopwatchLapCell *)v5 timeLabel];
    LODWORD(v24) = 1148846080;
    [timeLabel4 setContentHuggingPriority:0 forAxis:v24];

    timeLabel5 = [(MTAStopwatchLapCell *)v5 timeLabel];
    [contentView addSubview:timeLabel5];

    v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapCell *)v5 setRunningTotalLabel:v26];

    runningTotalLabel = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    [runningTotalLabel setTextAlignment:1];

    runningTotalLabel2 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    [runningTotalLabel2 setMinimumScaleFactor:0.590909091];

    v29 = +[UIColor clearColor];
    runningTotalLabel3 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    [runningTotalLabel3 setBackgroundColor:v29];

    runningTotalLabel4 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    LODWORD(v32) = 1148846080;
    [runningTotalLabel4 setContentHuggingPriority:0 forAxis:v32];

    runningTotalLabel5 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    [contentView addSubview:runningTotalLabel5];

    v34 = +[NSNotificationCenter defaultCenter];
    [v34 addObserver:v5 selector:"_updateForContentSizeChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v35 = v5;
  }

  return v5;
}

+ (double)cellHeightWithCellStyle:(unint64_t)style
{
  v4 = [MTAStopwatchLapCell labelBaseFontForCellStyle:?];
  v10 = 0.0;
  v11 = 0.0;
  [MTAStopwatchLapCell lapLabelBaselineTopOffset:&v11 bottomOffset:&v10 forCellStyle:style];
  [v4 _scaledValueForValue:v11];
  v6 = v5;
  [v4 _scaledValueForValue:v10];
  v8 = v6 - v7;

  return v8;
}

- (void)_updateForContentSizeChange
{
  v7 = [MTAStopwatchLapCell labelBaseFontForCellStyle:[(MTAStopwatchLapCell *)self lapStyle]];
  [(UILabel *)self->_lapLabel setFont:v7];
  timeLabel = self->_timeLabel;
  mtui_fontByAddingTimeFontAttributes = [v7 mtui_fontByAddingTimeFontAttributes];
  [(UILabel *)timeLabel setFont:mtui_fontByAddingTimeFontAttributes];

  runningTotalLabel = self->_runningTotalLabel;
  mtui_fontByAddingTimeFontAttributes2 = [v7 mtui_fontByAddingTimeFontAttributes];
  [(UILabel *)runningTotalLabel setFont:mtui_fontByAddingTimeFontAttributes2];

  [(MTAStopwatchLapCell *)self setNeedsLayout];
}

- (void)setLapStyle:(unint64_t)style
{
  if (self->_lapStyle != style)
  {
    self->_lapStyle = style;
    [MTAStopwatchLapCell lapLabelBaselineTopOffset:&self->_lapLabelDefaultBaselineTopOffset bottomOffset:&self->_lapLabelDefaultBaselineBottomOffset forCellStyle:style];
    v4 = self->_lapStyle == 1;
    runningTotalLabel = [(MTAStopwatchLapCell *)self runningTotalLabel];
    [runningTotalLabel setHidden:v4];

    v11 = [MTAStopwatchLapCell labelBaseFontForCellStyle:[(MTAStopwatchLapCell *)self lapStyle]];
    lapLabel = [(MTAStopwatchLapCell *)self lapLabel];
    [lapLabel setFont:v11];

    mtui_fontByAddingTimeFontAttributes = [v11 mtui_fontByAddingTimeFontAttributes];
    timeLabel = [(MTAStopwatchLapCell *)self timeLabel];
    [timeLabel setFont:mtui_fontByAddingTimeFontAttributes];

    mtui_fontByAddingTimeFontAttributes2 = [v11 mtui_fontByAddingTimeFontAttributes];
    runningTotalLabel2 = [(MTAStopwatchLapCell *)self runningTotalLabel];
    [runningTotalLabel2 setFont:mtui_fontByAddingTimeFontAttributes2];
  }
}

+ (void)lapLabelBaselineTopOffset:(double *)offset bottomOffset:(double *)bottomOffset forCellStyle:(unint64_t)style
{
  if (offset && bottomOffset)
  {
    v5 = style - 2;
    if (style - 2 > 2)
    {
      v7 = -16.0;
      v6 = 28.0;
    }

    else
    {
      v6 = dbl_10008BA78[v5];
      v7 = dbl_10008BA90[v5];
    }

    *offset = v6;
    *bottomOffset = v7;
  }
}

+ (id)textStyleForCellStyle:(unint64_t)style
{
  if (style - 2 > 2)
  {
    v3 = &UIFontTextStyleBody;
  }

  else
  {
    v3 = *(&off_1000AE1E8 + style - 2);
  }

  return *v3;
}

+ (id)labelBaseFontForCellStyle:(unint64_t)style
{
  v4 = &UIContentSizeCategoryExtraExtraExtraLarge;
  if (style != 2)
  {
    v4 = &UIContentSizeCategoryAccessibilityExtraLarge;
  }

  v5 = *v4;
  v6 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v6 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, v5) == NSOrderedDescending)
  {
    v8 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MTAStopwatchLapCell textStyleForCellStyle:style];
  v10 = [UIFont preferredFontForTextStyle:v9 compatibleWithTraitCollection:v8];

  return v10;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = MTAStopwatchLapCell;
  [(MTAStopwatchLapCell *)&v47 layoutSubviews];
  mtui_isRTL = [(MTAStopwatchLapCell *)self mtui_isRTL];
  lapLabel = [(MTAStopwatchLapCell *)self lapLabel];
  timeLabel = [(MTAStopwatchLapCell *)self timeLabel];
  contentView = [(MTAStopwatchLapCell *)self contentView];
  v7 = [objc_opt_class() lapLabelTextForNumber:self->_lap];
  [lapLabel setText:v7];

  color = [(MTAStopwatchLapCell *)self color];
  [lapLabel setTextColor:color];

  v9 = FormatTime();
  [timeLabel setText:v9];

  color2 = [(MTAStopwatchLapCell *)self color];
  [timeLabel setTextColor:color2];

  [lapLabel sizeToFit];
  [timeLabel sizeToFit];
  [lapLabel bounds];
  v12 = v11;
  v14 = v13;
  [timeLabel bounds];
  v16 = v15;
  v18 = v17;
  v19 = [MTAStopwatchLapCell labelBaseFontForCellStyle:[(MTAStopwatchLapCell *)self lapStyle]];
  [(MTAStopwatchLapCell *)self lapLabelDefaultBaselineTopOffset];
  [v19 _scaledValueForValue:?];
  v21 = v20;
  [lapLabel _lastLineBaseline];
  v23 = v21 - v22;
  if (mtui_isRTL)
  {
    [contentView bounds];
    Width = CGRectGetWidth(v48);
    [(MTAStopwatchLapCell *)self separatorInset];
    v26 = Width - v25;
    v49.origin.x = CGRectZero.origin.x;
    v49.origin.y = v23;
    v49.size.width = v12;
    v49.size.height = v14;
    v27 = v26 - CGRectGetWidth(v49);
  }

  else
  {
    [(MTAStopwatchLapCell *)self separatorInset];
    v27 = v28;
  }

  [lapLabel setFrame:{v27, v23, v12, v14}];
  if ([(MTAStopwatchLapCell *)self lapStyle]== 1)
  {
    if (mtui_isRTL)
    {
      [(MTAStopwatchLapCell *)self separatorInset];
      v30 = v29;
    }

    else
    {
      [contentView bounds];
      v41 = CGRectGetWidth(v52);
      [(MTAStopwatchLapCell *)self separatorInset];
      v43 = v41 - v42;
      [timeLabel bounds];
      v30 = v43 - CGRectGetWidth(v53);
    }

    [timeLabel setFrame:{v30, v23, v16, v18}];
  }

  else
  {
    [contentView bounds];
    MidX = CGRectGetMidX(v50);
    [timeLabel bounds];
    [timeLabel setFrame:{MidX + CGRectGetWidth(v51) * -0.5, v23, v16, v18}];
    runningTotalLabel = [(MTAStopwatchLapCell *)self runningTotalLabel];
    [(MTAStopwatchLapCell *)self runningTotal];
    v33 = FormatTime();
    [runningTotalLabel setText:v33];

    color3 = [(MTAStopwatchLapCell *)self color];
    [runningTotalLabel setTextColor:color3];

    [runningTotalLabel sizeToFit];
    [runningTotalLabel bounds];
    v36 = v35;
    v38 = v37;
    if (mtui_isRTL)
    {
      [(MTAStopwatchLapCell *)self separatorInset];
      v40 = v39;
    }

    else
    {
      [contentView bounds];
      v44 = CGRectGetWidth(v54);
      [(MTAStopwatchLapCell *)self separatorInset];
      v46 = v44 - v45;
      [runningTotalLabel bounds];
      v40 = v46 - CGRectGetWidth(v55);
    }

    [runningTotalLabel setFrame:{v40, v23, v36, v38}];
  }
}

+ (void)ensureLapFormatter
{
  if (!qword_1000D2A78)
  {
    v2 = objc_alloc_init(NSNumberFormatter);
    v3 = qword_1000D2A78;
    qword_1000D2A78 = v2;

    [qword_1000D2A78 setNumberStyle:0];
    v4 = +[NSLocale currentLocale];
    [qword_1000D2A78 setLocale:v4];
  }
}

+ (void)resetLapFormatter
{
  if (qword_1000D2A78)
  {
    locale = [qword_1000D2A78 locale];
    v3 = +[NSLocale currentLocale];
    v4 = [locale isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = +[NSLocale currentLocale];
      [qword_1000D2A78 setLocale:v5];
    }
  }
}

+ (id)lapLabelTextForNumber:(int64_t)number
{
  [self ensureLapFormatter];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"LAP_NUMBER_STOPWATCH" value:&stru_1000AEF10 table:0];

  v6 = qword_1000D2A78;
  v7 = [NSNumber numberWithInteger:number];
  v8 = [v6 stringFromNumber:v7];
  v9 = [NSString stringWithFormat:v5, v8];

  return v9;
}

+ (void)handleLocaleChange
{
  ResetTimeFormatter();

  [self resetLapFormatter];
}

@end