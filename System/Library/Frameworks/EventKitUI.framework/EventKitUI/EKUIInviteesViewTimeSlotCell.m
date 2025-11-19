@interface EKUIInviteesViewTimeSlotCell
+ (BOOL)_layoutManagerReportsExcessLines:(id)a3;
+ (id)_andMoreLeftSpacing;
+ (id)_generateAndMoreStringWithCount:(unint64_t)a3 attributes:(id)a4;
+ (id)_generateParticipantTextView;
+ (id)_interParticipantSpacing;
+ (id)_replaceSpacesWithNonBreakingSpaces:(id)a3;
+ (void)_setRequiredHuggingAndCompression:(id)a3;
- (BOOL)_everyoneCanAttend;
- (BOOL)_shouldDisplayTimeZone;
- (BOOL)_textWillFit:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGRect)andMoreBoundingRect;
- (EKUIInviteesViewTimeSlotCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_preferredMaxLayoutWidth;
- (id)_busyImageAttributedStringForColor:(id)a3;
- (id)_generateStringForAllParticipants:(id)a3;
- (id)_generateStringForSomeParticipantsAndStampMoreBoundingRect:(id)a3;
- (id)_textForParticipant:(id)a3 color:(id)a4;
- (void)_andMoreTapped:(id)a3;
- (void)_resetFonts;
- (void)_resetParticipantsTextIfNeeded;
- (void)_resetPreferredMaxLayoutWidths;
- (void)_resetTimeTextIfNeeded;
- (void)_showPreviewButtonTapped:(id)a3;
- (void)dealloc;
- (void)setAndMoreBoundingRect:(CGRect)a3;
- (void)setBusyParticipants:(id)a3;
- (void)setChecked:(BOOL)a3;
- (void)setEndDate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setProposedBy:(id)a3;
- (void)setShowAllParticipants:(BOOL)a3;
- (void)setStartDate:(id)a3;
- (void)updateConstraints;
- (void)updateWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 busyParticipants:(id)a6 showAllParticipants:(BOOL)a7 checked:(BOOL)a8;
@end

@implementation EKUIInviteesViewTimeSlotCell

- (EKUIInviteesViewTimeSlotCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v31.receiver = self;
  v31.super_class = EKUIInviteesViewTimeSlotCell;
  v4 = [(EKUIInviteesViewTimeSlotCell *)&v31 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(EKUIInviteesViewTimeSlotCell *)v4 setAndMoreBoundingRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [objc_opt_class() _leftBuffer];
    [(EKUIInviteesViewTimeSlotCell *)v5 setSeparatorInset:0.0, v6, 0.0, 0.0];
    v7 = [(EKUIInviteesViewTimeSlotCell *)v5 contentView];
    v8 = [(EKUIInviteesViewTimeSlotCell *)v5 traitCollection];
    v9 = TableViewCheckmarkImage(v8);

    v30 = v9;
    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [objc_opt_class() _setRequiredHuggingAndCompression:v10];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setContentMode:4];
    [v10 setHidden:1];
    [v7 addSubview:v10];
    [(EKUIInviteesViewTimeSlotCell *)v5 setCheckmarkImageView:v10];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v11];
    v29 = v11;
    [(EKUIInviteesViewTimeSlotCell *)v5 setTopTimeLabel:v11];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v12];
    v28 = v12;
    [(EKUIInviteesViewTimeSlotCell *)v5 setBottomTimeLabel:v12];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v13];
    [(EKUIInviteesViewTimeSlotCell *)v5 setTimeZoneTimeLabel:v13];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setNumberOfLines:4];
    [v7 addSubview:v14];
    [(EKUIInviteesViewTimeSlotCell *)v5 setProposedByLabel:v14];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = v15;
    [(EKUIInviteesViewTimeSlotCell *)v5 setLabelForTextSizeTesting:v15];
    v16 = [objc_opt_class() _generateParticipantTextView];
    [v7 addSubview:v16];
    [(EKUIInviteesViewTimeSlotCell *)v5 setParticipantsTextView:v16];
    v26 = [objc_opt_class() _generateParticipantTextView];
    [(EKUIInviteesViewTimeSlotCell *)v5 setTextViewForTextSizeTesting:?];
    v17 = [MEMORY[0x1E69DC738] buttonWithType:3];
    if (CalSolariumEnabled())
    {
      v18 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [v17 setConfiguration:v18];
    }

    [objc_opt_class() _setRequiredHuggingAndCompression:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addTarget:v5 action:sel__showPreviewButtonTapped_ forControlEvents:64];
    v19 = [(EKUIInviteesViewTimeSlotCell *)v5 contentView];
    [v19 addSubview:v17];

    [(EKUIInviteesViewTimeSlotCell *)v5 setShowPreviewButton:v17];
    v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel__andMoreTapped_];
    [v20 setDelegate:v5];
    v21 = [(EKUIInviteesViewTimeSlotCell *)v5 contentView];
    [v21 addGestureRecognizer:v20];

    [(EKUIInviteesViewTimeSlotCell *)v5 setTappedMoreRecognizer:v20];
    v22 = +[EKUIDebugPreferences shared];
    v23 = [v22 showInviteesAndMoreRegion];

    if (v23)
    {
      v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [v16 addSubview:v24];
      [(EKUIInviteesViewTimeSlotCell *)v5 setAndMoreDebugOverlay:v24];
    }

    [(EKUIInviteesViewTimeSlotCell *)v5 _resetFonts];
    [(EKUIInviteesViewTimeSlotCell *)v5 _resetPreferredMaxLayoutWidths];
    [(EKUIInviteesViewTimeSlotCell *)v5 setUpdateFontBasedConstraints:1];
    [(EKUIInviteesViewTimeSlotCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(EKUIInviteesViewTimeSlotCell *)self tappedMoreRecognizer];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = EKUIInviteesViewTimeSlotCell;
  [(EKUIInviteesViewTimeSlotCell *)&v4 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(EKUIInviteesViewTimeSlotCell *)self frame];
  v9 = v8;
  v10.receiver = self;
  v10.super_class = EKUIInviteesViewTimeSlotCell;
  [(EKUIInviteesViewTimeSlotCell *)&v10 setFrame:x, y, width, height];
  if (vabdd_f64(v9, width) >= 2.22044605e-16)
  {
    [(EKUIInviteesViewTimeSlotCell *)self _resetPreferredMaxLayoutWidths];
  }
}

