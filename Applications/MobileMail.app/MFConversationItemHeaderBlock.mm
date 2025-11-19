@interface MFConversationItemHeaderBlock
+ (OS_os_log)log;
- (BOOL)_shouldHideAvatar;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)shouldDecorateAtomListWithSMIMEStatus:(id)a3;
- (MFConversationItemHeaderBlock)initWithFrame:(CGRect)a3 contactStore:(id)a4;
- (MFConversationItemHeaderBlockDelegate)delegate;
- (id)_bimiLearnMoreMenuWithSenderDomain:(id)a3;
- (id)_checkmarkAttributedString;
- (id)_formattedBIMIStringWithSenderDomain:(id)a3 isEnabled:(BOOL)a4;
- (id)_subheadFont;
- (id)expandableCaptionView:(id)a3 displayNameForEmailAddress:(id)a4 abbreviated:(BOOL)a5;
- (id)popoverManagerForExpandableCaptionView:(id)a3;
- (id)presentingViewControllerForAvatarView:(id)a3;
- (void)_addBIMILearnMoreButtonWithSenderDomain:(id)a3;
- (void)_addMessageInfoButton;
- (void)_clearAvatarViewConstraints;
- (void)_clearTimestampRevealActionsButtonConstraints;
- (void)_configureTimestampRevealActionsButtonConstraints;
- (void)_layoutHorizontalStatusIndicators:(CGRect)a3;
- (void)_layoutStatusIndicatorsInRect:(CGRect)a3;
- (void)_primaryAddressAtomWasTapped:(id)a3;
- (void)_resetHorizontalStatusIndicatorContentViewIfNeeded;
- (void)_revealActionsButtonTapped:(id)a3;
- (void)_showMessageInfo;
- (void)_tappedHeader:(id)a3;
- (void)_updateAvatarView;
- (void)_updateDisplayedContact;
- (void)_updateFonts;
- (void)_updateHorizontalStatusIndicators:(id)a3;
- (void)_updateLabelColor;
- (void)_updateStackViewSpacing;
- (void)_updateStatusIndicators:(id)a3;
- (void)_updateStyle;
- (void)_updateSubviewConstraints;
- (void)_updateTimestampLabels;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)a3;
- (void)expandableCaptionView:(id)a3 didTapAtom:(id)a4 forAtomType:(unint64_t)a5;
- (void)expandableCaptionView:(id)a3 displayContactCardForAddressAtom:(id)a4 atomType:(unint64_t)a5;
- (void)expandableCaptionView:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5;
- (void)expandableCaptionView:(id)a3 willBecomeExpanded:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)initializePrimaryLayoutConstraints;
- (void)iterateDisplayedAtomListsWithBlock:(id)a3;
- (void)labelledAtomList:(id)a3 displayContactCardForAddressAtom:(id)a4;
- (void)labelledAtomList:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5;
- (void)layoutSubviews;
- (void)messageInfoViewController:(id)a3 didSelectAddress:(id)a4 forAtomType:(unint64_t)a5;
- (void)prepareForReuse;
- (void)setDisplayMetrics:(id)a3;
- (void)setDisplayOptions:(int64_t)a3;
- (void)setInteractivelyResizing:(BOOL)a3;
- (void)setOtherSigners:(id)a3;
- (void)setShowsHeaderDetails:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation MFConversationItemHeaderBlock

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BBE18;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD498 != -1)
  {
    dispatch_once(&qword_1006DD498, block);
  }

  v2 = qword_1006DD490;

  return v2;
}

- (MFConversationItemHeaderBlock)initWithFrame:(CGRect)a3 contactStore:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = MFConversationItemHeaderBlock;
  v10 = [(MFConversationItemHeaderBlock *)&v16 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(MFConversationItemHeaderBlock *)v10 setContactStore:v9];
    v12 = +[NSUserDefaults standardUserDefaults];
    byte_1006DD4A0 = [v12 BOOLForKey:@"ShowMessageHeaderDetails"];

    v11->_showDetails = byte_1006DD4A0;
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

  v4 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  [v4 setAlignment:1];

  v5 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  [(MFConversationItemHeaderBlock *)self addSubview:v5];

  v6 = [UIDateLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(MFConversationItemHeaderBlock *)self setTimestampLabel:v10];

  v11 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [v12 setAdjustsFontForContentSizeCategory:1];

  v13 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [v13 accessibilitySetIdentification:@"MessageDateLabel"];

  [(MFConversationItemHeaderBlock *)self _updateLabelColor];
  v14 = [MFModernLabelledAtomList alloc];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"FROM_HEADER" value:&stru_100662A88 table:@"Main"];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"FROM_TITLE" value:&stru_100662A88 table:@"Main"];
  v19 = +[MFAddressBookManager sharedManager];
  v20 = [v14 initWithLabel:v16 title:v18 atomType:1 addressBook:{objc_msgSend(v19, "addressBook")}];
  [(MFConversationItemHeaderBlock *)self setPrimaryAtomList:v20];

  v21 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [v21 setDelegate:self];

  v22 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [v22 setPrimary:1];

  v23 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [v23 setLabelVisible:0];

  v24 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  v25 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [v24 addArrangedSubview:v25];

  v26 = [[MFExpandableCaptionView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MFConversationItemHeaderBlock *)self setCaptionView:v26];

  v27 = [(MFConversationItemHeaderBlock *)self captionView];
  [v27 setDelegate:self];

  v28 = [(MFConversationItemHeaderBlock *)self captionView];
  [v28 setShowsTimestampWhenExpanded:1];

  [(MFConversationItemHeaderBlock *)self setShowsBIMILearnMoreButton:1];
  v29 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  v30 = [(MFConversationItemHeaderBlock *)self captionView];
  [v29 addArrangedSubview:v30];

  if (self)
  {
    sub_10048B4D4(self);
  }

  +[MFMessageDisplayMetrics avatarDiameter];
  v32 = v31;
  if (MUISolariumFeatureEnabled())
  {
    v33 = [[MUIAvatarViewController alloc] initWithContacts:&__NSArray0__struct];
    [(MFConversationItemHeaderBlock *)self setAvatarController:v33];

    v34 = [(MFConversationItemHeaderBlock *)self avatarController];
    v35 = [v34 view];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

    v36 = [(MFConversationItemHeaderBlock *)self avatarController];
    v37 = [v36 view];
    [(MFConversationItemHeaderBlock *)self setAvatarView:v37];
  }

  else
  {
    v38 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, v32, v32];
    [(MFConversationItemHeaderBlock *)self setMfAvatarView:v38];

    v39 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
    [v40 setShowsContactOnTap:1];

    v41 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
    [v41 setDelegate:self];

    v36 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
    [(MFConversationItemHeaderBlock *)self setAvatarView:v36];
  }

  [(MFConversationItemHeaderBlock *)self _updateAvatarView];
  if ([(MFConversationItemHeaderBlock *)self usingLargeTextLayout])
  {
    v42 = [(MFConversationItemHeaderBlock *)self primaryStackView];
    v43 = [(MFConversationItemHeaderBlock *)self timestampLabel];
    [v42 addArrangedSubview:v43];
  }

  else
  {
    v44 = [(MFConversationItemHeaderBlock *)self timestampLabel];
    [(MFConversationItemHeaderBlock *)self addSubview:v44];

    v42 = [(MFConversationItemHeaderBlock *)self timestampLabel];
    v59 = v42;
    v43 = [NSArray arrayWithObjects:&v59 count:1];
    v45 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v45 setViewsToDodge:v43];
  }

  v46 = objc_alloc_init(MessageViewStatusIndicatorManager);
  [(MFConversationItemHeaderBlock *)self setStatusIndicatorManager:v46];

  v47 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
  [v47 setHidesVIPIndicator:1];

  v48 = objc_alloc_init(UILayoutGuide);
  [(MFConversationItemHeaderBlock *)self setStatusIndicatorLayoutGuide:v48];

  v49 = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuide];
  [(MFConversationItemHeaderBlock *)self addLayoutGuide:v49];

  v50 = objc_alloc_init(UIView);
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MFConversationItemHeaderBlock *)self addSubview:v50];
  [(MFConversationItemHeaderBlock *)self setHorizontalStatusIndicatorContentView:v50];
  v51 = objc_alloc_init(MessageViewStatusIndicatorManager);
  [(MFConversationItemHeaderBlock *)self setHorizontalStatusIndicatorManager:v51];

  v52 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tappedHeader:"];
  [(MFConversationItemHeaderBlock *)self setTapRecognizer:v52];

  v53 = [(MFConversationItemHeaderBlock *)self tapRecognizer];
  [v53 setDelegate:self];

  v54 = [(MFConversationItemHeaderBlock *)self tapRecognizer];
  [(MFConversationItemHeaderBlock *)self addGestureRecognizer:v54];

  if (+[UIDevice mf_isPadIdiom])
  {
    v55 = [(MFConversationItemHeaderBlock *)self delegate];
    v56 = [v55 popoverManagerForForConversationItemHeader:self];

    v57 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v56 addPassthroughViewProvider:v57];
  }

  [(MFConversationItemHeaderBlock *)self _updateFonts];
}

