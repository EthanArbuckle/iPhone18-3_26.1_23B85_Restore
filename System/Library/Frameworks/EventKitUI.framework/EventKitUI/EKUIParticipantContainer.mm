@interface EKUIParticipantContainer
- (EKUIParticipantContainer)initWithParticipant:(id)a3 viewController:(id)a4;
- (UINavigationController)navController;
- (void)setBusy:(BOOL)a3;
- (void)singleTap:(id)a3;
- (void)updateContentForSizeCategoryChange:(id)a3;
- (void)updateSublabelWithState:(unint64_t)a3;
@end

@implementation EKUIParticipantContainer

- (EKUIParticipantContainer)initWithParticipant:(id)a3 viewController:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v36.receiver = self;
  v36.super_class = EKUIParticipantContainer;
  v9 = [(EKUIParticipantContainer *)&v36 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, a3);
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(EKUIParticipantContainer *)v10 setBackgroundColor:v11];

    v12 = [[EKUILabeledAvatarView alloc] initWithIdentity:v7 placement:0 options:2];
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

    v35 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v7];
    v17 = [v35 displayName];
    [(UILabel *)v10->_nameLabel setText:v17];

    [(EKUIParticipantContainer *)v10 addSubview:v10->_nameLabel];
    v18 = objc_opt_new();
    labelConstraints = v10->_labelConstraints;
    v10->_labelConstraints = v18;

    [(EKUIParticipantContainer *)v10 updateSublabelWithState:0];
    v20 = [(EKUILabeledAvatarView *)v10->_avatar leadingAnchor];
    v21 = [(EKUIParticipantContainer *)v10 safeAreaLayoutGuide];
    v22 = [v21 leadingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];

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

    v31 = [MEMORY[0x1E696AD88] defaultCenter];
    [v31 addObserver:v10 selector:sel_updateContentForSizeCategoryChange_ name:*MEMORY[0x1E69DDC48] object:0];
    v32 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_singleTap_];
    [v32 setNumberOfTapsRequired:1];
    [v32 setCancelsTouchesInView:0];
    [(EKUIParticipantContainer *)v10 addGestureRecognizer:v32];
    v33 = [v8 navigationController];
    [(EKUIParticipantContainer *)v10 setNavController:v33];
  }

  return v10;
}

- (void)singleTap:(id)a3
{
  v4 = [EKIdentityViewController alloc];
  v5 = [(EKUIParticipantContainer *)self participant];
  v7 = [(EKIdentityViewController *)v4 initWithIdentity:v5];

  v6 = [(EKUIParticipantContainer *)self navController];
  [v6 pushViewController:v7 animated:1];
}

- (void)updateSublabelWithState:(unint64_t)a3
{
  v123[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69DC888] systemRedColor];
  v6 = [(EKUIParticipantContainer *)self participant];
  v7 = [v6 isLocationRoom];

  if (v7)
  {
    v8 = EventKitUIBundle();
    v9 = v8;
    v10 = @"Room";
LABEL_3:
    v11 = [v8 localizedStringForKey:v10 value:&stru_1F4EF6790 table:0];
LABEL_6:

    goto LABEL_7;
  }

  v12 = [(EKUIParticipantContainer *)self participant];
  v13 = [v12 participantRole];

  if (v13 == 2)
  {
    v14 = EventKitUIBundle();
    v11 = [v14 localizedStringForKey:@"Optional" value:&stru_1F4EF6790 table:0];

    [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v5 = v9 = v5;
    goto LABEL_6;
  }

  v34 = [(EKUIParticipantContainer *)self participant];
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
    if (a3 == 2)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = EventKitUIBundle();
      v18 = [v17 localizedStringForKey:@"StatusConflictFormat" value:@"%@ · %@" table:0];
      v19 = [v16 localizedStringWithFormat:v18, v104, v11];

      v20 = [v19 rangeOfString:v104];
      v100 = v21;
      v102 = v20;
      v22 = objc_alloc(MEMORY[0x1E696AD40]);
      v23 = self;
      v122 = *MEMORY[0x1E69DB650];
      v24 = v122;
      v25 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v123[0] = v25;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:&v122 count:1];
      v27 = v26 = v5;
      v28 = [v22 initWithString:v19 attributes:v27];

      v5 = v26;
      v29 = v28;
      v120 = v24;
      v121 = v26;
      self = v23;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
      [v29 setAttributes:v30 range:{v102, v100}];

LABEL_18:
      goto LABEL_19;
    }

    v32 = objc_alloc(MEMORY[0x1E696AD40]);
    v118 = *MEMORY[0x1E69DB650];
    v19 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v119 = v19;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    v29 = [v32 initWithString:v11 attributes:v33];
LABEL_17:

    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v36 = objc_alloc(MEMORY[0x1E696AD40]);
    v19 = EventKitUIBundle();
    v33 = [v19 localizedStringForKey:@"Available" value:&stru_1F4EF6790 table:0];
    v114 = *MEMORY[0x1E69DB650];
    v37 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v115 = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    v39 = [v36 initWithString:v33 attributes:v38];

    v29 = v39;
    goto LABEL_17;
  }

  if (a3 == 2)
  {
    v31 = objc_alloc(MEMORY[0x1E696AD40]);
    v116 = *MEMORY[0x1E69DB650];
    v117 = v5;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v29 = [v31 initWithString:v104 attributes:v19];
    goto LABEL_18;
  }

  v29 = 0;
