@interface EKUILabeledAvatarView
+ (id)_createAvatarView;
+ (id)contactKeysToFetch;
+ (id)sortedAvatarListFromParticipants:(id)a3;
- (CNContact)contact;
- (EKUILabeledAvatarView)initWithContact:(id)a3 placement:(unint64_t)a4 options:(unint64_t)a5;
- (EKUILabeledAvatarView)initWithEmail:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6 placement:(unint64_t)a7 options:(unint64_t)a8;
- (EKUILabeledAvatarView)initWithIdentity:(id)a3 placement:(unint64_t)a4 options:(unint64_t)a5;
- (EKUILabeledAvatarViewDelegate)delegate;
- (UIViewController)viewController;
- (void)didLongPress;
- (void)didTap;
- (void)setContact:(id)a3;
- (void)setSelectionState:(unint64_t)a3;
- (void)setup;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateAvatarViewWithAddress:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6;
- (void)updateLabel;
- (void)updateWithAddress:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6;
- (void)updateWithContacts:(id)a3;
- (void)updateWithParticipant:(id)a3;
@end

@implementation EKUILabeledAvatarView

- (EKUILabeledAvatarView)initWithIdentity:(id)a3 placement:(unint64_t)a4 options:(unint64_t)a5
{
  v7 = a3;
  v8 = [v7 phoneNumber];
  v9 = v8;
  if (!v8)
  {
    v9 = [v7 emailAddress];
  }

  v10 = [v7 name];
  v11 = [v7 firstName];
  v12 = [v7 lastName];
  v13 = [objc_opt_class() contactKeysToFetch];
  v14 = [ContactsUtils contactForAddress:v9 fullName:v10 firstName:v11 lastName:v12 keysToFetch:v13];

  if (!v8)
  {
  }

  v15 = [(EKUILabeledAvatarView *)self initWithContact:v14 placement:a4 options:a5];
  return v15;
}

- (EKUILabeledAvatarView)initWithEmail:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6 placement:(unint64_t)a7 options:(unint64_t)a8
{
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [objc_opt_class() contactKeysToFetch];
  v19 = [ContactsUtils contactForAddress:v17 fullName:v16 firstName:v15 lastName:v14 keysToFetch:v18];

  v20 = [(EKUILabeledAvatarView *)self initWithContact:v19 placement:a7 options:a8];
  return v20;
}

- (EKUILabeledAvatarView)initWithContact:(id)a3 placement:(unint64_t)a4 options:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = EKUILabeledAvatarView;
  v9 = [(EKUILabeledAvatarView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v9)
  {
    v10 = [objc_opt_class() _createAvatarView];
    avatar = v9->_avatar;
    v9->_avatar = v10;

    v9->_labelPlacement = a4;
    v9->_options = a5;
    if (v8)
    {
      [(CNAvatarView *)v9->_avatar setContact:v8];
    }

    [(EKUILabeledAvatarView *)v9 setup];
  }

  return v9;
}

+ (id)contactKeysToFetch
{
  if (contactKeysToFetch_onceToken != -1)
  {
    +[EKUILabeledAvatarView contactKeysToFetch];
  }

  v3 = contactKeysToFetch_keysToFetch;

  return v3;
}

void __43__EKUILabeledAvatarView_contactKeysToFetch__block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = [EKWeakLinkClass() descriptorForRequiredKeys];
  v1 = [EKWeakLinkClass() descriptorForRequiredKeys];
  v5[1] = v1;
  v2 = [EKWeakLinkClass() descriptorForRequiredKeys];
  v5[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v4 = contactKeysToFetch_keysToFetch;
  contactKeysToFetch_keysToFetch = v3;
}

+ (id)_createAvatarView
{
  EKWeakLinkClass();
  v2 = objc_opt_new();
  EKWeakLinkClass();
  v3 = objc_opt_new();
  [v2 setContact:v3];

  [v2 setShowsContactOnTap:0];
  [v2 setThreeDTouchEnabled:0];

  return v2;
}

