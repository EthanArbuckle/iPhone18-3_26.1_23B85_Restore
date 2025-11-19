@interface PHVoicemailMessageTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3;
- (BOOL)isAccessiblityConstraintsEnabled;
- (BOOL)messageToolbarShouldShowRTTButton:(id)a3;
- (BOOL)shouldShowRestrictedAlertView;
- (BOOL)shouldShowTranscriptView;
- (PHVoicemailMessageTableViewCellDelegate)delegate;
- (double)metadataViewLeadingLayoutConstraintConstant;
- (double)metadataViewWithoutUnreadIndicatorImageViewLeadingLayoutConstraintConstant;
- (double)playerControlsViewTimelineSliderTopLayoutConstraintConstant;
- (double)unreadIndicatorImageViewLeadingLayoutConstraintConstant;
- (double)unreadIndicatorImageViewTopLayoutConstraintConstant;
- (double)unreadIndicatorImageViewWidthLayoutConstraintConstant;
- (id)dimmedColor;
- (void)commonInit;
- (void)configureWithVoicemailMessageViewModel:(id)a3 expanded:(BOOL)a4 shouldGrayForeground:(BOOL)a5;
- (void)handleCollapseCellTapGesture:(id)a3;
- (void)hideUnreadIndicator;
- (void)loadConstraints;
- (void)loadContentView;
- (void)loadExpandedViewsIfNecessary;
- (void)messageMetadataView:(id)a3 didTapButtonType:(unint64_t)a4;
- (void)messageToolbar:(id)a3 handleActionForButtonType:(unint64_t)a4;
- (void)messageToolbarDidSelectRTTButton:(id)a3;
- (void)messageTranscriptView:(id)a3 didReceiveTapGesture:(id)a4;
- (void)messageTranscriptView:(id)a3 didReportFeedback:(unint64_t)a4;
- (void)messageTranscriptView:(id)a3 suggestionsDidReceiveTapGesture:(id)a4;
- (void)playbackControls:(id)a3 didRequestState:(int64_t)a4;
- (void)playerTimelineSlider:(id)a3 didChangeElapsedTime:(double)a4;
- (void)playerTimelineSliderScrubbingDidBegin:(id)a3;
- (void)playerTimelineSliderScrubbingDidCancel:(id)a3;
- (void)playerTimelineSliderScrubbingDidEnd:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setForegroundColor:(id)a3;
- (void)setItem:(id)a3;
- (void)setMaximumAllowedHeight:(double)a3;
- (void)setRead:(BOOL)a3;
- (void)setupCollapsedView;
- (void)setupExpandedView;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)unloadConstraints;
- (void)updateConstraintsConstants;
- (void)updateConstraintsForExpandedState:(BOOL)a3;
- (void)updateExpandedViewsWithViewModel:(id)a3;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation PHVoicemailMessageTableViewCell

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3
{
  v4 = a3;
  [a1 unreadIndicatorImageViewLeadingLayoutConstraintConstantForContentSizeCategory:v4];
  v6 = v5;
  [a1 unreadIndicatorImageViewWidthLayoutConstraintConstantForContentSizeCategory:v4];
  v8 = v6 + v7;
  [a1 metadataViewLeadingLayoutConstraintConstantForContentSizeCategory:v4];
  v10 = v9;

  v11 = v8 + v10;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  result.right = v14;
  result.bottom = v13;
  result.left = v11;
  result.top = v12;
  return result;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(PHVoicemailMessageTableViewCell *)self isEditing]!= a3)
  {
    v8.receiver = self;
    v8.super_class = PHVoicemailMessageTableViewCell;
    [(PHVoicemailMessageTableViewCell *)&v8 setEditing:v5 animated:v4];
    v7 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    [v7 setEditing:v5];

    if (v5)
    {
      [(PHVoicemailMessageTableViewCell *)self setSelectionStyle:3];
      [(PHVoicemailMessageTableViewCell *)self setExpanded:0 animated:v4];
    }
  }
}

- (void)willTransitionToState:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v3 willTransitionToState:a3];
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v3 commonInit];
  [(PHVoicemailMessageTableViewCell *)self setMaximumAllowedHeight:320.0];
}

