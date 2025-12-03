@interface PHVoicemailMessageTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category;
- (BOOL)isAccessiblityConstraintsEnabled;
- (BOOL)messageToolbarShouldShowRTTButton:(id)button;
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
- (void)configureWithVoicemailMessageViewModel:(id)model expanded:(BOOL)expanded shouldGrayForeground:(BOOL)foreground;
- (void)handleCollapseCellTapGesture:(id)gesture;
- (void)hideUnreadIndicator;
- (void)loadConstraints;
- (void)loadContentView;
- (void)loadExpandedViewsIfNecessary;
- (void)messageMetadataView:(id)view didTapButtonType:(unint64_t)type;
- (void)messageToolbar:(id)toolbar handleActionForButtonType:(unint64_t)type;
- (void)messageToolbarDidSelectRTTButton:(id)button;
- (void)messageTranscriptView:(id)view didReceiveTapGesture:(id)gesture;
- (void)messageTranscriptView:(id)view didReportFeedback:(unint64_t)feedback;
- (void)messageTranscriptView:(id)view suggestionsDidReceiveTapGesture:(id)gesture;
- (void)playbackControls:(id)controls didRequestState:(int64_t)state;
- (void)playerTimelineSlider:(id)slider didChangeElapsedTime:(double)time;
- (void)playerTimelineSliderScrubbingDidBegin:(id)begin;
- (void)playerTimelineSliderScrubbingDidCancel:(id)cancel;
- (void)playerTimelineSliderScrubbingDidEnd:(id)end;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setForegroundColor:(id)color;
- (void)setItem:(id)item;
- (void)setMaximumAllowedHeight:(double)height;
- (void)setRead:(BOOL)read;
- (void)setupCollapsedView;
- (void)setupExpandedView;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)unloadConstraints;
- (void)updateConstraintsConstants;
- (void)updateConstraintsForExpandedState:(BOOL)state;
- (void)updateExpandedViewsWithViewModel:(id)model;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation PHVoicemailMessageTableViewCell

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category
{
  categoryCopy = category;
  [self unreadIndicatorImageViewLeadingLayoutConstraintConstantForContentSizeCategory:categoryCopy];
  v6 = v5;
  [self unreadIndicatorImageViewWidthLayoutConstraintConstantForContentSizeCategory:categoryCopy];
  v8 = v6 + v7;
  [self metadataViewLeadingLayoutConstraintConstantForContentSizeCategory:categoryCopy];
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(PHVoicemailMessageTableViewCell *)self isEditing]!= editing)
  {
    v8.receiver = self;
    v8.super_class = PHVoicemailMessageTableViewCell;
    [(PHVoicemailMessageTableViewCell *)&v8 setEditing:editingCopy animated:animatedCopy];
    metadataView = [(PHVoicemailMessageTableViewCell *)self metadataView];
    [metadataView setEditing:editingCopy];

    if (editingCopy)
    {
      [(PHVoicemailMessageTableViewCell *)self setSelectionStyle:3];
      [(PHVoicemailMessageTableViewCell *)self setExpanded:0 animated:animatedCopy];
    }
  }
}

