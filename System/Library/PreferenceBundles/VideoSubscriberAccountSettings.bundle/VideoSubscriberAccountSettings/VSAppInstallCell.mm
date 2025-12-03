@interface VSAppInstallCell
+ (PSSpecifier)specifier;
- (BOOL)isAccessibilityElement;
- (BOOL)lockupViewShouldSupportDSIDLessInstalls:(id)installs;
- (BOOL)shouldDisplayPrivacySwitch;
- (VSAppInstallCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)cachedRequest;
- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer;
- (id)viewModel;
- (void)_updateSubviewsWithPrivacyState:(int64_t)state;
- (void)activateConstraints;
- (void)createConstraints;
- (void)dealloc;
- (void)displayPrivacySwitchIfNeeded;
- (void)layoutSubviews;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)prepareForReuse;
- (void)setCellHeight:(double)height;
- (void)setDisplayPrivacySwitch:(BOOL)switch;
- (void)setSpecifier:(id)specifier;
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

- (VSAppInstallCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v19.receiver = self;
  v19.super_class = VSAppInstallCell;
  v9 = [(VSAppInstallCell *)&v19 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [[ASCLockupView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v10 setDelegate:v9];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [specifierCopy propertyForKey:@"VSAppInstallCellLockupGroupKey"];
    [v10 setGroup:v11];
    lockupView = v9->_lockupView;
    v9->_lockupView = v10;
    v13 = v10;

    v14 = objc_alloc_init(VSBindableSwitch);
    privacySwitch = v9->_privacySwitch;
    v9->_privacySwitch = v14;
    v16 = v14;

    contentView = [(VSAppInstallCell *)v9 contentView];
    [contentView addSubview:v9->_lockupView];

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
  lockupView = [(VSAppInstallCell *)self lockupView];
  [lockupView setLockup:0];
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSAppInstallCell;
  [(VSAppInstallCell *)&v3 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = VSAppInstallCell;
  [(VSAppInstallCell *)&v9 setSpecifier:specifier];
  viewModel = [(VSAppInstallCell *)self viewModel];
  privacySwitch = [(VSAppInstallCell *)self privacySwitch];
  if (viewModel)
  {
    v6 = VSMainConcurrencyBindingOptions();
    [(VSAppInstallCell *)self vs_bind:@"privacyState" toObject:viewModel withKeyPath:@"privacyState" options:v6];

    v7 = VSMainConcurrencyBindingOptions();
    [privacySwitch vs_bind:@"enabled" toObject:viewModel withKeyPath:@"canChangePrivacyAccess" options:v7];

    v8 = VSMainConcurrencyBindingOptions();
    [privacySwitch vs_bind:@"on" toObject:viewModel withKeyPath:@"accessGranted" options:v8];
  }

  else
  {
    [(VSAppInstallCell *)self vs_unbind:@"privacyState"];
    [privacySwitch vs_unbind:@"enabled"];
    [privacySwitch vs_unbind:@"on"];
  }
}

- (id)viewModel
{
  specifier = [(VSAppInstallCell *)self specifier];
  v3 = [specifier propertyForKey:@"VSAppSettingsViewModel"];

  return v3;
}

- (id)cachedRequest
{
  specifier = [(VSAppInstallCell *)self specifier];
  v3 = [specifier propertyForKey:@"VSAppInstallCellCachedRequestKey"];

  return v3;
}

- (void)_updateSubviewsWithPrivacyState:(int64_t)state
{
  lockupView = [(VSAppInstallCell *)self lockupView];
  viewModel = [(VSAppInstallCell *)self viewModel];
  v5 = viewModel;
  if (viewModel)
  {
    if ([viewModel isDecided])
    {
      v6 = [ASCArtwork alloc];
      icon = [v5 icon];
      cachedRequest = [v6 initWithImage:icon decoration:ASCArtworkDecorationRoundedRect];

      v9 = [[ASCAdamID alloc] initWithInt64:-1];
      v10 = [ASCLockup alloc];
      v11 = ASCLockupKindApp;
      displayName = [v5 displayName];
      decidedLockupSubtitle = [v5 decidedLockupSubtitle];
      v14 = [v10 initWithID:v9 kind:v11 metrics:0 icon:cachedRequest heading:0 title:displayName subtitle:decidedLockupSubtitle ageRating:0 offer:0];

      [lockupView setAutomaticallyPresentsProductDetails:0];
      [lockupView setLockup:v14];
      [(VSAppInstallCell *)self displayPrivacySwitchIfNeeded];
    }

    else
    {
      cachedRequest = [(VSAppInstallCell *)self cachedRequest];
      if (!cachedRequest)
      {
        adamID = [v5 adamID];
        cachedRequest = [ASCLockupRequest tvProviderLockupRequestWithAdamID:adamID];
      }

      [lockupView setRequest:cachedRequest];
    }
  }

  [(VSAppInstallCell *)self updateCellHeight];
}

- (void)setDisplayPrivacySwitch:(BOOL)switch
{
  switchCopy = switch;
  privacySwitch = [(VSAppInstallCell *)self privacySwitch];
  v14 = privacySwitch;
  if (switchCopy)
  {
    v6 = privacySwitch;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(VSAppInstallCell *)self setAccessoryView:v7];
  [(VSAppInstallCell *)self setNeedsUpdateConstraints];
  lockupView = [(VSAppInstallCell *)self lockupView];
  [lockupView setAutomaticallyPresentsProductDetails:!switchCopy];
  v9 = +[NSBundle vs_frameworkBundle];
  v10 = [v9 localizedStringForKey:@"ACCOUNT_ACCESS_FOR_APP_FORMAT" value:0 table:0];

  lockup = [lockupView lockup];
  title = [lockup title];
  v13 = [NSString stringWithFormat:v10, title];
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
  trailingMargin = [(VSAppInstallCell *)self trailingMargin];
  [trailingMargin setActive:0];

  [(VSAppInstallCell *)self createConstraints];
  [(VSAppInstallCell *)self activateConstraints];
}

- (void)createConstraints
{
  lockupView = [(VSAppInstallCell *)self lockupView];
  accessoryView = [(VSAppInstallCell *)self accessoryView];
  superview = [accessoryView superview];
  if (superview)
  {
    [accessoryView leadingAnchor];
  }

  else
  {
    [(VSAppInstallCell *)self trailingAnchor];
  }
  v5 = ;

  leadingAnchor = [lockupView leadingAnchor];
  leadingAnchor2 = [(VSAppInstallCell *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];

  [(VSAppInstallCell *)self setLeadingMargin:v8];
  topAnchor = [lockupView topAnchor];
  topAnchor2 = [(VSAppInstallCell *)self topAnchor];
  v11 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];

  [(VSAppInstallCell *)self setTopMargin:v11];
  trailingAnchor = [lockupView trailingAnchor];
  v13 = [v5 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];

  [(VSAppInstallCell *)self setTrailingMargin:v13];
}

- (void)activateConstraints
{
  leadingMargin = [(VSAppInstallCell *)self leadingMargin];
  topMargin = [(VSAppInstallCell *)self topMargin];
  v7[1] = topMargin;
  trailingMargin = [(VSAppInstallCell *)self trailingMargin];
  v7[2] = trailingMargin;
  v6 = [NSArray arrayWithObjects:v7 count:3];
  [NSLayoutConstraint activateConstraints:v6];
}

- (void)setCellHeight:(double)height
{
  specifier = [(VSAppInstallCell *)self specifier];
  v4 = [NSNumber numberWithDouble:height];
  [specifier setProperty:v4 forKey:PSTableCellHeightKey];
}

- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer
{
  v5 = ASCAppStateDownloadable;
  v6 = [NSNull null:view];
  v7 = [NSSet setWithObjects:v5, v6, 0];

  v8 = [NSSet setWithObjects:ASCAppStateOpenable, 0];
  v9 = [NSSet setWithObjects:ASCAppStateUpdatable, 0];
  appState = [(VSAppInstallCell *)self appState];
  if (appState)
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
  privacyState = [(VSAppInstallCell *)self privacyState];

  return [(VSAppInstallCell *)self shouldDisplayPrivacySwitch:privacyState];
}

- (void)displayPrivacySwitchIfNeeded
{
  shouldDisplayPrivacySwitch = [(VSAppInstallCell *)self shouldDisplayPrivacySwitch];

  [(VSAppInstallCell *)self setDisplayPrivacySwitch:shouldDisplayPrivacySwitch];
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  if ([(VSAppInstallCell *)self shouldDisplayPrivacySwitch])
  {
    lockup = [requestCopy lockup];
    v5 = [lockup lockupWithOffer:0];
    [requestCopy setLockup:v5];
  }

  [(VSAppInstallCell *)self displayPrivacySwitchIfNeeded];
}

- (void)updateCellHeight
{
  lockupView = [(VSAppInstallCell *)self lockupView];
  [lockupView intrinsicContentSize];
  v4 = v3;
  topMargin = [(VSAppInstallCell *)self topMargin];
  [topMargin constant];
  [(VSAppInstallCell *)self setCellHeight:v4 + v6 * 2.0];
}

- (BOOL)lockupViewShouldSupportDSIDLessInstalls:(id)installs
{
  viewModel = [(VSAppInstallCell *)self viewModel];
  forceDSIDlessInstall = [viewModel forceDSIDlessInstall];

  return forceDSIDlessInstall;
}

- (BOOL)isAccessibilityElement
{
  privacyState = [(VSAppInstallCell *)self privacyState];

  return [(VSAppInstallCell *)self shouldDisplayPrivacySwitch:privacyState];
}

- (id)accessibilityLabel
{
  lockupView = [(VSAppInstallCell *)self lockupView];
  accessibilityLabel = [lockupView accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  lockupView = [(VSAppInstallCell *)self lockupView];
  accessibilityValue = [lockupView accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityHint
{
  if ([(VSAppInstallCell *)self shouldDisplayPrivacySwitch:[(VSAppInstallCell *)self privacyState]])
  {
    v3 = +[NSBundle vs_frameworkBundle];
    lockupView3 = [v3 localizedStringForKey:@"ACCOUNT_ACCESS_FOR_APP_FORMAT" value:0 table:0];

    lockupView = [(VSAppInstallCell *)self lockupView];
    lockup = [lockupView lockup];
    title = [lockup title];

    if (title)
    {
      accessibilityHint = [NSString stringWithFormat:lockupView3, title];
    }

    else
    {
      lockupView2 = [(VSAppInstallCell *)self lockupView];
      accessibilityHint = [lockupView2 accessibilityHint];
    }
  }

  else
  {
    lockupView3 = [(VSAppInstallCell *)self lockupView];
    accessibilityHint = [lockupView3 accessibilityHint];
  }

  return accessibilityHint;
}

- (id)accessibilityElements
{
  v3 = +[NSMutableArray array];
  lockupView = [(VSAppInstallCell *)self lockupView];
  [v3 addObject:lockupView];

  v5 = [v3 copy];

  return v5;
}

@end