- (void)loadContentView
{
  v21.receiver = self;
  v21.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v21 loadContentView];
  v3 = [(PHVoicemailMessageTableViewCell *)self contentView];
  [v3 setClipsToBounds:1];

  v4 = [(PHVoicemailMessageTableViewCell *)self contentView];
  v5 = [PHVoicemailMessageTableViewCellScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(PHVoicemailMessageTableViewCellScrollView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  contentScrollView = self->_contentScrollView;
  self->_contentScrollView = v9;

  [(PHVoicemailMessageTableViewCellScrollView *)self->_contentScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:self->_contentScrollView];
  v11 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  unreadIndicatorImageView = self->_unreadIndicatorImageView;
  self->_unreadIndicatorImageView = v11;

  v13 = +[UIImage telephonyUIUnreadIndicatorGlyphImage];
  [(UIImageView *)self->_unreadIndicatorImageView setImage:v13];

  v14 = +[UIColor systemBlueColor];
  [(UIImageView *)self->_unreadIndicatorImageView setTintColor:v14];

  [(UIImageView *)self->_unreadIndicatorImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHVoicemailMessageTableViewCellScrollView *)self->_contentScrollView addSubview:self->_unreadIndicatorImageView];
  v15 = [[VMMessageMetadataView alloc] initWithAccessibleLayout:[(PHVoicemailMessageTableViewCell *)self isAccessiblityConstraintsEnabled]];
  metadataView = self->_metadataView;
  self->_metadataView = v15;

  [(VMMessageMetadataView *)self->_metadataView setDelegate:self];
  [(VMMessageMetadataView *)self->_metadataView setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleCollapseCellTapGesture:"];
  foregroundViewTapGestureRecognizer = self->_foregroundViewTapGestureRecognizer;
  self->_foregroundViewTapGestureRecognizer = v17;

  v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleCollapseCellTapGesture:"];
  metadataViewTapGestureRecognizer = self->_metadataViewTapGestureRecognizer;
  self->_metadataViewTapGestureRecognizer = v19;

  [(UITapGestureRecognizer *)self->_metadataViewTapGestureRecognizer setEnabled:0];
  [(VMMessageMetadataView *)self->_metadataView addGestureRecognizer:self->_metadataViewTapGestureRecognizer];
  [(PHVoicemailMessageTableViewCellScrollView *)self->_contentScrollView addSubview:self->_metadataView];
}

- (void)loadExpandedViewsIfNecessary
{
  if (![(PHVoicemailMessageTableViewCell *)self isExpanded])
  {
    return;
  }

  v3 = &selRef_tableView_titleAlignmentForFooterInSection_;
  if (self->_voicemailTipView)
  {
    [(PHVoicemailMessageTableViewCellScrollView *)self->_contentScrollView addSubview:?];
    v4 = [(UIView *)self->_voicemailTipView leadingAnchor];
    v5 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v6 = [v5 contentLayoutGuide];
    v7 = [v6 leadingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewTrailingLayoutConstraintConstant];
    v8 = [v4 constraintEqualToAnchor:v7 constant:?];

    v9 = [(UIView *)self->_voicemailTipView trailingAnchor];
    v10 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v11 = [v10 contentLayoutGuide];
    v12 = [v11 trailingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewTrailingLayoutConstraintConstant];
    v14 = [v9 constraintEqualToAnchor:v12 constant:-v13];

    v15 = [(UIView *)self->_voicemailTipView topAnchor];
    v16 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v17 = [v16 contentLayoutGuide];
    v18 = [v17 topAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];

    v20 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v21 = [v20 topAnchor];
    v22 = [(UIView *)self->_voicemailTipView bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    v24 = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];

    if (v24)
    {
      v25 = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];
      v45 = v25;
      v26 = [NSArray arrayWithObjects:&v45 count:1];
      [NSLayoutConstraint deactivateConstraints:v26];
    }

    v44[0] = v19;
    v44[1] = v8;
    v44[2] = v14;
    v44[3] = v23;
    v27 = [NSArray arrayWithObjects:v44 count:4];
    [NSLayoutConstraint activateConstraints:v27];

    v3 = &selRef_tableView_titleAlignmentForFooterInSection_;
    goto LABEL_8;
  }

  v28 = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];

  if (v28)
  {
    v8 = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];
    v43 = v8;
    v14 = [NSArray arrayWithObjects:&v43 count:1];
    [NSLayoutConstraint activateConstraints:v14];