- (void)updateConstraints
{
  v3 = [(EKUIInviteesViewTimeSlotCell *)self persistentConstraints];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(EKUIInviteesViewTimeSlotCell *)self checkmarkImageView];
    v7 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v8 = [v5 constraintWithItem:v6 attribute:9 relatedBy:0 toItem:v7 attribute:17 multiplier:1.0 constant:20.0];
    [v4 addObject:v8];

    v9 = MEMORY[0x1E696ACD8];
    v10 = [(EKUIInviteesViewTimeSlotCell *)self checkmarkImageView];
    v11 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v12 = [v9 constraintWithItem:v10 attribute:10 relatedBy:0 toItem:v11 attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v12];

    v13 = MEMORY[0x1E696ACD8];
    v14 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v15 = [(EKUIInviteesViewTimeSlotCell *)self checkmarkImageView];
    v16 = [v13 constraintWithItem:v14 attribute:5 relatedBy:0 toItem:v15 attribute:9 multiplier:1.0 constant:30.0];
    [v4 addObject:v16];

    v17 = MEMORY[0x1E696ACD8];
    v18 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v19 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v21 = [v17 constraintWithItem:v18 attribute:6 relatedBy:0 toItem:v19 attribute:6 multiplier:1.0 constant:-v20];
    [v4 addObject:v21];

    v22 = MEMORY[0x1E696ACD8];
    v23 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    v24 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v25 = [v22 constraintWithItem:v23 attribute:5 relatedBy:0 toItem:v24 attribute:5 multiplier:1.0 constant:0.0];
    [v4 addObject:v25];

    v26 = MEMORY[0x1E696ACD8];
    v27 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    v28 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v30 = [v26 constraintWithItem:v27 attribute:6 relatedBy:0 toItem:v28 attribute:6 multiplier:1.0 constant:-v29];
    [v4 addObject:v30];

    v31 = MEMORY[0x1E696ACD8];
    v32 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    v33 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v34 = [v31 constraintWithItem:v32 attribute:5 relatedBy:0 toItem:v33 attribute:5 multiplier:1.0 constant:0.0];
    [v4 addObject:v34];

    v35 = MEMORY[0x1E696ACD8];
    v36 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    v37 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v39 = [v35 constraintWithItem:v36 attribute:6 relatedBy:0 toItem:v37 attribute:6 multiplier:1.0 constant:-v38];
    [v4 addObject:v39];

    v40 = MEMORY[0x1E696ACD8];
    v41 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v42 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v43 = [v40 constraintWithItem:v41 attribute:5 relatedBy:0 toItem:v42 attribute:5 multiplier:1.0 constant:0.0];
    [v4 addObject:v43];

    v44 = MEMORY[0x1E696ACD8];
    v45 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v46 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v48 = [v44 constraintWithItem:v45 attribute:6 relatedBy:0 toItem:v46 attribute:6 multiplier:1.0 constant:-v47];
    [v4 addObject:v48];

    v49 = MEMORY[0x1E696ACD8];
    v50 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    v51 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v52 = [v49 constraintWithItem:v50 attribute:5 relatedBy:0 toItem:v51 attribute:5 multiplier:1.0 constant:0.0];
    [v4 addObject:v52];

    v53 = MEMORY[0x1E696ACD8];
    v54 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    v55 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v57 = [v53 constraintWithItem:v54 attribute:6 relatedBy:0 toItem:v55 attribute:6 multiplier:1.0 constant:-v56];
    [v4 addObject:v57];

    v58 = MEMORY[0x1E696ACD8];
    v59 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    v60 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v61 = [v58 constraintWithItem:v59 attribute:4 relatedBy:-1 toItem:v60 attribute:4 multiplier:1.0 constant:0.0];
    [v4 addObject:v61];

    v62 = MEMORY[0x1E696ACD8];
    v63 = [(EKUIInviteesViewTimeSlotCell *)self showPreviewButton];
    v64 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v65 = [v62 constraintWithItem:v63 attribute:6 relatedBy:0 toItem:v64 attribute:6 multiplier:1.0 constant:-16.0];
    [v4 addObject:v65];

    v66 = MEMORY[0x1E696ACD8];
    v67 = [(EKUIInviteesViewTimeSlotCell *)self showPreviewButton];
    v68 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v69 = [v66 constraintWithItem:v67 attribute:10 relatedBy:0 toItem:v68 attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v69];

    v70 = MEMORY[0x1E696ACD8];
    v71 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v72 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v73 = [v70 constraintWithItem:v71 attribute:12 relatedBy:0 toItem:v72 attribute:3 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setTopTimeLabelToTopContentViewConstraint:v73];

    v74 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabelToTopContentViewConstraint];
    [v4 addObject:v74];

    v75 = MEMORY[0x1E696ACD8];
    v76 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    v77 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v78 = [v75 constraintWithItem:v76 attribute:12 relatedBy:0 toItem:v77 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setBottomTimeLabelToTopTimeLabelConstraint:v78];

    v79 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabelToTopTimeLabelConstraint];
    [v4 addObject:v79];

    v80 = MEMORY[0x1E696ACD8];
    v81 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    v82 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    v83 = [v80 constraintWithItem:v81 attribute:12 relatedBy:0 toItem:v82 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setTimeZoneTimeLabelToBottomTimeLabelConstraint:v83];

    v84 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabelToBottomTimeLabelConstraint];
    [v4 addObject:v84];

    v85 = MEMORY[0x1E696ACD8];
    v86 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v87 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    v88 = [v85 constraintWithItem:v86 attribute:12 relatedBy:0 toItem:v87 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setProposedTimeLabelToBottomTimeLabelConstraint:v88];

    v89 = [(EKUIInviteesViewTimeSlotCell *)self proposedTimeLabelToBottomTimeLabelConstraint];
    [v4 addObject:v89];

    v90 = MEMORY[0x1E696ACD8];
    v91 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    v92 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v93 = [v90 constraintWithItem:v91 attribute:12 relatedBy:0 toItem:v92 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setParticipantsViewToBottomTimeLabelConstraint:v93];

    v94 = [(EKUIInviteesViewTimeSlotCell *)self participantsViewToBottomTimeLabelConstraint];
    [v4 addObject:v94];

    v95 = MEMORY[0x1E696ACD8];
    v96 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v97 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    v98 = [v95 constraintWithItem:v96 attribute:4 relatedBy:1 toItem:v97 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setParticipantsViewToContentViewConstraint:v98];

    v99 = [(EKUIInviteesViewTimeSlotCell *)self participantsViewToContentViewConstraint];
    [v4 addObject:v99];

    v100 = MEMORY[0x1E696ACD8];
    v101 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v102 = [v100 constraintWithItem:v101 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setTopTimeLabelHeightConstraint:v102];

    v103 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabelHeightConstraint];
    [v4 addObject:v103];

    v104 = MEMORY[0x1E696ACD8];
    v105 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    v106 = [v104 constraintWithItem:v105 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setBottomTimeLabelHeightConstraint:v106];

    v107 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabelHeightConstraint];
    [v4 addObject:v107];

    v108 = MEMORY[0x1E696ACD8];
    v109 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    v110 = [v108 constraintWithItem:v109 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setTimeZoneTimeLabelHeightConstraint:v110];

    v111 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabelHeightConstraint];
    [v4 addObject:v111];

    v112 = MEMORY[0x1E696ACD8];
    v113 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v114 = [v112 constraintWithItem:v113 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setProposedByMinHeightConstraint:v114];

    v115 = MEMORY[0x1E696ACD8];
    v116 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v117 = [v115 constraintWithItem:v116 attribute:8 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setProposedByMaxHeightConstraint:v117];

    v118 = [(EKUIInviteesViewTimeSlotCell *)self proposedByMinHeightConstraint];
    [v4 addObject:v118];

    v119 = [(EKUIInviteesViewTimeSlotCell *)self proposedByMaxHeightConstraint];
    [v4 addObject:v119];

    v120 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [v120 addConstraints:v4];

    [(EKUIInviteesViewTimeSlotCell *)self setPersistentConstraints:v4];
  }

  v121 = [objc_opt_class() _proposedByFont];
  v122 = [objc_opt_class() _timeLabelFont];
  v123 = [objc_opt_class() _participantsTextViewFont];
  if ([(EKUIInviteesViewTimeSlotCell *)self updateFontBasedConstraints])
  {
    [(EKUIInviteesViewTimeSlotCell *)self setUpdateFontBasedConstraints:0];
    [v122 _scaledValueForValue:24.0];
    v125 = v124;
    v126 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabelToTopContentViewConstraint];
    [v126 setConstant:v125];

    [v122 _scaledValueForValue:22.0];
    v128 = v127;
    v129 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabelToTopTimeLabelConstraint];
    [v129 setConstant:v128];

    [v122 _scaledValueForValue:22.0];
    v131 = v130;
    v132 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabelToBottomTimeLabelConstraint];
    [v132 setConstant:v131];

    [v121 _scaledValueForValue:20.0];
    v134 = v133;
    v135 = [(EKUIInviteesViewTimeSlotCell *)self proposedTimeLabelToBottomTimeLabelConstraint];
    [v135 setConstant:v134];

    [v123 _scaledValueForValue:20.0];
    v137 = v136;
    v138 = [(EKUIInviteesViewTimeSlotCell *)self participantsViewToBottomTimeLabelConstraint];
    [v138 setConstant:v137];

    [v122 _scaledValueForValue:12.0];
    v140 = v139;
    v141 = [(EKUIInviteesViewTimeSlotCell *)self participantsViewToContentViewConstraint];
    [v141 setConstant:v140];

    [v122 lineHeight];
    v143 = v142;
    v144 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabelHeightConstraint];
    [v144 setConstant:v143];

    [v122 lineHeight];
    v146 = v145;
    v147 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabelHeightConstraint];
    [v147 setConstant:v146];
  }

  v148 = 0.0;
  if ([(EKUIInviteesViewTimeSlotCell *)self _shouldDisplayTimeZone])
  {
    [v122 lineHeight];
    v148 = v149;
  }

  v150 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabelHeightConstraint];
  [v150 setConstant:v148];

  v151 = [(EKUIInviteesViewTimeSlotCell *)self proposedBy];
  v152 = [v151 count];

  if (v152)
  {
    [v121 lineHeight];
    v154 = v153;
    v155 = [(EKUIInviteesViewTimeSlotCell *)self proposedByMinHeightConstraint];
    [v155 setConstant:v154];

    [v121 lineHeight];
    v157 = v156 * 4.0;
  }

  else
  {
    v158 = [(EKUIInviteesViewTimeSlotCell *)self proposedByMinHeightConstraint];
    v157 = 0.0;
    [v158 setConstant:0.0];
  }

  v159 = [(EKUIInviteesViewTimeSlotCell *)self proposedByMaxHeightConstraint];
  [v159 setConstant:v157];

  v160.receiver = self;
  v160.super_class = EKUIInviteesViewTimeSlotCell;
  [(EKUIInviteesViewTimeSlotCell *)&v160 updateConstraints];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  [(EKUIInviteesViewTimeSlotCell *)self andMoreBoundingRect];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (CGRectIsNull(v18))
  {
    v10 = 0;
  }

  else
  {
    v11 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    [v5 locationInView:v11];
    v13 = v12;
    v15 = v14;

    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v17.x = v13;
    v17.y = v15;
    v10 = CGRectContainsPoint(v19, v17);
  }

  return v10;
}

