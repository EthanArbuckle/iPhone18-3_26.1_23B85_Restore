@interface EKUIInviteesViewTimeSlotCell
+ (BOOL)_layoutManagerReportsExcessLines:(id)lines;
+ (id)_andMoreLeftSpacing;
+ (id)_generateAndMoreStringWithCount:(unint64_t)count attributes:(id)attributes;
+ (id)_generateParticipantTextView;
+ (id)_interParticipantSpacing;
+ (id)_replaceSpacesWithNonBreakingSpaces:(id)spaces;
+ (void)_setRequiredHuggingAndCompression:(id)compression;
- (BOOL)_everyoneCanAttend;
- (BOOL)_shouldDisplayTimeZone;
- (BOOL)_textWillFit:(id)fit;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)andMoreBoundingRect;
- (EKUIInviteesViewTimeSlotCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_preferredMaxLayoutWidth;
- (id)_busyImageAttributedStringForColor:(id)color;
- (id)_generateStringForAllParticipants:(id)participants;
- (id)_generateStringForSomeParticipantsAndStampMoreBoundingRect:(id)rect;
- (id)_textForParticipant:(id)participant color:(id)color;
- (void)_andMoreTapped:(id)tapped;
- (void)_resetFonts;
- (void)_resetParticipantsTextIfNeeded;
- (void)_resetPreferredMaxLayoutWidths;
- (void)_resetTimeTextIfNeeded;
- (void)_showPreviewButtonTapped:(id)tapped;
- (void)dealloc;
- (void)setAndMoreBoundingRect:(CGRect)rect;
- (void)setBusyParticipants:(id)participants;
- (void)setChecked:(BOOL)checked;
- (void)setEndDate:(id)date;
- (void)setFrame:(CGRect)frame;
- (void)setProposedBy:(id)by;
- (void)setShowAllParticipants:(BOOL)participants;
- (void)setStartDate:(id)date;
- (void)updateConstraints;
- (void)updateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone busyParticipants:(id)participants showAllParticipants:(BOOL)allParticipants checked:(BOOL)checked;
@end

@implementation EKUIInviteesViewTimeSlotCell

- (EKUIInviteesViewTimeSlotCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31.receiver = self;
  v31.super_class = EKUIInviteesViewTimeSlotCell;
  v4 = [(EKUIInviteesViewTimeSlotCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(EKUIInviteesViewTimeSlotCell *)v4 setAndMoreBoundingRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [objc_opt_class() _leftBuffer];
    [(EKUIInviteesViewTimeSlotCell *)v5 setSeparatorInset:0.0, v6, 0.0, 0.0];
    contentView = [(EKUIInviteesViewTimeSlotCell *)v5 contentView];
    traitCollection = [(EKUIInviteesViewTimeSlotCell *)v5 traitCollection];
    v9 = TableViewCheckmarkImage(traitCollection);

    v30 = v9;
    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [objc_opt_class() _setRequiredHuggingAndCompression:v10];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setContentMode:4];
    [v10 setHidden:1];
    [contentView addSubview:v10];
    [(EKUIInviteesViewTimeSlotCell *)v5 setCheckmarkImageView:v10];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v11];
    v29 = v11;
    [(EKUIInviteesViewTimeSlotCell *)v5 setTopTimeLabel:v11];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v12];
    v28 = v12;
    [(EKUIInviteesViewTimeSlotCell *)v5 setBottomTimeLabel:v12];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v13];
    [(EKUIInviteesViewTimeSlotCell *)v5 setTimeZoneTimeLabel:v13];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setNumberOfLines:4];
    [contentView addSubview:v14];
    [(EKUIInviteesViewTimeSlotCell *)v5 setProposedByLabel:v14];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = v15;
    [(EKUIInviteesViewTimeSlotCell *)v5 setLabelForTextSizeTesting:v15];
    _generateParticipantTextView = [objc_opt_class() _generateParticipantTextView];
    [contentView addSubview:_generateParticipantTextView];
    [(EKUIInviteesViewTimeSlotCell *)v5 setParticipantsTextView:_generateParticipantTextView];
    _generateParticipantTextView2 = [objc_opt_class() _generateParticipantTextView];
    [(EKUIInviteesViewTimeSlotCell *)v5 setTextViewForTextSizeTesting:?];
    v17 = [MEMORY[0x1E69DC738] buttonWithType:3];
    if (CalSolariumEnabled())
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [v17 setConfiguration:plainButtonConfiguration];
    }

    [objc_opt_class() _setRequiredHuggingAndCompression:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addTarget:v5 action:sel__showPreviewButtonTapped_ forControlEvents:64];
    contentView2 = [(EKUIInviteesViewTimeSlotCell *)v5 contentView];
    [contentView2 addSubview:v17];

    [(EKUIInviteesViewTimeSlotCell *)v5 setShowPreviewButton:v17];
    v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel__andMoreTapped_];
    [v20 setDelegate:v5];
    contentView3 = [(EKUIInviteesViewTimeSlotCell *)v5 contentView];
    [contentView3 addGestureRecognizer:v20];

    [(EKUIInviteesViewTimeSlotCell *)v5 setTappedMoreRecognizer:v20];
    v22 = +[EKUIDebugPreferences shared];
    showInviteesAndMoreRegion = [v22 showInviteesAndMoreRegion];

    if (showInviteesAndMoreRegion)
    {
      v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [_generateParticipantTextView addSubview:v24];
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
  tappedMoreRecognizer = [(EKUIInviteesViewTimeSlotCell *)self tappedMoreRecognizer];
  [tappedMoreRecognizer setDelegate:0];

  v4.receiver = self;
  v4.super_class = EKUIInviteesViewTimeSlotCell;
  [(EKUIInviteesViewTimeSlotCell *)&v4 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  persistentConstraints = [(EKUIInviteesViewTimeSlotCell *)self persistentConstraints];

  if (!persistentConstraints)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E696ACD8];
    checkmarkImageView = [(EKUIInviteesViewTimeSlotCell *)self checkmarkImageView];
    contentView = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v8 = [v5 constraintWithItem:checkmarkImageView attribute:9 relatedBy:0 toItem:contentView attribute:17 multiplier:1.0 constant:20.0];
    [v4 addObject:v8];

    v9 = MEMORY[0x1E696ACD8];
    checkmarkImageView2 = [(EKUIInviteesViewTimeSlotCell *)self checkmarkImageView];
    contentView2 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v12 = [v9 constraintWithItem:checkmarkImageView2 attribute:10 relatedBy:0 toItem:contentView2 attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v12];

    v13 = MEMORY[0x1E696ACD8];
    topTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    checkmarkImageView3 = [(EKUIInviteesViewTimeSlotCell *)self checkmarkImageView];
    v16 = [v13 constraintWithItem:topTimeLabel attribute:5 relatedBy:0 toItem:checkmarkImageView3 attribute:9 multiplier:1.0 constant:30.0];
    [v4 addObject:v16];

    v17 = MEMORY[0x1E696ACD8];
    topTimeLabel2 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    contentView3 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v21 = [v17 constraintWithItem:topTimeLabel2 attribute:6 relatedBy:0 toItem:contentView3 attribute:6 multiplier:1.0 constant:-v20];
    [v4 addObject:v21];

    v22 = MEMORY[0x1E696ACD8];
    bottomTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    topTimeLabel3 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v25 = [v22 constraintWithItem:bottomTimeLabel attribute:5 relatedBy:0 toItem:topTimeLabel3 attribute:5 multiplier:1.0 constant:0.0];
    [v4 addObject:v25];

    v26 = MEMORY[0x1E696ACD8];
    bottomTimeLabel2 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    contentView4 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v30 = [v26 constraintWithItem:bottomTimeLabel2 attribute:6 relatedBy:0 toItem:contentView4 attribute:6 multiplier:1.0 constant:-v29];
    [v4 addObject:v30];

    v31 = MEMORY[0x1E696ACD8];
    timeZoneTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    topTimeLabel4 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v34 = [v31 constraintWithItem:timeZoneTimeLabel attribute:5 relatedBy:0 toItem:topTimeLabel4 attribute:5 multiplier:1.0 constant:0.0];
    [v4 addObject:v34];

    v35 = MEMORY[0x1E696ACD8];
    timeZoneTimeLabel2 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    contentView5 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v39 = [v35 constraintWithItem:timeZoneTimeLabel2 attribute:6 relatedBy:0 toItem:contentView5 attribute:6 multiplier:1.0 constant:-v38];
    [v4 addObject:v39];

    v40 = MEMORY[0x1E696ACD8];
    proposedByLabel = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    topTimeLabel5 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v43 = [v40 constraintWithItem:proposedByLabel attribute:5 relatedBy:0 toItem:topTimeLabel5 attribute:5 multiplier:1.0 constant:0.0];
    [v4 addObject:v43];

    v44 = MEMORY[0x1E696ACD8];
    proposedByLabel2 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    contentView6 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v48 = [v44 constraintWithItem:proposedByLabel2 attribute:6 relatedBy:0 toItem:contentView6 attribute:6 multiplier:1.0 constant:-v47];
    [v4 addObject:v48];

    v49 = MEMORY[0x1E696ACD8];
    participantsTextView = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    topTimeLabel6 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v52 = [v49 constraintWithItem:participantsTextView attribute:5 relatedBy:0 toItem:topTimeLabel6 attribute:5 multiplier:1.0 constant:0.0];
    [v4 addObject:v52];

    v53 = MEMORY[0x1E696ACD8];
    participantsTextView2 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    contentView7 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [objc_opt_class() _rightBuffer];
    v57 = [v53 constraintWithItem:participantsTextView2 attribute:6 relatedBy:0 toItem:contentView7 attribute:6 multiplier:1.0 constant:-v56];
    [v4 addObject:v57];

    v58 = MEMORY[0x1E696ACD8];
    participantsTextView3 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    contentView8 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v61 = [v58 constraintWithItem:participantsTextView3 attribute:4 relatedBy:-1 toItem:contentView8 attribute:4 multiplier:1.0 constant:0.0];
    [v4 addObject:v61];

    v62 = MEMORY[0x1E696ACD8];
    showPreviewButton = [(EKUIInviteesViewTimeSlotCell *)self showPreviewButton];
    contentView9 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v65 = [v62 constraintWithItem:showPreviewButton attribute:6 relatedBy:0 toItem:contentView9 attribute:6 multiplier:1.0 constant:-16.0];
    [v4 addObject:v65];

    v66 = MEMORY[0x1E696ACD8];
    showPreviewButton2 = [(EKUIInviteesViewTimeSlotCell *)self showPreviewButton];
    contentView10 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v69 = [v66 constraintWithItem:showPreviewButton2 attribute:10 relatedBy:0 toItem:contentView10 attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v69];

    v70 = MEMORY[0x1E696ACD8];
    topTimeLabel7 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    contentView11 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    v73 = [v70 constraintWithItem:topTimeLabel7 attribute:12 relatedBy:0 toItem:contentView11 attribute:3 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setTopTimeLabelToTopContentViewConstraint:v73];

    topTimeLabelToTopContentViewConstraint = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabelToTopContentViewConstraint];
    [v4 addObject:topTimeLabelToTopContentViewConstraint];

    v75 = MEMORY[0x1E696ACD8];
    bottomTimeLabel3 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    topTimeLabel8 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v78 = [v75 constraintWithItem:bottomTimeLabel3 attribute:12 relatedBy:0 toItem:topTimeLabel8 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setBottomTimeLabelToTopTimeLabelConstraint:v78];

    bottomTimeLabelToTopTimeLabelConstraint = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabelToTopTimeLabelConstraint];
    [v4 addObject:bottomTimeLabelToTopTimeLabelConstraint];

    v80 = MEMORY[0x1E696ACD8];
    timeZoneTimeLabel3 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    bottomTimeLabel4 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    v83 = [v80 constraintWithItem:timeZoneTimeLabel3 attribute:12 relatedBy:0 toItem:bottomTimeLabel4 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setTimeZoneTimeLabelToBottomTimeLabelConstraint:v83];

    timeZoneTimeLabelToBottomTimeLabelConstraint = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabelToBottomTimeLabelConstraint];
    [v4 addObject:timeZoneTimeLabelToBottomTimeLabelConstraint];

    v85 = MEMORY[0x1E696ACD8];
    proposedByLabel3 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    timeZoneTimeLabel4 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    v88 = [v85 constraintWithItem:proposedByLabel3 attribute:12 relatedBy:0 toItem:timeZoneTimeLabel4 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setProposedTimeLabelToBottomTimeLabelConstraint:v88];

    proposedTimeLabelToBottomTimeLabelConstraint = [(EKUIInviteesViewTimeSlotCell *)self proposedTimeLabelToBottomTimeLabelConstraint];
    [v4 addObject:proposedTimeLabelToBottomTimeLabelConstraint];

    v90 = MEMORY[0x1E696ACD8];
    participantsTextView4 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    proposedByLabel4 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v93 = [v90 constraintWithItem:participantsTextView4 attribute:12 relatedBy:0 toItem:proposedByLabel4 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setParticipantsViewToBottomTimeLabelConstraint:v93];

    participantsViewToBottomTimeLabelConstraint = [(EKUIInviteesViewTimeSlotCell *)self participantsViewToBottomTimeLabelConstraint];
    [v4 addObject:participantsViewToBottomTimeLabelConstraint];

    v95 = MEMORY[0x1E696ACD8];
    contentView12 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    participantsTextView5 = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    v98 = [v95 constraintWithItem:contentView12 attribute:4 relatedBy:1 toItem:participantsTextView5 attribute:11 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setParticipantsViewToContentViewConstraint:v98];

    participantsViewToContentViewConstraint = [(EKUIInviteesViewTimeSlotCell *)self participantsViewToContentViewConstraint];
    [v4 addObject:participantsViewToContentViewConstraint];

    v100 = MEMORY[0x1E696ACD8];
    topTimeLabel9 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    v102 = [v100 constraintWithItem:topTimeLabel9 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setTopTimeLabelHeightConstraint:v102];

    topTimeLabelHeightConstraint = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabelHeightConstraint];
    [v4 addObject:topTimeLabelHeightConstraint];

    v104 = MEMORY[0x1E696ACD8];
    bottomTimeLabel5 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    v106 = [v104 constraintWithItem:bottomTimeLabel5 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setBottomTimeLabelHeightConstraint:v106];

    bottomTimeLabelHeightConstraint = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabelHeightConstraint];
    [v4 addObject:bottomTimeLabelHeightConstraint];

    v108 = MEMORY[0x1E696ACD8];
    timeZoneTimeLabel5 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    v110 = [v108 constraintWithItem:timeZoneTimeLabel5 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setTimeZoneTimeLabelHeightConstraint:v110];

    timeZoneTimeLabelHeightConstraint = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabelHeightConstraint];
    [v4 addObject:timeZoneTimeLabelHeightConstraint];

    v112 = MEMORY[0x1E696ACD8];
    proposedByLabel5 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v114 = [v112 constraintWithItem:proposedByLabel5 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setProposedByMinHeightConstraint:v114];

    v115 = MEMORY[0x1E696ACD8];
    proposedByLabel6 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    v117 = [v115 constraintWithItem:proposedByLabel6 attribute:8 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(EKUIInviteesViewTimeSlotCell *)self setProposedByMaxHeightConstraint:v117];

    proposedByMinHeightConstraint = [(EKUIInviteesViewTimeSlotCell *)self proposedByMinHeightConstraint];
    [v4 addObject:proposedByMinHeightConstraint];

    proposedByMaxHeightConstraint = [(EKUIInviteesViewTimeSlotCell *)self proposedByMaxHeightConstraint];
    [v4 addObject:proposedByMaxHeightConstraint];

    contentView13 = [(EKUIInviteesViewTimeSlotCell *)self contentView];
    [contentView13 addConstraints:v4];

    [(EKUIInviteesViewTimeSlotCell *)self setPersistentConstraints:v4];
  }

  _proposedByFont = [objc_opt_class() _proposedByFont];
  _timeLabelFont = [objc_opt_class() _timeLabelFont];
  _participantsTextViewFont = [objc_opt_class() _participantsTextViewFont];
  if ([(EKUIInviteesViewTimeSlotCell *)self updateFontBasedConstraints])
  {
    [(EKUIInviteesViewTimeSlotCell *)self setUpdateFontBasedConstraints:0];
    [_timeLabelFont _scaledValueForValue:24.0];
    v125 = v124;
    topTimeLabelToTopContentViewConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabelToTopContentViewConstraint];
    [topTimeLabelToTopContentViewConstraint2 setConstant:v125];

    [_timeLabelFont _scaledValueForValue:22.0];
    v128 = v127;
    bottomTimeLabelToTopTimeLabelConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabelToTopTimeLabelConstraint];
    [bottomTimeLabelToTopTimeLabelConstraint2 setConstant:v128];

    [_timeLabelFont _scaledValueForValue:22.0];
    v131 = v130;
    timeZoneTimeLabelToBottomTimeLabelConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabelToBottomTimeLabelConstraint];
    [timeZoneTimeLabelToBottomTimeLabelConstraint2 setConstant:v131];

    [_proposedByFont _scaledValueForValue:20.0];
    v134 = v133;
    proposedTimeLabelToBottomTimeLabelConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self proposedTimeLabelToBottomTimeLabelConstraint];
    [proposedTimeLabelToBottomTimeLabelConstraint2 setConstant:v134];

    [_participantsTextViewFont _scaledValueForValue:20.0];
    v137 = v136;
    participantsViewToBottomTimeLabelConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self participantsViewToBottomTimeLabelConstraint];
    [participantsViewToBottomTimeLabelConstraint2 setConstant:v137];

    [_timeLabelFont _scaledValueForValue:12.0];
    v140 = v139;
    participantsViewToContentViewConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self participantsViewToContentViewConstraint];
    [participantsViewToContentViewConstraint2 setConstant:v140];

    [_timeLabelFont lineHeight];
    v143 = v142;
    topTimeLabelHeightConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabelHeightConstraint];
    [topTimeLabelHeightConstraint2 setConstant:v143];

    [_timeLabelFont lineHeight];
    v146 = v145;
    bottomTimeLabelHeightConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabelHeightConstraint];
    [bottomTimeLabelHeightConstraint2 setConstant:v146];
  }

  v148 = 0.0;
  if ([(EKUIInviteesViewTimeSlotCell *)self _shouldDisplayTimeZone])
  {
    [_timeLabelFont lineHeight];
    v148 = v149;
  }

  timeZoneTimeLabelHeightConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabelHeightConstraint];
  [timeZoneTimeLabelHeightConstraint2 setConstant:v148];

  proposedBy = [(EKUIInviteesViewTimeSlotCell *)self proposedBy];
  v152 = [proposedBy count];

  if (v152)
  {
    [_proposedByFont lineHeight];
    v154 = v153;
    proposedByMinHeightConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self proposedByMinHeightConstraint];
    [proposedByMinHeightConstraint2 setConstant:v154];

    [_proposedByFont lineHeight];
    v157 = v156 * 4.0;
  }

  else
  {
    proposedByMinHeightConstraint3 = [(EKUIInviteesViewTimeSlotCell *)self proposedByMinHeightConstraint];
    v157 = 0.0;
    [proposedByMinHeightConstraint3 setConstant:0.0];
  }

  proposedByMaxHeightConstraint2 = [(EKUIInviteesViewTimeSlotCell *)self proposedByMaxHeightConstraint];
  [proposedByMaxHeightConstraint2 setConstant:v157];

  v160.receiver = self;
  v160.super_class = EKUIInviteesViewTimeSlotCell;
  [(EKUIInviteesViewTimeSlotCell *)&v160 updateConstraints];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
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
    participantsTextView = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    [touchCopy locationInView:participantsTextView];
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

