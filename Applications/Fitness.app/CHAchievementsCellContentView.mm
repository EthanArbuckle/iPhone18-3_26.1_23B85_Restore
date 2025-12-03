@interface CHAchievementsCellContentView
+ (BOOL)_shouldShowProgressBar:(id)bar;
+ (BOOL)shouldShowCountForAchievement:(id)achievement;
+ (double)cellHeightForAchievement:(id)achievement preferredWidth:(double)width appliesLargeCellInsets:(BOOL)insets locProvider:(id)provider withProgressBar:(BOOL)bar formatForFriend:(BOOL)friend;
+ (id)monthlyDateFormatter;
+ (id)stringForAchievement:(id)achievement locProvider:(id)provider formatForFriend:(BOOL)friend;
- (CGRect)badgeRect;
- (CHAchievementsCellContentView)initWithFrame:(CGRect)frame;
- (void)_populateProgressBar:(id)bar;
- (void)annotateView:(id)view withAchievement:(id)achievement;
- (void)applyProgressBarConstraints:(id)constraints;
- (void)applyTextBaselineConstraints;
- (void)applyTextLeadingAndTrailingConstraints;
- (void)applyViewConstraints;
- (void)configureWithAchievement:(id)achievement badgeImageFactory:(id)factory locProvider:(id)provider shouldShowProgressBar:(BOOL)bar formatForFriend:(BOOL)friend;
- (void)fontSizeChanged:(id)changed;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)prepareForReuse;
- (void)setAppliesLargeCellInset:(BOOL)inset;
- (void)setBadgeHidden:(BOOL)hidden;
- (void)setEarnedInstanceCount:(int64_t)count;
- (void)setEarnedInstanceCountLabelBackgroundColor:(id)color;
@end

@implementation CHAchievementsCellContentView