- (void)updateWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 busyParticipants:(id)a6 showAllParticipants:(BOOL)a7 checked:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  [(EKUIInviteesViewTimeSlotCell *)self setStartDate:a3];
  [(EKUIInviteesViewTimeSlotCell *)self setEndDate:v16];

  [(EKUIInviteesViewTimeSlotCell *)self setTimeZone:v15];
  [(EKUIInviteesViewTimeSlotCell *)self setBusyParticipants:v14];

  [(EKUIInviteesViewTimeSlotCell *)self setShowAllParticipants:v9];
  [(EKUIInviteesViewTimeSlotCell *)self setChecked:v8];
  [(EKUIInviteesViewTimeSlotCell *)self _resetTimeTextIfNeeded];

  [(EKUIInviteesViewTimeSlotCell *)self _resetParticipantsTextIfNeeded];
}

- (void)setProposedBy:(id)a3
{
  v25 = a3;
  objc_storeStrong(&self->_proposedBy, a3);
  if ([v25 count] == 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Proposed by %@" value:&stru_1F4EF6790 table:0];
    v8 = [v25 objectAtIndexedSubscript:0];
    v9 = [v5 localizedStringWithFormat:v7, v8];
    v10 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    [v10 setText:v9];

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  if ([v25 count] == 2)
  {
    v11 = MEMORY[0x1E696AEC0];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Proposed by %@ and %@" value:&stru_1F4EF6790 table:0];
    v8 = [v25 objectAtIndexedSubscript:0];
    v12 = [v25 objectAtIndexedSubscript:1];
    v13 = [v11 localizedStringWithFormat:v7, v8, v12];
    v14 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    [v14 setText:v13];

    goto LABEL_5;
  }

  if ([v25 count] >= 3)
  {
    v15 = EventKitUIBundle();
    v16 = [v15 localizedStringForKey:@"Proposed by " value:&stru_1F4EF6790 table:0];

    if ([v25 count] == 1)
    {
      v17 = v16;
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = EventKitUIBundle();
        v21 = [v20 localizedStringForKey:@"%@ value:" table:{&stru_1F4EF6790, 0}];
        v22 = [v25 objectAtIndexedSubscript:v18];
        v23 = [v19 localizedStringWithFormat:v21, v22];
        v17 = [v16 stringByAppendingString:v23];

        ++v18;
        v16 = v17;
      }

      while (v18 < [v25 count] - 1);
    }

    v24 = [v25 objectAtIndexedSubscript:{objc_msgSend(v25, "count") - 1}];
    v6 = [v17 stringByAppendingString:v24];

    v7 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    [v7 setText:v6];
    goto LABEL_6;
  }

LABEL_7:
  [(EKUIInviteesViewTimeSlotCell *)self updateConstraints];
}