- (void)updateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone busyParticipants:(id)participants showAllParticipants:(BOOL)allParticipants checked:(BOOL)checked
{
  checkedCopy = checked;
  allParticipantsCopy = allParticipants;
  participantsCopy = participants;
  zoneCopy = zone;
  endDateCopy = endDate;
  [(EKUIInviteesViewTimeSlotCell *)self setStartDate:date];
  [(EKUIInviteesViewTimeSlotCell *)self setEndDate:endDateCopy];

  [(EKUIInviteesViewTimeSlotCell *)self setTimeZone:zoneCopy];
  [(EKUIInviteesViewTimeSlotCell *)self setBusyParticipants:participantsCopy];

  [(EKUIInviteesViewTimeSlotCell *)self setShowAllParticipants:allParticipantsCopy];
  [(EKUIInviteesViewTimeSlotCell *)self setChecked:checkedCopy];
  [(EKUIInviteesViewTimeSlotCell *)self _resetTimeTextIfNeeded];

  [(EKUIInviteesViewTimeSlotCell *)self _resetParticipantsTextIfNeeded];
}

- (void)setProposedBy:(id)by
{
  byCopy = by;
  objc_storeStrong(&self->_proposedBy, by);
  if ([byCopy count] == 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = EventKitUIBundle();
    proposedByLabel3 = [v6 localizedStringForKey:@"Proposed by %@" value:&stru_1F4EF6790 table:0];
    v8 = [byCopy objectAtIndexedSubscript:0];
    v9 = [v5 localizedStringWithFormat:proposedByLabel3, v8];
    proposedByLabel = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    [proposedByLabel setText:v9];

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  if ([byCopy count] == 2)
  {
    v11 = MEMORY[0x1E696AEC0];
    v6 = EventKitUIBundle();
    proposedByLabel3 = [v6 localizedStringForKey:@"Proposed by %@ and %@" value:&stru_1F4EF6790 table:0];
    v8 = [byCopy objectAtIndexedSubscript:0];
    v12 = [byCopy objectAtIndexedSubscript:1];
    v13 = [v11 localizedStringWithFormat:proposedByLabel3, v8, v12];
    proposedByLabel2 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    [proposedByLabel2 setText:v13];

    goto LABEL_5;
  }

  if ([byCopy count] >= 3)
  {
    v15 = EventKitUIBundle();
    v16 = [v15 localizedStringForKey:@"Proposed by " value:&stru_1F4EF6790 table:0];

    if ([byCopy count] == 1)
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
        v22 = [byCopy objectAtIndexedSubscript:v18];
        v23 = [v19 localizedStringWithFormat:v21, v22];
        v17 = [v16 stringByAppendingString:v23];

        ++v18;
        v16 = v17;
      }

      while (v18 < [byCopy count] - 1);
    }

    v24 = [byCopy objectAtIndexedSubscript:{objc_msgSend(byCopy, "count") - 1}];
    v6 = [v17 stringByAppendingString:v24];

    proposedByLabel3 = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
    [proposedByLabel3 setText:v6];
    goto LABEL_6;
  }