- (void)willTransitionToState:(unint64_t)state
{
  v3.receiver = self;
  v3.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v3 willTransitionToState:state];
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
  contentView = [(PHVoicemailMessageTableViewCell *)self contentView];
  [contentView setClipsToBounds:1];

  contentView2 = [(PHVoicemailMessageTableViewCell *)self contentView];
  v5 = [PHVoicemailMessageTableViewCellScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(PHVoicemailMessageTableViewCellScrollView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  contentScrollView = self->_contentScrollView;
  self->_contentScrollView = height;

  [(PHVoicemailMessageTableViewCellScrollView *)self->_contentScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView2 addSubview:self->_contentScrollView];
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
    leadingAnchor = [(UIView *)self->_voicemailTipView leadingAnchor];
    contentScrollView = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide = [contentScrollView contentLayoutGuide];
    leadingAnchor2 = [contentLayoutGuide leadingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewTrailingLayoutConstraintConstant];
    metadataViewTopConstraint4 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

    trailingAnchor = [(UIView *)self->_voicemailTipView trailingAnchor];
    contentScrollView2 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide2 = [contentScrollView2 contentLayoutGuide];
    trailingAnchor2 = [contentLayoutGuide2 trailingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewTrailingLayoutConstraintConstant];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v13];

    topAnchor = [(UIView *)self->_voicemailTipView topAnchor];
    contentScrollView3 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide3 = [contentScrollView3 contentLayoutGuide];
    topAnchor2 = [contentLayoutGuide3 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];

    metadataView = [(PHVoicemailMessageTableViewCell *)self metadataView];
    topAnchor3 = [metadataView topAnchor];
    bottomAnchor = [(UIView *)self->_voicemailTipView bottomAnchor];
    v23 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];

    metadataViewTopConstraint = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];

    if (metadataViewTopConstraint)
    {
      metadataViewTopConstraint2 = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];
      v45 = metadataViewTopConstraint2;
      v26 = [NSArray arrayWithObjects:&v45 count:1];
      [NSLayoutConstraint deactivateConstraints:v26];
    }

    v44[0] = v19;
    v44[1] = metadataViewTopConstraint4;
    v44[2] = v14;
    v44[3] = v23;
    v27 = [NSArray arrayWithObjects:v44 count:4];
    [NSLayoutConstraint activateConstraints:v27];

    v3 = &selRef_tableView_titleAlignmentForFooterInSection_;
    goto LABEL_8;
  }

  metadataViewTopConstraint3 = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];

  if (metadataViewTopConstraint3)
  {
    metadataViewTopConstraint4 = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];
    v43 = metadataViewTopConstraint4;
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
    item = [(PHVoicemailMessageTableViewCell *)self item];
    -[VMPlayerControlsView setEnabled:](self->_playerControlsView, "setEnabled:", [item showsPlayerControls]);

    item2 = [(PHVoicemailMessageTableViewCell *)self item];
    [item2 duration];
    [(VMPlayerControlsView *)self->_playerControlsView setDuration:?];

    [(VMPlayerControlsView *)self->_playerControlsView setDelegate:self];
    timelineSlider = [(VMPlayerControlsView *)self->_playerControlsView timelineSlider];
    [timelineSlider setDelegate:self];

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
    item3 = [(PHVoicemailMessageTableViewCell *)self item];
    transcriptViewModel = [item3 transcriptViewModel];
    [(VMMessageTranscriptView *)self->_transcriptView setViewModel:transcriptViewModel];

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
  initialConstraints = [(PHVoicemailMessageTableViewCell *)self initialConstraints];

  if (!initialConstraints)
  {
    metadataView = [(PHVoicemailMessageTableViewCell *)self metadataView];
    bottomAnchor = [metadataView bottomAnchor];
    contentScrollView = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide = [contentScrollView contentLayoutGuide];
    bottomAnchor2 = [contentLayoutGuide bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(PHVoicemailMessageTableViewCell *)self setCollapsedBottomConstraint:v9];

    contentView = [(PHVoicemailMessageTableViewCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    [(PHVoicemailMessageTableViewCell *)self maximumAllowedHeight];
    v12 = [heightAnchor constraintLessThanOrEqualToConstant:?];
    LODWORD(v13) = 1148829696;
    v14 = [v12 withPriority:v13];
    [(PHVoicemailMessageTableViewCell *)self setMaximumHeightConstraint:v14];

    metadataView2 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    leadingAnchor = [metadataView2 leadingAnchor];
    unreadIndicatorImageView = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    trailingAnchor = [unreadIndicatorImageView trailingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewLeadingLayoutConstraintConstant];
    v19 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:?];
    [(PHVoicemailMessageTableViewCell *)self setMetadataViewLeadingConstraint:v19];

    voicemailTipView = [(PHVoicemailMessageTableViewCell *)self voicemailTipView];

    metadataView3 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    topAnchor = [metadataView3 topAnchor];
    if (voicemailTipView)
    {
      voicemailTipView2 = [(PHVoicemailMessageTableViewCell *)self voicemailTipView];
      bottomAnchor3 = [voicemailTipView2 bottomAnchor];
      topAnchor2 = [topAnchor constraintEqualToAnchor:bottomAnchor3];
      [(PHVoicemailMessageTableViewCell *)self setMetadataViewTopConstraint:topAnchor2];
    }

    else
    {
      voicemailTipView2 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
      bottomAnchor3 = [voicemailTipView2 contentLayoutGuide];
      topAnchor2 = [bottomAnchor3 topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [(PHVoicemailMessageTableViewCell *)self setMetadataViewTopConstraint:v26];
    }

    contentView2 = [(PHVoicemailMessageTableViewCell *)self contentView];
    heightAnchor2 = [contentView2 heightAnchor];
    contentScrollView2 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide2 = [contentScrollView2 contentLayoutGuide];
    heightAnchor3 = [contentLayoutGuide2 heightAnchor];
    v176 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    LODWORD(v27) = 1132068864;
    v174 = [v176 withPriority:v27];
    v190[0] = v174;
    contentScrollView3 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    leadingAnchor2 = [contentScrollView3 leadingAnchor];
    contentView3 = [(PHVoicemailMessageTableViewCell *)self contentView];
    leadingAnchor3 = [contentView3 leadingAnchor];
    v164 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v190[1] = v164;
    contentScrollView4 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    trailingAnchor2 = [contentScrollView4 trailingAnchor];
    contentView4 = [(PHVoicemailMessageTableViewCell *)self contentView];
    trailingAnchor3 = [contentView4 trailingAnchor];
    v154 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v190[2] = v154;
    contentScrollView5 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    topAnchor3 = [contentScrollView5 topAnchor];
    contentView5 = [(PHVoicemailMessageTableViewCell *)self contentView];
    topAnchor4 = [contentView5 topAnchor];
    v144 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v190[3] = v144;
    contentScrollView6 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    bottomAnchor4 = [contentScrollView6 bottomAnchor];
    contentView6 = [(PHVoicemailMessageTableViewCell *)self contentView];
    bottomAnchor5 = [contentView6 bottomAnchor];
    v134 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v190[4] = v134;
    contentScrollView7 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide3 = [contentScrollView7 contentLayoutGuide];
    widthAnchor = [contentLayoutGuide3 widthAnchor];
    contentScrollView8 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    frameLayoutGuide = [contentScrollView8 frameLayoutGuide];
    widthAnchor2 = [frameLayoutGuide widthAnchor];
    v120 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v190[5] = v120;
    unreadIndicatorImageView2 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    leadingAnchor4 = [unreadIndicatorImageView2 leadingAnchor];
    contentScrollView9 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide4 = [contentScrollView9 contentLayoutGuide];
    leadingAnchor5 = [contentLayoutGuide4 leadingAnchor];
    [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageViewLeadingLayoutConstraintConstant];
    v108 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:?];
    v190[6] = v108;
    unreadIndicatorImageView3 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    widthAnchor3 = [unreadIndicatorImageView3 widthAnchor];
    [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageViewWidthLayoutConstraintConstant];
    v102 = [widthAnchor3 constraintEqualToConstant:?];
    v190[7] = v102;
    unreadIndicatorImageView4 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    topAnchor5 = [unreadIndicatorImageView4 topAnchor];
    metadataView4 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    titleLabel = [metadataView4 titleLabel];
    firstBaselineAnchor = [titleLabel firstBaselineAnchor];
    [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageViewTopLayoutConstraintConstant];
    v90 = [topAnchor5 constraintEqualToAnchor:firstBaselineAnchor constant:-v28];
    v190[8] = v90;
    unreadIndicatorImageView5 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    heightAnchor4 = [unreadIndicatorImageView5 heightAnchor];
    unreadIndicatorImageView6 = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
    widthAnchor4 = [unreadIndicatorImageView6 widthAnchor];
    v80 = [heightAnchor4 constraintEqualToAnchor:widthAnchor4];
    v190[9] = v80;
    metadataViewLeadingConstraint = [(PHVoicemailMessageTableViewCell *)self metadataViewLeadingConstraint];
    v190[10] = metadataViewLeadingConstraint;
    metadataView5 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    trailingAnchor4 = [metadataView5 trailingAnchor];
    contentScrollView10 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide5 = [contentScrollView10 contentLayoutGuide];
    trailingAnchor5 = [contentLayoutGuide5 trailingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewTrailingLayoutConstraintConstant];
    v34 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v33];
    v190[11] = v34;
    metadataViewTopConstraint = [(PHVoicemailMessageTableViewCell *)self metadataViewTopConstraint];
    v190[12] = metadataViewTopConstraint;
    collapsedBottomConstraint = [(PHVoicemailMessageTableViewCell *)self collapsedBottomConstraint];
    v190[13] = collapsedBottomConstraint;
    maximumHeightConstraint = [(PHVoicemailMessageTableViewCell *)self maximumHeightConstraint];
    v190[14] = maximumHeightConstraint;
    v38 = [NSArray arrayWithObjects:v190 count:15];
    [(PHVoicemailMessageTableViewCell *)self setInitialConstraints:v38];

    initialConstraints2 = [(PHVoicemailMessageTableViewCell *)self initialConstraints];
    [NSLayoutConstraint activateConstraints:initialConstraints2];
  }

  expandedConstraints = [(PHVoicemailMessageTableViewCell *)self expandedConstraints];
  if (expandedConstraints)
  {
    goto LABEL_9;
  }

  playerControlsView = [(PHVoicemailMessageTableViewCell *)self playerControlsView];

  if (playerControlsView)
  {
    toolbar = [(PHVoicemailMessageTableViewCell *)self toolbar];
    bottomAnchor6 = [toolbar bottomAnchor];
    contentScrollView11 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide6 = [contentScrollView11 contentLayoutGuide];
    bottomAnchor7 = [contentLayoutGuide6 bottomAnchor];
    v47 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    LODWORD(v48) = 1132068864;
    v49 = [v47 withPriority:v48];
    [(PHVoicemailMessageTableViewCell *)self setToolbarBottomConstraint:v49];

    transcriptView = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    bottomAnchor8 = [transcriptView bottomAnchor];
    contentScrollView12 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide7 = [contentScrollView12 contentLayoutGuide];
    bottomAnchor9 = [contentLayoutGuide7 bottomAnchor];
    v55 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    LODWORD(v56) = 1132068864;
    v57 = [v55 withPriority:v56];
    [(PHVoicemailMessageTableViewCell *)self setTranscriptBottomConstraint:v57];

    restrictedView = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    bottomAnchor10 = [restrictedView bottomAnchor];
    contentScrollView13 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide8 = [contentScrollView13 contentLayoutGuide];
    bottomAnchor11 = [contentLayoutGuide8 bottomAnchor];
    v63 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    LODWORD(v64) = 1132068864;
    v65 = [v63 withPriority:v64];
    [(PHVoicemailMessageTableViewCell *)self setRestrictedViewBottomConstraint:v65];

    playerControlsView2 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    leftAnchor = [playerControlsView2 leftAnchor];
    metadataView6 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    leftAnchor2 = [metadataView6 leftAnchor];
    v179 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v189[0] = v179;
    playerControlsView3 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    rightAnchor = [playerControlsView3 rightAnchor];
    contentScrollView14 = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide9 = [contentScrollView14 contentLayoutGuide];
    rightAnchor2 = [contentLayoutGuide9 rightAnchor];
    [(PHVoicemailMessageTableViewCell *)self playerControlsViewRightLayoutConstraintConstant];
    v167 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v66];
    v189[1] = v167;
    playerControlsView4 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    topAnchor6 = [playerControlsView4 topAnchor];
    metadataView7 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    bottomAnchor12 = [metadataView7 bottomAnchor];
    v157 = [topAnchor6 constraintEqualToAnchor:bottomAnchor12];
    v189[2] = v157;
    toolbar2 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    leadingAnchor6 = [toolbar2 leadingAnchor];
    metadataView8 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    leadingAnchor7 = [metadataView8 leadingAnchor];
    v147 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v189[3] = v147;
    toolbar3 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    trailingAnchor6 = [toolbar3 trailingAnchor];
    metadataView9 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    trailingAnchor7 = [metadataView9 trailingAnchor];
    v137 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v189[4] = v137;
    toolbar4 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    topAnchor7 = [toolbar4 topAnchor];
    playerControlsView5 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    bottomAnchor13 = [playerControlsView5 bottomAnchor];
    v127 = [topAnchor7 constraintEqualToAnchor:bottomAnchor13];
    v189[5] = v127;
    toolbarBottomConstraint = [(PHVoicemailMessageTableViewCell *)self toolbarBottomConstraint];
    v189[6] = toolbarBottomConstraint;
    transcriptView2 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    leadingAnchor8 = [transcriptView2 leadingAnchor];
    metadataView10 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    leadingAnchor9 = [metadataView10 leadingAnchor];
    v115 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v189[7] = v115;
    transcriptView3 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    trailingAnchor8 = [transcriptView3 trailingAnchor];
    metadataView11 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    trailingAnchor9 = [metadataView11 trailingAnchor];
    v105 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v189[8] = v105;
    transcriptView4 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    topAnchor8 = [transcriptView4 topAnchor];
    toolbar5 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    bottomAnchor14 = [toolbar5 bottomAnchor];
    v95 = [topAnchor8 constraintEqualToAnchor:bottomAnchor14];
    v189[9] = v95;
    transcriptBottomConstraint = [(PHVoicemailMessageTableViewCell *)self transcriptBottomConstraint];
    v189[10] = transcriptBottomConstraint;
    restrictedView2 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    leadingAnchor10 = [restrictedView2 leadingAnchor];
    metadataView12 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    leadingAnchor11 = [metadataView12 leadingAnchor];
    v83 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
    v189[11] = v83;
    restrictedView3 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    trailingAnchor10 = [restrictedView3 trailingAnchor];
    metadataView13 = [(PHVoicemailMessageTableViewCell *)self metadataView];
    trailingAnchor11 = [metadataView13 trailingAnchor];
    v68 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v189[12] = v68;
    restrictedView4 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    topAnchor9 = [restrictedView4 topAnchor];
    toolbar6 = [(PHVoicemailMessageTableViewCell *)self toolbar];
    bottomAnchor15 = [toolbar6 bottomAnchor];
    v73 = [topAnchor9 constraintEqualToAnchor:bottomAnchor15];
    v189[13] = v73;
    restrictedViewBottomConstraint = [(PHVoicemailMessageTableViewCell *)self restrictedViewBottomConstraint];
    v189[14] = restrictedViewBottomConstraint;
    v75 = [NSArray arrayWithObjects:v189 count:15];
    [(PHVoicemailMessageTableViewCell *)self setExpandedConstraints:v75];

    expandedConstraints = [(PHVoicemailMessageTableViewCell *)self expandedConstraints];
    [NSLayoutConstraint activateConstraints:expandedConstraints];
