@interface MFConversationItemHeaderBlock
+ (OS_os_log)log;
- (BOOL)_shouldHideAvatar;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldDecorateAtomListWithSMIMEStatus:(id)status;
- (MFConversationItemHeaderBlock)initWithFrame:(CGRect)frame contactStore:(id)store;
- (MFConversationItemHeaderBlockDelegate)delegate;
- (id)_bimiLearnMoreMenuWithSenderDomain:(id)domain;
- (id)_checkmarkAttributedString;
- (id)_formattedBIMIStringWithSenderDomain:(id)domain isEnabled:(BOOL)enabled;
- (id)_subheadFont;
- (id)expandableCaptionView:(id)view displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated;
- (id)popoverManagerForExpandableCaptionView:(id)view;
- (id)presentingViewControllerForAvatarView:(id)view;
- (void)_addBIMILearnMoreButtonWithSenderDomain:(id)domain;
- (void)_addMessageInfoButton;
- (void)_clearAvatarViewConstraints;
- (void)_clearTimestampRevealActionsButtonConstraints;
- (void)_configureTimestampRevealActionsButtonConstraints;
- (void)_layoutHorizontalStatusIndicators:(CGRect)indicators;
- (void)_layoutStatusIndicatorsInRect:(CGRect)rect;
- (void)_primaryAddressAtomWasTapped:(id)tapped;
- (void)_resetHorizontalStatusIndicatorContentViewIfNeeded;
- (void)_revealActionsButtonTapped:(id)tapped;
- (void)_showMessageInfo;
- (void)_tappedHeader:(id)header;
- (void)_updateAvatarView;
- (void)_updateDisplayedContact;
- (void)_updateFonts;
- (void)_updateHorizontalStatusIndicators:(id)indicators;
- (void)_updateLabelColor;
- (void)_updateStackViewSpacing;
- (void)_updateStatusIndicators:(id)indicators;
- (void)_updateStyle;
- (void)_updateSubviewConstraints;
- (void)_updateTimestampLabels;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)model;
- (void)expandableCaptionView:(id)view didTapAtom:(id)atom forAtomType:(unint64_t)type;
- (void)expandableCaptionView:(id)view displayContactCardForAddressAtom:(id)atom atomType:(unint64_t)type;
- (void)expandableCaptionView:(id)view searchForDisplayName:(id)name emailAddresses:(id)addresses;
- (void)expandableCaptionView:(id)view willBecomeExpanded:(BOOL)expanded withAnimationCoordinator:(id)coordinator;
- (void)initializePrimaryLayoutConstraints;
- (void)iterateDisplayedAtomListsWithBlock:(id)block;
- (void)labelledAtomList:(id)list displayContactCardForAddressAtom:(id)atom;
- (void)labelledAtomList:(id)list searchForDisplayName:(id)name emailAddresses:(id)addresses;
- (void)layoutSubviews;
- (void)messageInfoViewController:(id)controller didSelectAddress:(id)address forAtomType:(unint64_t)type;
- (void)prepareForReuse;
- (void)setDisplayMetrics:(id)metrics;
- (void)setDisplayOptions:(int64_t)options;
- (void)setInteractivelyResizing:(BOOL)resizing;
- (void)setOtherSigners:(id)signers;
- (void)setShowsHeaderDetails:(BOOL)details animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation MFConversationItemHeaderBlock

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000071F8;
  block[3] = &unk_1000389B8;
  block[4] = self;
  if (qword_1000425B8 != -1)
  {
    dispatch_once(&qword_1000425B8, block);
  }

  v2 = qword_1000425B0;

  return v2;
}

- (MFConversationItemHeaderBlock)initWithFrame:(CGRect)frame contactStore:(id)store
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = MFConversationItemHeaderBlock;
  height = [(MFConversationItemHeaderBlock *)&v16 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(MFConversationItemHeaderBlock *)height setContactStore:storeCopy];
    v12 = +[NSUserDefaults standardUserDefaults];
    byte_1000425C0 = [v12 BOOLForKey:@"ShowMessageHeaderDetails"];

    v11->_showDetails = byte_1000425C0;
    messageInfoViewController = v11->_messageInfoViewController;
    v11->_messageInfoViewController = 0;

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v11 selector:"_fontMetricCacheDidInvalidate:" name:MFFontMetricCacheInvalidationNotification object:0];
  }

  [(MFConversationItemHeaderBlock *)v11 setAccessibilityIdentifier:MSAccessibilityIdentifierMailConversationViewHeaderBlock];

  return v11;
}

- (void)createPrimaryViews
{
  v58.receiver = self;
  v58.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v58 createPrimaryViews];
  v3 = +[UIStackView mf_baselineAlignedVerticalStackView];
  [(MFConversationItemHeaderBlock *)self setPrimaryStackView:v3];

  primaryStackView = [(MFConversationItemHeaderBlock *)self primaryStackView];
  [primaryStackView setAlignment:1];

  primaryStackView2 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  [(MFConversationItemHeaderBlock *)self addSubview:primaryStackView2];

  v6 = [UIDateLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MFConversationItemHeaderBlock *)self setTimestampLabel:v10];

  timestampLabel = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [timestampLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  timestampLabel2 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [timestampLabel2 setAdjustsFontForContentSizeCategory:1];

  timestampLabel3 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [timestampLabel3 accessibilitySetIdentification:@"MessageDateLabel"];

  [(MFConversationItemHeaderBlock *)self _updateLabelColor];
  v14 = [MFModernLabelledAtomList alloc];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"FROM_HEADER" value:&stru_1000392E0 table:@"Main"];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"FROM_TITLE" value:&stru_1000392E0 table:@"Main"];
  v19 = +[MFAddressBookManager sharedManager];
  v20 = [v14 initWithLabel:v16 title:v18 atomType:1 addressBook:{objc_msgSend(v19, "addressBook")}];
  [(MFConversationItemHeaderBlock *)self setPrimaryAtomList:v20];

  primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [primaryAtomList setDelegate:self];

  primaryAtomList2 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [primaryAtomList2 setPrimary:1];

  primaryAtomList3 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [primaryAtomList3 setLabelVisible:0];

  primaryStackView3 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  primaryAtomList4 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [primaryStackView3 addArrangedSubview:primaryAtomList4];

  height = [[MFExpandableCaptionView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MFConversationItemHeaderBlock *)self setCaptionView:height];

  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  [captionView setDelegate:self];

  captionView2 = [(MFConversationItemHeaderBlock *)self captionView];
  [captionView2 setShowsTimestampWhenExpanded:1];

  [(MFConversationItemHeaderBlock *)self setShowsBIMILearnMoreButton:1];
  primaryStackView4 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  captionView3 = [(MFConversationItemHeaderBlock *)self captionView];
  [primaryStackView4 addArrangedSubview:captionView3];

  if (self)
  {
    sub_10001D5B0(self);
  }

  +[MFMessageDisplayMetrics avatarDiameter];
  v32 = v31;
  if (MUISolariumFeatureEnabled())
  {
    v33 = [[MUIAvatarViewController alloc] initWithContacts:&__NSArray0__struct];
    [(MFConversationItemHeaderBlock *)self setAvatarController:v33];

    avatarController = [(MFConversationItemHeaderBlock *)self avatarController];
    view = [avatarController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    avatarController2 = [(MFConversationItemHeaderBlock *)self avatarController];
    view2 = [avatarController2 view];
    [(MFConversationItemHeaderBlock *)self setAvatarView:view2];
  }

  else
  {
    v38 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, v32, v32];
    [(MFConversationItemHeaderBlock *)self setMfAvatarView:v38];

    mfAvatarView = [(MFConversationItemHeaderBlock *)self mfAvatarView];
    [mfAvatarView setTranslatesAutoresizingMaskIntoConstraints:0];

    mfAvatarView2 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
    [mfAvatarView2 setShowsContactOnTap:1];

    mfAvatarView3 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
    [mfAvatarView3 setDelegate:self];

    avatarController2 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
    [(MFConversationItemHeaderBlock *)self setAvatarView:avatarController2];
  }

  [(MFConversationItemHeaderBlock *)self _updateAvatarView];
  if ([(MFConversationItemHeaderBlock *)self usingLargeTextLayout])
  {
    primaryStackView5 = [(MFConversationItemHeaderBlock *)self primaryStackView];
    timestampLabel4 = [(MFConversationItemHeaderBlock *)self timestampLabel];
    [primaryStackView5 addArrangedSubview:timestampLabel4];
  }

  else
  {
    timestampLabel5 = [(MFConversationItemHeaderBlock *)self timestampLabel];
    [(MFConversationItemHeaderBlock *)self addSubview:timestampLabel5];

    primaryStackView5 = [(MFConversationItemHeaderBlock *)self timestampLabel];
    v59 = primaryStackView5;
    timestampLabel4 = [NSArray arrayWithObjects:&v59 count:1];
    primaryAtomList5 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList5 setViewsToDodge:timestampLabel4];
  }

  v46 = objc_alloc_init(MessageViewStatusIndicatorManager);
  [(MFConversationItemHeaderBlock *)self setStatusIndicatorManager:v46];

  statusIndicatorManager = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
  [statusIndicatorManager setHidesVIPIndicator:1];

  v48 = objc_alloc_init(UILayoutGuide);
  [(MFConversationItemHeaderBlock *)self setStatusIndicatorLayoutGuide:v48];

  statusIndicatorLayoutGuide = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuide];
  [(MFConversationItemHeaderBlock *)self addLayoutGuide:statusIndicatorLayoutGuide];

  v50 = objc_alloc_init(UIView);
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MFConversationItemHeaderBlock *)self addSubview:v50];
  [(MFConversationItemHeaderBlock *)self setHorizontalStatusIndicatorContentView:v50];
  v51 = objc_alloc_init(MessageViewStatusIndicatorManager);
  [(MFConversationItemHeaderBlock *)self setHorizontalStatusIndicatorManager:v51];

  v52 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tappedHeader:"];
  [(MFConversationItemHeaderBlock *)self setTapRecognizer:v52];

  tapRecognizer = [(MFConversationItemHeaderBlock *)self tapRecognizer];
  [tapRecognizer setDelegate:self];

  tapRecognizer2 = [(MFConversationItemHeaderBlock *)self tapRecognizer];
  [(MFConversationItemHeaderBlock *)self addGestureRecognizer:tapRecognizer2];

  if (+[UIDevice mf_isPadIdiom])
  {
    delegate = [(MFConversationItemHeaderBlock *)self delegate];
    v56 = [delegate popoverManagerForForConversationItemHeader:self];

    primaryAtomList6 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v56 addPassthroughViewProvider:primaryAtomList6];
  }

  [(MFConversationItemHeaderBlock *)self _updateFonts];
}