LABEL_8:
  }

  if (!self->_playerControlsView)
  {
    v29 = objc_alloc_init(VMPlayerControlsView);
    playerControlsView = self->_playerControlsView;
    self->_playerControlsView = v29;

    [(VMPlayerControlsView *)self->_playerControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [(PHVoicemailMessageTableViewCell *)self item];
    -[VMPlayerControlsView setEnabled:](self->_playerControlsView, "setEnabled:", [v31 showsPlayerControls]);

    v32 = [(PHVoicemailMessageTableViewCell *)self item];
    [v32 duration];
    [(VMPlayerControlsView *)self->_playerControlsView setDuration:?];

    [(VMPlayerControlsView *)self->_playerControlsView setDelegate:self];
    v33 = [(VMPlayerControlsView *)self->_playerControlsView timelineSlider];
    [v33 setDelegate:self];

    [*&self->TPTableViewCell_opaque[*(v3 + 553)] addSubview:self->_playerControlsView];
  }

  if (!self->_toolbar)
  {
    v34 = objc_alloc_init(VMMessageToolbar);
    toolbar = self->_toolbar;
    self->_toolbar = v34;

    [(VMMessageToolbar *)self->_toolbar setDelegate:self];
    [(VMMessageToolbar *)self->_toolbar setPlayerControlsView:self->_playerControlsView];
    [(VMMessageToolbar *)self->_toolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&self->TPTableViewCell_opaque[*(v3 + 553)] addSubview:self->_toolbar];
  }

  if (!self->_transcriptView)
  {
    v36 = objc_alloc_init(VMMessageTranscriptView);
    transcriptView = self->_transcriptView;
    self->_transcriptView = v36;

    [(VMMessageTranscriptView *)self->_transcriptView setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [(PHVoicemailMessageTableViewCell *)self item];
    v39 = [v38 transcriptViewModel];
    [(VMMessageTranscriptView *)self->_transcriptView setViewModel:v39];

    [(VMMessageTranscriptView *)self->_transcriptView setDelegate:self];
    LODWORD(v40) = 1148846080;
    [(VMMessageTranscriptView *)self->_transcriptView setContentCompressionResistancePriority:1 forAxis:v40];
    [*&self->TPTableViewCell_opaque[*(v3 + 553)] addSubview:self->_transcriptView];
  }

  if (!self->_restrictedView)
  {
    v41 = objc_alloc_init(VMMessageRestrictedView);
    restrictedView = self->_restrictedView;
    self->_restrictedView = v41;

    [(VMMessageRestrictedView *)self->_restrictedView setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&self->TPTableViewCell_opaque[*(v3 + 553)] addSubview:self->_restrictedView];
  }
}

- (void)loadConstraints
{
  v188.receiver = self;
  v188.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v188 loadConstraints];
  v3 = [(PHVoicemailMessageTableViewCell *)self initialConstraints];

  if (!v3)
  {
    v4 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v5 = [v4 bottomAnchor];
    v6 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v7 = [v6 contentLayoutGuide];
    v8 = [v7 bottomAnchor];
    v9 = [v5 constraintEqualToAnchor:v8];
    [(PHVoicemailMessageTableViewCell *)self setCollapsedBottomConstraint:v9];

    v10 = [(PHVoicemailMessageTableViewCell *)self contentView];
    v11 = [v10 heightAnchor];
    [(PHVoicemailMessageTableViewCell *)self maximumAllowedHeight];
    v12 = [v11 constraintLessThanOrEqualToConstant:?];
    LODWORD(v13) = 1148829696;
    v14 = [v12 withPriority:v13];
    [(PHVoicemailMessageTableViewCell *)self setMaximumHeightConstraint:v14];

    v15 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v16 = [v15 leadingAnchor];
    v17 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    v18 = [v17 trailingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewLeadingLayoutConstraintConstant];
    v19 = [v16 constraintEqualToAnchor:v18 constant:?];
    [(PHVoicemailMessageTableViewCell *)self setMetadataViewLeadingConstraint:v19];

    v20 = [(PHVoicemailMessageTableViewCell *)self voicemailTipView];

    v21 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v22 = [v21 topAnchor];
    if (v20)
    {
      v23 = [(PHVoicemailMessageTableViewCell *)self voicemailTipView];
      v24 = [v23 bottomAnchor];
      v25 = [v22 constraintEqualToAnchor:v24];
      [(PHVoicemailMessageTableViewCell *)self setMetadataViewTopConstraint:v25];
    }

    else
    {
      v23 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
      v24 = [v23 contentLayoutGuide];
      v25 = [v24 topAnchor];
      v26 = [v22 constraintEqualToAnchor:v25];
      [(PHVoicemailMessageTableViewCell *)self setMetadataViewTopConstraint:v26];
    }

    v186 = [(PHVoicemailMessageTableViewCell *)self contentView];
    v182 = [v186 heightAnchor];
    v184 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v180 = [v184 contentLayoutGuide];
    v178 = [v180 heightAnchor];
    v176 = [v182 constraintEqualToAnchor:v178];
    LODWORD(v27) = 1132068864;
    v174 = [v176 withPriority:v27];
    v190[0] = v174;
    v172 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v168 = [v172 leadingAnchor];
    v170 = [(PHVoicemailMessageTableViewCell *)self contentView];
    v166 = [v170 leadingAnchor];
    v164 = [v168 constraintEqualToAnchor:v166];
    v190[1] = v164;
    v162 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v158 = [v162 trailingAnchor];
    v160 = [(PHVoicemailMessageTableViewCell *)self contentView];
    v156 = [v160 trailingAnchor];
    v154 = [v158 constraintEqualToAnchor:v156];
    v190[2] = v154;
    v152 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v148 = [v152 topAnchor];
    v150 = [(PHVoicemailMessageTableViewCell *)self contentView];
    v146 = [v150 topAnchor];
    v144 = [v148 constraintEqualToAnchor:v146];
    v190[3] = v144;
    v142 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v138 = [v142 bottomAnchor];
    v140 = [(PHVoicemailMessageTableViewCell *)self contentView];
    v136 = [v140 bottomAnchor];
    v134 = [v138 constraintEqualToAnchor:v136];
    v190[4] = v134;
    v132 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v130 = [v132 contentLayoutGuide];
    v126 = [v130 widthAnchor];
    v128 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v124 = [v128 frameLayoutGuide];
    v122 = [v124 widthAnchor];
    v120 = [v126 constraintEqualToAnchor:v122];
    v190[5] = v120;
    v118 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    v112 = [v118 leadingAnchor];
    v116 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v114 = [v116 contentLayoutGuide];
    v110 = [v114 leadingAnchor];
    [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageViewLeadingLayoutConstraintConstant];
    v108 = [v112 constraintEqualToAnchor:v110 constant:?];
    v190[6] = v108;
    v106 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    v104 = [v106 widthAnchor];
    [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageViewWidthLayoutConstraintConstant];
    v102 = [v104 constraintEqualToConstant:?];
    v190[7] = v102;
    v100 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    v94 = [v100 topAnchor];
    v98 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v96 = [v98 titleLabel];
    v92 = [v96 firstBaselineAnchor];
    [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageViewTopLayoutConstraintConstant];
    v90 = [v94 constraintEqualToAnchor:v92 constant:-v28];
    v190[8] = v90;
    v88 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    v84 = [v88 heightAnchor];
    v86 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    v82 = [v86 widthAnchor];
    v80 = [v84 constraintEqualToAnchor:v82];
    v190[9] = v80;
    v78 = [(PHVoicemailMessageTableViewCell *)self metadataViewLeadingConstraint];
    v190[10] = v78;
    v76 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v29 = [v76 trailingAnchor];
    v30 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v31 = [v30 contentLayoutGuide];
    v32 = [v31 trailingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewTrailingLayoutConstraintConstant];
    v34 = [v29 constraintEqualToAnchor:v32 constant:-v33];
    v190[11] = v34;
    v35 = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];
    v190[12] = v35;
    v36 = [(PHVoicemailMessageTableViewCell *)self collapsedBottomConstraint];
    v190[13] = v36;
    v37 = [(PHVoicemailMessageTableViewCell *)self maximumHeightConstraint];
    v190[14] = v37;
    v38 = [NSArray arrayWithObjects:v190 count:15];
    [(PHVoicemailMessageTableViewCell *)self setInitialConstraints:v38];

    v39 = [(PHVoicemailMessageTableViewCell *)self initialConstraints];
    [NSLayoutConstraint activateConstraints:v39];
  }

  v40 = [(PHVoicemailMessageTableViewCell *)self expandedConstraints];
  if (v40)
  {
    goto LABEL_9;
  }

  v41 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];

  if (v41)
  {
    v42 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    v43 = [v42 bottomAnchor];
    v44 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v45 = [v44 contentLayoutGuide];
    v46 = [v45 bottomAnchor];
    v47 = [v43 constraintEqualToAnchor:v46];
    LODWORD(v48) = 1132068864;
    v49 = [v47 withPriority:v48];
    [(PHVoicemailMessageTableViewCell *)self setToolbarBottomConstraint:v49];

    v50 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    v51 = [v50 bottomAnchor];
    v52 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v53 = [v52 contentLayoutGuide];
    v54 = [v53 bottomAnchor];
    v55 = [v51 constraintEqualToAnchor:v54];
    LODWORD(v56) = 1132068864;
    v57 = [v55 withPriority:v56];
    [(PHVoicemailMessageTableViewCell *)self setTranscriptBottomConstraint:v57];

    v58 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    v59 = [v58 bottomAnchor];
    v60 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v61 = [v60 contentLayoutGuide];
    v62 = [v61 bottomAnchor];
    v63 = [v59 constraintEqualToAnchor:v62];
    LODWORD(v64) = 1132068864;
    v65 = [v63 withPriority:v64];
    [(PHVoicemailMessageTableViewCell *)self setRestrictedViewBottomConstraint:v65];

    v187 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    v183 = [v187 leftAnchor];
    v185 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v181 = [v185 leftAnchor];
    v179 = [v183 constraintEqualToAnchor:v181];
    v189[0] = v179;
    v177 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    v171 = [v177 rightAnchor];
    v175 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v173 = [v175 contentLayoutGuide];
    v169 = [v173 rightAnchor];
    [(PHVoicemailMessageTableViewCell *)self playerControlsViewRightLayoutConstraintConstant];
    v167 = [v171 constraintEqualToAnchor:v169 constant:-v66];
    v189[1] = v167;
    v165 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    v161 = [v165 topAnchor];
    v163 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v159 = [v163 bottomAnchor];
    v157 = [v161 constraintEqualToAnchor:v159];
    v189[2] = v157;
    v155 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    v151 = [v155 leadingAnchor];
    v153 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v149 = [v153 leadingAnchor];
    v147 = [v151 constraintEqualToAnchor:v149];
    v189[3] = v147;
    v145 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    v141 = [v145 trailingAnchor];
    v143 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v139 = [v143 trailingAnchor];
    v137 = [v141 constraintEqualToAnchor:v139];
    v189[4] = v137;
    v135 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    v131 = [v135 topAnchor];
    v133 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    v129 = [v133 bottomAnchor];
    v127 = [v131 constraintEqualToAnchor:v129];
    v189[5] = v127;
    v125 = [(PHVoicemailMessageTableViewCell *)self toolbarBottomConstraint];
    v189[6] = v125;
    v123 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    v119 = [v123 leadingAnchor];
    v121 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v117 = [v121 leadingAnchor];
    v115 = [v119 constraintEqualToAnchor:v117];
    v189[7] = v115;
    v113 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    v109 = [v113 trailingAnchor];
    v111 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v107 = [v111 trailingAnchor];
    v105 = [v109 constraintEqualToAnchor:v107];
    v189[8] = v105;
    v103 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    v99 = [v103 topAnchor];
    v101 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    v97 = [v101 bottomAnchor];
    v95 = [v99 constraintEqualToAnchor:v97];
    v189[9] = v95;
    v93 = [(PHVoicemailMessageTableViewCell *)self transcriptBottomConstraint];
    v189[10] = v93;
    v91 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    v87 = [v91 leadingAnchor];
    v89 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v85 = [v89 leadingAnchor];
    v83 = [v87 constraintEqualToAnchor:v85];
    v189[11] = v83;
    v81 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    v77 = [v81 trailingAnchor];
    v79 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v67 = [v79 trailingAnchor];
    v68 = [v77 constraintEqualToAnchor:v67];
    v189[12] = v68;
    v69 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    v70 = [v69 topAnchor];
    v71 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    v72 = [v71 bottomAnchor];
    v73 = [v70 constraintEqualToAnchor:v72];
    v189[13] = v73;
    v74 = [(PHVoicemailMessageTableViewCell *)self restrictedViewBottomConstraint];
    v189[14] = v74;
    v75 = [NSArray arrayWithObjects:v189 count:15];
    [(PHVoicemailMessageTableViewCell *)self setExpandedConstraints:v75];

    v40 = [(PHVoicemailMessageTableViewCell *)self expandedConstraints];
    [NSLayoutConstraint activateConstraints:v40];
LABEL_9:
  }

  [(PHVoicemailMessageTableViewCell *)self updateConstraintsForExpandedState:[(PHVoicemailMessageTableViewCell *)self isExpanded]];
}