LABEL_9:
  }

  [(PHVoicemailMessageTableViewCell *)self updateConstraintsForExpandedState:[(PHVoicemailMessageTableViewCell *)self isExpanded]];
}

- (void)hideUnreadIndicator
{
  unreadIndicatorImageView = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
  [unreadIndicatorImageView setHidden:1];

  metadataViewLeadingConstraint = [(PHVoicemailMessageTableViewCell *)self metadataViewLeadingConstraint];
  v16 = metadataViewLeadingConstraint;
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  [NSLayoutConstraint deactivateConstraints:v5];

  hideUnreadIndicatorMetadataViewLeadingConstraint = [(PHVoicemailMessageTableViewCell *)self hideUnreadIndicatorMetadataViewLeadingConstraint];

  if (!hideUnreadIndicatorMetadataViewLeadingConstraint)
  {
    metadataView = [(PHVoicemailMessageTableViewCell *)self metadataView];
    leadingAnchor = [metadataView leadingAnchor];
    contentScrollView = [(PHVoicemailMessageTableViewCell *)self contentScrollView];
    contentLayoutGuide = [contentScrollView contentLayoutGuide];
    leadingAnchor2 = [contentLayoutGuide leadingAnchor];
    [(PHVoicemailMessageTableViewCell *)self metadataViewWithoutUnreadIndicatorImageViewLeadingLayoutConstraintConstant];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v15 = v12;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [(PHVoicemailMessageTableViewCell *)self setHideUnreadIndicatorMetadataViewLeadingConstraint:v13];

    hideUnreadIndicatorMetadataViewLeadingConstraint2 = [(PHVoicemailMessageTableViewCell *)self hideUnreadIndicatorMetadataViewLeadingConstraint];
    [NSLayoutConstraint activateConstraints:hideUnreadIndicatorMetadataViewLeadingConstraint2];
  }
}

