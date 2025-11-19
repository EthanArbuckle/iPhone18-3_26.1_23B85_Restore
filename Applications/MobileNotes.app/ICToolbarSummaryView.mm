@interface ICToolbarSummaryView
+ (UIFont)subtitleFont;
+ (id)buttonTitleTextAttributesTransformerWithTextStyle:(id)a3;
+ (id)iconColorForType:(unint64_t)a3;
+ (id)lockNowButtonConfigurationForType:(unint64_t)a3;
+ (id)primaryLabelFontForType:(unint64_t)a3;
+ (id)secondaryLabelFontForType:(unint64_t)a3;
+ (id)syncActionButtonConfigurationWithTitle:(id)a3 type:(unint64_t)a4;
- (CGPoint)accessibilityActivationPoint;
- (ICToolbarSummaryView)initWithFrame:(CGRect)a3 type:(unint64_t)a4;
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
- (void)dataSourceDataUpdateDidRender:(id)a3;
- (void)dealloc;
- (void)enumerateAccessibleSubviewsWithBlock:(id)a3;
- (void)layoutSubviews;
- (void)progressIndicatorTrackerStartAnimation;
- (void)progressIndicatorTrackerStopAnimation;
- (void)setAvailableWidth:(double)a3;
- (void)update;
- (void)updateConstraints;
- (void)updateSyncActivityIndicator;
@end

@implementation ICToolbarSummaryView