- (void)hideUnreadIndicator
{
  v3 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
  [v3 setHidden:1];

  v4 = [(PHVoicemailMessageTableViewCell *)self metadataViewLeadingConstraint];
  v16 = v4;
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  [NSLayoutConstraint deactivateConstraints:v5];

  v6 = [(PHVoicemailMessageTableViewCell *)self hideUnreadIndicatorMetadataViewLeadingConstraint];

  if (!v6)
  {
    v7 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    v8 = [v7 leadingAnchor];
    v9 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    v10 = [v9 contentLayoutGuide];
    v11 = [v10 leadingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewWithoutUnreadIndicatorImageViewLeadingLayoutConstraintConstant];
    v12 = [v8 constraintEqualToAnchor:v11 constant:?];
    v15 = v12;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [(PHVoicemailMessageTableViewCell *)self setHideUnreadIndicatorMetadataViewLeadingConstraint:v13];

    v14 = [(PHVoicemailMessageTableViewCell *)self hideUnreadIndicatorMetadataViewLeadingConstraint];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

- (void)updateConstraintsForExpandedState:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHVoicemailMessageTableViewCell *)self toolbarBottomConstraint];
  LODWORD(v6) = 1132068864;
  [v5 setPriority:v6];

  v7 = [(PHVoicemailMessageTableViewCell *)self transcriptBottomConstraint];
  LODWORD(v8) = 1132068864;
  [v7 setPriority:v8];

  v9 = [(PHVoicemailMessageTableViewCell *)self restrictedViewBottomConstraint];
  LODWORD(v10) = 1132068864;
  [v9 setPriority:v10];

  v11 = [(PHVoicemailMessageTableViewCell *)self collapsedBottomConstraint];
  LODWORD(v12) = 1132068864;
  [v11 setPriority:v12];

  if (v3)
  {
    if ([(PHVoicemailMessageTableViewCell *)self shouldShowRestrictedAlertView])
    {
      v13 = [(PHVoicemailMessageTableViewCell *)self restrictedViewBottomConstraint];
    }

    else
    {
      if ([(PHVoicemailMessageTableViewCell *)self shouldShowTranscriptView])
      {
        [(PHVoicemailMessageTableViewCell *)self transcriptBottomConstraint];
      }

      else
      {
        [(PHVoicemailMessageTableViewCell *)self toolbarBottomConstraint];
      }
      v13 = ;
    }
  }

  else
  {
    v13 = [(PHVoicemailMessageTableViewCell *)self collapsedBottomConstraint];
  }

  LODWORD(v14) = 1148846080;
  v15 = v13;
  [v13 setPriority:v14];
}