- (void)initializePrimaryLayoutConstraints
{
  v57.receiver = self;
  v57.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v57 initializePrimaryLayoutConstraints];
  v54 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  v52 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  v56 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  v53 = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorContentView];
  v55 = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuide];
  v3 = [v56 firstBaselineAnchor];
  v4 = [(MFConversationItemHeaderBlock *)self topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  [(MFConversationItemHeaderBlock *)self setTopConstraint:v5];

  v6 = [(MFConversationItemHeaderBlock *)self bottomAnchor];
  v7 = [v56 lastBaselineAnchor];
  v8 = [v6 constraintGreaterThanOrEqualToAnchor:v7];
  [(MFConversationItemHeaderBlock *)self setBottomConstraint:v8];

  v9 = [v52 firstBaselineAnchor];
  v10 = [v54 firstBaselineAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v59[0] = v11;
  v12 = [v52 trailingAnchor];
  v13 = [v56 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v59[1] = v14;
  v15 = [NSArray arrayWithObjects:v59 count:2];
  [(MFConversationItemHeaderBlock *)self setTimestampLabelConstraints:v15];

  v16 = [v55 trailingAnchor];
  v17 = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [(MFConversationItemHeaderBlock *)self setStatusIndicatorLayoutGuideTrailingConstraint:v19];

  v45 = [(MFConversationItemHeaderBlock *)self topConstraint];
  v58[0] = v45;
  v51 = [v56 trailingAnchor];
  v44 = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
  v43 = [v44 trailingAnchor];
  v42 = [v51 constraintEqualToAnchor:7.0 constant:?];
  v58[1] = v42;
  v50 = [v54 trailingAnchor];
  v41 = [v56 trailingAnchor];
  v40 = [v50 constraintEqualToAnchor:?];
  v58[2] = v40;
  v39 = [(MFConversationItemHeaderBlock *)self captionView];
  v49 = [v39 trailingAnchor];
  v38 = [v53 leadingAnchor];
  v37 = [v49 constraintEqualToAnchor:-16.0 constant:?];
  v58[3] = v37;
  v36 = [(MFConversationItemHeaderBlock *)self bottomConstraint];
  v58[4] = v36;
  v48 = [v55 leadingAnchor];
  v35 = [(MFConversationItemHeaderBlock *)self leadingAnchor];
  v34 = [v48 constraintEqualToAnchor:?];
  v58[5] = v34;
  v33 = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuideTrailingConstraint];
  v58[6] = v33;
  v47 = [v55 topAnchor];
  v32 = [(MFConversationItemHeaderBlock *)self topAnchor];
  v31 = [v47 constraintEqualToAnchor:?];
  v58[7] = v31;
  v46 = [v55 bottomAnchor];
  v20 = [v54 firstBaselineAnchor];
  v21 = [v46 constraintEqualToAnchor:v20];
  v58[8] = v21;
  v22 = [v53 trailingAnchor];
  v23 = [v56 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v58[9] = v24;
  v25 = [v53 lastBaselineAnchor];
  v26 = [v56 lastBaselineAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v58[10] = v27;
  v28 = [NSArray arrayWithObjects:v58 count:11];
  v29 = [NSMutableArray arrayWithArray:v28];

  v30 = [v29 ef_flatten];
  [NSLayoutConstraint activateConstraints:v30];
}

- (void)updateConstraints
{
  v62.receiver = self;
  v62.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v62 updateConstraints];
  v3 = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];
  v4 = [(MFConversationItemHeaderBlock *)self displayMetrics];
  v5 = v4;
  if (v3)
  {
    [v4 messageTopPaddingInConversation];
    v7 = v6;
    v8 = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [v8 topToSenderBaselineInConversationForExpandedCell];
    v10 = v9;
    v11 = [(MFConversationItemHeaderBlock *)self topConstraint];
    [v11 setConstant:v7 + v10];

    v12 = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [v12 recipientBaselineToFirstSeparatorInConversation];
  }

  else
  {
    [v4 topToSenderBaseline];
    v17 = v16;
    v18 = [(MFConversationItemHeaderBlock *)self topConstraint];
    [v18 setConstant:v17];

    v12 = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [v12 recipientBaselineToFirstSeparator];
  }

  v14 = v13;
  v15 = [(MFConversationItemHeaderBlock *)self bottomConstraint];
  [v15 setConstant:v14];

  if ([(MFConversationItemHeaderBlock *)self usingLargeTextLayout])
  {
    v19 = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuideTrailingConstraint];
    [v19 setConstant:0.0];
  }

  else if ([(MFConversationItemHeaderBlock *)self _displayOptionsHideAvatar])
  {
    v19 = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuideTrailingConstraint];
    [v19 setConstant:-6.0];
  }

  else
  {
    v20 = [(MFConversationItemHeaderBlock *)self avatarViewConstraints];
    v21 = v20 == 0;

    if (v21)
    {
      v22 = [(MFConversationItemHeaderBlock *)self avatarView];
      v23 = [v22 bottomAnchor];
      v24 = [(MFConversationItemHeaderBlock *)self bottomAnchor];
      v25 = [v23 constraintLessThanOrEqualToAnchor:v24];
      [(MFConversationItemHeaderBlock *)self setBottomToAvatarBottomConstraint:v25];

      v26 = [v22 topAnchor];
      v27 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
      v28 = [v27 topAnchor];
      v29 = [v26 constraintEqualToAnchor:v28];
      [(MFConversationItemHeaderBlock *)self setAvatarTopConstraint:v29];

      v61 = [v22 leadingAnchor];
      v59 = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
      v58 = [v59 leadingAnchor];
      v57 = [v61 constraintEqualToAnchor:-7.0 constant:?];
      v63[0] = v57;
      v60 = [v22 widthAnchor];
      v56 = [(MFConversationItemHeaderBlock *)self trailingAccessoryViewLayoutGuide];
      v30 = [v56 widthAnchor];
      v31 = [v60 constraintEqualToAnchor:v30];
      v63[1] = v31;
      v32 = [v22 heightAnchor];
      v33 = [v22 widthAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      v63[2] = v34;
      v35 = [(MFConversationItemHeaderBlock *)self avatarTopConstraint];
      v63[3] = v35;
      v36 = [(MFConversationItemHeaderBlock *)self bottomToAvatarBottomConstraint];
      v63[4] = v36;
      v37 = [NSArray arrayWithObjects:v63 count:5];
      [(MFConversationItemHeaderBlock *)self setAvatarViewConstraints:v37];

      v38 = [(MFConversationItemHeaderBlock *)self displayMetrics];
      [v38 messageBottomPaddingInConversationForExpandedCell];
      v40 = v39;

      v41 = [(MFConversationItemHeaderBlock *)self bottomToAvatarBottomConstraint];
      v42 = v41;
      v43 = -v40;
      if (v40 < 0.0)
      {
        v43 = v40;
      }

      [v41 setConstant:v43];
    }

    v44 = [(MFConversationItemHeaderBlock *)self avatarViewConstraints];
    [NSLayoutConstraint activateConstraints:v44];

    v45 = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuideTrailingConstraint];
    [v45 setConstant:-7.0];

    v19 = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [v19 minHorizontalSpacing];
    v47 = v46;
    v48 = [(MFConversationItemHeaderBlock *)self primaryStackViewLeadingConstraint];
    [v48 setConstant:v47];
  }

  [(MFConversationItemHeaderBlock *)self _configureTimestampRevealActionsButtonConstraints];
  if (self && _os_feature_enabled_impl())
  {
    v49 = [(MFConversationItemHeaderBlock *)self captionView];
    v50 = [v49 isExpanded];

    v51 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
    [v51 trailingAnchor];
    if (v50)
      v52 = {;
      v53 = [(MFConversationItemHeaderBlock *)self primaryStackView];
      v54 = [v53 trailingAnchor];
      [v52 constraintEqualToAnchor:v54];
    }

    else
      v52 = {;
      v53 = [(MFConversationItemHeaderBlock *)self timestampLabel];
      v54 = [v53 leadingAnchor];
      [v52 constraintEqualToAnchor:v54 constant:-8.0];
    }
    v55 = ;
    [v55 setActive:1];
  }
}

