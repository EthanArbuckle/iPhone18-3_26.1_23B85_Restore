@interface VMMessageTranscriptionProgressView
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (void)commonInit;
- (void)loadConstraints;
- (void)unloadConstraints;
- (void)updateConstraintsConstants;
@end

@implementation VMMessageTranscriptionProgressView

- (void)commonInit
{
  v20.receiver = self;
  v20.super_class = VMMessageTranscriptionProgressView;
  [(VMMessageTranscriptionProgressView *)&v20 commonInit];
  [(VMMessageTranscriptionProgressView *)self setClipsToBounds:1];
  v3 = +[UIColor whiteColor];
  [(VMMessageTranscriptionProgressView *)self setBackgroundColor:v3];

  v4 = [UIView alloc];
  [(VMMessageTranscriptionProgressView *)self bounds];
  v5 = [v4 initWithFrame:?];
  foregroundView = self->_foregroundView;
  self->_foregroundView = v5;

  [(UIView *)self->_foregroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMMessageTranscriptionProgressView *)self addSubview:self->_foregroundView];
  v7 = +[UIColor groupTableViewBackgroundColor];
  [(UIView *)self->_foregroundView setBackgroundColor:v7];

  v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;

  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:0];
  [(UILabel *)self->_titleLabel setLineBreakMode:4];
  [(UILabel *)self->_titleLabel setTextAlignment:4];
  v10 = +[UIColor blackColor];
  [(UILabel *)self->_titleLabel setTextColor:v10];

  v11 = +[UIFont voicemailCaptionRegularFont];
  [(UILabel *)self->_titleLabel setFont:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_MESSAGE_TRANSCRIBING" value:&stru_10028F310 table:@"VoicemailUI"];
  [(UILabel *)self->_titleLabel setText:v13];

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setUserInteractionEnabled:0];
  [(UIView *)self->_foregroundView addSubview:self->_titleLabel];
  v14 = [[UIProgressView alloc] initWithProgressViewStyle:1];
  progressView = self->_progressView;
  self->_progressView = v14;

  [(UIProgressView *)self->_progressView setUserInteractionEnabled:0];
  v16 = +[UIColor systemBlueColor];
  [(UIProgressView *)self->_progressView setProgressTintColor:v16];

  v17 = +[UIColor systemMidGrayColor];
  [(UIProgressView *)self->_progressView setTrackTintColor:v17];

  layer = [(UIProgressView *)self->_progressView layer];
  [layer setCornerRadius:2.0];

  layer2 = [(UIProgressView *)self->_progressView layer];
  [layer2 setMasksToBounds:1];

  [(UIProgressView *)self->_progressView setClipsToBounds:1];
  [(UIProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_foregroundView addSubview:self->_progressView];
}

