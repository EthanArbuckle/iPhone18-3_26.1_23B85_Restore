@interface NLActivityRichComplicationRectangularView
- (CLKMonochromeFilterProvider)filterProvider;
- (NLActivityRichComplicationRectangularView)initWithFrame:(CGRect)frame;
- (void)_setAccentViewsVisibility:(BOOL)visibility;
- (void)_setupViews;
- (void)_updateViews:(id)views withFilters:(id)filters;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)setNeedsLayout;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NLActivityRichComplicationRectangularView

- (NLActivityRichComplicationRectangularView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NLActivityRichComplicationRectangularView;
  v3 = [(NLActivityRichComplicationRectangularView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NLActivityRichComplicationRectangularView *)v3 _setupViews];
  }

  return v4;
}

- (void)_setupViews
{
  v3 = +[CLKDevice currentDevice];
  sub_2C38(v3, v3);
  v4 = *&qword_16640;
  v5 = *&qword_16648;
  v6 = *&qword_16650;
  v134 = *&qword_16658;
  v135 = *&qword_16660;
  v114 = *&qword_16668;
  v7 = *&qword_16670;

  v8 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v4 design:UIFontWeightSemibold];
  v9 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  chartTitleView = self->_chartTitleView;
  self->_chartTitleView = v13;

  [(UIView *)self->_chartTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NLActivityRichComplicationRectangularView *)self addSubview:self->_chartTitleView];
  v15 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v15;

  [(CLKUIColoringLabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CLKUIColoringLabel *)self->_titleLabel setTextProviderFont:v8];
  [(UIView *)self->_chartTitleView addSubview:self->_titleLabel];
  v17 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  moveLabel = self->_moveLabel;
  self->_moveLabel = v17;

  [(CLKUIColoringLabel *)self->_moveLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CLKUIColoringLabel *)self->_moveLabel setTextProviderFont:v8];
  [(UIView *)self->_chartTitleView addSubview:self->_moveLabel];
  v19 = [UIImageSymbolConfiguration configurationWithPointSize:v4];
  v20 = [UIImage _systemImageNamed:@"activity.move" withConfiguration:v19];
  v21 = NTKMoveNonGradientTextColor();
  v140 = [v20 imageWithTintColor:v21 renderingMode:1];

  v22 = [[UIImageView alloc] initWithImage:v140];
  moveGlyphView = self->_moveGlyphView;
  self->_moveGlyphView = v22;

  [(UIImageView *)self->_moveGlyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_chartTitleView addSubview:self->_moveGlyphView];
  v24 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  exerciseLabel = self->_exerciseLabel;
  self->_exerciseLabel = v24;

  [(CLKUIColoringLabel *)self->_exerciseLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v138 = v8;
  [(CLKUIColoringLabel *)self->_exerciseLabel setTextProviderFont:v8];
  [(UIView *)self->_chartTitleView addSubview:self->_exerciseLabel];
  v137 = v19;
  v26 = [UIImage _systemImageNamed:@"activity.exercise" withConfiguration:v19];
  v27 = NTKExerciseNonGradientTextColor();
  v139 = [v26 imageWithTintColor:v27 renderingMode:1];

  v28 = [[UIImageView alloc] initWithImage:v139];
  exerciseGlyphView = self->_exerciseGlyphView;
  self->_exerciseGlyphView = v28;

  [(UIImageView *)self->_exerciseGlyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_chartTitleView addSubview:self->_exerciseGlyphView];
  v30 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  standLabel = self->_standLabel;
  self->_standLabel = v30;

  [(CLKUIColoringLabel *)self->_standLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CLKUIColoringLabel *)self->_standLabel setTextProviderFont:v8];
  [(UIView *)self->_chartTitleView addSubview:self->_standLabel];
  v32 = [UIImage _systemImageNamed:@"activity.stand" withConfiguration:v19];
  v33 = NTKStandNonGradientTextColor();
  v133 = [v32 imageWithTintColor:v33 renderingMode:1];

  v34 = [[UIImageView alloc] initWithImage:v133];
  standGlyphView = self->_standGlyphView;
  self->_standGlyphView = v34;

  [(UIImageView *)self->_standGlyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_chartTitleView addSubview:self->_standGlyphView];
  v36 = [NLActivityRichComplicationChartView alloc];
  v37 = +[CLKDevice currentDevice];
  v38 = [(NLActivityRichComplicationChartView *)v36 initForDevice:v37];
  chartView = self->_chartView;
  self->_chartView = v38;

  [(NLActivityRichComplicationChartView *)self->_chartView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NLActivityRichComplicationRectangularView *)self addSubview:self->_chartView];
  v40 = self->_titleLabel;
  v145[0] = self->_chartView;
  v145[1] = v40;
  v41 = [NSArray arrayWithObjects:v145 count:2];
  flatViews = self->_flatViews;
  self->_flatViews = v41;

  v43 = self->_moveLabel;
  v44 = self->_exerciseGlyphView;
  v144[0] = self->_moveGlyphView;
  v144[1] = v43;
  v45 = self->_exerciseLabel;
  v46 = self->_standGlyphView;
  v144[2] = v44;
  v144[3] = v45;
  v47 = self->_standLabel;
  v144[4] = v46;
  v144[5] = v47;
  v48 = [NSArray arrayWithObjects:v144 count:6];
  accentViews = self->_accentViews;
  self->_accentViews = v48;

  v50 = objc_alloc_init(UILayoutGuide);
  [(NLActivityRichComplicationRectangularView *)self addLayoutGuide:v50];
  bottomAnchor = [v50 bottomAnchor];
  bottomAnchor2 = [(NLActivityRichComplicationRectangularView *)self bottomAnchor];
  v129 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v7];
  v143[0] = v129;
  leadingAnchor = [v50 leadingAnchor];
  leadingAnchor2 = [(NLActivityRichComplicationRectangularView *)self leadingAnchor];
  v126 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v143[1] = v126;
  v132 = v50;
  trailingAnchor = [v50 trailingAnchor];
  trailingAnchor2 = [(NLActivityRichComplicationRectangularView *)self trailingAnchor];
  v123 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-0.0];
  v143[2] = v123;
  topAnchor = [v50 topAnchor];
  topAnchor2 = [(NLActivityRichComplicationRectangularView *)self topAnchor];
  v120 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v114];
  v143[3] = v120;
  topAnchor3 = [(UIView *)self->_chartTitleView topAnchor];
  topAnchor4 = [(NLActivityRichComplicationRectangularView *)self topAnchor];
  v117 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v143[4] = v117;
  leadingAnchor3 = [(UIView *)self->_chartTitleView leadingAnchor];
  leadingAnchor4 = [(NLActivityRichComplicationRectangularView *)self leadingAnchor];
  v113 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v143[5] = v113;
  topAnchor5 = [(CLKUIColoringLabel *)self->_titleLabel topAnchor];
  topAnchor6 = [(UIView *)self->_chartTitleView topAnchor];
  v110 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v143[6] = v110;
  leadingAnchor5 = [(CLKUIColoringLabel *)self->_titleLabel leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_chartTitleView leadingAnchor];
  v107 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v5];
  v143[7] = v107;
  firstBaselineAnchor = [(CLKUIColoringLabel *)self->_titleLabel firstBaselineAnchor];
  bottomAnchor3 = [(UIView *)self->_chartTitleView bottomAnchor];
  v104 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor3];
  v143[8] = v104;
  centerYAnchor = [(UIImageView *)self->_moveGlyphView centerYAnchor];
  centerYAnchor2 = [(CLKUIColoringLabel *)self->_titleLabel centerYAnchor];
  v101 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v143[9] = v101;
  leadingAnchor7 = [(UIImageView *)self->_moveGlyphView leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_chartTitleView leadingAnchor];
  v98 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8 constant:v5];
  v143[10] = v98;
  topAnchor7 = [(CLKUIColoringLabel *)self->_moveLabel topAnchor];
  topAnchor8 = [(CLKUIColoringLabel *)self->_titleLabel topAnchor];
  v95 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v143[11] = v95;
  leadingAnchor9 = [(CLKUIColoringLabel *)self->_moveLabel leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_moveGlyphView trailingAnchor];
  v92 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor3];
  v143[12] = v92;
  centerYAnchor3 = [(UIImageView *)self->_exerciseGlyphView centerYAnchor];
  centerYAnchor4 = [(CLKUIColoringLabel *)self->_titleLabel centerYAnchor];
  v89 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v143[13] = v89;
  leadingAnchor10 = [(UIImageView *)self->_exerciseGlyphView leadingAnchor];
  trailingAnchor4 = [(CLKUIColoringLabel *)self->_moveLabel trailingAnchor];
  v87 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor4 constant:v6];
  v143[14] = v87;
  topAnchor9 = [(CLKUIColoringLabel *)self->_exerciseLabel topAnchor];
  topAnchor10 = [(CLKUIColoringLabel *)self->_titleLabel topAnchor];
  v83 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v143[15] = v83;
  leadingAnchor11 = [(CLKUIColoringLabel *)self->_exerciseLabel leadingAnchor];
  trailingAnchor5 = [(UIImageView *)self->_exerciseGlyphView trailingAnchor];
  v80 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor5];
  v143[16] = v80;
  centerYAnchor5 = [(UIImageView *)self->_standGlyphView centerYAnchor];
  centerYAnchor6 = [(CLKUIColoringLabel *)self->_titleLabel centerYAnchor];
  v77 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v143[17] = v77;
  leadingAnchor12 = [(UIImageView *)self->_standGlyphView leadingAnchor];
  trailingAnchor6 = [(CLKUIColoringLabel *)self->_exerciseLabel trailingAnchor];
  v75 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor6 constant:v6];
  v143[18] = v75;
  topAnchor11 = [(CLKUIColoringLabel *)self->_standLabel topAnchor];
  topAnchor12 = [(CLKUIColoringLabel *)self->_titleLabel topAnchor];
  v72 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
  v143[19] = v72;
  leadingAnchor13 = [(CLKUIColoringLabel *)self->_standLabel leadingAnchor];
  trailingAnchor7 = [(UIImageView *)self->_standGlyphView trailingAnchor];
  v69 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor7];
  v143[20] = v69;
  trailingAnchor8 = [(CLKUIColoringLabel *)self->_standLabel trailingAnchor];
  trailingAnchor9 = [(UIView *)self->_chartTitleView trailingAnchor];
  v66 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v143[21] = v66;
  topAnchor13 = [(NLActivityRichComplicationChartView *)self->_chartView topAnchor];
  bottomAnchor4 = [(UIView *)self->_chartTitleView bottomAnchor];
  v52 = [topAnchor13 constraintEqualToAnchor:bottomAnchor4 constant:v114];
  v143[22] = v52;
  centerXAnchor = [(NLActivityRichComplicationChartView *)self->_chartView centerXAnchor];
  centerXAnchor2 = [(NLActivityRichComplicationRectangularView *)self centerXAnchor];
  v55 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v143[23] = v55;
  heightAnchor = [(NLActivityRichComplicationChartView *)self->_chartView heightAnchor];
  v57 = [heightAnchor constraintEqualToConstant:v134];
  v143[24] = v57;
  widthAnchor = [(NLActivityRichComplicationChartView *)self->_chartView widthAnchor];
  v59 = [widthAnchor constraintEqualToConstant:v135];
  v143[25] = v59;
  v136 = [NSArray arrayWithObjects:v143 count:26];

  [NSLayoutConstraint activateConstraints:v136];
  leadingAnchor14 = [(UIImageView *)self->_moveGlyphView leadingAnchor];
  trailingAnchor10 = [(CLKUIColoringLabel *)self->_titleLabel trailingAnchor];
  v62 = [leadingAnchor14 constraintEqualToAnchor:trailingAnchor10];
  moveGlyphTitleLabelTrailingConstraint = self->_moveGlyphTitleLabelTrailingConstraint;
  self->_moveGlyphTitleLabelTrailingConstraint = v62;

  v142 = self->_moveGlyphTitleLabelTrailingConstraint;
  v64 = [NSArray arrayWithObjects:&v142 count:1];
  [NSLayoutConstraint activateConstraints:v64];
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = NLActivityRichComplicationRectangularView;
  [(NLActivityRichComplicationRectangularView *)&v3 setNeedsLayout];
  [(NLActivityRichComplicationChartView *)self->_chartView setNeedsLayout];
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v6 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewActivityText"];
  titleLabel = [(NLActivityRichComplicationRectangularView *)self titleLabel];
  [titleLabel setTextProvider:v6];

  v61 = v6;
  tintColor = [v6 tintColor];
  titleLabel2 = [(NLActivityRichComplicationRectangularView *)self titleLabel];
  [titleLabel2 setColor:tintColor];

  v10 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewMoveText"];
  moveLabel = [(NLActivityRichComplicationRectangularView *)self moveLabel];
  [moveLabel setTextProvider:v10];

  v60 = v10;
  tintColor2 = [v10 tintColor];
  moveLabel2 = [(NLActivityRichComplicationRectangularView *)self moveLabel];
  [moveLabel2 setColor:tintColor2];

  v14 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewExerciseText"];
  exerciseLabel = [(NLActivityRichComplicationRectangularView *)self exerciseLabel];
  [exerciseLabel setTextProvider:v14];

  v59 = v14;
  tintColor3 = [v14 tintColor];
  exerciseLabel2 = [(NLActivityRichComplicationRectangularView *)self exerciseLabel];
  [exerciseLabel2 setColor:tintColor3];

  v18 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewSleepText"];
  standLabel = [(NLActivityRichComplicationRectangularView *)self standLabel];
  [standLabel setTextProvider:v18];

  v58 = v18;
  tintColor4 = [v18 tintColor];
  standLabel2 = [(NLActivityRichComplicationRectangularView *)self standLabel];
  [standLabel2 setColor:tintColor4];

  v22 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewActivityMoveMode"];
  integerValue = [v22 integerValue];

  v24 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewMoveChartData"];
  if (v24)
  {
    chartView = [(NLActivityRichComplicationRectangularView *)self chartView];
    [chartView setMoveGraphData:v24 activityMoveMode:integerValue];
  }

  v26 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewExerciseChartData"];
  if (v26)
  {
    chartView2 = [(NLActivityRichComplicationRectangularView *)self chartView];
    [chartView2 setExerciseGraphData:v26];
  }

  v28 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewStandChartData"];
  if (v28)
  {
    chartView3 = [(NLActivityRichComplicationRectangularView *)self chartView];
    [chartView3 setStandGraphData:v28];
  }

  v30 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewWheelchairUseKey"];
  bOOLValue = [v30 BOOLValue];

  v32 = @"activity.stand";
  if (bOOLValue)
  {
    v32 = @"activity.roll";
  }

  v33 = v32;
  v34 = +[CLKDevice currentDevice];
  sub_2C38(v34, v34);
  v35 = [UIImageSymbolConfiguration configurationWithPointSize:*&qword_16640];

  v36 = [UIImage _systemImageNamed:v33 withConfiguration:v35];

  v37 = NTKStandNonGradientTextColor();
  v38 = [v36 imageWithTintColor:v37 renderingMode:1];

  standGlyphView = [(NLActivityRichComplicationRectangularView *)self standGlyphView];
  [standGlyphView setImage:v38];

  v40 = [metadata objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewHideAccentViews"];
  bOOLValue2 = [v40 BOOLValue];

  [(NLActivityRichComplicationRectangularView *)self _setAccentViewsVisibility:bOOLValue2];
  if (bOOLValue2)
  {
    titleLabel3 = [(NLActivityRichComplicationRectangularView *)self titleLabel];
    v43 = titleLabel3;
LABEL_15:
    [titleLabel3 setHidden:0];

    goto LABEL_16;
  }

  v44 = +[CLKDevice currentDevice];
  [v44 screenBounds];
  v46 = v45;

  moveGlyphTitleLabelTrailingConstraint = [(NLActivityRichComplicationRectangularView *)self moveGlyphTitleLabelTrailingConstraint];
  isActive = [moveGlyphTitleLabelTrailingConstraint isActive];

  if ((isActive & 1) == 0)
  {
    moveGlyphTitleLabelTrailingConstraint2 = [(NLActivityRichComplicationRectangularView *)self moveGlyphTitleLabelTrailingConstraint];
    v63 = moveGlyphTitleLabelTrailingConstraint2;
    v50 = [NSArray arrayWithObjects:&v63 count:1];
    [NSLayoutConstraint activateConstraints:v50];
  }

  chartTitleView = [(NLActivityRichComplicationRectangularView *)self chartTitleView];
  LODWORD(v52) = 1112014848;
  LODWORD(v53) = 1112014848;
  [chartTitleView systemLayoutSizeFittingSize:1.79769313e308 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v52, v53}];
  v55 = v54;

  titleLabel3 = [(NLActivityRichComplicationRectangularView *)self titleLabel];
  v43 = titleLabel3;
  if (v55 <= v46)
  {
    goto LABEL_15;
  }

  [titleLabel3 setHidden:1];

  moveGlyphTitleLabelTrailingConstraint3 = [(NLActivityRichComplicationRectangularView *)self moveGlyphTitleLabelTrailingConstraint];
  v62 = moveGlyphTitleLabelTrailingConstraint3;
  v57 = [NSArray arrayWithObjects:&v62 count:1];
  [NSLayoutConstraint deactivateConstraints:v57];

