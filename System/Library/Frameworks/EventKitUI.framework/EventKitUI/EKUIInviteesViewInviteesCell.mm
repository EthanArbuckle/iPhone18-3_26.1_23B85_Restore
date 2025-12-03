@interface EKUIInviteesViewInviteesCell
+ (id)_commentLabelFont;
+ (id)_nameLabelFont;
- (EKUIInviteesViewInviteesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_statusImageViewSymbolConfiguration;
- (void)updateCommonElements:(id)elements statusImage:(id)image conflict:(BOOL)conflict;
- (void)updateConstraints;
- (void)updateWithParticipantForSorting:(id)sorting availabilityType:(int64_t)type hideStatus:(BOOL)status showSpinner:(BOOL)spinner animated:(BOOL)animated;
- (void)updateWithParticipantForSorting:(id)sorting hideStatus:(BOOL)status;
@end

@implementation EKUIInviteesViewInviteesCell

- (EKUIInviteesViewInviteesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v62.receiver = self;
  v62.super_class = EKUIInviteesViewInviteesCell;
  v4 = [(EKUIInviteesViewInviteesCell *)&v62 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(EKUIInviteesViewInviteesCell *)v4 contentView];
    v7 = objc_opt_new();
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v7];
    [(EKUIInviteesViewInviteesCell *)v5 setTextContainerView:v7];
    v8 = objc_opt_new();
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v8];
    v59 = v8;
    [(EKUIInviteesViewInviteesCell *)v5 setRsvpStatusContainerView:v8];
    v9 = objc_opt_new();
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v60 = v7;
    [v7 addSubview:v9];
    v58 = v9;
    [(EKUIInviteesViewInviteesCell *)v5 setOptionalStatusContainerView:v9];
    v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    _statusImageViewSymbolConfiguration = [(EKUIInviteesViewInviteesCell *)v5 _statusImageViewSymbolConfiguration];
    [v10 setPreferredSymbolConfiguration:_statusImageViewSymbolConfiguration];

    if (CalSolariumEnabled())
    {
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    LODWORD(v12) = 1148846080;
    [v10 setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [v10 setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [v10 setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [v10 setContentCompressionResistancePriority:1 forAxis:v15];
    [(EKUIInviteesViewInviteesCell *)v5 setStatusImageView:v10];
    v16 = CalSolariumEnabled();
    rsvpStatusContainerView = [(EKUIInviteesViewInviteesCell *)v5 rsvpStatusContainerView];
    v18 = rsvpStatusContainerView;
    if (v16)
    {
      [rsvpStatusContainerView addSubview:v10];

      v19 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      _statusImageViewSymbolConfiguration2 = [(EKUIInviteesViewInviteesCell *)v5 _statusImageViewSymbolConfiguration];
      [v19 setPreferredSymbolConfiguration:_statusImageViewSymbolConfiguration2];

      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v21) = 1148846080;
      [v19 setContentHuggingPriority:0 forAxis:v21];
      LODWORD(v22) = 1148846080;
      [v19 setContentHuggingPriority:1 forAxis:v22];
      LODWORD(v23) = 1148846080;
      [v19 setContentCompressionResistancePriority:0 forAxis:v23];
      LODWORD(v24) = 1148846080;
      [v19 setContentCompressionResistancePriority:1 forAxis:v24];
      [(EKUIInviteesViewInviteesCell *)v5 setConflictImageView:v19];
      optionalStatusContainerView = [(EKUIInviteesViewInviteesCell *)v5 optionalStatusContainerView];
      [optionalStatusContainerView addSubview:v19];
    }

    else
    {
      [rsvpStatusContainerView setHidden:1];

      optionalStatusContainerView2 = [(EKUIInviteesViewInviteesCell *)v5 optionalStatusContainerView];
      [optionalStatusContainerView2 setHidden:1];

      conflictImageView = [(EKUIInviteesViewInviteesCell *)v5 conflictImageView];
      [conflictImageView setHidden:1];

      [(EKUIInviteesViewInviteesCell *)v5 setAccessoryView:v10];
    }

    v28 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    LODWORD(v29) = 1148846080;
    [v28 setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [v28 setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [v28 setContentCompressionResistancePriority:0 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [v28 setContentCompressionResistancePriority:1 forAxis:v32];
    [v28 setAlpha:0.0];
    [(EKUIInviteesViewInviteesCell *)v5 setSpinner:v28];
    v33 = [[EKUILabeledAvatarView alloc] initWithPlacement:0 options:0];
    [(EKUILabeledAvatarView *)v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKUILabeledAvatarView *)v33 setLoadContactsAsynchronously:1];
    [contentView addSubview:v33];
    [(EKUIInviteesViewInviteesCell *)v5 setContactAvatarView:v33];
    v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    _nameLabelFont = [objc_opt_class() _nameLabelFont];
    [v34 setFont:_nameLabelFont];

    textLabel = [(EKUIInviteesViewInviteesCell *)v5 textLabel];
    textColor = [textLabel textColor];
    [v34 setTextColor:textColor];

    LODWORD(v38) = 1148846080;
    [v34 setContentCompressionResistancePriority:1 forAxis:v38];
    [v34 setNumberOfLines:0];
    textContainerView = [(EKUIInviteesViewInviteesCell *)v5 textContainerView];
    [textContainerView addSubview:v34];

    [(EKUIInviteesViewInviteesCell *)v5 setNameLabel:v34];
    v40 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v61 = contentView;
    if (CalSolariumEnabled())
    {
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      _commentLabelFont = [objc_opt_class() _commentLabelFont];
      [v40 setFont:_commentLabelFont];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v40 setTextColor:secondaryLabelColor];

      [v40 setNumberOfLines:1];
      LODWORD(v43) = 1148846080;
      [v40 setContentCompressionResistancePriority:1 forAxis:v43];
      [v40 setLineBreakMode:0];
      rsvpStatusContainerView2 = [(EKUIInviteesViewInviteesCell *)v5 rsvpStatusContainerView];
      [rsvpStatusContainerView2 addSubview:v40];
    }

    else
    {
      [v40 setHidden:1];
    }

    [(EKUIInviteesViewInviteesCell *)v5 setRsvpStatusLabel:v40];
    v45 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    _commentLabelFont2 = [objc_opt_class() _commentLabelFont];
    [v45 setFont:_commentLabelFont2];

    detailTextLabel = [(EKUIInviteesViewInviteesCell *)v5 detailTextLabel];
    textColor2 = [detailTextLabel textColor];
    [v45 setTextColor:textColor2];

    [v45 setNumberOfLines:0];
    LODWORD(v49) = 1148846080;
    [v45 setContentCompressionResistancePriority:1 forAxis:v49];
    [v45 setLineBreakMode:0];
    textContainerView2 = [(EKUIInviteesViewInviteesCell *)v5 textContainerView];
    [textContainerView2 addSubview:v45];

    [(EKUIInviteesViewInviteesCell *)v5 setCommentLabel:v45];
    v51 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    _commentLabelFont3 = [objc_opt_class() _commentLabelFont];
    [v51 setFont:_commentLabelFont3];

    detailTextLabel2 = [(EKUIInviteesViewInviteesCell *)v5 detailTextLabel];
    textColor3 = [detailTextLabel2 textColor];
    [v51 setTextColor:textColor3];

    [v51 setNumberOfLines:1];
    LODWORD(v55) = 1148846080;
    [v51 setContentCompressionResistancePriority:1 forAxis:v55];
    [v51 setLineBreakMode:0];
    if (CalSolariumEnabled())
    {
      [(EKUIInviteesViewInviteesCell *)v5 optionalStatusContainerView];
    }

    else
    {
      [(EKUIInviteesViewInviteesCell *)v5 textContainerView];
    }
    v56 = ;
    [v56 addSubview:v51];

    [(EKUIInviteesViewInviteesCell *)v5 setOptionalInviteeLabel:v51];
    [(EKUIInviteesViewInviteesCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)updateConstraints
{
  persistentConstraints = [(EKUIInviteesViewInviteesCell *)self persistentConstraints];

  if (!persistentConstraints)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contactAvatarView = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
    leadingAnchor = [contactAvatarView leadingAnchor];
    contentView = [(EKUIInviteesViewInviteesCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v4 addObject:v10];

    contactAvatarView2 = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
    centerYAnchor = [contactAvatarView2 centerYAnchor];
    contentView2 = [(EKUIInviteesViewInviteesCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v4 addObject:v15];

    contactAvatarView3 = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
    widthAnchor = [contactAvatarView3 widthAnchor];
    v18 = [widthAnchor constraintEqualToConstant:37.0];
    [v4 addObject:v18];

    textContainerView = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    leadingAnchor3 = [textContainerView leadingAnchor];
    contactAvatarView4 = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
    trailingAnchor = [contactAvatarView4 trailingAnchor];
    v23 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
    [v4 addObject:v23];

    textContainerView2 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    trailingAnchor2 = [textContainerView2 trailingAnchor];
    contentView3 = [(EKUIInviteesViewInviteesCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v4 addObject:v29];

    textContainerView3 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    centerYAnchor3 = [textContainerView3 centerYAnchor];
    contentView4 = [(EKUIInviteesViewInviteesCell *)self contentView];
    centerYAnchor4 = [contentView4 centerYAnchor];
    v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v4 addObject:v34];

    nameLabel = [(EKUIInviteesViewInviteesCell *)self nameLabel];
    leadingAnchor4 = [nameLabel leadingAnchor];
    textContainerView4 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    leadingAnchor5 = [textContainerView4 leadingAnchor];
    v39 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v4 addObject:v39];

    nameLabel2 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
    trailingAnchor4 = [nameLabel2 trailingAnchor];
    textContainerView5 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    trailingAnchor5 = [textContainerView5 trailingAnchor];
    v44 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [v4 addObject:v44];

    nameLabel3 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
    topAnchor = [nameLabel3 topAnchor];
    textContainerView6 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    topAnchor2 = [textContainerView6 topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v4 addObject:v49];

    if (CalSolariumEnabled())
    {
      statusImageView = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      leadingAnchor6 = [statusImageView leadingAnchor];
      rsvpStatusContainerView = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      leadingAnchor7 = [rsvpStatusContainerView leadingAnchor];
      v54 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
      [v4 addObject:v54];

      statusImageView2 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      topAnchor3 = [statusImageView2 topAnchor];
      rsvpStatusContainerView2 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      topAnchor4 = [rsvpStatusContainerView2 topAnchor];
      v59 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v4 addObject:v59];

      statusImageView3 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      bottomAnchor = [statusImageView3 bottomAnchor];
      rsvpStatusContainerView3 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      bottomAnchor2 = [rsvpStatusContainerView3 bottomAnchor];
      v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v4 addObject:v64];

      rsvpStatusLabel = [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
      centerYAnchor5 = [rsvpStatusLabel centerYAnchor];
      statusImageView4 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      centerYAnchor6 = [statusImageView4 centerYAnchor];
      v69 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      [v4 addObject:v69];

      rsvpStatusLabel2 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
      leadingAnchor8 = [rsvpStatusLabel2 leadingAnchor];
      statusImageView5 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      trailingAnchor6 = [statusImageView5 trailingAnchor];
      v74 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor6 constant:4.0];
      [v4 addObject:v74];

      rsvpStatusContainerView4 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      leadingAnchor9 = [rsvpStatusContainerView4 leadingAnchor];
      textContainerView7 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
      leadingAnchor10 = [textContainerView7 leadingAnchor];
      v79 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
      [v4 addObject:v79];

      rsvpStatusContainerView5 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      trailingAnchor7 = [rsvpStatusContainerView5 trailingAnchor];
      textContainerView8 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
      trailingAnchor8 = [textContainerView8 trailingAnchor];
      v84 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      [v4 addObject:v84];
    }

    commentLabel = [(EKUIInviteesViewInviteesCell *)self commentLabel];
    leadingAnchor11 = [commentLabel leadingAnchor];
    textContainerView9 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    leadingAnchor12 = [textContainerView9 leadingAnchor];
    v89 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [v4 addObject:v89];

    commentLabel2 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
    trailingAnchor9 = [commentLabel2 trailingAnchor];
    textContainerView10 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    trailingAnchor10 = [textContainerView10 trailingAnchor];
    v94 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [v4 addObject:v94];

    if (CalSolariumEnabled())
    {
      conflictImageView = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      leadingAnchor13 = [conflictImageView leadingAnchor];
      optionalStatusContainerView = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      leadingAnchor14 = [optionalStatusContainerView leadingAnchor];
      v99 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
      [v4 addObject:v99];

      conflictImageView2 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      topAnchor5 = [conflictImageView2 topAnchor];
      optionalStatusContainerView2 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      topAnchor6 = [optionalStatusContainerView2 topAnchor];
      v104 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      [v4 addObject:v104];

      conflictImageView3 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      bottomAnchor3 = [conflictImageView3 bottomAnchor];
      optionalStatusContainerView3 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      bottomAnchor4 = [optionalStatusContainerView3 bottomAnchor];
      v109 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v4 addObject:v109];

      optionalInviteeLabel = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      centerYAnchor7 = [optionalInviteeLabel centerYAnchor];
      conflictImageView4 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      centerYAnchor8 = [conflictImageView4 centerYAnchor];
      v114 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
      [v4 addObject:v114];

      optionalInviteeLabel2 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      leadingAnchor15 = [optionalInviteeLabel2 leadingAnchor];
      conflictImageView5 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      trailingAnchor11 = [conflictImageView5 trailingAnchor];
      v119 = [leadingAnchor15 constraintEqualToAnchor:trailingAnchor11 constant:4.0];
      [v4 addObject:v119];

      optionalStatusContainerView4 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      leadingAnchor16 = [optionalStatusContainerView4 leadingAnchor];
      textContainerView11 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
      leadingAnchor17 = [textContainerView11 leadingAnchor];
      v124 = [leadingAnchor16 constraintEqualToAnchor:leadingAnchor17];
      [v4 addObject:v124];

      [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
    }

    else
    {
      optionalInviteeLabel3 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      leadingAnchor18 = [optionalInviteeLabel3 leadingAnchor];
      textContainerView12 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
      leadingAnchor19 = [textContainerView12 leadingAnchor];
      v129 = [leadingAnchor18 constraintEqualToAnchor:leadingAnchor19];
      [v4 addObject:v129];

      [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
    }
    v130 = ;
    trailingAnchor12 = [v130 trailingAnchor];
    textContainerView13 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    trailingAnchor13 = [textContainerView13 trailingAnchor];
    v134 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
    [v4 addObject:v134];

    contentView5 = [(EKUIInviteesViewInviteesCell *)self contentView];
    heightAnchor = [contentView5 heightAnchor];
    v137 = [heightAnchor constraintGreaterThanOrEqualToConstant:60.0];
    [v4 addObject:v137];

    contentView6 = [(EKUIInviteesViewInviteesCell *)self contentView];
    heightAnchor2 = [contentView6 heightAnchor];
    textContainerView14 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    heightAnchor3 = [textContainerView14 heightAnchor];
    v142 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3 constant:12.0];
    [v4 addObject:v142];

    [MEMORY[0x1E696ACD8] activateConstraints:v4];
    [(EKUIInviteesViewInviteesCell *)self setPersistentConstraints:v4];
  }

  removableConstraints = [(EKUIInviteesViewInviteesCell *)self removableConstraints];

  if (!removableConstraints)
  {
    v144 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (CalSolariumEnabled())
    {
      v145 = ![(EKUIInviteesViewInviteesCell *)self hideStatus];
    }

    else
    {
      v145 = 0;
    }

    commentLabel3 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
    text = [commentLabel3 text];
    if (text)
    {
      commentLabel4 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
      text2 = [commentLabel4 text];
      v150 = [text2 length] != 0;
    }

    else
    {
      v150 = 0;
    }

    optionalInviteeLabel4 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
    text3 = [optionalInviteeLabel4 text];
    if (text3)
    {
      optionalInviteeLabel5 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      text4 = [optionalInviteeLabel5 text];
      v155 = [text4 length] != 0;
    }

    else
    {
      v155 = 0;
    }

    _commentLabelFont = [objc_opt_class() _commentLabelFont];
    v157 = CalSolariumEnabled();
    v158 = 20.0;
    if (v157)
    {
      v158 = 15.0;
    }

    [_commentLabelFont _scaledValueForValue:v158];
    CalRoundToScreenScale(v159);
    v161 = v160;

    if (v145)
    {
      rsvpStatusContainerView6 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      [rsvpStatusContainerView6 bottomAnchor];
      v163 = v195 = v155;

      v164 = v161 + -5.0;
      rsvpStatusContainerView7 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      firstBaselineAnchor = [rsvpStatusContainerView7 firstBaselineAnchor];
      nameLabel4 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
      [nameLabel4 lastBaselineAnchor];
      v169 = v168 = v145;
      [firstBaselineAnchor constraintEqualToAnchor:v169 constant:v161 + -5.0 + -5.0];
      v171 = v170 = v150;
      [v144 addObject:v171];

      v150 = v170;
      v145 = v168;
      lastBaselineAnchor = v163;
      v155 = v195;
    }

    else
    {
      rsvpStatusContainerView7 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
      lastBaselineAnchor = [rsvpStatusContainerView7 lastBaselineAnchor];
      v164 = v161;
    }

    if (v150 && v155)
    {
      commentLabel5 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
      firstBaselineAnchor2 = [commentLabel5 firstBaselineAnchor];
      v175 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:v164];
      [v144 addObject:v175];

      if (CalSolariumEnabled())
      {
        optionalStatusContainerView5 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
        firstBaselineAnchor3 = [optionalStatusContainerView5 firstBaselineAnchor];
        commentLabel6 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
        lastBaselineAnchor2 = [commentLabel6 lastBaselineAnchor];
        v180 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:v161 + -7.0];
        [v144 addObject:v180];

LABEL_29:
        optionalStatusContainerView6 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
LABEL_35:
        v190 = optionalStatusContainerView6;
        bottomAnchor5 = [optionalStatusContainerView6 bottomAnchor];
        textContainerView15 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
        bottomAnchor6 = [textContainerView15 bottomAnchor];
        v194 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
        [v144 addObject:v194];

        [MEMORY[0x1E696ACD8] activateConstraints:v144];
        [(EKUIInviteesViewInviteesCell *)self setRemovableConstraints:v144];

        goto LABEL_36;
      }

      optionalInviteeLabel6 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      firstBaselineAnchor4 = [optionalInviteeLabel6 firstBaselineAnchor];
      commentLabel7 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
      lastBaselineAnchor3 = [commentLabel7 lastBaselineAnchor];
      v186 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor3 constant:v161];
      [v144 addObject:v186];
    }

    else
    {
      if (!v155)
      {
        if (v150)
        {
          commentLabel8 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
          firstBaselineAnchor5 = [commentLabel8 firstBaselineAnchor];
          v189 = [firstBaselineAnchor5 constraintEqualToAnchor:lastBaselineAnchor constant:v164];
          [v144 addObject:v189];

          optionalStatusContainerView6 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
        }

        else
        {
          if (v145)
          {
            [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
          }

          else
          {
            [(EKUIInviteesViewInviteesCell *)self nameLabel];
          }
          optionalStatusContainerView6 = ;
        }

        goto LABEL_35;
      }

      if (CalSolariumEnabled())
      {
        optionalStatusContainerView5 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
        firstBaselineAnchor3 = [optionalStatusContainerView5 firstBaselineAnchor];
        commentLabel6 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:v164 + -7.0];
        [v144 addObject:commentLabel6];
        goto LABEL_29;
      }

      optionalInviteeLabel6 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      firstBaselineAnchor4 = [optionalInviteeLabel6 firstBaselineAnchor];
      commentLabel7 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor constant:v164];
      [v144 addObject:commentLabel7];
    }

    optionalStatusContainerView6 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
    goto LABEL_35;
  }