- (void)_clearTimestampRevealActionsButtonConstraints
{
  v3 = [(MFConversationItemHeaderBlock *)self timestampLabelConstraints];

  if (v3)
  {
    v4 = [(MFConversationItemHeaderBlock *)self timestampLabelConstraints];
    [NSLayoutConstraint deactivateConstraints:v4];
  }

  [(MFConversationItemHeaderBlock *)self setActiveTimestampLabelConstraints:0];
}

- (void)_configureTimestampRevealActionsButtonConstraints
{
  v3 = [(MFConversationItemHeaderBlock *)self revealActionsButton];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(MFConversationItemHeaderBlock *)self revealActionsButton];
    [v5 removeFromSuperview];
  }

  if (([(MFConversationItemHeaderBlock *)self usingLargeTextLayout]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MFConversationItemHeaderBlock *)self timestampLabelConstraints];
  }

  v8 = v6;
  v7 = [(MFConversationItemHeaderBlock *)self activeTimestampLabelConstraints];

  if (v8 != v7)
  {
    [(MFConversationItemHeaderBlock *)self _clearTimestampRevealActionsButtonConstraints];
    [(MFConversationItemHeaderBlock *)self setActiveTimestampLabelConstraints:v8];
    if (v8)
    {
      [NSLayoutConstraint activateConstraints:v8];
    }
  }
}

- (void)_revealActionsButtonTapped:(id)a3
{
  v5 = [(MFConversationItemHeaderBlock *)self delegate];
  v4 = [(MFConversationItemHeaderBlock *)self revealActionsButton];
  [v5 conversationItemHeader:self didTapRevealActionsButton:v4];
}

- (void)_updateStackViewSpacing
{
  v3 = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];
  v4 = [(MFConversationItemHeaderBlock *)self displayMetrics];
  v10 = v4;
  if (v3)
  {
    [v4 baselineToBaselineSpacingInConversation];
  }

  else
  {
    [v4 baselineToBaselineSpacing];
  }

  v6 = v5;

  v11 = [(MFConversationItemHeaderBlock *)self captionView];
  if (([v11 isExpanded] & 1) != 0 || -[MFConversationItemHeaderBlock usingLargeTextLayout](self, "usingLargeTextLayout"))
  {
    v7 = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];

    if ((v7 & 1) == 0)
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

  v12 = [(MFConversationItemHeaderBlock *)self captionView];
  [v12 setListSpacing:v6];

  v13 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  [v13 setSpacing:v6];

  v14 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  [v14 setLineSpacing:v6];
}