- (void)setStartDate:(id)a3
{
  v5 = a3;
  startDate = self->_startDate;
  if (startDate != v5)
  {
    v8 = v5;
    if (!startDate || (v7 = [(NSDate *)startDate isEqualToDate:v5], v5 = v8, !v7))
    {
      objc_storeStrong(&self->_startDate, a3);
      [(EKUIInviteesViewTimeSlotCell *)self setUpdateTimeText:1];
      v5 = v8;
    }
  }
}

- (void)setEndDate:(id)a3
{
  v5 = a3;
  endDate = self->_endDate;
  if (endDate != v5)
  {
    v8 = v5;
    if (!endDate || (v7 = [(NSDate *)endDate isEqualToDate:v5], v5 = v8, !v7))
    {
      objc_storeStrong(&self->_endDate, a3);
      [(EKUIInviteesViewTimeSlotCell *)self setUpdateTimeText:1];
      v5 = v8;
    }
  }
}

- (void)setBusyParticipants:(id)a3
{
  objc_storeStrong(&self->_busyParticipants, a3);

  [(EKUIInviteesViewTimeSlotCell *)self setUpdateParticipantsText:1];
}

- (void)setShowAllParticipants:(BOOL)a3
{
  if (self->_showAllParticipants != a3)
  {
    self->_showAllParticipants = a3;
    [(EKUIInviteesViewTimeSlotCell *)self setUpdateParticipantsText:1];
  }
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    v4 = a3;
    self->_checked = a3;
    v5 = [(EKUIInviteesViewTimeSlotCell *)self checkmarkImageView];
    [v5 setHidden:!v4];
  }
}