- (void)setup
{
  v134[1] = *MEMORY[0x1E69E9840];
  self->_selectionState = 0;
  if ((self->_options & 4) != 0)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTap];
    [(EKUILabeledAvatarView *)self addGestureRecognizer:v3];
    v4 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_didLongPress];
    [(EKUILabeledAvatarView *)self addGestureRecognizer:v4];
  }

  v5 = [(EKUILabeledAvatarView *)self avatar];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(EKUILabeledAvatarView *)self avatar];
  [(EKUILabeledAvatarView *)self addSubview:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(EKUILabeledAvatarView *)self setPressedAccentOverlay:v7];

  v8 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  v10 = [v9 layer];
  [v10 setCornerRadius:22.0];

  v11 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  v12 = [v11 layer];
  [v12 setMasksToBounds:1];

  v13 = CalendarAppTintColor();
  v14 = [v13 colorWithAlphaComponent:0.3];
  v15 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  [v15 setBackgroundColor:v14];

  v16 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  [v16 setHidden:1];

  v17 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  [(EKUILabeledAvatarView *)self addSubview:v17];

  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v133 = @"avatar";
  v19 = [(EKUILabeledAvatarView *)self avatar];
  v134[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:&v133 count:1];
  v21 = [v18 initWithDictionary:v20];

  if ([(EKUILabeledAvatarView *)self labelPlacement])
  {
    v22 = objc_opt_new();
    [(EKUILabeledAvatarView *)self setLabel:v22];

    v23 = [(EKUILabeledAvatarView *)self label];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(EKUILabeledAvatarView *)self label];
    [(EKUILabeledAvatarView *)self addSubview:v24];

    v25 = [(EKUILabeledAvatarView *)self label];
    LODWORD(v26) = 1148846080;
    [v25 setContentHuggingPriority:1 forAxis:v26];

    v27 = [(EKUILabeledAvatarView *)self label];
    LODWORD(v28) = 1148846080;
    [v27 setContentHuggingPriority:0 forAxis:v28];

    v29 = [(EKUILabeledAvatarView *)self label];
    LODWORD(v30) = 1148846080;
    [v29 setContentCompressionResistancePriority:1 forAxis:v30];

    v31 = [(EKUILabeledAvatarView *)self label];
    LODWORD(v32) = 1148846080;
    [v31 setContentCompressionResistancePriority:0 forAxis:v32];

    v33 = objc_alloc(MEMORY[0x1E695DF90]);
    v131[0] = @"avatar";
    v34 = [(EKUILabeledAvatarView *)self avatar];
    v131[1] = @"label";
    v132[0] = v34;
    v35 = [(EKUILabeledAvatarView *)self label];
    v132[1] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
    v37 = [v33 initWithDictionary:v36];

    v38 = [(EKUILabeledAvatarView *)self labelPlacement];
    if (v38 <= 2)
    {
      if (v38 == 1)
      {
        v117 = [(EKUILabeledAvatarView *)self label];
        [v117 setTextAlignment:2];

        v118 = MEMORY[0x1E696ACD8];
        v119 = [(EKUILabeledAvatarView *)self avatar];
        v120 = [(EKUILabeledAvatarView *)self avatar];
        v121 = [v118 constraintWithItem:v119 attribute:7 relatedBy:0 toItem:v120 attribute:8 multiplier:1.0 constant:0.0];
        [v121 setActive:1];

        v122 = MEMORY[0x1E696ACD8];
        v123 = [(EKUILabeledAvatarView *)self avatar];
        v124 = [(EKUILabeledAvatarView *)self label];
        v125 = [v122 constraintWithItem:v123 attribute:8 relatedBy:0 toItem:v124 attribute:8 multiplier:1.0 constant:0.0];
        [v125 setActive:1];

        v89 = MEMORY[0x1E696ACD8];
        v90 = @"H:|-(>=0)-[label]-[avatar]|";
      }

      else
      {
        if (v38 != 2)
        {
          goto LABEL_20;
        }

        v80 = [(EKUILabeledAvatarView *)self label];
        [v80 setTextAlignment:0];

        v81 = MEMORY[0x1E696ACD8];
        v82 = [(EKUILabeledAvatarView *)self avatar];
        v83 = [(EKUILabeledAvatarView *)self avatar];
        v84 = [v81 constraintWithItem:v82 attribute:7 relatedBy:0 toItem:v83 attribute:8 multiplier:1.0 constant:0.0];
        [v84 setActive:1];

        v85 = MEMORY[0x1E696ACD8];
        v86 = [(EKUILabeledAvatarView *)self avatar];
        v87 = [(EKUILabeledAvatarView *)self label];
        v88 = [v85 constraintWithItem:v86 attribute:8 relatedBy:0 toItem:v87 attribute:8 multiplier:1.0 constant:0.0];
        [v88 setActive:1];

        v89 = MEMORY[0x1E696ACD8];
        v90 = @"H:|[avatar]-[label]-(>=0)-|";
      }

      v126 = [v89 constraintsWithVisualFormat:v90 options:1024 metrics:0 views:v37];
      [v89 activateConstraints:v126];

      v98 = MEMORY[0x1E696ACD8];
      v99 = @"V:|-(>=0)-[avatar]-(>=0)-|";
    }

    else
    {
      if (v38 != 3)
      {
        if (v38 != 4)
        {
          if (v38 == 5)
          {
            v39 = [(EKUILabeledAvatarView *)self label];
            [v39 setTextAlignment:1];

            v40 = MEMORY[0x1E696ACD8];
            v41 = [(EKUILabeledAvatarView *)self avatar];
            v42 = [(EKUILabeledAvatarView *)self avatar];
            v43 = [v40 constraintWithItem:v41 attribute:7 relatedBy:0 toItem:v42 attribute:8 multiplier:1.0 constant:0.0];
            [v43 setActive:1];

            v44 = MEMORY[0x1E696ACD8];
            v45 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[avatar][label]|" options:512 metrics:&unk_1F4F32950 views:v37];
            [v44 activateConstraints:v45];

            v46 = MEMORY[0x1E696ACD8];
            v47 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(>=0)-[avatar]-(>=0)-|" options:0 metrics:&unk_1F4F32950 views:v37];
            [v46 activateConstraints:v47];

            v48 = MEMORY[0x1E696ACD8];
            v49 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(>=0)-[label]-(>=0)-|" options:0 metrics:&unk_1F4F32950 views:v37];
            [v48 activateConstraints:v49];

            v50 = MEMORY[0x1E696ACD8];
            v51 = [(EKUILabeledAvatarView *)self avatar];
            v52 = [v50 constraintWithItem:v51 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
            [v52 setActive:1];

            v53 = MEMORY[0x1E696ACD8];
            v54 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
            v55 = [(EKUILabeledAvatarView *)self avatar];
            v56 = [v53 constraintWithItem:v54 attribute:5 relatedBy:0 toItem:v55 attribute:5 multiplier:1.0 constant:0.0];
            [v56 setActive:1];

            v57 = MEMORY[0x1E696ACD8];
            v58 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
            v59 = [(EKUILabeledAvatarView *)self avatar];
            v60 = [v57 constraintWithItem:v58 attribute:6 relatedBy:0 toItem:v59 attribute:6 multiplier:1.0 constant:0.0];
            [v60 setActive:1];

            v61 = MEMORY[0x1E696ACD8];
            v62 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
            v63 = [(EKUILabeledAvatarView *)self avatar];
            v64 = [v61 constraintWithItem:v62 attribute:3 relatedBy:0 toItem:v63 attribute:3 multiplier:1.0 constant:0.0];
            [v64 setActive:1];

            v65 = MEMORY[0x1E696ACD8];
            v66 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
            v67 = [(EKUILabeledAvatarView *)self avatar];
            v68 = [v65 constraintWithItem:v66 attribute:4 relatedBy:0 toItem:v67 attribute:4 multiplier:1.0 constant:0.0];
            [v68 setActive:1];

LABEL_19:
          }

LABEL_20:
          [(EKUILabeledAvatarView *)self updateLabel];
          goto LABEL_21;
        }

        v100 = MEMORY[0x1E696ACD8];
        v101 = [(EKUILabeledAvatarView *)self avatar];
        v102 = [(EKUILabeledAvatarView *)self avatar];
        v103 = [v100 constraintWithItem:v101 attribute:7 relatedBy:0 toItem:v102 attribute:8 multiplier:1.0 constant:0.0];
        [v103 setActive:1];

        v104 = MEMORY[0x1E696ACD8];
        v105 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[label][avatar]|" options:512 metrics:0 views:v37];
        [v104 activateConstraints:v105];

        v106 = MEMORY[0x1E696ACD8];
        v107 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(>=0)-[avatar]-(>=0)-|" options:0 metrics:0 views:v37];
        [v106 activateConstraints:v107];

        v108 = MEMORY[0x1E696ACD8];
        v109 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(>=0)-[label]-(>=0)-|" options:0 metrics:0 views:v37];
        [v108 activateConstraints:v109];

        v110 = MEMORY[0x1E696ACD8];
        v66 = [(EKUILabeledAvatarView *)self avatar];
        v111 = 1.0;
        v112 = v110;
        v113 = v66;
        v114 = 9;
        v115 = self;
        v116 = 9;
LABEL_18:
        v67 = [v112 constraintWithItem:v113 attribute:v114 relatedBy:0 toItem:v115 attribute:v116 multiplier:v111 constant:0.0];
        [v67 setActive:1];
        goto LABEL_19;
      }

      v91 = [(EKUILabeledAvatarView *)self label];
      [v91 setTextAlignment:4];

      v92 = MEMORY[0x1E696ACD8];
      v93 = [(EKUILabeledAvatarView *)self avatar];
      v94 = [(EKUILabeledAvatarView *)self avatar];
      v95 = [v92 constraintWithItem:v93 attribute:7 relatedBy:0 toItem:v94 attribute:8 multiplier:1.0 constant:0.0];
      [v95 setActive:1];

      v96 = MEMORY[0x1E696ACD8];
      v97 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[avatar]-[label]|" options:1024 metrics:0 views:v37];
      [v96 activateConstraints:v97];

      v98 = MEMORY[0x1E696ACD8];
      v99 = @"V:|-[avatar]-|";
    }

    v127 = [v98 constraintsWithVisualFormat:v99 options:0 metrics:0 views:v37];
    [v98 activateConstraints:v127];

    v128 = MEMORY[0x1E696ACD8];
    v129 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(>=0)-[label]-(>=0)-|" options:0 metrics:0 views:v37];
    [v128 activateConstraints:v129];

    v130 = MEMORY[0x1E696ACD8];
    v66 = [(EKUILabeledAvatarView *)self avatar];
    v111 = 1.0;
    v112 = v130;
    v113 = v66;
    v114 = 10;
    v115 = self;
    v116 = 10;
    goto LABEL_18;
  }

  v69 = MEMORY[0x1E696ACD8];
  v70 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[avatar]|" options:0 metrics:0 views:v21];
  [v69 activateConstraints:v70];

  v71 = MEMORY[0x1E696ACD8];
  v72 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[avatar]-(0@999)-|" options:0 metrics:0 views:v21];
  [v71 activateConstraints:v72];

  v73 = MEMORY[0x1E696ACD8];
  v74 = [(EKUILabeledAvatarView *)self avatar];
  v75 = [v73 constraintWithItem:v74 attribute:8 relatedBy:0 toItem:self attribute:8 multiplier:1.0 constant:0.0];
  [v75 setActive:1];

  v76 = MEMORY[0x1E696ACD8];
  v77 = [(EKUILabeledAvatarView *)self avatar];
  v78 = [(EKUILabeledAvatarView *)self avatar];
  v79 = [v76 constraintWithItem:v77 attribute:7 relatedBy:0 toItem:v78 attribute:8 multiplier:1.0 constant:0.0];
  [v79 setActive:1];

  v37 = v21;