- (CHAchievementsCellContentView)initWithFrame:(CGRect)frame
{
  v34.receiver = self;
  v34.super_class = CHAchievementsCellContentView;
  v3 = [(CHAchievementsCellContentView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    gradientLightColor = [v21 gradientLightColor];
    [(UIProgressView *)v3->_progressBar setProgressTintColor:gradientLightColor];

    v23 = sub_10013AA28();
    [(UIProgressView *)v3->_progressBar setTrackTintColor:v23];

    layer = [(UIProgressView *)v3->_progressBar layer];
    [layer setCornerRadius:2.0];

    [(UIProgressView *)v3->_progressBar setTranslatesAutoresizingMaskIntoConstraints:0];
    layer2 = [(UIProgressView *)v3->_progressBar layer];
    [layer2 setMasksToBounds:1];

    [(UIProgressView *)v3->_progressBar setHidden:1];
    [(CHAchievementsCellContentView *)v3 addSubview:v3->_badgeView];
    [(CHAchievementsCellContentView *)v3 addSubview:v3->_label];
    if (AAUIShouldUseNewTrophyCase())
    {
      [(CHAchievementsCellContentView *)v3 addSubview:v3->_progressBar];
    }

    height = [[CHPillLabelView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    earnedInstanceCountLabelView = v3->_earnedInstanceCountLabelView;
    v3->_earnedInstanceCountLabelView = height;

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

    layer3 = [(CHAchievementsCellContentView *)v3 layer];
    [layer3 addSublayer:v3->_darkeningLayer];

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

+ (id)stringForAchievement:(id)achievement locProvider:(id)provider formatForFriend:(BOOL)friend
{
  friendCopy = friend;
  achievementCopy = achievement;
  providerCopy = provider;
  v10 = +[UIColor labelColor];
  v11 = +[UIColor secondaryLabelColor];
  v12 = [providerCopy titleForAchievement:achievementCopy];
  uniqueName = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  if (!uniqueName)
  {
    template = [achievementCopy template];
    uniqueName = [template uniqueName];
  }

  if ([achievementCopy unearned])
  {
    v15 = [providerCopy unachievedShortDescriptionForAchievement:achievementCopy];
  }

  else
  {
    v15 = [providerCopy achievedShortDescriptionForAchievement:achievementCopy];
    if (friendCopy && [self shouldShowCountForAchievement:achievementCopy])
    {
      relevantEarnedInstance = [achievementCopy relevantEarnedInstance];
      earnedDateComponents = [relevantEarnedInstance earnedDateComponents];

      v18 = +[NSCalendar currentCalendar];
      [v18 dateFromComponents:earnedDateComponents];
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
    v22 = [uniqueName stringByAppendingString:@"\n"];

    uniqueName = v22;
  }

  v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  v24 = [NSMutableAttributedString alloc];
  v34[0] = NSFontAttributeName;
  v34[1] = NSForegroundColorAttributeName;
  v35[0] = v23;
  v35[1] = v10;
  v25 = v10;
  v26 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  v27 = [v24 initWithString:uniqueName attributes:v26];

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

+ (BOOL)shouldShowCountForAchievement:(id)achievement
{
  achievementCopy = achievement;
  template = [achievementCopy template];
  if (![template displaysEarnedInstanceCount])
  {

    goto LABEL_5;
  }

  unearned = [achievementCopy unearned];

  if (unearned)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = [achievementCopy earnedInstanceCount] != 0;
LABEL_6:

  return v6;
}

+ (double)cellHeightForAchievement:(id)achievement preferredWidth:(double)width appliesLargeCellInsets:(BOOL)insets locProvider:(id)provider withProgressBar:(BOOL)bar formatForFriend:(BOOL)friend
{
  friendCopy = friend;
  barCopy = bar;
  insetsCopy = insets;
  achievementCopy = achievement;
  providerCopy = provider;
  if (insetsCopy)
  {
    width = width + width * -0.05;
  }

  if (qword_1008F9B38 != -1)
  {
    sub_10069CB80();
  }

  v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  [qword_1008F9B30 setFont:v16];

  v17 = [self stringForAchievement:achievementCopy locProvider:providerCopy formatForFriend:friendCopy];
  [qword_1008F9B30 setAttributedText:v17];

  [qword_1008F9B30 sizeThatFits:{width, 1.79769313e308}];
  [qword_1008F9B30 setFrame:{0.0, 0.0, width, v18}];
  [qword_1008F9B30 _lastLineBaselineFrameOriginY];
  [qword_1008F9B30 _firstBaselineOffsetFromTop];
  if (barCopy)
  {
    [self _shouldShowProgressBar:achievementCopy];
  }

  if (![self shouldShowCountForAchievement:achievementCopy] || friendCopy)
  {
    font = [qword_1008F9B30 font];
    [font _scaledValueForValue:12.0];
  }

  UICeilToViewScale();
  v21 = v20;

  return v21;
}

- (void)applyViewConstraints
{
  badgeView = [(CHAchievementsCellContentView *)self badgeView];
  leadingAnchor = [badgeView leadingAnchor];
  leadingAnchor2 = [(CHAchievementsCellContentView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v6 setActive:1];

  badgeView2 = [(CHAchievementsCellContentView *)self badgeView];
  topAnchor = [badgeView2 topAnchor];
  topAnchor2 = [(CHAchievementsCellContentView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v10 setActive:1];

  badgeView3 = [(CHAchievementsCellContentView *)self badgeView];
  trailingAnchor = [badgeView3 trailingAnchor];
  trailingAnchor2 = [(CHAchievementsCellContentView *)self trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v14 setActive:1];

  badgeView4 = [(CHAchievementsCellContentView *)self badgeView];
  heightAnchor = [badgeView4 heightAnchor];
  widthAnchor = [(UIImageView *)self->_badgeView widthAnchor];
  v18 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  [v18 setActive:1];

  [(CHAchievementsCellContentView *)self applyTextLeadingAndTrailingConstraints];
  [(CHAchievementsCellContentView *)self applyTextBaselineConstraints];
  earnedInstanceCountLabelView = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
  centerXAnchor = [earnedInstanceCountLabelView centerXAnchor];
  centerXAnchor2 = [(CHAchievementsCellContentView *)self centerXAnchor];
  v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v22 setActive:1];

  earnedInstanceCountLabelView2 = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
  topAnchor3 = [earnedInstanceCountLabelView2 topAnchor];
  label = [(CHAchievementsCellContentView *)self label];
  lastBaselineAnchor = [label lastBaselineAnchor];
  v27 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:6.0];
  [(CHAchievementsCellContentView *)self setCountLabelTopConstraint:v27];

  countLabelTopConstraint = [(CHAchievementsCellContentView *)self countLabelTopConstraint];
  [countLabelTopConstraint setActive:1];
}

- (void)applyTextLeadingAndTrailingConstraints
{
  v3 = 0.0;
  if ([(CHAchievementsCellContentView *)self appliesLargeCellInset])
  {
    [(CHAchievementsCellContentView *)self preferredWidth];
    v3 = v4 * 0.025;
  }

  label = [(CHAchievementsCellContentView *)self label];
  leadingAnchor = [label leadingAnchor];
  leadingAnchor2 = [(CHAchievementsCellContentView *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v3];
  [(CHAchievementsCellContentView *)self setLeadingTextConstraint:v8];

  label2 = [(CHAchievementsCellContentView *)self label];
  trailingAnchor = [label2 trailingAnchor];
  trailingAnchor2 = [(CHAchievementsCellContentView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v3];
  [(CHAchievementsCellContentView *)self setTrailingTextConstraint:v12];

  leadingTextConstraint = [(CHAchievementsCellContentView *)self leadingTextConstraint];
  v16[0] = leadingTextConstraint;
  trailingTextConstraint = [(CHAchievementsCellContentView *)self trailingTextConstraint];
  v16[1] = trailingTextConstraint;
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

  label = [(CHAchievementsCellContentView *)self label];
  firstBaselineAnchor = [label firstBaselineAnchor];
  badgeView = [(CHAchievementsCellContentView *)self badgeView];
  bottomAnchor = [badgeView bottomAnchor];
  label2 = [(CHAchievementsCellContentView *)self label];
  font = [label2 font];
  [font _scaledValueForValue:v3];
  v10 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [(CHAchievementsCellContentView *)self setLabelFirstBaselineConstraint:v10];

  labelFirstBaselineConstraint = [(CHAchievementsCellContentView *)self labelFirstBaselineConstraint];
  [labelFirstBaselineConstraint setActive:1];
}

- (void)applyProgressBarConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if (AAUIShouldUseNewTrophyCase() && [objc_opt_class() _shouldShowProgressBar:constraintsCopy])
  {
    progressBar = [(CHAchievementsCellContentView *)self progressBar];
    leadingAnchor = [progressBar leadingAnchor];
    leadingAnchor2 = [(CHAchievementsCellContentView *)self leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    [v7 setActive:1];

    progressBar2 = [(CHAchievementsCellContentView *)self progressBar];
    trailingAnchor = [progressBar2 trailingAnchor];
    trailingAnchor2 = [(CHAchievementsCellContentView *)self trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    [v11 setActive:1];

    v12 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v12 preferredContentSizeCategory];
    LODWORD(trailingAnchor2) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (trailingAnchor2)
    {
      v14 = 8.0;
    }

    else
    {
      v14 = 4.0;
    }

    progressBar3 = [(CHAchievementsCellContentView *)self progressBar];
    layer = [progressBar3 layer];
    [layer setCornerRadius:v14 * 0.5];

    progressBar4 = [(CHAchievementsCellContentView *)self progressBar];
    heightAnchor = [progressBar4 heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:v14];
    [v19 setActive:1];

    progressBar5 = [(CHAchievementsCellContentView *)self progressBar];
    bottomAnchor = [progressBar5 bottomAnchor];
    bottomAnchor2 = [(CHAchievementsCellContentView *)self bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
    [v23 setActive:1];
  }
}

- (void)fontSizeChanged:(id)changed
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  label = [(CHAchievementsCellContentView *)self label];
  [label setFont:v4];

  labelFirstBaselineConstraint = [(CHAchievementsCellContentView *)self labelFirstBaselineConstraint];
  [labelFirstBaselineConstraint setActive:0];

  [(CHAchievementsCellContentView *)self applyTextBaselineConstraints];
}

- (void)setAppliesLargeCellInset:(BOOL)inset
{
  if (self->_appliesLargeCellInset != inset)
  {
    self->_appliesLargeCellInset = inset;
    leadingTextConstraint = [(CHAchievementsCellContentView *)self leadingTextConstraint];
    [leadingTextConstraint setActive:0];

    trailingTextConstraint = [(CHAchievementsCellContentView *)self trailingTextConstraint];
    [trailingTextConstraint setActive:0];

    [(CHAchievementsCellContentView *)self applyTextLeadingAndTrailingConstraints];

    [(CHAchievementsCellContentView *)self fontSizeChanged:0];
  }
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v14.receiver = self;
  v14.super_class = CHAchievementsCellContentView;
  layerCopy = layer;
  [(CHAchievementsCellContentView *)&v14 layoutSublayersOfLayer:layerCopy];
  [layerCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  darkeningLayer = [(CHAchievementsCellContentView *)self darkeningLayer];
  [darkeningLayer setFrame:{v6, v8, v10, v12}];
}

- (void)setBadgeHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_badgeHidden = hidden;
  badgeView = [(CHAchievementsCellContentView *)self badgeView];
  [badgeView setHidden:hiddenCopy];
}

- (CGRect)badgeRect
{
  badgeView = [(CHAchievementsCellContentView *)self badgeView];
  [badgeView frame];
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

- (void)setEarnedInstanceCount:(int64_t)count
{
  earnedInstanceCountLabelView = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
  earnedInstanceCountLabelView2 = earnedInstanceCountLabelView;
  if (count < 1)
  {
    [earnedInstanceCountLabelView setHidden:1];
  }

  else
  {
    [earnedInstanceCountLabelView setHidden:0];

    earnedInstanceCountLabelView2 = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
    [earnedInstanceCountLabelView2 setIntegerValue:count];
  }
}

- (void)configureWithAchievement:(id)achievement badgeImageFactory:(id)factory locProvider:(id)provider shouldShowProgressBar:(BOOL)bar formatForFriend:(BOOL)friend
{
  friendCopy = friend;
  barCopy = bar;
  achievementCopy = achievement;
  factoryCopy = factory;
  providerCopy = provider;
  if (achievementCopy)
  {
    [(CHAchievementsCellContentView *)self setHidden:0];
    template = [achievementCopy template];
    uniqueName = [template uniqueName];
    [(CHAchievementsCellContentView *)self setTemplateUniqueName:uniqueName];

    v17 = [objc_opt_class() shouldShowCountForAchievement:achievementCopy];
    earnedInstanceCount = 0;
    if (v17 && !friendCopy)
    {
      earnedInstanceCount = [achievementCopy earnedInstanceCount];
    }

    [(CHAchievementsCellContentView *)self setEarnedInstanceCount:earnedInstanceCount];
    template2 = [achievementCopy template];
    sourceName = [template2 sourceName];
    v21 = [sourceName isEqualToString:kASCompetitionsAchievementTemplateSourceIdentifier];

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
    if ([factoryCopy hasCachedThumbnailImageForAchievement:achievementCopy size:{v24, v25}])
    {
      v27 = [factoryCopy thumbnailImageForAchievement:achievementCopy size:{v24, v26}];
      badgeView = [(CHAchievementsCellContentView *)self badgeView];
      [badgeView setImage:v27];
    }

    else
    {
      v29 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011F890;
      block[3] = &unk_10083CD58;
      v39 = factoryCopy;
      v42 = v24;
      v43 = v26;
      v40 = achievementCopy;
      selfCopy = self;
      dispatch_async(v29, block);
    }

    v30 = [objc_opt_class() stringForAchievement:achievementCopy locProvider:providerCopy formatForFriend:friendCopy];
    label = [(CHAchievementsCellContentView *)self label];
    [label setAttributedText:v30];

    if (AAUIShouldUseNewTrophyCase() && barCopy)
    {
      [(CHAchievementsCellContentView *)self _populateProgressBar:achievementCopy];
      [(CHAchievementsCellContentView *)self applyProgressBarConstraints:achievementCopy];
    }

    templateUniqueName = [(CHAchievementsCellContentView *)self templateUniqueName];

    if (templateUniqueName)
    {
      unearned = [achievementCopy unearned];
      v34 = &off_10083D408;
      if (!unearned)
      {
        v34 = &off_10083D400;
      }

      v35 = *v34;
      templateUniqueName2 = [(CHAchievementsCellContentView *)self templateUniqueName];
      v37 = [NSString stringWithFormat:@"%@_%@", templateUniqueName2, v35];
      [(CHAchievementsCellContentView *)self setAccessibilityIdentifier:v37];
    }

    [(CHAchievementsCellContentView *)self annotateView:self->_badgeView withAchievement:achievementCopy];
  }

  else
  {
    [(CHAchievementsCellContentView *)self setHidden:1];
  }
}

+ (BOOL)_shouldShowProgressBar:(id)bar
{
  barCopy = bar;
  if (AAUIShouldUseNewTrophyCase() && [barCopy unearned])
  {
    goal = [barCopy goal];
    if (goal)
    {
      progress = [barCopy progress];
      v6 = progress != 0;
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

- (void)_populateProgressBar:(id)bar
{
  barCopy = bar;
  if ([objc_opt_class() _shouldShowProgressBar:barCopy])
  {
    template = [barCopy template];
    canonicalUnit = [template canonicalUnit];

    goal = [barCopy goal];
    [goal doubleValueForUnit:canonicalUnit];
    v8 = v7;

    progress = [barCopy progress];
    [progress doubleValueForUnit:canonicalUnit];
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

- (void)setEarnedInstanceCountLabelBackgroundColor:(id)color
{
  objc_storeStrong(&self->_earnedInstanceCountLabelBackgroundColor, color);
  colorCopy = color;
  earnedInstanceCountLabelBackgroundColor = self->_earnedInstanceCountLabelBackgroundColor;
  earnedInstanceCountLabelView = [(CHAchievementsCellContentView *)self earnedInstanceCountLabelView];
  [earnedInstanceCountLabelView setPillBackgroundColor:earnedInstanceCountLabelBackgroundColor];
}

- (void)annotateView:(id)view withAchievement:(id)achievement
{
  viewCopy = view;
  achievementCopy = achievement;
  selfCopy = self;
  sub_100629168(viewCopy, achievement);
}

@end