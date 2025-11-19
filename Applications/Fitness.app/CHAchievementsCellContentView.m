@interface CHAchievementsCellContentView
+ (BOOL)_shouldShowProgressBar:(id)a3;
+ (BOOL)shouldShowCountForAchievement:(id)a3;
+ (double)cellHeightForAchievement:(id)a3 preferredWidth:(double)a4 appliesLargeCellInsets:(BOOL)a5 locProvider:(id)a6 withProgressBar:(BOOL)a7 formatForFriend:(BOOL)a8;
+ (id)monthlyDateFormatter;
+ (id)stringForAchievement:(id)a3 locProvider:(id)a4 formatForFriend:(BOOL)a5;
- (CGRect)badgeRect;
- (CHAchievementsCellContentView)initWithFrame:(CGRect)a3;
- (void)_populateProgressBar:(id)a3;
- (void)annotateView:(id)a3 withAchievement:(id)a4;
- (void)applyProgressBarConstraints:(id)a3;
- (void)applyTextBaselineConstraints;
- (void)applyTextLeadingAndTrailingConstraints;
- (void)applyViewConstraints;
- (void)configureWithAchievement:(id)a3 badgeImageFactory:(id)a4 locProvider:(id)a5 shouldShowProgressBar:(BOOL)a6 formatForFriend:(BOOL)a7;
- (void)fontSizeChanged:(id)a3;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)prepareForReuse;
- (void)setAppliesLargeCellInset:(BOOL)a3;
- (void)setBadgeHidden:(BOOL)a3;
- (void)setEarnedInstanceCount:(int64_t)a3;
- (void)setEarnedInstanceCountLabelBackgroundColor:(id)a3;
@end

@implementation CHAchievementsCellContentView

- (CHAchievementsCellContentView)initWithFrame:(CGRect)a3
{
  v34.receiver = self;
  v34.super_class = CHAchievementsCellContentView;
  v3 = [(CHAchievementsCellContentView *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(CHAchievementsCellContentView *)v3 setBackgroundColor:v4];

    v5 = +[UIColor fu_systemTextGreyColor];
    earnedInstanceCountLabelBackgroundColor = v3->_earnedInstanceCountLabelBackgroundColor;
    v3->_earnedInstanceCountLabelBackgroundColor = v5;

    v7 = objc_alloc_init(AAUIAchievementResourceProvider);
    resourceProvider = v3->_resourceProvider;
    v3->_resourceProvider = v7;

    v3->_preferredWidth = 100.0;
    v9 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    badgeView = v3->_badgeView;
    v3->_badgeView = v13;

    [(UIImageView *)v3->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_badgeView setContentMode:4];
    v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    label = v3->_label;
    v3->_label = v15;

    v17 = +[UIColor labelColor];
    [(UILabel *)v3->_label setTextColor:v17];

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setNumberOfLines:0];
    [(UILabel *)v3->_label setTextAlignment:1];
    [(UILabel *)v3->_label setLineBreakMode:0];
    LODWORD(v18) = 1036831949;
    [(UILabel *)v3->_label _setHyphenationFactor:v18];
    v19 = [[UIProgressView alloc] initWithProgressViewStyle:1];
    progressBar = v3->_progressBar;
    v3->_progressBar = v19;

    v21 = +[ARUIMetricColors briskColors];
    v22 = [v21 gradientLightColor];
    [(UIProgressView *)v3->_progressBar setProgressTintColor:v22];

    v23 = sub_10013AA28();
    [(UIProgressView *)v3->_progressBar setTrackTintColor:v23];

    v24 = [(UIProgressView *)v3->_progressBar layer];
    [v24 setCornerRadius:2.0];

    [(UIProgressView *)v3->_progressBar setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(UIProgressView *)v3->_progressBar layer];
    [v25 setMasksToBounds:1];

    [(UIProgressView *)v3->_progressBar setHidden:1];
    [(CHAchievementsCellContentView *)v3 addSubview:v3->_badgeView];
    [(CHAchievementsCellContentView *)v3 addSubview:v3->_label];
    if (AAUIShouldUseNewTrophyCase())
    {
      [(CHAchievementsCellContentView *)v3 addSubview:v3->_progressBar];
    }

    v26 = [[CHPillLabelView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    earnedInstanceCountLabelView = v3->_earnedInstanceCountLabelView;
    v3->_earnedInstanceCountLabelView = v26;

    [(CHPillLabelView *)v3->_earnedInstanceCountLabelView setPillBackgroundColor:v3->_earnedInstanceCountLabelBackgroundColor];
    [(CHAchievementsCellContentView *)v3 addSubview:v3->_earnedInstanceCountLabelView];
    [(CHAchievementsCellContentView *)v3 applyViewConstraints];
    [(CHAchievementsCellContentView *)v3 fontSizeChanged:0];
    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v3 selector:"fontSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v29 = +[CALayer layer];
    darkeningLayer = v3->_darkeningLayer;
    v3->_darkeningLayer = v29;

    v31 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v3->_darkeningLayer, "setBackgroundColor:", [v31 CGColor]);

    v32 = [(CHAchievementsCellContentView *)v3 layer];
    [v32 addSublayer:v3->_darkeningLayer];

    [(CALayer *)v3->_darkeningLayer setOpacity:0.0];
  }

  return v3;
}

