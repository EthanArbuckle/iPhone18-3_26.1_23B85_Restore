@interface NoRecentlySearchCollectionViewCell
+ (id)identifier;
- (NoRecentlySearchCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_contentSizeCategoryDidChange;
- (void)clearHeightConstraint;
- (void)layoutSubviews;
- (void)setHeightConstraint:(double)constraint withPriority:(float)priority;
@end

@implementation NoRecentlySearchCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NoRecentlySearchCollectionViewCell;
  [(NoRecentlySearchCollectionViewCell *)&v4 layoutSubviews];
  keyboardAvoidingView = [(NoRecentlySearchCollectionViewCell *)self keyboardAvoidingView];
  [keyboardAvoidingView updateForKeyboardFrame];
}

- (void)setHeightConstraint:(double)constraint withPriority:(float)priority
{
  heightConstraint = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
  if (heightConstraint)
  {
    v8 = heightConstraint;
    heightConstraint2 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    [heightConstraint2 priority];
    if (v10 == priority)
    {
    }

    else
    {
      heightConstraint3 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
      [heightConstraint3 priority];
      v13 = v12;

      if (v13 == 1000.0 || priority == 1000.0)
      {
        [(NoRecentlySearchCollectionViewCell *)self clearHeightConstraint];
      }
    }
  }

  heightConstraint4 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];

  if (heightConstraint4)
  {
    heightConstraint5 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    [heightConstraint5 setConstant:constraint];

    heightConstraint6 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    [heightConstraint6 priority];
    v18 = v17;

    if (v18 == priority)
    {
      return;
    }

    heightConstraint7 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    *&v19 = priority;
    [heightConstraint7 setPriority:v19];
  }

  else
  {
    contentView = [(NoRecentlySearchCollectionViewCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v22 = [heightAnchor constraintEqualToConstant:constraint];
    [(NoRecentlySearchCollectionViewCell *)self setHeightConstraint:v22];

    heightConstraint8 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    *&v24 = priority;
    [heightConstraint8 setPriority:v24];

    heightConstraint7 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    [heightConstraint7 setActive:1];
  }
}

- (void)_contentSizeCategoryDidChange
{
  contentLabel = [(NoRecentlySearchCollectionViewCell *)self contentLabel];
  font = [contentLabel font];
  [font _mapkit_scaledValueForValue:20.0];
  v6 = v5;
  contentLabelTopConstraint = [(NoRecentlySearchCollectionViewCell *)self contentLabelTopConstraint];
  [contentLabelTopConstraint setConstant:v6];

  titleLabel = [(NoRecentlySearchCollectionViewCell *)self titleLabel];
  font2 = [titleLabel font];
  [font2 _mapkit_scaledValueForValue:56.0];
  v10 = v9;
  titleLabelTopConstraint = [(NoRecentlySearchCollectionViewCell *)self titleLabelTopConstraint];
  [titleLabelTopConstraint setConstant:v10];
}

- (void)clearHeightConstraint
{
  heightConstraint = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
  [heightConstraint setActive:0];
}

- (NoRecentlySearchCollectionViewCell)initWithFrame:(CGRect)frame
{
  v64.receiver = self;
  v64.super_class = NoRecentlySearchCollectionViewCell;
  v3 = [(NoRecentlySearchCollectionViewCell *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(NoRecentlySearchCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(UIView);
    v6 = objc_alloc_init(MapsThemeLabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    [(MapsThemeLabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeLabel *)v3->_titleLabel setNumberOfLines:0];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"No recent searches title [NoQuery]" value:@"localized string not found" table:0];
    [(MapsThemeLabel *)v3->_titleLabel setText:v9];

    [DynamicTypeWizard autorefreshLabel:v3->_titleLabel withFontProvider:&stru_10165D948];
    v10 = +[UIColor labelColor];
    [(MapsThemeLabel *)v3->_titleLabel setTextColor:v10];

    [(MapsThemeLabel *)v3->_titleLabel setTextAlignment:1];
    [(MapsThemeLabel *)v3->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [(MapsThemeLabel *)v3->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(MapsThemeLabel *)v3->_titleLabel setMinimumScaleFactor:0.699999988];
    [v5 addSubview:v3->_titleLabel];
    v11 = objc_alloc_init(MapsThemeLabel);
    contentLabel = v3->_contentLabel;
    v3->_contentLabel = v11;

    [(MapsThemeLabel *)v3->_contentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeLabel *)v3->_contentLabel setNumberOfLines:0];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"No recent searches message [NoQuery]" value:@"localized string not found" table:0];
    [(MapsThemeLabel *)v3->_contentLabel setText:v14];

    [DynamicTypeWizard autorefreshLabel:v3->_contentLabel withFontProvider:&stru_10165D908];
    v15 = +[UIColor secondaryLabelColor];
    [(MapsThemeLabel *)v3->_contentLabel setTextColor:v15];

    [(MapsThemeLabel *)v3->_contentLabel setTextAlignment:1];
    [(MapsThemeLabel *)v3->_contentLabel setAllowsDefaultTighteningForTruncation:1];
    [(MapsThemeLabel *)v3->_contentLabel setAdjustsFontSizeToFitWidth:1];
    [(MapsThemeLabel *)v3->_contentLabel setMinimumScaleFactor:0.699999988];
    [v5 addSubview:v3->_contentLabel];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [[KeyboardAvoidingView alloc] initWithContentView:v5];
    [(NoRecentlySearchCollectionViewCell *)v3 setKeyboardAvoidingView:v16];

    keyboardAvoidingView = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    [keyboardAvoidingView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    keyboardAvoidingView2 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    [contentView addSubview:keyboardAvoidingView2];

    firstBaselineAnchor = [(MapsThemeLabel *)v3->_titleLabel firstBaselineAnchor];
    topAnchor = [v5 topAnchor];
    v22 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:56.0];
    [(NoRecentlySearchCollectionViewCell *)v3 setTitleLabelTopConstraint:v22];

    firstBaselineAnchor2 = [(MapsThemeLabel *)v3->_contentLabel firstBaselineAnchor];
    bottomAnchor = [(MapsThemeLabel *)v3->_titleLabel bottomAnchor];
    v25 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:20.0];
    [(NoRecentlySearchCollectionViewCell *)v3 setContentLabelTopConstraint:v25];

    leadingAnchor = [(MapsThemeLabel *)v3->_titleLabel leadingAnchor];
    v63 = v5;
    leadingAnchor2 = [v5 leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v65[0] = v60;
    trailingAnchor = [(MapsThemeLabel *)v3->_titleLabel trailingAnchor];
    trailingAnchor2 = [v5 trailingAnchor];
    v57 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v65[1] = v57;
    titleLabelTopConstraint = [(NoRecentlySearchCollectionViewCell *)v3 titleLabelTopConstraint];
    v65[2] = titleLabelTopConstraint;
    leadingAnchor3 = [(MapsThemeLabel *)v3->_contentLabel leadingAnchor];
    leadingAnchor4 = [(MapsThemeLabel *)v3->_titleLabel leadingAnchor];
    v53 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v65[3] = v53;
    trailingAnchor3 = [(MapsThemeLabel *)v3->_contentLabel trailingAnchor];
    trailingAnchor4 = [(MapsThemeLabel *)v3->_titleLabel trailingAnchor];
    v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v65[4] = v50;
    contentLabelTopConstraint = [(NoRecentlySearchCollectionViewCell *)v3 contentLabelTopConstraint];
    v65[5] = contentLabelTopConstraint;
    keyboardAvoidingView3 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    leadingAnchor5 = [keyboardAvoidingView3 leadingAnchor];
    contentView2 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    leadingAnchor6 = [contentView2 leadingAnchor];
    v44 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v65[6] = v44;
    keyboardAvoidingView4 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    trailingAnchor5 = [keyboardAvoidingView4 trailingAnchor];
    contentView3 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    trailingAnchor6 = [contentView3 trailingAnchor];
    v39 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v65[7] = v39;
    keyboardAvoidingView5 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    topAnchor2 = [keyboardAvoidingView5 topAnchor];
    contentView4 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    topAnchor3 = [contentView4 topAnchor];
    v28 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v65[8] = v28;
    keyboardAvoidingView6 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    bottomAnchor2 = [keyboardAvoidingView6 bottomAnchor];
    contentView5 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    bottomAnchor3 = [contentView5 bottomAnchor];
    v33 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v65[9] = v33;
    v34 = [NSArray arrayWithObjects:v65 count:10];
    [NSLayoutConstraint activateConstraints:v34];

    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v3 selector:"_contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end