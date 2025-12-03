@interface VMMessageView
- (NSArray)playerControlsViewLayoutConstraints;
- (NSString)localizedDate;
- (NSString)localizedHeadline;
- (NSString)localizedSubheadline;
- (VMMessageView)initWithCoder:(id)coder;
- (VMMessageView)initWithFrame:(CGRect)frame;
- (double)playerControlsViewTopAnchorLayoutConstraintConstant;
- (double)transcriptSeparatorViewTopAnchorLayoutConstraintConstant;
- (void)commonInit;
- (void)loadSubviews;
- (void)loadSubviewsLayoutConstraints;
- (void)setLocalizedDate:(id)date;
- (void)setLocalizedHeadline:(id)headline;
- (void)setLocalizedSubheadline:(id)subheadline;
- (void)setPlayerControlsView:(id)view;
- (void)setPlayerControlsViewLayoutConstraints:(id)constraints;
- (void)setShouldDisplayTranscript:(BOOL)transcript;
- (void)setShowsPlayerControls:(BOOL)controls animated:(BOOL)animated;
- (void)updateConstraints;
- (void)updateConstraintsConstants;
@end

@implementation VMMessageView

- (VMMessageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VMMessageView;
  v3 = [(VMMessageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VMMessageView *)v3 commonInit];
  }

  return v4;
}

