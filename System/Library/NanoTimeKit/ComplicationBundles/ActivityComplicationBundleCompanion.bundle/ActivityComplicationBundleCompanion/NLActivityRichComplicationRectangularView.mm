@interface NLActivityRichComplicationRectangularView
- (CLKMonochromeFilterProvider)filterProvider;
- (NLActivityRichComplicationRectangularView)initWithFrame:(CGRect)a3;
- (void)_setAccentViewsVisibility:(BOOL)a3;
- (void)_setupViews;
- (void)_updateViews:(id)a3 withFilters:(id)a4;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)setNeedsLayout;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NLActivityRichComplicationRectangularView

- (NLActivityRichComplicationRectangularView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NLActivityRichComplicationRectangularView;
  v3 = [(NLActivityRichComplicationRectangularView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v131 = [v50 bottomAnchor];
  v130 = [(NLActivityRichComplicationRectangularView *)self bottomAnchor];
  v129 = [v131 constraintEqualToAnchor:v130 constant:-v7];
  v143[0] = v129;
  v128 = [v50 leadingAnchor];
  v127 = [(NLActivityRichComplicationRectangularView *)self leadingAnchor];
  v126 = [v128 constraintEqualToAnchor:v127 constant:0.0];
  v143[1] = v126;
  v132 = v50;
  v125 = [v50 trailingAnchor];
  v124 = [(NLActivityRichComplicationRectangularView *)self trailingAnchor];
  v123 = [v125 constraintEqualToAnchor:v124 constant:-0.0];
  v143[2] = v123;
  v122 = [v50 topAnchor];
  v121 = [(NLActivityRichComplicationRectangularView *)self topAnchor];
  v120 = [v122 constraintEqualToAnchor:v121 constant:v114];
  v143[3] = v120;
  v119 = [(UIView *)self->_chartTitleView topAnchor];
  v118 = [(NLActivityRichComplicationRectangularView *)self topAnchor];
  v117 = [v119 constraintEqualToAnchor:v118];
  v143[4] = v117;
  v116 = [(UIView *)self->_chartTitleView leadingAnchor];
  v115 = [(NLActivityRichComplicationRectangularView *)self leadingAnchor];
  v113 = [v116 constraintEqualToAnchor:v115];
  v143[5] = v113;
  v112 = [(CLKUIColoringLabel *)self->_titleLabel topAnchor];
  v111 = [(UIView *)self->_chartTitleView topAnchor];
  v110 = [v112 constraintEqualToAnchor:v111];
  v143[6] = v110;
  v109 = [(CLKUIColoringLabel *)self->_titleLabel leadingAnchor];
  v108 = [(UIView *)self->_chartTitleView leadingAnchor];
  v107 = [v109 constraintEqualToAnchor:v108 constant:v5];
  v143[7] = v107;
  v106 = [(CLKUIColoringLabel *)self->_titleLabel firstBaselineAnchor];
  v105 = [(UIView *)self->_chartTitleView bottomAnchor];
  v104 = [v106 constraintEqualToAnchor:v105];
  v143[8] = v104;
  v103 = [(UIImageView *)self->_moveGlyphView centerYAnchor];
  v102 = [(CLKUIColoringLabel *)self->_titleLabel centerYAnchor];
  v101 = [v103 constraintEqualToAnchor:v102];
  v143[9] = v101;
  v100 = [(UIImageView *)self->_moveGlyphView leadingAnchor];
  v99 = [(UIView *)self->_chartTitleView leadingAnchor];
  v98 = [v100 constraintGreaterThanOrEqualToAnchor:v99 constant:v5];
  v143[10] = v98;
  v97 = [(CLKUIColoringLabel *)self->_moveLabel topAnchor];
  v96 = [(CLKUIColoringLabel *)self->_titleLabel topAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v143[11] = v95;
  v94 = [(CLKUIColoringLabel *)self->_moveLabel leadingAnchor];
  v93 = [(UIImageView *)self->_moveGlyphView trailingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v143[12] = v92;
  v91 = [(UIImageView *)self->_exerciseGlyphView centerYAnchor];
  v90 = [(CLKUIColoringLabel *)self->_titleLabel centerYAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v143[13] = v89;
  v88 = [(UIImageView *)self->_exerciseGlyphView leadingAnchor];
  v141 = [(CLKUIColoringLabel *)self->_moveLabel trailingAnchor];
  v87 = [v88 constraintEqualToAnchor:v141 constant:v6];
  v143[14] = v87;
  v85 = [(CLKUIColoringLabel *)self->_exerciseLabel topAnchor];
  v84 = [(CLKUIColoringLabel *)self->_titleLabel topAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v143[15] = v83;
  v82 = [(CLKUIColoringLabel *)self->_exerciseLabel leadingAnchor];
  v81 = [(UIImageView *)self->_exerciseGlyphView trailingAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v143[16] = v80;
  v79 = [(UIImageView *)self->_standGlyphView centerYAnchor];
  v78 = [(CLKUIColoringLabel *)self->_titleLabel centerYAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v143[17] = v77;
  v76 = [(UIImageView *)self->_standGlyphView leadingAnchor];
  v86 = [(CLKUIColoringLabel *)self->_exerciseLabel trailingAnchor];
  v75 = [v76 constraintEqualToAnchor:v86 constant:v6];
  v143[18] = v75;
  v74 = [(CLKUIColoringLabel *)self->_standLabel topAnchor];
  v73 = [(CLKUIColoringLabel *)self->_titleLabel topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v143[19] = v72;
  v71 = [(CLKUIColoringLabel *)self->_standLabel leadingAnchor];
  v70 = [(UIImageView *)self->_standGlyphView trailingAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v143[20] = v69;
  v68 = [(CLKUIColoringLabel *)self->_standLabel trailingAnchor];
  v67 = [(UIView *)self->_chartTitleView trailingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v143[21] = v66;
  v65 = [(NLActivityRichComplicationChartView *)self->_chartView topAnchor];
  v51 = [(UIView *)self->_chartTitleView bottomAnchor];
  v52 = [v65 constraintEqualToAnchor:v51 constant:v114];
  v143[22] = v52;
  v53 = [(NLActivityRichComplicationChartView *)self->_chartView centerXAnchor];
  v54 = [(NLActivityRichComplicationRectangularView *)self centerXAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
  v143[23] = v55;
  v56 = [(NLActivityRichComplicationChartView *)self->_chartView heightAnchor];
  v57 = [v56 constraintEqualToConstant:v134];
  v143[24] = v57;
  v58 = [(NLActivityRichComplicationChartView *)self->_chartView widthAnchor];
  v59 = [v58 constraintEqualToConstant:v135];
  v143[25] = v59;
  v136 = [NSArray arrayWithObjects:v143 count:26];

  [NSLayoutConstraint activateConstraints:v136];
  v60 = [(UIImageView *)self->_moveGlyphView leadingAnchor];
  v61 = [(CLKUIColoringLabel *)self->_titleLabel trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
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

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 metadata];
  v6 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewActivityText"];
  v7 = [(NLActivityRichComplicationRectangularView *)self titleLabel];
  [v7 setTextProvider:v6];

  v61 = v6;
  v8 = [v6 tintColor];
  v9 = [(NLActivityRichComplicationRectangularView *)self titleLabel];
  [v9 setColor:v8];

  v10 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewMoveText"];
  v11 = [(NLActivityRichComplicationRectangularView *)self moveLabel];
  [v11 setTextProvider:v10];

  v60 = v10;
  v12 = [v10 tintColor];
  v13 = [(NLActivityRichComplicationRectangularView *)self moveLabel];
  [v13 setColor:v12];

  v14 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewExerciseText"];
  v15 = [(NLActivityRichComplicationRectangularView *)self exerciseLabel];
  [v15 setTextProvider:v14];

  v59 = v14;
  v16 = [v14 tintColor];
  v17 = [(NLActivityRichComplicationRectangularView *)self exerciseLabel];
  [v17 setColor:v16];

  v18 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewSleepText"];
  v19 = [(NLActivityRichComplicationRectangularView *)self standLabel];
  [v19 setTextProvider:v18];

  v58 = v18;
  v20 = [v18 tintColor];
  v21 = [(NLActivityRichComplicationRectangularView *)self standLabel];
  [v21 setColor:v20];

  v22 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewActivityMoveMode"];
  v23 = [v22 integerValue];

  v24 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewMoveChartData"];
  if (v24)
  {
    v25 = [(NLActivityRichComplicationRectangularView *)self chartView];
    [v25 setMoveGraphData:v24 activityMoveMode:v23];
  }

  v26 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewExerciseChartData"];
  if (v26)
  {
    v27 = [(NLActivityRichComplicationRectangularView *)self chartView];
    [v27 setExerciseGraphData:v26];
  }

  v28 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewStandChartData"];
  if (v28)
  {
    v29 = [(NLActivityRichComplicationRectangularView *)self chartView];
    [v29 setStandGraphData:v28];
  }

  v30 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewWheelchairUseKey"];
  v31 = [v30 BOOLValue];

  v32 = @"activity.stand";
  if (v31)
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

  v39 = [(NLActivityRichComplicationRectangularView *)self standGlyphView];
  [v39 setImage:v38];

  v40 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationRectangularViewHideAccentViews"];
  v41 = [v40 BOOLValue];

  [(NLActivityRichComplicationRectangularView *)self _setAccentViewsVisibility:v41];
  if (v41)
  {
    v42 = [(NLActivityRichComplicationRectangularView *)self titleLabel];
    v43 = v42;
LABEL_15:
    [v42 setHidden:0];

    goto LABEL_16;
  }

  v44 = +[CLKDevice currentDevice];
  [v44 screenBounds];
  v46 = v45;

  v47 = [(NLActivityRichComplicationRectangularView *)self moveGlyphTitleLabelTrailingConstraint];
  v48 = [v47 isActive];

  if ((v48 & 1) == 0)
  {
    v49 = [(NLActivityRichComplicationRectangularView *)self moveGlyphTitleLabelTrailingConstraint];
    v63 = v49;
    v50 = [NSArray arrayWithObjects:&v63 count:1];
    [NSLayoutConstraint activateConstraints:v50];
  }

  v51 = [(NLActivityRichComplicationRectangularView *)self chartTitleView];
  LODWORD(v52) = 1112014848;
  LODWORD(v53) = 1112014848;
  [v51 systemLayoutSizeFittingSize:1.79769313e308 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v52, v53}];
  v55 = v54;

  v42 = [(NLActivityRichComplicationRectangularView *)self titleLabel];
  v43 = v42;
  if (v55 <= v46)
  {
    goto LABEL_15;
  }

  [v42 setHidden:1];

  v56 = [(NLActivityRichComplicationRectangularView *)self moveGlyphTitleLabelTrailingConstraint];
  v62 = v56;
  v57 = [NSArray arrayWithObjects:&v62 count:1];
  [NSLayoutConstraint deactivateConstraints:v57];

LABEL_16:
  [(NLActivityRichComplicationRectangularView *)self setNeedsLayout];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NLActivityRichComplicationRectangularView *)self filterProvider];
  v10 = [v5 filtersForView:self style:0 fraction:a3];

  if (v10)
  {
    v6 = [(NLActivityRichComplicationRectangularView *)self flatViews];
    [(NLActivityRichComplicationRectangularView *)self _updateViews:v6 withFilters:v10];
  }

  v7 = [(NLActivityRichComplicationRectangularView *)self filterProvider];
  v8 = [v7 filtersForView:self style:2 fraction:a3];

  if (v8)
  {
    v9 = [(NLActivityRichComplicationRectangularView *)self accentViews];
    [(NLActivityRichComplicationRectangularView *)self _updateViews:v9 withFilters:v8];
  }
}

- (void)updateMonochromeColor
{
  v3 = [(NLActivityRichComplicationRectangularView *)self filterProvider];
  v8 = [v3 filtersForView:self style:0];

  if (v8)
  {
    v4 = [(NLActivityRichComplicationRectangularView *)self flatViews];
    [(NLActivityRichComplicationRectangularView *)self _updateViews:v4 withFilters:v8];
  }

  v5 = [(NLActivityRichComplicationRectangularView *)self filterProvider];
  v6 = [v5 filtersForView:self style:2];

  if (v6)
  {
    v7 = [(NLActivityRichComplicationRectangularView *)self accentViews];
    [(NLActivityRichComplicationRectangularView *)self _updateViews:v7 withFilters:v6];
  }
}

- (void)_updateViews:(id)a3 withFilters:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) layer];
        [v11 setFilters:v6];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_setAccentViewsVisibility:(BOOL)a3
{
  v4 = [(NLActivityRichComplicationRectangularView *)self accentViews];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_291C;
  v5[3] = &unk_10538;
  v6 = a3;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end