- (void)setAndMoreBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_andMoreBoundingRect = &self->_andMoreBoundingRect;
  if (!CGRectEqualToRect(self->_andMoreBoundingRect, a3))
  {
    p_andMoreBoundingRect->origin.x = x;
    p_andMoreBoundingRect->origin.y = y;
    p_andMoreBoundingRect->size.width = width;
    p_andMoreBoundingRect->size.height = height;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (CGRectIsNull(v20))
    {
      v9 = *MEMORY[0x1E695F058];
      v10 = *(MEMORY[0x1E695F058] + 8);
      v11 = *(MEMORY[0x1E695F058] + 16);
      v12 = *(MEMORY[0x1E695F058] + 24);
      v13 = [(EKUIInviteesViewTimeSlotCell *)self andMoreDebugOverlay];
      v18 = v13;
      v14 = v9;
      v15 = v10;
      v16 = v11;
      v17 = v12;
    }

    else
    {
      v13 = [(EKUIInviteesViewTimeSlotCell *)self andMoreDebugOverlay];
      v18 = v13;
      v14 = x;
      v15 = y;
      v16 = width;
      v17 = height;
    }

    [v13 setFrame:{v14, v15, v16, v17}];
  }
}

- (void)_showPreviewButtonTapped:(id)a3
{
  v4 = [(EKUIInviteesViewTimeSlotCell *)self showPreviewOfEventAtTime];

  if (v4)
  {
    v7 = [(EKUIInviteesViewTimeSlotCell *)self showPreviewOfEventAtTime];
    v5 = [(EKUIInviteesViewTimeSlotCell *)self startDate];
    v6 = [(EKUIInviteesViewTimeSlotCell *)self endDate];
    v7[2](v7, v5, v6);
  }
}

- (void)_andMoreTapped:(id)a3
{
  [(EKUIInviteesViewTimeSlotCell *)self setShowAllParticipants:1];
  v4 = [(EKUIInviteesViewTimeSlotCell *)self _tableView];
  [v4 beginUpdates];

  [(EKUIInviteesViewTimeSlotCell *)self _resetParticipantsTextIfNeeded];
  v5 = [(EKUIInviteesViewTimeSlotCell *)self _tableView];
  [v5 endUpdates];

  v6 = [(EKUIInviteesViewTimeSlotCell *)self showAllConflictedParticipantsTapped];

  if (v6)
  {
    v7 = [(EKUIInviteesViewTimeSlotCell *)self showAllConflictedParticipantsTapped];
    v7[2]();
  }
}

- (double)_preferredMaxLayoutWidth
{
  [objc_opt_class() _leftBuffer];
  v4 = v3;
  [objc_opt_class() _rightBuffer];
  v6 = v4 + v5;
  [(EKUIInviteesViewTimeSlotCell *)self frame];

  CalRoundToScreenScale(v7 - v6);
  return result;
}

- (void)_resetFonts
{
  v12 = [objc_opt_class() _timeLabelFont];
  v3 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
  [v3 setFont:v12];

  v4 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
  [v4 setFont:v12];

  v5 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
  [v5 setFont:v12];

  v6 = [objc_opt_class() _proposedByFont];
  v7 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
  [v7 setFont:v6];

  v8 = [(EKUIInviteesViewTimeSlotCell *)self labelForTextSizeTesting];
  [v8 setFont:v12];

  v9 = [objc_opt_class() _participantsTextViewFont];
  v10 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
  [v10 setFont:v9];

  v11 = [(EKUIInviteesViewTimeSlotCell *)self textViewForTextSizeTesting];
  [v11 setFont:v9];

  [(EKUIInviteesViewTimeSlotCell *)self setUpdateTimeText:1];
  [(EKUIInviteesViewTimeSlotCell *)self _resetTimeTextIfNeeded];
  [(EKUIInviteesViewTimeSlotCell *)self setUpdateParticipantsText:1];
  [(EKUIInviteesViewTimeSlotCell *)self _resetParticipantsTextIfNeeded];
  [(EKUIInviteesViewTimeSlotCell *)self setUpdateFontBasedConstraints:1];
  [(EKUIInviteesViewTimeSlotCell *)self setNeedsUpdateConstraints];
}

- (void)_resetPreferredMaxLayoutWidths
{
  [(EKUIInviteesViewTimeSlotCell *)self _preferredMaxLayoutWidth];
  v4 = v3;
  v5 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
  [v5 setPreferredMaxLayoutWidth:v4];

  v6 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
  [v6 setPreferredMaxLayoutWidth:v4];

  v7 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
  [v7 setPreferredMaxLayoutWidth:v4];

  v8 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
  [v8 setPreferredMaxLayoutWidth:v4];

  v9 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
  [v9 _setPreferredMaxLayoutWidth:v4];

  [(EKUIInviteesViewTimeSlotCell *)self setUpdateTimeText:1];
  [(EKUIInviteesViewTimeSlotCell *)self _resetTimeTextIfNeeded];
  [(EKUIInviteesViewTimeSlotCell *)self setUpdateParticipantsText:1];
  [(EKUIInviteesViewTimeSlotCell *)self _resetParticipantsTextIfNeeded];

  [(EKUIInviteesViewTimeSlotCell *)self setNeedsUpdateConstraints];
}