- (void)loadConstraints
{
  foregroundView = [(VMMessageTranscriptionProgressView *)self foregroundView];
  leadingAnchor = [foregroundView leadingAnchor];
  leadingAnchor2 = [(VMMessageTranscriptionProgressView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  v7 = NSStringFromSelector("foregroundViewLeadingAnchorLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setForegroundViewLeadingAnchorLayoutConstraint:v6];
  foregroundView2 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  trailingAnchor = [foregroundView2 trailingAnchor];
  trailingAnchor2 = [(VMMessageTranscriptionProgressView *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  v12 = NSStringFromSelector("foregroundViewTrailingAnchorLayoutConstraint");
  [v11 setIdentifier:v12];

  [v11 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setForegroundViewTrailingAnchorLayoutConstraint:v11];
  foregroundView3 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  topAnchor = [foregroundView3 topAnchor];
  topAnchor2 = [(VMMessageTranscriptionProgressView *)self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];

  v17 = NSStringFromSelector("foregroundViewTopAnchorLayoutConstraint");
  [v16 setIdentifier:v17];

  [v16 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setForegroundViewTopAnchorLayoutConstraint:v16];
  foregroundView4 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  bottomAnchor = [foregroundView4 bottomAnchor];
  bottomAnchor2 = [(VMMessageTranscriptionProgressView *)self bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  v22 = NSStringFromSelector("foregroundViewBottomAnchorLayoutConstraint");
  [v21 setIdentifier:v22];

  [v21 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setForegroundViewBottomAnchorLayoutConstraint:v21];
  titleLabel = [(VMMessageTranscriptionProgressView *)self titleLabel];
  centerXAnchor = [titleLabel centerXAnchor];
  foregroundView5 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  centerXAnchor2 = [foregroundView5 centerXAnchor];
  v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  v28 = NSStringFromSelector("titleLabelCenterXLayoutConstraint");
  [v27 setIdentifier:v28];

  [v27 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setTitleLabelCenterXLayoutConstraint:v27];
  foregroundView6 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  trailingAnchor3 = [foregroundView6 trailingAnchor];
  titleLabel2 = [(VMMessageTranscriptionProgressView *)self titleLabel];
  trailingAnchor4 = [titleLabel2 trailingAnchor];
  v33 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:30.0];

  v34 = NSStringFromSelector("titleLabelTrailingLayoutConstraint");
  [v33 setIdentifier:v34];

  [v33 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setTitleLabelTrailingLayoutConstraint:v33];
  foregroundView7 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  leadingAnchor3 = [foregroundView7 leadingAnchor];
  titleLabel3 = [(VMMessageTranscriptionProgressView *)self titleLabel];
  leadingAnchor4 = [titleLabel3 leadingAnchor];
  v39 = [leadingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor4 constant:30.0];

  v40 = NSStringFromSelector("titleLabelLeadingLayoutConstraint");
  [v39 setIdentifier:v40];

  [v39 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setTitleLabelLeadingLayoutConstraint:v39];
  titleLabel4 = [(VMMessageTranscriptionProgressView *)self titleLabel];
  firstBaselineAnchor = [titleLabel4 firstBaselineAnchor];
  foregroundView8 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  topAnchor3 = [foregroundView8 topAnchor];
  [(VMMessageTranscriptionProgressView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v45 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:?];

  v46 = NSStringFromSelector("titleLabelFirstBaselineLayoutConstraint");
  [v45 setIdentifier:v46];

  [v45 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setTitleLabelFirstBaselineLayoutConstraint:v45];
  progressView = [(VMMessageTranscriptionProgressView *)self progressView];
  centerXAnchor3 = [progressView centerXAnchor];
  foregroundView9 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  centerXAnchor4 = [foregroundView9 centerXAnchor];
  v51 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  v52 = NSStringFromSelector("progressViewCenterXLayoutConstraint");
  [v51 setIdentifier:v52];

  [v51 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setProgressViewCenterXLayoutConstraint:v51];
  progressView2 = [(VMMessageTranscriptionProgressView *)self progressView];
  leadingAnchor5 = [progressView2 leadingAnchor];
  foregroundView10 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  leadingAnchor6 = [foregroundView10 leadingAnchor];
  v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:30.0];

  v58 = NSStringFromSelector("progressViewLeadingLayoutConstraint");
  [v57 setIdentifier:v58];

  [v57 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setProgressViewLeadingLayoutConstraint:v57];
  foregroundView11 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  trailingAnchor5 = [foregroundView11 trailingAnchor];
  progressView3 = [(VMMessageTranscriptionProgressView *)self progressView];
  trailingAnchor6 = [progressView3 trailingAnchor];
  v63 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:30.0];

  v64 = NSStringFromSelector("progressViewTrailingLayoutConstraint");
  [v63 setIdentifier:v64];

  [v63 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setProgressViewTrailingLayoutConstraint:v63];
  foregroundView12 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  bottomAnchor3 = [foregroundView12 bottomAnchor];
  progressView4 = [(VMMessageTranscriptionProgressView *)self progressView];
  bottomAnchor4 = [progressView4 bottomAnchor];
  v69 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:10.0];

  v70 = NSStringFromSelector("progressViewBottomLayoutConstraint");
  [v69 setIdentifier:v70];

  [v69 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setProgressViewBottomLayoutConstraint:v69];
  v71.receiver = self;
  v71.super_class = VMMessageTranscriptionProgressView;
  [(VMMessageTranscriptionProgressView *)&v71 loadConstraints];
}

- (void)unloadConstraints
{
  v15.receiver = self;
  v15.super_class = VMMessageTranscriptionProgressView;
  [(VMMessageTranscriptionProgressView *)&v15 unloadConstraints];
  titleLabelCenterXLayoutConstraint = [(VMMessageTranscriptionProgressView *)self titleLabelCenterXLayoutConstraint];
  [titleLabelCenterXLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setTitleLabelCenterXLayoutConstraint:0];
  titleLabelTrailingLayoutConstraint = [(VMMessageTranscriptionProgressView *)self titleLabelTrailingLayoutConstraint];
  [titleLabelTrailingLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setTitleLabelTrailingLayoutConstraint:0];
  titleLabelLeadingLayoutConstraint = [(VMMessageTranscriptionProgressView *)self titleLabelLeadingLayoutConstraint];
  [titleLabelLeadingLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setTitleLabelLeadingLayoutConstraint:0];
  titleLabelFirstBaselineLayoutConstraint = [(VMMessageTranscriptionProgressView *)self titleLabelFirstBaselineLayoutConstraint];
  [titleLabelFirstBaselineLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setTitleLabelFirstBaselineLayoutConstraint:0];
  progressViewCenterXLayoutConstraint = [(VMMessageTranscriptionProgressView *)self progressViewCenterXLayoutConstraint];
  [progressViewCenterXLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setProgressViewCenterXLayoutConstraint:0];
  progressViewLeadingLayoutConstraint = [(VMMessageTranscriptionProgressView *)self progressViewLeadingLayoutConstraint];
  [progressViewLeadingLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setProgressViewLeadingLayoutConstraint:0];
  progressViewTrailingLayoutConstraint = [(VMMessageTranscriptionProgressView *)self progressViewTrailingLayoutConstraint];
  [progressViewTrailingLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setProgressViewTrailingLayoutConstraint:0];
  progressViewBottomLayoutConstraint = [(VMMessageTranscriptionProgressView *)self progressViewBottomLayoutConstraint];
  [progressViewBottomLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setProgressViewBottomLayoutConstraint:0];
  foregroundViewLeadingAnchorLayoutConstraint = [(VMMessageTranscriptionProgressView *)self foregroundViewLeadingAnchorLayoutConstraint];
  [foregroundViewLeadingAnchorLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setForegroundViewLeadingAnchorLayoutConstraint:0];
  foregroundViewTrailingAnchorLayoutConstraint = [(VMMessageTranscriptionProgressView *)self foregroundViewTrailingAnchorLayoutConstraint];
  [foregroundViewTrailingAnchorLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setForegroundViewTrailingAnchorLayoutConstraint:0];
  foregroundViewTopAnchorLayoutConstraint = [(VMMessageTranscriptionProgressView *)self foregroundViewTopAnchorLayoutConstraint];
  [foregroundViewTopAnchorLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setForegroundViewTopAnchorLayoutConstraint:0];
  foregroundViewBottomAnchorLayoutConstraint = [(VMMessageTranscriptionProgressView *)self foregroundViewBottomAnchorLayoutConstraint];
  [foregroundViewBottomAnchorLayoutConstraint setActive:0];

  [(VMMessageTranscriptionProgressView *)self setForegroundViewBottomAnchorLayoutConstraint:0];
}

- (void)updateConstraintsConstants
{
  v7.receiver = self;
  v7.super_class = VMMessageTranscriptionProgressView;
  [(VMMessageTranscriptionProgressView *)&v7 updateConstraintsConstants];
  [(VMMessageTranscriptionProgressView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v4 = v3;
  titleLabelFirstBaselineLayoutConstraint = [(VMMessageTranscriptionProgressView *)self titleLabelFirstBaselineLayoutConstraint];
  [titleLabelFirstBaselineLayoutConstraint setConstant:v4];

  titleLabel = [(VMMessageTranscriptionProgressView *)self titleLabel];
  [titleLabel sizeToFit];
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont voicemailCaptionRegularFont];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:20.0];
    v7 = v6;
  }

  else
  {
    v7 = 20.0;
  }

  return v7;
}

@end