@interface MTAStopwatchLapCell
+ (double)cellHeightWithCellStyle:(unint64_t)a3;
+ (id)labelBaseFontForCellStyle:(unint64_t)a3;
+ (id)lapLabelTextForNumber:(int64_t)a3;
+ (id)textStyleForCellStyle:(unint64_t)a3;
+ (void)ensureLapFormatter;
+ (void)handleLocaleChange;
+ (void)lapLabelBaselineTopOffset:(double *)a3 bottomOffset:(double *)a4 forCellStyle:(unint64_t)a5;
+ (void)resetLapFormatter;
- (MTAStopwatchLapCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateForContentSizeChange;
- (void)layoutSubviews;
- (void)setLapStyle:(unint64_t)a3;
@end

@implementation MTAStopwatchLapCell

- (MTAStopwatchLapCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v37.receiver = self;
  v37.super_class = MTAStopwatchLapCell;
  v4 = [(MTAStopwatchLapCell *)&v37 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTAStopwatchLapCell *)v4 setSelectionStyle:0];
    v6 = +[UIColor clearColor];
    [(MTAStopwatchLapCell *)v5 setBackgroundColor:v6];

    v7 = [(MTAStopwatchLapCell *)v5 contentView];
    v8 = +[UIColor mtui_primaryTextColor];
    [(MTAStopwatchLapCell *)v5 setColor:v8];

    v9 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapCell *)v5 setLapLabel:v13];

    v14 = [(MTAStopwatchLapCell *)v5 lapLabel];
    [v14 setTextAlignment:4];

    v15 = +[UIColor clearColor];
    v16 = [(MTAStopwatchLapCell *)v5 lapLabel];
    [v16 setBackgroundColor:v15];

    v17 = [(MTAStopwatchLapCell *)v5 lapLabel];
    [v7 addSubview:v17];

    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapCell *)v5 setTimeLabel:v18];

    v19 = [(MTAStopwatchLapCell *)v5 timeLabel];
    [v19 setTextAlignment:2];

    v20 = [(MTAStopwatchLapCell *)v5 timeLabel];
    [v20 setMinimumScaleFactor:0.590909091];

    v21 = +[UIColor clearColor];
    v22 = [(MTAStopwatchLapCell *)v5 timeLabel];
    [v22 setBackgroundColor:v21];

    v23 = [(MTAStopwatchLapCell *)v5 timeLabel];
    LODWORD(v24) = 1148846080;
    [v23 setContentHuggingPriority:0 forAxis:v24];

    v25 = [(MTAStopwatchLapCell *)v5 timeLabel];
    [v7 addSubview:v25];

    v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAStopwatchLapCell *)v5 setRunningTotalLabel:v26];

    v27 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    [v27 setTextAlignment:1];

    v28 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    [v28 setMinimumScaleFactor:0.590909091];

    v29 = +[UIColor clearColor];
    v30 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    [v30 setBackgroundColor:v29];

    v31 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    LODWORD(v32) = 1148846080;
    [v31 setContentHuggingPriority:0 forAxis:v32];

    v33 = [(MTAStopwatchLapCell *)v5 runningTotalLabel];
    [v7 addSubview:v33];

    v34 = +[NSNotificationCenter defaultCenter];
    [v34 addObserver:v5 selector:"_updateForContentSizeChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v35 = v5;
  }

  return v5;
}

+ (double)cellHeightWithCellStyle:(unint64_t)a3
{
  v4 = [MTAStopwatchLapCell labelBaseFontForCellStyle:?];
  v10 = 0.0;
  v11 = 0.0;
  [MTAStopwatchLapCell lapLabelBaselineTopOffset:&v11 bottomOffset:&v10 forCellStyle:a3];
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
  v4 = [v7 mtui_fontByAddingTimeFontAttributes];
  [(UILabel *)timeLabel setFont:v4];

  runningTotalLabel = self->_runningTotalLabel;
  v6 = [v7 mtui_fontByAddingTimeFontAttributes];
  [(UILabel *)runningTotalLabel setFont:v6];

  [(MTAStopwatchLapCell *)self setNeedsLayout];
}

- (void)setLapStyle:(unint64_t)a3
{
  if (self->_lapStyle != a3)
  {
    self->_lapStyle = a3;
    [MTAStopwatchLapCell lapLabelBaselineTopOffset:&self->_lapLabelDefaultBaselineTopOffset bottomOffset:&self->_lapLabelDefaultBaselineBottomOffset forCellStyle:a3];
    v4 = self->_lapStyle == 1;
    v5 = [(MTAStopwatchLapCell *)self runningTotalLabel];
    [v5 setHidden:v4];

    v11 = [MTAStopwatchLapCell labelBaseFontForCellStyle:[(MTAStopwatchLapCell *)self lapStyle]];
    v6 = [(MTAStopwatchLapCell *)self lapLabel];
    [v6 setFont:v11];

    v7 = [v11 mtui_fontByAddingTimeFontAttributes];
    v8 = [(MTAStopwatchLapCell *)self timeLabel];
    [v8 setFont:v7];

    v9 = [v11 mtui_fontByAddingTimeFontAttributes];
    v10 = [(MTAStopwatchLapCell *)self runningTotalLabel];
    [v10 setFont:v9];
  }
}