LABEL_16:
  [(NLActivityRichComplicationRectangularView *)self setNeedsLayout];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NLActivityRichComplicationRectangularView *)self filterProvider];
  v10 = [filterProvider filtersForView:self style:0 fraction:fraction];

  if (v10)
  {
    flatViews = [(NLActivityRichComplicationRectangularView *)self flatViews];
    [(NLActivityRichComplicationRectangularView *)self _updateViews:flatViews withFilters:v10];
  }

  filterProvider2 = [(NLActivityRichComplicationRectangularView *)self filterProvider];
  v8 = [filterProvider2 filtersForView:self style:2 fraction:fraction];

  if (v8)
  {
    accentViews = [(NLActivityRichComplicationRectangularView *)self accentViews];
    [(NLActivityRichComplicationRectangularView *)self _updateViews:accentViews withFilters:v8];
  }
}

- (void)updateMonochromeColor
{
  filterProvider = [(NLActivityRichComplicationRectangularView *)self filterProvider];
  v8 = [filterProvider filtersForView:self style:0];

  if (v8)
  {
    flatViews = [(NLActivityRichComplicationRectangularView *)self flatViews];
    [(NLActivityRichComplicationRectangularView *)self _updateViews:flatViews withFilters:v8];
  }

  filterProvider2 = [(NLActivityRichComplicationRectangularView *)self filterProvider];
  v6 = [filterProvider2 filtersForView:self style:2];

  if (v6)
  {
    accentViews = [(NLActivityRichComplicationRectangularView *)self accentViews];
    [(NLActivityRichComplicationRectangularView *)self _updateViews:accentViews withFilters:v6];
  }
}

- (void)_updateViews:(id)views withFilters:(id)filters
{
  viewsCopy = views;
  filtersCopy = filters;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(viewsCopy);
        }

        layer = [*(*(&v12 + 1) + 8 * v10) layer];
        [layer setFilters:filtersCopy];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_setAccentViewsVisibility:(BOOL)visibility
{
  accentViews = [(NLActivityRichComplicationRectangularView *)self accentViews];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_291C;
  v5[3] = &unk_10538;
  visibilityCopy = visibility;
  [accentViews enumerateObjectsUsingBlock:v5];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end