- (VMMessageView)initWithCoder:(id)coder
{
  [(VMMessageView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSString)localizedDate
{
  headerView = [(VMMessageView *)self headerView];
  localizedDate = [headerView localizedDate];

  return localizedDate;
}

- (void)setLocalizedDate:(id)date
{
  dateCopy = date;
  headerView = [(VMMessageView *)self headerView];
  [headerView setLocalizedDate:dateCopy];
}

- (NSString)localizedHeadline
{
  headerView = [(VMMessageView *)self headerView];
  localizedHeadline = [headerView localizedHeadline];

  return localizedHeadline;
}

- (void)setLocalizedHeadline:(id)headline
{
  headlineCopy = headline;
  headerView = [(VMMessageView *)self headerView];
  [headerView setLocalizedHeadline:headlineCopy];
}

- (NSString)localizedSubheadline
{
  headerView = [(VMMessageView *)self headerView];
  localizedSubheadline = [headerView localizedSubheadline];

  return localizedSubheadline;
}

- (void)setLocalizedSubheadline:(id)subheadline
{
  subheadlineCopy = subheadline;
  headerView = [(VMMessageView *)self headerView];
  [headerView setLocalizedSubheadline:subheadlineCopy];
}

- (void)setPlayerControlsView:(id)view
{
  viewCopy = view;
  playerControlsView = self->_playerControlsView;
  v14 = viewCopy;
  if (playerControlsView != viewCopy)
  {
    superview = [(VMPlayerControlsView *)playerControlsView superview];

    if (superview)
    {
      [(VMMessageView *)self setPlayerControlsViewLayoutConstraints:0];
      [(VMPlayerControlsView *)self->_playerControlsView removeFromSuperview];
    }

    objc_storeStrong(&self->_playerControlsView, view);
    v8 = self->_playerControlsView;
    if (v8)
    {
      [(VMPlayerControlsView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v9) = 1148846080;
      [(VMPlayerControlsView *)self->_playerControlsView setContentCompressionResistancePriority:0 forAxis:v9];
      LODWORD(v10) = 1132068864;
      [(VMPlayerControlsView *)self->_playerControlsView setContentCompressionResistancePriority:1 forAxis:v10];
      LODWORD(v11) = 1144750080;
      [(VMPlayerControlsView *)self->_playerControlsView setContentHuggingPriority:0 forAxis:v11];
      LODWORD(v12) = 1148846080;
      [(VMPlayerControlsView *)self->_playerControlsView setContentHuggingPriority:1 forAxis:v12];
      [(VMMessageView *)self addSubview:self->_playerControlsView];
      playerControlsViewLayoutConstraints = [(VMMessageView *)self playerControlsViewLayoutConstraints];
      if (playerControlsViewLayoutConstraints)
      {
        [NSLayoutConstraint activateConstraints:playerControlsViewLayoutConstraints];
      }
    }
  }
}

- (void)setShowsPlayerControls:(BOOL)controls animated:(BOOL)animated
{
  if (self->_showsPlayerControls != controls)
  {
    self->_showsPlayerControls = controls;
    [(VMPlayerControlsView *)self->_playerControlsView setHidden:!controls, animated];
    [(VMMessageView *)self setNeedsLayout];

    [(VMMessageView *)self layoutIfNeeded];
  }
}

- (void)setShouldDisplayTranscript:(BOOL)transcript
{
  if (self->_shouldDisplayTranscript != transcript)
  {
    transcriptCopy = transcript;
    self->_shouldDisplayTranscript = transcript;
    transcriptSeparatorView = self->_transcriptSeparatorView;
    if (transcript)
    {
      v7 = 999.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (transcript)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 999.0;
    }

    [(UIView *)transcriptSeparatorView setHidden:!transcript];
    [(VMMessageTranscriptView *)self->_transcriptView setHidden:!transcriptCopy];
    transcriptSeparatorViewTopAnchorLayoutConstraint = [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraint];
    *&v10 = v7;
    [transcriptSeparatorViewTopAnchorLayoutConstraint setPriority:v10];

    playerControlsViewBottomAnchorLayoutConstraint = [(VMMessageView *)self playerControlsViewBottomAnchorLayoutConstraint];
    *&v11 = v8;
    [playerControlsViewBottomAnchorLayoutConstraint setPriority:v11];
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = VMMessageView;
  [(VMMessageView *)&v3 updateConstraints];
  if ([(VMMessageView *)self subviewsLayoutConstraintsLoaded])
  {
    [(VMMessageView *)self updateConstraintsConstants];
  }

  else
  {
    [(VMMessageView *)self loadSubviewsLayoutConstraints];
  }
}

- (void)updateConstraintsConstants
{
  [(VMMessageView *)self playerControlsViewTopAnchorLayoutConstraintConstant];
  v4 = v3;
  playerControlsViewTopAnchorLayoutConstraint = [(VMMessageView *)self playerControlsViewTopAnchorLayoutConstraint];
  [playerControlsViewTopAnchorLayoutConstraint setConstant:v4];

  [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraintConstant];
  v7 = v6;
  transcriptSeparatorViewTopAnchorLayoutConstraint = [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraint];
  [transcriptSeparatorViewTopAnchorLayoutConstraint setConstant:v7];

  headerView = [(VMMessageView *)self headerView];
  [headerView updateConstraintsConstants];

  transcriptView = [(VMMessageView *)self transcriptView];
  [transcriptView updateConstraintsConstants];
}

- (void)commonInit
{
  self->_subviewsLayoutConstraintsLoaded = 0;
  self->_subviewsLoaded = 0;
  self->_showsPlayerControls = 0;
  v3 = +[UIColor dynamicBackgroundColor];
  [(VMMessageView *)self setBackgroundColor:v3];

  [(VMMessageView *)self loadSubviews];
}

- (void)loadSubviews
{
  if (!self->_subviewsLoaded)
  {
    v3 = objc_alloc_init(VMMessageHeaderView);
    headerView = self->_headerView;
    self->_headerView = v3;

    [(VMMessageHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1144750080;
    [(VMMessageHeaderView *)self->_headerView setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(VMMessageHeaderView *)self->_headerView setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1132068864;
    [(VMMessageHeaderView *)self->_headerView setContentHuggingPriority:0 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(VMMessageHeaderView *)self->_headerView setContentHuggingPriority:1 forAxis:v8];
    v9 = objc_alloc_init(VMPlayerControlsView);
    playerControlsView = self->_playerControlsView;
    self->_playerControlsView = v9;

    [(VMPlayerControlsView *)self->_playerControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1148846080;
    [(VMPlayerControlsView *)self->_playerControlsView setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(VMPlayerControlsView *)self->_playerControlsView setContentCompressionResistancePriority:1 forAxis:v12];
    LODWORD(v13) = 1132068864;
    [(VMPlayerControlsView *)self->_playerControlsView setContentHuggingPriority:0 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(VMPlayerControlsView *)self->_playerControlsView setContentHuggingPriority:1 forAxis:v14];
    v15 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    transcriptSeparatorView = self->_transcriptSeparatorView;
    self->_transcriptSeparatorView = v15;

    v17 = +[UIColor systemMidGrayColor];
    [(UIView *)self->_transcriptSeparatorView setBackgroundColor:v17];

    [(UIView *)self->_transcriptSeparatorView setHidden:1];
    [(UIView *)self->_transcriptSeparatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_transcriptSeparatorView setUserInteractionEnabled:0];
    v18 = objc_alloc_init(VMMessageTranscriptView);
    transcriptView = self->_transcriptView;
    self->_transcriptView = v18;

    [(VMMessageTranscriptView *)self->_transcriptView setHidden:1];
    [(VMMessageTranscriptView *)self->_transcriptView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VMMessageView *)self addSubview:self->_headerView];
    [(VMMessageView *)self addSubview:self->_playerControlsView];
    [(VMMessageView *)self addSubview:self->_transcriptSeparatorView];
    [(VMMessageView *)self addSubview:self->_transcriptView];
    self->_subviewsLoaded = 1;
  }
}

- (void)loadSubviewsLayoutConstraints
{
  if (!self->_subviewsLayoutConstraintsLoaded)
  {
    leadingAnchor = [(VMMessageHeaderView *)self->_headerView leadingAnchor];
    leadingAnchor2 = [(VMMessageView *)self leadingAnchor];
    v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    [v5 setActive:1];

    trailingAnchor = [(VMMessageHeaderView *)self->_headerView trailingAnchor];
    trailingAnchor2 = [(VMMessageView *)self trailingAnchor];
    v8 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-20.0];
    [v8 setActive:1];

    topAnchor = [(VMMessageHeaderView *)self->_headerView topAnchor];
    topAnchor2 = [(VMMessageView *)self topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v11 setActive:1];

    playerControlsViewLayoutConstraints = [(VMMessageView *)self playerControlsViewLayoutConstraints];
    if (playerControlsViewLayoutConstraints)
    {
      [NSLayoutConstraint activateConstraints:playerControlsViewLayoutConstraints];
    }

    leadingAnchor3 = [(UIView *)self->_transcriptSeparatorView leadingAnchor];
    leadingAnchor4 = [(VMMessageView *)self leadingAnchor];
    v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v14 setActive:1];

    trailingAnchor3 = [(UIView *)self->_transcriptSeparatorView trailingAnchor];
    trailingAnchor4 = [(VMMessageView *)self trailingAnchor];
    v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v17 setActive:1];

    heightAnchor = [(UIView *)self->_transcriptSeparatorView heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:0.5];
    [v19 setActive:1];

    leadingAnchor5 = [(VMMessageTranscriptView *)self->_transcriptView leadingAnchor];
    leadingAnchor6 = [(VMMessageView *)self leadingAnchor];
    v22 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:20.0];
    [v22 setActive:1];

    trailingAnchor5 = [(VMMessageTranscriptView *)self->_transcriptView trailingAnchor];
    trailingAnchor6 = [(VMMessageView *)self trailingAnchor];
    v25 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-20.0];
    [v25 setActive:1];

    topAnchor3 = [(VMMessageTranscriptView *)self->_transcriptView topAnchor];
    bottomAnchor = [(UIView *)self->_transcriptSeparatorView bottomAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    [v28 setActive:1];

    bottomAnchor2 = [(VMMessageTranscriptView *)self->_transcriptView bottomAnchor];
    bottomAnchor3 = [(VMMessageView *)self bottomAnchor];
    v31 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v31 setActive:1];

    self->_subviewsLayoutConstraintsLoaded = 1;
  }
}

- (double)playerControlsViewTopAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  [v2 _scaledValueForValue:20.0];
  v4 = ceil(v3);

  return v4;
}

- (double)transcriptSeparatorViewTopAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  [v2 _scaledValueForValue:24.0];
  v4 = ceil(v3);

  return v4;
}

