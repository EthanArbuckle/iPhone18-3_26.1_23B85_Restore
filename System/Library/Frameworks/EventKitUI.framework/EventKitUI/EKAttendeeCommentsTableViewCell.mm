@interface EKAttendeeCommentsTableViewCell
- (EKAttendeeCommentsTableViewCell)initWithParticipant:(id)a3;
- (void)_updateConstraints;
@end

@implementation EKAttendeeCommentsTableViewCell

- (EKAttendeeCommentsTableViewCell)initWithParticipant:(id)a3
{
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v46.receiver = self;
  v46.super_class = EKAttendeeCommentsTableViewCell;
  v6 = [(EKAttendeeCommentsTableViewCell *)&v46 initWithStyle:0 reuseIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_participant, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    constraints = v7->_constraints;
    v7->_constraints = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    textCenteringGuide = v7->_textCenteringGuide;
    v7->_textCenteringGuide = v10;

    v12 = [(EKAttendeeCommentsTableViewCell *)v7 contentView];
    [v12 addLayoutGuide:v7->_textCenteringGuide];

    objc_initWeak(&location, v7);
    v47[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __55__EKAttendeeCommentsTableViewCell_initWithParticipant___block_invoke;
    v43[3] = &unk_1E843EBE8;
    objc_copyWeak(&v44, &location);
    v14 = [(EKAttendeeCommentsTableViewCell *)v7 registerForTraitChanges:v13 withHandler:v43];

    v15 = [[EKUILabeledAvatarView alloc] initWithIdentity:v5 placement:0 options:0];
    [(EKUILabeledAvatarView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKUILabeledAvatarView *)v15 setLoadContactsAsynchronously:1];
    v16 = [(EKAttendeeCommentsTableViewCell *)v7 contentView];
    [v16 addSubview:v15];

    objc_storeStrong(&v7->_avatarView, v15);
    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v18 = [MEMORY[0x1E6993390] displayNameForIdentity:v5];
    [v17 setText:v18];

    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v17 setFont:v19];

    v20 = [MEMORY[0x1E69DC888] labelColor];
    [v17 setTextColor:v20];

    [v17 setNumberOfLines:0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [(EKAttendeeCommentsTableViewCell *)v7 contentView];
    [v21 addSubview:v17];

    objc_storeStrong(&v7->_titleView, v17);
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v23 = MEMORY[0x1E696AEC0];
    v24 = EventKitUIBundle();
    v25 = [v24 localizedStringForKey:@"“%@”" value:&stru_1F4EF6790 table:0];
    v26 = MEMORY[0x1E6993410];
    v27 = [v5 comment];
    v28 = [v26 stringWithAutoCommentRemoved:v27];
    v29 = [v23 localizedStringWithFormat:v25, v28];

    [v22 setText:v29];
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v22 setFont:v30];

    v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v22 setTextColor:v31];

    [v22 setNumberOfLines:0];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [(EKAttendeeCommentsTableViewCell *)v7 contentView];
    [v32 addSubview:v22];

    objc_storeStrong(&v7->_commentView, v22);
    v33 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [v33 setFont:v34];

    v35 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v33 setTextColor:v35];

    LODWORD(v36) = 1148846080;
    [v33 setContentCompressionResistancePriority:0 forAxis:v36];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [(EKAttendeeCommentsTableViewCell *)v7 contentView];
    [v37 addSubview:v33];

    objc_storeStrong(&v7->_timeView, v33);
    v38 = [v5 commentLastModifiedDate];

    if (v38)
    {
      v39 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v39 setDateStyle:0];
      [v39 setTimeStyle:1];
      v40 = [v5 commentLastModifiedDate];
      v41 = [v39 stringFromDate:v40];
      [v33 setText:v41];
    }

    else
    {
      [v33 setText:&stru_1F4EF6790];
    }

    [(EKAttendeeCommentsTableViewCell *)v7 _updateConstraints];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __55__EKAttendeeCommentsTableViewCell_initWithParticipant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConstraints];
}