- (void)updateConstraintsForExpandedState:(BOOL)state
{
  stateCopy = state;
  toolbarBottomConstraint = [(PHVoicemailMessageTableViewCell *)self toolbarBottomConstraint];
  LODWORD(v6) = 1132068864;
  [toolbarBottomConstraint setPriority:v6];

  transcriptBottomConstraint = [(PHVoicemailMessageTableViewCell *)self transcriptBottomConstraint];
  LODWORD(v8) = 1132068864;
  [transcriptBottomConstraint setPriority:v8];

  restrictedViewBottomConstraint = [(PHVoicemailMessageTableViewCell *)self restrictedViewBottomConstraint];
  LODWORD(v10) = 1132068864;
  [restrictedViewBottomConstraint setPriority:v10];

  collapsedBottomConstraint = [(PHVoicemailMessageTableViewCell *)self collapsedBottomConstraint];
  LODWORD(v12) = 1132068864;
  [collapsedBottomConstraint setPriority:v12];

  if (stateCopy)
  {
    if ([(PHVoicemailMessageTableViewCell *)self shouldShowRestrictedAlertView])
    {
      restrictedViewBottomConstraint2 = [(PHVoicemailMessageTableViewCell *)self restrictedViewBottomConstraint];
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
      restrictedViewBottomConstraint2 = ;
    }
  }

  else
  {
    restrictedViewBottomConstraint2 = [(PHVoicemailMessageTableViewCell *)self collapsedBottomConstraint];
  }

  LODWORD(v14) = 1148846080;
  v15 = restrictedViewBottomConstraint2;
  [restrictedViewBottomConstraint2 setPriority:v14];
}