LABEL_36:
  v196.receiver = self;
  v196.super_class = EKUIInviteesViewInviteesCell;
  [(EKUIInviteesViewInviteesCell *)&v196 updateConstraints];
}

- (void)updateWithParticipantForSorting:(id)sorting hideStatus:(BOOL)status
{
  statusCopy = status;
  v24 = *MEMORY[0x1E69E9840];
  sortingCopy = sorting;
  v7 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412546;
    v21 = sortingCopy;
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Updating cell with participant for sorting: [%@]. Cell: [%@]", &v20, 0x16u);
  }

  [(EKUIInviteesViewInviteesCell *)self setShowSpinner:0];
  if (CalSolariumEnabled())
  {
    [(EKUIInviteesViewInviteesCell *)self setHideStatus:!statusCopy];
  }

  v8 = CalSolariumEnabled();
  v9 = MEMORY[0x1E69DDD10];
  if (!v8)
  {
    v9 = MEMORY[0x1E69DDDB8];
  }

  v10 = MEMORY[0x1E69DB878];
  v11 = *v9;
  v12 = [v10 preferredFontForTextStyle:v11];
  v13 = MEMORY[0x1E69DB878];
  fontDescriptor = [v12 fontDescriptor];
  [v12 pointSize];
  v16 = [v13 fontWithDescriptor:fontDescriptor size:v15 + 2.0];

  participant = [sortingCopy participant];
  [participant participantStatus];
  v18 = attributedStatusGlyph();

  v19 = CalImageFromGlyph(v18);
  [(EKUIInviteesViewInviteesCell *)self updateCommonElements:sortingCopy statusImage:v19 conflict:0];
}