LABEL_7:
  [(EKUIInviteesViewTimeSlotCell *)self updateConstraints];
}

- (void)setStartDate:(id)date
{
  dateCopy = date;
  startDate = self->_startDate;
  if (startDate != dateCopy)
  {
    v8 = dateCopy;
    if (!startDate || (v7 = [(NSDate *)startDate isEqualToDate:dateCopy], dateCopy = v8, !v7))
    {
      objc_storeStrong(&self->_startDate, date);
      [(EKUIInviteesViewTimeSlotCell *)self setUpdateTimeText:1];
      dateCopy = v8;
    }
  }
}

- (void)setEndDate:(id)date
{
  dateCopy = date;
  endDate = self->_endDate;
  if (endDate != dateCopy)
  {
    v8 = dateCopy;
    if (!endDate || (v7 = [(NSDate *)endDate isEqualToDate:dateCopy], dateCopy = v8, !v7))
    {
      objc_storeStrong(&self->_endDate, date);
      [(EKUIInviteesViewTimeSlotCell *)self setUpdateTimeText:1];
      dateCopy = v8;
    }
  }
}

- (void)setBusyParticipants:(id)participants
{
  objc_storeStrong(&self->_busyParticipants, participants);

  [(EKUIInviteesViewTimeSlotCell *)self setUpdateParticipantsText:1];
}