- (void)unloadConstraints
{
  v9.receiver = self;
  v9.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v9 unloadConstraints];
  v3 = [(PHVoicemailMessageTableViewCell *)self initialConstraints];

  if (v3)
  {
    v4 = [(PHVoicemailMessageTableViewCell *)self initialConstraints];
    [NSLayoutConstraint deactivateConstraints:v4];

    [(PHVoicemailMessageTableViewCell *)self setInitialConstraints:0];
  }

  v5 = [(PHVoicemailMessageTableViewCell *)self expandedConstraints];

  if (v5)
  {
    v6 = [(PHVoicemailMessageTableViewCell *)self expandedConstraints];
    [NSLayoutConstraint deactivateConstraints:v6];

    [(PHVoicemailMessageTableViewCell *)self setExpandedConstraints:0];
  }

  v7 = [(PHVoicemailMessageTableViewCell *)self hideUnreadIndicatorMetadataViewLeadingConstraint];

  if (v7)
  {
    v8 = [(PHVoicemailMessageTableViewCell *)self hideUnreadIndicatorMetadataViewLeadingConstraint];
    [NSLayoutConstraint deactivateConstraints:v8];

    [(PHVoicemailMessageTableViewCell *)self setHideUnreadIndicatorMetadataViewLeadingConstraint:0];
  }
}

- (void)updateConstraintsConstants
{
  v5.receiver = self;
  v5.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v5 updateConstraintsConstants];
  v3 = [(PHVoicemailMessageTableViewCell *)self isAccessiblityConstraintsEnabled];
  v4 = [(PHVoicemailMessageTableViewCell *)self metadataView];
  [v4 setLayoutIsAccessible:v3];
}

- (void)setupCollapsedView
{
  [(PHVoicemailMessageTableViewCell *)self updateConstraintsForExpandedState:0];
  v3 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
  [v3 setHidden:1];
}

- (void)setupExpandedView
{
  v3 = [(PHVoicemailMessageTableViewCell *)self shouldShowTranscriptView];
  v4 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
  [v4 setHidden:v3 ^ 1];

  v5 = [(PHVoicemailMessageTableViewCell *)self shouldShowRestrictedAlertView];
  v6 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
  [v6 setHidden:v5 ^ 1];

  v7 = [(PHVoicemailMessageTableViewCell *)self shouldShowRestrictedAlertView];
  v8 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
  [v8 setEnabled:v7 ^ 1];

  v9 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
  [v9 setHidden:0];

  [(PHVoicemailMessageTableViewCell *)self updateConstraintsForExpandedState:1];
}