- (void)initializePrimaryLayoutConstraints
{
  v57.receiver = self;
  v57.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v57 initializePrimaryLayoutConstraints];
  primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  timestampLabel = [(MFConversationItemHeaderBlock *)self timestampLabel];
  primaryStackView = [(MFConversationItemHeaderBlock *)self primaryStackView];
  horizontalStatusIndicatorContentView = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorContentView];
  statusIndicatorLayoutGuide = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuide];
  firstBaselineAnchor = [primaryStackView firstBaselineAnchor];
  topAnchor = [(MFConversationItemHeaderBlock *)self topAnchor];
  v5 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  [(MFConversationItemHeaderBlock *)self setTopConstraint:v5];

  bottomAnchor = [(MFConversationItemHeaderBlock *)self bottomAnchor];
  lastBaselineAnchor = [primaryStackView lastBaselineAnchor];
  v8 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor];
  [(MFConversationItemHeaderBlock *)self setBottomConstraint:v8];

  firstBaselineAnchor2 = [timestampLabel firstBaselineAnchor];
  firstBaselineAnchor3 = [primaryAtomList firstBaselineAnchor];
  v11 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3];
  v59[0] = v11;
  trailingAnchor = [timestampLabel trailingAnchor];
  trailingAnchor2 = [primaryStackView trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v59[1] = v14;
  v15 = [NSArray arrayWithObjects:v59 count:2];
  [(MFConversationItemHeaderBlock *)self setTimestampLabelConstraints:v15];

  trailingAnchor3 = [statusIndicatorLayoutGuide trailingAnchor];
  layoutMarginsGuide = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor];
  [(MFConversationItemHeaderBlock *)self setStatusIndicatorLayoutGuideTrailingConstraint:v19];

  topConstraint = [(MFConversationItemHeaderBlock *)self topConstraint];
  v58[0] = topConstraint;
  trailingAnchor4 = [primaryStackView trailingAnchor];
  layoutMarginsGuide2 = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
  trailingAnchor5 = [layoutMarginsGuide2 trailingAnchor];
  v42 = [trailingAnchor4 constraintEqualToAnchor:7.0 constant:?];
  v58[1] = v42;
  trailingAnchor6 = [primaryAtomList trailingAnchor];
  trailingAnchor7 = [primaryStackView trailingAnchor];
  v40 = [trailingAnchor6 constraintEqualToAnchor:?];
  v58[2] = v40;
  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  trailingAnchor8 = [captionView trailingAnchor];
  leadingAnchor2 = [horizontalStatusIndicatorContentView leadingAnchor];
  v37 = [trailingAnchor8 constraintEqualToAnchor:-16.0 constant:?];
  v58[3] = v37;
  bottomConstraint = [(MFConversationItemHeaderBlock *)self bottomConstraint];
  v58[4] = bottomConstraint;
  leadingAnchor3 = [statusIndicatorLayoutGuide leadingAnchor];
  leadingAnchor4 = [(MFConversationItemHeaderBlock *)self leadingAnchor];
  v34 = [leadingAnchor3 constraintEqualToAnchor:?];
  v58[5] = v34;
  statusIndicatorLayoutGuideTrailingConstraint = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuideTrailingConstraint];
  v58[6] = statusIndicatorLayoutGuideTrailingConstraint;
  topAnchor2 = [statusIndicatorLayoutGuide topAnchor];
  topAnchor3 = [(MFConversationItemHeaderBlock *)self topAnchor];
  v31 = [topAnchor2 constraintEqualToAnchor:?];
  v58[7] = v31;
  bottomAnchor2 = [statusIndicatorLayoutGuide bottomAnchor];
  firstBaselineAnchor4 = [primaryAtomList firstBaselineAnchor];
  v21 = [bottomAnchor2 constraintEqualToAnchor:firstBaselineAnchor4];
  v58[8] = v21;
  trailingAnchor9 = [horizontalStatusIndicatorContentView trailingAnchor];
  trailingAnchor10 = [primaryStackView trailingAnchor];
  v24 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v58[9] = v24;
  lastBaselineAnchor2 = [horizontalStatusIndicatorContentView lastBaselineAnchor];
  lastBaselineAnchor3 = [primaryStackView lastBaselineAnchor];
  v27 = [lastBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor3];
  v58[10] = v27;
  v28 = [NSArray arrayWithObjects:v58 count:11];
  v29 = [NSMutableArray arrayWithArray:v28];

  ef_flatten = [v29 ef_flatten];
  [NSLayoutConstraint activateConstraints:ef_flatten];
}