- (ICToolbarSummaryView)initWithFrame:(CGRect)a3 type:(unint64_t)a4
{
  v45.receiver = self;
  v45.super_class = ICToolbarSummaryView;
  v5 = [(ICToolbarSummaryView *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_lockNowHidden = 1;
    v5->_type = a4;
    v7 = [[ICICloudProgressIndicatorTracker alloc] initWithDelegate:v5];
    progressIndicatorTracker = v6->_progressIndicatorTracker;
    v6->_progressIndicatorTracker = &v7->super;

    v9 = [(ICToolbarSummaryView *)v6 rootStackView];
    [(ICToolbarSummaryView *)v6 addSubview:v9];

    if (_UISolariumEnabled())
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 0.0;
    }

    v44 = [(ICToolbarSummaryView *)v6 rootStackView];
    v43 = [v44 topAnchor];
    v42 = [(ICToolbarSummaryView *)v6 topAnchor];
    v11 = [v43 constraintEqualToAnchor:v42 constant:v10];
    topConstraint = v6->_topConstraint;
    v6->_topConstraint = v11;

    v46[0] = v11;
    v41 = [(ICToolbarSummaryView *)v6 rootStackView];
    v40 = [v41 bottomAnchor];
    v39 = [(ICToolbarSummaryView *)v6 bottomAnchor];
    v13 = [v40 constraintEqualToAnchor:v39 constant:v10];
    bottomConstraint = v6->_bottomConstraint;
    v6->_bottomConstraint = v13;

    v46[1] = v13;
    v38 = [(ICToolbarSummaryView *)v6 rootStackView];
    v36 = [v38 leadingAnchor];
    v37 = [(ICToolbarSummaryView *)v6 safeAreaLayoutGuide];
    v35 = [v37 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v46[2] = v34;
    v33 = [(ICToolbarSummaryView *)v6 rootStackView];
    v31 = [v33 trailingAnchor];
    v32 = [(ICToolbarSummaryView *)v6 safeAreaLayoutGuide];
    v30 = [v32 trailingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v46[3] = v29;
    v28 = [(ICToolbarSummaryView *)v6 activityIndicatorView];
    v27 = [v28 heightAnchor];
    v15 = [(ICToolbarSummaryView *)v6 syncTitleLabel];
    v16 = [v15 heightAnchor];
    v17 = [v27 constraintEqualToAnchor:v16];
    v46[4] = v17;
    v18 = [(ICToolbarSummaryView *)v6 activityIndicatorView];
    v19 = [v18 centerYAnchor];
    v20 = [(ICToolbarSummaryView *)v6 rootStackView];
    v21 = [v20 centerYAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
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
  v3 = [(ICToolbarSummaryView *)self progressIndicatorTracker];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = ICToolbarSummaryView;
  [(ICToolbarSummaryView *)&v4 dealloc];
}

- (void)setAvailableWidth:(double)a3
{
  if (self->_availableWidth != a3)
  {
    self->_availableWidth = a3;
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
  v3 = [(ICToolbarSummaryView *)self isShowingAsFooter];
  v4 = [(ICToolbarSummaryView *)self topConstraint];
  v5 = v4;
  v6 = 40.0;
  if (v3)
  {
    v7 = -40.0;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  [v4 setConstant:v6];

  v8 = [(ICToolbarSummaryView *)self bottomConstraint];
  [v8 setConstant:v7];
}

+ (id)primaryLabelFontForType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = &UIFontTextStyleHeadline;
  }

  else if (a3 == 3 || a3 == 2)
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
  v8 = [v7 ic_fontWithSingleLineA];

  return v8;
}

+ (UIFont)subtitleFont
{
  v2 = [UIFont ic_preferredFontForStyle:UIFontTextStyleSubheadline withFontWeight:UIContentSizeCategoryLarge maxContentSizeCategory:UIFontWeightRegular];
  v3 = [v2 ic_fontWithSingleLineA];

  return v3;
}

+ (id)secondaryLabelFontForType:(unint64_t)a3
{
  if (a3 - 2 >= 2)
  {
    if (a3 == 1)
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
    v3 = [v7 ic_fontWithSingleLineA];
  }

  else
  {
    v3 = [a1 subtitleFont];
  }

  return v3;
}

+ (id)buttonTitleTextAttributesTransformerWithTextStyle:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B6734;
  v7[3] = &unk_100648378;
  v8 = a3;
  v9 = a1;
  v4 = v8;
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
    v6 = [(ICToolbarSummaryView *)self summaryComponents];
    v7 = [v6 count];

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

+ (id)iconColorForType:(unint64_t)a3
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
    v9 = [(UIButton *)self->_syncActionButton titleLabel];
    [v9 setAdjustsFontForContentSizeCategory:1];

    v10 = [(UIButton *)self->_syncActionButton titleLabel];
    [v10 setMaximumContentSizeCategory:UIContentSizeCategoryMedium];

    [(UIButton *)self->_syncActionButton setShowsLargeContentViewer:1];
    [(UIButton *)self->_syncActionButton setHidden:1];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    syncActionButton = self->_syncActionButton;
  }

  return syncActionButton;
}

+ (id)syncActionButtonConfigurationWithTitle:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = _UISolariumEnabled();
  v7 = &UIFontTextStyleSubheadline;
  if (!v6)
  {
    v7 = &UIFontTextStyleCaption2;
  }

  v8 = *v7;
  v9 = +[UIButtonConfiguration borderlessButtonConfiguration];
  [v9 setTitle:v5];

  v10 = [a1 buttonTitleTextAttributesTransformerWithTextStyle:v8];

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
      v4 = [(ICToolbarSummaryView *)self syncStatusIcon];
      v13[0] = v4;
      v5 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      v13[1] = v5;
      v6 = [(ICToolbarSummaryView *)self syncActionButton];
      v13[2] = v6;
      v7 = [NSArray arrayWithObjects:v13 count:3];
    }

    else
    {
      v4 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      v5 = [(ICToolbarSummaryView *)self syncActionButton];
      v12[1] = v5;
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
    v8 = [(UIButton *)self->_lockNowButton titleLabel];
    [v8 setAdjustsFontForContentSizeCategory:1];

    v9 = [(UIButton *)self->_lockNowButton titleLabel];
    [v9 setMaximumContentSizeCategory:UIContentSizeCategoryMedium];

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

+ (id)lockNowButtonConfigurationForType:(unint64_t)a3
{
  v5 = a3 - 1;
  if (a3 - 1 > 2)
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

  v13 = [a1 buttonTitleTextAttributesTransformerWithTextStyle:v9];
  [v10 setTitleTextAttributesTransformer:v13];

  v14 = [UIImage systemImageNamed:@"lock.open.fill"];
  [v10 setImage:v14];

  v15 = [a1 primaryLabelFontForType:a3];
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
      v4 = [(ICToolbarSummaryView *)self activityIndicatorView];
      v15[0] = v4;
      v5 = [(ICToolbarSummaryView *)self summaryLabel];
      v15[1] = v5;
      v6 = [(ICToolbarSummaryView *)self syncTitleLabel];
      v15[2] = v6;
      v7 = [(ICToolbarSummaryView *)self subheadingStackView];
      v15[3] = v7;
      v8 = [(ICToolbarSummaryView *)self lockNowButton];
      v15[4] = v8;
      v9 = [NSArray arrayWithObjects:v15 count:5];
    }

    else
    {
      v4 = [(ICToolbarSummaryView *)self activityIndicatorView];
      v5 = [(ICToolbarSummaryView *)self summaryLabel];
      v14[1] = v5;
      v6 = [(ICToolbarSummaryView *)self syncTitleLabel];
      v14[2] = v6;
      v7 = [(ICToolbarSummaryView *)self subheadingStackView];
      v14[3] = v7;
      v8 = [(ICToolbarSummaryView *)self lockNowButton];
      v14[4] = v8;
      v10 = [(ICToolbarSummaryView *)self spacerView];
      v14[5] = v10;
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
  v24 = [(ICToolbarSummaryView *)self subheadingStackView];
  if ([v24 axis])
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

  v7 = [(ICToolbarSummaryView *)self syncStatusIcon];
  v8 = [v7 isHidden];

  v9 = 0.0;
  if ((v8 & 1) == 0)
  {
    v10 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [v10 intrinsicContentSize];
    v12 = v11 + 0.0;

    v9 = v12 + 6.0;
  }

  v13 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [v13 intrinsicContentSize];
  v15 = v9 + v14;

  v16 = [(ICToolbarSummaryView *)self syncActionButton];
  [v16 intrinsicContentSize];
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
    if ((v8 & 1) == 0)
    {
      v22 = [(ICToolbarSummaryView *)self syncStatusIcon];
      [v22 intrinsicContentSize];
      v20 = v20 - (v23 + 6.0);
    }

    v24 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    [v24 setPreferredMaxLayoutWidth:v20];
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
  v3 = [(ICToolbarSummaryView *)self delegate];
  if ([v3 isSearchActiveWithQuery])
  {
    v4 = [(ICToolbarSummaryView *)self searchSummaryString];

    if (v4)
    {
      v5 = [(ICToolbarSummaryView *)self searchSummaryString];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [(ICToolbarSummaryView *)self summaryComponents];
  v5 = [v6 componentsJoinedByString:@" · "];

LABEL_6:

  return v5;
}

- (NSString)summaryAccessibilityLabel
{
  v3 = [(ICToolbarSummaryView *)self delegate];
  if ([v3 isSearchActiveWithQuery])
  {
    v4 = [(ICToolbarSummaryView *)self searchSummaryString];

    if (v4)
    {
      v5 = [(ICToolbarSummaryView *)self searchSummaryString];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [(ICToolbarSummaryView *)self summaryComponents];
  v5 = [v6 componentsJoinedByString:{@", "}];

LABEL_6:

  return v5;
}

- (void)update
{
  [(ICToolbarSummaryView *)self setNeedsUpdateConstraints];
  [(ICToolbarSummaryView *)self updateConstraintsIfNeeded];
  v3 = _UISolariumEnabled();
  v4 = [(ICToolbarSummaryView *)self type];
  v5 = [(ICToolbarSummaryView *)self type];
  v6 = v5 == 3;
  v7 = +[UIDevice ic_isiPad];
  v8 = [(ICToolbarSummaryView *)self summaryLabel];
  [v8 setHidden:0];

  v9 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [v9 setHidden:0];

  v10 = [objc_opt_class() primaryLabelFontForType:{-[ICToolbarSummaryView type](self, "type")}];
  v11 = [(ICToolbarSummaryView *)self summaryLabel];
  [v11 setFont:v10];

  v12 = [(ICToolbarSummaryView *)self delegate];
  LOBYTE(v11) = [v12 isSearchActive];

  if ((v11 & 1) == 0)
  {
    [(ICToolbarSummaryView *)self setSearchSummaryString:0];
  }

  if (![(ICToolbarSummaryView *)self isLockNowHidden]|| ([(ICToolbarSummaryView *)self syncMessage], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v31 = [(ICToolbarSummaryView *)self rootStackView];
    v32 = [(ICToolbarSummaryView *)self summaryLabel];
    [v31 setCustomSpacing:v32 afterView:0.0];

    v33 = [(ICToolbarSummaryView *)self rootStackView];
    v34 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [v33 setCustomSpacing:v34 afterView:4.0];

    v35 = [(ICToolbarSummaryView *)self summary];
    v36 = v35;
    if (v3 && [v35 length] && !-[ICToolbarSummaryView isLockNowHidden](self, "isLockNowHidden"))
    {
      v52 = [NSString stringWithFormat:@"%@ · ", v36];
      v53 = [(ICToolbarSummaryView *)self summaryLabel];
      [v53 setText:v52];

      v37 = [(ICToolbarSummaryView *)self summaryLabel];
      [v37 setLargeContentTitle:v36];
    }

    else
    {
      v37 = [(ICToolbarSummaryView *)self summaryLabel];
      [v37 setText:v36];
      v6 = 0;
    }

    v38 = [(ICToolbarSummaryView *)self summaryAccessibilityLabel];
    v39 = [(ICToolbarSummaryView *)self summaryLabel];
    [v39 setAccessibilityLabel:v38];

    v40 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [v40 setHidden:0];

    v41 = [(ICToolbarSummaryView *)self syncTitleLabel];
    [v41 setHidden:1];

    v42 = [(ICToolbarSummaryView *)self subheadingStackView];
    [v42 setHidden:1];

    v43 = [(ICToolbarSummaryView *)self summaryLabel];
    [v43 setHidden:v6];

    v44 = [objc_opt_class() lockNowButtonConfigurationForType:{-[ICToolbarSummaryView type](self, "type")}];
    v45 = [(ICToolbarSummaryView *)self lockNowButton];
    [v45 setConfiguration:v44];

    v46 = [(ICToolbarSummaryView *)self lockNowButton];
    v47 = [v46 titleLabel];
    [v47 setNumberOfLines:1];

    v48 = [(ICToolbarSummaryView *)self isLockNowHidden];
    v49 = [(ICToolbarSummaryView *)self lockNowButton];
    [v49 setHidden:v48];
    goto LABEL_49;
  }

  if (v4 == 1)
  {
    v14 = [(ICToolbarSummaryView *)self rootStackView];
    v15 = [(ICToolbarSummaryView *)self summaryLabel];
    [v14 setCustomSpacing:v15 afterView:4.0];

    v16 = [(ICToolbarSummaryView *)self rootStackView];
    v17 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [v16 setCustomSpacing:v17 afterView:0.0];

    v18 = [(ICToolbarSummaryView *)self summary];
    v19 = [(ICToolbarSummaryView *)self summaryLabel];
    [v19 setText:v18];

    v20 = [(ICToolbarSummaryView *)self summaryAccessibilityLabel];
    v21 = [(ICToolbarSummaryView *)self summaryLabel];
    [v21 setAccessibilityLabel:v20];

    v22 = [(ICToolbarSummaryView *)self summaryLabel];
    [v22 setHidden:0];

    v23 = [objc_opt_class() secondaryLabelFontForType:{-[ICToolbarSummaryView type](self, "type")}];
    v24 = [(ICToolbarSummaryView *)self syncTitleLabel];
    [v24 setFont:v23];

    v25 = [(ICToolbarSummaryView *)self syncMessage];
    v26 = [v25 title];
    v27 = [(ICToolbarSummaryView *)self syncTitleLabel];
    [v27 setText:v26];

    v28 = [(ICToolbarSummaryView *)self syncTitleLabel];
    v29 = v28;
    v30 = 0;
  }

  else if (v3)
  {
    v50 = [(ICToolbarSummaryView *)self summaryLabel];
    [v50 setHidden:1];

    v51 = [(ICToolbarSummaryView *)self syncTitleLabel];
    [v51 setHidden:1];

    v28 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    v29 = v28;
    v30 = (v5 == 3) & (v7 ^ 1);
  }

  else
  {
    v54 = [(ICToolbarSummaryView *)self rootStackView];
    v55 = [(ICToolbarSummaryView *)self summaryLabel];
    [v54 setCustomSpacing:v55 afterView:0.0];

    v56 = [(ICToolbarSummaryView *)self syncMessage];
    v57 = [v56 title];
    v58 = [(ICToolbarSummaryView *)self summaryLabel];
    [v58 setText:v57];

    v59 = [(ICToolbarSummaryView *)self syncMessage];
    v60 = [v59 title];
    v61 = [(ICToolbarSummaryView *)self summaryLabel];
    [v61 setAccessibilityLabel:v60];

    v28 = [(ICToolbarSummaryView *)self syncTitleLabel];
    v29 = v28;
    v30 = 1;
  }

  [v28 setHidden:v30];

  v62 = [(ICToolbarSummaryView *)self summaryLabel];
  v63 = [v62 isHidden];

  if ((v63 & 1) == 0)
  {
    v64 = [(ICToolbarSummaryView *)self summaryLabel];
    v65 = [v64 text];
    v66 = [v65 length] == 0;
    v67 = [(ICToolbarSummaryView *)self summaryLabel];
    [v67 setHidden:v66];
  }

  v68 = [(ICToolbarSummaryView *)self shouldHideSyncActionButtonDueToCompressedSpace];
  if (([(ICToolbarSummaryView *)self type]!= 3) | v7 & 1)
  {
    v69 = v68 ^ 1;
  }

  else
  {
    v70 = [(ICToolbarSummaryView *)self syncMessage];
    v71 = [v70 reason];
    v73 = sub_1004E9EA8(v72);
    if (([v75 isEqual:{**(v74 + 16), v73}] & 1) == 0)
    {
      v77 = sub_1004E9E60(v76);
      if (([v71 isEqual:{**v78, v77}] & 1) == 0)
      {
        v80 = sub_1004E9E84(v79);
        if (([v71 isEqual:{**(v81 + 8), v80}] & 1) == 0)
        {
          v134 = sub_1004E9DF4(v82);
          if (([v71 isEqual:{**(v135 + 4072), v134}] & 1) == 0)
          {
            v137 = sub_1004E9E3C(v136);
            if (([v71 isEqual:{**(v138 + 4088), v137}] & 1) == 0)
            {
              v139 = os_log_create("com.apple.notes", "UI");
              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
              {
                v140 = [v70 title];
                *buf = 138412546;
                v142 = v71;
                v143 = 2112;
                v144 = v140;
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
    v83 = [(ICToolbarSummaryView *)self syncMessage];
    v84 = [v83 title];
  }

  else
  {
    v85 = [(ICToolbarSummaryView *)self type];
    v86 = [(ICToolbarSummaryView *)self syncMessage];
    v83 = v86;
    if (v85 == 3)
    {
      [v86 conciseTitle];
    }

    else
    {
      [v86 subTitle];
    }
    v84 = ;
  }

  v36 = v84;

  v87 = 0;
LABEL_31:
  v88 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [v88 setHidden:v36 == 0];

  v89 = [objc_opt_class() secondaryLabelFontForType:{-[ICToolbarSummaryView type](self, "type")}];
  v90 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [v90 setFont:v89];

  v91 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [v91 setText:v36];

  v92 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
  [v92 setAccessibilityLabel:v36];

  v93 = [(ICToolbarSummaryView *)self syncMessage];
  v49 = [v93 sfSymbolName];

  if ((v87 & 1) != 0 || !v49)
  {
    goto LABEL_37;
  }

  v94 = +[UIDevice ic_isiPad];
  v95 = &UIFontTextStyleBody;
  if (!v94)
  {
    v95 = &UIFontTextStyleHeadline;
  }

  v96 = [UIImage ic_systemImageNamed:v49 textStyle:*v95 scale:2];
  if (v96)
  {
    v97 = v96;
    v98 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [v98 setImage:v97];

    v99 = [objc_opt_class() iconColorForType:{-[ICToolbarSummaryView type](self, "type")}];
    v100 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [v100 setTintColor:v99];

    v101 = [(ICToolbarSummaryView *)self subheadingStackView];
    [v101 setAxis:0];

    v102 = [(ICToolbarSummaryView *)self subheadingStackView];
    v103 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [v102 setCustomSpacing:v103 afterView:6.0];

    v104 = 1;
  }

  else
  {
LABEL_37:
    v97 = [(ICToolbarSummaryView *)self subheadingStackView];
    v102 = [(ICToolbarSummaryView *)self syncStatusIcon];
    [v97 setCustomSpacing:v102 afterView:0.0];
    v104 = 0;
  }

  v105 = [(ICToolbarSummaryView *)self syncStatusIcon];
  [v105 setHidden:v104 ^ 1];

  v106 = [(ICToolbarSummaryView *)self activityIndicatorView];
  [v106 setHidden:v104];

  v107 = [(ICToolbarSummaryView *)self syncMessage];
  v108 = [v107 actions];
  v109 = [v108 firstObject];

  if (((v109 != 0) & v69) == 1)
  {
    v110 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    [v110 setNumberOfLines:1];

    v111 = [v109 title];
    v112 = [objc_opt_class() syncActionButtonConfigurationWithTitle:v111 type:{-[ICToolbarSummaryView type](self, "type")}];
    v113 = [(ICToolbarSummaryView *)self syncActionButton];
    [v113 setConfiguration:v112];

    v114 = [(ICToolbarSummaryView *)self syncActionButton];
    v115 = [v114 titleLabel];
    [v115 setNumberOfLines:1];

    v116 = [(ICToolbarSummaryView *)self syncActionButton];
    [v116 setHidden:0];

    v117 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    [v117 intrinsicContentSize];
    v119 = v118;
    v120 = [(ICToolbarSummaryView *)self syncActionButton];
    [v120 intrinsicContentSize];
    v122 = v121;

    if ((v3 & 1) != 0 || ([(ICToolbarSummaryView *)self availableWidth], v119 + v122 <= v123 + -42.0))
    {
      v128 = [NSString stringWithFormat:@"%@ · ", v36];
      v129 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      [v129 setText:v128];

      v130 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      [v130 setLargeContentTitle:v36];

      v131 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      [v131 setAccessibilityLabel:v36];

      v125 = [(ICToolbarSummaryView *)self subheadingStackView];
      [v125 setAxis:0];
    }

    else
    {
      v124 = [(ICToolbarSummaryView *)self subheadingStackView];
      [v124 setAxis:1];

      v125 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
      [(ICToolbarSummaryView *)self availableWidth];
      [v125 setPreferredMaxLayoutWidth:?];
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

    v127 = [(ICToolbarSummaryView *)self syncSubtitleLabel];
    [v127 setNumberOfLines:v126];

    v111 = [(ICToolbarSummaryView *)self syncActionButton];
    [v111 setHidden:1];
  }

  v132 = [(ICToolbarSummaryView *)self subheadingStackView];
  [v132 setHidden:0];

  v133 = [(ICToolbarSummaryView *)self lockNowButton];
  [v133 setHidden:1];

  [(ICToolbarSummaryView *)self checkSubheadingStackViewLayout];
LABEL_49:

  [(ICToolbarSummaryView *)self updateSyncActivityIndicator];
}

- (void)updateSyncActivityIndicator
{
  if ([(ICToolbarSummaryView *)self isSyncActivityVisible]&& [(ICToolbarSummaryView *)self shouldAnimateSpinner])
  {
    v3 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [(ICToolbarSummaryView *)self frame];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [v10 setFrame:{0.0, 0.0, v7, v9}];

    v11 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [v11 startAnimating];
  }

  else
  {
    v11 = [(ICToolbarSummaryView *)self activityIndicatorView];
    [v11 stopAnimating];
  }
}

- (void)dataSourceDataUpdateDidRender:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B8FB8;
    v7[3] = &unk_100645BA0;
    v8 = v4;
    v9 = self;
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
  v2 = [(ICToolbarSummaryView *)self buttonElement];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(ICToolbarSummaryView *)self buttonElement];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
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

- (void)enumerateAccessibleSubviewsWithBlock:(id)a3
{
  v4 = a3;
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

      if (v4[2](v4, *(*(&v10 + 1) + 8 * v9)))
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