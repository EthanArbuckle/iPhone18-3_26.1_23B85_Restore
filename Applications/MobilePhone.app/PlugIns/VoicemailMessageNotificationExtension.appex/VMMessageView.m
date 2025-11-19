@interface VMMessageView
- (NSArray)playerControlsViewLayoutConstraints;
- (NSString)localizedDate;
- (NSString)localizedHeadline;
- (NSString)localizedSubheadline;
- (VMMessageView)initWithCoder:(id)a3;
- (VMMessageView)initWithFrame:(CGRect)a3;
- (double)playerControlsViewTopAnchorLayoutConstraintConstant;
- (double)transcriptSeparatorViewTopAnchorLayoutConstraintConstant;
- (void)commonInit;
- (void)loadSubviews;
- (void)loadSubviewsLayoutConstraints;
- (void)setLocalizedDate:(id)a3;
- (void)setLocalizedHeadline:(id)a3;
- (void)setLocalizedSubheadline:(id)a3;
- (void)setPlayerControlsView:(id)a3;
- (void)setPlayerControlsViewLayoutConstraints:(id)a3;
- (void)setShouldDisplayTranscript:(BOOL)a3;
- (void)setShowsPlayerControls:(BOOL)a3 animated:(BOOL)a4;
- (void)updateConstraints;
- (void)updateConstraintsConstants;
@end

@implementation VMMessageView

- (VMMessageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VMMessageView;
  v3 = [(VMMessageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VMMessageView *)v3 commonInit];
  }

  return v4;
}

- (VMMessageView)initWithCoder:(id)a3
{
  [(VMMessageView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSString)localizedDate
{
  v2 = [(VMMessageView *)self headerView];
  v3 = [v2 localizedDate];

  return v3;
}

- (void)setLocalizedDate:(id)a3
{
  v4 = a3;
  v5 = [(VMMessageView *)self headerView];
  [v5 setLocalizedDate:v4];
}

- (NSString)localizedHeadline
{
  v2 = [(VMMessageView *)self headerView];
  v3 = [v2 localizedHeadline];

  return v3;
}

- (void)setLocalizedHeadline:(id)a3
{
  v4 = a3;
  v5 = [(VMMessageView *)self headerView];
  [v5 setLocalizedHeadline:v4];
}

- (NSString)localizedSubheadline
{
  v2 = [(VMMessageView *)self headerView];
  v3 = [v2 localizedSubheadline];

  return v3;
}

- (void)setLocalizedSubheadline:(id)a3
{
  v4 = a3;
  v5 = [(VMMessageView *)self headerView];
  [v5 setLocalizedSubheadline:v4];
}

- (void)setPlayerControlsView:(id)a3
{
  v5 = a3;
  playerControlsView = self->_playerControlsView;
  v14 = v5;
  if (playerControlsView != v5)
  {
    v7 = [(VMPlayerControlsView *)playerControlsView superview];

    if (v7)
    {
      [(VMMessageView *)self setPlayerControlsViewLayoutConstraints:0];
      [(VMPlayerControlsView *)self->_playerControlsView removeFromSuperview];
    }

    objc_storeStrong(&self->_playerControlsView, a3);
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
      v13 = [(VMMessageView *)self playerControlsViewLayoutConstraints];
      if (v13)
      {
        [NSLayoutConstraint activateConstraints:v13];
      }
    }
  }
}

- (void)setShowsPlayerControls:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsPlayerControls != a3)
  {
    self->_showsPlayerControls = a3;
    [(VMPlayerControlsView *)self->_playerControlsView setHidden:!a3, a4];
    [(VMMessageView *)self setNeedsLayout];

    [(VMMessageView *)self layoutIfNeeded];
  }
}