- (void)setShowAllParticipants:(BOOL)participants
{
  if (self->_showAllParticipants != participants)
  {
    self->_showAllParticipants = participants;
    [(EKUIInviteesViewTimeSlotCell *)self setUpdateParticipantsText:1];
  }
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    checkedCopy = checked;
    self->_checked = checked;
    checkmarkImageView = [(EKUIInviteesViewTimeSlotCell *)self checkmarkImageView];
    [checkmarkImageView setHidden:!checkedCopy];
  }
}

- (void)setAndMoreBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_andMoreBoundingRect = &self->_andMoreBoundingRect;
  if (!CGRectEqualToRect(self->_andMoreBoundingRect, rect))
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
      andMoreDebugOverlay = [(EKUIInviteesViewTimeSlotCell *)self andMoreDebugOverlay];
      v18 = andMoreDebugOverlay;
      v14 = v9;
      v15 = v10;
      v16 = v11;
      v17 = v12;
    }

    else
    {
      andMoreDebugOverlay = [(EKUIInviteesViewTimeSlotCell *)self andMoreDebugOverlay];
      v18 = andMoreDebugOverlay;
      v14 = x;
      v15 = y;
      v16 = width;
      v17 = height;
    }

    [andMoreDebugOverlay setFrame:{v14, v15, v16, v17}];
  }
}

