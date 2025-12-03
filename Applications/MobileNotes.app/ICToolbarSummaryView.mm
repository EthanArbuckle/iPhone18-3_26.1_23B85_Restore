@interface ICToolbarSummaryView
+ (UIFont)subtitleFont;
+ (id)buttonTitleTextAttributesTransformerWithTextStyle:(id)style;
+ (id)iconColorForType:(unint64_t)type;
+ (id)lockNowButtonConfigurationForType:(unint64_t)type;
+ (id)primaryLabelFontForType:(unint64_t)type;
+ (id)secondaryLabelFontForType:(unint64_t)type;
+ (id)syncActionButtonConfigurationWithTitle:(id)title type:(unint64_t)type;
- (CGPoint)accessibilityActivationPoint;
- (ICToolbarSummaryView)initWithFrame:(CGRect)frame type:(unint64_t)type;
- (ICToolbarSummaryViewDelegate)delegate;
- (NSArray)summaryComponents;
- (NSString)summary;
- (NSString)summaryAccessibilityLabel;
- (UIActivityIndicatorView)activityIndicatorView;
- (UIButton)lockNowButton;
- (UIButton)syncActionButton;
- (UIImageView)syncStatusIcon;
- (UILabel)summaryLabel;
- (UILabel)syncSubtitleLabel;
- (UILabel)syncTitleLabel;
- (UIStackView)rootStackView;
- (UIStackView)subheadingStackView;
- (UIView)spacerView;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)buttonElement;
- (void)checkSubheadingStackViewLayout;
- (void)dataSourceDataUpdateDidRender:(id)render;
- (void)dealloc;
- (void)enumerateAccessibleSubviewsWithBlock:(id)block;
- (void)layoutSubviews;
- (void)progressIndicatorTrackerStartAnimation;
- (void)progressIndicatorTrackerStopAnimation;
- (void)setAvailableWidth:(double)width;
- (void)update;
- (void)updateConstraints;
- (void)updateSyncActivityIndicator;
@end

@implementation ICToolbarSummaryView

