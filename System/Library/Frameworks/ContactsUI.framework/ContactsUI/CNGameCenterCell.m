@interface CNGameCenterCell
+ (void)presentPlayerProfile:(id)a3;
- (CNGameCenterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CNPresenterDelegate)presentingDelegate;
- (id)labelView;
- (id)variableConstraints;
- (void)dismissProfileViewController;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)a3;
- (void)setupViews;
- (void)updateViewsWithCardGroupItem:(id)a3;
@end

@implementation CNGameCenterCell

- (CNPresenterDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (void)dismissProfileViewController
{
  v3 = [(CNGameCenterCell *)self presentingDelegate];
  v4 = [(CNGameCenterCell *)self profileViewController];
  [v3 sender:self dismissViewController:v4];

  [(CNGameCenterCell *)self setProfileViewController:0];
}

- (void)performDefaultAction
{
  v3 = objc_opt_class();
  v4 = [(CNGameCenterCell *)self playerID];
  [v3 presentPlayerProfile:v4];
}

- (id)variableConstraints
{
  v59[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v56.receiver = self;
  v56.super_class = CNGameCenterCell;
  v4 = [(CNLabeledCell *)&v56 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(CNGameCenterCell *)self labelView];
  v7 = 0x1E695D000uLL;
  v55 = v5;
  if (v6 && (v8 = v6, v9 = [(CNGameCenterCell *)self showsGameCenterLabel], v8, v9))
  {
    v49 = [(CNGameCenterCell *)self gameCenterLabel];
    v41 = [v49 leadingAnchor];
    v39 = [(CNGameCenterCell *)self contentView];
    v10 = [v39 layoutMarginsGuide];
    v11 = [v10 leadingAnchor];
    v12 = [v41 constraintEqualToAnchor:v11];
    v59[0] = v12;
    v53 = [(CNGameCenterCell *)self gameCenterLabel];
    v47 = [v53 trailingAnchor];
    v51 = [(CNGameCenterCell *)self contentView];
    v45 = [v51 layoutMarginsGuide];
    v43 = [v45 trailingAnchor];
    v38 = [v47 constraintEqualToAnchor:v43];
    v59[1] = v38;
    v37 = [(CNGameCenterCell *)self gameCenterLabel];
    v35 = [v37 topAnchor];
    v36 = [(CNGameCenterCell *)self contentView];
    v34 = [v36 topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 constant:13.0];
    v59[2] = v33;
    v32 = [(CNGameCenterCell *)self gameCenterLabel];
    v13 = [v32 bottomAnchor];
    v14 = [(CNGameCenterCell *)self playerViewContainer];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v59[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
    [v5 addObjectsFromArray:v17];

    v18 = v39;
    v19 = v49;

    v7 = 0x1E695D000;
    v20 = v41;
  }

  else
  {
    v19 = [(CNGameCenterCell *)self playerViewContainer];
    v20 = [v19 topAnchor];
    v18 = [(CNGameCenterCell *)self contentView];
    v10 = [v18 topAnchor];
    v11 = [v20 constraintEqualToAnchor:v10 constant:8.0];
    v58 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    [v5 addObjectsFromArray:v12];
  }

  v54 = [(CNGameCenterCell *)self playerViewContainer];
  v50 = [v54 leadingAnchor];
  v52 = [(CNGameCenterCell *)self contentView];
  v48 = [v52 layoutMarginsGuide];
  v46 = [v48 leadingAnchor];
  v44 = [v50 constraintEqualToAnchor:v46];
  v57[0] = v44;
  v42 = [(CNGameCenterCell *)self playerViewContainer];
  v40 = [v42 trailingAnchor];
  v21 = [(CNGameCenterCell *)self contentView];
  v22 = [v21 layoutMarginsGuide];
  v23 = [v22 trailingAnchor];
  v24 = [v40 constraintEqualToAnchor:v23];
  v57[1] = v24;
  v25 = [(CNGameCenterCell *)self playerViewContainer];
  v26 = [v25 bottomAnchor];
  v27 = [(CNGameCenterCell *)self contentView];
  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
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
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_gameCenterLabel;
    self->_gameCenterLabel = v4;

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
  v5 = [(CNGameCenterCell *)self contentView];
  [v5 addSubview:self->_playerViewContainer];
}

- (void)updateViewsWithCardGroupItem:(id)a3
{
  v46[5] = *MEMORY[0x1E69E9840];
  v39 = a3;
  v4 = [(CNGameCenterCell *)self playerView];

  if (v4)
  {
    v5 = [(CNGameCenterCell *)self playerView];
    [v5 removeFromSuperview];
  }

  v40 = [v39 relationshipResult];
  v6 = [v40 relatedPlayer];
  v7 = [v6 playerID];
  [(CNGameCenterCell *)self setPlayerID:v7];

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
  v10 = [v8 newWithRelationshipResult:v40];
  [(CNGameCenterCell *)self setPlayerView:v10];

  v11 = [(CNGameCenterCell *)self playerView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CNGameCenterCell *)self playerViewContainer];
  v13 = [(CNGameCenterCell *)self playerView];
  [v12 addSubview:v13];

  v24 = MEMORY[0x1E696ACD8];
  v38 = [(CNGameCenterCell *)self playerView];
  v36 = [v38 topAnchor];
  v37 = [(CNGameCenterCell *)self playerViewContainer];
  v35 = [v37 topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v46[0] = v34;
  v33 = [(CNGameCenterCell *)self playerView];
  v31 = [v33 bottomAnchor];
  v32 = [(CNGameCenterCell *)self playerViewContainer];
  v30 = [v32 bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v46[1] = v29;
  v28 = [(CNGameCenterCell *)self playerView];
  v26 = [v28 leadingAnchor];
  v27 = [(CNGameCenterCell *)self playerViewContainer];
  v25 = [v27 leadingAnchor];
  v14 = [v26 constraintEqualToAnchor:v25];
  v46[2] = v14;
  v15 = [(CNGameCenterCell *)self playerView];
  v16 = [v15 trailingAnchor];
  v17 = [(CNGameCenterCell *)self playerViewContainer];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v46[3] = v19;
  v20 = [(CNGameCenterCell *)self playerView];
  v21 = [v20 heightAnchor];
  v22 = [v21 constraintGreaterThanOrEqualToConstant:70.0];
  v46[4] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
  [v24 activateConstraints:v23];
}

- (void)setCardGroupItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNGameCenterCell;
  v4 = a3;
  [(CNContactCell *)&v5 setCardGroupItem:v4];
  [(CNGameCenterCell *)self updateViewsWithCardGroupItem:v4, v5.receiver, v5.super_class];
}

- (CNGameCenterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNGameCenterCell;
  v4 = [(CNLabeledCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CNGameCenterCell *)v4 setupViews];
    v6 = v5;
  }

  return v5;
}

+ (void)presentPlayerProfile:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getGKGamesAppIdentifier(void)"];
    [v15 handleFailureInFunction:v16 file:@"CNGameCenterSoftLink.h" lineNumber:63 description:{@"%s", dlerror()}];

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

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, v3];
  v13 = [MEMORY[0x1E6963608] defaultWorkspace];
  v14 = [MEMORY[0x1E695DFF8] URLWithString:v12];
  [v13 openSensitiveURL:v14 withOptions:0];
}

@end