- (void)_updateConstraints
{
  v124[21] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v3 = [(EKAttendeeCommentsTableViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  constraints = self->_constraints;
  v6 = [(UIView *)self->_avatarView widthAnchor];
  v7 = [v6 constraintEqualToConstant:37.0];
  v122 = v7;
  if (IsAccessibilityCategory)
  {
    v124[0] = v7;
    v121 = [(UIView *)self->_avatarView heightAnchor];
    v120 = [v121 constraintEqualToConstant:37.0];
    v124[1] = v120;
    v8 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    [(UIView *)self->_timeView leadingAnchor];
    v118 = v119 = v8;
    v117 = [v8 constraintEqualToAnchor:?];
    v124[2] = v117;
    v9 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    [(UIView *)self->_titleView leadingAnchor];
    v115 = v116 = v9;
    v114 = [v9 constraintEqualToAnchor:?];
    v124[3] = v114;
    v10 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    v112 = [(UIView *)self->_commentView leadingAnchor];
    v113 = v10;
    v111 = [v10 constraintEqualToAnchor:?];
    v124[4] = v111;
    v11 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    v109 = [(UIView *)self->_timeView trailingAnchor];
    v110 = v11;
    v108 = [v11 constraintEqualToAnchor:?];
    v124[5] = v108;
    v12 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    v106 = [(UIView *)self->_titleView trailingAnchor];
    v107 = v12;
    v105 = [v12 constraintEqualToAnchor:?];
    v124[6] = v105;
    v13 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    v103 = [(UIView *)self->_commentView trailingAnchor];
    v104 = v13;
    v102 = [v13 constraintEqualToAnchor:?];
    v124[7] = v102;
    v14 = [(UILayoutGuide *)self->_textCenteringGuide topAnchor];
    v100 = [(UIView *)self->_timeView topAnchor];
    v101 = v14;
    v99 = [v14 constraintEqualToAnchor:?];
    v124[8] = v99;
    v15 = [(UILayoutGuide *)self->_textCenteringGuide bottomAnchor];
    v97 = [(UIView *)self->_commentView bottomAnchor];
    v98 = v15;
    v96 = [v15 constraintEqualToAnchor:?];
    v124[9] = v96;
    v16 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    v93 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v92 = [v93 layoutMarginsGuide];
    [v92 trailingAnchor];
    v91 = v95 = v16;
    v90 = [v16 constraintEqualToAnchor:?];
    v124[10] = v90;
    v17 = [(UILayoutGuide *)self->_textCenteringGuide centerYAnchor];
    v88 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v87 = [v88 layoutMarginsGuide];
    [v87 centerYAnchor];
    v86 = v89 = v17;
    v85 = [v17 constraintEqualToAnchor:?];
    v124[11] = v85;
    v18 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    v83 = [(UIView *)self->_avatarView trailingAnchor];
    v84 = v18;
    v82 = [v18 constraintEqualToAnchor:12.0 constant:?];
    v124[12] = v82;
    v19 = [(UILayoutGuide *)self->_textCenteringGuide topAnchor];
    v80 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v79 = [v80 layoutMarginsGuide];
    [v79 topAnchor];
    v78 = v81 = v19;
    v77 = [v19 constraintGreaterThanOrEqualToAnchor:?];
    v124[13] = v77;
    v20 = [(UILayoutGuide *)self->_textCenteringGuide bottomAnchor];
    v75 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v74 = [v75 layoutMarginsGuide];
    [v74 bottomAnchor];
    v73 = v76 = v20;
    v72 = [v20 constraintLessThanOrEqualToAnchor:?];
    v124[14] = v72;
    v21 = [(UIView *)self->_avatarView centerYAnchor];
    v70 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v69 = [v70 layoutMarginsGuide];
    [v69 centerYAnchor];
    v68 = v71 = v21;
    v67 = [v21 constraintEqualToAnchor:?];
    v124[15] = v67;
    v22 = [(UIView *)self->_avatarView leadingAnchor];
    v65 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v64 = [v65 layoutMarginsGuide];
    [v64 leadingAnchor];
    v63 = v66 = v22;
    v62 = [v22 constraintEqualToAnchor:?];
    v124[16] = v62;
    v23 = [(UIView *)self->_avatarView topAnchor];
    v60 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v59 = [v60 layoutMarginsGuide];
    [v59 topAnchor];
    v58 = v61 = v23;
    v57 = [v23 constraintGreaterThanOrEqualToAnchor:?];
    v124[17] = v57;
    v24 = [(UIView *)self->_avatarView bottomAnchor];
    v56 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v55 = [v56 layoutMarginsGuide];
    v54 = [v55 bottomAnchor];
    v53 = [v24 constraintLessThanOrEqualToAnchor:?];
    v124[18] = v53;
    v25 = [(UIView *)self->_commentView topAnchor];
    v26 = [(UIView *)self->_titleView bottomAnchor];
    v52 = [v25 constraintEqualToAnchor:v26 constant:2.0];
    v124[19] = v52;
    v27 = [(UIView *)self->_titleView topAnchor];
    v28 = [(UIView *)self->_timeView bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:2.0];
    v124[20] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:21];
    [(NSMutableArray *)constraints addObjectsFromArray:v30];
  }

  else
  {
    v123[0] = v7;
    v121 = [(UIView *)self->_avatarView heightAnchor];
    v120 = [v121 constraintEqualToConstant:37.0];
    v123[1] = v120;
    v31 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    [(UIView *)self->_titleView leadingAnchor];
    v118 = v119 = v31;
    v117 = [v31 constraintEqualToAnchor:?];
    v123[2] = v117;
    v32 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    [(UIView *)self->_commentView leadingAnchor];
    v115 = v116 = v32;
    v114 = [v32 constraintEqualToAnchor:?];
    v123[3] = v114;
    v33 = [(UILayoutGuide *)self->_textCenteringGuide topAnchor];
    v112 = [(UIView *)self->_titleView topAnchor];
    v113 = v33;
    v111 = [v33 constraintEqualToAnchor:?];
    v123[4] = v111;
    v34 = [(UILayoutGuide *)self->_textCenteringGuide bottomAnchor];
    v109 = [(UIView *)self->_commentView bottomAnchor];
    v110 = v34;
    v108 = [v34 constraintEqualToAnchor:?];
    v123[5] = v108;
    v35 = [(UILayoutGuide *)self->_textCenteringGuide trailingAnchor];
    v106 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v105 = [v106 layoutMarginsGuide];
    [v105 trailingAnchor];
    v104 = v107 = v35;
    v103 = [v35 constraintEqualToAnchor:?];
    v123[6] = v103;
    v36 = [(UILayoutGuide *)self->_textCenteringGuide centerYAnchor];
    v101 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v100 = [v101 layoutMarginsGuide];
    [v100 centerYAnchor];
    v99 = v102 = v36;
    v98 = [v36 constraintEqualToAnchor:?];
    v123[7] = v98;
    v37 = [(UILayoutGuide *)self->_textCenteringGuide leadingAnchor];
    v96 = [(UIView *)self->_avatarView trailingAnchor];
    v97 = v37;
    v95 = [v37 constraintEqualToAnchor:12.0 constant:?];
    v123[8] = v95;
    v38 = [(UIView *)self->_avatarView centerYAnchor];
    v92 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v91 = [v92 layoutMarginsGuide];
    [v91 centerYAnchor];
    v90 = v93 = v38;
    v89 = [v38 constraintEqualToAnchor:?];
    v123[9] = v89;
    v39 = [(UIView *)self->_avatarView leadingAnchor];
    v87 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v86 = [v87 layoutMarginsGuide];
    [v86 leadingAnchor];
    v85 = v88 = v39;
    v84 = [v39 constraintEqualToAnchor:?];
    v123[10] = v84;
    v40 = [(UIView *)self->_avatarView topAnchor];
    v82 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v81 = [v82 layoutMarginsGuide];
    [v81 topAnchor];
    v80 = v83 = v40;
    v79 = [v40 constraintGreaterThanOrEqualToAnchor:?];
    v123[11] = v79;
    v41 = [(UIView *)self->_avatarView bottomAnchor];
    v77 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v76 = [v77 layoutMarginsGuide];
    [v76 bottomAnchor];
    v75 = v78 = v41;
    v74 = [v41 constraintLessThanOrEqualToAnchor:?];
    v123[12] = v74;
    v42 = [(UIView *)self->_commentView trailingAnchor];
    v72 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v71 = [v72 layoutMarginsGuide];
    [v71 trailingAnchor];
    v70 = v73 = v42;
    v69 = [v42 constraintEqualToAnchor:?];
    v123[13] = v69;
    v43 = [(UIView *)self->_timeView trailingAnchor];
    v67 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v66 = [v67 layoutMarginsGuide];
    [v66 trailingAnchor];
    v65 = v68 = v43;
    v64 = [v43 constraintEqualToAnchor:?];
    v123[14] = v64;
    v44 = [(UIView *)self->_timeView firstBaselineAnchor];
    v62 = [(UIView *)self->_titleView firstBaselineAnchor];
    v63 = v44;
    v61 = [v44 constraintEqualToAnchor:?];
    v123[15] = v61;
    v45 = [(UIView *)self->_titleView trailingAnchor];
    v59 = [(UIView *)self->_timeView leadingAnchor];
    v60 = v45;
    v58 = [v45 constraintLessThanOrEqualToAnchor:-2.0 constant:?];
    v123[16] = v58;
    v46 = [(UIView *)self->_titleView topAnchor];
    v51 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v56 = [v51 layoutMarginsGuide];
    [v56 topAnchor];
    v55 = v57 = v46;
    v54 = [v46 constraintGreaterThanOrEqualToAnchor:?];
    v123[17] = v54;
    v47 = [(UIView *)self->_commentView topAnchor];
    v25 = [(UIView *)self->_titleView bottomAnchor];
    v53 = v47;
    v48 = [v47 constraintEqualToAnchor:v25 constant:2.0];
    v123[18] = v48;
    v49 = [(UIView *)self->_commentView bottomAnchor];
    v27 = [(EKAttendeeCommentsTableViewCell *)self contentView];
    v28 = [v27 layoutMarginsGuide];
    v29 = [v28 bottomAnchor];
    v52 = v49;
    v30 = [v49 constraintLessThanOrEqualToAnchor:v29];
    v123[19] = v30;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:20];
    [(NSMutableArray *)constraints addObjectsFromArray:v50];

    v26 = v48;
    v24 = v51;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

@end