LABEL_21:
}

- (CNContact)contact
{
  v2 = [(EKUILabeledAvatarView *)self avatar];
  v3 = [v2 contact];

  return v3;
}

- (void)setContact:(id)a3
{
  v4 = a3;
  v5 = [(EKUILabeledAvatarView *)self avatar];
  [v5 setContact:v4];

  [(EKUILabeledAvatarView *)self updateLabel];
}

- (void)updateLabel
{
  if (![(EKUILabeledAvatarView *)self labelPlacement])
  {
    return;
  }

  if (([(EKUILabeledAvatarView *)self options]& 1) != 0)
  {
    v13 = EKWeakLinkClass();
    v16 = [(EKUILabeledAvatarView *)self avatar];
    v5 = [v16 contact];
    v12 = [v13 stringFromContact:v5 style:0];
    goto LABEL_12;
  }

  v3 = [(EKUILabeledAvatarView *)self options];
  v16 = [(EKUILabeledAvatarView *)self avatar];
  v4 = [v16 contact];
  v5 = v4;
  if ((v3 & 2) == 0)
  {
LABEL_11:
    v12 = [v4 givenName];
    goto LABEL_12;
  }

  v6 = [v4 nickname];
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = v6;
  v8 = [(EKUILabeledAvatarView *)self avatar];
  v9 = [v8 contact];
  v10 = [v9 nickname];
  v11 = [v10 isEqual:&stru_1F4EF6790];

  if (v11)
  {
LABEL_10:
    v16 = [(EKUILabeledAvatarView *)self avatar];
    v4 = [v16 contact];
    v5 = v4;
    goto LABEL_11;
  }

  v16 = [(EKUILabeledAvatarView *)self avatar];
  v5 = [v16 contact];
  v12 = [v5 nickname];
LABEL_12:
  v14 = v12;
  v15 = [(EKUILabeledAvatarView *)self label];
  [v15 setText:v14];
}

