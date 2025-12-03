@interface CNGameCenterCell
+ (void)presentPlayerProfile:(id)profile;
- (CNGameCenterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNPresenterDelegate)presentingDelegate;
- (id)labelView;
- (id)variableConstraints;
- (void)dismissProfileViewController;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)item;
- (void)setupViews;
- (void)updateViewsWithCardGroupItem:(id)item;
@end

@implementation CNGameCenterCell

- (CNPresenterDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (void)dismissProfileViewController
{
  presentingDelegate = [(CNGameCenterCell *)self presentingDelegate];
  profileViewController = [(CNGameCenterCell *)self profileViewController];
  [presentingDelegate sender:self dismissViewController:profileViewController];

  [(CNGameCenterCell *)self setProfileViewController:0];
}

- (void)performDefaultAction
{
  v3 = objc_opt_class();
  playerID = [(CNGameCenterCell *)self playerID];
  [v3 presentPlayerProfile:playerID];
}

- (id)variableConstraints
{
  v59[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v56.receiver = self;
  v56.super_class = CNGameCenterCell;
  variableConstraints = [(CNLabeledCell *)&v56 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  labelView = [(CNGameCenterCell *)self labelView];
  v7 = 0x1E695D000uLL;
  v55 = v5;
  if (labelView && (v8 = labelView, v9 = [(CNGameCenterCell *)self showsGameCenterLabel], v8, v9))
  {
    gameCenterLabel = [(CNGameCenterCell *)self gameCenterLabel];
    leadingAnchor = [gameCenterLabel leadingAnchor];
    contentView = [(CNGameCenterCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v59[0] = v12;
    gameCenterLabel2 = [(CNGameCenterCell *)self gameCenterLabel];
    trailingAnchor = [gameCenterLabel2 trailingAnchor];
    contentView2 = [(CNGameCenterCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v59[1] = v38;
    gameCenterLabel3 = [(CNGameCenterCell *)self gameCenterLabel];
    topAnchor = [gameCenterLabel3 topAnchor];
    contentView3 = [(CNGameCenterCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:13.0];
    v59[2] = v33;
    gameCenterLabel4 = [(CNGameCenterCell *)self gameCenterLabel];
    bottomAnchor = [gameCenterLabel4 bottomAnchor];
    playerViewContainer = [(CNGameCenterCell *)self playerViewContainer];
    topAnchor3 = [playerViewContainer topAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
    v59[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
    [v5 addObjectsFromArray:v17];

    contentView4 = contentView;
    playerViewContainer2 = gameCenterLabel;

    v7 = 0x1E695D000;
    topAnchor4 = leadingAnchor;
  }

  else
  {
    playerViewContainer2 = [(CNGameCenterCell *)self playerViewContainer];
    topAnchor4 = [playerViewContainer2 topAnchor];
    contentView4 = [(CNGameCenterCell *)self contentView];
    layoutMarginsGuide = [contentView4 topAnchor];
    leadingAnchor2 = [topAnchor4 constraintEqualToAnchor:layoutMarginsGuide constant:8.0];
    v58 = leadingAnchor2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    [v5 addObjectsFromArray:v12];
  }

  playerViewContainer3 = [(CNGameCenterCell *)self playerViewContainer];
  leadingAnchor3 = [playerViewContainer3 leadingAnchor];
  contentView5 = [(CNGameCenterCell *)self contentView];
  layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v57[0] = v44;
  playerViewContainer4 = [(CNGameCenterCell *)self playerViewContainer];
  trailingAnchor3 = [playerViewContainer4 trailingAnchor];
  contentView6 = [(CNGameCenterCell *)self contentView];
  layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v57[1] = v24;
  playerViewContainer5 = [(CNGameCenterCell *)self playerViewContainer];
  bottomAnchor2 = [playerViewContainer5 bottomAnchor];
  contentView7 = [(CNGameCenterCell *)self contentView];
  bottomAnchor3 = [contentView7 bottomAnchor];
  v29 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v57[2] = v29;
  v30 = [*(v7 + 3784) arrayWithObjects:v57 count:3];
  [v55 addObjectsFromArray:v30];

  return v55;
}

- (id)labelView
{
  gameCenterLabel = self->_gameCenterLabel;
  if (!gameCenterLabel)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_gameCenterLabel;
    self->_gameCenterLabel = standardLabelView;

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)self->_gameCenterLabel setFont:v6];

    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"GAME_CENTER_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [(UILabel *)self->_gameCenterLabel setText:v8];

    gameCenterLabel = self->_gameCenterLabel;
  }

  return gameCenterLabel;
}

- (void)setupViews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  playerViewContainer = self->_playerViewContainer;
  self->_playerViewContainer = v3;

  [(UIView *)self->_playerViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CNGameCenterCell *)self contentView];
  [contentView addSubview:self->_playerViewContainer];
}

- (void)updateViewsWithCardGroupItem:(id)item
{
  v46[5] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  playerView = [(CNGameCenterCell *)self playerView];

  if (playerView)
  {
    playerView2 = [(CNGameCenterCell *)self playerView];
    [playerView2 removeFromSuperview];
  }

  relationshipResult = [itemCopy relationshipResult];
  relatedPlayer = [relationshipResult relatedPlayer];
  playerID = [relatedPlayer playerID];
  [(CNGameCenterCell *)self setPlayerID:playerID];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v8 = getGKGameCenterFriendPlayerViewClass_softClass;
  v45 = getGKGameCenterFriendPlayerViewClass_softClass;
  if (!getGKGameCenterFriendPlayerViewClass_softClass)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __getGKGameCenterFriendPlayerViewClass_block_invoke;
    v41[3] = &unk_1E74E7518;
    v41[4] = &v42;
    __getGKGameCenterFriendPlayerViewClass_block_invoke(v41);
    v8 = v43[3];
  }

  v9 = v8;
  _Block_object_dispose(&v42, 8);
  v10 = [v8 newWithRelationshipResult:relationshipResult];
  [(CNGameCenterCell *)self setPlayerView:v10];

  playerView3 = [(CNGameCenterCell *)self playerView];
  [playerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  playerViewContainer = [(CNGameCenterCell *)self playerViewContainer];
  playerView4 = [(CNGameCenterCell *)self playerView];
  [playerViewContainer addSubview:playerView4];

  v24 = MEMORY[0x1E696ACD8];
  playerView5 = [(CNGameCenterCell *)self playerView];
  topAnchor = [playerView5 topAnchor];
  playerViewContainer2 = [(CNGameCenterCell *)self playerViewContainer];
  topAnchor2 = [playerViewContainer2 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[0] = v34;
  playerView6 = [(CNGameCenterCell *)self playerView];
  bottomAnchor = [playerView6 bottomAnchor];
  playerViewContainer3 = [(CNGameCenterCell *)self playerViewContainer];
  bottomAnchor2 = [playerViewContainer3 bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[1] = v29;
  playerView7 = [(CNGameCenterCell *)self playerView];
  leadingAnchor = [playerView7 leadingAnchor];
  playerViewContainer4 = [(CNGameCenterCell *)self playerViewContainer];
  leadingAnchor2 = [playerViewContainer4 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[2] = v14;
  playerView8 = [(CNGameCenterCell *)self playerView];
  trailingAnchor = [playerView8 trailingAnchor];
  playerViewContainer5 = [(CNGameCenterCell *)self playerViewContainer];
  trailingAnchor2 = [playerViewContainer5 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[3] = v19;
  playerView9 = [(CNGameCenterCell *)self playerView];
  heightAnchor = [playerView9 heightAnchor];
  v22 = [heightAnchor constraintGreaterThanOrEqualToConstant:70.0];
  v46[4] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
  [v24 activateConstraints:v23];
}

- (void)setCardGroupItem:(id)item
{
  v5.receiver = self;
  v5.super_class = CNGameCenterCell;
  itemCopy = item;
  [(CNContactCell *)&v5 setCardGroupItem:itemCopy];
  [(CNGameCenterCell *)self updateViewsWithCardGroupItem:itemCopy, v5.receiver, v5.super_class];
}

- (CNGameCenterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNGameCenterCell;
  v4 = [(CNLabeledCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNGameCenterCell *)v4 setupViews];
    v6 = v5;
  }

  return v5;
}

+ (void)presentPlayerProfile:(id)profile
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  v4 = objc_alloc(MEMORY[0x1E69635F8]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = getGKGamesAppIdentifierSymbolLoc_ptr;
  v21 = getGKGamesAppIdentifierSymbolLoc_ptr;
  if (!getGKGamesAppIdentifierSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v23 = __getGKGamesAppIdentifierSymbolLoc_block_invoke;
    v24 = &unk_1E74E7518;
    v25 = &v18;
    __getGKGamesAppIdentifierSymbolLoc_block_invoke(&buf);
    v5 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getGKGamesAppIdentifier(void)"];
    [currentHandler handleFailureInFunction:v16 file:@"CNGameCenterSoftLink.h" lineNumber:63 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v6 = *v5;
  v17 = 0;
  v7 = v6;
  v8 = [v4 initWithBundleIdentifier:v7 allowPlaceholder:0 error:&v17];
  v9 = v17;

  if (v9)
  {
    v10 = CNUILogContactCard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "[CNGameCenterCell presentPlayerProfile:], failed to check for the app install status, reason: %@", &buf, 0xCu);
    }
  }

  if (v8)
  {
    v11 = @"https://games.apple.com/player/%@";
  }

  else
  {
    v11 = @"settings-navigation://com.apple.Settings.GameCenter/ALL_FRIENDS?id=%@";
  }

  profileCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v11, profileCopy];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v14 = [MEMORY[0x1E695DFF8] URLWithString:profileCopy];
  [defaultWorkspace openSensitiveURL:v14 withOptions:0];
}

@end