- (void)setShouldDisplayTranscript:(BOOL)a3
{
  if (self->_shouldDisplayTranscript != a3)
  {
    v4 = a3;
    self->_shouldDisplayTranscript = a3;
    transcriptSeparatorView = self->_transcriptSeparatorView;
    if (a3)
    {
      v7 = 999.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (a3)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 999.0;
    }

    [(UIView *)transcriptSeparatorView setHidden:!a3];
    [(VMMessageTranscriptView *)self->_transcriptView setHidden:!v4];
    v9 = [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraint];
    *&v10 = v7;
    [v9 setPriority:v10];

    v12 = [(VMMessageView *)self playerControlsViewBottomAnchorLayoutConstraint];
    *&v11 = v8;
    [v12 setPriority:v11];
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
  v5 = [(VMMessageView *)self playerControlsViewTopAnchorLayoutConstraint];
  [v5 setConstant:v4];

  [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraintConstant];
  v7 = v6;
  v8 = [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraint];
  [v8 setConstant:v7];

  v9 = [(VMMessageView *)self headerView];
  [v9 updateConstraintsConstants];

  v10 = [(VMMessageView *)self transcriptView];
  [v10 updateConstraintsConstants];
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
    v3 = [(VMMessageHeaderView *)self->_headerView leadingAnchor];
    v4 = [(VMMessageView *)self leadingAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:20.0];
    [v5 setActive:1];

    v6 = [(VMMessageHeaderView *)self->_headerView trailingAnchor];
    v7 = [(VMMessageView *)self trailingAnchor];
    v8 = [v6 constraintLessThanOrEqualToAnchor:v7 constant:-20.0];
    [v8 setActive:1];

    v9 = [(VMMessageHeaderView *)self->_headerView topAnchor];
    v10 = [(VMMessageView *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v32 = [(VMMessageView *)self playerControlsViewLayoutConstraints];
    if (v32)
    {
      [NSLayoutConstraint activateConstraints:v32];
    }

    v12 = [(UIView *)self->_transcriptSeparatorView leadingAnchor];
    v13 = [(VMMessageView *)self leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [(UIView *)self->_transcriptSeparatorView trailingAnchor];
    v16 = [(VMMessageView *)self trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [(UIView *)self->_transcriptSeparatorView heightAnchor];
    v19 = [v18 constraintEqualToConstant:0.5];
    [v19 setActive:1];

    v20 = [(VMMessageTranscriptView *)self->_transcriptView leadingAnchor];
    v21 = [(VMMessageView *)self leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:20.0];
    [v22 setActive:1];

    v23 = [(VMMessageTranscriptView *)self->_transcriptView trailingAnchor];
    v24 = [(VMMessageView *)self trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-20.0];
    [v25 setActive:1];

    v26 = [(VMMessageTranscriptView *)self->_transcriptView topAnchor];
    v27 = [(UIView *)self->_transcriptSeparatorView bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [(VMMessageTranscriptView *)self->_transcriptView bottomAnchor];
    v30 = [(VMMessageView *)self bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
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
    v5 = [(VMPlayerControlsView *)self->_playerControlsView topAnchor];
    v6 = [(VMMessageHeaderView *)self->_headerView dateLabel];
    v7 = [v6 firstBaselineAnchor];
    [(VMMessageView *)self playerControlsViewTopAnchorLayoutConstraintConstant];
    v8 = [v5 constraintEqualToAnchor:v7 constant:?];

    if (v8)
    {
      [(VMMessageView *)self setPlayerControlsViewTopAnchorLayoutConstraint:v8];
      [v4 addObject:v8];
    }

    v9 = [(VMPlayerControlsView *)self->_playerControlsView leadingAnchor];
    v10 = [(VMMessageView *)self leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:20.0];

    if (v11)
    {
      [v4 addObject:v11];
    }

    v12 = [(VMPlayerControlsView *)self->_playerControlsView trailingAnchor];
    v13 = [(VMMessageView *)self trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-16.0];

    if (v14)
    {
      [v4 addObject:v14];
    }

    v15 = [(UIView *)self->_transcriptSeparatorView topAnchor];
    v16 = [(VMPlayerControlsView *)self->_playerControlsView bottomAnchor];
    [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraintConstant];
    v17 = [v15 constraintEqualToAnchor:v16 constant:?];

    if (v17)
    {
      v18 = [(VMMessageView *)self shouldDisplayTranscript];
      LODWORD(v19) = 1148829696;
      if (!v18)
      {
        *&v19 = 1.0;
      }

      [v17 setPriority:v19];
      [(VMMessageView *)self setTranscriptSeparatorViewTopAnchorLayoutConstraint:v17];
      [v4 addObject:v17];
    }

    v20 = [(VMPlayerControlsView *)self->_playerControlsView bottomAnchor];
    v21 = [(VMMessageView *)self bottomAnchor];
    [(VMMessageView *)self transcriptSeparatorViewTopAnchorLayoutConstraintConstant];
    v23 = [v20 constraintEqualToAnchor:v21 constant:-v22];

    if (v23)
    {
      v24 = [(VMMessageView *)self shouldDisplayTranscript];
      LODWORD(v25) = 1148829696;
      if (v24)
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

- (void)setPlayerControlsViewLayoutConstraints:(id)a3
{
  v5 = a3;
  playerControlsViewLayoutConstraints = self->_playerControlsViewLayoutConstraints;
  v7 = v5;
  if (playerControlsViewLayoutConstraints != v5)
  {
    if (playerControlsViewLayoutConstraints)
    {
      [NSLayoutConstraint deactivateConstraints:?];
    }

    objc_storeStrong(&self->_playerControlsViewLayoutConstraints, a3);
    if (self->_playerControlsViewLayoutConstraints)
    {
      [NSLayoutConstraint activateConstraints:?];
    }
  }
}

@end