- (void)_showPreviewButtonTapped:(id)tapped
{
  showPreviewOfEventAtTime = [(EKUIInviteesViewTimeSlotCell *)self showPreviewOfEventAtTime];

  if (showPreviewOfEventAtTime)
  {
    showPreviewOfEventAtTime2 = [(EKUIInviteesViewTimeSlotCell *)self showPreviewOfEventAtTime];
    startDate = [(EKUIInviteesViewTimeSlotCell *)self startDate];
    endDate = [(EKUIInviteesViewTimeSlotCell *)self endDate];
    showPreviewOfEventAtTime2[2](showPreviewOfEventAtTime2, startDate, endDate);
  }
}

- (void)_andMoreTapped:(id)tapped
{
  [(EKUIInviteesViewTimeSlotCell *)self setShowAllParticipants:1];
  _tableView = [(EKUIInviteesViewTimeSlotCell *)self _tableView];
  [_tableView beginUpdates];

  [(EKUIInviteesViewTimeSlotCell *)self _resetParticipantsTextIfNeeded];
  _tableView2 = [(EKUIInviteesViewTimeSlotCell *)self _tableView];
  [_tableView2 endUpdates];

  showAllConflictedParticipantsTapped = [(EKUIInviteesViewTimeSlotCell *)self showAllConflictedParticipantsTapped];

  if (showAllConflictedParticipantsTapped)
  {
    showAllConflictedParticipantsTapped2 = [(EKUIInviteesViewTimeSlotCell *)self showAllConflictedParticipantsTapped];
    showAllConflictedParticipantsTapped2[2]();
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
  _timeLabelFont = [objc_opt_class() _timeLabelFont];
  topTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
  [topTimeLabel setFont:_timeLabelFont];

  bottomTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
  [bottomTimeLabel setFont:_timeLabelFont];

  timeZoneTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
  [timeZoneTimeLabel setFont:_timeLabelFont];

  _proposedByFont = [objc_opt_class() _proposedByFont];
  proposedByLabel = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
  [proposedByLabel setFont:_proposedByFont];

  labelForTextSizeTesting = [(EKUIInviteesViewTimeSlotCell *)self labelForTextSizeTesting];
  [labelForTextSizeTesting setFont:_timeLabelFont];

  _participantsTextViewFont = [objc_opt_class() _participantsTextViewFont];
  participantsTextView = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
  [participantsTextView setFont:_participantsTextViewFont];

  textViewForTextSizeTesting = [(EKUIInviteesViewTimeSlotCell *)self textViewForTextSizeTesting];
  [textViewForTextSizeTesting setFont:_participantsTextViewFont];

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
  topTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
  [topTimeLabel setPreferredMaxLayoutWidth:v4];

  bottomTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
  [bottomTimeLabel setPreferredMaxLayoutWidth:v4];

  timeZoneTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
  [timeZoneTimeLabel setPreferredMaxLayoutWidth:v4];

  proposedByLabel = [(EKUIInviteesViewTimeSlotCell *)self proposedByLabel];
  [proposedByLabel setPreferredMaxLayoutWidth:v4];

  participantsTextView = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
  [participantsTextView _setPreferredMaxLayoutWidth:v4];

  [(EKUIInviteesViewTimeSlotCell *)self setUpdateTimeText:1];
  [(EKUIInviteesViewTimeSlotCell *)self _resetTimeTextIfNeeded];
  [(EKUIInviteesViewTimeSlotCell *)self setUpdateParticipantsText:1];
  [(EKUIInviteesViewTimeSlotCell *)self _resetParticipantsTextIfNeeded];

  [(EKUIInviteesViewTimeSlotCell *)self setNeedsUpdateConstraints];
}

- (BOOL)_shouldDisplayTimeZone
{
  timeZone = [(EKUIInviteesViewTimeSlotCell *)self timeZone];
  if (timeZone)
  {
    timeZone2 = [(EKUIInviteesViewTimeSlotCell *)self timeZone];
    calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
    v6 = [timeZone2 isEquivalentTo:calendarTimeZone] ^ 1;
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
    startDate = [(EKUIInviteesViewTimeSlotCell *)self startDate];
    endDate = [(EKUIInviteesViewTimeSlotCell *)self endDate];
    v6 = v3[2];
    v31 = 0;
    v32 = 0;
    v6(v3, startDate, endDate, &v32, &v31);
    v7 = v32;
    v8 = v31;

    v9 = 0;
    if ([(EKUIInviteesViewTimeSlotCell *)self _shouldDisplayTimeZone])
    {
      v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      timeZone = [(EKUIInviteesViewTimeSlotCell *)self timeZone];
      [v10 setTimeZone:timeZone];

      startDate2 = [(EKUIInviteesViewTimeSlotCell *)self startDate];
      v27 = [v10 components:252 fromDate:startDate2];

      endDate2 = [(EKUIInviteesViewTimeSlotCell *)self endDate];
      [v10 components:252 fromDate:endDate2];
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
      timeZone2 = [(EKUIInviteesViewTimeSlotCell *)self timeZone];
      v22 = CUIKShortTZString();
      v9 = [v20 stringWithFormat:@"%@ (%@)", v19, v22];

      v8 = v28;
      v7 = v29;
    }

    topTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self topTimeLabel];
    bottomTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self bottomTimeLabel];
    timeZoneTimeLabel = [(EKUIInviteesViewTimeSlotCell *)self timeZoneTimeLabel];
    [topTimeLabel setText:v7];
    [bottomTimeLabel setText:v8];
    [timeZoneTimeLabel setText:v9];
    timeTextColor = [(EKUIInviteesViewTimeSlotCell *)self timeTextColor];
    [topTimeLabel setTextColor:timeTextColor];
    [bottomTimeLabel setTextColor:timeTextColor];
    [timeZoneTimeLabel setTextColor:timeTextColor];
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
        participantsTextColor = [(EKUIInviteesViewTimeSlotCell *)self participantsTextColor];
        v14[0] = participantsTextColor;
        v13[1] = *MEMORY[0x1E69DB648];
        _participantsTextViewFont = [objc_opt_class() _participantsTextViewFont];
        v14[1] = _participantsTextViewFont;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
        v4 = [v5 initWithString:v7 attributes:v10];
      }

      else
      {
        busyParticipants = [(EKUIInviteesViewTimeSlotCell *)self busyParticipants];
        v6 = [busyParticipants sortedArrayWithOptions:16 usingComparator:&__block_literal_global_45];

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

    participantsTextView = [(EKUIInviteesViewTimeSlotCell *)self participantsTextView];
    [participantsTextView setAttributedText:v4];
  }
}