- (void)updateWithAddress:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6
{
  [(EKUILabeledAvatarView *)self updateAvatarViewWithAddress:a3 fullName:a4 firstName:a5 lastName:a6];

  [(EKUILabeledAvatarView *)self updateLabel];
}

- (void)updateWithParticipant:(id)a3
{
  v13 = a3;
  v5 = [v13 emailAddress];
  v6 = v5;
  if (!v5)
  {
    v3 = [v13 URL];
    v6 = [v3 resourceSpecifier];
  }

  v7 = [v13 name];
  v8 = [v13 firstName];
  v9 = [v13 lastName];
  [(EKUILabeledAvatarView *)self updateAvatarViewWithAddress:v6 fullName:v7 firstName:v8 lastName:v9];

  if (!v5)
  {
  }

  [(EKUILabeledAvatarView *)self updateLabel];
  if ((self->_options & 8) != 0)
  {
    v10 = [v13 participantStatus];
    v11 = 0.3;
    if (v10 == 2)
    {
      v11 = 1.0;
    }

    [(EKUILabeledAvatarView *)self setAlpha:v11];
  }

  v12 = [(EKUILabeledAvatarView *)self avatar];
  [v12 setNeedsLayout];
}

- (void)updateWithContacts:(id)a3
{
  v4 = a3;
  v5 = [(EKUILabeledAvatarView *)self avatar];
  [v5 setContacts:v4];

  [(EKUILabeledAvatarView *)self updateLabel];
  v6 = [(EKUILabeledAvatarView *)self avatar];
  [v6 setNeedsLayout];
}