- (void)setDisplayMetrics:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v7 setDisplayMetrics:v4];
  v5 = [(MFConversationItemHeaderBlock *)self displayMetrics];

  if (v5)
  {
    [(MFConversationItemHeaderBlock *)self _updateStackViewSpacing];
    [(MFConversationItemHeaderBlock *)self _clearAvatarViewConstraints];
    [(MFConversationItemHeaderBlock *)self setNeedsUpdateConstraints];
    [(MFConversationItemHeaderBlock *)self updateConstraintsIfNeeded];
    v6 = [(MFConversationItemHeaderBlock *)self avatarView];
    [v6 layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v8 layoutSubviews];
  v3 = [(MFConversationItemHeaderBlock *)self statusIndicatorLayoutGuide];
  v4 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
  v5 = [v4 effectiveIndicatorOptions];

  if (v5)
  {
    [v3 layoutFrame];
    [(MFConversationItemHeaderBlock *)self _layoutStatusIndicatorsInRect:?];
  }

  v6 = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorManager];
  v7 = [v6 effectiveIndicatorOptions];

  if (v7)
  {
    [v3 layoutFrame];
    [(MFConversationItemHeaderBlock *)self _layoutHorizontalStatusIndicators:?];
  }
}

- (void)setDisplayOptions:(int64_t)a3
{
  if (self->_displayOptions != a3)
  {
    self->_displayOptions = a3;
    [(MFConversationItemHeaderBlock *)self _updateAvatarView];
    [(MFConversationItemHeaderBlock *)self _updateStyle];
    [(MFConversationItemHeaderBlock *)self _updateSubviewConstraints];
    v4 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
    [v4 updateImageViews];
  }
}

- (void)setInteractivelyResizing:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v7 setInteractivelyResizing:?];
  v5 = [(MFConversationItemHeaderBlock *)self captionView];
  v6 = [v5 captionLabel];
  [v6 setPreventAutoUpdatingLabel:v3];
}

- (void)_updateStyle
{
  v3 = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];
  v4 = [(MFConversationItemHeaderBlock *)self tapRecognizer];
  v5 = v4;
  if (v3)
  {
    [v4 setEnabled:1];

    v6 = [(MFConversationItemHeaderBlock *)self _footnoteFont];
    v7 = [(MFConversationItemHeaderBlock *)self captionView];
    [v7 setFont:v6];

    v8 = [(MFConversationItemHeaderBlock *)self captionView];
    [v8 setShowsTimestampWhenExpanded:1];

    [(MFConversationItemHeaderBlock *)self setShowsBIMILearnMoreButton:1];
    if (([(MFConversationItemHeaderBlock *)self usingLargeTextLayout]& 1) != 0)
    {
      goto LABEL_7;
    }

    v9 = [(MFConversationItemHeaderBlock *)self timestampLabel];
    v20 = v9;
    v10 = [NSArray arrayWithObjects:&v20 count:1];
    v11 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v11 setViewsToDodge:v10];
  }

  else
  {
    [v4 setEnabled:1];

    v12 = [(MFConversationItemHeaderBlock *)self _subheadFont];
    v13 = [(MFConversationItemHeaderBlock *)self captionView];
    [v13 setFont:v12];

    v14 = [(MFConversationItemHeaderBlock *)self captionView];
    [v14 setShowsTimestampWhenExpanded:0];

    [(MFConversationItemHeaderBlock *)self setShowsBIMILearnMoreButton:0];
    if (([(MFConversationItemHeaderBlock *)self usingLargeTextLayout]& 1) != 0)
    {
      goto LABEL_7;
    }

    v9 = [(MFConversationItemHeaderBlock *)self avatarView];
    v19 = v9;
    v10 = [NSArray arrayWithObjects:&v19 count:1];
    v11 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v11 setViewsToDodge:v10];
  }

LABEL_7:
  if ([(MFConversationItemHeaderBlock *)self _shouldUseFootnoteFontInCaptionView])
  {
    v15 = [(MFConversationItemHeaderBlock *)self _footnoteFont];
    v16 = [(MFConversationItemHeaderBlock *)self captionView];
    [v16 setFont:v15];
  }

  displayOptions = self->_displayOptions;
  v18 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
  [v18 setHidesUnreadIndicator:(displayOptions >> 4) & 1];
}