- (void)unloadConstraints
{
  v9.receiver = self;
  v9.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v9 unloadConstraints];
  initialConstraints = [(PHVoicemailMessageTableViewCell *)self initialConstraints];

  if (initialConstraints)
  {
    initialConstraints2 = [(PHVoicemailMessageTableViewCell *)self initialConstraints];
    [NSLayoutConstraint deactivateConstraints:initialConstraints2];

    [(PHVoicemailMessageTableViewCell *)self setInitialConstraints:0];
  }

  expandedConstraints = [(PHVoicemailMessageTableViewCell *)self expandedConstraints];

  if (expandedConstraints)
  {
    expandedConstraints2 = [(PHVoicemailMessageTableViewCell *)self expandedConstraints];
    [NSLayoutConstraint deactivateConstraints:expandedConstraints2];

    [(PHVoicemailMessageTableViewCell *)self setExpandedConstraints:0];
  }

  hideUnreadIndicatorMetadataViewLeadingConstraint = [(PHVoicemailMessageTableViewCell *)self hideUnreadIndicatorMetadataViewLeadingConstraint];

  if (hideUnreadIndicatorMetadataViewLeadingConstraint)
  {
    hideUnreadIndicatorMetadataViewLeadingConstraint2 = [(PHVoicemailMessageTableViewCell *)self hideUnreadIndicatorMetadataViewLeadingConstraint];
    [NSLayoutConstraint deactivateConstraints:hideUnreadIndicatorMetadataViewLeadingConstraint2];

    [(PHVoicemailMessageTableViewCell *)self setHideUnreadIndicatorMetadataViewLeadingConstraint:0];
  }
}

- (void)updateConstraintsConstants
{
  v5.receiver = self;
  v5.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v5 updateConstraintsConstants];
  isAccessiblityConstraintsEnabled = [(PHVoicemailMessageTableViewCell *)self isAccessiblityConstraintsEnabled];
  metadataView = [(PHVoicemailMessageTableViewCell *)self metadataView];
  [metadataView setLayoutIsAccessible:isAccessiblityConstraintsEnabled];
}

- (void)setupCollapsedView
{
  [(PHVoicemailMessageTableViewCell *)self updateConstraintsForExpandedState:0];
  playerControlsView = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
  [playerControlsView setHidden:1];
}

- (void)setupExpandedView
{
  shouldShowTranscriptView = [(PHVoicemailMessageTableViewCell *)self shouldShowTranscriptView];
  transcriptView = [(PHVoicemailMessageTableViewCell *)self transcriptView];
  [transcriptView setHidden:shouldShowTranscriptView ^ 1];

  shouldShowRestrictedAlertView = [(PHVoicemailMessageTableViewCell *)self shouldShowRestrictedAlertView];
  restrictedView = [(PHVoicemailMessageTableViewCell *)self restrictedView];
  [restrictedView setHidden:shouldShowRestrictedAlertView ^ 1];

  shouldShowRestrictedAlertView2 = [(PHVoicemailMessageTableViewCell *)self shouldShowRestrictedAlertView];
  playerControlsView = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
  [playerControlsView setEnabled:shouldShowRestrictedAlertView2 ^ 1];

  playerControlsView2 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
  [playerControlsView2 setHidden:0];

  [(PHVoicemailMessageTableViewCell *)self updateConstraintsForExpandedState:1];
}