+ (id)monthlyDateFormatter
{
  if (qword_1008F9B28 != -1)
  {
    sub_10069CB6C();
  }

  v3 = qword_1008F9B20;

  return v3;
}

+ (id)stringForAchievement:(id)a3 locProvider:(id)a4 formatForFriend:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = +[UIColor labelColor];
  v11 = +[UIColor secondaryLabelColor];
  v12 = [v9 titleForAchievement:v8];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  if (!v13)
  {
    v14 = [v8 template];
    v13 = [v14 uniqueName];
  }

  if ([v8 unearned])
  {
    v15 = [v9 unachievedShortDescriptionForAchievement:v8];
  }

  else
  {
    v15 = [v9 achievedShortDescriptionForAchievement:v8];
    if (v5 && [a1 shouldShowCountForAchievement:v8])
    {
      v16 = [v8 relevantEarnedInstance];
      v17 = [v16 earnedDateComponents];

      v18 = +[NSCalendar currentCalendar];
      [v18 dateFromComponents:v17];
      v20 = v19 = v10;

      v21 = ACHFormatDateWithStyle();

      v10 = v19;
      v15 = v21;
    }
  }

  if (([(__CFString *)v15 isEqualToString:@"ACHIEVEMENT_UNACHIEVED_SHORT_DESCRIPTION"]& 1) != 0 || [(__CFString *)v15 isEqualToString:@"ACHIEVEMENT_ACHIEVED_SHORT_DESCRIPTION"])
  {

    v15 = &stru_1008680E8;
  }

  if ([(__CFString *)v15 length])
  {
    v22 = [v13 stringByAppendingString:@"\n"];

    v13 = v22;
  }

  v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  v24 = [NSMutableAttributedString alloc];
  v34[0] = NSFontAttributeName;
  v34[1] = NSForegroundColorAttributeName;
  v35[0] = v23;
  v35[1] = v10;
  v25 = v10;
  v26 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  v27 = [v24 initWithString:v13 attributes:v26];

  if ([(__CFString *)v15 length])
  {
    v28 = [NSAttributedString alloc];
    v32[0] = NSFontAttributeName;
    v32[1] = NSForegroundColorAttributeName;
    v33[0] = v23;
    v33[1] = v11;
    v29 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
    v30 = [v28 initWithString:v15 attributes:v29];
    [v27 appendAttributedString:v30];
  }

  return v27;
}

+ (BOOL)shouldShowCountForAchievement:(id)a3
{
  v3 = a3;
  v4 = [v3 template];
  if (![v4 displaysEarnedInstanceCount])
  {

    goto LABEL_5;
  }

  v5 = [v3 unearned];

  if (v5)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = [v3 earnedInstanceCount] != 0;
LABEL_6:

  return v6;
}