- (void)updateAvatarViewWithAddress:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__10;
  v32[4] = __Block_byref_object_dispose__10;
  v33 = 0;
  v14 = [(EKUILabeledAvatarView *)self loadContactsAsynchronously];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__EKUILabeledAvatarView_updateAvatarViewWithAddress_fullName_firstName_lastName___block_invoke;
  aBlock[3] = &unk_1E84411A0;
  v30 = v32;
  v15 = v10;
  v25 = v15;
  v16 = v11;
  v26 = v16;
  v17 = v12;
  v27 = v17;
  v18 = v13;
  v28 = v18;
  v29 = self;
  v31 = v14;
  v19 = _Block_copy(aBlock);
  v20 = v19;
  if (v14)
  {
    v21 = dispatch_get_global_queue(0, 0);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__EKUILabeledAvatarView_updateAvatarViewWithAddress_fullName_firstName_lastName___block_invoke_3;
    v22[3] = &unk_1E843F340;
    v23 = v20;
    dispatch_async(v21, v22);
  }

  else
  {
    (*(v19 + 2))(v19);
  }

  _Block_object_dispose(v32, 8);
}

void __81__EKUILabeledAvatarView_updateAvatarViewWithAddress_fullName_firstName_lastName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [objc_opt_class() contactKeysToFetch];
  v7 = [ContactsUtils contactForAddress:v2 fullName:v3 firstName:v4 lastName:v5 keysToFetch:v6];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(a1 + 80) == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__EKUILabeledAvatarView_updateAvatarViewWithAddress_fullName_firstName_lastName___block_invoke_2;
    block[3] = &unk_1E8441178;
    v14 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v10 = *(a1 + 64);
    v11 = *(*(*(a1 + 72) + 8) + 40);
    v12 = [v10 avatar];
    [v12 setContact:v11];
  }
}