- (void)_updateSubviewConstraints
{
  v15 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  v3 = [(MFConversationItemHeaderBlock *)self revealActionsButton];
  v4 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  v5 = [(MFConversationItemHeaderBlock *)self captionView];
  v6 = [v5 isExpanded];

  v7 = [(MFConversationItemHeaderBlock *)self _hasConversationLayout];
  v8 = [(MFConversationItemHeaderBlock *)self primaryStackViewLeadingConstraint];
  [v8 setActive:0];

  [(MFConversationItemHeaderBlock *)self _clearTimestampRevealActionsButtonConstraints];
  [v3 removeFromSuperview];
  [v15 removeFromSuperview];
  [v4 removeArrangedSubview:v15];
  [v15 setAlpha:1.0];
  if ([(MFConversationItemHeaderBlock *)self usingLargeTextLayout])
  {
    if (!(v6 & 1 | ((v7 & 1) == 0)))
    {
      [v4 addArrangedSubview:v15];
    }

    v9 = [v4 leadingAnchor];
    v10 = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
    v11 = [v10 leadingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    [(MFConversationItemHeaderBlock *)self setPrimaryStackViewLeadingConstraint:v12];
  }

  else
  {
    [(MFConversationItemHeaderBlock *)self addSubview:v15];
    v13 = 1.0;
    if (v6)
    {
      v13 = 0.0;
    }

    [v15 setAlpha:v13];
    [(MFConversationItemHeaderBlock *)self _configureTimestampRevealActionsButtonConstraints];
    if ([(MFConversationItemHeaderBlock *)self _shouldHideAvatar])
    {
      v9 = [v4 leadingAnchor];
      v10 = [(MFConversationItemHeaderBlock *)self layoutMarginsGuide];
      v11 = [v10 leadingAnchor];
      [v9 constraintEqualToAnchor:v11 constant:-8.0];
    }

    else
    {
      v9 = [v4 leadingAnchor];
      v10 = [(MFConversationItemHeaderBlock *)self avatarView];
      v11 = [v10 trailingAnchor];
      [v9 constraintEqualToAnchor:v11];
    }
    v12 = ;
    [(MFConversationItemHeaderBlock *)self setPrimaryStackViewLeadingConstraint:v12];
  }

  v14 = [(MFConversationItemHeaderBlock *)self primaryStackViewLeadingConstraint];
  [v14 setActive:1];
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
      v24[2] = sub_1001BEAC0;
      v24[3] = &unk_1006513D8;
      v24[4] = self;
      v20 = [UIAction actionWithHandler:v24];
      v6 = [UIButton buttonWithConfiguration:v23 primaryAction:?];
      [(MFConversationItemHeaderBlock *)self setMessageInfoButton:v6];

      v7 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

      v8 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      [(MFConversationItemHeaderBlock *)self addSubview:v8];

      v19 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      v18 = [v19 widthAnchor];
      v9 = [v18 constraintEqualToConstant:20.0];
      v25[0] = v9;
      v10 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      v11 = [v10 heightAnchor];
      v12 = [v11 constraintEqualToConstant:20.0];
      v25[1] = v12;
      v13 = [(MFConversationItemHeaderBlock *)self messageInfoButton];
      v14 = [v13 topAnchor];
      v15 = [(MFConversationItemHeaderBlock *)self topAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:18.0];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationItemHeaderBlock *)self _displayOptionsHideAvatar];
  v6 = [(MFConversationItemHeaderBlock *)self usingLargeTextLayout];
  v8.receiver = self;
  v8.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v8 traitCollectionDidChange:v4];
  if (v6 != [(MFConversationItemHeaderBlock *)self usingLargeTextLayout]|| v5 != [(MFConversationItemHeaderBlock *)self _displayOptionsHideAvatar])
  {
    [(MFConversationItemHeaderBlock *)self _updateAvatarView];
    [(MFConversationItemHeaderBlock *)self _updateStyle];
    [(MFConversationItemHeaderBlock *)self _updateSubviewConstraints];
    [(MFConversationItemHeaderBlock *)self setNeedsUpdateConstraints];
    [(MFConversationItemHeaderBlock *)self updateConstraintsIfNeeded];
    v7 = [(MFConversationItemHeaderBlock *)self superview];
    [v7 layoutIfNeeded];
  }

  [(MFConversationItemHeaderBlock *)self _updateLabelColor];
}

- (void)_updateAvatarView
{
  v3 = [(MFConversationItemHeaderBlock *)self _shouldHideAvatar];
  v4 = [(MFConversationItemHeaderBlock *)self avatarView];
  v8 = v4;
  if (v3)
  {
    [v4 removeFromSuperview];
  }

  else
  {
    [(MFConversationItemHeaderBlock *)self addSubview:v4];

    [(MFConversationItemHeaderBlock *)self _updateDisplayedContact];
    v5 = [(MFConversationItemHeaderBlock *)self avatarView];
    v9 = v5;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    v7 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v7 setViewsToDodge:v6];
  }
}

- (void)_updateLabelColor
{
  v4 = +[UIColor mailExpandedConversationViewCellDateLabelColor];
  v3 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [v3 setTextColor:v4];
}

- (void)_clearAvatarViewConstraints
{
  v3 = [(MFConversationItemHeaderBlock *)self avatarViewConstraints];

  if (v3)
  {
    v4 = [(MFConversationItemHeaderBlock *)self avatarViewConstraints];
    [NSLayoutConstraint deactivateConstraints:v4];

    [(MFConversationItemHeaderBlock *)self setAvatarViewConstraints:0];
    [(MFConversationItemHeaderBlock *)self setAvatarTopConstraint:0];

    [(MFConversationItemHeaderBlock *)self setBottomToAvatarBottomConstraint:0];
  }
}

- (void)_addBIMILearnMoreButtonWithSenderDomain:(id)a3
{
  v21 = a3;
  v4 = objc_opt_new();
  [(MFConversationItemHeaderBlock *)self setBimiLearnMoreButton:v4];

  v5 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v5 setContentHorizontalAlignment:4];

  v6 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  LODWORD(v7) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v7];

  v8 = [(MFConversationItemHeaderBlock *)self _bimiLearnMoreMenuWithSenderDomain:v21];
  v9 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v9 setMenu:v8];

  v10 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v10 setShowsMenuAsPrimaryAction:1];

  v11 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  v12 = [(MFConversationItemHeaderBlock *)self captionView];
  [v11 setEnabled:{objc_msgSend(v12, "isExpanded")}];

  v13 = +[UIButtonConfiguration plainButtonConfiguration];
  [v13 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  v14 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v14 setConfiguration:v13];

  v15 = [(MFConversationItemHeaderBlock *)self _formattedBIMIStringWithSenderDomain:v21 isEnabled:1];
  v16 = [(MFConversationItemHeaderBlock *)self _formattedBIMIStringWithSenderDomain:v21 isEnabled:0];
  v17 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v17 setAttributedTitle:v15 forState:0];

  v18 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v18 setAttributedTitle:v16 forState:2];

  v19 = [(MFConversationItemHeaderBlock *)self primaryStackView];
  v20 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v19 insertArrangedSubview:v20 atIndex:1];
}

- (id)_bimiLearnMoreMenuWithSenderDomain:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationItemHeaderBlock *)self delegate];
  v6 = [v5 mailProviderDisplayNameForConversationItemHeader:self];

  v7 = _EFLocalizedString();
  if (v6)
  {
    [NSString stringWithFormat:v7, v6, v4];
  }

  else
  {
    [NSString stringWithFormat:v7, v4];
  }
  v8 = ;

  v9 = [UIImage systemImageNamed:MFImageGlyphInfo];
  v10 = _EFLocalizedString();
  v11 = [UIAction actionWithTitle:v10 image:v9 identifier:0 handler:&stru_100653C38];

  v15 = v11;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  v13 = [UIMenu menuWithTitle:v8 children:v12];

  return v13;
}

- (id)_formattedBIMIStringWithSenderDomain:(id)a3 isEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(MFConversationItemHeaderBlock *)self _checkmarkAttributedString];
  [v7 appendAttributedString:v8];

  v9 = [[NSAttributedString alloc] initWithString:@" "];
  [v7 appendAttributedString:v9];

  v10 = [[NSAttributedString alloc] initWithString:v6];
  [v7 appendAttributedString:v10];

  v16[0] = NSFontAttributeName;
  v11 = [(MFConversationItemHeaderBlock *)self _subheadFont];
  v17[0] = v11;
  v16[1] = NSForegroundColorAttributeName;
  if (v4)
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
  v3 = [(MFConversationItemHeaderBlock *)self viewModel];
  v4 = [v3 atomManager];
  [v4 setAtomProvider:0];

  v5 = [(MFConversationItemHeaderBlock *)self avatarView];
  [v5 setHidden:1];

  v6 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v6 removeFromSuperview];

  [(MFConversationItemHeaderBlock *)self setBimiLearnMoreButton:0];
  [(MFConversationItemHeaderBlock *)self setShowsBIMILearnMoreButton:1];
  v7.receiver = self;
  v7.super_class = MFConversationItemHeaderBlock;
  [(MFConversationItemHeaderBlock *)&v7 prepareForReuse];
}