- (BOOL)shouldShowRestrictedAlertView
{
  v2 = [(PHVoicemailMessageTableViewCell *)self item];
  v3 = [v2 showsRestrictedAlertView];

  return v3;
}

- (BOOL)shouldShowTranscriptView
{
  v3 = [(PHVoicemailMessageTableViewCell *)self item];

  if (v3)
  {
    v4 = [(PHVoicemailMessageTableViewCell *)self item];
    if ([v4 showsTranscriptionView])
    {
      v5 = [(PHVoicemailMessageTableViewCell *)self item];
      if ([v5 showsRestrictedAlertView])
      {
        v6 = 0;
      }

      else
      {
        v9 = [(PHVoicemailMessageTableViewCell *)self item];
        v10 = [v9 transcriptViewModel];
        v6 = [v10 confidence] != 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v11 = PHDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 67109120;
      v20[1] = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Should show transcript = %d.", v20, 8u);
    }

    if (v6)
    {
      return 1;
    }

    v13 = [(PHVoicemailMessageTableViewCell *)self item];
    v14 = [v13 showsTranscriptionView];

    if (v14)
    {
      v15 = [(PHVoicemailMessageTableViewCell *)self item];
      v16 = [v15 showsRestrictedAlertView];

      if (v16)
      {
        v7 = PHDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20[0]) = 0;
          v8 = "Cannot show transcript view due to alert view.";
          goto LABEL_20;
        }
      }

      else
      {
        v17 = [(PHVoicemailMessageTableViewCell *)self item];
        v18 = [v17 transcriptViewModel];
        v19 = [v18 confidence];

        if (v19)
        {
          return 0;
        }

        v7 = PHDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(PHVoicemailMessageTableViewCell *)v7 shouldShowTranscriptView];
        }
      }
    }

    else
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20[0]) = 0;
        v8 = "Voice mail did not request to display a transcript.";
        goto LABEL_20;
      }
    }
  }

  else
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20[0]) = 0;
      v8 = "No voicemail item.  Cannot show transcript view.";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v20, 2u);
    }
  }

  return 0;
}

- (void)configureWithVoicemailMessageViewModel:(id)a3 expanded:(BOOL)a4 shouldGrayForeground:(BOOL)a5
{
  v6 = a4;
  [(PHVoicemailMessageTableViewCell *)self setItem:a3];
  [(PHVoicemailMessageTableViewCell *)self setExpanded:v6];
  if (a5)
  {
    v8 = [(PHVoicemailMessageTableViewCell *)self dimmedColor];
    [(PHVoicemailMessageTableViewCell *)self setForegroundColor:v8];
  }

  else
  {
    [(PHVoicemailMessageTableViewCell *)self setForegroundColor:0];
  }

  v9 = [(PHVoicemailMessageTableViewCell *)self item];
  -[PHVoicemailMessageTableViewCell setRead:](self, "setRead:", [v9 isRead]);
}

- (void)setForegroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v7 setForegroundColor:?];
  if (a3)
  {
    v5 = [(PHVoicemailMessageTableViewCell *)self foregroundView];
    v6 = [(PHVoicemailMessageTableViewCell *)self foregroundViewTapGestureRecognizer];
    [v5 addGestureRecognizer:v6];
  }
}

- (id)dimmedColor
{
  v2 = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  if ([v2 userInterfaceStyle] == 2)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor systemMidGrayColor];
  }
  v3 = ;
  v4 = [v3 colorWithAlphaComponent:0.600000024];

  return v4;
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->_expanded = a3;
  if (a3)
  {
    [(PHVoicemailMessageTableViewCell *)self tipKitStartObservation];
  }

  else
  {
    [(PHVoicemailMessageTableViewCell *)self tipKitStopObservation];
  }

  [(PHVoicemailMessageTableViewCell *)self loadExpandedViewsIfNecessary];
  v7 = [(PHVoicemailMessageTableViewCell *)self item];
  [(PHVoicemailMessageTableViewCell *)self updateExpandedViewsWithViewModel:v7];

  [(PHVoicemailMessageTableViewCell *)self loadConstraints];
  if ([(PHVoicemailMessageTableViewCell *)self shouldShowRestrictedAlertView]&& ([(PHVoicemailMessageTableViewCell *)self restrictedView], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(PHVoicemailMessageTableViewCell *)self item];
    v10 = [v9 localizedAttributedRestrictedAlertTitle];
    v11 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    [v11 setLocalizedAttributedRestrictedAlertTitle:v10];

    v12 = 1;
  }

  else
  {
    v9 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    [v9 setLocalizedAttributedRestrictedAlertTitle:0];
    v12 = 0;
  }

  v13 = [(PHVoicemailMessageTableViewCell *)self toolbar];
  [v13 setRestricted:v12];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __56__PHVoicemailMessageTableViewCell_setExpanded_animated___block_invoke;
  v20[3] = &unk_100285120;
  v20[4] = self;
  v21 = v5;
  v14 = objc_retainBlock(v20);
  v15 = v14;
  if (v4)
  {
    [UIView animateWithDuration:v14 animations:0.300000012];
  }

  else
  {
    (v14[2])(v14);
  }

  if (v5)
  {
    [(PHVoicemailMessageTableViewCell *)self setupExpandedView];
    [(PHVoicemailMessageTableViewCell *)self setSelectionStyle:0];
  }

  else
  {
    [(PHVoicemailMessageTableViewCell *)self setupCollapsedView];
    [(PHVoicemailMessageTableViewCell *)self setSelectionStyle:3];
    v16 = [(PHVoicemailMessageTableViewCell *)self transcriptView];

    if (v16)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __56__PHVoicemailMessageTableViewCell_setExpanded_animated___block_invoke_2;
      v19[3] = &unk_100284FD0;
      v19[4] = self;
      v17 = objc_retainBlock(v19);
      v18 = v17;
      if (v4)
      {
        [UIView animateWithDuration:v17 animations:0.300000012];
      }

      else
      {
        (v17[2])(v17);
      }
    }
  }
}

