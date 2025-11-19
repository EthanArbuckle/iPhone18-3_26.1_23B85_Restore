@interface VSAppInstallCell
+ (PSSpecifier)specifier;
- (BOOL)isAccessibilityElement;
- (BOOL)lockupViewShouldSupportDSIDLessInstalls:(id)a3;
- (BOOL)shouldDisplayPrivacySwitch;
- (VSAppInstallCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)cachedRequest;
- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4;
- (id)viewModel;
- (void)_updateSubviewsWithPrivacyState:(int64_t)a3;
- (void)activateConstraints;
- (void)createConstraints;
- (void)dealloc;
- (void)displayPrivacySwitchIfNeeded;
- (void)layoutSubviews;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)prepareForReuse;
- (void)setCellHeight:(double)a3;
- (void)setDisplayPrivacySwitch:(BOOL)a3;
- (void)setSpecifier:(id)a3;
- (void)updateCellHeight;
- (void)updateConstraints;
@end

@implementation VSAppInstallCell

+ (PSSpecifier)specifier
{
  VSRequireMainThread();
  v2 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v2 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v2 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  return v2;
}

- (VSAppInstallCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v19.receiver = self;
  v19.super_class = VSAppInstallCell;
  v9 = [(VSAppInstallCell *)&v19 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [[ASCLockupView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v10 setDelegate:v9];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v8 propertyForKey:@"VSAppInstallCellLockupGroupKey"];
    [v10 setGroup:v11];
    lockupView = v9->_lockupView;
    v9->_lockupView = v10;
    v13 = v10;

    v14 = objc_alloc_init(VSBindableSwitch);
    privacySwitch = v9->_privacySwitch;
    v9->_privacySwitch = v14;
    v16 = v14;

    v17 = [(VSAppInstallCell *)v9 contentView];
    [v17 addSubview:v9->_lockupView];

    [(VSAppInstallCell *)v9 setNeedsUpdateConstraints];
    [(VSAppInstallCell *)v9 updateConstraintsIfNeeded];
    [(VSAppInstallCell *)v9 _updateSubviewsWithPrivacyState:0];
    [(VSAppInstallCell *)v9 setSelectionStyle:0];
  }

  return v9;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = VSAppInstallCell;
  [(VSAppInstallCell *)&v4 prepareForReuse];
  v3 = [(VSAppInstallCell *)self lockupView];
  [v3 setLockup:0];
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSAppInstallCell;
  [(VSAppInstallCell *)&v3 dealloc];
}

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = VSAppInstallCell;
  [(VSAppInstallCell *)&v9 setSpecifier:a3];
  v4 = [(VSAppInstallCell *)self viewModel];
  v5 = [(VSAppInstallCell *)self privacySwitch];
  if (v4)
  {
    v6 = VSMainConcurrencyBindingOptions();
    [(VSAppInstallCell *)self vs_bind:@"privacyState" toObject:v4 withKeyPath:@"privacyState" options:v6];

    v7 = VSMainConcurrencyBindingOptions();
    [v5 vs_bind:@"enabled" toObject:v4 withKeyPath:@"canChangePrivacyAccess" options:v7];

    v8 = VSMainConcurrencyBindingOptions();
    [v5 vs_bind:@"on" toObject:v4 withKeyPath:@"accessGranted" options:v8];
  }

  else
  {
    [(VSAppInstallCell *)self vs_unbind:@"privacyState"];
    [v5 vs_unbind:@"enabled"];
    [v5 vs_unbind:@"on"];
  }
}

- (id)viewModel
{
  v2 = [(VSAppInstallCell *)self specifier];
  v3 = [v2 propertyForKey:@"VSAppSettingsViewModel"];

  return v3;
}

- (id)cachedRequest
{
  v2 = [(VSAppInstallCell *)self specifier];
  v3 = [v2 propertyForKey:@"VSAppInstallCellCachedRequestKey"];

  return v3;
}