- (void)updateWithParticipantForSorting:(id)sorting availabilityType:(int64_t)type hideStatus:(BOOL)status showSpinner:(BOOL)spinner animated:(BOOL)animated
{
  spinnerCopy = spinner;
  statusCopy = status;
  v26 = *MEMORY[0x1E69E9840];
  sortingCopy = sorting;
  v12 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = EKAvailabilitySpanTypeAsString();
    v15 = CalBooleanAsString();
    v18 = 138413058;
    v19 = sortingCopy;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Updating cell with participant for sorting: [%@] availability type: [%@] showSpinner: [%@].  Cell: [%@]", &v18, 0x2Au);
  }

  [(EKUIInviteesViewInviteesCell *)self setHideStatus:CalSolariumEnabled() & !statusCopy];
  [(EKUIInviteesViewInviteesCell *)self setShowSpinner:spinnerCopy];
  v16 = [MEMORY[0x1E6966988] showTypeAsBusy:type];
  v17 = ImageForAvailabilityType(type);
  [(EKUIInviteesViewInviteesCell *)self updateCommonElements:sortingCopy statusImage:v17 conflict:v16];
}

- (void)updateCommonElements:(id)elements statusImage:(id)image conflict:(BOOL)conflict
{
  conflictCopy = conflict;
  imageCopy = image;
  elementsCopy = elements;
  participant = [elementsCopy participant];
  if ([(EKUIInviteesViewInviteesCell *)self showSpinner])
  {
    spinner = [(EKUIInviteesViewInviteesCell *)self spinner];
    [(EKUIInviteesViewInviteesCell *)self setAccessoryView:spinner];

    spinner2 = [(EKUIInviteesViewInviteesCell *)self spinner];
    isAnimating = [spinner2 isAnimating];

    if (isAnimating)
    {
      goto LABEL_9;
    }

    spinner3 = [(EKUIInviteesViewInviteesCell *)self spinner];
    [spinner3 startAnimating];
    goto LABEL_8;
  }

  if ((CalSolariumEnabled() & 1) == 0)
  {
    statusImageView = [(EKUIInviteesViewInviteesCell *)self statusImageView];
    [(EKUIInviteesViewInviteesCell *)self setAccessoryView:statusImageView];
  }

  spinner4 = [(EKUIInviteesViewInviteesCell *)self spinner];
  isAnimating2 = [spinner4 isAnimating];

  if (isAnimating2)
  {
    spinner3 = [(EKUIInviteesViewInviteesCell *)self spinner];
    [spinner3 stopAnimating];
LABEL_8:
  }

LABEL_9:
  hideStatus = [(EKUIInviteesViewInviteesCell *)self hideStatus];
  statusImageView2 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
  [statusImageView2 setHidden:hideStatus];

  if (CalSolariumEnabled())
  {
    conflictImageView = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
    [conflictImageView setHidden:!conflictCopy];

    conflictImageView2 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
    [conflictImageView2 setImage:imageCopy];

    hideStatus2 = [(EKUIInviteesViewInviteesCell *)self hideStatus];
    rsvpStatusLabel = [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
    [rsvpStatusLabel setHidden:hideStatus2];

    hideStatus3 = [(EKUIInviteesViewInviteesCell *)self hideStatus];
    rsvpStatusContainerView = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
    [rsvpStatusContainerView setHidden:hideStatus3];
  }

  if (![(EKUIInviteesViewInviteesCell *)self hideStatus])
  {
    if (!CalSolariumEnabled() || !conflictCopy)
    {
      statusImageView3 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      [statusImageView3 setImage:imageCopy];
    }

    _statusImageViewSymbolConfiguration = [(EKUIInviteesViewInviteesCell *)self _statusImageViewSymbolConfiguration];
    statusImageView4 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
    [statusImageView4 setPreferredSymbolConfiguration:_statusImageViewSymbolConfiguration];

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    statusImageView5 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
    [statusImageView5 setTintColor:systemGrayColor];

    statusImageView6 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
    [statusImageView6 sizeToFit];

    rsvpStatusDisplayString = [participant rsvpStatusDisplayString];
    rsvpStatusLabel2 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
    [rsvpStatusLabel2 setText:rsvpStatusDisplayString];
  }

  contactAvatarView = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
  [contactAvatarView updateWithParticipant:participant];

  displayName = [elementsCopy displayName];

  nameLabel = [(EKUIInviteesViewInviteesCell *)self nameLabel];
  [nameLabel setText:displayName];

  commentLabel = [(EKUIInviteesViewInviteesCell *)self commentLabel];
  text = [commentLabel text];

  commentLabelString = [participant commentLabelString];
  commentLabel2 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
  [commentLabel2 setText:commentLabelString];

  optionalInviteeLabel = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
  text2 = [optionalInviteeLabel text];

  if ([participant participantRole] == 2)
  {
    v42 = EventKitUIBundle();
    v43 = [v42 localizedStringForKey:@"Optional" value:&stru_1F4EF6790 table:0];

    if (conflictCopy)
    {
      v44 = EventKitUIBundle();
      v45 = [v44 localizedStringForKey:@"Conflict" value:&stru_1F4EF6790 table:0];

      v46 = MEMORY[0x1E696AEC0];
      v47 = EventKitUIBundle();
      v48 = [v47 localizedStringForKey:@"StatusConflictFormat" value:@"%@ · %@" table:0];
      v49 = [v46 localizedStringWithFormat:v48, v43, v45];

      v43 = v49;
    }

    if (CalSolariumEnabled())
    {
      optionalStatusContainerView = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      [optionalStatusContainerView setHidden:0];
    }

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
LABEL_26:
    v54 = secondaryLabelColor;
    optionalInviteeLabel2 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
    [optionalInviteeLabel2 setTextColor:v54];

    goto LABEL_28;
  }

  if (conflictCopy)
  {
    v52 = EventKitUIBundle();
    v43 = [v52 localizedStringForKey:@"Conflict" value:&stru_1F4EF6790 table:0];

    if (CalSolariumEnabled())
    {
      optionalStatusContainerView2 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      [optionalStatusContainerView2 setHidden:0];
    }

    secondaryLabelColor = [MEMORY[0x1E69DC888] systemRedColor];
    goto LABEL_26;
  }

  v43 = &stru_1F4EF6790;
LABEL_28:
  optionalInviteeLabel3 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
  [optionalInviteeLabel3 setText:v43];

  if (text)
  {
    v57 = [text length] == 0;
    if (commentLabelString)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v57 = 1;
    if (commentLabelString)
    {
LABEL_30:
      v58 = [commentLabelString length] == 0;
      if (text2)
      {
        goto LABEL_31;
      }

LABEL_35:
      v59 = 1;
      if (v43)
      {
        goto LABEL_32;
      }

LABEL_36:
      v60 = 1;
      goto LABEL_37;
    }
  }

  v58 = 1;
  if (!text2)
  {
    goto LABEL_35;
  }

LABEL_31:
  v59 = [text2 length] == 0;
  if (!v43)
  {
    goto LABEL_36;
  }

LABEL_32:
  v60 = [(__CFString *)v43 length]== 0;
LABEL_37:
  if (v57 != v58 || v59 != v60)
  {
    v61 = MEMORY[0x1E696ACD8];
    removableConstraints = [(EKUIInviteesViewInviteesCell *)self removableConstraints];
    [v61 deactivateConstraints:removableConstraints];

    [(EKUIInviteesViewInviteesCell *)self setRemovableConstraints:0];
    [(EKUIInviteesViewInviteesCell *)self setNeedsUpdateConstraints];
  }
}

- (id)_statusImageViewSymbolConfiguration
{
  v3 = CalSolariumEnabled();
  traitCollection = [(EKUIInviteesViewInviteesCell *)self traitCollection];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v3)
  {
    v6 = MEMORY[0x1E69DDD10];
  }

  else
  {
    v6 = MEMORY[0x1E69DDCF8];
  }

  v7 = [EKUIConstrainedFontUtilities tableViewCellCappedSymbolImageScaleWithScale:v5 traitCollection:traitCollection];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*v6 scale:v7];

  return v8;
}

+ (id)_nameLabelFont
{
  if (CalSolariumEnabled())
  {
    v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD00] addingSymbolicTraits:2 options:0];
    v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];
  }

  else
  {
    v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  return v3;
}

+ (id)_commentLabelFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = CalSolariumEnabled();
  v4 = MEMORY[0x1E69DDD10];
  if (!v3)
  {
    v4 = MEMORY[0x1E69DDD08];
  }

  v5 = *v4;

  return [v2 preferredFontForTextStyle:v5];
}

@end