- (void)updateConstraints
{
  v62.receiver = self;
  v62.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v62 updateConstraints];
  _hasConversationLayout = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];
  displayMetrics = [(MFConversationItemHeaderBlock *)self displayMetrics];
  v5 = displayMetrics;
  if (_hasConversationLayout)
  {
    [displayMetrics messageTopPaddingInConversation];
    v7 = v6;
    displayMetrics2 = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [displayMetrics2 topToSenderBaselineInConversationForExpandedCell];
    v10 = v9;
    topConstraint = [(MFConversationItemHeaderBlock *)self topConstraint];
    [topConstraint setConstant:v7 + v10];

    displayMetrics3 = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [displayMetrics3 recipientBaselineToFirstSeparatorInConversation];
  }

  else
  {
    [displayMetrics topToSenderBaseline];
    v17 = v16;
    topConstraint2 = [(MFConversationItemHeaderBlock *)self topConstraint];
    [topConstraint2 setConstant:v17];

    displayMetrics3 = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [displayMetrics3 recipientBaselineToFirstSeparator];
  }

  v14 = v13;
  bottomConstraint = [(MFConversationItemHeaderBlock *)self bottomConstraint];
  [bottomConstraint setConstant:v14];

  if ([(MFConversationItemHeaderBlock *)self usingLargeTextLayout])
  {
    statusIndicatorLayoutGuideTrailingConstraint = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuideTrailingConstraint];
    [statusIndicatorLayoutGuideTrailingConstraint setConstant:0.0];
  }

  else if ([(MFConversationItemHeaderBlock *)self _displayOptionsHideAvatar])
  {
    statusIndicatorLayoutGuideTrailingConstraint = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuideTrailingConstraint];
    [statusIndicatorLayoutGuideTrailingConstraint setConstant:-6.0];
  }

  else
  {
    avatarViewConstraints = [(MFConversationItemHeaderBlock *)self avatarViewConstraints];
    v21 = avatarViewConstraints == 0;

    if (v21)
    {
      avatarView = [(MFConversationItemHeaderBlock *)self avatarView];
      bottomAnchor = [avatarView bottomAnchor];
      bottomAnchor2 = [(MFConversationItemHeaderBlock *)self bottomAnchor];
      v25 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      [(MFConversationItemHeaderBlock *)self setBottomToAvatarBottomConstraint:v25];

      topAnchor = [avatarView topAnchor];
      primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
      topAnchor2 = [primaryAtomList topAnchor];
      v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [(MFConversationItemHeaderBlock *)self setAvatarTopConstraint:v29];

      leadingAnchor = [avatarView leadingAnchor];
      layoutMarginsGuide = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v57 = [leadingAnchor constraintEqualToAnchor:-7.0 constant:?];
      v63[0] = v57;
      widthAnchor = [avatarView widthAnchor];
      trailingAccessoryViewLayoutGuide = [(MFConversationItemHeaderBlock *)self trailingAccessoryViewLayoutGuide];
      widthAnchor2 = [trailingAccessoryViewLayoutGuide widthAnchor];
      v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v63[1] = v31;
      heightAnchor = [avatarView heightAnchor];
      widthAnchor3 = [avatarView widthAnchor];
      v34 = [heightAnchor constraintEqualToAnchor:widthAnchor3];
      v63[2] = v34;
      avatarTopConstraint = [(MFConversationItemHeaderBlock *)self avatarTopConstraint];
      v63[3] = avatarTopConstraint;
      bottomToAvatarBottomConstraint = [(MFConversationItemHeaderBlock *)self bottomToAvatarBottomConstraint];
      v63[4] = bottomToAvatarBottomConstraint;
      v37 = [NSArray arrayWithObjects:v63 count:5];
      [(MFConversationItemHeaderBlock *)self setAvatarViewConstraints:v37];

      displayMetrics4 = [(MFConversationItemHeaderBlock *)self displayMetrics];
      [displayMetrics4 messageBottomPaddingInConversationForExpandedCell];
      v40 = v39;

      bottomToAvatarBottomConstraint2 = [(MFConversationItemHeaderBlock *)self bottomToAvatarBottomConstraint];
      v42 = bottomToAvatarBottomConstraint2;
      v43 = -v40;
      if (v40 < 0.0)
      {
        v43 = v40;
      }

      [bottomToAvatarBottomConstraint2 setConstant:v43];
    }

    avatarViewConstraints2 = [(MFConversationItemHeaderBlock *)self avatarViewConstraints];
    [NSLayoutConstraint activateConstraints:avatarViewConstraints2];

    statusIndicatorLayoutGuideTrailingConstraint2 = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuideTrailingConstraint];
    [statusIndicatorLayoutGuideTrailingConstraint2 setConstant:-7.0];

    statusIndicatorLayoutGuideTrailingConstraint = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [statusIndicatorLayoutGuideTrailingConstraint minHorizontalSpacing];
    v47 = v46;
    primaryStackViewLeadingConstraint = [(MFConversationItemHeaderBlock *)self primaryStackViewLeadingConstraint];
    [primaryStackViewLeadingConstraint setConstant:v47];
  }

  [(MFConversationItemHeaderBlock *)self _configureTimestampRevealActionsButtonConstraints];
  if (self && _os_feature_enabled_impl())
  {
    captionView = [(MFConversationItemHeaderBlock *)self captionView];
    isExpanded = [captionView isExpanded];

    messageInfoButton = [(MFConversationItemHeaderBlock *)self messageInfoButton];
    [messageInfoButton trailingAnchor];
    if (isExpanded)
      v52 = {;
      primaryStackView = [(MFConversationItemHeaderBlock *)self primaryStackView];
      trailingAnchor = [primaryStackView trailingAnchor];
      [v52 constraintEqualToAnchor:trailingAnchor];
    }

    else
      v52 = {;
      primaryStackView = [(MFConversationItemHeaderBlock *)self timestampLabel];
      trailingAnchor = [primaryStackView leadingAnchor];
      [v52 constraintEqualToAnchor:trailingAnchor constant:-8.0];
    }
    v55 = ;
    [v55 setActive:1];
  }
}

- (void)_clearTimestampRevealActionsButtonConstraints
{
  timestampLabelConstraints = [(MFConversationItemHeaderBlock *)self timestampLabelConstraints];

  if (timestampLabelConstraints)
  {
    timestampLabelConstraints2 = [(MFConversationItemHeaderBlock *)self timestampLabelConstraints];
    [NSLayoutConstraint deactivateConstraints:timestampLabelConstraints2];
  }

  [(MFConversationItemHeaderBlock *)self setActiveTimestampLabelConstraints:0];
}

- (void)_configureTimestampRevealActionsButtonConstraints
{
  revealActionsButton = [(MFConversationItemHeaderBlock *)self revealActionsButton];
  superview = [revealActionsButton superview];

  if (superview)
  {
    revealActionsButton2 = [(MFConversationItemHeaderBlock *)self revealActionsButton];
    [revealActionsButton2 removeFromSuperview];
  }

  if (([(MFConversationItemHeaderBlock *)self usingLargeTextLayout]& 1) != 0)
  {
    timestampLabelConstraints = 0;
  }

  else
  {
    timestampLabelConstraints = [(MFConversationItemHeaderBlock *)self timestampLabelConstraints];
  }

  v8 = timestampLabelConstraints;
  activeTimestampLabelConstraints = [(MFConversationItemHeaderBlock *)self activeTimestampLabelConstraints];

  if (v8 != activeTimestampLabelConstraints)
  {
    [(MFConversationItemHeaderBlock *)self _clearTimestampRevealActionsButtonConstraints];
    [(MFConversationItemHeaderBlock *)self setActiveTimestampLabelConstraints:v8];
    if (v8)
    {
      [NSLayoutConstraint activateConstraints:v8];
    }
  }
}

- (void)_revealActionsButtonTapped:(id)tapped
{
  delegate = [(MFConversationItemHeaderBlock *)self delegate];
  revealActionsButton = [(MFConversationItemHeaderBlock *)self revealActionsButton];
  [delegate conversationItemHeader:self didTapRevealActionsButton:revealActionsButton];
}