+ (void)lapLabelBaselineTopOffset:(double *)a3 bottomOffset:(double *)a4 forCellStyle:(unint64_t)a5
{
  if (a3 && a4)
  {
    v5 = a5 - 2;
    if (a5 - 2 > 2)
    {
      v7 = -16.0;
      v6 = 28.0;
    }

    else
    {
      v6 = dbl_10008BA78[v5];
      v7 = dbl_10008BA90[v5];
    }

    *a3 = v6;
    *a4 = v7;
  }
}

+ (id)textStyleForCellStyle:(unint64_t)a3
{
  if (a3 - 2 > 2)
  {
    v3 = &UIFontTextStyleBody;
  }

  else
  {
    v3 = *(&off_1000AE1E8 + a3 - 2);
  }

  return *v3;
}

+ (id)labelBaseFontForCellStyle:(unint64_t)a3
{
  v4 = &UIContentSizeCategoryExtraExtraExtraLarge;
  if (a3 != 2)
  {
    v4 = &UIContentSizeCategoryAccessibilityExtraLarge;
  }

  v5 = *v4;
  v6 = +[UIApplication sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v7, v5) == NSOrderedDescending)
  {
    v8 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MTAStopwatchLapCell textStyleForCellStyle:a3];
  v10 = [UIFont preferredFontForTextStyle:v9 compatibleWithTraitCollection:v8];

  return v10;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = MTAStopwatchLapCell;
  [(MTAStopwatchLapCell *)&v47 layoutSubviews];
  v3 = [(MTAStopwatchLapCell *)self mtui_isRTL];
  v4 = [(MTAStopwatchLapCell *)self lapLabel];
  v5 = [(MTAStopwatchLapCell *)self timeLabel];
  v6 = [(MTAStopwatchLapCell *)self contentView];
  v7 = [objc_opt_class() lapLabelTextForNumber:self->_lap];
  [v4 setText:v7];

  v8 = [(MTAStopwatchLapCell *)self color];
  [v4 setTextColor:v8];

  v9 = FormatTime();
  [v5 setText:v9];

  v10 = [(MTAStopwatchLapCell *)self color];
  [v5 setTextColor:v10];

  [v4 sizeToFit];
  [v5 sizeToFit];
  [v4 bounds];
  v12 = v11;
  v14 = v13;
  [v5 bounds];
  v16 = v15;
  v18 = v17;
  v19 = [MTAStopwatchLapCell labelBaseFontForCellStyle:[(MTAStopwatchLapCell *)self lapStyle]];
  [(MTAStopwatchLapCell *)self lapLabelDefaultBaselineTopOffset];
  [v19 _scaledValueForValue:?];
  v21 = v20;
  [v4 _lastLineBaseline];
  v23 = v21 - v22;
  if (v3)
  {
    [v6 bounds];
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

  [v4 setFrame:{v27, v23, v12, v14}];
  if ([(MTAStopwatchLapCell *)self lapStyle]== 1)
  {
    if (v3)
    {
      [(MTAStopwatchLapCell *)self separatorInset];
      v30 = v29;
    }

    else
    {
      [v6 bounds];
      v41 = CGRectGetWidth(v52);
      [(MTAStopwatchLapCell *)self separatorInset];
      v43 = v41 - v42;
      [v5 bounds];
      v30 = v43 - CGRectGetWidth(v53);
    }

    [v5 setFrame:{v30, v23, v16, v18}];
  }

  else
  {
    [v6 bounds];
    MidX = CGRectGetMidX(v50);
    [v5 bounds];
    [v5 setFrame:{MidX + CGRectGetWidth(v51) * -0.5, v23, v16, v18}];
    v32 = [(MTAStopwatchLapCell *)self runningTotalLabel];
    [(MTAStopwatchLapCell *)self runningTotal];
    v33 = FormatTime();
    [v32 setText:v33];

    v34 = [(MTAStopwatchLapCell *)self color];
    [v32 setTextColor:v34];

    [v32 sizeToFit];
    [v32 bounds];
    v36 = v35;
    v38 = v37;
    if (v3)
    {
      [(MTAStopwatchLapCell *)self separatorInset];
      v40 = v39;
    }

    else
    {
      [v6 bounds];
      v44 = CGRectGetWidth(v54);
      [(MTAStopwatchLapCell *)self separatorInset];
      v46 = v44 - v45;
      [v32 bounds];
      v40 = v46 - CGRectGetWidth(v55);
    }

    [v32 setFrame:{v40, v23, v36, v38}];
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
    v2 = [qword_1000D2A78 locale];
    v3 = +[NSLocale currentLocale];
    v4 = [v2 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = +[NSLocale currentLocale];
      [qword_1000D2A78 setLocale:v5];
    }
  }
}

+ (id)lapLabelTextForNumber:(int64_t)a3
{
  [a1 ensureLapFormatter];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"LAP_NUMBER_STOPWATCH" value:&stru_1000AEF10 table:0];

  v6 = qword_1000D2A78;
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [v6 stringFromNumber:v7];
  v9 = [NSString stringWithFormat:v5, v8];

  return v9;
}

+ (void)handleLocaleChange
{
  ResetTimeFormatter();

  [a1 resetLapFormatter];
}

@end