- (void)_updateSubviewsWithPrivacyState:(int64_t)a3
{
  v16 = [(VSAppInstallCell *)self lockupView];
  v4 = [(VSAppInstallCell *)self viewModel];
  v5 = v4;
  if (v4)
  {
    if ([v4 isDecided])
    {
      v6 = [ASCArtwork alloc];
      v7 = [v5 icon];
      v8 = [v6 initWithImage:v7 decoration:ASCArtworkDecorationRoundedRect];

      v9 = [[ASCAdamID alloc] initWithInt64:-1];
      v10 = [ASCLockup alloc];
      v11 = ASCLockupKindApp;
      v12 = [v5 displayName];
      v13 = [v5 decidedLockupSubtitle];
      v14 = [v10 initWithID:v9 kind:v11 metrics:0 icon:v8 heading:0 title:v12 subtitle:v13 ageRating:0 offer:0];

      [v16 setAutomaticallyPresentsProductDetails:0];
      [v16 setLockup:v14];
      [(VSAppInstallCell *)self displayPrivacySwitchIfNeeded];
    }

    else
    {
      v8 = [(VSAppInstallCell *)self cachedRequest];
      if (!v8)
      {
        v15 = [v5 adamID];
        v8 = [ASCLockupRequest tvProviderLockupRequestWithAdamID:v15];
      }

      [v16 setRequest:v8];
    }
  }

  [(VSAppInstallCell *)self updateCellHeight];
}

- (void)setDisplayPrivacySwitch:(BOOL)a3
{
  v3 = a3;
  v5 = [(VSAppInstallCell *)self privacySwitch];
  v14 = v5;
  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(VSAppInstallCell *)self setAccessoryView:v7];
  [(VSAppInstallCell *)self setNeedsUpdateConstraints];
  v8 = [(VSAppInstallCell *)self lockupView];
  [v8 setAutomaticallyPresentsProductDetails:!v3];
  v9 = +[NSBundle vs_frameworkBundle];
  v10 = [v9 localizedStringForKey:@"ACCOUNT_ACCESS_FOR_APP_FORMAT" value:0 table:0];

  v11 = [v8 lockup];
  v12 = [v11 title];
  v13 = [NSString stringWithFormat:v10, v12];
  [v14 setAccessibilityHint:v13];
}

- (void)layoutSubviews
{
  [(VSAppInstallCell *)self _updateSubviewsWithPrivacyState:[(VSAppInstallCell *)self privacyState]];
  v3.receiver = self;
  v3.super_class = VSAppInstallCell;
  [(VSAppInstallCell *)&v3 layoutSubviews];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = VSAppInstallCell;
  [(VSAppInstallCell *)&v4 updateConstraints];
  v3 = [(VSAppInstallCell *)self trailingMargin];
  [v3 setActive:0];

  [(VSAppInstallCell *)self createConstraints];
  [(VSAppInstallCell *)self activateConstraints];
}

- (void)createConstraints
{
  v14 = [(VSAppInstallCell *)self lockupView];
  v3 = [(VSAppInstallCell *)self accessoryView];
  v4 = [v3 superview];
  if (v4)
  {
    [v3 leadingAnchor];
  }

  else
  {
    [(VSAppInstallCell *)self trailingAnchor];
  }
  v5 = ;

  v6 = [v14 leadingAnchor];
  v7 = [(VSAppInstallCell *)self leadingAnchor];
  v8 = [v6 constraintEqualToSystemSpacingAfterAnchor:v7 multiplier:1.0];

  [(VSAppInstallCell *)self setLeadingMargin:v8];
  v9 = [v14 topAnchor];
  v10 = [(VSAppInstallCell *)self topAnchor];
  v11 = [v9 constraintEqualToSystemSpacingBelowAnchor:v10 multiplier:1.0];

  [(VSAppInstallCell *)self setTopMargin:v11];
  v12 = [v14 trailingAnchor];
  v13 = [v5 constraintEqualToSystemSpacingAfterAnchor:v12 multiplier:1.0];

  [(VSAppInstallCell *)self setTrailingMargin:v13];
}

- (void)activateConstraints
{
  v3 = [(VSAppInstallCell *)self leadingMargin];
  v4 = [(VSAppInstallCell *)self topMargin];
  v7[1] = v4;
  v5 = [(VSAppInstallCell *)self trailingMargin];
  v7[2] = v5;
  v6 = [NSArray arrayWithObjects:v7 count:3];
  [NSLayoutConstraint activateConstraints:v6];
}

- (void)setCellHeight:(double)a3
{
  v5 = [(VSAppInstallCell *)self specifier];
  v4 = [NSNumber numberWithDouble:a3];
  [v5 setProperty:v4 forKey:PSTableCellHeightKey];
}

- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4
{
  v5 = ASCAppStateDownloadable;
  v6 = [NSNull null:a3];
  v7 = [NSSet setWithObjects:v5, v6, 0];

  v8 = [NSSet setWithObjects:ASCAppStateOpenable, 0];
  v9 = [NSSet setWithObjects:ASCAppStateUpdatable, 0];
  v10 = [(VSAppInstallCell *)self appState];
  if (v10)
  {
    [(VSAppInstallCell *)self appState];
  }

  else
  {
    +[NSNull null];
  }
  v11 = ;

  if ([v7 containsObject:v11])
  {
    v12 = &VSMetricClickTargetInstallApp;
    goto LABEL_10;
  }

  if ([v8 containsObject:v11])
  {
    v12 = &VSMetricClickTargetOpenApp;
    goto LABEL_10;
  }

  if ([v9 containsObject:v11])
  {
    v12 = &VSMetricClickTargetUpdateApp;
LABEL_10:
    v13 = *v12;
    v14 = v13;
    if (v13)
    {
      v15 = v13 == VSMetricClickTargetUpdateApp;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      [VSMetricsManagerObjC recordClickEventWithPage:VSMetricPageSettingsAccountInfo pageType:VSMetricPageTypeSettings target:v13];
    }

    goto LABEL_18;
  }

  v16 = VSErrorLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_B8F8(v11, v16);
  }

  v14 = 0;
LABEL_18:
  v17 = objc_alloc_init(ASCMetricsActivity);

  return v17;
}

- (BOOL)shouldDisplayPrivacySwitch
{
  v3 = [(VSAppInstallCell *)self privacyState];

  return [(VSAppInstallCell *)self shouldDisplayPrivacySwitch:v3];
}

- (void)displayPrivacySwitchIfNeeded
{
  v3 = [(VSAppInstallCell *)self shouldDisplayPrivacySwitch];

  [(VSAppInstallCell *)self setDisplayPrivacySwitch:v3];
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v6 = a3;
  if ([(VSAppInstallCell *)self shouldDisplayPrivacySwitch])
  {
    v4 = [v6 lockup];
    v5 = [v4 lockupWithOffer:0];
    [v6 setLockup:v5];
  }

  [(VSAppInstallCell *)self displayPrivacySwitchIfNeeded];
}

- (void)updateCellHeight
{
  v7 = [(VSAppInstallCell *)self lockupView];
  [v7 intrinsicContentSize];
  v4 = v3;
  v5 = [(VSAppInstallCell *)self topMargin];
  [v5 constant];
  [(VSAppInstallCell *)self setCellHeight:v4 + v6 * 2.0];
}

- (BOOL)lockupViewShouldSupportDSIDLessInstalls:(id)a3
{
  v3 = [(VSAppInstallCell *)self viewModel];
  v4 = [v3 forceDSIDlessInstall];

  return v4;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(VSAppInstallCell *)self privacyState];

  return [(VSAppInstallCell *)self shouldDisplayPrivacySwitch:v3];
}

- (id)accessibilityLabel
{
  v2 = [(VSAppInstallCell *)self lockupView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(VSAppInstallCell *)self lockupView];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityHint
{
  if ([(VSAppInstallCell *)self shouldDisplayPrivacySwitch:[(VSAppInstallCell *)self privacyState]])
  {
    v3 = +[NSBundle vs_frameworkBundle];
    v4 = [v3 localizedStringForKey:@"ACCOUNT_ACCESS_FOR_APP_FORMAT" value:0 table:0];

    v5 = [(VSAppInstallCell *)self lockupView];
    v6 = [v5 lockup];
    v7 = [v6 title];

    if (v7)
    {
      v8 = [NSString stringWithFormat:v4, v7];
    }

    else
    {
      v9 = [(VSAppInstallCell *)self lockupView];
      v8 = [v9 accessibilityHint];
    }
  }

  else
  {
    v4 = [(VSAppInstallCell *)self lockupView];
    v8 = [v4 accessibilityHint];
  }

  return v8;
}

- (id)accessibilityElements
{
  v3 = +[NSMutableArray array];
  v4 = [(VSAppInstallCell *)self lockupView];
  [v3 addObject:v4];

  v5 = [v3 copy];

  return v5;
}

@end