+ (double)cellHeightForAchievement:(id)a3 preferredWidth:(double)a4 appliesLargeCellInsets:(BOOL)a5 locProvider:(id)a6 withProgressBar:(BOOL)a7 formatForFriend:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v14 = a3;
  v15 = a6;
  if (v11)
  {
    a4 = a4 + a4 * -0.05;
  }

  if (qword_1008F9B38 != -1)
  {
    sub_10069CB80();
  }

  v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  [qword_1008F9B30 setFont:v16];

  v17 = [a1 stringForAchievement:v14 locProvider:v15 formatForFriend:v8];
  [qword_1008F9B30 setAttributedText:v17];

  [qword_1008F9B30 sizeThatFits:{a4, 1.79769313e308}];
  [qword_1008F9B30 setFrame:{0.0, 0.0, a4, v18}];
  [qword_1008F9B30 _lastLineBaselineFrameOriginY];
  [qword_1008F9B30 _firstBaselineOffsetFromTop];
  if (v9)
  {
    [a1 _shouldShowProgressBar:v14];
  }

  if (![a1 shouldShowCountForAchievement:v14] || v8)
  {
    v19 = [qword_1008F9B30 font];
    [v19 _scaledValueForValue:12.0];
  }

  UICeilToViewScale();
  v21 = v20;

  return v21;
}