- (BOOL)shouldShowRestrictedAlertView
{
  item = [(PHVoicemailMessageTableViewCell *)self item];
  showsRestrictedAlertView = [item showsRestrictedAlertView];

  return showsRestrictedAlertView;
}

- (BOOL)shouldShowTranscriptView
{
  item = [(PHVoicemailMessageTableViewCell *)self item];

  if (item)
  {
    item2 = [(PHVoicemailMessageTableViewCell *)self item];
    if ([item2 showsTranscriptionView])
    {
      item3 = [(PHVoicemailMessageTableViewCell *)self item];
      if ([item3 showsRestrictedAlertView])
      {
        v6 = 0;
      }

      else
      {
        item4 = [(PHVoicemailMessageTableViewCell *)self item];
        transcriptViewModel = [item4 transcriptViewModel];
        v6 = [transcriptViewModel confidence] != 0;
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

    item5 = [(PHVoicemailMessageTableViewCell *)self item];
    showsTranscriptionView = [item5 showsTranscriptionView];

    if (showsTranscriptionView)
    {
      item6 = [(PHVoicemailMessageTableViewCell *)self item];
      showsRestrictedAlertView = [item6 showsRestrictedAlertView];

      if (showsRestrictedAlertView)
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
        item7 = [(PHVoicemailMessageTableViewCell *)self item];
        transcriptViewModel2 = [item7 transcriptViewModel];
        confidence = [transcriptViewModel2 confidence];

        if (confidence)
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

- (void)configureWithVoicemailMessageViewModel:(id)model expanded:(BOOL)expanded shouldGrayForeground:(BOOL)foreground
{
  expandedCopy = expanded;
  [(PHVoicemailMessageTableViewCell *)self setItem:model];
  [(PHVoicemailMessageTableViewCell *)self setExpanded:expandedCopy];
  if (foreground)
  {
    dimmedColor = [(PHVoicemailMessageTableViewCell *)self dimmedColor];
    [(PHVoicemailMessageTableViewCell *)self setForegroundColor:dimmedColor];
  }

  else
  {
    [(PHVoicemailMessageTableViewCell *)self setForegroundColor:0];
  }

  item = [(PHVoicemailMessageTableViewCell *)self item];
  -[PHVoicemailMessageTableViewCell setRead:](self, "setRead:", [item isRead]);
}

- (void)setForegroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = PHVoicemailMessageTableViewCell;
  [(PHVoicemailMessageTableViewCell *)&v7 setForegroundColor:?];
  if (color)
  {
    foregroundView = [(PHVoicemailMessageTableViewCell *)self foregroundView];
    foregroundViewTapGestureRecognizer = [(PHVoicemailMessageTableViewCell *)self foregroundViewTapGestureRecognizer];
    [foregroundView addGestureRecognizer:foregroundViewTapGestureRecognizer];
  }
}

- (id)dimmedColor
{
  traitCollection = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
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

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated
{
  animatedCopy = animated;
  expandedCopy = expanded;
  self->_expanded = expanded;
  if (expanded)
  {
    [(PHVoicemailMessageTableViewCell *)self tipKitStartObservation];
  }

  else
  {
    [(PHVoicemailMessageTableViewCell *)self tipKitStopObservation];
  }

  [(PHVoicemailMessageTableViewCell *)self loadExpandedViewsIfNecessary];
  item = [(PHVoicemailMessageTableViewCell *)self item];
  [(PHVoicemailMessageTableViewCell *)self updateExpandedViewsWithViewModel:item];

  [(PHVoicemailMessageTableViewCell *)self loadConstraints];
  if ([(PHVoicemailMessageTableViewCell *)self shouldShowRestrictedAlertView]&& ([(PHVoicemailMessageTableViewCell *)self restrictedView], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    item2 = [(PHVoicemailMessageTableViewCell *)self item];
    localizedAttributedRestrictedAlertTitle = [item2 localizedAttributedRestrictedAlertTitle];
    restrictedView = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    [restrictedView setLocalizedAttributedRestrictedAlertTitle:localizedAttributedRestrictedAlertTitle];

    v12 = 1;
  }

  else
  {
    item2 = [(PHVoicemailMessageTableViewCell *)self restrictedView];
    [item2 setLocalizedAttributedRestrictedAlertTitle:0];
    v12 = 0;
  }

  toolbar = [(PHVoicemailMessageTableViewCell *)self toolbar];
  [toolbar setRestricted:v12];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __56__PHVoicemailMessageTableViewCell_setExpanded_animated___block_invoke;
  v20[3] = &unk_100285120;
  v20[4] = self;
  v21 = expandedCopy;
  v14 = objc_retainBlock(v20);
  v15 = v14;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v14 animations:0.300000012];
  }

  else
  {
    (v14[2])(v14);
  }

  if (expandedCopy)
  {
    [(PHVoicemailMessageTableViewCell *)self setupExpandedView];
    [(PHVoicemailMessageTableViewCell *)self setSelectionStyle:0];
  }

  else
  {
    [(PHVoicemailMessageTableViewCell *)self setupCollapsedView];
    [(PHVoicemailMessageTableViewCell *)self setSelectionStyle:3];
    transcriptView = [(PHVoicemailMessageTableViewCell *)self transcriptView];

    if (transcriptView)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __56__PHVoicemailMessageTableViewCell_setExpanded_animated___block_invoke_2;
      v19[3] = &unk_100284FD0;
      v19[4] = self;
      v17 = objc_retainBlock(v19);
      v18 = v17;
      if (animatedCopy)
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

- (void)setRead:(BOOL)read
{
  readCopy = read;
  self->_read = read;
  unreadIndicatorImageView = [(PHVoicemailMessageTableViewCell *)self unreadIndicatorImageView];
  v6 = unreadIndicatorImageView;
  v5 = 1.0;
  if (readCopy)
  {
    v5 = 0.0;
  }

  [unreadIndicatorImageView setAlpha:v5];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if (self->_item != itemCopy)
  {
    v7 = itemCopy;
    objc_storeStrong(&self->_item, item);
    metadataView = [(PHVoicemailMessageTableViewCell *)self metadataView];
    [metadataView configureWithViewModel:v7];

    itemCopy = [(PHVoicemailMessageTableViewCell *)self updateExpandedViewsWithViewModel:v7];
  }

  _objc_release_x2(itemCopy);
}

- (void)updateExpandedViewsWithViewModel:(id)model
{
  modelCopy = model;
  transcriptView = [(PHVoicemailMessageTableViewCell *)self transcriptView];

  if (transcriptView)
  {
    transcriptViewModel = [modelCopy transcriptViewModel];
    transcriptView2 = [(PHVoicemailMessageTableViewCell *)self transcriptView];
    [transcriptView2 setViewModel:transcriptViewModel];
  }

  playerControlsView = [(PHVoicemailMessageTableViewCell *)self playerControlsView];

  if (playerControlsView)
  {
    [modelCopy duration];
    v9 = v8;
    playerControlsView2 = [(PHVoicemailMessageTableViewCell *)self playerControlsView];
    [playerControlsView2 setDuration:v9];
  }

  isDeleted = [modelCopy isDeleted];
  toolbar = [(PHVoicemailMessageTableViewCell *)self toolbar];
  trashButton = [toolbar trashButton];
  v14 = trashButton;
  if (isDeleted)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  [trashButton setButtonType:v15 enabled:1];
}

- (void)setMaximumAllowedHeight:(double)height
{
  self->_maximumAllowedHeight = height;
  maximumHeightConstraint = [(PHVoicemailMessageTableViewCell *)self maximumHeightConstraint];
  [maximumHeightConstraint setConstant:height];
}

- (BOOL)isAccessiblityConstraintsEnabled
{
  traitCollection = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  isPreferredContentSizeCategoryAccessible = [traitCollection isPreferredContentSizeCategoryAccessible];

  return isPreferredContentSizeCategoryAccessible;
}

- (double)metadataViewLeadingLayoutConstraintConstant
{
  v3 = objc_opt_class();
  traitCollection = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 metadataViewLeadingLayoutConstraintConstantForContentSizeCategory:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

- (double)playerControlsViewTimelineSliderTopLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

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
  traitCollection = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 metadataViewWithoutUnreadIndicatorImageViewLeadingLayoutConstraintConstant:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

- (double)unreadIndicatorImageViewLeadingLayoutConstraintConstant
{
  v3 = objc_opt_class();
  traitCollection = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 unreadIndicatorImageViewLeadingLayoutConstraintConstantForContentSizeCategory:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

- (double)unreadIndicatorImageViewTopLayoutConstraintConstant
{
  metadataView = [(PHVoicemailMessageTableViewCell *)self metadataView];
  titleLabel = [metadataView titleLabel];
  font = [titleLabel font];
  [font capHeight];
  v6 = v5;

  return v6;
}

- (double)unreadIndicatorImageViewWidthLayoutConstraintConstant
{
  v3 = objc_opt_class();
  traitCollection = [(PHVoicemailMessageTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 unreadIndicatorImageViewWidthLayoutConstraintConstantForContentSizeCategory:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

- (void)handleCollapseCellTapGesture:(id)gesture
{
  gestureCopy = gesture;
  metadataViewTapGestureRecognizer = [(PHVoicemailMessageTableViewCell *)self metadataViewTapGestureRecognizer];
  if (metadataViewTapGestureRecognizer == gestureCopy)
  {
  }

  else
  {
    foregroundViewTapGestureRecognizer = [(PHVoicemailMessageTableViewCell *)self foregroundViewTapGestureRecognizer];

    if (foregroundViewTapGestureRecognizer != gestureCopy)
    {
      goto LABEL_7;
    }
  }

  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PHVoicemailMessageTableViewCell *)self delegate];
    [delegate2 voicemailMessageCellDidTapToCollapse:self];
  }

LABEL_7:
}

- (void)messageMetadataView:(id)view didTapButtonType:(unint64_t)type
{
  _tableView = [(PHVoicemailMessageTableViewCell *)self _tableView];
  v6 = [_tableView indexPathForCell:self];
  v7 = v6;
  if (type == 1)
  {
    if (v6)
    {
      delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate2 = [(PHVoicemailMessageTableViewCell *)self delegate];
        [delegate2 voicemailMessageTableViewCell:self actionButtonTappedForRowWithIndexPath:v7];
        goto LABEL_9;
      }
    }
  }

  else if (type == 2)
  {
    if (v6)
    {
      delegate3 = [_tableView delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        delegate2 = [_tableView delegate];
        [delegate2 tableView:_tableView accessoryButtonTappedForRowWithIndexPath:v7];
LABEL_9:
      }
    }
  }
}

- (void)playbackControls:(id)controls didRequestState:(int64_t)state
{
  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  [delegate voicemailMessageTableViewCell:self didRequestPlayState:state];
}

- (void)playerTimelineSliderScrubbingDidBegin:(id)begin
{
  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  [delegate voicemailMessageTableViewCellDidBeginScrubbing:self];
}

- (void)playerTimelineSliderScrubbingDidEnd:(id)end
{
  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  [delegate voicemailMessageTableViewCellDidEndScrubbing:self];
}

- (void)playerTimelineSliderScrubbingDidCancel:(id)cancel
{
  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  [delegate voicemailMessageTableViewCellDidCancelScrubbing:self];
}

- (void)playerTimelineSlider:(id)slider didChangeElapsedTime:(double)time
{
  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  [delegate voicemailMessageTableViewCell:self didChangeElapsedTime:time];
}

- (void)messageTranscriptView:(id)view didReceiveTapGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  [delegate voicemailMessageTableViewCell:self didReceiveTranscriptTapGesture:gestureCopy];
}

- (void)messageTranscriptView:(id)view didReportFeedback:(unint64_t)feedback
{
  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  [delegate voicemailMessageTableViewCell:self didReceiveTranscriptFeedback:feedback];
}

- (void)messageTranscriptView:(id)view suggestionsDidReceiveTapGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
  [delegate voicemailMessageTableViewCell:self suggestionsDidReceiveTapGesture:gestureCopy];
}

- (void)messageToolbar:(id)toolbar handleActionForButtonType:(unint64_t)type
{
  _tableView = [(PHVoicemailMessageTableViewCell *)self _tableView];
  v6 = [_tableView indexPathForCell:self];
  v7 = v6;
  switch(type)
  {
    case 3uLL:
      if (v6)
      {
        delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          delegate2 = [(PHVoicemailMessageTableViewCell *)self delegate];
          [delegate2 voicemailMessageTableViewCell:self moveButtonTappedForRowWithIndexPath:v7];
          goto LABEL_13;
        }
      }

      break;
    case 2uLL:
      if (v6)
      {
        delegate3 = [(PHVoicemailMessageTableViewCell *)self delegate];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          delegate2 = [(PHVoicemailMessageTableViewCell *)self delegate];
          [delegate2 voicemailMessageTableViewCell:self dialRequestButtonTappedForRowWithIndexPath:v7];
          goto LABEL_13;
        }
      }

      break;
    case 1uLL:
      if (v6)
      {
        delegate4 = [(PHVoicemailMessageTableViewCell *)self delegate];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          delegate2 = [(PHVoicemailMessageTableViewCell *)self delegate];
          [delegate2 voicemailMessageTableViewCell:self audioRouteButtonTappedForRowWithIndexPath:v7];
LABEL_13:
        }
      }

      break;
  }
}

- (BOOL)messageToolbarShouldShowRTTButton:(id)button
{
  if (!TUCallScreeningRTTEnabled())
  {
    return 0;
  }

  _tableView = [(PHVoicemailMessageTableViewCell *)self _tableView];
  v5 = [_tableView indexPathForCell:self];
  if (v5 && ([(PHVoicemailMessageTableViewCell *)self delegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
  {
    delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
    v9 = [delegate voicemailMessageTableViewCell:self shouldShowRTTButtonForRowWithIndexPath:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)messageToolbarDidSelectRTTButton:(id)button
{
  _tableView = [(PHVoicemailMessageTableViewCell *)self _tableView];
  v4 = [_tableView indexPathForCell:self];
  if (v4)
  {
    delegate = [(PHVoicemailMessageTableViewCell *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(PHVoicemailMessageTableViewCell *)self delegate];
      [delegate2 voicemailMessageTableViewCell:self rttButtonTappedForRowWithIndexPath:v4];
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
  selfCopy = self;
  PHVoicemailMessageTableViewCell.tipKitStartObservation()();
}

- (void)tipKitStopObservation
{
  selfCopy = self;
  PHVoicemailMessageTableViewCell.tipKitStopObservation()();
}

@end