- (ICToolbarSummaryView)initWithFrame:(CGRect)frame type:(unint64_t)type
{
  v45.receiver = self;
  v45.super_class = ICToolbarSummaryView;
  v5 = [(ICToolbarSummaryView *)&v45 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_lockNowHidden = 1;
    v5->_type = type;
    v7 = [[ICICloudProgressIndicatorTracker alloc] initWithDelegate:v5];
    progressIndicatorTracker = v6->_progressIndicatorTracker;
    v6->_progressIndicatorTracker = &v7->super;

    rootStackView = [(ICToolbarSummaryView *)v6 rootStackView];
    [(ICToolbarSummaryView *)v6 addSubview:rootStackView];

    if (_UISolariumEnabled())
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 0.0;
    }

    rootStackView2 = [(ICToolbarSummaryView *)v6 rootStackView];
    topAnchor = [rootStackView2 topAnchor];
    topAnchor2 = [(ICToolbarSummaryView *)v6 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v10];
    topConstraint = v6->_topConstraint;
    v6->_topConstraint = v11;

    v46[0] = v11;
    rootStackView3 = [(ICToolbarSummaryView *)v6 rootStackView];
    bottomAnchor = [rootStackView3 bottomAnchor];
    bottomAnchor2 = [(ICToolbarSummaryView *)v6 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v10];
    bottomConstraint = v6->_bottomConstraint;
    v6->_bottomConstraint = v13;

    v46[1] = v13;
    rootStackView4 = [(ICToolbarSummaryView *)v6 rootStackView];
    leadingAnchor = [rootStackView4 leadingAnchor];
    safeAreaLayoutGuide = [(ICToolbarSummaryView *)v6 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v46[2] = v34;
    rootStackView5 = [(ICToolbarSummaryView *)v6 rootStackView];
    trailingAnchor = [rootStackView5 trailingAnchor];
    safeAreaLayoutGuide2 = [(ICToolbarSummaryView *)v6 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v46[3] = v29;
    activityIndicatorView = [(ICToolbarSummaryView *)v6 activityIndicatorView];
    heightAnchor = [activityIndicatorView heightAnchor];
    syncTitleLabel = [(ICToolbarSummaryView *)v6 syncTitleLabel];
    heightAnchor2 = [syncTitleLabel heightAnchor];
    v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v46[4] = v17;
    activityIndicatorView2 = [(ICToolbarSummaryView *)v6 activityIndicatorView];
    centerYAnchor = [activityIndicatorView2 centerYAnchor];
    rootStackView6 = [(ICToolbarSummaryView *)v6 rootStackView];
    centerYAnchor2 = [rootStackView6 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[5] = v22;
    v23 = [NSArray arrayWithObjects:v46 count:6];
    [NSLayoutConstraint activateConstraints:v23];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v6 selector:"dataSourceDataUpdateDidRender:" name:ICDataSourceDataUpdateDidRenderNotification object:0];

    v25 = objc_alloc_init(UILargeContentViewerInteraction);
    [(ICToolbarSummaryView *)v6 addInteraction:v25];
  }

  return v6;
}

- (void)dealloc
{
  progressIndicatorTracker = [(ICToolbarSummaryView *)self progressIndicatorTracker];
  [progressIndicatorTracker invalidate];

  v4.receiver = self;
  v4.super_class = ICToolbarSummaryView;
  [(ICToolbarSummaryView *)&v4 dealloc];
}

- (void)setAvailableWidth:(double)width
{
  if (self->_availableWidth != width)
  {
    self->_availableWidth = width;
    [(ICToolbarSummaryView *)self setNeedsUpdateConstraints];

    [(ICToolbarSummaryView *)self checkSubheadingStackViewLayout];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICToolbarSummaryView;
  [(ICToolbarSummaryView *)&v3 layoutSubviews];
  [(ICToolbarSummaryView *)self checkSubheadingStackViewLayout];
}

- (void)updateConstraints
{
  v9.receiver = self;
  v9.super_class = ICToolbarSummaryView;
  [(ICToolbarSummaryView *)&v9 updateConstraints];
  isShowingAsFooter = [(ICToolbarSummaryView *)self isShowingAsFooter];
  topConstraint = [(ICToolbarSummaryView *)self topConstraint];
  v5 = topConstraint;
  v6 = 40.0;
  if (isShowingAsFooter)
  {
    v7 = -40.0;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  [topConstraint setConstant:v6];

  bottomConstraint = [(ICToolbarSummaryView *)self bottomConstraint];
  [bottomConstraint setConstant:v7];
}

+ (id)primaryLabelFontForType:(unint64_t)type
{
  if (type == 1)
  {
    v3 = &UIFontTextStyleHeadline;
  }

  else if (type == 3 || type == 2)
  {
    v3 = &UIFontTextStyleSubheadline;
  }

  else
  {
    v4 = _UISolariumEnabled();
    v3 = &UIFontTextStyleHeadline;
    if (!v4)
    {
      v3 = &UIFontTextStyleCaption2;
    }
  }

  v5 = *v3;
  v6 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryMedium];
  v7 = [UIFont preferredFontForTextStyle:v5 compatibleWithTraitCollection:v6];
  ic_fontWithSingleLineA = [v7 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (UIFont)subtitleFont
{
  v2 = [UIFont ic_preferredFontForStyle:UIFontTextStyleSubheadline withFontWeight:UIContentSizeCategoryLarge maxContentSizeCategory:UIFontWeightRegular];
  ic_fontWithSingleLineA = [v2 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (id)secondaryLabelFontForType:(unint64_t)type
{
  if (type - 2 >= 2)
  {
    if (type == 1)
    {
      v4 = &UIFontTextStyleSubheadline;
    }

    else
    {
      v5 = _UISolariumEnabled();
      v4 = &UIFontTextStyleSubheadline;
      if (!v5)
      {
        v4 = &UIFontTextStyleCaption2;
      }
    }

    v6 = *v4;
    v7 = [UIFont preferredFontForTextStyle:v6];
    ic_fontWithSingleLineA = [v7 ic_fontWithSingleLineA];
  }

  else
  {
    ic_fontWithSingleLineA = [self subtitleFont];
  }

  return ic_fontWithSingleLineA;
}

+ (id)buttonTitleTextAttributesTransformerWithTextStyle:(id)style
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B6734;
  v7[3] = &unk_100648378;
  styleCopy = style;
  selfCopy = self;
  v4 = styleCopy;
  v5 = objc_retainBlock(v7);

  return v5;
}

- (UILabel)summaryLabel
{
  summaryLabel = self->_summaryLabel;
  if (!summaryLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_summaryLabel;
    self->_summaryLabel = v4;

    [(UILabel *)self->_summaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_summaryLabel setAdjustsFontForContentSizeCategory:1];
    summaryComponents = [(ICToolbarSummaryView *)self summaryComponents];
    v7 = [summaryComponents count];

    if (v7 >= 2)
    {
      [(UILabel *)self->_summaryLabel setMaximumContentSizeCategory:UIContentSizeCategoryMedium];
    }

    if ([(ICToolbarSummaryView *)self isShowingAsSubtitle])
    {
      +[UIColor secondaryLabelColor];
    }

    else
    {
      +[UIColor labelColor];
    }
    v8 = ;
    [(UILabel *)self->_summaryLabel setTextColor:v8];

    [(UILabel *)self->_summaryLabel setShowsLargeContentViewer:1];
    [(UILabel *)self->_summaryLabel setAccessibilityIdentifier:@"note count label"];
    LODWORD(v9) = 1148846080;
    [(UILabel *)self->_summaryLabel setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [(UILabel *)self->_summaryLabel setContentCompressionResistancePriority:0 forAxis:v10];
    summaryLabel = self->_summaryLabel;
  }

  return summaryLabel;
}

+ (id)iconColorForType:(unint64_t)type
{
  if (_UISolariumEnabled())
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor ICTintColor];
  }
  v3 = ;

  return v3;
}

- (UIImageView)syncStatusIcon
{
  if (_UISolariumEnabled())
  {
    syncStatusIcon = self->_syncStatusIcon;
    if (!syncStatusIcon)
    {
      v4 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v5 = self->_syncStatusIcon;
      self->_syncStatusIcon = v4;

      [(UIImageView *)self->_syncStatusIcon setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v6) = 1148846080;
      [(UIImageView *)self->_syncStatusIcon setContentCompressionResistancePriority:0 forAxis:v6];
      LODWORD(v7) = 1148846080;
      [(UIImageView *)self->_syncStatusIcon setContentHuggingPriority:0 forAxis:v7];
      [(UIImageView *)self->_syncStatusIcon setMaximumContentSizeCategory:UIContentSizeCategoryMedium];
      v8 = [objc_opt_class() iconColorForType:{-[ICToolbarSummaryView type](self, "type")}];
      [(UIImageView *)self->_syncStatusIcon setTintColor:v8];

      [(UIImageView *)self->_syncStatusIcon setShowsLargeContentViewer:1];
      [(UIImageView *)self->_syncStatusIcon setAccessibilityIdentifier:@"sync status icon"];
      [(UIImageView *)self->_syncStatusIcon setHidden:1];
      syncStatusIcon = self->_syncStatusIcon;
    }

    v9 = syncStatusIcon;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UILabel)syncTitleLabel
{
  syncTitleLabel = self->_syncTitleLabel;
  if (!syncTitleLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_syncTitleLabel;
    self->_syncTitleLabel = v4;

    [(UILabel *)self->_syncTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_syncTitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_syncTitleLabel setMaximumContentSizeCategory:UIContentSizeCategoryMedium];
    v6 = +[UIColor labelColor];
    [(UILabel *)self->_syncTitleLabel setTextColor:v6];

    [(UILabel *)self->_syncTitleLabel setShowsLargeContentViewer:1];
    [(UILabel *)self->_syncTitleLabel setAccessibilityIdentifier:@"sync title label"];
    [(UILabel *)self->_syncTitleLabel setHidden:1];
    syncTitleLabel = self->_syncTitleLabel;
  }

  return syncTitleLabel;
}

- (UILabel)syncSubtitleLabel
{
  syncSubtitleLabel = self->_syncSubtitleLabel;
  if (!syncSubtitleLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_syncSubtitleLabel;
    self->_syncSubtitleLabel = v4;

    [(UILabel *)self->_syncSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_syncSubtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_syncSubtitleLabel setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
    v6 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_syncSubtitleLabel setTextColor:v6];

    [(UILabel *)self->_syncSubtitleLabel setTextAlignment:[(ICToolbarSummaryView *)self isShowingAsSubtitle]^ 1];
    [(UILabel *)self->_syncSubtitleLabel setShowsLargeContentViewer:1];
    [(UILabel *)self->_syncSubtitleLabel setAccessibilityIdentifier:@"sync subtitle label"];
    [(UILabel *)self->_syncSubtitleLabel setLineBreakMode:4];
    [(UILabel *)self->_syncSubtitleLabel setAdjustsFontSizeToFitWidth:0];
    LODWORD(v7) = 1132068864;
    [(UILabel *)self->_syncSubtitleLabel setContentCompressionResistancePriority:0 forAxis:v7];
    syncSubtitleLabel = self->_syncSubtitleLabel;
  }

  return syncSubtitleLabel;
}

- (UIButton)syncActionButton
{
  syncActionButton = self->_syncActionButton;
  if (!syncActionButton)
  {
    objc_initWeak(&location, self);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000B6F30;
    v15 = &unk_100647A30;
    objc_copyWeak(&v16, &location);
    v4 = [UIAction actionWithHandler:&v12];
    v5 = [objc_opt_class() syncActionButtonConfigurationWithTitle:&stru_100661CF0 type:{-[ICToolbarSummaryView type](self, "type", v12, v13, v14, v15)}];
    v6 = [UIButton buttonWithConfiguration:v5 primaryAction:v4];
    v7 = self->_syncActionButton;
    self->_syncActionButton = v6;

    [(UIButton *)self->_syncActionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(UIButton *)self->_syncActionButton setContentCompressionResistancePriority:0 forAxis:v8];
    titleLabel = [(UIButton *)self->_syncActionButton titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    titleLabel2 = [(UIButton *)self->_syncActionButton titleLabel];
    [titleLabel2 setMaximumContentSizeCategory:UIContentSizeCategoryMedium];

    [(UIButton *)self->_syncActionButton setShowsLargeContentViewer:1];
    [(UIButton *)self->_syncActionButton setHidden:1];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    syncActionButton = self->_syncActionButton;
  }

  return syncActionButton;
}

+ (id)syncActionButtonConfigurationWithTitle:(id)title type:(unint64_t)type
{
  titleCopy = title;
  v6 = _UISolariumEnabled();
  v7 = &UIFontTextStyleSubheadline;
  if (!v6)
  {
    v7 = &UIFontTextStyleCaption2;
  }

  v8 = *v7;
  v9 = +[UIButtonConfiguration borderlessButtonConfiguration];
  [v9 setTitle:titleCopy];

  v10 = [self buttonTitleTextAttributesTransformerWithTextStyle:v8];

  [v9 setTitleTextAttributesTransformer:v10];
  [v9 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  if (_UISolariumEnabled())
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  [v9 setButtonSize:v11];
  if (v6)
  {
    [v9 setTitleAlignment:1];
  }

  return v9;
}

- (UIStackView)subheadingStackView
{
  subheadingStackView = self->_subheadingStackView;
  if (!subheadingStackView)
  {
    if (_UISolariumEnabled())
    {
      syncStatusIcon = [(ICToolbarSummaryView *)self syncStatusIcon];
      v13[0] = syncStatusIcon;
      syncSubtitleLabel = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      v13[1] = syncSubtitleLabel;
      syncActionButton = [(ICToolbarSummaryView *)self syncActionButton];
      v13[2] = syncActionButton;
      v7 = [NSArray arrayWithObjects:v13 count:3];
    }

    else
    {
      syncStatusIcon = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      syncSubtitleLabel = [(ICToolbarSummaryView *)self syncActionButton];
      v12[1] = syncSubtitleLabel;
      v7 = [NSArray arrayWithObjects:v12 count:2];
    }

    v8 = [[UIStackView alloc] initWithArrangedSubviews:v7];
    v9 = self->_subheadingStackView;
    self->_subheadingStackView = v8;

    [(UIStackView *)self->_subheadingStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_subheadingStackView setAxis:0];
    [(UIStackView *)self->_subheadingStackView setDistribution:0];
    if ([(ICToolbarSummaryView *)self type]== 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    [(UIStackView *)self->_subheadingStackView setAlignment:v10];
    [(UIStackView *)self->_subheadingStackView setSpacing:0.0];
    [(UIStackView *)self->_subheadingStackView setHidden:1];

    subheadingStackView = self->_subheadingStackView;
  }

  return subheadingStackView;
}

- (UIView)spacerView
{
  spacerView = self->_spacerView;
  if (!spacerView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_spacerView;
    self->_spacerView = v4;

    [(UIView *)self->_spacerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1.0;
    [(UIView *)self->_spacerView setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1.0;
    [(UIView *)self->_spacerView setContentCompressionResistancePriority:0 forAxis:v7];
    spacerView = self->_spacerView;
  }

  return spacerView;
}

- (UIButton)lockNowButton
{
  lockNowButton = self->_lockNowButton;
  if (!lockNowButton)
  {
    objc_initWeak(&location, self);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000B74E4;
    v16 = &unk_100647A30;
    objc_copyWeak(&v17, &location);
    v4 = [UIAction actionWithHandler:&v13];
    v5 = [objc_opt_class() lockNowButtonConfigurationForType:{-[ICToolbarSummaryView type](self, "type", v13, v14, v15, v16)}];
    v6 = [UIButton buttonWithConfiguration:v5 primaryAction:v4];
    v7 = self->_lockNowButton;
    self->_lockNowButton = v6;

    [(UIButton *)self->_lockNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(UIButton *)self->_lockNowButton titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    titleLabel2 = [(UIButton *)self->_lockNowButton titleLabel];
    [titleLabel2 setMaximumContentSizeCategory:UIContentSizeCategoryMedium];

    [(UIButton *)self->_lockNowButton setShowsLargeContentViewer:1];
    [(UIButton *)self->_lockNowButton setHidden:1];
    LODWORD(v10) = 1148846080;
    [(UIButton *)self->_lockNowButton setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(UIButton *)self->_lockNowButton setContentHuggingPriority:0 forAxis:v11];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    lockNowButton = self->_lockNowButton;
  }

  return lockNowButton;
}

+ (id)lockNowButtonConfigurationForType:(unint64_t)type
{
  v5 = type - 1;
  if (type - 1 > 2)
  {
    v7 = 0;
    v6 = &UIFontTextStyleCaption2;
    v8 = 2;
  }

  else
  {
    v6 = *(&off_1006483C0 + v5);
    v7 = qword_100531B90[v5];
    v8 = qword_100531BA8[v5];
  }

  v9 = *v6;
  v10 = +[UIButtonConfiguration borderlessButtonConfiguration];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Lock Now" value:&stru_100661CF0 table:0];
  [v10 setTitle:v12];

  v13 = [self buttonTitleTextAttributesTransformerWithTextStyle:v9];
  [v10 setTitleTextAttributesTransformer:v13];

  v14 = [UIImage systemImageNamed:@"lock.open.fill"];
  [v10 setImage:v14];

  v15 = [self primaryLabelFontForType:type];
  v16 = [UIImageSymbolConfiguration configurationWithFont:v15 scale:1];
  [v10 setPreferredSymbolConfigurationForImage:v16];

  [v10 setImagePlacement:8];
  [v10 setImagePadding:2.0];
  [v10 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  [v10 setButtonSize:v8];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Double tap to lock all notes." value:&stru_100661CF0 table:0];
  [v10 setAccessibilityHint:v18];

  [v10 setTitleAlignment:v7];
  [v10 setTitleLineBreakMode:4];

  return v10;
}

- (UIStackView)rootStackView
{
  rootStackView = self->_rootStackView;
  if (!rootStackView)
  {
    if (_UISolariumEnabled() && [(ICToolbarSummaryView *)self type]== 3)
    {
      activityIndicatorView = [(ICToolbarSummaryView *)self activityIndicatorView];
      v15[0] = activityIndicatorView;
      summaryLabel = [(ICToolbarSummaryView *)self summaryLabel];
      v15[1] = summaryLabel;
      syncTitleLabel = [(ICToolbarSummaryView *)self syncTitleLabel];
      v15[2] = syncTitleLabel;
      subheadingStackView = [(ICToolbarSummaryView *)self subheadingStackView];
      v15[3] = subheadingStackView;
      lockNowButton = [(ICToolbarSummaryView *)self lockNowButton];
      v15[4] = lockNowButton;
      v9 = [NSArray arrayWithObjects:v15 count:5];
    }

    else
    {
      activityIndicatorView = [(ICToolbarSummaryView *)self activityIndicatorView];
      summaryLabel = [(ICToolbarSummaryView *)self summaryLabel];
      v14[1] = summaryLabel;
      syncTitleLabel = [(ICToolbarSummaryView *)self syncTitleLabel];
      v14[2] = syncTitleLabel;
      subheadingStackView = [(ICToolbarSummaryView *)self subheadingStackView];
      v14[3] = subheadingStackView;
      lockNowButton = [(ICToolbarSummaryView *)self lockNowButton];
      v14[4] = lockNowButton;
      spacerView = [(ICToolbarSummaryView *)self spacerView];
      v14[5] = spacerView;
      v9 = [NSArray arrayWithObjects:v14 count:6];
    }

    v11 = [[UIStackView alloc] initWithArrangedSubviews:v9];
    v12 = self->_rootStackView;
    self->_rootStackView = v11;

    [(UIStackView *)self->_rootStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_rootStackView setAxis:[(ICToolbarSummaryView *)self isShowingAsSubtitle]^ 1];
    [(UIStackView *)self->_rootStackView setDistribution:0];
    [(UIStackView *)self->_rootStackView setAlignment:3];
    [(UIStackView *)self->_rootStackView setSpacing:0.0];

    rootStackView = self->_rootStackView;
  }

  return rootStackView;
}

- (UIActivityIndicatorView)activityIndicatorView
{
  activityIndicatorView = self->_activityIndicatorView;
  if (!activityIndicatorView)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:8];
    v5 = self->_activityIndicatorView;
    self->_activityIndicatorView = v4;

    v6 = +[UIColor secondaryLabelColor];
    [(UIActivityIndicatorView *)self->_activityIndicatorView setColor:v6];

    [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    activityIndicatorView = self->_activityIndicatorView;
  }

  return activityIndicatorView;
}

- (void)checkSubheadingStackViewLayout
{
  subheadingStackView = [(ICToolbarSummaryView *)self subheadingStackView];
  if ([subheadingStackView axis])
  {
LABEL_2:

    return;
  }

  [(ICToolbarSummaryView *)self availableWidth];
  v4 = v3;
  [(ICToolbarSummaryView *)self bounds];
  v6 = v5;

  if (v4 == v6)
  {
    return;
  }

  syncStatusIcon = [(ICToolbarSummaryView *)self syncStatusIcon];
  isHidden = [syncStatusIcon isHidden];

  v9 = 0.0;
  if ((isHidden & 1) == 0)
  {
    syncStatusIcon2 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [syncStatusIcon2 intrinsicContentSize];
    v12 = v11 + 0.0;

    v9 = v12 + 6.0;
  }

  syncSubtitleLabel = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [syncSubtitleLabel intrinsicContentSize];
  v15 = v9 + v14;

  syncActionButton = [(ICToolbarSummaryView *)self syncActionButton];
  [syncActionButton intrinsicContentSize];
  v18 = v15 + v17;

  [(ICToolbarSummaryView *)self availableWidth];
  v20 = v19;
  if ((+[UIDevice ic_isiPad]& 1) != 0 || v20 <= 0.0)
  {
    [(ICToolbarSummaryView *)self bounds];
    v20 = v21;
  }

  if (v18 > v20)
  {
    [(ICToolbarSummaryView *)self setShouldHideSyncActionButtonDueToCompressedSpace:1];
    if ((isHidden & 1) == 0)
    {
      syncStatusIcon3 = [(ICToolbarSummaryView *)self syncStatusIcon];
      [syncStatusIcon3 intrinsicContentSize];
      v20 = v20 - (v23 + 6.0);
    }

    subheadingStackView = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    [subheadingStackView setPreferredMaxLayoutWidth:v20];
    goto LABEL_2;
  }

  [(ICToolbarSummaryView *)self setShouldHideSyncActionButtonDueToCompressedSpace:0];
}

- (NSArray)summaryComponents
{
  if ([(ICToolbarSummaryView *)self countsHidden])
  {
    v3 = &__NSArray0__struct;
  }

  else
  {
    v4 = +[NSMutableArray array];
    if ([(ICToolbarSummaryView *)self totalInvitationsCount])
    {
      v5 = +[NSBundle mainBundle];
      v6 = [v5 localizedStringForKey:@"%lu Invitations" value:&stru_100661CF0 table:0];
      v7 = [NSString localizedStringWithFormat:v6, [(ICToolbarSummaryView *)self totalInvitationsCount]];

      [v4 addObject:v7];
    }

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"%lu Notes" value:&stru_100661CF0 table:0];
    v10 = [NSString localizedStringWithFormat:v9, [(ICToolbarSummaryView *)self totalNoteCount]];

    [v4 addObject:v10];
    if ([(ICToolbarSummaryView *)self totalFolderCount])
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"%lu Folders" value:&stru_100661CF0 table:0];
      v13 = [NSString localizedStringWithFormat:v12, [(ICToolbarSummaryView *)self totalFolderCount]];

      [v4 addObject:v13];
    }

    v3 = [v4 copy];
  }

  return v3;
}

- (NSString)summary
{
  delegate = [(ICToolbarSummaryView *)self delegate];
  if ([delegate isSearchActiveWithQuery])
  {
    searchSummaryString = [(ICToolbarSummaryView *)self searchSummaryString];

    if (searchSummaryString)
    {
      searchSummaryString2 = [(ICToolbarSummaryView *)self searchSummaryString];
      goto LABEL_6;
    }
  }

  else
  {
  }

  summaryComponents = [(ICToolbarSummaryView *)self summaryComponents];
  searchSummaryString2 = [summaryComponents componentsJoinedByString:@" · "];

LABEL_6:

  return searchSummaryString2;
}

- (NSString)summaryAccessibilityLabel
{
  delegate = [(ICToolbarSummaryView *)self delegate];
  if ([delegate isSearchActiveWithQuery])
  {
    searchSummaryString = [(ICToolbarSummaryView *)self searchSummaryString];

    if (searchSummaryString)
    {
      searchSummaryString2 = [(ICToolbarSummaryView *)self searchSummaryString];
      goto LABEL_6;
    }
  }

  else
  {
  }

  summaryComponents = [(ICToolbarSummaryView *)self summaryComponents];
  searchSummaryString2 = [summaryComponents componentsJoinedByString:{@", "}];

LABEL_6:

  return searchSummaryString2;
}

- (void)update
{
  [(ICToolbarSummaryView *)self setNeedsUpdateConstraints];
  [(ICToolbarSummaryView *)self updateConstraintsIfNeeded];
  v3 = _UISolariumEnabled();
  type = [(ICToolbarSummaryView *)self type];
  type2 = [(ICToolbarSummaryView *)self type];
  v6 = type2 == 3;
  v7 = +[UIDevice ic_isiPad];
  summaryLabel = [(ICToolbarSummaryView *)self summaryLabel];
  [summaryLabel setHidden:0];

  syncSubtitleLabel = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [syncSubtitleLabel setHidden:0];

  v10 = [objc_opt_class() primaryLabelFontForType:{-[ICToolbarSummaryView type](self, "type")}];
  summaryLabel2 = [(ICToolbarSummaryView *)self summaryLabel];
  [summaryLabel2 setFont:v10];

  delegate = [(ICToolbarSummaryView *)self delegate];
  LOBYTE(summaryLabel2) = [delegate isSearchActive];

  if ((summaryLabel2 & 1) == 0)
  {
    [(ICToolbarSummaryView *)self setSearchSummaryString:0];
  }

  if (![(ICToolbarSummaryView *)self isLockNowHidden]|| ([(ICToolbarSummaryView *)self syncMessage], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    rootStackView = [(ICToolbarSummaryView *)self rootStackView];
    summaryLabel3 = [(ICToolbarSummaryView *)self summaryLabel];
    [rootStackView setCustomSpacing:summaryLabel3 afterView:0.0];

    rootStackView2 = [(ICToolbarSummaryView *)self rootStackView];
    activityIndicatorView = [(ICToolbarSummaryView *)self activityIndicatorView];
    [rootStackView2 setCustomSpacing:activityIndicatorView afterView:4.0];

    summary = [(ICToolbarSummaryView *)self summary];
    v36 = summary;
    if (v3 && [summary length] && !-[ICToolbarSummaryView isLockNowHidden](self, "isLockNowHidden"))
    {
      v52 = [NSString stringWithFormat:@"%@ · ", v36];
      summaryLabel4 = [(ICToolbarSummaryView *)self summaryLabel];
      [summaryLabel4 setText:v52];

      summaryLabel5 = [(ICToolbarSummaryView *)self summaryLabel];
      [summaryLabel5 setLargeContentTitle:v36];
    }

    else
    {
      summaryLabel5 = [(ICToolbarSummaryView *)self summaryLabel];
      [summaryLabel5 setText:v36];
      v6 = 0;
    }

    summaryAccessibilityLabel = [(ICToolbarSummaryView *)self summaryAccessibilityLabel];
    summaryLabel6 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel6 setAccessibilityLabel:summaryAccessibilityLabel];

    activityIndicatorView2 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [activityIndicatorView2 setHidden:0];

    syncTitleLabel = [(ICToolbarSummaryView *)self syncTitleLabel];
    [syncTitleLabel setHidden:1];

    subheadingStackView = [(ICToolbarSummaryView *)self subheadingStackView];
    [subheadingStackView setHidden:1];

    summaryLabel7 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel7 setHidden:v6];

    v44 = [objc_opt_class() lockNowButtonConfigurationForType:{-[ICToolbarSummaryView type](self, "type")}];
    lockNowButton = [(ICToolbarSummaryView *)self lockNowButton];
    [lockNowButton setConfiguration:v44];

    lockNowButton2 = [(ICToolbarSummaryView *)self lockNowButton];
    titleLabel = [lockNowButton2 titleLabel];
    [titleLabel setNumberOfLines:1];

    isLockNowHidden = [(ICToolbarSummaryView *)self isLockNowHidden];
    lockNowButton3 = [(ICToolbarSummaryView *)self lockNowButton];
    [lockNowButton3 setHidden:isLockNowHidden];
    goto LABEL_49;
  }

  if (type == 1)
  {
    rootStackView3 = [(ICToolbarSummaryView *)self rootStackView];
    summaryLabel8 = [(ICToolbarSummaryView *)self summaryLabel];
    [rootStackView3 setCustomSpacing:summaryLabel8 afterView:4.0];

    rootStackView4 = [(ICToolbarSummaryView *)self rootStackView];
    activityIndicatorView3 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [rootStackView4 setCustomSpacing:activityIndicatorView3 afterView:0.0];

    summary2 = [(ICToolbarSummaryView *)self summary];
    summaryLabel9 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel9 setText:summary2];

    summaryAccessibilityLabel2 = [(ICToolbarSummaryView *)self summaryAccessibilityLabel];
    summaryLabel10 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel10 setAccessibilityLabel:summaryAccessibilityLabel2];

    summaryLabel11 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel11 setHidden:0];

    v23 = [objc_opt_class() secondaryLabelFontForType:{-[ICToolbarSummaryView type](self, "type")}];
    syncTitleLabel2 = [(ICToolbarSummaryView *)self syncTitleLabel];
    [syncTitleLabel2 setFont:v23];

    syncMessage = [(ICToolbarSummaryView *)self syncMessage];
    title = [syncMessage title];
    syncTitleLabel3 = [(ICToolbarSummaryView *)self syncTitleLabel];
    [syncTitleLabel3 setText:title];

    syncTitleLabel4 = [(ICToolbarSummaryView *)self syncTitleLabel];
    v29 = syncTitleLabel4;
    v30 = 0;
  }

  else if (v3)
  {
    summaryLabel12 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel12 setHidden:1];

    syncTitleLabel5 = [(ICToolbarSummaryView *)self syncTitleLabel];
    [syncTitleLabel5 setHidden:1];

    syncTitleLabel4 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    v29 = syncTitleLabel4;
    v30 = (type2 == 3) & (v7 ^ 1);
  }

  else
  {
    rootStackView5 = [(ICToolbarSummaryView *)self rootStackView];
    summaryLabel13 = [(ICToolbarSummaryView *)self summaryLabel];
    [rootStackView5 setCustomSpacing:summaryLabel13 afterView:0.0];

    syncMessage2 = [(ICToolbarSummaryView *)self syncMessage];
    title2 = [syncMessage2 title];
    summaryLabel14 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel14 setText:title2];

    syncMessage3 = [(ICToolbarSummaryView *)self syncMessage];
    title3 = [syncMessage3 title];
    summaryLabel15 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel15 setAccessibilityLabel:title3];

    syncTitleLabel4 = [(ICToolbarSummaryView *)self syncTitleLabel];
    v29 = syncTitleLabel4;
    v30 = 1;
  }

  [syncTitleLabel4 setHidden:v30];

  summaryLabel16 = [(ICToolbarSummaryView *)self summaryLabel];
  isHidden = [summaryLabel16 isHidden];

  if ((isHidden & 1) == 0)
  {
    summaryLabel17 = [(ICToolbarSummaryView *)self summaryLabel];
    text = [summaryLabel17 text];
    v66 = [text length] == 0;
    summaryLabel18 = [(ICToolbarSummaryView *)self summaryLabel];
    [summaryLabel18 setHidden:v66];
  }

  shouldHideSyncActionButtonDueToCompressedSpace = [(ICToolbarSummaryView *)self shouldHideSyncActionButtonDueToCompressedSpace];
  if (([(ICToolbarSummaryView *)self type]!= 3) | v7 & 1)
  {
    v69 = shouldHideSyncActionButtonDueToCompressedSpace ^ 1;
  }

  else
  {
    syncMessage4 = [(ICToolbarSummaryView *)self syncMessage];
    reason = [syncMessage4 reason];
    v73 = sub_1004E9EA8(v72);
    if (([v75 isEqual:{**(v74 + 16), v73}] & 1) == 0)
    {
      v77 = sub_1004E9E60(v76);
      if (([reason isEqual:{**v78, v77}] & 1) == 0)
      {
        v80 = sub_1004E9E84(v79);
        if (([reason isEqual:{**(v81 + 8), v80}] & 1) == 0)
        {
          v134 = sub_1004E9DF4(v82);
          if (([reason isEqual:{**(v135 + 4072), v134}] & 1) == 0)
          {
            v137 = sub_1004E9E3C(v136);
            if (([reason isEqual:{**(v138 + 4088), v137}] & 1) == 0)
            {
              v139 = os_log_create("com.apple.notes", "UI");
              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
              {
                title4 = [syncMessage4 title];
                *buf = 138412546;
                v142 = reason;
                v143 = 2112;
                v144 = title4;
                _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "ic_titleWantsDisplayInTopScrolledHeader: Didn't special case %@ (%@). Is this intentional?", buf, 0x16u);
              }
            }
          }

          v69 = 0;
          v36 = 0;
          v87 = 1;
          goto LABEL_31;
        }
      }
    }

    v69 = 0;
  }

  if ([(ICToolbarSummaryView *)self type]== 2)
  {
    syncMessage5 = [(ICToolbarSummaryView *)self syncMessage];
    title5 = [syncMessage5 title];
  }

  else
  {
    type3 = [(ICToolbarSummaryView *)self type];
    syncMessage6 = [(ICToolbarSummaryView *)self syncMessage];
    syncMessage5 = syncMessage6;
    if (type3 == 3)
    {
      [syncMessage6 conciseTitle];
    }

    else
    {
      [syncMessage6 subTitle];
    }
    title5 = ;
  }

  v36 = title5;

  v87 = 0;
LABEL_31:
  syncSubtitleLabel2 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [syncSubtitleLabel2 setHidden:v36 == 0];

  v89 = [objc_opt_class() secondaryLabelFontForType:{-[ICToolbarSummaryView type](self, "type")}];
  syncSubtitleLabel3 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [syncSubtitleLabel3 setFont:v89];

  syncSubtitleLabel4 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [syncSubtitleLabel4 setText:v36];

  syncSubtitleLabel5 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [syncSubtitleLabel5 setAccessibilityLabel:v36];

  syncMessage7 = [(ICToolbarSummaryView *)self syncMessage];
  lockNowButton3 = [syncMessage7 sfSymbolName];

  if ((v87 & 1) != 0 || !lockNowButton3)
  {
    goto LABEL_37;
  }

  v94 = +[UIDevice ic_isiPad];
  v95 = &UIFontTextStyleBody;
  if (!v94)
  {
    v95 = &UIFontTextStyleHeadline;
  }

  v96 = [UIImage ic_systemImageNamed:lockNowButton3 textStyle:*v95 scale:2];
  if (v96)
  {
    subheadingStackView4 = v96;
    syncStatusIcon = [(ICToolbarSummaryView *)self syncStatusIcon];
    [syncStatusIcon setImage:subheadingStackView4];

    v99 = [objc_opt_class() iconColorForType:{-[ICToolbarSummaryView type](self, "type")}];
    syncStatusIcon2 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [syncStatusIcon2 setTintColor:v99];

    subheadingStackView2 = [(ICToolbarSummaryView *)self subheadingStackView];
    [subheadingStackView2 setAxis:0];

    subheadingStackView3 = [(ICToolbarSummaryView *)self subheadingStackView];
    syncStatusIcon3 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [subheadingStackView3 setCustomSpacing:syncStatusIcon3 afterView:6.0];

    v104 = 1;
  }

  else
  {
LABEL_37:
    subheadingStackView4 = [(ICToolbarSummaryView *)self subheadingStackView];
    subheadingStackView3 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [subheadingStackView4 setCustomSpacing:subheadingStackView3 afterView:0.0];
    v104 = 0;
  }

  syncStatusIcon4 = [(ICToolbarSummaryView *)self syncStatusIcon];
  [syncStatusIcon4 setHidden:v104 ^ 1];

  activityIndicatorView4 = [(ICToolbarSummaryView *)self activityIndicatorView];
  [activityIndicatorView4 setHidden:v104];

  syncMessage8 = [(ICToolbarSummaryView *)self syncMessage];
  actions = [syncMessage8 actions];
  firstObject = [actions firstObject];

  if (((firstObject != 0) & v69) == 1)
  {
    syncSubtitleLabel6 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    [syncSubtitleLabel6 setNumberOfLines:1];

    title6 = [firstObject title];
    v112 = [objc_opt_class() syncActionButtonConfigurationWithTitle:title6 type:{-[ICToolbarSummaryView type](self, "type")}];
    syncActionButton = [(ICToolbarSummaryView *)self syncActionButton];
    [syncActionButton setConfiguration:v112];

    syncActionButton2 = [(ICToolbarSummaryView *)self syncActionButton];
    titleLabel2 = [syncActionButton2 titleLabel];
    [titleLabel2 setNumberOfLines:1];

    syncActionButton3 = [(ICToolbarSummaryView *)self syncActionButton];
    [syncActionButton3 setHidden:0];

    syncSubtitleLabel7 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    [syncSubtitleLabel7 intrinsicContentSize];
    v119 = v118;
    syncActionButton4 = [(ICToolbarSummaryView *)self syncActionButton];
    [syncActionButton4 intrinsicContentSize];
    v122 = v121;

    if ((v3 & 1) != 0 || ([(ICToolbarSummaryView *)self availableWidth], v119 + v122 <= v123 + -42.0))
    {
      v128 = [NSString stringWithFormat:@"%@ · ", v36];
      syncSubtitleLabel8 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      [syncSubtitleLabel8 setText:v128];

      syncSubtitleLabel9 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      [syncSubtitleLabel9 setLargeContentTitle:v36];

      syncSubtitleLabel10 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      [syncSubtitleLabel10 setAccessibilityLabel:v36];

      subheadingStackView5 = [(ICToolbarSummaryView *)self subheadingStackView];
      [subheadingStackView5 setAxis:0];
    }

    else
    {
      subheadingStackView6 = [(ICToolbarSummaryView *)self subheadingStackView];
      [subheadingStackView6 setAxis:1];

      subheadingStackView5 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      [(ICToolbarSummaryView *)self availableWidth];
      [subheadingStackView5 setPreferredMaxLayoutWidth:?];
    }
  }

  else
  {
    if (v3)
    {
      v126 = 1;
    }

    else
    {
      v126 = 2;
    }

    syncSubtitleLabel11 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    [syncSubtitleLabel11 setNumberOfLines:v126];

    title6 = [(ICToolbarSummaryView *)self syncActionButton];
    [title6 setHidden:1];
  }

  subheadingStackView7 = [(ICToolbarSummaryView *)self subheadingStackView];
  [subheadingStackView7 setHidden:0];

  lockNowButton4 = [(ICToolbarSummaryView *)self lockNowButton];
  [lockNowButton4 setHidden:1];

  [(ICToolbarSummaryView *)self checkSubheadingStackViewLayout];
LABEL_49:

  [(ICToolbarSummaryView *)self updateSyncActivityIndicator];
}