- (BOOL)_shouldDisplayTimeZone
{
  v3 = [(EKUIInviteesViewTimeSlotCell *)self timeZone];
  if (v3)
  {
    v4 = [(EKUIInviteesViewTimeSlotCell *)self timeZone];
    v5 = [MEMORY[0x1E695DFE8] calendarTimeZone];
    v6 = [v4 isEquivalentTo:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_resetTimeTextIfNeeded
{
  if ([(EKUIInviteesViewTimeSlotCell *)self updateTimeText])
  {
    [(EKUIInviteesViewTimeSlotCell *)self setUpdateTimeText:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__EKUIInviteesViewTimeSlotCell__resetTimeTextIfNeeded__block_invoke;
    aBlock[3] = &unk_1E8441BA8;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v4 = [(EKUIInviteesViewTimeSlotCell *)self startDate];
    v5 = [(EKUIInviteesViewTimeSlotCell *)self endDate];
    v6 = v3[2];
    v31 = 0;
    v32 = 0;
    v6(v3, v4, v5, &v32, &v31);
    v7 = v32;
    v8 = v31;

    v9 = 0;
    if ([(EKUIInviteesViewTimeSlotCell *)self _shouldDisplayTimeZone])
    {
      v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v11 = [(EKUIInviteesViewTimeSlotCell *)self timeZone];
      [v10 setTimeZone:v11];

      v12 = [(EKUIInviteesViewTimeSlotCell *)self startDate];
      v27 = [v10 components:252 fromDate:v12];

      v13 = [(EKUIInviteesViewTimeSlotCell *)self endDate];
      [v10 components:252 fromDate:v13];
      v14 = v29 = v7;

      v15 = CUIKCalendar();
      [v15 dateFromComponents:v27];
      v16 = v28 = v8;

      v17 = CUIKCalendar();
      v18 = [v17 dateFromComponents:v14];

      v30 = 0;
      (v3[2])(v3, v16, v18, 0, &v30);
      v19 = v30;
      v20 = MEMORY[0x1E696AEC0];
      v21 = [(EKUIInviteesViewTimeSlotCell *)self timeZone];
      v22 = CUIKShortTZString();
      v9 = [v20 stringWithFormat:@"%@ (%@)", v19, v22];

      v8 = v28;
      v7 = v29;
    }

    v23 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v24 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    v25 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    [v23 setText:v7];
    [v24 setText:v8];
    [v25 setText:v9];
    v26 = [(EKUIInviteesViewTimeSlotCell *)self timeTextColor];
    [v23 setTextColor:v26];
    [v24 setTextColor:v26];
    [v25 setTextColor:v26];
  }
}

void __54__EKUIInviteesViewTimeSlotCell__resetTimeTextIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v28 = a2;
  v9 = a3;
  if (v28)
  {
    if (v9)
    {
      [*(a1 + 32) frame];
      if (fabs(v10) >= 2.22044605e-16)
      {
        v11 = [MEMORY[0x1E695DF00] date];
        v12 = CUIKCalendar();
        v13 = [v12 isDate:v28 equalToDate:v11 toUnitGranularity:4];

        v14 = CUIKCalendar();
        v15 = [v14 isDate:v28 inSameDayAsDate:v9];

        if (!v15)
        {
          v20 = EventKitUIBundle();
          v21 = [v20 localizedStringForKey:@"%@ -" value:&stru_1F4EF6790 table:0];

          if ((a4 == 0) | v13 & 1)
          {
            v22 = CUIKLongStringForDateAndTime();
            v23 = CUIKLongStringForDateAndTime();
            if (a4)
            {
              *a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v21, v22];
              *a5 = CUIKLongStringForDateAndTime();
            }

            else if (a5)
            {
              v26 = EventKitUIBundle();
              v27 = [v26 localizedStringForKey:@"%@ - %@" value:&stru_1F4EF6790 table:0];

              *a5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v27, v22, v23];
            }
          }

          else
          {
            v22 = CUIKStringMonthDayYearTime();
            *a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v21, v22];
            if (a5)
            {
              *a5 = CUIKStringMonthDayYearTime();
            }
          }

          goto LABEL_26;
        }

        if (a4)
        {
          if (v13)
          {
            v16 = CUIKStringForWeekdayNoYear();
            *a4 = v16;
            if (([*(a1 + 32) _textWillFit:v16] & 1) == 0)
            {
              v17 = CUIKLongDayStringForDateNoYear();
              *a4 = v17;
              if (([*(a1 + 32) _textWillFit:v17] & 1) == 0)
              {
                v18 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
                *a4 = v18;
                if (([*(a1 + 32) _textWillFit:v18] & 1) == 0)
                {
                  v19 = CUIKStringForDate();
LABEL_19:
                  *a4 = v19;
                }
              }
            }
          }

          else
          {
            v24 = CUIKLongDayStringForDate();
            *a4 = v24;
            if (([*(a1 + 32) _textWillFit:v24] & 1) == 0)
            {
              v25 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
              *a4 = v25;
              if (([*(a1 + 32) _textWillFit:v25] & 1) == 0)
              {
                v19 = CUIKStringMonthDayYearWithComma();
                goto LABEL_19;
              }
            }
          }
        }

        if (a5)
        {
          *a5 = CUIKTimeIntervalStringForDates();
        }

LABEL_26:
      }
    }
  }
}

- (void)_resetParticipantsTextIfNeeded
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ([(EKUIInviteesViewTimeSlotCell *)self updateParticipantsText])
  {
    [(EKUIInviteesViewTimeSlotCell *)self setUpdateParticipantsText:0];
    [(EKUIInviteesViewTimeSlotCell *)self setAndMoreBoundingRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [(EKUIInviteesViewTimeSlotCell *)self frame];
    if (fabs(v3) < 2.22044605e-16 || [(EKUIInviteesViewTimeSlotCell *)self searchInProgress])
    {
      v4 = 0;
    }

    else
    {
      if ([(EKUIInviteesViewTimeSlotCell *)self _everyoneCanAttend])
      {
        v5 = objc_alloc(MEMORY[0x1E696AAB0]);
        v6 = EventKitUIBundle();
        v7 = [v6 localizedStringForKey:@"Everyone can attend" value:&stru_1F4EF6790 table:0];
        v13[0] = *MEMORY[0x1E69DB650];
        v8 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextColor];
        v14[0] = v8;
        v13[1] = *MEMORY[0x1E69DB648];
        v9 = [objc_opt_class() _participantsTextViewFont];
        v14[1] = v9;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
        v4 = [v5 initWithString:v7 attributes:v10];
      }

      else
      {
        v11 = [(EKUIInviteesViewTimeSlotCell *)self busyParticipants];
        v6 = [v11 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_45];

        if ([(EKUIInviteesViewTimeSlotCell *)self showAllParticipants])
        {
          [(EKUIInviteesViewTimeSlotCell *)self _generateStringForAllParticipants:v6];
        }

        else
        {
          [(EKUIInviteesViewTimeSlotCell *)self _generateStringForSomeParticipantsAndStampMoreBoundingRect:v6];
        }
        v4 = ;
      }
    }

    v12 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    [v12 setAttributedText:v4];
  }
}