- (void)applyViewConstraints
{
  v3 = [(CHAchievementsCellContentView *)self badgeView];
  v4 = [v3 leadingAnchor];
  v5 = [(CHAchievementsCellContentView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [(CHAchievementsCellContentView *)self badgeView];
  v8 = [v7 topAnchor];
  v9 = [(CHAchievementsCellContentView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(CHAchievementsCellContentView *)self badgeView];
  v12 = [v11 trailingAnchor];
  v13 = [(CHAchievementsCellContentView *)self trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(CHAchievementsCellContentView *)self badgeView];
  v16 = [v15 heightAnchor];
  v17 = [(UIImageView *)self->_badgeView widthAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  [(CHAchievementsCellContentView *)self applyTextLeadingAndTrailingConstraints];
  [(CHAchievementsCellContentView *)self applyTextBaselineConstraints];
  v19 = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
  v20 = [v19 centerXAnchor];
  v21 = [(CHAchievementsCellContentView *)self centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
  v24 = [v23 topAnchor];
  v25 = [(CHAchievementsCellContentView *)self label];
  v26 = [v25 lastBaselineAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:6.0];
  [(CHAchievementsCellContentView *)self setCountLabelTopConstraint:v27];

  v28 = [(CHAchievementsCellContentView *)self countLabelTopConstraint];
  [v28 setActive:1];
}

- (void)applyTextLeadingAndTrailingConstraints
{
  v3 = 0.0;
  if ([(CHAchievementsCellContentView *)self appliesLargeCellInset])
  {
    [(CHAchievementsCellContentView *)self preferredWidth];
    v3 = v4 * 0.025;
  }

  v5 = [(CHAchievementsCellContentView *)self label];
  v6 = [v5 leadingAnchor];
  v7 = [(CHAchievementsCellContentView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:v3];
  [(CHAchievementsCellContentView *)self setLeadingTextConstraint:v8];

  v9 = [(CHAchievementsCellContentView *)self label];
  v10 = [v9 trailingAnchor];
  v11 = [(CHAchievementsCellContentView *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-v3];
  [(CHAchievementsCellContentView *)self setTrailingTextConstraint:v12];

  v13 = [(CHAchievementsCellContentView *)self leadingTextConstraint];
  v16[0] = v13;
  v14 = [(CHAchievementsCellContentView *)self trailingTextConstraint];
  v16[1] = v14;
  v15 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)applyTextBaselineConstraints
{
  if ([(CHAchievementsCellContentView *)self appliesLargeCellInset])
  {
    v3 = 17.0;
  }

  else
  {
    v3 = 9.0;
  }

  v4 = [(CHAchievementsCellContentView *)self label];
  v5 = [v4 firstBaselineAnchor];
  v6 = [(CHAchievementsCellContentView *)self badgeView];
  v7 = [v6 bottomAnchor];
  v8 = [(CHAchievementsCellContentView *)self label];
  v9 = [v8 font];
  [v9 _scaledValueForValue:v3];
  v10 = [v5 constraintEqualToAnchor:v7 constant:?];
  [(CHAchievementsCellContentView *)self setLabelFirstBaselineConstraint:v10];

  v11 = [(CHAchievementsCellContentView *)self labelFirstBaselineConstraint];
  [v11 setActive:1];
}

- (void)applyProgressBarConstraints:(id)a3
{
  v24 = a3;
  if (AAUIShouldUseNewTrophyCase() && [objc_opt_class() _shouldShowProgressBar:v24])
  {
    v4 = [(CHAchievementsCellContentView *)self progressBar];
    v5 = [v4 leadingAnchor];
    v6 = [(CHAchievementsCellContentView *)self leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:5.0];
    [v7 setActive:1];

    v8 = [(CHAchievementsCellContentView *)self progressBar];
    v9 = [v8 trailingAnchor];
    v10 = [(CHAchievementsCellContentView *)self trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:-5.0];
    [v11 setActive:1];

    v12 = +[UIApplication sharedApplication];
    v13 = [v12 preferredContentSizeCategory];
    LODWORD(v10) = UIContentSizeCategoryIsAccessibilityCategory(v13);

    if (v10)
    {
      v14 = 8.0;
    }

    else
    {
      v14 = 4.0;
    }

    v15 = [(CHAchievementsCellContentView *)self progressBar];
    v16 = [v15 layer];
    [v16 setCornerRadius:v14 * 0.5];

    v17 = [(CHAchievementsCellContentView *)self progressBar];
    v18 = [v17 heightAnchor];
    v19 = [v18 constraintEqualToConstant:v14];
    [v19 setActive:1];

    v20 = [(CHAchievementsCellContentView *)self progressBar];
    v21 = [v20 bottomAnchor];
    v22 = [(CHAchievementsCellContentView *)self bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-15.0];
    [v23 setActive:1];
  }
}

- (void)fontSizeChanged:(id)a3
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  v5 = [(CHAchievementsCellContentView *)self label];
  [v5 setFont:v4];

  v6 = [(CHAchievementsCellContentView *)self labelFirstBaselineConstraint];
  [v6 setActive:0];

  [(CHAchievementsCellContentView *)self applyTextBaselineConstraints];
}

- (void)setAppliesLargeCellInset:(BOOL)a3
{
  if (self->_appliesLargeCellInset != a3)
  {
    self->_appliesLargeCellInset = a3;
    v5 = [(CHAchievementsCellContentView *)self leadingTextConstraint];
    [v5 setActive:0];

    v6 = [(CHAchievementsCellContentView *)self trailingTextConstraint];
    [v6 setActive:0];

    [(CHAchievementsCellContentView *)self applyTextLeadingAndTrailingConstraints];

    [(CHAchievementsCellContentView *)self fontSizeChanged:0];
  }
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v14.receiver = self;
  v14.super_class = CHAchievementsCellContentView;
  v4 = a3;
  [(CHAchievementsCellContentView *)&v14 layoutSublayersOfLayer:v4];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(CHAchievementsCellContentView *)self darkeningLayer];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (void)setBadgeHidden:(BOOL)a3
{
  v3 = a3;
  self->_badgeHidden = a3;
  v4 = [(CHAchievementsCellContentView *)self badgeView];
  [v4 setHidden:v3];
}

- (CGRect)badgeRect
{
  v2 = [(CHAchievementsCellContentView *)self badgeView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectInset(*&v11, 10.0, 10.0);
}

- (void)setEarnedInstanceCount:(int64_t)a3
{
  v5 = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
  v6 = v5;
  if (a3 < 1)
  {
    [v5 setHidden:1];
  }

  else
  {
    [v5 setHidden:0];

    v6 = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
    [v6 setIntegerValue:a3];
  }
}

- (void)configureWithAchievement:(id)a3 badgeImageFactory:(id)a4 locProvider:(id)a5 shouldShowProgressBar:(BOOL)a6 formatForFriend:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    [(CHAchievementsCellContentView *)self setHidden:0];
    v15 = [v12 template];
    v16 = [v15 uniqueName];
    [(CHAchievementsCellContentView *)self setTemplateUniqueName:v16];

    v17 = [objc_opt_class() shouldShowCountForAchievement:v12];
    v18 = 0;
    if (v17 && !v7)
    {
      v18 = [v12 earnedInstanceCount];
    }

    [(CHAchievementsCellContentView *)self setEarnedInstanceCount:v18];
    v19 = [v12 template];
    v20 = [v19 sourceName];
    v21 = [v20 isEqualToString:kASCompetitionsAchievementTemplateSourceIdentifier];

    if (v21)
    {
      +[UIColor as_lightCompetitionGold];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v22 = ;
    [(CHAchievementsCellContentView *)self setEarnedInstanceCountLabelBackgroundColor:v22];

    [(CHAchievementsCellContentView *)self preferredWidth];
    v24 = v23;
    [(CHAchievementsCellContentView *)self preferredWidth];
    v26 = v25;
    if ([v13 hasCachedThumbnailImageForAchievement:v12 size:{v24, v25}])
    {
      v27 = [v13 thumbnailImageForAchievement:v12 size:{v24, v26}];
      v28 = [(CHAchievementsCellContentView *)self badgeView];
      [v28 setImage:v27];
    }

    else
    {
      v29 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011F890;
      block[3] = &unk_10083CD58;
      v39 = v13;
      v42 = v24;
      v43 = v26;
      v40 = v12;
      v41 = self;
      dispatch_async(v29, block);
    }

    v30 = [objc_opt_class() stringForAchievement:v12 locProvider:v14 formatForFriend:v7];
    v31 = [(CHAchievementsCellContentView *)self label];
    [v31 setAttributedText:v30];

    if (AAUIShouldUseNewTrophyCase() && v8)
    {
      [(CHAchievementsCellContentView *)self _populateProgressBar:v12];
      [(CHAchievementsCellContentView *)self applyProgressBarConstraints:v12];
    }

    v32 = [(CHAchievementsCellContentView *)self templateUniqueName];

    if (v32)
    {
      v33 = [v12 unearned];
      v34 = &off_10083D408;
      if (!v33)
      {
        v34 = &off_10083D400;
      }

      v35 = *v34;
      v36 = [(CHAchievementsCellContentView *)self templateUniqueName];
      v37 = [NSString stringWithFormat:@"%@_%@", v36, v35];
      [(CHAchievementsCellContentView *)self setAccessibilityIdentifier:v37];
    }

    [(CHAchievementsCellContentView *)self annotateView:self->_badgeView withAchievement:v12];
  }

  else
  {
    [(CHAchievementsCellContentView *)self setHidden:1];
  }
}

+ (BOOL)_shouldShowProgressBar:(id)a3
{
  v3 = a3;
  if (AAUIShouldUseNewTrophyCase() && [v3 unearned])
  {
    v4 = [v3 goal];
    if (v4)
    {
      v5 = [v3 progress];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_populateProgressBar:(id)a3
{
  v14 = a3;
  if ([objc_opt_class() _shouldShowProgressBar:v14])
  {
    v4 = [v14 template];
    v5 = [v4 canonicalUnit];

    v6 = [v14 goal];
    [v6 doubleValueForUnit:v5];
    v8 = v7;

    v9 = [v14 progress];
    [v9 doubleValueForUnit:v5];
    v11 = v10;

    if (v8 == 0.0)
    {
      p_progressBar = &self->_progressBar;
    }

    else
    {
      v13 = v11 / v8;
      if (v11 / v8 < 2.22044605e-16)
      {
        v13 = 0.01;
      }

      p_progressBar = &self->_progressBar;
      *&v13 = v13;
      [(UIProgressView *)*p_progressBar setProgress:v13];
    }

    [(UIProgressView *)*p_progressBar setHidden:v8 == 0.0];
  }

  else
  {
    [(UIProgressView *)self->_progressBar setHidden:1];
  }
}

- (void)prepareForReuse
{
  [(UIImageView *)self->_badgeView setImage:0];
  progressBar = self->_progressBar;

  [(UIProgressView *)progressBar setHidden:1];
}

- (void)setEarnedInstanceCountLabelBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_earnedInstanceCountLabelBackgroundColor, a3);
  v5 = a3;
  earnedInstanceCountLabelBackgroundColor = self->_earnedInstanceCountLabelBackgroundColor;
  v7 = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
  [v7 setPillBackgroundColor:earnedInstanceCountLabelBackgroundColor];
}

- (void)annotateView:(id)a3 withAchievement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100629168(v6, a4);
}

@end