- (void)_updateStackViewSpacing
{
  _hasConversationLayout = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];
  displayMetrics = [(MFConversationItemHeaderBlock *)self displayMetrics];
  v10 = displayMetrics;
  if (_hasConversationLayout)
  {
    [displayMetrics baselineToBaselineSpacingInConversation];
  }

  else
  {
    [displayMetrics baselineToBaselineSpacing];
  }

  v6 = v5;

  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  if (([captionView isExpanded] & 1) != 0 || -[MFConversationItemHeaderBlock usingLargeTextLayout](self, "usingLargeTextLayout"))
  {
    _hasConversationLayout2 = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];

    if ((_hasConversationLayout2 & 1) == 0)
    {
      v8 = +[UIDevice mf_isPadIdiom];
      v9 = 8.0;
      if (v8)
      {
        v9 = 6.0;
      }

      v6 = v6 + v9;
    }
  }

  else
  {
  }

  captionView2 = [(MFConversationItemHeaderBlock *)self captionView];
  [captionView2 setListSpacing:v6];

  primaryStackView = [(MFConversationItemHeaderBlock *)self primaryStackView];
  [primaryStackView setSpacing:v6];

  primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [primaryAtomList setLineSpacing:v6];
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  v7.receiver = self;
  v7.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v7 setDisplayMetrics:metricsCopy];
  displayMetrics = [(MFConversationItemHeaderBlock *)self displayMetrics];

  if (displayMetrics)
  {
    [(MFConversationItemHeaderBlock *)self _updateStackViewSpacing];
    [(MFConversationItemHeaderBlock *)self _clearAvatarViewConstraints];
    [(MFConversationItemHeaderBlock *)self setNeedsUpdateConstraints];
    [(MFConversationItemHeaderBlock *)self updateConstraintsIfNeeded];
    avatarView = [(MFConversationItemHeaderBlock *)self avatarView];
    [avatarView layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v8 layoutSubviews];
  statusIndicatorLayoutGuide = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuide];
  statusIndicatorManager = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
  effectiveIndicatorOptions = [statusIndicatorManager effectiveIndicatorOptions];

  if (effectiveIndicatorOptions)
  {
    [statusIndicatorLayoutGuide layoutFrame];
    [(MFConversationItemHeaderBlock *)self _layoutStatusIndicatorsInRect:?];
  }

  horizontalStatusIndicatorManager = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorManager];
  effectiveIndicatorOptions2 = [horizontalStatusIndicatorManager effectiveIndicatorOptions];

  if (effectiveIndicatorOptions2)
  {
    [statusIndicatorLayoutGuide layoutFrame];
    [(MFConversationItemHeaderBlock *)self _layoutHorizontalStatusIndicators:?];
  }
}

- (void)setDisplayOptions:(int64_t)options
{
  if (self->_displayOptions != options)
  {
    self->_displayOptions = options;
    [(MFConversationItemHeaderBlock *)self _updateAvatarView];
    [(MFConversationItemHeaderBlock *)self _updateStyle];
    [(MFConversationItemHeaderBlock *)self _updateSubviewConstraints];
    statusIndicatorManager = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
    [statusIndicatorManager updateImageViews];
  }
}

- (void)setInteractivelyResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  v7.receiver = self;
  v7.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v7 setInteractivelyResizing:?];
  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  captionLabel = [captionView captionLabel];
  [captionLabel setPreventAutoUpdatingLabel:resizingCopy];
}

- (void)_updateStyle
{
  _hasConversationLayout = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];
  tapRecognizer = [(MFConversationItemHeaderBlock *)self tapRecognizer];
  v5 = tapRecognizer;
  if (_hasConversationLayout)
  {
    [tapRecognizer setEnabled:1];

    _footnoteFont = [(MFConversationItemHeaderBlock *)self _footnoteFont];
    captionView = [(MFConversationItemHeaderBlock *)self captionView];
    [captionView setFont:_footnoteFont];

    captionView2 = [(MFConversationItemHeaderBlock *)self captionView];
    [captionView2 setShowsTimestampWhenExpanded:1];

    [(MFConversationItemHeaderBlock *)self setShowsBIMILearnMoreButton:1];
    if (([(MFConversationItemHeaderBlock *)self usingLargeTextLayout]& 1) != 0)
    {
      goto LABEL_7;
    }

    timestampLabel = [(MFConversationItemHeaderBlock *)self timestampLabel];
    v20 = timestampLabel;
    v10 = [NSArray arrayWithObjects:&v20 count:1];
    primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList setViewsToDodge:v10];
  }

  else
  {
    [tapRecognizer setEnabled:1];

    _subheadFont = [(MFConversationItemHeaderBlock *)self _subheadFont];
    captionView3 = [(MFConversationItemHeaderBlock *)self captionView];
    [captionView3 setFont:_subheadFont];

    captionView4 = [(MFConversationItemHeaderBlock *)self captionView];
    [captionView4 setShowsTimestampWhenExpanded:0];

    [(MFConversationItemHeaderBlock *)self setShowsBIMILearnMoreButton:0];
    if (([(MFConversationItemHeaderBlock *)self usingLargeTextLayout]& 1) != 0)
    {
      goto LABEL_7;
    }

    timestampLabel = [(MFConversationItemHeaderBlock *)self avatarView];
    v19 = timestampLabel;
    v10 = [NSArray arrayWithObjects:&v19 count:1];
    primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList setViewsToDodge:v10];
  }

LABEL_7:
  if ([(MFConversationItemHeaderBlock *)self _shouldUseFootnoteFontInCaptionView])
  {
    _footnoteFont2 = [(MFConversationItemHeaderBlock *)self _footnoteFont];
    captionView5 = [(MFConversationItemHeaderBlock *)self captionView];
    [captionView5 setFont:_footnoteFont2];
  }

  displayOptions = self->_displayOptions;
  statusIndicatorManager = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
  [statusIndicatorManager setHidesUnreadIndicator:(displayOptions >> 4) & 1];
}

- (void)_updateSubviewConstraints
{
  timestampLabel = [(MFConversationItemHeaderBlock *)self timestampLabel];
  revealActionsButton = [(MFConversationItemHeaderBlock *)self revealActionsButton];
  primaryStackView = [(MFConversationItemHeaderBlock *)self primaryStackView];
  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  isExpanded = [captionView isExpanded];

  _hasConversationLayout = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];
  primaryStackViewLeadingConstraint = [(MFConversationItemHeaderBlock *)self primaryStackViewLeadingConstraint];
  [primaryStackViewLeadingConstraint setActive:0];

  [(MFConversationItemHeaderBlock *)self _clearTimestampRevealActionsButtonConstraints];
  [revealActionsButton removeFromSuperview];
  [timestampLabel removeFromSuperview];
  [primaryStackView removeArrangedSubview:timestampLabel];
  [timestampLabel setAlpha:1.0];
  if ([(MFConversationItemHeaderBlock *)self usingLargeTextLayout])
  {
    if (!(isExpanded & 1 | ((_hasConversationLayout & 1) == 0)))
    {
      [primaryStackView addArrangedSubview:timestampLabel];
    }

    leadingAnchor = [primaryStackView leadingAnchor];
    layoutMarginsGuide = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(MFConversationItemHeaderBlock *)self setPrimaryStackViewLeadingConstraint:v12];
  }

  else
  {
    [(MFConversationItemHeaderBlock *)self addSubview:timestampLabel];
    v13 = 1.0;
    if (isExpanded)
    {
      v13 = 0.0;
    }

    [timestampLabel setAlpha:v13];
    [(MFConversationItemHeaderBlock *)self _configureTimestampRevealActionsButtonConstraints];
    if ([(MFConversationItemHeaderBlock *)self _shouldHideAvatar])
    {
      leadingAnchor = [primaryStackView leadingAnchor];
      layoutMarginsGuide = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-8.0];
    }

    else
    {
      leadingAnchor = [primaryStackView leadingAnchor];
      layoutMarginsGuide = [(MFConversationItemHeaderBlock *)self avatarView];
      leadingAnchor2 = [layoutMarginsGuide trailingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    }
    v12 = ;
    [(MFConversationItemHeaderBlock *)self setPrimaryStackViewLeadingConstraint:v12];
  }

  primaryStackViewLeadingConstraint2 = [(MFConversationItemHeaderBlock *)self primaryStackViewLeadingConstraint];
  [primaryStackViewLeadingConstraint2 setActive:1];
}