- (void)displayMessageUsingViewModel:(id)a3
{
  v35.receiver = self;
  v35.super_class = MFConversationItemHeaderBlock;
  v30 = a3;
  [(MFConversationItemHeaderBlock *)&v35 displayMessageUsingViewModel:v30];
  [(MFConversationItemHeaderBlock *)self _updateDisplayedContact];
  [(MFConversationItemHeaderBlock *)self _updateTimestampLabels];
  [(MFConversationItemHeaderBlock *)self _updateStatusIndicators:v30];
  [(MFConversationItemHeaderBlock *)self _updateHorizontalStatusIndicators:v30];
  v4 = [(MFConversationItemHeaderBlock *)self observableCancelable];
  [v4 cancel];

  v36[0] = @"FromAtomsKey";
  v29 = [(MFConversationItemHeaderBlock *)self viewModel];
  v5 = [v29 senderList];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v37[0] = v7;
  v36[1] = @"ReplyToAtomsKey";
  v28 = [(MFConversationItemHeaderBlock *)self viewModel];
  v8 = [v28 replyToList];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  v37[1] = v10;
  v36[2] = @"ToAtomsKey";
  v11 = [(MFConversationItemHeaderBlock *)self viewModel];
  v12 = [v11 toList];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  v37[2] = v14;
  v36[3] = @"CcAtomsKey";
  v15 = [(MFConversationItemHeaderBlock *)self viewModel];
  v16 = [v15 ccList];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &__NSArray0__struct;
  }

  v37[3] = v18;
  v36[4] = @"BccAtomsKey";
  v19 = [(MFConversationItemHeaderBlock *)self viewModel];
  v20 = [v19 bccList];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &__NSArray0__struct;
  }

  v37[4] = v22;
  v31 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:5];

  v23 = [(MFConversationItemHeaderBlock *)self captionView];
  [v23 setParticipants:v31];
  if (v30)
  {
    [v23 setHideDetailsButton:{-[MFConversationItemHeaderBlock _shouldHideDetailsButton](self, "_shouldHideDetailsButton")}];
    [v23 setExpanded:objc_msgSend(v23 animated:"isExpanded") force:{0, 1}];
    objc_initWeak(&location, self);
    v24 = [v30 modelObservable];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001BFE14;
    v32[3] = &unk_100653C60;
    objc_copyWeak(&v33, &location);
    v25 = [v24 subscribeWithResultBlock:v32];
    [(MFConversationItemHeaderBlock *)self setObservableCancelable:v25];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v26 = [(MFConversationItemHeaderBlock *)self viewModel];
  v27 = [v26 atomManager];
  [v27 setAtomProvider:self];
}

- (void)_updateDisplayedContact
{
  v3 = [(MFConversationItemHeaderBlock *)self viewModel];
  v4 = [v3 senderList];
  v5 = [(MFConversationItemHeaderBlock *)self _shouldHideAvatar];
  v6 = v5;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    v8 = [v3 avatarContext];
    v9 = [v3 avatarGenerator];
    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001C0208;
    v23[3] = &unk_100653CD8;
    v10 = v9;
    v24 = v10;
    v11 = v8;
    v25 = v11;
    objc_copyWeak(&v26, &location);
    v12 = objc_retainBlock(v23);
    if (MUISolariumFeatureEnabled())
    {
      v13 = [(MFConversationItemHeaderBlock *)self avatarController];
      v14 = [v13 displayPersonForContext:v11 avatarGenerationBlock:v12];
    }

    else if (EMBlackPearlIsFeatureEnabled())
    {
      v13 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
      v15 = [v13 displayPersonForContext:v11 avatarGenerationBlock:v12];
    }

    else
    {
      v13 = [(MFConversationItemHeaderBlock *)self mfAvatarView];
      v16 = [v4 firstObject];
      v17 = [(MFConversationItemHeaderBlock *)self contactStore];
      v18 = [v13 displayPersonForEmailAddress:v16 usingContactStore:v17];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v19 = [(MFConversationItemHeaderBlock *)self avatarView];
  [v19 setHidden:v6];

  objc_initWeak(&location, self);
  v20 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001C0630;
  v21[3] = &unk_100653D00;
  objc_copyWeak(&v22, &location);
  [v20 setAddresses:v4 withCompletion:v21];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_updateTimestampLabels
{
  v3 = [(MFConversationItemHeaderBlock *)self viewModel];
  v6 = [v3 dateSent];

  v4 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [v4 setDate:v6];

  v5 = [(MFConversationItemHeaderBlock *)self captionView];
  [v5 setDateSent:v6];
}

- (void)_updateStatusIndicators:(id)a3
{
  v13 = a3;
  v4 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
  v5 = [v13 isReplied];
  v6 = [v13 isForwarded];
  v7 = [v13 isRead];
  v8 = [v13 isVIP];
  v9 = 8;
  if (!v5)
  {
    v9 = 0;
  }

  if (v6)
  {
    v9 |= 0x10uLL;
  }

  v10 = v9 | v7 ^ 1;
  if (v8)
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  [v4 setIndicatorOptions:v11];
  if ([v4 effectiveIndicatorOptions])
  {
    [(MFConversationItemHeaderBlock *)self setNeedsLayout];
  }

  else
  {
    v12 = [v4 statusIndicatorImageViews];
    [v12 makeObjectsPerformSelector:"removeFromSuperview"];
  }
}

- (void)_updateHorizontalStatusIndicators:(id)a3
{
  v13 = a3;
  v4 = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorManager];
  v5 = [v13 isFlagged];
  v6 = [v13 hasAttachments];
  v7 = [v13 isNotify];
  v8 = [v13 isMute];
  v9 = [v13 isBlockedSender];
  v10 = 4;
  if (!v5)
  {
    v10 = 0;
  }

  if (v6)
  {
    v10 |= 0x20uLL;
  }

  if (v7)
  {
    v10 |= 0x40uLL;
  }

  if (v8)
  {
    v10 |= 0x80uLL;
  }

  if (v9)
  {
    v11 = v10 | 0x100;
  }

  else
  {
    v11 = v10;
  }

  [v4 setIndicatorOptions:v11];
  v12 = [v13 flagColors];
  [v4 setFlagColors:v12];

  if ([v4 effectiveIndicatorOptions])
  {
    [(MFConversationItemHeaderBlock *)self setNeedsLayout];
  }

  else
  {
    [(MFConversationItemHeaderBlock *)self _resetHorizontalStatusIndicatorContentViewIfNeeded];
  }
}

- (void)_layoutStatusIndicatorsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(MFConversationItemHeaderBlock *)self _hasConversationLayout])
  {
    v8 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
    [v8 updateImageViews];

    v9 = [(MFConversationItemHeaderBlock *)self displayMetrics];
    [v9 baselineToBaselineSpacing];
    v11 = v10;

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MaxY = CGRectGetMaxY(v39);
    v13 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    v14 = [v13 label];
    v15 = [v14 font];
    [v15 capHeight];
    v17 = v16;

    LODWORD(v15) = [(MFConversationItemHeaderBlock *)self mf_prefersRightToLeftInterfaceLayout];
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MidX = CGRectGetMidX(v40);
    v19 = x;
    v20 = y;
    v21 = width;
    v22 = height;
    if (v15)
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
    v31 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
    v32 = [v31 statusIndicatorImageViews];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1001C0D90;
    v37[3] = &unk_1006538A8;
    v37[4] = self;
    *&v37[5] = v30;
    *&v37[6] = MaxY + v17 * -0.5;
    *&v37[7] = v11 + 1.0;
    [v32 enumerateObjectsUsingBlock:v37];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = [(MFConversationItemHeaderBlock *)self statusIndicatorManager];
    v26 = [v25 statusIndicatorImageViews];

    v27 = [v26 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
            objc_enumerationMutation(v26);
          }

          [*(*(&v33 + 1) + 8 * v29) removeFromSuperview];
          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v26 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v27);
    }
  }
}