void __81__EKUILabeledAvatarView_updateAvatarViewWithAddress_fullName_firstName_lastName___block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [*(a1 + 32) avatar];
  [v2 setContact:v1];
}

- (void)setSelectionState:(unint64_t)a3
{
  if (self->_selectionState == a3)
  {
    return;
  }

  self->_selectionState = a3;
  switch(a3)
  {
    case 2uLL:
      [(EKUILabeledAvatarView *)self setAlpha:0.3];
      break;
    case 1uLL:
      [(EKUILabeledAvatarView *)self setAlpha:1.0];
      v7 = [(EKUILabeledAvatarView *)self avatar];
      [v7 setAlpha:0.5];

      v5 = [(EKUILabeledAvatarView *)self label];
      v8 = v5;
      v6 = 0.5;
      goto LABEL_7;
    case 0uLL:
      [(EKUILabeledAvatarView *)self setAlpha:1.0];
      v4 = [(EKUILabeledAvatarView *)self avatar];
      [v4 setAlpha:1.0];

      v5 = [(EKUILabeledAvatarView *)self label];
      v8 = v5;
      v6 = 1.0;
LABEL_7:
      [v5 setAlpha:v6];

      return;
  }

  [(EKUILabeledAvatarView *)self setAlpha:1.0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(EKUILabeledAvatarView *)self options]& 4) != 0)
  {
    v8 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
    [v8 setHidden:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EKUILabeledAvatarView;
    [(EKUILabeledAvatarView *)&v9 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(EKUILabeledAvatarView *)self options]& 4) != 0)
  {
    v8 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
    [v8 setHidden:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EKUILabeledAvatarView;
    [(EKUILabeledAvatarView *)&v9 touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(EKUILabeledAvatarView *)self options]& 4) != 0)
  {
    v8 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
    [v8 setHidden:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EKUILabeledAvatarView;
    [(EKUILabeledAvatarView *)&v9 touchesCancelled:v6 withEvent:v7];
  }
}

- (void)didTap
{
  if ([(EKUILabeledAvatarView *)self selectionState])
  {
    if ([(EKUILabeledAvatarView *)self selectionState]!= 1)
    {
      goto LABEL_6;
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  [(EKUILabeledAvatarView *)self setSelectionState:v3];
LABEL_6:
  v4 = [(EKUILabeledAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKUILabeledAvatarView *)self delegate];
    [v6 avatarViewTapped:self];
  }
}

- (void)didLongPress
{
  v3 = [(EKUILabeledAvatarView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(EKUILabeledAvatarView *)self delegate];
    [v5 avatarViewLongPressed:self];
  }
}

+ (id)sortedAvatarListFromParticipants:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [EKUILabeledAvatarView alloc];
        v12 = [(EKUILabeledAvatarView *)v11 initWithIdentity:v10 placement:5 options:0, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v4 sortUsingComparator:&__block_literal_global_83];

  return v4;
}

uint64_t __58__EKUILabeledAvatarView_sortedAvatarListFromParticipants___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 contact];
  v6 = [v5 givenName];
  v7 = [v4 contact];

  v8 = [v7 givenName];
  v9 = [v6 compare:v8];

  return v9;
}

- (EKUILabeledAvatarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end