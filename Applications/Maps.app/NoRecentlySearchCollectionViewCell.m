@interface NoRecentlySearchCollectionViewCell
+ (id)identifier;
- (NoRecentlySearchCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_contentSizeCategoryDidChange;
- (void)clearHeightConstraint;
- (void)layoutSubviews;
- (void)setHeightConstraint:(double)a3 withPriority:(float)a4;
@end

@implementation NoRecentlySearchCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NoRecentlySearchCollectionViewCell;
  [(NoRecentlySearchCollectionViewCell *)&v4 layoutSubviews];
  v3 = [(NoRecentlySearchCollectionViewCell *)self keyboardAvoidingView];
  [v3 updateForKeyboardFrame];
}

- (void)setHeightConstraint:(double)a3 withPriority:(float)a4
{
  v7 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
  if (v7)
  {
    v8 = v7;
    v9 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    [v9 priority];
    if (v10 == a4)
    {
    }

    else
    {
      v11 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
      [v11 priority];
      v13 = v12;

      if (v13 == 1000.0 || a4 == 1000.0)
      {
        [(NoRecentlySearchCollectionViewCell *)self clearHeightConstraint];
      }
    }
  }

  v14 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];

  if (v14)
  {
    v15 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    [v15 setConstant:a3];

    v16 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    [v16 priority];
    v18 = v17;

    if (v18 == a4)
    {
      return;
    }

    v25 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    *&v19 = a4;
    [v25 setPriority:v19];
  }

  else
  {
    v20 = [(NoRecentlySearchCollectionViewCell *)self contentView];
    v21 = [v20 heightAnchor];
    v22 = [v21 constraintEqualToConstant:a3];
    [(NoRecentlySearchCollectionViewCell *)self setHeightConstraint:v22];

    v23 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    *&v24 = a4;
    [v23 setPriority:v24];

    v25 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
    [v25 setActive:1];
  }
}

- (void)_contentSizeCategoryDidChange
{
  v3 = [(NoRecentlySearchCollectionViewCell *)self contentLabel];
  v4 = [v3 font];
  [v4 _mapkit_scaledValueForValue:20.0];
  v6 = v5;
  v7 = [(NoRecentlySearchCollectionViewCell *)self contentLabelTopConstraint];
  [v7 setConstant:v6];

  v12 = [(NoRecentlySearchCollectionViewCell *)self titleLabel];
  v8 = [v12 font];
  [v8 _mapkit_scaledValueForValue:56.0];
  v10 = v9;
  v11 = [(NoRecentlySearchCollectionViewCell *)self titleLabelTopConstraint];
  [v11 setConstant:v10];
}

- (void)clearHeightConstraint
{
  v2 = [(NoRecentlySearchCollectionViewCell *)self heightConstraint];
  [v2 setActive:0];
}

- (NoRecentlySearchCollectionViewCell)initWithFrame:(CGRect)a3
{
  v64.receiver = self;
  v64.super_class = NoRecentlySearchCollectionViewCell;
  v3 = [(NoRecentlySearchCollectionViewCell *)&v64 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v17 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    v19 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    [v18 addSubview:v19];

    v20 = [(MapsThemeLabel *)v3->_titleLabel firstBaselineAnchor];
    v21 = [v5 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:56.0];
    [(NoRecentlySearchCollectionViewCell *)v3 setTitleLabelTopConstraint:v22];

    v23 = [(MapsThemeLabel *)v3->_contentLabel firstBaselineAnchor];
    v24 = [(MapsThemeLabel *)v3->_titleLabel bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:20.0];
    [(NoRecentlySearchCollectionViewCell *)v3 setContentLabelTopConstraint:v25];

    v62 = [(MapsThemeLabel *)v3->_titleLabel leadingAnchor];
    v63 = v5;
    v61 = [v5 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61 constant:16.0];
    v65[0] = v60;
    v59 = [(MapsThemeLabel *)v3->_titleLabel trailingAnchor];
    v58 = [v5 trailingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:-16.0];
    v65[1] = v57;
    v56 = [(NoRecentlySearchCollectionViewCell *)v3 titleLabelTopConstraint];
    v65[2] = v56;
    v55 = [(MapsThemeLabel *)v3->_contentLabel leadingAnchor];
    v54 = [(MapsThemeLabel *)v3->_titleLabel leadingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v65[3] = v53;
    v52 = [(MapsThemeLabel *)v3->_contentLabel trailingAnchor];
    v51 = [(MapsThemeLabel *)v3->_titleLabel trailingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v65[4] = v50;
    v49 = [(NoRecentlySearchCollectionViewCell *)v3 contentLabelTopConstraint];
    v65[5] = v49;
    v48 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    v46 = [v48 leadingAnchor];
    v47 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    v45 = [v47 leadingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v65[6] = v44;
    v43 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    v41 = [v43 trailingAnchor];
    v42 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    v40 = [v42 trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v65[7] = v39;
    v38 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    v37 = [v38 topAnchor];
    v26 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    v27 = [v26 topAnchor];
    v28 = [v37 constraintEqualToAnchor:v27];
    v65[8] = v28;
    v29 = [(NoRecentlySearchCollectionViewCell *)v3 keyboardAvoidingView];
    v30 = [v29 bottomAnchor];
    v31 = [(NoRecentlySearchCollectionViewCell *)v3 contentView];
    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
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