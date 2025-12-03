@interface EKUIParticipantContainer
- (EKUIParticipantContainer)initWithParticipant:(id)participant viewController:(id)controller;
- (UINavigationController)navController;
- (void)setBusy:(BOOL)busy;
- (void)singleTap:(id)tap;
- (void)updateContentForSizeCategoryChange:(id)change;
- (void)updateSublabelWithState:(unint64_t)state;
@end

@implementation EKUIParticipantContainer

- (EKUIParticipantContainer)initWithParticipant:(id)participant viewController:(id)controller
{
  v40[1] = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  controllerCopy = controller;
  v36.receiver = self;
  v36.super_class = EKUIParticipantContainer;
  v9 = [(EKUIParticipantContainer *)&v36 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, participant);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKUIParticipantContainer *)v10 setBackgroundColor:clearColor];

    v12 = [[EKUILabeledAvatarView alloc] initWithIdentity:participantCopy placement:0 options:2];
    avatar = v10->_avatar;
    v10->_avatar = v12;

    [(EKUILabeledAvatarView *)v10->_avatar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKUIParticipantContainer *)v10 addSubview:v10->_avatar];
    v14 = objc_opt_new();
    nameLabel = v10->_nameLabel;
    v10->_nameLabel = v14;

    [(UILabel *)v10->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v10->_nameLabel setFont:v16];

    v35 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:participantCopy];
    displayName = [v35 displayName];
    [(UILabel *)v10->_nameLabel setText:displayName];

    [(EKUIParticipantContainer *)v10 addSubview:v10->_nameLabel];
    v18 = objc_opt_new();
    labelConstraints = v10->_labelConstraints;
    v10->_labelConstraints = v18;

    [(EKUIParticipantContainer *)v10 updateSublabelWithState:0];
    leadingAnchor = [(EKUILabeledAvatarView *)v10->_avatar leadingAnchor];
    safeAreaLayoutGuide = [(EKUIParticipantContainer *)v10 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    [v23 setConstant:20.0];
    [v23 setActive:1];
    v24 = MEMORY[0x1E696ACD8];
    v39 = @"avatar";
    v40[0] = v10->_avatar;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v26 = [v24 constraintsWithVisualFormat:@"H:[avatar(==35)]" options:1024 metrics:0 views:v25];
    [v24 activateConstraints:v26];

    v27 = MEMORY[0x1E696ACD8];
    v37 = @"avatar";
    v38 = v10->_avatar;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v29 = [v27 constraintsWithVisualFormat:@"V:[avatar(==35)]" options:0 metrics:0 views:v28];
    [v27 activateConstraints:v29];

    v30 = [MEMORY[0x1E696ACD8] constraintWithItem:v10->_avatar attribute:10 relatedBy:0 toItem:v10 attribute:10 multiplier:1.0 constant:0.0];
    [v30 setActive:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_updateContentForSizeCategoryChange_ name:*MEMORY[0x1E69DDC48] object:0];
    v32 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_singleTap_];
    [v32 setNumberOfTapsRequired:1];
    [v32 setCancelsTouchesInView:0];
    [(EKUIParticipantContainer *)v10 addGestureRecognizer:v32];
    navigationController = [controllerCopy navigationController];
    [(EKUIParticipantContainer *)v10 setNavController:navigationController];
  }

  return v10;
}

- (void)singleTap:(id)tap
{
  v4 = [EKIdentityViewController alloc];
  participant = [(EKUIParticipantContainer *)self participant];
  v7 = [(EKIdentityViewController *)v4 initWithIdentity:participant];

  navController = [(EKUIParticipantContainer *)self navController];
  [navController pushViewController:v7 animated:1];
}

- (void)updateSublabelWithState:(unint64_t)state
{
  v123[1] = *MEMORY[0x1E69E9840];
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  participant = [(EKUIParticipantContainer *)self participant];
  isLocationRoom = [participant isLocationRoom];

  if (isLocationRoom)
  {
    v8 = EventKitUIBundle();
    v9 = v8;
    v10 = @"Room";
LABEL_3:
    v11 = [v8 localizedStringForKey:v10 value:&stru_1F4EF6790 table:0];
LABEL_6:

    goto LABEL_7;
  }

  participant2 = [(EKUIParticipantContainer *)self participant];
  participantRole = [participant2 participantRole];

  if (participantRole == 2)
  {
    v14 = EventKitUIBundle();
    v11 = [v14 localizedStringForKey:@"Optional" value:&stru_1F4EF6790 table:0];

    [MEMORY[0x1E69DC888] tertiaryLabelColor];
    systemRedColor = v9 = systemRedColor;
    goto LABEL_6;
  }

  participant3 = [(EKUIParticipantContainer *)self participant];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = EventKitUIBundle();
    v9 = v8;
    v10 = @"Organizer";
    goto LABEL_3;
  }

  v11 = 0;