- (void)_addMessageInfoButton
{
  if (self)
  {
    if (_os_feature_enabled_impl())
    {
      v23 = +[UIButtonConfiguration plainButtonConfiguration];
      v21 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
      v22 = [UIImageSymbolConfiguration configurationWithFont:?];
      v3 = [UIImage systemImageNamed:MFImageGlyphInfo withConfiguration:?];
      [v23 setImage:v3];

      v4 = +[UIColor systemBlueColor];
      [v23 setBaseForegroundColor:v4];

      v5 = +[UIColor systemWhiteColor];
      [v23 setBaseBackgroundColor:v5];

      [v23 setButtonSize:2];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100009EA0;
      v24[3] = &unk_100038AA8;
      v24[4] = self;
      v20 = [UIAction actionWithHandler:v24];
      v6 = [UIButton buttonWithConfiguration:v23 primaryAction:?];
      [(MFConversationItemHeaderBlock *)self setMessageInfoButton:v6];

      messageInfoButton = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      [messageInfoButton setTranslatesAutoresizingMaskIntoConstraints:0];

      messageInfoButton2 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      [(MFConversationItemHeaderBlock *)self addSubview:messageInfoButton2];

      messageInfoButton3 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      widthAnchor = [messageInfoButton3 widthAnchor];
      v9 = [widthAnchor constraintEqualToConstant:20.0];
      v25[0] = v9;
      messageInfoButton4 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      heightAnchor = [messageInfoButton4 heightAnchor];
      v12 = [heightAnchor constraintEqualToConstant:20.0];
      v25[1] = v12;
      messageInfoButton5 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      topAnchor = [messageInfoButton5 topAnchor];
      topAnchor2 = [(MFConversationItemHeaderBlock *)self topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
      v25[2] = v16;
      v17 = [NSArray arrayWithObjects:v25 count:3];
      [NSLayoutConstraint activateConstraints:v17];
    }
  }
}

- (BOOL)_shouldHideAvatar
{
  if (([(MFConversationItemHeaderBlock *)self usingLargeTextLayout]& 1) != 0)
  {
    return 1;
  }

  return [(MFConversationItemHeaderBlock *)self _displayOptionsHideAvatar];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  _displayOptionsHideAvatar = [(MFConversationItemHeaderBlock *)self _displayOptionsHideAvatar];
  usingLargeTextLayout = [(MFConversationItemHeaderBlock *)self usingLargeTextLayout];
  v8.receiver = self;
  v8.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v8 traitCollectionDidChange:changeCopy];
  if (usingLargeTextLayout != [(MFConversationItemHeaderBlock *)self usingLargeTextLayout]|| _displayOptionsHideAvatar != [(MFConversationItemHeaderBlock *)self _displayOptionsHideAvatar])
  {
    [(MFConversationItemHeaderBlock *)self _updateAvatarView];
    [(MFConversationItemHeaderBlock *)self _updateStyle];
    [(MFConversationItemHeaderBlock *)self _updateSubviewConstraints];
    [(MFConversationItemHeaderBlock *)self setNeedsUpdateConstraints];
    [(MFConversationItemHeaderBlock *)self updateConstraintsIfNeeded];
    superview = [(MFConversationItemHeaderBlock *)self superview];
    [superview layoutIfNeeded];
  }

  [(MFConversationItemHeaderBlock *)self _updateLabelColor];
}

- (void)_updateAvatarView
{
  _shouldHideAvatar = [(MFConversationItemHeaderBlock *)self _shouldHideAvatar];
  avatarView = [(MFConversationItemHeaderBlock *)self avatarView];
  v8 = avatarView;
  if (_shouldHideAvatar)
  {
    [avatarView removeFromSuperview];
  }

  else
  {
    [(MFConversationItemHeaderBlock *)self addSubview:avatarView];

    [(MFConversationItemHeaderBlock *)self _updateDisplayedContact];
    avatarView2 = [(MFConversationItemHeaderBlock *)self avatarView];
    v9 = avatarView2;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList setViewsToDodge:v6];
  }
}

- (void)_updateLabelColor
{
  v4 = +[UIColor mailExpandedConversationViewCellDateLabelColor];
  timestampLabel = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [timestampLabel setTextColor:v4];
}

- (void)_clearAvatarViewConstraints
{
  avatarViewConstraints = [(MFConversationItemHeaderBlock *)self avatarViewConstraints];

  if (avatarViewConstraints)
  {
    avatarViewConstraints2 = [(MFConversationItemHeaderBlock *)self avatarViewConstraints];
    [NSLayoutConstraint deactivateConstraints:avatarViewConstraints2];

    [(MFConversationItemHeaderBlock *)self setAvatarViewConstraints:0];
    [(MFConversationItemHeaderBlock *)self setAvatarTopConstraint:0];

    [(MFConversationItemHeaderBlock *)self setBottomToAvatarBottomConstraint:0];
  }
}

- (void)_addBIMILearnMoreButtonWithSenderDomain:(id)domain
{
  domainCopy = domain;
  v4 = objc_opt_new();
  [(MFConversationItemHeaderBlock *)self setBimiLearnMoreButton:v4];

  bimiLearnMoreButton = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [bimiLearnMoreButton setContentHorizontalAlignment:4];

  bimiLearnMoreButton2 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  LODWORD(v7) = 1148846080;
  [bimiLearnMoreButton2 setContentHuggingPriority:0 forAxis:v7];

  v8 = [(MFConversationItemHeaderBlock *)self _bimiLearnMoreMenuWithSenderDomain:domainCopy];
  bimiLearnMoreButton3 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [bimiLearnMoreButton3 setMenu:v8];

  bimiLearnMoreButton4 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [bimiLearnMoreButton4 setShowsMenuAsPrimaryAction:1];

  bimiLearnMoreButton5 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  [bimiLearnMoreButton5 setEnabled:{objc_msgSend(captionView, "isExpanded")}];

  v13 = +[UIButtonConfiguration plainButtonConfiguration];
  [v13 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  bimiLearnMoreButton6 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [bimiLearnMoreButton6 setConfiguration:v13];

  v15 = [(MFConversationItemHeaderBlock *)self _formattedBIMIStringWithSenderDomain:domainCopy isEnabled:1];
  v16 = [(MFConversationItemHeaderBlock *)self _formattedBIMIStringWithSenderDomain:domainCopy isEnabled:0];
  bimiLearnMoreButton7 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [bimiLearnMoreButton7 setAttributedTitle:v15 forState:0];

  bimiLearnMoreButton8 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [bimiLearnMoreButton8 setAttributedTitle:v16 forState:2];

  primaryStackView = [(MFConversationItemHeaderBlock *)self primaryStackView];
  bimiLearnMoreButton9 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [primaryStackView insertArrangedSubview:bimiLearnMoreButton9 atIndex:1];
}

- (id)_bimiLearnMoreMenuWithSenderDomain:(id)domain
{
  domainCopy = domain;
  delegate = [(MFConversationItemHeaderBlock *)self delegate];
  v6 = [delegate mailProviderDisplayNameForConversationItemHeader:self];

  v7 = _EFLocalizedString();
  if (v6)
  {
    [NSString stringWithFormat:v7, v6, domainCopy];
  }

  else
  {
    [NSString stringWithFormat:v7, domainCopy];
  }
  v8 = ;

  v9 = [UIImage systemImageNamed:MFImageGlyphInfo];
  v10 = _EFLocalizedString();
  v11 = [UIAction actionWithTitle:v10 image:v9 identifier:0 handler:&stru_100038AE8];

  v15 = v11;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  v13 = [UIMenu menuWithTitle:v8 children:v12];

  return v13;
}

- (id)_formattedBIMIStringWithSenderDomain:(id)domain isEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  domainCopy = domain;
  v7 = objc_opt_new();
  _checkmarkAttributedString = [(MFConversationItemHeaderBlock *)self _checkmarkAttributedString];
  [v7 appendAttributedString:_checkmarkAttributedString];

  v9 = [[NSAttributedString alloc] initWithString:@" "];
  [v7 appendAttributedString:v9];

  v10 = [[NSAttributedString alloc] initWithString:domainCopy];
  [v7 appendAttributedString:v10];

  v16[0] = NSFontAttributeName;
  _subheadFont = [(MFConversationItemHeaderBlock *)self _subheadFont];
  v17[0] = _subheadFont;
  v16[1] = NSForegroundColorAttributeName;
  if (enabledCopy)
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v12 = ;
  v17[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  [v7 addAttributes:v13 range:{0, objc_msgSend(v7, "length")}];
  v14 = [v7 copy];

  return v14;
}

- (id)_checkmarkAttributedString
{
  v2 = [UIImage mf_systemImageNamed:MFImageGlyphSigned forView:20];
  v3 = [v2 imageWithRenderingMode:2];

  v4 = objc_alloc_init(NSTextAttachment);
  [v4 setImage:v3];
  v5 = [NSAttributedString attributedStringWithAttachment:v4];

  return v5;
}

- (void)prepareForReuse
{
  viewModel = [(MFConversationItemHeaderBlock *)self viewModel];
  atomManager = [viewModel atomManager];
  [atomManager setAtomProvider:0];

  avatarView = [(MFConversationItemHeaderBlock *)self avatarView];
  [avatarView setHidden:1];

  bimiLearnMoreButton = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [bimiLearnMoreButton removeFromSuperview];

  [(MFConversationItemHeaderBlock *)self setBimiLearnMoreButton:0];
  [(MFConversationItemHeaderBlock *)self setShowsBIMILearnMoreButton:1];
  v7.receiver = self;
  v7.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v7 prepareForReuse];
}