- (void)_layoutHorizontalStatusIndicators:(CGRect)a3
{
  v4 = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorManager:a3.origin.x];
  if ([(MFConversationItemHeaderBlock *)self _hasConversationLayout])
  {
    [v4 updateImageViews];
    v5 = [v4 statusIndicatorImageViews];
    if ([v5 count])
    {
      v6 = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorContentView];
      v7 = [v6 subviews];
      [v7 makeObjectsPerformSelector:"removeFromSuperview"];

      v8 = [v6 mf_prefersRightToLeftInterfaceLayout];
      [v4 midXToMidXSpacing];
      v10 = v9;
      v11 = [v5 ef_reverse];
      if (v8)
      {
        v10 = -v10;
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001C109C;
      v13[3] = &unk_100653D28;
      v12 = v6;
      v14 = v12;
      v5 = v11;
      v15 = v5;
      v16 = v10;
      [v5 enumerateObjectsUsingBlock:v13];
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
  v15 = [(MFConversationItemHeaderBlock *)self horizontalStatusIndicatorContentView];
  v3 = [v15 subviews];
  v4 = [(MFConversationItemHeaderBlock *)self placeHolderView];
  if (!v4 || [v3 count] != 1 || (objc_msgSend(v3, "containsObject:", v4) & 1) == 0)
  {
    [v3 makeObjectsPerformSelector:"removeFromSuperview"];
    if (!v4)
    {
      v5 = objc_alloc_init(UIView);
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v4 = v5;
      [(MFConversationItemHeaderBlock *)self setPlaceHolderView:v5];
    }

    [v15 addSubview:v4];
    v6 = objc_opt_new();
    v7 = [v4 leadingAnchor];
    v8 = [v15 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v6 addObject:v9];

    v10 = [v4 trailingAnchor];
    v11 = [v15 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v6 addObject:v12];

    v13 = [v4 widthAnchor];
    v14 = [v13 constraintEqualToConstant:0.0];
    [v6 addObject:v14];

    [NSLayoutConstraint activateConstraints:v6];
  }
}

- (void)_showMessageInfo
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1001C1B04;
  v45 = sub_1001C1B14;
  v46 = 0;
  if (_os_feature_enabled_impl())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained conversationAttachmentURLsForConversationItemHeaderBlock:self];
    v5 = [WeakRetained richLinksInConversationForConversationItemHeaderBlock:self];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = sub_1001C1B04;
    v39[4] = sub_1001C1B14;
    v40 = objc_alloc_init(NSMutableArray);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_1001C1B04;
    v37[4] = sub_1001C1B14;
    v38 = objc_alloc_init(NSMutableArray);
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001C1B1C;
    v34[3] = &unk_100653D50;
    v36 = v39;
    v7 = v6;
    v35 = v7;
    [v4 addSuccessBlock:v34];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001C1B7C;
    v31[3] = &unk_100653D78;
    v33 = v39;
    v8 = v7;
    v32 = v8;
    [v4 addFailureBlock:v31];
    dispatch_group_enter(v8);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001C1C00;
    v28[3] = &unk_100653D50;
    v30 = v37;
    v9 = v8;
    v29 = v9;
    [v5 addSuccessBlock:v28];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001C1C60;
    v25[3] = &unk_100653D78;
    v27 = v37;
    v10 = v9;
    v26 = v10;
    [v5 addFailureBlock:v25];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1D74;
    block[3] = &unk_100653DA0;
    v20 = WeakRetained;
    v21 = self;
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
    v13 = [(MFConversationItemHeaderBlock *)self viewModel];
    v14 = [(MFConversationItemHeaderBlock *)self contactStore];
    v15 = [(MFMessageInfoViewController *)v12 initWithViewModel:v13 contactsStore:v14];
    v16 = v42[5];
    v42[5] = v15;

    [(MFConversationItemHeaderBlock *)self setMessageInfoViewController:v42[5]];
    [v42[5] setDelegate:self];
    v17 = [v42[5] view];
    [v17 frame];
    [v42[5] setPreferredContentSize:{320.0, v18}];

    v4 = [(MFConversationItemHeaderBlock *)self delegate];
    [v4 conversationItemHeader:self presentViewController:v42[5]];
  }

  _Block_object_dispose(&v41, 8);
}

- (id)presentingViewControllerForAvatarView:(id)a3
{
  v4 = [(MFConversationItemHeaderBlock *)self delegate];
  v5 = [v4 viewControllerForPresentationsFromConversationItemHeader:self];

  return v5;
}