LABEL_7:
  v15 = EventKitUIBundle();
  v104 = [v15 localizedStringForKey:@"Conflict" value:&stru_1F4EF6790 table:0];

  if (v11)
  {
    if (state == 2)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = EventKitUIBundle();
      v18 = [v17 localizedStringForKey:@"StatusConflictFormat" value:@"%@ · %@" table:0];
      tertiaryLabelColor2 = [v16 localizedStringWithFormat:v18, v104, v11];

      v20 = [tertiaryLabelColor2 rangeOfString:v104];
      v100 = v21;
      v102 = v20;
      v22 = objc_alloc(MEMORY[0x1E696AD40]);
      selfCopy = self;
      v122 = *MEMORY[0x1E69DB650];
      v24 = v122;
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v123[0] = tertiaryLabelColor;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:&v122 count:1];
      v27 = v26 = systemRedColor;
      v28 = [v22 initWithString:tertiaryLabelColor2 attributes:v27];

      systemRedColor = v26;
      v29 = v28;
      v120 = v24;
      v121 = v26;
      self = selfCopy;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
      [v29 setAttributes:v30 range:{v102, v100}];

LABEL_18:
      goto LABEL_19;
    }

    v32 = objc_alloc(MEMORY[0x1E696AD40]);
    v118 = *MEMORY[0x1E69DB650];
    tertiaryLabelColor2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v119 = tertiaryLabelColor2;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    v29 = [v32 initWithString:v11 attributes:v33];
LABEL_17:

    goto LABEL_18;
  }

  if (state == 1)
  {
    v36 = objc_alloc(MEMORY[0x1E696AD40]);
    tertiaryLabelColor2 = EventKitUIBundle();
    v33 = [tertiaryLabelColor2 localizedStringForKey:@"Available" value:&stru_1F4EF6790 table:0];
    v114 = *MEMORY[0x1E69DB650];
    tertiaryLabelColor3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v115 = tertiaryLabelColor3;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    v39 = [v36 initWithString:v33 attributes:v38];

    v29 = v39;
    goto LABEL_17;
  }

  if (state == 2)
  {
    v31 = objc_alloc(MEMORY[0x1E696AD40]);
    v116 = *MEMORY[0x1E69DB650];
    v117 = systemRedColor;
    tertiaryLabelColor2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v29 = [v31 initWithString:v104 attributes:tertiaryLabelColor2];
    goto LABEL_18;
  }

  v29 = 0;