- (void)displayMessageUsingViewModel:(id)model
{
  v35.receiver = self;
  v35.super_class = MFConversationItemHeaderBlock;
  modelCopy = model;
  [(MFConversationItemHeaderBlock *)&v35 displayMessageUsingViewModel:modelCopy];
  [(MFConversationItemHeaderBlock *)self _updateDisplayedContact];
  [(MFConversationItemHeaderBlock *)self _updateTimestampLabels];
  [(MFConversationItemHeaderBlock *)self _updateStatusIndicators:modelCopy];
  [(MFConversationItemHeaderBlock *)self _updateHorizontalStatusIndicators:modelCopy];
  observableCancelable = [(MFConversationItemHeaderBlock *)self observableCancelable];
  [observableCancelable cancel];

  v36[0] = @"FromAtomsKey";
  viewModel = [(MFConversationItemHeaderBlock *)self viewModel];
  senderList = [viewModel senderList];
  v6 = senderList;
  if (senderList)
  {
    v7 = senderList;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v37[0] = v7;
  v36[1] = @"ReplyToAtomsKey";
  viewModel2 = [(MFConversationItemHeaderBlock *)self viewModel];
  replyToList = [viewModel2 replyToList];
  v9 = replyToList;
  if (replyToList)
  {
    v10 = replyToList;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  v37[1] = v10;
  v36[2] = @"ToAtomsKey";
  viewModel3 = [(MFConversationItemHeaderBlock *)self viewModel];
  toList = [viewModel3 toList];
  v13 = toList;
  if (toList)
  {
    v14 = toList;
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  v37[2] = v14;
  v36[3] = @"CcAtomsKey";
  viewModel4 = [(MFConversationItemHeaderBlock *)self viewModel];
  ccList = [viewModel4 ccList];
  v17 = ccList;
  if (ccList)
  {
    v18 = ccList;
  }

  else
  {
    v18 = &__NSArray0__struct;
  }

  v37[3] = v18;
  v36[4] = @"BccAtomsKey";
  viewModel5 = [(MFConversationItemHeaderBlock *)self viewModel];
  bccList = [viewModel5 bccList];
  v21 = bccList;
  if (bccList)
  {
    v22 = bccList;
  }

  else
  {
    v22 = &__NSArray0__struct;
  }

  v37[4] = v22;
  v31 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:5];

  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  [captionView setParticipants:v31];
  if (modelCopy)
  {
    [captionView setHideDetailsButton:{-[MFConversationItemHeaderBlock _shouldHideDetailsButton](self, "_shouldHideDetailsButton")}];
    [captionView setExpanded:objc_msgSend(captionView animated:"isExpanded") force:{0, 1}];
    objc_initWeak(&location, self);
    modelObservable = [modelCopy modelObservable];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000B1F4;
    v32[3] = &unk_100038B10;
    objc_copyWeak(&v33, &location);
    v25 = [modelObservable subscribeWithResultBlock:v32];
    [(MFConversationItemHeaderBlock *)self setObservableCancelable:v25];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  viewModel6 = [(MFConversationItemHeaderBlock *)self viewModel];
  atomManager = [viewModel6 atomManager];
  [atomManager setAtomProvider:self];
}

- (void)_updateDisplayedContact
{
  viewModel = [(MFConversationItemHeaderBlock *)self viewModel];
  senderList = [viewModel senderList];
  _shouldHideAvatar = [(MFConversationItemHeaderBlock *)self _shouldHideAvatar];
  v6 = _shouldHideAvatar;
  if (viewModel)
  {
    v7 = _shouldHideAvatar;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    avatarContext = [viewModel avatarContext];
    avatarGenerator = [viewModel avatarGenerator];
    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000B5E8;
    v23[3] = &unk_100038B88;
    v10 = avatarGenerator;
    v24 = v10;
    v11 = avatarContext;
    v25 = v11;
    objc_copyWeak(&v26, &location);
    v12 = objc_retainBlock(v23);
    if (MUISolariumFeatureEnabled())
    {
      avatarController = [(MFConversationItemHeaderBlock *)self avatarController];
      v14 = [avatarController displayPersonForContext:v11 avatarGenerationBlock:v12];
    }

    else if (EMBlackPearlIsFeatureEnabled())
    {
      avatarController = [(MFConversationItemHeaderBlock *)self mfAvatarView];
      v15 = [avatarController displayPersonForContext:v11 avatarGenerationBlock:v12];
    }

    else
    {
      avatarController = [(MFConversationItemHeaderBlock *)self mfAvatarView];
      firstObject = [senderList firstObject];
      contactStore = [(MFConversationItemHeaderBlock *)self contactStore];
      v18 = [avatarController displayPersonForEmailAddress:firstObject usingContactStore:contactStore];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  avatarView = [(MFConversationItemHeaderBlock *)self avatarView];
  [avatarView setHidden:v6];

  objc_initWeak(&location, self);
  primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000BA10;
  v21[3] = &unk_100038BB0;
  objc_copyWeak(&v22, &location);
  [primaryAtomList setAddresses:senderList withCompletion:v21];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_updateTimestampLabels
{
  viewModel = [(MFConversationItemHeaderBlock *)self viewModel];
  dateSent = [viewModel dateSent];

  timestampLabel = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [timestampLabel setDate:dateSent];

  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  [captionView setDateSent:dateSent];
}

- (void)_updateStatusIndicators:(id)indicators
{
  indicatorsCopy = indicators;
  statusIndicatorManager = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
  isReplied = [indicatorsCopy isReplied];
  isForwarded = [indicatorsCopy isForwarded];
  isRead = [indicatorsCopy isRead];
  isVIP = [indicatorsCopy isVIP];
  v9 = 8;
  if (!isReplied)
  {
    v9 = 0;
  }

  if (isForwarded)
  {
    v9 |= 0x10uLL;
  }

  v10 = v9 | isRead ^ 1;
  if (isVIP)
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  [statusIndicatorManager setIndicatorOptions:v11];
  if ([statusIndicatorManager effectiveIndicatorOptions])
  {
    [(MFConversationItemHeaderBlock *)self setNeedsLayout];
  }

  else
  {
    statusIndicatorImageViews = [statusIndicatorManager statusIndicatorImageViews];
    [statusIndicatorImageViews makeObjectsPerformSelector:"removeFromSuperview"];
  }
}

- (void)_updateHorizontalStatusIndicators:(id)indicators
{
  indicatorsCopy = indicators;
  horizontalStatusIndicatorManager = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorManager];
  isFlagged = [indicatorsCopy isFlagged];
  hasAttachments = [indicatorsCopy hasAttachments];
  isNotify = [indicatorsCopy isNotify];
  isMute = [indicatorsCopy isMute];
  isBlockedSender = [indicatorsCopy isBlockedSender];
  v10 = 4;
  if (!isFlagged)
  {
    v10 = 0;
  }

  if (hasAttachments)
  {
    v10 |= 0x20uLL;
  }

  if (isNotify)
  {
    v10 |= 0x40uLL;
  }

  if (isMute)
  {
    v10 |= 0x80uLL;
  }

  if (isBlockedSender)
  {
    v11 = v10 | 0x100;
  }

  else
  {
    v11 = v10;
  }

  [horizontalStatusIndicatorManager setIndicatorOptions:v11];
  flagColors = [indicatorsCopy flagColors];
  [horizontalStatusIndicatorManager setFlagColors:flagColors];

  if ([horizontalStatusIndicatorManager effectiveIndicatorOptions])
  {
    [(MFConversationItemHeaderBlock *)self setNeedsLayout];
  }

  else
  {
    [(MFConversationItemHeaderBlock *)self _resetHorizontalStatusIndicatorContentViewIfNeeded];
  }
}

- (void)_layoutStatusIndicatorsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(MFConversationItemHeaderBlock *)self _hasConversationLayout])
  {
    statusIndicatorManager = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
    [statusIndicatorManager updateImageViews];

    displayMetrics = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [displayMetrics baselineToBaselineSpacing];
    v11 = v10;

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MaxY = CGRectGetMaxY(v39);
    primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    label = [primaryAtomList label];
    font = [label font];
    [font capHeight];
    v17 = v16;

    LODWORD(font) = [(MFConversationItemHeaderBlock *)self mf_prefersRightToLeftInterfaceLayout];
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MidX = CGRectGetMidX(v40);
    v19 = x;
    v20 = y;
    v21 = width;
    v22 = height;
    if (font)
    {
      v23 = CGRectGetMinX(*&v19) + 14.0;
      if (MidX < v23)
      {
        v23 = MidX;
      }

      v24 = -1.0;
    }

    else
    {
      v23 = CGRectGetMaxX(*&v19) + -14.0;
      if (MidX >= v23)
      {
        v23 = MidX;
      }

      v24 = 1.0;
    }

    v30 = v23 + v24;
    statusIndicatorManager2 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
    statusIndicatorImageViews = [statusIndicatorManager2 statusIndicatorImageViews];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000C170;
    v37[3] = &unk_100038BD8;
    v37[4] = self;
    *&v37[5] = v30;
    *&v37[6] = MaxY + v17 * -0.5;
    *&v37[7] = v11 + 1.0;
    [statusIndicatorImageViews enumerateObjectsUsingBlock:v37];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    statusIndicatorManager3 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
    statusIndicatorImageViews2 = [statusIndicatorManager3 statusIndicatorImageViews];

    v27 = [statusIndicatorImageViews2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v27)
    {
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(statusIndicatorImageViews2);
          }

          [*(*(&v33 + 1) + 8 * v29) removeFromSuperview];
          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [statusIndicatorImageViews2 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v27);
    }
  }
}

- (void)_layoutHorizontalStatusIndicators:(CGRect)indicators
{
  v4 = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorManager:indicators.origin.x];
  if ([(MFConversationItemHeaderBlock *)self _hasConversationLayout])
  {
    [v4 updateImageViews];
    statusIndicatorImageViews = [v4 statusIndicatorImageViews];
    if ([statusIndicatorImageViews count])
    {
      horizontalStatusIndicatorContentView = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorContentView];
      subviews = [horizontalStatusIndicatorContentView subviews];
      [subviews makeObjectsPerformSelector:"removeFromSuperview"];

      mf_prefersRightToLeftInterfaceLayout = [horizontalStatusIndicatorContentView mf_prefersRightToLeftInterfaceLayout];
      [v4 midXToMidXSpacing];
      v10 = v9;
      ef_reverse = [statusIndicatorImageViews ef_reverse];
      if (mf_prefersRightToLeftInterfaceLayout)
      {
        v10 = -v10;
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000C47C;
      v13[3] = &unk_100038C00;
      v12 = horizontalStatusIndicatorContentView;
      v14 = v12;
      statusIndicatorImageViews = ef_reverse;
      v15 = statusIndicatorImageViews;
      v16 = v10;
      [statusIndicatorImageViews enumerateObjectsUsingBlock:v13];
      [v12 setNeedsUpdateConstraints];
      [v12 layoutIfNeeded];
    }

    else
    {
      [(MFConversationItemHeaderBlock *)self _resetHorizontalStatusIndicatorContentViewIfNeeded];
    }
  }

  else
  {
    [(MFConversationItemHeaderBlock *)self _resetHorizontalStatusIndicatorContentViewIfNeeded];
  }
}