- (id)_generateStringForAllParticipants:(id)participants
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD40];
  participantsCopy = participants;
  v6 = objc_alloc_init(v4);
  participantsTextColor = [(EKUIInviteesViewTimeSlotCell *)self participantsTextColor];
  _interParticipantSpacing = [objc_opt_class() _interParticipantSpacing];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__EKUIInviteesViewTimeSlotCell__generateStringForAllParticipants___block_invoke;
  v17[3] = &unk_1E8441BD0;
  v9 = v6;
  v18 = v9;
  v19 = _interParticipantSpacing;
  selfCopy = self;
  v21 = participantsTextColor;
  v10 = participantsTextColor;
  v11 = _interParticipantSpacing;
  [participantsCopy enumerateObjectsUsingBlock:v17];

  v22 = *MEMORY[0x1E69DB648];
  _participantsTextViewFont = [objc_opt_class() _participantsTextViewFont];
  v23[0] = _participantsTextViewFont;
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

- (id)_generateStringForSomeParticipantsAndStampMoreBoundingRect:(id)rect
{
  v74[1] = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  participantsTextColor = [(EKUIInviteesViewTimeSlotCell *)self participantsTextColor];
  _interParticipantSpacing = [objc_opt_class() _interParticipantSpacing];
  _andMoreLeftSpacing = [objc_opt_class() _andMoreLeftSpacing];
  v6 = [rectCopy count];
  textViewForTextSizeTesting = [(EKUIInviteesViewTimeSlotCell *)self textViewForTextSizeTesting];
  [(EKUIInviteesViewTimeSlotCell *)self _preferredMaxLayoutWidth];
  [textViewForTextSizeTesting setFrame:{0.0, 0.0, v8, 0.0}];
  v73 = *MEMORY[0x1E69DB650];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v74[0] = systemBlueColor;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];

  textLayoutManager = [textViewForTextSizeTesting textLayoutManager];
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
  v41 = _interParticipantSpacing;
  v48 = v41;
  selfCopy = self;
  v40 = participantsTextColor;
  v50 = v40;
  v57 = v6 - 1;
  v58 = v6;
  v13 = v10;
  v51 = v13;
  v44 = _andMoreLeftSpacing;
  v52 = v44;
  v14 = textViewForTextSizeTesting;
  v53 = v14;
  v15 = textLayoutManager;
  v54 = v15;
  v55 = &v59;
  v56 = &v65;
  [rectCopy enumerateObjectsUsingBlock:v46];
  v16 = v60[5];
  v71 = *MEMORY[0x1E69DB648];
  _participantsTextViewFont = [objc_opt_class() _participantsTextViewFont];
  v72 = _participantsTextViewFont;
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
    textContainer = [v15 textContainer];
    layoutManager = [textContainer layoutManager];
    v27 = [layoutManager glyphIndexForCharacterAtIndex:v23 - v24];

    textContainer2 = [v15 textContainer];
    layoutManager2 = [textContainer2 layoutManager];
    numberOfGlyphs = [layoutManager2 numberOfGlyphs];

    textContainer3 = [v14 textContainer];
    textContainer4 = [v15 textContainer];
    layoutManager3 = [textContainer4 layoutManager];
    [layoutManager3 boundingRectForGlyphRange:v27 inTextContainer:{numberOfGlyphs - v27, textContainer3}];
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