- (id)_generateStringForAllParticipants:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD40];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextColor];
  v8 = [objc_opt_class() _interParticipantSpacing];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__EKUIInviteesViewTimeSlotCell__generateStringForAllParticipants___block_invoke;
  v17[3] = &unk_1E8441BD0;
  v9 = v6;
  v18 = v9;
  v19 = v8;
  v20 = self;
  v21 = v7;
  v10 = v7;
  v11 = v8;
  [v5 enumerateObjectsUsingBlock:v17];

  v22 = *MEMORY[0x1E69DB648];
  v12 = [objc_opt_class() _participantsTextViewFont];
  v23[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  [v9 addAttributes:v13 range:{0, objc_msgSend(v9, "length")}];

  v14 = v21;
  v15 = v9;

  return v9;
}

void __66__EKUIInviteesViewTimeSlotCell__generateStringForAllParticipants___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) appendAttributedString:*(a1 + 40)];
  }

  v5 = [*(a1 + 48) _textForParticipant:v6 color:*(a1 + 56)];
  [*(a1 + 32) appendAttributedString:v5];
}

- (id)_generateStringForSomeParticipantsAndStampMoreBoundingRect:(id)a3
{
  v74[1] = *MEMORY[0x1E69E9840];
  v45 = a3;
  v4 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextColor];
  v5 = [objc_opt_class() _interParticipantSpacing];
  v43 = [objc_opt_class() _andMoreLeftSpacing];
  v6 = [v45 count];
  v7 = [(EKUIInviteesViewTimeSlotCell *)self textViewForTextSizeTesting];
  [(EKUIInviteesViewTimeSlotCell *)self _preferredMaxLayoutWidth];
  [v7 setFrame:{0.0, 0.0, v8, 0.0}];
  v73 = *MEMORY[0x1E69DB650];
  v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  v74[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];

  v11 = [v7 textLayoutManager];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__16;
  v69 = __Block_byref_object_dispose__16;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__16;
  v63 = __Block_byref_object_dispose__16;
  v64 = 0;
  v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __91__EKUIInviteesViewTimeSlotCell__generateStringForSomeParticipantsAndStampMoreBoundingRect___block_invoke;
  v46[3] = &unk_1E8441BF8;
  v42 = v12;
  v47 = v42;
  v41 = v5;
  v48 = v41;
  v49 = self;
  v40 = v4;
  v50 = v40;
  v57 = v6 - 1;
  v58 = v6;
  v13 = v10;
  v51 = v13;
  v44 = v43;
  v52 = v44;
  v14 = v7;
  v53 = v14;
  v15 = v11;
  v54 = v15;
  v55 = &v59;
  v56 = &v65;
  [v45 enumerateObjectsUsingBlock:v46];
  v16 = v60[5];
  v71 = *MEMORY[0x1E69DB648];
  v17 = [objc_opt_class() _participantsTextViewFont];
  v72 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  [v16 addAttributes:v18 range:{0, objc_msgSend(v60[5], "length")}];

  [v14 setAttributedText:v60[5]];
  v19 = *MEMORY[0x1E695F050];
  v20 = *(MEMORY[0x1E695F050] + 8);
  v21 = *(MEMORY[0x1E695F050] + 16);
  v22 = *(MEMORY[0x1E695F050] + 24);
  if (v6 >= 2 && v66[5])
  {
    v23 = [v60[5] length];
    v24 = [v66[5] length];
    v25 = [v15 textContainer];
    v26 = [v25 layoutManager];
    v27 = [v26 glyphIndexForCharacterAtIndex:v23 - v24];

    v28 = [v15 textContainer];
    v29 = [v28 layoutManager];
    v30 = [v29 numberOfGlyphs];

    v31 = [v14 textContainer];
    v32 = [v15 textContainer];
    v33 = [v32 layoutManager];
    [v33 boundingRectForGlyphRange:v27 inTextContainer:{v30 - v27, v31}];
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v22 = v37;
  }

  [(EKUIInviteesViewTimeSlotCell *)self setAndMoreBoundingRect:v19, v20, v21, v22];
  v38 = v60[5];

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  return v38;
}