void __56__PHVoicemailMessageTableViewCell_setExpanded_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) metadataView];
  [v3 setExpanded:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) metadataViewTapGestureRecognizer];
  [v5 setEnabled:v4];
}

id __56__PHVoicemailMessageTableViewCell_setExpanded_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriptView];
  [v2 setNeedsUpdateConstraints];

  [*(a1 + 32) setNeedsUpdateConstraints];
  v3 = [*(a1 + 32) transcriptView];
  [v3 layoutIfNeeded];

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

- (void)setRead:(BOOL)a3
{
  v3 = a3;
  self->_read = a3;
  v4 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
  v6 = v4;
  v5 = 1.0;
  if (v3)
  {
    v5 = 0.0;
  }

  [v4 setAlpha:v5];
}

- (void)setItem:(id)a3
{
  v5 = a3;
  if (self->_item != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_item, a3);
    v6 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    [v6 configureWithViewModel:v7];

    v5 = [(PHVoicemailMessageTableViewCell *)self updateExpandedViewsWithViewModel:v7];
  }

  _objc_release_x2(v5);
}

- (void)updateExpandedViewsWithViewModel:(id)a3
{
  v16 = a3;
  v4 = [(PHVoicemailMessageTableViewCell *)self transcriptView];

  if (v4)
  {
    v5 = [v16 transcriptViewModel];
    v6 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    [v6 setViewModel:v5];
  }

  v7 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];

  if (v7)
  {
    [v16 duration];
    v9 = v8;
    v10 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    [v10 setDuration:v9];
  }

  v11 = [v16 isDeleted];
  v12 = [(PHVoicemailMessageTableViewCell *)self toolbar];
  v13 = [v12 trashButton];
  v14 = v13;
  if (v11)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  [v13 setButtonType:v15 enabled:1];
}

- (void)setMaximumAllowedHeight:(double)a3
{
  self->_maximumAllowedHeight = a3;
  v4 = [(PHVoicemailMessageTableViewCell *)self maximumHeightConstraint];
  [v4 setConstant:a3];
}

- (BOOL)isAccessiblityConstraintsEnabled
{
  v2 = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  v3 = [v2 isPreferredContentSizeCategoryAccessible];

  return v3;
}

- (double)metadataViewLeadingLayoutConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 metadataViewLeadingLayoutConstraintConstantForContentSizeCategory:v5];
  v7 = v6;

  return v7;
}

- (double)playerControlsViewTimelineSliderTopLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:24.0];
    v7 = v6;
  }

  else
  {
    v7 = 24.0;
  }

  return v7;
}

- (double)metadataViewWithoutUnreadIndicatorImageViewLeadingLayoutConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 metadataViewWithoutUnreadIndicatorImageViewLeadingLayoutConstraintConstant:v5];
  v7 = v6;

  return v7;
}

- (double)unreadIndicatorImageViewLeadingLayoutConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 unreadIndicatorImageViewLeadingLayoutConstraintConstantForContentSizeCategory:v5];
  v7 = v6;

  return v7;
}

- (double)unreadIndicatorImageViewTopLayoutConstraintConstant
{
  v2 = [(PHVoicemailMessageTableViewCell *)self metadataView];
  v3 = [v2 titleLabel];
  v4 = [v3 font];
  [v4 capHeight];
  v6 = v5;

  return v6;
}

- (double)unreadIndicatorImageViewWidthLayoutConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 unreadIndicatorImageViewWidthLayoutConstraintConstantForContentSizeCategory:v5];
  v7 = v6;

  return v7;
}

- (void)handleCollapseCellTapGesture:(id)a3
{
  v9 = a3;
  v4 = [(PHVoicemailMessageTableViewCell *)self metadataViewTapGestureRecognizer];
  if (v4 == v9)
  {
  }

  else
  {
    v5 = [(PHVoicemailMessageTableViewCell *)self foregroundViewTapGestureRecognizer];

    if (v5 != v9)
    {
      goto LABEL_7;
    }
  }

  v6 = [(PHVoicemailMessageTableViewCell *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PHVoicemailMessageTableViewCell *)self delegate];
    [v8 voicemailMessageCellDidTapToCollapse:self];
  }

LABEL_7:
}

