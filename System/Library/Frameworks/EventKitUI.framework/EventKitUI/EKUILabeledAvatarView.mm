@interface EKUILabeledAvatarView
+ (id)_createAvatarView;
+ (id)contactKeysToFetch;
+ (id)sortedAvatarListFromParticipants:(id)participants;
- (CNContact)contact;
- (EKUILabeledAvatarView)initWithContact:(id)contact placement:(unint64_t)placement options:(unint64_t)options;
- (EKUILabeledAvatarView)initWithEmail:(id)email fullName:(id)name firstName:(id)firstName lastName:(id)lastName placement:(unint64_t)placement options:(unint64_t)options;
- (EKUILabeledAvatarView)initWithIdentity:(id)identity placement:(unint64_t)placement options:(unint64_t)options;
- (EKUILabeledAvatarViewDelegate)delegate;
- (UIViewController)viewController;
- (void)didLongPress;
- (void)didTap;
- (void)setContact:(id)contact;
- (void)setSelectionState:(unint64_t)state;
- (void)setup;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateAvatarViewWithAddress:(id)address fullName:(id)name firstName:(id)firstName lastName:(id)lastName;
- (void)updateLabel;
- (void)updateWithAddress:(id)address fullName:(id)name firstName:(id)firstName lastName:(id)lastName;
- (void)updateWithContacts:(id)contacts;
- (void)updateWithParticipant:(id)participant;
@end

@implementation EKUILabeledAvatarView

- (EKUILabeledAvatarView)initWithIdentity:(id)identity placement:(unint64_t)placement options:(unint64_t)options
{
  identityCopy = identity;
  phoneNumber = [identityCopy phoneNumber];
  emailAddress = phoneNumber;
  if (!phoneNumber)
  {
    emailAddress = [identityCopy emailAddress];
  }

  name = [identityCopy name];
  firstName = [identityCopy firstName];
  lastName = [identityCopy lastName];
  contactKeysToFetch = [objc_opt_class() contactKeysToFetch];
  v14 = [ContactsUtils contactForAddress:emailAddress fullName:name firstName:firstName lastName:lastName keysToFetch:contactKeysToFetch];

  if (!phoneNumber)
  {
  }

  v15 = [(EKUILabeledAvatarView *)self initWithContact:v14 placement:placement options:options];
  return v15;
}

- (EKUILabeledAvatarView)initWithEmail:(id)email fullName:(id)name firstName:(id)firstName lastName:(id)lastName placement:(unint64_t)placement options:(unint64_t)options
{
  lastNameCopy = lastName;
  firstNameCopy = firstName;
  nameCopy = name;
  emailCopy = email;
  contactKeysToFetch = [objc_opt_class() contactKeysToFetch];
  v19 = [ContactsUtils contactForAddress:emailCopy fullName:nameCopy firstName:firstNameCopy lastName:lastNameCopy keysToFetch:contactKeysToFetch];

  v20 = [(EKUILabeledAvatarView *)self initWithContact:v19 placement:placement options:options];
  return v20;
}