- (void)_resetHorizontalStatusIndicatorContentViewIfNeeded
{
  horizontalStatusIndicatorContentView = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorContentView];
  subviews = [horizontalStatusIndicatorContentView subviews];
  placeHolderView = [(MFConversationItemHeaderBlock *)self placeHolderView];
  if (!placeHolderView || [subviews count] != 1 || (objc_msgSend(subviews, "containsObject:", placeHolderView) & 1) == 0)
  {
    [subviews makeObjectsPerformSelector:"removeFromSuperview"];
    if (!placeHolderView)
    {
      v5 = objc_alloc_init(UIView);
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      placeHolderView = v5;
      [(MFConversationItemHeaderBlock *)self setPlaceHolderView:v5];
    }

    [horizontalStatusIndicatorContentView addSubview:placeHolderView];
    v6 = objc_opt_new();
    leadingAnchor = [placeHolderView leadingAnchor];
    leadingAnchor2 = [horizontalStatusIndicatorContentView leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v6 addObject:v9];

    trailingAnchor = [placeHolderView trailingAnchor];
    trailingAnchor2 = [horizontalStatusIndicatorContentView trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v6 addObject:v12];

    widthAnchor = [placeHolderView widthAnchor];
    v14 = [widthAnchor constraintEqualToConstant:0.0];
    [v6 addObject:v14];

    [NSLayoutConstraint activateConstraints:v6];
  }
}

- (void)_showMessageInfo
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10000CEE4;
  v45 = sub_10000CEF4;
  v46 = 0;
  if (_os_feature_enabled_impl())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    delegate = [WeakRetained conversationAttachmentURLsForConversationItemHeaderBlock:self];
    v5 = [WeakRetained richLinksInConversationForConversationItemHeaderBlock:self];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = sub_10000CEE4;
    v39[4] = sub_10000CEF4;
    v40 = objc_alloc_init(NSMutableArray);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_10000CEE4;
    v37[4] = sub_10000CEF4;
    v38 = objc_alloc_init(NSMutableArray);
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000CEFC;
    v34[3] = &unk_100038C28;
    v36 = v39;
    v7 = v6;
    v35 = v7;
    [delegate addSuccessBlock:v34];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000CF5C;
    v31[3] = &unk_100038C50;
    v33 = v39;
    v8 = v7;
    v32 = v8;
    [delegate addFailureBlock:v31];
    dispatch_group_enter(v8);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000CFE0;
    v28[3] = &unk_100038C28;
    v30 = v37;
    v9 = v8;
    v29 = v9;
    [v5 addSuccessBlock:v28];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000D040;
    v25[3] = &unk_100038C50;
    v27 = v37;
    v10 = v9;
    v26 = v10;
    [v5 addFailureBlock:v25];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D154;
    block[3] = &unk_100038C78;
    v20 = WeakRetained;
    selfCopy = self;
    v22 = &v41;
    v23 = v39;
    v24 = v37;
    v11 = WeakRetained;
    dispatch_group_notify(v10, &_dispatch_main_q, block);

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v39, 8);
  }

  else
  {
    v12 = [MFMessageInfoViewController alloc];
    viewModel = [(MFConversationItemHeaderBlock *)self viewModel];
    contactStore = [(MFConversationItemHeaderBlock *)self contactStore];
    v15 = [(MFMessageInfoViewController *)v12 initWithViewModel:viewModel contactsStore:contactStore];
    v16 = v42[5];
    v42[5] = v15;

    [(MFConversationItemHeaderBlock *)self setMessageInfoViewController:v42[5]];
    [v42[5] setDelegate:self];
    view = [v42[5] view];
    [view frame];
    [v42[5] setPreferredContentSize:{320.0, v18}];

    delegate = [(MFConversationItemHeaderBlock *)self delegate];
    [delegate conversationItemHeader:self presentViewController:v42[5]];
  }

  _Block_object_dispose(&v41, 8);
}

