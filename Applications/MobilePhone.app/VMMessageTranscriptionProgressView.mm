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

  v18 = [(UIProgressView *)self->_progressView layer];
  [v18 setCornerRadius:2.0];

  v19 = [(UIProgressView *)self->_progressView layer];
  [v19 setMasksToBounds:1];

  [(UIProgressView *)self->_progressView setClipsToBounds:1];
  [(UIProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_foregroundView addSubview:self->_progressView];
}

- (void)loadConstraints
{
  v3 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v4 = [v3 leadingAnchor];
  v5 = [(VMMessageTranscriptionProgressView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  v7 = NSStringFromSelector("foregroundViewLeadingAnchorLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setForegroundViewLeadingAnchorLayoutConstraint:v6];
  v8 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v9 = [v8 trailingAnchor];
  v10 = [(VMMessageTranscriptionProgressView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  v12 = NSStringFromSelector("foregroundViewTrailingAnchorLayoutConstraint");
  [v11 setIdentifier:v12];

  [v11 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setForegroundViewTrailingAnchorLayoutConstraint:v11];
  v13 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v14 = [v13 topAnchor];
  v15 = [(VMMessageTranscriptionProgressView *)self topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  v17 = NSStringFromSelector("foregroundViewTopAnchorLayoutConstraint");
  [v16 setIdentifier:v17];

  [v16 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setForegroundViewTopAnchorLayoutConstraint:v16];
  v18 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v19 = [v18 bottomAnchor];
  v20 = [(VMMessageTranscriptionProgressView *)self bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  v22 = NSStringFromSelector("foregroundViewBottomAnchorLayoutConstraint");
  [v21 setIdentifier:v22];

  [v21 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setForegroundViewBottomAnchorLayoutConstraint:v21];
  v23 = [(VMMessageTranscriptionProgressView *)self titleLabel];
  v24 = [v23 centerXAnchor];
  v25 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v26 = [v25 centerXAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  v28 = NSStringFromSelector("titleLabelCenterXLayoutConstraint");
  [v27 setIdentifier:v28];

  [v27 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setTitleLabelCenterXLayoutConstraint:v27];
  v29 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v30 = [v29 trailingAnchor];
  v31 = [(VMMessageTranscriptionProgressView *)self titleLabel];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintGreaterThanOrEqualToAnchor:v32 constant:30.0];

  v34 = NSStringFromSelector("titleLabelTrailingLayoutConstraint");
  [v33 setIdentifier:v34];

  [v33 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setTitleLabelTrailingLayoutConstraint:v33];
  v35 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v36 = [v35 leadingAnchor];
  v37 = [(VMMessageTranscriptionProgressView *)self titleLabel];
  v38 = [v37 leadingAnchor];
  v39 = [v36 constraintLessThanOrEqualToAnchor:v38 constant:30.0];

  v40 = NSStringFromSelector("titleLabelLeadingLayoutConstraint");
  [v39 setIdentifier:v40];

  [v39 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setTitleLabelLeadingLayoutConstraint:v39];
  v41 = [(VMMessageTranscriptionProgressView *)self titleLabel];
  v42 = [v41 firstBaselineAnchor];
  v43 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v44 = [v43 topAnchor];
  [(VMMessageTranscriptionProgressView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v45 = [v42 constraintEqualToAnchor:v44 constant:?];

  v46 = NSStringFromSelector("titleLabelFirstBaselineLayoutConstraint");
  [v45 setIdentifier:v46];

  [v45 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setTitleLabelFirstBaselineLayoutConstraint:v45];
  v47 = [(VMMessageTranscriptionProgressView *)self progressView];
  v48 = [v47 centerXAnchor];
  v49 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v50 = [v49 centerXAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];

  v52 = NSStringFromSelector("progressViewCenterXLayoutConstraint");
  [v51 setIdentifier:v52];

  [v51 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setProgressViewCenterXLayoutConstraint:v51];
  v53 = [(VMMessageTranscriptionProgressView *)self progressView];
  v54 = [v53 leadingAnchor];
  v55 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v56 = [v55 leadingAnchor];
  v57 = [v54 constraintEqualToAnchor:v56 constant:30.0];

  v58 = NSStringFromSelector("progressViewLeadingLayoutConstraint");
  [v57 setIdentifier:v58];

  [v57 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setProgressViewLeadingLayoutConstraint:v57];
  v59 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v60 = [v59 trailingAnchor];
  v61 = [(VMMessageTranscriptionProgressView *)self progressView];
  v62 = [v61 trailingAnchor];
  v63 = [v60 constraintEqualToAnchor:v62 constant:30.0];

  v64 = NSStringFromSelector("progressViewTrailingLayoutConstraint");
  [v63 setIdentifier:v64];

  [v63 setActive:1];
  [(VMMessageTranscriptionProgressView *)self setProgressViewTrailingLayoutConstraint:v63];
  v65 = [(VMMessageTranscriptionProgressView *)self foregroundView];
  v66 = [v65 bottomAnchor];
  v67 = [(VMMessageTranscriptionProgressView *)self progressView];
  v68 = [v67 bottomAnchor];
  v69 = [v66 constraintEqualToAnchor:v68 constant:10.0];

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
  v3 = [(VMMessageTranscriptionProgressView *)self titleLabelCenterXLayoutConstraint];
  [v3 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setTitleLabelCenterXLayoutConstraint:0];
  v4 = [(VMMessageTranscriptionProgressView *)self titleLabelTrailingLayoutConstraint];
  [v4 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setTitleLabelTrailingLayoutConstraint:0];
  v5 = [(VMMessageTranscriptionProgressView *)self titleLabelLeadingLayoutConstraint];
  [v5 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setTitleLabelLeadingLayoutConstraint:0];
  v6 = [(VMMessageTranscriptionProgressView *)self titleLabelFirstBaselineLayoutConstraint];
  [v6 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setTitleLabelFirstBaselineLayoutConstraint:0];
  v7 = [(VMMessageTranscriptionProgressView *)self progressViewCenterXLayoutConstraint];
  [v7 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setProgressViewCenterXLayoutConstraint:0];
  v8 = [(VMMessageTranscriptionProgressView *)self progressViewLeadingLayoutConstraint];
  [v8 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setProgressViewLeadingLayoutConstraint:0];
  v9 = [(VMMessageTranscriptionProgressView *)self progressViewTrailingLayoutConstraint];
  [v9 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setProgressViewTrailingLayoutConstraint:0];
  v10 = [(VMMessageTranscriptionProgressView *)self progressViewBottomLayoutConstraint];
  [v10 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setProgressViewBottomLayoutConstraint:0];
  v11 = [(VMMessageTranscriptionProgressView *)self foregroundViewLeadingAnchorLayoutConstraint];
  [v11 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setForegroundViewLeadingAnchorLayoutConstraint:0];
  v12 = [(VMMessageTranscriptionProgressView *)self foregroundViewTrailingAnchorLayoutConstraint];
  [v12 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setForegroundViewTrailingAnchorLayoutConstraint:0];
  v13 = [(VMMessageTranscriptionProgressView *)self foregroundViewTopAnchorLayoutConstraint];
  [v13 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setForegroundViewTopAnchorLayoutConstraint:0];
  v14 = [(VMMessageTranscriptionProgressView *)self foregroundViewBottomAnchorLayoutConstraint];
  [v14 setActive:0];

  [(VMMessageTranscriptionProgressView *)self setForegroundViewBottomAnchorLayoutConstraint:0];
}

- (void)updateConstraintsConstants
{
  v7.receiver = self;
  v7.super_class = VMMessageTranscriptionProgressView;
  [(VMMessageTranscriptionProgressView *)&v7 updateConstraintsConstants];
  [(VMMessageTranscriptionProgressView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v4 = v3;
  v5 = [(VMMessageTranscriptionProgressView *)self titleLabelFirstBaselineLayoutConstraint];
  [v5 setConstant:v4];

  v6 = [(VMMessageTranscriptionProgressView *)self titleLabel];
  [v6 sizeToFit];
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont voicemailCaptionRegularFont];
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

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