LABEL_19:
  v40 = 0x1E696A000uLL;
  v41 = MEMORY[0x1E696ACD8];
  labelConstraints = [(EKUIParticipantContainer *)self labelConstraints];
  [v41 deactivateConstraints:labelConstraints];

  labelConstraints2 = [(EKUIParticipantContainer *)self labelConstraints];
  [labelConstraints2 removeAllObjects];

  subLabel = [(EKUIParticipantContainer *)self subLabel];
  v45 = subLabel;
  if (v29)
  {
    v99 = v11;
    v101 = systemRedColor;

    if (!v45)
    {
      v46 = objc_opt_new();
      [(EKUIParticipantContainer *)self setSubLabel:v46];

      v47 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      subLabel2 = [(EKUIParticipantContainer *)self subLabel];
      [subLabel2 setFont:v47];

      tertiaryLabelColor4 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      subLabel3 = [(EKUIParticipantContainer *)self subLabel];
      [subLabel3 setTextColor:tertiaryLabelColor4];

      subLabel4 = [(EKUIParticipantContainer *)self subLabel];
      [subLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

      subLabel5 = [(EKUIParticipantContainer *)self subLabel];
      [(EKUIParticipantContainer *)self addSubview:subLabel5];
    }

    subLabel6 = [(EKUIParticipantContainer *)self subLabel];
    [subLabel6 setAttributedText:v29];

    subLabel7 = [(EKUIParticipantContainer *)self subLabel];
    [subLabel7 setHidden:0];

    v55 = MEMORY[0x1E696ACD8];
    selfCopy2 = self;
    v112[0] = @"avatar";
    avatar = [(EKUIParticipantContainer *)self avatar];
    v113[0] = avatar;
    v112[1] = @"title";
    nameLabel = [(EKUIParticipantContainer *)self nameLabel];
    v113[1] = nameLabel;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:2];
    v59 = v98 = v29;
    v60 = [v55 constraintsWithVisualFormat:@"H:[avatar]-[title]" options:0 metrics:0 views:v59];
    [v55 activateConstraints:v60];

    v61 = MEMORY[0x1E696ACD8];
    v110[0] = @"avatar";
    avatar2 = [(EKUIParticipantContainer *)self avatar];
    v110[1] = @"subtitle";
    v111[0] = avatar2;
    subLabel8 = [(EKUIParticipantContainer *)self subLabel];
    v111[1] = subLabel8;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:2];
    v65 = [v61 constraintsWithVisualFormat:@"H:[avatar]-[subtitle]" options:0 metrics:0 views:v64];
    [v61 activateConstraints:v65];

    v66 = MEMORY[0x1E696ACD8];
    v108[0] = @"title";
    nameLabel2 = [(EKUIParticipantContainer *)self nameLabel];
    v108[1] = @"subtitle";
    v109[0] = nameLabel2;
    subLabel9 = [(EKUIParticipantContainer *)self subLabel];
    v109[1] = subLabel9;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:2];
    v70 = [v66 constraintsWithVisualFormat:@"V:|-(>=0)-[title]-(>=0)-[subtitle]-(>=0)-|" options:0 metrics:0 views:v69];
    [v66 activateConstraints:v70];

    v71 = MEMORY[0x1E696ACD8];
    nameLabel3 = [(EKUIParticipantContainer *)self nameLabel];
    avatar3 = [(EKUIParticipantContainer *)self avatar];
    v74 = [v71 constraintWithItem:nameLabel3 attribute:3 relatedBy:0 toItem:avatar3 attribute:3 multiplier:1.0 constant:0.0];

    v75 = MEMORY[0x1E696ACD8];
    subLabel10 = [(EKUIParticipantContainer *)self subLabel];
    avatar4 = [(EKUIParticipantContainer *)self avatar];
    v96 = [v75 constraintWithItem:subLabel10 attribute:4 relatedBy:0 toItem:avatar4 attribute:4 multiplier:1.0 constant:0.0];

    v97 = v74;
    LODWORD(v78) = 1120403456;
    [v74 setPriority:v78];
    LODWORD(v79) = 1120403456;
    [v96 setPriority:v79];
    v94 = MEMORY[0x1E696ACD8];
    v107[0] = v74;
    v107[1] = v96;
    nameLabel4 = [(EKUIParticipantContainer *)self nameLabel];
    bottomAnchor = [nameLabel4 bottomAnchor];
    avatar5 = [(EKUIParticipantContainer *)self avatar];
    centerYAnchor = [avatar5 centerYAnchor];
    v82 = [bottomAnchor constraintLessThanOrEqualToAnchor:centerYAnchor];
    v107[2] = v82;
    subLabel11 = [(EKUIParticipantContainer *)self subLabel];
    topAnchor = [subLabel11 topAnchor];
    avatar6 = [(EKUIParticipantContainer *)self avatar];
    centerYAnchor2 = [avatar6 centerYAnchor];
    v87 = [topAnchor constraintGreaterThanOrEqualToAnchor:centerYAnchor2];
    v107[3] = v87;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:4];
    [v94 activateConstraints:v88];

    self = selfCopy2;
    v40 = 0x1E696A000;

    avatar7 = v96;
    v29 = v98;

    labelConstraints3 = v97;
    v11 = v99;
    systemRedColor = v101;
  }

  else
  {
    [subLabel setHidden:1];

    labelConstraints3 = [(EKUIParticipantContainer *)self labelConstraints];
    v91 = MEMORY[0x1E696ACD8];
    v105[0] = @"avatar";
    avatar7 = [(EKUIParticipantContainer *)self avatar];
    v105[1] = @"title";
    v106[0] = avatar7;
    nameLabel4 = [(EKUIParticipantContainer *)self nameLabel];
    v106[1] = nameLabel4;
    bottomAnchor = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
    avatar5 = [v91 constraintsWithVisualFormat:@"H:[avatar]-[title]" options:1024 metrics:0 views:bottomAnchor];
    [labelConstraints3 addObjectsFromArray:avatar5];
  }

  v92 = *(v40 + 3288);
  labelConstraints4 = [(EKUIParticipantContainer *)self labelConstraints];
  [v92 activateConstraints:labelConstraints4];
}

- (void)updateContentForSizeCategoryChange:(id)change
{
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_nameLabel setFont:v4];

  [(UILabel *)self->_nameLabel invalidateIntrinsicContentSize];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [(UILabel *)self->_subLabel setFont:v5];

  [(UILabel *)self->_subLabel invalidateIntrinsicContentSize];

  [(EKUIParticipantContainer *)self setNeedsLayout];
}

- (void)setBusy:(BOOL)busy
{
  if (busy)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(EKUIParticipantContainer *)self updateSublabelWithState:v3];
}

- (UINavigationController)navController
{
  WeakRetained = objc_loadWeakRetained(&self->_navController);

  return WeakRetained;
}

@end