+ (BOOL)_layoutManagerReportsExcessLines:(id)lines
{
  linesCopy = lines;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  textContainer = [linesCopy textContainer];
  layoutManager = [textContainer layoutManager];
  numberOfGlyphs = [layoutManager numberOfGlyphs];

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  textContainer2 = [linesCopy textContainer];
  layoutManager2 = [textContainer2 layoutManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__EKUIInviteesViewTimeSlotCell__layoutManagerReportsExcessLines___block_invoke;
  v10[3] = &unk_1E8441C20;
  v10[4] = v11;
  v10[5] = &v12;
  [layoutManager2 enumerateLineFragmentsForGlyphRange:0 usingBlock:{numberOfGlyphs, v10}];

  LOBYTE(numberOfGlyphs) = *(v13 + 24);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);

  return numberOfGlyphs;
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

- (id)_textForParticipant:(id)participant color:(id)color
{
  v21[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  participantCopy = participant;
  v8 = [(EKUIInviteesViewTimeSlotCell *)self _busyImageAttributedStringForColor:colorCopy];
  v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v8];
  v10 = objc_opt_class();
  displayName = [participantCopy displayName];

  v12 = [v10 _replaceSpacesWithNonBreakingSpaces:displayName];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  _nonBreakingSpace = [objc_opt_class() _nonBreakingSpace];
  v15 = [v13 initWithFormat:@"%@%@", _nonBreakingSpace, v12];

  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = *MEMORY[0x1E69DB650];
  v21[0] = colorCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  v18 = [v16 initWithString:v15 attributes:v17];
  [v9 appendAttributedString:v18];

  return v9;
}

- (id)_busyImageAttributedStringForColor:(id)color
{
  colorCopy = color;
  colorToBusyImageAttributedString = [(EKUIInviteesViewTimeSlotCell *)self colorToBusyImageAttributedString];

  if (!colorToBusyImageAttributedString)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKUIInviteesViewTimeSlotCell *)self setColorToBusyImageAttributedString:v6];
  }

  colorToBusyImageAttributedString2 = [(EKUIInviteesViewTimeSlotCell *)self colorToBusyImageAttributedString];
  v8 = [colorToBusyImageAttributedString2 objectForKey:colorCopy];

  if (!v8)
  {
    v9 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle" withConfiguration:v9];
    v11 = [v10 imageWithTintColor:colorCopy renderingMode:1];

    v12 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v11];
    v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
    colorToBusyImageAttributedString3 = [(EKUIInviteesViewTimeSlotCell *)self colorToBusyImageAttributedString];
    [colorToBusyImageAttributedString3 setObject:v8 forKey:colorCopy];
  }

  return v8;
}

