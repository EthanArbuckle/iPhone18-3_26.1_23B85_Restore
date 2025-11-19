@interface EKUIInviteesViewInviteesCell
+ (id)_commentLabelFont;
+ (id)_nameLabelFont;
- (EKUIInviteesViewInviteesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_statusImageViewSymbolConfiguration;
- (void)updateCommonElements:(id)a3 statusImage:(id)a4 conflict:(BOOL)a5;
- (void)updateConstraints;
- (void)updateWithParticipantForSorting:(id)a3 availabilityType:(int64_t)a4 hideStatus:(BOOL)a5 showSpinner:(BOOL)a6 animated:(BOOL)a7;
- (void)updateWithParticipantForSorting:(id)a3 hideStatus:(BOOL)a4;
@end

@implementation EKUIInviteesViewInviteesCell

- (EKUIInviteesViewInviteesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v62.receiver = self;
  v62.super_class = EKUIInviteesViewInviteesCell;
  v4 = [(EKUIInviteesViewInviteesCell *)&v62 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(EKUIInviteesViewInviteesCell *)v4 contentView];
    v7 = objc_opt_new();
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:v7];
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
    v11 = [(EKUIInviteesViewInviteesCell *)v5 _statusImageViewSymbolConfiguration];
    [v10 setPreferredSymbolConfiguration:v11];

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
    v17 = [(EKUIInviteesViewInviteesCell *)v5 rsvpStatusContainerView];
    v18 = v17;
    if (v16)
    {
      [v17 addSubview:v10];

      v19 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v20 = [(EKUIInviteesViewInviteesCell *)v5 _statusImageViewSymbolConfiguration];
      [v19 setPreferredSymbolConfiguration:v20];

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
      v25 = [(EKUIInviteesViewInviteesCell *)v5 optionalStatusContainerView];
      [v25 addSubview:v19];
    }

    else
    {
      [v17 setHidden:1];

      v26 = [(EKUIInviteesViewInviteesCell *)v5 optionalStatusContainerView];
      [v26 setHidden:1];

      v27 = [(EKUIInviteesViewInviteesCell *)v5 conflictImageView];
      [v27 setHidden:1];

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
    [v6 addSubview:v33];
    [(EKUIInviteesViewInviteesCell *)v5 setContactAvatarView:v33];
    v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [objc_opt_class() _nameLabelFont];
    [v34 setFont:v35];

    v36 = [(EKUIInviteesViewInviteesCell *)v5 textLabel];
    v37 = [v36 textColor];
    [v34 setTextColor:v37];

    LODWORD(v38) = 1148846080;
    [v34 setContentCompressionResistancePriority:1 forAxis:v38];
    [v34 setNumberOfLines:0];
    v39 = [(EKUIInviteesViewInviteesCell *)v5 textContainerView];
    [v39 addSubview:v34];

    [(EKUIInviteesViewInviteesCell *)v5 setNameLabel:v34];
    v40 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v61 = v6;
    if (CalSolariumEnabled())
    {
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      v41 = [objc_opt_class() _commentLabelFont];
      [v40 setFont:v41];

      v42 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v40 setTextColor:v42];

      [v40 setNumberOfLines:1];
      LODWORD(v43) = 1148846080;
      [v40 setContentCompressionResistancePriority:1 forAxis:v43];
      [v40 setLineBreakMode:0];
      v44 = [(EKUIInviteesViewInviteesCell *)v5 rsvpStatusContainerView];
      [v44 addSubview:v40];
    }

    else
    {
      [v40 setHidden:1];
    }

    [(EKUIInviteesViewInviteesCell *)v5 setRsvpStatusLabel:v40];
    v45 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [objc_opt_class() _commentLabelFont];
    [v45 setFont:v46];

    v47 = [(EKUIInviteesViewInviteesCell *)v5 detailTextLabel];
    v48 = [v47 textColor];
    [v45 setTextColor:v48];

    [v45 setNumberOfLines:0];
    LODWORD(v49) = 1148846080;
    [v45 setContentCompressionResistancePriority:1 forAxis:v49];
    [v45 setLineBreakMode:0];
    v50 = [(EKUIInviteesViewInviteesCell *)v5 textContainerView];
    [v50 addSubview:v45];

    [(EKUIInviteesViewInviteesCell *)v5 setCommentLabel:v45];
    v51 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = [objc_opt_class() _commentLabelFont];
    [v51 setFont:v52];

    v53 = [(EKUIInviteesViewInviteesCell *)v5 detailTextLabel];
    v54 = [v53 textColor];
    [v51 setTextColor:v54];

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
  v3 = [(EKUIInviteesViewInviteesCell *)self persistentConstraints];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
    v6 = [v5 leadingAnchor];
    v7 = [(EKUIInviteesViewInviteesCell *)self contentView];
    v8 = [v7 layoutMarginsGuide];
    v9 = [v8 leadingAnchor];
    v10 = [v6 constraintEqualToAnchor:v9];
    [v4 addObject:v10];

    v11 = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
    v12 = [v11 centerYAnchor];
    v13 = [(EKUIInviteesViewInviteesCell *)self contentView];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v4 addObject:v15];

    v16 = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
    v17 = [v16 widthAnchor];
    v18 = [v17 constraintEqualToConstant:37.0];
    [v4 addObject:v18];

    v19 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v20 = [v19 leadingAnchor];
    v21 = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:12.0];
    [v4 addObject:v23];

    v24 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v25 = [v24 trailingAnchor];
    v26 = [(EKUIInviteesViewInviteesCell *)self contentView];
    v27 = [v26 layoutMarginsGuide];
    v28 = [v27 trailingAnchor];
    v29 = [v25 constraintEqualToAnchor:v28];
    [v4 addObject:v29];

    v30 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v31 = [v30 centerYAnchor];
    v32 = [(EKUIInviteesViewInviteesCell *)self contentView];
    v33 = [v32 centerYAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    [v4 addObject:v34];

    v35 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
    v36 = [v35 leadingAnchor];
    v37 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v38 = [v37 leadingAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
    [v4 addObject:v39];

    v40 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
    v41 = [v40 trailingAnchor];
    v42 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v43 = [v42 trailingAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
    [v4 addObject:v44];

    v45 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
    v46 = [v45 topAnchor];
    v47 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v48 = [v47 topAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    [v4 addObject:v49];

    if (CalSolariumEnabled())
    {
      v50 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      v51 = [v50 leadingAnchor];
      v52 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      v53 = [v52 leadingAnchor];
      v54 = [v51 constraintEqualToAnchor:v53];
      [v4 addObject:v54];

      v55 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      v56 = [v55 topAnchor];
      v57 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      v58 = [v57 topAnchor];
      v59 = [v56 constraintEqualToAnchor:v58];
      [v4 addObject:v59];

      v60 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      v61 = [v60 bottomAnchor];
      v62 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      v63 = [v62 bottomAnchor];
      v64 = [v61 constraintEqualToAnchor:v63];
      [v4 addObject:v64];

      v65 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
      v66 = [v65 centerYAnchor];
      v67 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      v68 = [v67 centerYAnchor];
      v69 = [v66 constraintEqualToAnchor:v68];
      [v4 addObject:v69];

      v70 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
      v71 = [v70 leadingAnchor];
      v72 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      v73 = [v72 trailingAnchor];
      v74 = [v71 constraintEqualToAnchor:v73 constant:4.0];
      [v4 addObject:v74];

      v75 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      v76 = [v75 leadingAnchor];
      v77 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
      v78 = [v77 leadingAnchor];
      v79 = [v76 constraintEqualToAnchor:v78];
      [v4 addObject:v79];

      v80 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      v81 = [v80 trailingAnchor];
      v82 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
      v83 = [v82 trailingAnchor];
      v84 = [v81 constraintEqualToAnchor:v83];
      [v4 addObject:v84];
    }

    v85 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
    v86 = [v85 leadingAnchor];
    v87 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v88 = [v87 leadingAnchor];
    v89 = [v86 constraintEqualToAnchor:v88];
    [v4 addObject:v89];

    v90 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
    v91 = [v90 trailingAnchor];
    v92 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v93 = [v92 trailingAnchor];
    v94 = [v91 constraintEqualToAnchor:v93];
    [v4 addObject:v94];

    if (CalSolariumEnabled())
    {
      v95 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      v96 = [v95 leadingAnchor];
      v97 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      v98 = [v97 leadingAnchor];
      v99 = [v96 constraintEqualToAnchor:v98];
      [v4 addObject:v99];

      v100 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      v101 = [v100 topAnchor];
      v102 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      v103 = [v102 topAnchor];
      v104 = [v101 constraintEqualToAnchor:v103];
      [v4 addObject:v104];

      v105 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      v106 = [v105 bottomAnchor];
      v107 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      v108 = [v107 bottomAnchor];
      v109 = [v106 constraintEqualToAnchor:v108];
      [v4 addObject:v109];

      v110 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      v111 = [v110 centerYAnchor];
      v112 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      v113 = [v112 centerYAnchor];
      v114 = [v111 constraintEqualToAnchor:v113];
      [v4 addObject:v114];

      v115 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      v116 = [v115 leadingAnchor];
      v117 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
      v118 = [v117 trailingAnchor];
      v119 = [v116 constraintEqualToAnchor:v118 constant:4.0];
      [v4 addObject:v119];

      v120 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      v121 = [v120 leadingAnchor];
      v122 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
      v123 = [v122 leadingAnchor];
      v124 = [v121 constraintEqualToAnchor:v123];
      [v4 addObject:v124];

      [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
    }

    else
    {
      v125 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      v126 = [v125 leadingAnchor];
      v127 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
      v128 = [v127 leadingAnchor];
      v129 = [v126 constraintEqualToAnchor:v128];
      [v4 addObject:v129];

      [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
    }
    v130 = ;
    v131 = [v130 trailingAnchor];
    v132 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v133 = [v132 trailingAnchor];
    v134 = [v131 constraintEqualToAnchor:v133];
    [v4 addObject:v134];

    v135 = [(EKUIInviteesViewInviteesCell *)self contentView];
    v136 = [v135 heightAnchor];
    v137 = [v136 constraintGreaterThanOrEqualToConstant:60.0];
    [v4 addObject:v137];

    v138 = [(EKUIInviteesViewInviteesCell *)self contentView];
    v139 = [v138 heightAnchor];
    v140 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
    v141 = [v140 heightAnchor];
    v142 = [v139 constraintGreaterThanOrEqualToAnchor:v141 constant:12.0];
    [v4 addObject:v142];

    [MEMORY[0x1E696ACD8] activateConstraints:v4];
    [(EKUIInviteesViewInviteesCell *)self setPersistentConstraints:v4];
  }

  v143 = [(EKUIInviteesViewInviteesCell *)self removableConstraints];

  if (!v143)
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

    v146 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
    v147 = [v146 text];
    if (v147)
    {
      v148 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
      v149 = [v148 text];
      v150 = [v149 length] != 0;
    }

    else
    {
      v150 = 0;
    }

    v151 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
    v152 = [v151 text];
    if (v152)
    {
      v153 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      v154 = [v153 text];
      v155 = [v154 length] != 0;
    }

    else
    {
      v155 = 0;
    }

    v156 = [objc_opt_class() _commentLabelFont];
    v157 = CalSolariumEnabled();
    v158 = 20.0;
    if (v157)
    {
      v158 = 15.0;
    }

    [v156 _scaledValueForValue:v158];
    CalRoundToScreenScale(v159);
    v161 = v160;

    if (v145)
    {
      v162 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      [v162 bottomAnchor];
      v163 = v195 = v155;

      v164 = v161 + -5.0;
      v165 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
      v166 = [v165 firstBaselineAnchor];
      v167 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
      [v167 lastBaselineAnchor];
      v169 = v168 = v145;
      [v166 constraintEqualToAnchor:v169 constant:v161 + -5.0 + -5.0];
      v171 = v170 = v150;
      [v144 addObject:v171];

      v150 = v170;
      v145 = v168;
      v172 = v163;
      v155 = v195;
    }

    else
    {
      v165 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
      v172 = [v165 lastBaselineAnchor];
      v164 = v161;
    }

    if (v150 && v155)
    {
      v173 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
      v174 = [v173 firstBaselineAnchor];
      v175 = [v174 constraintEqualToAnchor:v172 constant:v164];
      [v144 addObject:v175];

      if (CalSolariumEnabled())
      {
        v176 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
        v177 = [v176 firstBaselineAnchor];
        v178 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
        v179 = [v178 lastBaselineAnchor];
        v180 = [v177 constraintEqualToAnchor:v179 constant:v161 + -7.0];
        [v144 addObject:v180];

LABEL_29:
        v181 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
LABEL_35:
        v190 = v181;
        v191 = [v181 bottomAnchor];
        v192 = [(EKUIInviteesViewInviteesCell *)self textContainerView];
        v193 = [v192 bottomAnchor];
        v194 = [v191 constraintEqualToAnchor:v193];
        [v144 addObject:v194];

        [MEMORY[0x1E696ACD8] activateConstraints:v144];
        [(EKUIInviteesViewInviteesCell *)self setRemovableConstraints:v144];

        goto LABEL_36;
      }

      v182 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      v183 = [v182 firstBaselineAnchor];
      v184 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
      v185 = [v184 lastBaselineAnchor];
      v186 = [v183 constraintEqualToAnchor:v185 constant:v161];
      [v144 addObject:v186];
    }

    else
    {
      if (!v155)
      {
        if (v150)
        {
          v187 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
          v188 = [v187 firstBaselineAnchor];
          v189 = [v188 constraintEqualToAnchor:v172 constant:v164];
          [v144 addObject:v189];

          v181 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
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
          v181 = ;
        }

        goto LABEL_35;
      }

      if (CalSolariumEnabled())
      {
        v176 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
        v177 = [v176 firstBaselineAnchor];
        v178 = [v177 constraintEqualToAnchor:v172 constant:v164 + -7.0];
        [v144 addObject:v178];
        goto LABEL_29;
      }

      v182 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
      v183 = [v182 firstBaselineAnchor];
      v184 = [v183 constraintEqualToAnchor:v172 constant:v164];
      [v144 addObject:v184];
    }

    v181 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
    goto LABEL_35;
  }

LABEL_36:
  v196.receiver = self;
  v196.super_class = EKUIInviteesViewInviteesCell;
  [(EKUIInviteesViewInviteesCell *)&v196 updateConstraints];
}

- (void)updateWithParticipantForSorting:(id)a3 hideStatus:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = self;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Updating cell with participant for sorting: [%@]. Cell: [%@]", &v20, 0x16u);
  }

  [(EKUIInviteesViewInviteesCell *)self setShowSpinner:0];
  if (CalSolariumEnabled())
  {
    [(EKUIInviteesViewInviteesCell *)self setHideStatus:!v4];
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
  v14 = [v12 fontDescriptor];
  [v12 pointSize];
  v16 = [v13 fontWithDescriptor:v14 size:v15 + 2.0];

  v17 = [v6 participant];
  [v17 participantStatus];
  v18 = attributedStatusGlyph();

  v19 = CalImageFromGlyph(v18);
  [(EKUIInviteesViewInviteesCell *)self updateCommonElements:v6 statusImage:v19 conflict:0];
}

- (void)updateWithParticipantForSorting:(id)a3 availabilityType:(int64_t)a4 hideStatus:(BOOL)a5 showSpinner:(BOOL)a6 animated:(BOOL)a7
{
  v7 = a6;
  v8 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = EKAvailabilitySpanTypeAsString();
    v15 = CalBooleanAsString();
    v18 = 138413058;
    v19 = v11;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = self;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Updating cell with participant for sorting: [%@] availability type: [%@] showSpinner: [%@].  Cell: [%@]", &v18, 0x2Au);
  }

  [(EKUIInviteesViewInviteesCell *)self setHideStatus:CalSolariumEnabled() & !v8];
  [(EKUIInviteesViewInviteesCell *)self setShowSpinner:v7];
  v16 = [MEMORY[0x1E6966988] showTypeAsBusy:a4];
  v17 = ImageForAvailabilityType(a4);
  [(EKUIInviteesViewInviteesCell *)self updateCommonElements:v11 statusImage:v17 conflict:v16];
}

- (void)updateCommonElements:(id)a3 statusImage:(id)a4 conflict:(BOOL)a5
{
  v5 = a5;
  v63 = a4;
  v8 = a3;
  v9 = [v8 participant];
  if ([(EKUIInviteesViewInviteesCell *)self showSpinner])
  {
    v10 = [(EKUIInviteesViewInviteesCell *)self spinner];
    [(EKUIInviteesViewInviteesCell *)self setAccessoryView:v10];

    v11 = [(EKUIInviteesViewInviteesCell *)self spinner];
    v12 = [v11 isAnimating];

    if (v12)
    {
      goto LABEL_9;
    }

    v13 = [(EKUIInviteesViewInviteesCell *)self spinner];
    [v13 startAnimating];
    goto LABEL_8;
  }

  if ((CalSolariumEnabled() & 1) == 0)
  {
    v14 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
    [(EKUIInviteesViewInviteesCell *)self setAccessoryView:v14];
  }

  v15 = [(EKUIInviteesViewInviteesCell *)self spinner];
  v16 = [v15 isAnimating];

  if (v16)
  {
    v13 = [(EKUIInviteesViewInviteesCell *)self spinner];
    [v13 stopAnimating];
LABEL_8:
  }

LABEL_9:
  v17 = [(EKUIInviteesViewInviteesCell *)self hideStatus];
  v18 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
  [v18 setHidden:v17];

  if (CalSolariumEnabled())
  {
    v19 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
    [v19 setHidden:!v5];

    v20 = [(EKUIInviteesViewInviteesCell *)self conflictImageView];
    [v20 setImage:v63];

    v21 = [(EKUIInviteesViewInviteesCell *)self hideStatus];
    v22 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
    [v22 setHidden:v21];

    v23 = [(EKUIInviteesViewInviteesCell *)self hideStatus];
    v24 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusContainerView];
    [v24 setHidden:v23];
  }

  if (![(EKUIInviteesViewInviteesCell *)self hideStatus])
  {
    if (!CalSolariumEnabled() || !v5)
    {
      v25 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
      [v25 setImage:v63];
    }

    v26 = [(EKUIInviteesViewInviteesCell *)self _statusImageViewSymbolConfiguration];
    v27 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
    [v27 setPreferredSymbolConfiguration:v26];

    v28 = [MEMORY[0x1E69DC888] systemGrayColor];
    v29 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
    [v29 setTintColor:v28];

    v30 = [(EKUIInviteesViewInviteesCell *)self statusImageView];
    [v30 sizeToFit];

    v31 = [v9 rsvpStatusDisplayString];
    v32 = [(EKUIInviteesViewInviteesCell *)self rsvpStatusLabel];
    [v32 setText:v31];
  }

  v33 = [(EKUIInviteesViewInviteesCell *)self contactAvatarView];
  [v33 updateWithParticipant:v9];

  v34 = [v8 displayName];

  v35 = [(EKUIInviteesViewInviteesCell *)self nameLabel];
  [v35 setText:v34];

  v36 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
  v37 = [v36 text];

  v38 = [v9 commentLabelString];
  v39 = [(EKUIInviteesViewInviteesCell *)self commentLabel];
  [v39 setText:v38];

  v40 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
  v41 = [v40 text];

  if ([v9 participantRole] == 2)
  {
    v42 = EventKitUIBundle();
    v43 = [v42 localizedStringForKey:@"Optional" value:&stru_1F4EF6790 table:0];

    if (v5)
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
      v50 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      [v50 setHidden:0];
    }

    v51 = [MEMORY[0x1E69DC888] secondaryLabelColor];
LABEL_26:
    v54 = v51;
    v55 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
    [v55 setTextColor:v54];

    goto LABEL_28;
  }

  if (v5)
  {
    v52 = EventKitUIBundle();
    v43 = [v52 localizedStringForKey:@"Conflict" value:&stru_1F4EF6790 table:0];

    if (CalSolariumEnabled())
    {
      v53 = [(EKUIInviteesViewInviteesCell *)self optionalStatusContainerView];
      [v53 setHidden:0];
    }

    v51 = [MEMORY[0x1E69DC888] systemRedColor];
    goto LABEL_26;
  }

  v43 = &stru_1F4EF6790;
LABEL_28:
  v56 = [(EKUIInviteesViewInviteesCell *)self optionalInviteeLabel];
  [v56 setText:v43];

  if (v37)
  {
    v57 = [v37 length] == 0;
    if (v38)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v57 = 1;
    if (v38)
    {
LABEL_30:
      v58 = [v38 length] == 0;
      if (v41)
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
  if (!v41)
  {
    goto LABEL_35;
  }

LABEL_31:
  v59 = [v41 length] == 0;
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
    v62 = [(EKUIInviteesViewInviteesCell *)self removableConstraints];
    [v61 deactivateConstraints:v62];

    [(EKUIInviteesViewInviteesCell *)self setRemovableConstraints:0];
    [(EKUIInviteesViewInviteesCell *)self setNeedsUpdateConstraints];
  }
}

- (id)_statusImageViewSymbolConfiguration
{
  v3 = CalSolariumEnabled();
  v4 = [(EKUIInviteesViewInviteesCell *)self traitCollection];
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

  v7 = [EKUIConstrainedFontUtilities tableViewCellCappedSymbolImageScaleWithScale:v5 traitCollection:v4];

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