- (EKUILabeledAvatarView)initWithContact:(id)contact placement:(unint64_t)placement options:(unint64_t)options
{
  contactCopy = contact;
  v13.receiver = self;
  v13.super_class = EKUILabeledAvatarView;
  v9 = [(EKUILabeledAvatarView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v9)
  {
    _createAvatarView = [objc_opt_class() _createAvatarView];
    avatar = v9->_avatar;
    v9->_avatar = _createAvatarView;

    v9->_labelPlacement = placement;
    v9->_options = options;
    if (contactCopy)
    {
      [(CNAvatarView *)v9->_avatar setContact:contactCopy];
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

  avatar = [(EKUILabeledAvatarView *)self avatar];
  [avatar setTranslatesAutoresizingMaskIntoConstraints:0];

  avatar2 = [(EKUILabeledAvatarView *)self avatar];
  [(EKUILabeledAvatarView *)self addSubview:avatar2];

  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(EKUILabeledAvatarView *)self setPressedAccentOverlay:v7];

  pressedAccentOverlay = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  [pressedAccentOverlay setTranslatesAutoresizingMaskIntoConstraints:0];

  pressedAccentOverlay2 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  layer = [pressedAccentOverlay2 layer];
  [layer setCornerRadius:22.0];

  pressedAccentOverlay3 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  layer2 = [pressedAccentOverlay3 layer];
  [layer2 setMasksToBounds:1];

  v13 = CalendarAppTintColor();
  v14 = [v13 colorWithAlphaComponent:0.3];
  pressedAccentOverlay4 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  [pressedAccentOverlay4 setBackgroundColor:v14];

  pressedAccentOverlay5 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  [pressedAccentOverlay5 setHidden:1];

  pressedAccentOverlay6 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
  [(EKUILabeledAvatarView *)self addSubview:pressedAccentOverlay6];

  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v133 = @"avatar";
  avatar3 = [(EKUILabeledAvatarView *)self avatar];
  v134[0] = avatar3;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:&v133 count:1];
  v21 = [v18 initWithDictionary:v20];

  if ([(EKUILabeledAvatarView *)self labelPlacement])
  {
    v22 = objc_opt_new();
    [(EKUILabeledAvatarView *)self setLabel:v22];

    label = [(EKUILabeledAvatarView *)self label];
    [label setTranslatesAutoresizingMaskIntoConstraints:0];

    label2 = [(EKUILabeledAvatarView *)self label];
    [(EKUILabeledAvatarView *)self addSubview:label2];

    label3 = [(EKUILabeledAvatarView *)self label];
    LODWORD(v26) = 1148846080;
    [label3 setContentHuggingPriority:1 forAxis:v26];

    label4 = [(EKUILabeledAvatarView *)self label];
    LODWORD(v28) = 1148846080;
    [label4 setContentHuggingPriority:0 forAxis:v28];

    label5 = [(EKUILabeledAvatarView *)self label];
    LODWORD(v30) = 1148846080;
    [label5 setContentCompressionResistancePriority:1 forAxis:v30];

    label6 = [(EKUILabeledAvatarView *)self label];
    LODWORD(v32) = 1148846080;
    [label6 setContentCompressionResistancePriority:0 forAxis:v32];

    v33 = objc_alloc(MEMORY[0x1E695DF90]);
    v131[0] = @"avatar";
    avatar4 = [(EKUILabeledAvatarView *)self avatar];
    v131[1] = @"label";
    v132[0] = avatar4;
    label7 = [(EKUILabeledAvatarView *)self label];
    v132[1] = label7;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
    v37 = [v33 initWithDictionary:v36];

    labelPlacement = [(EKUILabeledAvatarView *)self labelPlacement];
    if (labelPlacement <= 2)
    {
      if (labelPlacement == 1)
      {
        label8 = [(EKUILabeledAvatarView *)self label];
        [label8 setTextAlignment:2];

        v118 = MEMORY[0x1E696ACD8];
        avatar5 = [(EKUILabeledAvatarView *)self avatar];
        avatar6 = [(EKUILabeledAvatarView *)self avatar];
        v121 = [v118 constraintWithItem:avatar5 attribute:7 relatedBy:0 toItem:avatar6 attribute:8 multiplier:1.0 constant:0.0];
        [v121 setActive:1];

        v122 = MEMORY[0x1E696ACD8];
        avatar7 = [(EKUILabeledAvatarView *)self avatar];
        label9 = [(EKUILabeledAvatarView *)self label];
        v125 = [v122 constraintWithItem:avatar7 attribute:8 relatedBy:0 toItem:label9 attribute:8 multiplier:1.0 constant:0.0];
        [v125 setActive:1];

        v89 = MEMORY[0x1E696ACD8];
        v90 = @"H:|-(>=0)-[label]-[avatar]|";
      }

      else
      {
        if (labelPlacement != 2)
        {
          goto LABEL_20;
        }

        label10 = [(EKUILabeledAvatarView *)self label];
        [label10 setTextAlignment:0];

        v81 = MEMORY[0x1E696ACD8];
        avatar8 = [(EKUILabeledAvatarView *)self avatar];
        avatar9 = [(EKUILabeledAvatarView *)self avatar];
        v84 = [v81 constraintWithItem:avatar8 attribute:7 relatedBy:0 toItem:avatar9 attribute:8 multiplier:1.0 constant:0.0];
        [v84 setActive:1];

        v85 = MEMORY[0x1E696ACD8];
        avatar10 = [(EKUILabeledAvatarView *)self avatar];
        label11 = [(EKUILabeledAvatarView *)self label];
        v88 = [v85 constraintWithItem:avatar10 attribute:8 relatedBy:0 toItem:label11 attribute:8 multiplier:1.0 constant:0.0];
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
      if (labelPlacement != 3)
      {
        if (labelPlacement != 4)
        {
          if (labelPlacement == 5)
          {
            label12 = [(EKUILabeledAvatarView *)self label];
            [label12 setTextAlignment:1];

            v40 = MEMORY[0x1E696ACD8];
            avatar11 = [(EKUILabeledAvatarView *)self avatar];
            avatar12 = [(EKUILabeledAvatarView *)self avatar];
            v43 = [v40 constraintWithItem:avatar11 attribute:7 relatedBy:0 toItem:avatar12 attribute:8 multiplier:1.0 constant:0.0];
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
            avatar13 = [(EKUILabeledAvatarView *)self avatar];
            v52 = [v50 constraintWithItem:avatar13 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
            [v52 setActive:1];

            v53 = MEMORY[0x1E696ACD8];
            pressedAccentOverlay7 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
            avatar14 = [(EKUILabeledAvatarView *)self avatar];
            v56 = [v53 constraintWithItem:pressedAccentOverlay7 attribute:5 relatedBy:0 toItem:avatar14 attribute:5 multiplier:1.0 constant:0.0];
            [v56 setActive:1];

            v57 = MEMORY[0x1E696ACD8];
            pressedAccentOverlay8 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
            avatar15 = [(EKUILabeledAvatarView *)self avatar];
            v60 = [v57 constraintWithItem:pressedAccentOverlay8 attribute:6 relatedBy:0 toItem:avatar15 attribute:6 multiplier:1.0 constant:0.0];
            [v60 setActive:1];

            v61 = MEMORY[0x1E696ACD8];
            pressedAccentOverlay9 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
            avatar16 = [(EKUILabeledAvatarView *)self avatar];
            v64 = [v61 constraintWithItem:pressedAccentOverlay9 attribute:3 relatedBy:0 toItem:avatar16 attribute:3 multiplier:1.0 constant:0.0];
            [v64 setActive:1];

            v65 = MEMORY[0x1E696ACD8];
            pressedAccentOverlay10 = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
            avatar17 = [(EKUILabeledAvatarView *)self avatar];
            v68 = [v65 constraintWithItem:pressedAccentOverlay10 attribute:4 relatedBy:0 toItem:avatar17 attribute:4 multiplier:1.0 constant:0.0];
            [v68 setActive:1];

LABEL_19:
          }

LABEL_20:
          [(EKUILabeledAvatarView *)self updateLabel];
          goto LABEL_21;
        }

        v100 = MEMORY[0x1E696ACD8];
        avatar18 = [(EKUILabeledAvatarView *)self avatar];
        avatar19 = [(EKUILabeledAvatarView *)self avatar];
        v103 = [v100 constraintWithItem:avatar18 attribute:7 relatedBy:0 toItem:avatar19 attribute:8 multiplier:1.0 constant:0.0];
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
        pressedAccentOverlay10 = [(EKUILabeledAvatarView *)self avatar];
        v111 = 1.0;
        v112 = v110;
        v113 = pressedAccentOverlay10;
        v114 = 9;
        selfCopy2 = self;
        v116 = 9;
LABEL_18:
        avatar17 = [v112 constraintWithItem:v113 attribute:v114 relatedBy:0 toItem:selfCopy2 attribute:v116 multiplier:v111 constant:0.0];
        [avatar17 setActive:1];
        goto LABEL_19;
      }

      label13 = [(EKUILabeledAvatarView *)self label];
      [label13 setTextAlignment:4];

      v92 = MEMORY[0x1E696ACD8];
      avatar20 = [(EKUILabeledAvatarView *)self avatar];
      avatar21 = [(EKUILabeledAvatarView *)self avatar];
      v95 = [v92 constraintWithItem:avatar20 attribute:7 relatedBy:0 toItem:avatar21 attribute:8 multiplier:1.0 constant:0.0];
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
    pressedAccentOverlay10 = [(EKUILabeledAvatarView *)self avatar];
    v111 = 1.0;
    v112 = v130;
    v113 = pressedAccentOverlay10;
    v114 = 10;
    selfCopy2 = self;
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
  avatar22 = [(EKUILabeledAvatarView *)self avatar];
  v75 = [v73 constraintWithItem:avatar22 attribute:8 relatedBy:0 toItem:self attribute:8 multiplier:1.0 constant:0.0];
  [v75 setActive:1];

  v76 = MEMORY[0x1E696ACD8];
  avatar23 = [(EKUILabeledAvatarView *)self avatar];
  avatar24 = [(EKUILabeledAvatarView *)self avatar];
  v79 = [v76 constraintWithItem:avatar23 attribute:7 relatedBy:0 toItem:avatar24 attribute:8 multiplier:1.0 constant:0.0];
  [v79 setActive:1];

  v37 = v21;
LABEL_21:
}

- (CNContact)contact
{
  avatar = [(EKUILabeledAvatarView *)self avatar];
  contact = [avatar contact];

  return contact;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  avatar = [(EKUILabeledAvatarView *)self avatar];
  [avatar setContact:contactCopy];

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
    avatar = [(EKUILabeledAvatarView *)self avatar];
    contact = [avatar contact];
    givenName = [v13 stringFromContact:contact style:0];
    goto LABEL_12;
  }

  options = [(EKUILabeledAvatarView *)self options];
  avatar = [(EKUILabeledAvatarView *)self avatar];
  contact2 = [avatar contact];
  contact = contact2;
  if ((options & 2) == 0)
  {
LABEL_11:
    givenName = [contact2 givenName];
    goto LABEL_12;
  }

  nickname = [contact2 nickname];
  if (!nickname)
  {

    goto LABEL_10;
  }

  v7 = nickname;
  avatar2 = [(EKUILabeledAvatarView *)self avatar];
  contact3 = [avatar2 contact];
  nickname2 = [contact3 nickname];
  v11 = [nickname2 isEqual:&stru_1F4EF6790];

  if (v11)
  {
LABEL_10:
    avatar = [(EKUILabeledAvatarView *)self avatar];
    contact2 = [avatar contact];
    contact = contact2;
    goto LABEL_11;
  }

  avatar = [(EKUILabeledAvatarView *)self avatar];
  contact = [avatar contact];
  givenName = [contact nickname];
LABEL_12:
  v14 = givenName;
  label = [(EKUILabeledAvatarView *)self label];
  [label setText:v14];
}

- (void)updateWithAddress:(id)address fullName:(id)name firstName:(id)firstName lastName:(id)lastName
{
  [(EKUILabeledAvatarView *)self updateAvatarViewWithAddress:address fullName:name firstName:firstName lastName:lastName];

  [(EKUILabeledAvatarView *)self updateLabel];
}

- (void)updateWithParticipant:(id)participant
{
  participantCopy = participant;
  emailAddress = [participantCopy emailAddress];
  resourceSpecifier = emailAddress;
  if (!emailAddress)
  {
    v3 = [participantCopy URL];
    resourceSpecifier = [v3 resourceSpecifier];
  }

  name = [participantCopy name];
  firstName = [participantCopy firstName];
  lastName = [participantCopy lastName];
  [(EKUILabeledAvatarView *)self updateAvatarViewWithAddress:resourceSpecifier fullName:name firstName:firstName lastName:lastName];

  if (!emailAddress)
  {
  }

  [(EKUILabeledAvatarView *)self updateLabel];
  if ((self->_options & 8) != 0)
  {
    participantStatus = [participantCopy participantStatus];
    v11 = 0.3;
    if (participantStatus == 2)
    {
      v11 = 1.0;
    }

    [(EKUILabeledAvatarView *)self setAlpha:v11];
  }

  avatar = [(EKUILabeledAvatarView *)self avatar];
  [avatar setNeedsLayout];
}

- (void)updateWithContacts:(id)contacts
{
  contactsCopy = contacts;
  avatar = [(EKUILabeledAvatarView *)self avatar];
  [avatar setContacts:contactsCopy];

  [(EKUILabeledAvatarView *)self updateLabel];
  avatar2 = [(EKUILabeledAvatarView *)self avatar];
  [avatar2 setNeedsLayout];
}

- (void)updateAvatarViewWithAddress:(id)address fullName:(id)name firstName:(id)firstName lastName:(id)lastName
{
  addressCopy = address;
  nameCopy = name;
  firstNameCopy = firstName;
  lastNameCopy = lastName;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__10;
  v32[4] = __Block_byref_object_dispose__10;
  v33 = 0;
  loadContactsAsynchronously = [(EKUILabeledAvatarView *)self loadContactsAsynchronously];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__EKUILabeledAvatarView_updateAvatarViewWithAddress_fullName_firstName_lastName___block_invoke;
  aBlock[3] = &unk_1E84411A0;
  v30 = v32;
  v15 = addressCopy;
  v25 = v15;
  v16 = nameCopy;
  v26 = v16;
  v17 = firstNameCopy;
  v27 = v17;
  v18 = lastNameCopy;
  v28 = v18;
  selfCopy = self;
  v31 = loadContactsAsynchronously;
  v19 = _Block_copy(aBlock);
  v20 = v19;
  if (loadContactsAsynchronously)
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

- (void)setSelectionState:(unint64_t)state
{
  if (self->_selectionState == state)
  {
    return;
  }

  self->_selectionState = state;
  switch(state)
  {
    case 2uLL:
      [(EKUILabeledAvatarView *)self setAlpha:0.3];
      break;
    case 1uLL:
      [(EKUILabeledAvatarView *)self setAlpha:1.0];
      avatar = [(EKUILabeledAvatarView *)self avatar];
      [avatar setAlpha:0.5];

      label = [(EKUILabeledAvatarView *)self label];
      v8 = label;
      v6 = 0.5;
      goto LABEL_7;
    case 0uLL:
      [(EKUILabeledAvatarView *)self setAlpha:1.0];
      avatar2 = [(EKUILabeledAvatarView *)self avatar];
      [avatar2 setAlpha:1.0];

      label = [(EKUILabeledAvatarView *)self label];
      v8 = label;
      v6 = 1.0;
LABEL_7:
      [label setAlpha:v6];

      return;
  }

  [(EKUILabeledAvatarView *)self setAlpha:1.0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (([(EKUILabeledAvatarView *)self options]& 4) != 0)
  {
    pressedAccentOverlay = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
    [pressedAccentOverlay setHidden:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EKUILabeledAvatarView;
    [(EKUILabeledAvatarView *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (([(EKUILabeledAvatarView *)self options]& 4) != 0)
  {
    pressedAccentOverlay = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
    [pressedAccentOverlay setHidden:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EKUILabeledAvatarView;
    [(EKUILabeledAvatarView *)&v9 touchesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (([(EKUILabeledAvatarView *)self options]& 4) != 0)
  {
    pressedAccentOverlay = [(EKUILabeledAvatarView *)self pressedAccentOverlay];
    [pressedAccentOverlay setHidden:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EKUILabeledAvatarView;
    [(EKUILabeledAvatarView *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
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
  delegate = [(EKUILabeledAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKUILabeledAvatarView *)self delegate];
    [delegate2 avatarViewTapped:self];
  }
}

- (void)didLongPress
{
  delegate = [(EKUILabeledAvatarView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKUILabeledAvatarView *)self delegate];
    [delegate2 avatarViewLongPressed:self];
  }
}

+ (id)sortedAvatarListFromParticipants:(id)participants
{
  v19 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = participantsCopy;
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