- (id)presentingViewControllerForAvatarView:(id)view
{
  delegate = [(MFConversationItemHeaderBlock *)self delegate];
  v5 = [delegate viewControllerForPresentationsFromConversationItemHeader:self];

  return v5;
}

- (void)setShowsHeaderDetails:(BOOL)details animated:(BOOL)animated
{
  animatedCopy = animated;
  detailsCopy = details;
  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  [captionView setExpanded:detailsCopy animated:animatedCopy force:0];
}

- (id)expandableCaptionView:(id)view displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  addressCopy = address;
  delegate = [(MFConversationItemHeaderBlock *)self delegate];
  v9 = [delegate conversationItemHeader:self displayNameForEmailAddress:addressCopy abbreviated:abbreviatedCopy];

  return v9;
}

- (id)popoverManagerForExpandableCaptionView:(id)view
{
  delegate = [(MFConversationItemHeaderBlock *)self delegate];
  v5 = [delegate popoverManagerForForConversationItemHeader:self];

  return v5;
}

- (void)expandableCaptionView:(id)view willBecomeExpanded:(BOOL)expanded withAnimationCoordinator:(id)coordinator
{
  expandedCopy = expanded;
  viewCopy = view;
  coordinatorCopy = coordinator;
  if (expandedCopy)
  {
    viewModel = [(MFConversationItemHeaderBlock *)self viewModel];
    atomManager = [viewModel atomManager];
    [atomManager updateTrustForDisplayedAtoms];
  }

  usingLargeTextLayout = [(MFConversationItemHeaderBlock *)self usingLargeTextLayout];
  v13 = usingLargeTextLayout;
  if (expandedCopy)
  {
    if (usingLargeTextLayout)
    {
      v14 = 1;
      goto LABEL_10;
    }

    avatarView = [(MFConversationItemHeaderBlock *)self avatarView];
    v29 = avatarView;
    v19 = [NSArray arrayWithObjects:&v29 count:1];
    primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList setViewsToDodge:v19];
    v14 = 1;
  }

  else
  {
    primaryAtomList2 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    addressAtoms = [primaryAtomList2 addressAtoms];
    v17 = [addressAtoms count] < 2;

    v14 = (2 * v17);
    if (v13)
    {
      goto LABEL_10;
    }

    avatarView = [(MFConversationItemHeaderBlock *)self timestampLabel];
    v28 = avatarView;
    v19 = [NSArray arrayWithObjects:&v28 count:1];
    primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList setViewsToDodge:v19];
  }

LABEL_10:
  if ([coordinatorCopy isAnimated])
  {
    primaryAtomList3 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList3 crossFadeLabelVisibility:expandedCopy atomSeparatorStyle:v14 withAnimationCoordinator:coordinatorCopy];
  }

  else
  {
    primaryAtomList4 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList4 setLabelVisible:expandedCopy];

    primaryAtomList3 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [primaryAtomList3 setAddressAtomSeparatorStyle:v14];
  }

  bimiLearnMoreButton = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [bimiLearnMoreButton setEnabled:expandedCopy];

  [(MFConversationItemHeaderBlock *)self setClipsToBounds:1];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000D890;
  v26[3] = &unk_100038CA0;
  v26[4] = self;
  v27 = expandedCopy;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000D9F8;
  v25[3] = &unk_100038CC8;
  v25[4] = self;
  [coordinatorCopy animateAlongsideAnimations:v26 completion:v25];
  if (self->_showDetails != expandedCopy)
  {
    if ([(MFConversationItemHeaderBlock *)self _shouldSaveHeaderDetailsButtonSettings])
    {
      self->_showDetails = expandedCopy;
      if (byte_1000425C0 != expandedCopy)
      {
        v24 = +[NSUserDefaults standardUserDefaults];
        [v24 setBool:self->_showDetails forKey:@"ShowMessageHeaderDetails"];

        byte_1000425C0 = self->_showDetails;
      }
    }
  }
}

- (void)expandableCaptionView:(id)view didTapAtom:(id)atom forAtomType:(unint64_t)type
{
  atomCopy = atom;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddressAtom:atomCopy forAtomType:type];
  }
}

- (void)expandableCaptionView:(id)view searchForDisplayName:(id)name emailAddresses:(id)addresses
{
  nameCopy = name;
  addressesCopy = addresses;
  delegate = [(MFConversationItemHeaderBlock *)self delegate];
  [delegate conversationItemHeader:self searchForDisplayName:nameCopy emailAddresses:addressesCopy];
}

- (void)expandableCaptionView:(id)view displayContactCardForAddressAtom:(id)atom atomType:(unint64_t)type
{
  atomCopy = atom;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddressAtom:atomCopy forAtomType:type];
  }
}

- (void)_primaryAddressAtomWasTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddressAtom:tappedCopy forAtomType:1];
  }
}

- (void)iterateDisplayedAtomListsWithBlock:(id)block
{
  blockCopy = block;
  primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  blockCopy[2](blockCopy, primaryAtomList);

  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  [captionView iterateAtomListsWithBlock:blockCopy];
}

- (BOOL)shouldDecorateAtomListWithSMIMEStatus:(id)status
{
  statusCopy = status;
  primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  LOBYTE(self) = primaryAtomList == statusCopy;

  return self;
}

- (void)setOtherSigners:(id)signers
{
  v6 = [signers ef_map:&stru_100038D08];
  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  [captionView setOtherSigners:v5];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  isExpanded = [captionView isExpanded];

  if (isExpanded)
  {
    [beginCopy locationInView:self];
    v7 = [(MFConversationItemHeaderBlock *)self hitTest:0 withEvent:?];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)_tappedHeader:(id)header
{
  captionView = [(MFConversationItemHeaderBlock *)self captionView];
  [captionView setExpanded:1 animated:1 force:0];
}

- (void)_updateFonts
{
  _footnoteFont = [(MFConversationItemHeaderBlock *)self _footnoteFont];
  timestampLabel = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [timestampLabel setFont:_footnoteFont];

  if ([(MFConversationItemHeaderBlock *)self _hasConversationLayout]|| [(MFConversationItemHeaderBlock *)self _shouldUseFootnoteFontInCaptionView])
  {
    _footnoteFont2 = [(MFConversationItemHeaderBlock *)self _footnoteFont];
    captionView = [(MFConversationItemHeaderBlock *)self captionView];
    [captionView setFont:_footnoteFont2];
  }

  else
  {
    _footnoteFont2 = [(MFConversationItemHeaderBlock *)self _subheadFont];
    captionView = [(MFConversationItemHeaderBlock *)self captionView];
    [captionView setFont:_footnoteFont2];
  }

  primaryAtomList = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  v5 = +[UIFont mf_messageHeaderSenderLabelFont];
  [primaryAtomList setOverrideFont:v5];
}

- (id)_subheadFont
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedPreferredFontForStyle:UIFontTextStyleSubheadline];

  return v3;
}

- (void)messageInfoViewController:(id)controller didSelectAddress:(id)address forAtomType:(unint64_t)type
{
  addressCopy = address;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddress:addressCopy forAtomType:type];
  }
}

- (void)labelledAtomList:(id)list searchForDisplayName:(id)name emailAddresses:(id)addresses
{
  nameCopy = name;
  addressesCopy = addresses;
  delegate = [(MFConversationItemHeaderBlock *)self delegate];
  [delegate conversationItemHeader:self searchForDisplayName:nameCopy emailAddresses:addressesCopy];
}

- (void)labelledAtomList:(id)list displayContactCardForAddressAtom:(id)atom
{
  listCopy = list;
  atomCopy = atom;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddressAtom:atomCopy forAtomType:{objc_msgSend(listCopy, "atomType")}];
  }
}

- (MFConversationItemHeaderBlockDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end