- (BOOL)_textWillFit:(id)fit
{
  fitCopy = fit;
  labelForTextSizeTesting = [(EKUIInviteesViewTimeSlotCell *)self labelForTextSizeTesting];
  [labelForTextSizeTesting setText:fitCopy];

  [labelForTextSizeTesting sizeToFit];
  [labelForTextSizeTesting frame];
  v7 = v6;
  [(EKUIInviteesViewTimeSlotCell *)self _preferredMaxLayoutWidth];
  LOBYTE(self) = v7 <= v8;

  return self;
}

+ (id)_generateAndMoreStringWithCount:(unint64_t)count attributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = CUIKLocalizedStringForInteger();
  v6 = MEMORY[0x1E696AEC0];
  v7 = EventKitUIBundle();
  v8 = [v7 localizedStringForKey:@"& %@ more…" value:&stru_1F4EF6790 table:0];
  v9 = [v6 localizedStringWithFormat:v8, v5];

  v10 = [objc_opt_class() _replaceSpacesWithNonBreakingSpaces:v9];
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v10 attributes:attributesCopy];

  return v11;
}

+ (id)_replaceSpacesWithNonBreakingSpaces:(id)spaces
{
  spacesCopy = spaces;
  _nonBreakingSpace = [objc_opt_class() _nonBreakingSpace];
  v5 = [spacesCopy stringByReplacingOccurrencesOfString:@" " withString:_nonBreakingSpace];

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
  busyParticipants = [(EKUIInviteesViewTimeSlotCell *)self busyParticipants];
  v3 = busyParticipants;
  if (busyParticipants)
  {
    v4 = [busyParticipants count] == 0;
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
  layoutManager = [v3 layoutManager];
  [layoutManager setLimitsLayoutForSuspiciousContents:1];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setUserInteractionEnabled:0];
  [v3 setScrollEnabled:0];
  [v3 setSelectable:0];
  [v3 setEditable:0];
  textContainer = [v3 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v3 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v3;
}

+ (void)_setRequiredHuggingAndCompression:(id)compression
{
  compressionCopy = compression;
  LODWORD(v3) = 1148846080;
  [compressionCopy setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [compressionCopy setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [compressionCopy setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [compressionCopy setContentCompressionResistancePriority:1 forAxis:v6];
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