void __91__EKUIInviteesViewTimeSlotCell__generateStringForSomeParticipantsAndStampMoreBoundingRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a3)
  {
    [*(a1 + 32) appendAttributedString:*(a1 + 40)];
  }

  v8 = [*(a1 + 48) _textForParticipant:v7 color:*(a1 + 56)];
  [*(a1 + 32) appendAttributedString:v8];
  if (*(a1 + 112) == a3)
  {
    v9 = *(a1 + 32);
    v10 = 0;
  }

  else
  {
    v10 = [objc_opt_class() _generateAndMoreStringWithCount:*(a1 + 120) + ~a3 attributes:*(a1 + 64)];
    v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:*(a1 + 32)];
    [v9 appendAttributedString:*(a1 + 72)];
    [v9 appendAttributedString:v10];
  }

  v22 = *MEMORY[0x1E69DB648];
  v11 = [objc_opt_class() _participantsTextViewFont];
  v23[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  [v9 addAttributes:v12 range:{0, objc_msgSend(v9, "length")}];

  [*(a1 + 80) setAttributedText:v9];
  if ([objc_opt_class() _layoutManagerReportsExcessLines:*(a1 + 88)])
  {
    *a4 = 1;
    if (*(a1 + 120) == 1)
    {
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v9);
      v13 = *(*(a1 + 104) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;
    }

    else
    {
      if (a3)
      {
        goto LABEL_11;
      }

      v17 = objc_alloc(MEMORY[0x1E696AD40]);
      v18 = EventKitUIBundle();
      v19 = [v18 localizedStringForKey:@"Show All…" value:&stru_1F4EF6790 table:0];
      v20 = [v17 initWithString:v19 attributes:*(a1 + 64)];

      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v20);
      v21 = *(*(a1 + 104) + 8);
      v14 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v9);
    v15 = *(*(a1 + 104) + 8);
    v16 = v10;
    v14 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

LABEL_11:
}

+ (BOOL)_layoutManagerReportsExcessLines:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [v3 textContainer];
  v5 = [v4 layoutManager];
  v6 = [v5 numberOfGlyphs];

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v7 = [v3 textContainer];
  v8 = [v7 layoutManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__EKUIInviteesViewTimeSlotCell__layoutManagerReportsExcessLines___block_invoke;
  v10[3] = &unk_1E8441C20;
  v10[4] = v11;
  v10[5] = &v12;
  [v8 enumerateLineFragmentsForGlyphRange:0 usingBlock:{v6, v10}];

  LOBYTE(v6) = *(v13 + 24);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);

  return v6;
}

uint64_t __65__EKUIInviteesViewTimeSlotCell__layoutManagerReportsExcessLines___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (++*(*(*(result + 32) + 8) + 24) >= 3uLL)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (id)_textForParticipant:(id)a3 color:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(EKUIInviteesViewTimeSlotCell *)self _busyImageAttributedStringForColor:v6];
  v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v8];
  v10 = objc_opt_class();
  v11 = [v7 displayName];

  v12 = [v10 _replaceSpacesWithNonBreakingSpaces:v11];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [objc_opt_class() _nonBreakingSpace];
  v15 = [v13 initWithFormat:@"%@%@", v14, v12];

  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = *MEMORY[0x1E69DB650];
  v21[0] = v6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  v18 = [v16 initWithString:v15 attributes:v17];
  [v9 appendAttributedString:v18];

  return v9;
}

- (id)_busyImageAttributedStringForColor:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewTimeSlotCell *)self colorToBusyImageAttributedString];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKUIInviteesViewTimeSlotCell *)self setColorToBusyImageAttributedString:v6];
  }

  v7 = [(EKUIInviteesViewTimeSlotCell *)self colorToBusyImageAttributedString];
  v8 = [v7 objectForKey:v4];

  if (!v8)
  {
    v9 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle" withConfiguration:v9];
    v11 = [v10 imageWithTintColor:v4 renderingMode:1];

    v12 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v11];
    v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
    v13 = [(EKUIInviteesViewTimeSlotCell *)self colorToBusyImageAttributedString];
    [v13 setObject:v8 forKey:v4];
  }

  return v8;
}

- (BOOL)_textWillFit:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewTimeSlotCell *)self labelForTextSizeTesting];
  [v5 setText:v4];

  [v5 sizeToFit];
  [v5 frame];
  v7 = v6;
  [(EKUIInviteesViewTimeSlotCell *)self _preferredMaxLayoutWidth];
  LOBYTE(self) = v7 <= v8;

  return self;
}

+ (id)_generateAndMoreStringWithCount:(unint64_t)a3 attributes:(id)a4
{
  v4 = a4;
  v5 = CUIKLocalizedStringForInteger();
  v6 = MEMORY[0x1E696AEC0];
  v7 = EventKitUIBundle();
  v8 = [v7 localizedStringForKey:@"& %@ more…" value:&stru_1F4EF6790 table:0];
  v9 = [v6 localizedStringWithFormat:v8, v5];

  v10 = [objc_opt_class() _replaceSpacesWithNonBreakingSpaces:v9];
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v10 attributes:v4];

  return v11;
}

+ (id)_replaceSpacesWithNonBreakingSpaces:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _nonBreakingSpace];
  v5 = [v3 stringByReplacingOccurrencesOfString:@" " withString:v4];

  return v5;
}

+ (id)_interParticipantSpacing
{
  v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"   "];

  return v2;
}

+ (id)_andMoreLeftSpacing
{
  v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];

  return v2;
}

- (BOOL)_everyoneCanAttend
{
  v2 = [(EKUIInviteesViewTimeSlotCell *)self busyParticipants];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 count] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)_generateParticipantTextView
{
  v2 = objc_alloc(MEMORY[0x1E69DD168]);
  v3 = [v2 initWithFrame:0 textContainer:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v4 = [v3 layoutManager];
  [v4 setLimitsLayoutForSuspiciousContents:1];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v5];

  [v3 setUserInteractionEnabled:0];
  [v3 setScrollEnabled:0];
  [v3 setSelectable:0];
  [v3 setEditable:0];
  v6 = [v3 textContainer];
  [v6 setLineFragmentPadding:0.0];

  [v3 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v3;
}

+ (void)_setRequiredHuggingAndCompression:(id)a3
{
  v7 = a3;
  LODWORD(v3) = 1148846080;
  [v7 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v7 setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v6];
}

- (CGRect)andMoreBoundingRect
{
  x = self->_andMoreBoundingRect.origin.x;
  y = self->_andMoreBoundingRect.origin.y;
  width = self->_andMoreBoundingRect.size.width;
  height = self->_andMoreBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end