LABEL_19:
  v40 = 0x1E696A000uLL;
  v41 = MEMORY[0x1E696ACD8];
  v42 = [(EKUIParticipantContainer *)self labelConstraints];
  [v41 deactivateConstraints:v42];

  v43 = [(EKUIParticipantContainer *)self labelConstraints];
  [v43 removeAllObjects];

  v44 = [(EKUIParticipantContainer *)self subLabel];
  v45 = v44;
  if (v29)
  {
    v99 = v11;
    v101 = v5;

    if (!v45)
    {
      v46 = objc_opt_new();
      [(EKUIParticipantContainer *)self setSubLabel:v46];

      v47 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      v48 = [(EKUIParticipantContainer *)self subLabel];
      [v48 setFont:v47];

      v49 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v50 = [(EKUIParticipantContainer *)self subLabel];
      [v50 setTextColor:v49];

      v51 = [(EKUIParticipantContainer *)self subLabel];
      [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

      v52 = [(EKUIParticipantContainer *)self subLabel];
      [(EKUIParticipantContainer *)self addSubview:v52];
    }

    v53 = [(EKUIParticipantContainer *)self subLabel];
    [v53 setAttributedText:v29];

    v54 = [(EKUIParticipantContainer *)self subLabel];
    [v54 setHidden:0];

    v55 = MEMORY[0x1E696ACD8];
    v56 = self;
    v112[0] = @"avatar";
    v57 = [(EKUIParticipantContainer *)self avatar];
    v113[0] = v57;
    v112[1] = @"title";
    v58 = [(EKUIParticipantContainer *)self nameLabel];
    v113[1] = v58;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:2];
    v59 = v98 = v29;
    v60 = [v55 constraintsWithVisualFormat:@"H:[avatar]-[title]" options:0 metrics:0 views:v59];
    [v55 activateConstraints:v60];

    v61 = MEMORY[0x1E696ACD8];
    v110[0] = @"avatar";
    v62 = [(EKUIParticipantContainer *)self avatar];
    v110[1] = @"subtitle";
    v111[0] = v62;
    v63 = [(EKUIParticipantContainer *)self subLabel];
    v111[1] = v63;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:2];
    v65 = [v61 constraintsWithVisualFormat:@"H:[avatar]-[subtitle]" options:0 metrics:0 views:v64];
    [v61 activateConstraints:v65];

    v66 = MEMORY[0x1E696ACD8];
    v108[0] = @"title";
    v67 = [(EKUIParticipantContainer *)self nameLabel];
    v108[1] = @"subtitle";
    v109[0] = v67;
    v68 = [(EKUIParticipantContainer *)self subLabel];
    v109[1] = v68;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:2];
    v70 = [v66 constraintsWithVisualFormat:@"V:|-(>=0)-[title]-(>=0)-[subtitle]-(>=0)-|" options:0 metrics:0 views:v69];
    [v66 activateConstraints:v70];

    v71 = MEMORY[0x1E696ACD8];
    v72 = [(EKUIParticipantContainer *)self nameLabel];
    v73 = [(EKUIParticipantContainer *)self avatar];
    v74 = [v71 constraintWithItem:v72 attribute:3 relatedBy:0 toItem:v73 attribute:3 multiplier:1.0 constant:0.0];

    v75 = MEMORY[0x1E696ACD8];
    v76 = [(EKUIParticipantContainer *)self subLabel];
    v77 = [(EKUIParticipantContainer *)self avatar];
    v96 = [v75 constraintWithItem:v76 attribute:4 relatedBy:0 toItem:v77 attribute:4 multiplier:1.0 constant:0.0];

    v97 = v74;
    LODWORD(v78) = 1120403456;
    [v74 setPriority:v78];
    LODWORD(v79) = 1120403456;
    [v96 setPriority:v79];
    v94 = MEMORY[0x1E696ACD8];
    v107[0] = v74;
    v107[1] = v96;
    v103 = [(EKUIParticipantContainer *)self nameLabel];
    v80 = [v103 bottomAnchor];
    v81 = [(EKUIParticipantContainer *)self avatar];
    v95 = [v81 centerYAnchor];
    v82 = [v80 constraintLessThanOrEqualToAnchor:v95];
    v107[2] = v82;
    v83 = [(EKUIParticipantContainer *)self subLabel];
    v84 = [v83 topAnchor];
    v85 = [(EKUIParticipantContainer *)self avatar];
    v86 = [v85 centerYAnchor];
    v87 = [v84 constraintGreaterThanOrEqualToAnchor:v86];
    v107[3] = v87;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:4];
    [v94 activateConstraints:v88];

    self = v56;
    v40 = 0x1E696A000;

    v89 = v96;
    v29 = v98;

    v90 = v97;
    v11 = v99;
    v5 = v101;
  }

  else
  {
    [v44 setHidden:1];

    v90 = [(EKUIParticipantContainer *)self labelConstraints];
    v91 = MEMORY[0x1E696ACD8];
    v105[0] = @"avatar";
    v89 = [(EKUIParticipantContainer *)self avatar];
    v105[1] = @"title";
    v106[0] = v89;
    v103 = [(EKUIParticipantContainer *)self nameLabel];
    v106[1] = v103;
    v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
    v81 = [v91 constraintsWithVisualFormat:@"H:[avatar]-[title]" options:1024 metrics:0 views:v80];
    [v90 addObjectsFromArray:v81];
  }

  v92 = *(v40 + 3288);
  v93 = [(EKUIParticipantContainer *)self labelConstraints];
  [v92 activateConstraints:v93];
}

- (void)updateContentForSizeCategoryChange:(id)a3
{
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_nameLabel setFont:v4];

  [(UILabel *)self->_nameLabel invalidateIntrinsicContentSize];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [(UILabel *)self->_subLabel setFont:v5];

  [(UILabel *)self->_subLabel invalidateIntrinsicContentSize];

  [(EKUIParticipantContainer *)self setNeedsLayout];
}

- (void)setBusy:(BOOL)a3
{
  if (a3)
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