- (void)setShowsHeaderDetails:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(MFConversationItemHeaderBlock *)self captionView];
  [v6 setExpanded:v5 animated:v4 force:0];
}

- (id)expandableCaptionView:(id)a3 displayNameForEmailAddress:(id)a4 abbreviated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(MFConversationItemHeaderBlock *)self delegate];
  v9 = [v8 conversationItemHeader:self displayNameForEmailAddress:v7 abbreviated:v5];

  return v9;
}

- (id)popoverManagerForExpandableCaptionView:(id)a3
{
  v4 = [(MFConversationItemHeaderBlock *)self delegate];
  v5 = [v4 popoverManagerForForConversationItemHeader:self];

  return v5;
}

- (void)expandableCaptionView:(id)a3 willBecomeExpanded:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = [(MFConversationItemHeaderBlock *)self viewModel];
    v11 = [v10 atomManager];
    [v11 updateTrustForDisplayedAtoms];
  }

  v12 = [(MFConversationItemHeaderBlock *)self usingLargeTextLayout];
  v13 = v12;
  if (v6)
  {
    if (v12)
    {
      v14 = 1;
      goto LABEL_10;
    }

    v18 = [(MFConversationItemHeaderBlock *)self avatarView];
    v29 = v18;
    v19 = [NSArray arrayWithObjects:&v29 count:1];
    v20 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v20 setViewsToDodge:v19];
    v14 = 1;
  }

  else
  {
    v15 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    v16 = [v15 addressAtoms];
    v17 = [v16 count] < 2;

    v14 = (2 * v17);
    if (v13)
    {
      goto LABEL_10;
    }

    v18 = [(MFConversationItemHeaderBlock *)self timestampLabel];
    v28 = v18;
    v19 = [NSArray arrayWithObjects:&v28 count:1];
    v20 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v20 setViewsToDodge:v19];
  }

LABEL_10:
  if ([v9 isAnimated])
  {
    v21 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v21 crossFadeLabelVisibility:v6 atomSeparatorStyle:v14 withAnimationCoordinator:v9];
  }

  else
  {
    v22 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v22 setLabelVisible:v6];

    v21 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
    [v21 setAddressAtomSeparatorStyle:v14];
  }

  v23 = [(MFConversationItemHeaderBlock *)self bimiLearnMoreButton];
  [v23 setEnabled:v6];

  [(MFConversationItemHeaderBlock *)self setClipsToBounds:1];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001C24B0;
  v26[3] = &unk_10064D9D8;
  v26[4] = self;
  v27 = v6;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001C2618;
  v25[3] = &unk_10064C570;
  v25[4] = self;
  [v9 animateAlongsideAnimations:v26 completion:v25];
  if (self->_showDetails != v6)
  {
    if ([(MFConversationItemHeaderBlock *)self _shouldSaveHeaderDetailsButtonSettings])
    {
      self->_showDetails = v6;
      if (byte_1006DD4A0 != v6)
      {
        v24 = +[NSUserDefaults standardUserDefaults];
        [v24 setBool:self->_showDetails forKey:@"ShowMessageHeaderDetails"];

        byte_1006DD4A0 = self->_showDetails;
      }
    }
  }
}

- (void)expandableCaptionView:(id)a3 didTapAtom:(id)a4 forAtomType:(unint64_t)a5
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddressAtom:v8 forAtomType:a5];
  }
}

- (void)expandableCaptionView:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(MFConversationItemHeaderBlock *)self delegate];
  [v8 conversationItemHeader:self searchForDisplayName:v9 emailAddresses:v7];
}

- (void)expandableCaptionView:(id)a3 displayContactCardForAddressAtom:(id)a4 atomType:(unint64_t)a5
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddressAtom:v8 forAtomType:a5];
  }
}

- (void)_primaryAddressAtomWasTapped:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddressAtom:v5 forAtomType:1];
  }
}

- (void)iterateDisplayedAtomListsWithBlock:(id)a3
{
  v6 = a3;
  v4 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  v6[2](v6, v4);

  v5 = [(MFConversationItemHeaderBlock *)self captionView];
  [v5 iterateAtomListsWithBlock:v6];
}

- (BOOL)shouldDecorateAtomListWithSMIMEStatus:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  LOBYTE(self) = v5 == v4;

  return self;
}

- (void)setOtherSigners:(id)a3
{
  v6 = [a3 ef_map:&stru_100653DE0];
  v4 = [(MFConversationItemHeaderBlock *)self captionView];
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  [v4 setOtherSigners:v5];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(MFConversationItemHeaderBlock *)self captionView];
  v6 = [v5 isExpanded];

  if (v6)
  {
    [v4 locationInView:self];
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

- (void)_tappedHeader:(id)a3
{
  v3 = [(MFConversationItemHeaderBlock *)self captionView];
  [v3 setExpanded:1 animated:1 force:0];
}

- (void)_updateFonts
{
  v6 = [(MFConversationItemHeaderBlock *)self _footnoteFont];
  v3 = [(MFConversationItemHeaderBlock *)self timestampLabel];
  [v3 setFont:v6];

  if ([(MFConversationItemHeaderBlock *)self _hasConversationLayout]|| [(MFConversationItemHeaderBlock *)self _shouldUseFootnoteFontInCaptionView])
  {
    v7 = [(MFConversationItemHeaderBlock *)self _footnoteFont];
    v4 = [(MFConversationItemHeaderBlock *)self captionView];
    [v4 setFont:v7];
  }

  else
  {
    v7 = [(MFConversationItemHeaderBlock *)self _subheadFont];
    v4 = [(MFConversationItemHeaderBlock *)self captionView];
    [v4 setFont:v7];
  }

  v8 = [(MFConversationItemHeaderBlock *)self primaryAtomList];
  v5 = +[UIFont mf_messageHeaderSenderLabelFont];
  [v8 setOverrideFont:v5];
}

- (id)_subheadFont
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedPreferredFontForStyle:UIFontTextStyleSubheadline];

  return v3;
}

- (void)messageInfoViewController:(id)a3 didSelectAddress:(id)a4 forAtomType:(unint64_t)a5
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddress:v8 forAtomType:a5];
  }
}

- (void)labelledAtomList:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(MFConversationItemHeaderBlock *)self delegate];
  [v8 conversationItemHeader:self searchForDisplayName:v9 emailAddresses:v7];
}

- (void)labelledAtomList:(id)a3 displayContactCardForAddressAtom:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained conversationItemHeader:self didSelectAddressAtom:v6 forAtomType:{objc_msgSend(v8, "atomType")}];
  }
}

- (MFConversationItemHeaderBlockDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end