- (void)updateSyncActivityIndicator
{
  if ([(ICToolbarSummaryView *)self isSyncActivityVisible]&& [(ICToolbarSummaryView *)self shouldAnimateSpinner])
  {
    activityIndicatorView = [(ICToolbarSummaryView *)self activityIndicatorView];
    [(ICToolbarSummaryView *)self frame];
    [activityIndicatorView sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    activityIndicatorView2 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [activityIndicatorView2 setFrame:{0.0, 0.0, v7, v9}];

    activityIndicatorView3 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [activityIndicatorView3 startAnimating];
  }

  else
  {
    activityIndicatorView3 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [activityIndicatorView3 stopAnimating];
  }
}

- (void)dataSourceDataUpdateDidRender:(id)render
{
  renderCopy = render;
  object = [renderCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B8FB8;
    v7[3] = &unk_100645BA0;
    v8 = renderCopy;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)progressIndicatorTrackerStartAnimation
{
  [(ICToolbarSummaryView *)self setShouldAnimateSpinner:1];

  [(ICToolbarSummaryView *)self update];
}

- (void)progressIndicatorTrackerStopAnimation
{
  [(ICToolbarSummaryView *)self setShouldAnimateSpinner:0];

  [(ICToolbarSummaryView *)self update];
}

- (id)accessibilityLabel
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000B9200;
  v12 = sub_1000B9210;
  v13 = +[NSMutableArray array];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B9218;
  v5[3] = &unk_1006483A0;
  v5[4] = &v8;
  v5[5] = v6;
  [(ICToolbarSummaryView *)self enumerateAccessibleSubviewsWithBlock:v5];
  v3 = [v9[5] componentsJoinedByString:{@", "}];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);

  return v3;
}

- (id)accessibilityHint
{
  buttonElement = [(ICToolbarSummaryView *)self buttonElement];
  accessibilityHint = [buttonElement accessibilityHint];

  return accessibilityHint;
}

- (CGPoint)accessibilityActivationPoint
{
  buttonElement = [(ICToolbarSummaryView *)self buttonElement];
  v4 = buttonElement;
  if (buttonElement)
  {
    [buttonElement accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ICToolbarSummaryView;
    [(ICToolbarSummaryView *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)buttonElement
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000B9200;
  v11 = sub_1000B9210;
  v12 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B95C0;
  v4[3] = &unk_1006483A0;
  v4[4] = &v7;
  v4[5] = v5;
  [(ICToolbarSummaryView *)self enumerateAccessibleSubviewsWithBlock:v4];
  v2 = v8[5];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);

  return v2;
}

- (void)enumerateAccessibleSubviewsWithBlock:(id)block
{
  blockCopy = block;
  [(ICToolbarSummaryView *)self _accessibleSubviews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9)))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (ICToolbarSummaryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end