- (void)messageMetadataView:(id)a3 didTapButtonType:(unint64_t)a4
{
  v13 = [(PHVoicemailMessageTableViewCell *)self _tableView];
  v6 = [v13 indexPathForCell:self];
  v7 = v6;
  if (a4 == 1)
  {
    if (v6)
    {
      v11 = [(PHVoicemailMessageTableViewCell *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v10 = [(PHVoicemailMessageTableViewCell *)self delegate];
        [v10 voicemailMessageTableViewCell:self actionButtonTappedForRowWithIndexPath:v7];
        goto LABEL_9;
      }
    }
  }

  else if (a4 == 2)
  {
    if (v6)
    {
      v8 = [v13 delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [v13 delegate];
        [v10 tableView:v13 accessoryButtonTappedForRowWithIndexPath:v7];
LABEL_9:
      }
    }
  }
}

- (void)playbackControls:(id)a3 didRequestState:(int64_t)a4
{
  v6 = [(PHVoicemailMessageTableViewCell *)self delegate];
  [v6 voicemailMessageTableViewCell:self didRequestPlayState:a4];
}

- (void)playerTimelineSliderScrubbingDidBegin:(id)a3
{
  v4 = [(PHVoicemailMessageTableViewCell *)self delegate];
  [v4 voicemailMessageTableViewCellDidBeginScrubbing:self];
}

- (void)playerTimelineSliderScrubbingDidEnd:(id)a3
{
  v4 = [(PHVoicemailMessageTableViewCell *)self delegate];
  [v4 voicemailMessageTableViewCellDidEndScrubbing:self];
}

- (void)playerTimelineSliderScrubbingDidCancel:(id)a3
{
  v4 = [(PHVoicemailMessageTableViewCell *)self delegate];
  [v4 voicemailMessageTableViewCellDidCancelScrubbing:self];
}

- (void)playerTimelineSlider:(id)a3 didChangeElapsedTime:(double)a4
{
  v6 = [(PHVoicemailMessageTableViewCell *)self delegate];
  [v6 voicemailMessageTableViewCell:self didChangeElapsedTime:a4];
}

- (void)messageTranscriptView:(id)a3 didReceiveTapGesture:(id)a4
{
  v5 = a4;
  v6 = [(PHVoicemailMessageTableViewCell *)self delegate];
  [v6 voicemailMessageTableViewCell:self didReceiveTranscriptTapGesture:v5];
}

- (void)messageTranscriptView:(id)a3 didReportFeedback:(unint64_t)a4
{
  v6 = [(PHVoicemailMessageTableViewCell *)self delegate];
  [v6 voicemailMessageTableViewCell:self didReceiveTranscriptFeedback:a4];
}

- (void)messageTranscriptView:(id)a3 suggestionsDidReceiveTapGesture:(id)a4
{
  v5 = a4;
  v6 = [(PHVoicemailMessageTableViewCell *)self delegate];
  [v6 voicemailMessageTableViewCell:self suggestionsDidReceiveTapGesture:v5];
}

- (void)messageToolbar:(id)a3 handleActionForButtonType:(unint64_t)a4
{
  v15 = [(PHVoicemailMessageTableViewCell *)self _tableView];
  v6 = [v15 indexPathForCell:self];
  v7 = v6;
  switch(a4)
  {
    case 3uLL:
      if (v6)
      {
        v13 = [(PHVoicemailMessageTableViewCell *)self delegate];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v10 = [(PHVoicemailMessageTableViewCell *)self delegate];
          [v10 voicemailMessageTableViewCell:self moveButtonTappedForRowWithIndexPath:v7];
          goto LABEL_13;
        }
      }

      break;
    case 2uLL:
      if (v6)
      {
        v11 = [(PHVoicemailMessageTableViewCell *)self delegate];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          v10 = [(PHVoicemailMessageTableViewCell *)self delegate];
          [v10 voicemailMessageTableViewCell:self dialRequestButtonTappedForRowWithIndexPath:v7];
          goto LABEL_13;
        }
      }

      break;
    case 1uLL:
      if (v6)
      {
        v8 = [(PHVoicemailMessageTableViewCell *)self delegate];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = [(PHVoicemailMessageTableViewCell *)self delegate];
          [v10 voicemailMessageTableViewCell:self audioRouteButtonTappedForRowWithIndexPath:v7];
LABEL_13:
        }
      }

      break;
  }
}

- (BOOL)messageToolbarShouldShowRTTButton:(id)a3
{
  if (!TUCallScreeningRTTEnabled())
  {
    return 0;
  }

  v4 = [(PHVoicemailMessageTableViewCell *)self _tableView];
  v5 = [v4 indexPathForCell:self];
  if (v5 && ([(PHVoicemailMessageTableViewCell *)self delegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
  {
    v8 = [(PHVoicemailMessageTableViewCell *)self delegate];
    v9 = [v8 voicemailMessageTableViewCell:self shouldShowRTTButtonForRowWithIndexPath:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)messageToolbarDidSelectRTTButton:(id)a3
{
  v8 = [(PHVoicemailMessageTableViewCell *)self _tableView];
  v4 = [v8 indexPathForCell:self];
  if (v4)
  {
    v5 = [(PHVoicemailMessageTableViewCell *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PHVoicemailMessageTableViewCell *)self delegate];
      [v7 voicemailMessageTableViewCell:self rttButtonTappedForRowWithIndexPath:v4];
    }
  }
}

- (PHVoicemailMessageTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tipKitStartObservation
{
  v2 = self;
  PHVoicemailMessageTableViewCell.tipKitStartObservation()();
}

- (void)tipKitStopObservation
{
  v2 = self;
  PHVoicemailMessageTableViewCell.tipKitStopObservation()();
}

@end