- (NSArray)playerControlsViewLayoutConstraints
{
  playerControlsViewLayoutConstraints = self->_playerControlsViewLayoutConstraints;
  if (!playerControlsViewLayoutConstraints)
  {
    v4 = +[NSMutableArray array];
    topAnchor = [(VMPlayerControlsView *)self->_playerControlsView topAnchor];
    dateLabel = [(VMMessageHeaderView *)self->_headerView dateLabel];
    firstBaselineAnchor = [dateLabel firstBaselineAnchor];
    [(VMMessageView *)self playerControlsViewTopAnchorLayoutConstraintConstant];
    v8 = [topAnchor constraintEqualToAnchor:firstBaselineAnchor constant:?];

    if (v8)
    {
      [(VMMessageView *)self setPlayerControlsViewTopAnchorLayoutConstraint:v8];
      [v4 addObject:v8];
    }

    leadingAnchor = [(VMPlayerControlsView *)self->_playerControlsView leadingAnchor];
    leadingAnchor2 = [(VMMessageView *)self leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];

    if (v11)
    {
      [v4 addObject:v11];
    }

    trailingAnchor = [(VMPlayerControlsView *)self->_playerControlsView trailingAnchor];
    trailingAnchor2 = [(VMMessageView *)self trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];

    if (v14)
    {
      [v4 addObject:v14];
    }

    topAnchor2 = [(UIView *)self->_transcriptSeparatorView topAnchor];
    bottomAnchor = [(VMPlayerControlsView *)self->_playerControlsView bottomAnchor];
    [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraintConstant];
    v17 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:?];

    if (v17)
    {
      shouldDisplayTranscript = [(VMMessageView *)self shouldDisplayTranscript];
      LODWORD(v19) = 1148829696;
      if (!shouldDisplayTranscript)
      {
        *&v19 = 1.0;
      }

      [v17 setPriority:v19];
      [(VMMessageView *)self setTranscriptSeparatorViewTopAnchorLayoutConstraint:v17];
      [v4 addObject:v17];
    }

    bottomAnchor2 = [(VMPlayerControlsView *)self->_playerControlsView bottomAnchor];
    bottomAnchor3 = [(VMMessageView *)self bottomAnchor];
    [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraintConstant];
    v23 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v22];

    if (v23)
    {
      shouldDisplayTranscript2 = [(VMMessageView *)self shouldDisplayTranscript];
      LODWORD(v25) = 1148829696;
      if (shouldDisplayTranscript2)
      {
        *&v25 = 1.0;
      }

      [v23 setPriority:v25];
      [(VMMessageView *)self setPlayerControlsViewBottomAnchorLayoutConstraint:v23];
      [v4 addObject:v23];
    }

    if ([v4 count])
    {
      v26 = [v4 copy];
      v27 = self->_playerControlsViewLayoutConstraints;
      self->_playerControlsViewLayoutConstraints = v26;
    }

    playerControlsViewLayoutConstraints = self->_playerControlsViewLayoutConstraints;
  }

  return playerControlsViewLayoutConstraints;
}

- (void)setPlayerControlsViewLayoutConstraints:(id)constraints
{
  constraintsCopy = constraints;
  playerControlsViewLayoutConstraints = self->_playerControlsViewLayoutConstraints;
  v7 = constraintsCopy;
  if (playerControlsViewLayoutConstraints != constraintsCopy)
  {
    if (playerControlsViewLayoutConstraints)
    {
      [NSLayoutConstraint deactivateConstraints:?];
    }

    objc_storeStrong(&self->_playerControlsViewLayoutConstraints, constraints);
    if (self->_playerControlsViewLayoutConstraints)
    {
      [NSLayoutConstraint activateConstraints:?];
    }
  }
}

@end