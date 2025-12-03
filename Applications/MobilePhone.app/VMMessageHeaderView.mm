@interface VMMessageHeaderView
- (NSString)localizedDate;
- (NSString)localizedHeadline;
- (NSString)localizedSubheadline;
- (VMMessageHeaderView)initWithCoder:(id)coder;
- (VMMessageHeaderView)initWithFrame:(CGRect)frame;
- (double)dateLabelFirstBaselineAnchorLayoutConstraintConstant;
- (double)headlineLabelFirstBaselineAnchorLayoutConstraintConstant;
- (double)subheadlineLabelFirstBaselineAnchorLayoutConstraintConstant;
- (void)commonInit;
- (void)loadSubviews;
- (void)loadSubviewsLayoutConstraints;
- (void)setLocalizedDate:(id)date;
- (void)setLocalizedHeadline:(id)headline;
- (void)setLocalizedSubheadline:(id)subheadline;
- (void)updateConstraints;
- (void)updateConstraintsConstants;
@end

@implementation VMMessageHeaderView

- (VMMessageHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VMMessageHeaderView;
  v3 = [(VMMessageHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VMMessageHeaderView *)v3 commonInit];
  }

  return v4;
}

- (VMMessageHeaderView)initWithCoder:(id)coder
{
  [(VMMessageHeaderView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSString)localizedDate
{
  dateLabel = [(VMMessageHeaderView *)self dateLabel];
  text = [dateLabel text];

  return text;
}

- (void)setLocalizedDate:(id)date
{
  dateCopy = date;
  dateLabel = [(VMMessageHeaderView *)self dateLabel];
  text = [dateLabel text];

  if (text != dateCopy)
  {
    dateLabel2 = [(VMMessageHeaderView *)self dateLabel];
    [dateLabel2 setText:dateCopy];
  }
}

- (NSString)localizedHeadline
{
  headlineLabel = [(VMMessageHeaderView *)self headlineLabel];
  text = [headlineLabel text];

  return text;
}

- (void)setLocalizedHeadline:(id)headline
{
  headlineCopy = headline;
  headlineLabel = [(VMMessageHeaderView *)self headlineLabel];
  text = [headlineLabel text];

  if (text != headlineCopy)
  {
    headlineLabel2 = [(VMMessageHeaderView *)self headlineLabel];
    [headlineLabel2 setText:headlineCopy];
  }
}

- (NSString)localizedSubheadline
{
  subheadlineLabel = [(VMMessageHeaderView *)self subheadlineLabel];
  text = [subheadlineLabel text];

  return text;
}

- (void)setLocalizedSubheadline:(id)subheadline
{
  subheadlineCopy = subheadline;
  subheadlineLabel = [(VMMessageHeaderView *)self subheadlineLabel];
  text = [subheadlineLabel text];

  if (text != subheadlineCopy)
  {
    subheadlineLabel2 = [(VMMessageHeaderView *)self subheadlineLabel];
    [subheadlineLabel2 setText:subheadlineCopy];
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = VMMessageHeaderView;
  [(VMMessageHeaderView *)&v3 updateConstraints];
  if ([(VMMessageHeaderView *)self subviewsLayoutConstraintsLoaded])
  {
    [(VMMessageHeaderView *)self updateConstraintsConstants];
  }

  else
  {
    [(VMMessageHeaderView *)self loadSubviewsLayoutConstraints];
  }
}

- (void)updateConstraintsConstants
{
  [(VMMessageHeaderView *)self dateLabelFirstBaselineAnchorLayoutConstraintConstant];
  v4 = v3;
  dateLabelFirstBaselineAnchorLayoutConstraint = [(VMMessageHeaderView *)self dateLabelFirstBaselineAnchorLayoutConstraint];
  [dateLabelFirstBaselineAnchorLayoutConstraint setConstant:v4];

  [(VMMessageHeaderView *)self headlineLabelFirstBaselineAnchorLayoutConstraintConstant];
  v7 = v6;
  headlineLabelFirstBaselineAnchorLayoutConstraint = [(VMMessageHeaderView *)self headlineLabelFirstBaselineAnchorLayoutConstraint];
  [headlineLabelFirstBaselineAnchorLayoutConstraint setConstant:v7];

  [(VMMessageHeaderView *)self subheadlineLabelFirstBaselineAnchorLayoutConstraintConstant];
  v10 = v9;
  subheadlineLabelFirstBaselineAnchorLayoutConstraint = [(VMMessageHeaderView *)self subheadlineLabelFirstBaselineAnchorLayoutConstraint];
  [subheadlineLabelFirstBaselineAnchorLayoutConstraint setConstant:v10];
}

- (void)commonInit
{
  self->_subviewsLayoutConstraintsLoaded = 0;
  self->_subviewsLoaded = 0;
  [(VMMessageHeaderView *)self loadSubviews];
}

- (void)loadSubviews
{
  if (!self->_subviewsLoaded)
  {
    v3 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    headlineLabel = self->_headlineLabel;
    self->_headlineLabel = v7;

    [(UILabel *)self->_headlineLabel setAdjustsFontSizeToFitWidth:0];
    v9 = +[UIFont voicemailHeadlineShortFont];
    [(UILabel *)self->_headlineLabel setFont:v9];

    [(UILabel *)self->_headlineLabel setLineBreakMode:4];
    [(UILabel *)self->_headlineLabel setTextAlignment:4];
    v10 = +[UIColor dynamicLabelColor];
    [(UILabel *)self->_headlineLabel setTextColor:v10];

    [(UILabel *)self->_headlineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1148846080;
    [(UILabel *)self->_headlineLabel setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UILabel *)self->_headlineLabel setContentCompressionResistancePriority:1 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(UILabel *)self->_headlineLabel setContentHuggingPriority:0 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UILabel *)self->_headlineLabel setContentHuggingPriority:1 forAxis:v14];
    v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subheadlineLabel = self->_subheadlineLabel;
    self->_subheadlineLabel = v15;

    [(UILabel *)self->_subheadlineLabel setAdjustsFontSizeToFitWidth:0];
    v17 = +[UIFont telephonyUIBodyShortFont];
    [(UILabel *)self->_subheadlineLabel setFont:v17];

    [(UILabel *)self->_subheadlineLabel setLineBreakMode:4];
    [(UILabel *)self->_subheadlineLabel setTextAlignment:4];
    v18 = +[UIColor dynamicLabelColor];
    [(UILabel *)self->_subheadlineLabel setTextColor:v18];

    [(UILabel *)self->_subheadlineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(UILabel *)self->_subheadlineLabel setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UILabel *)self->_subheadlineLabel setContentCompressionResistancePriority:1 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(UILabel *)self->_subheadlineLabel setContentHuggingPriority:0 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UILabel *)self->_subheadlineLabel setContentHuggingPriority:1 forAxis:v22];
    v23 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    dateLabel = self->_dateLabel;
    self->_dateLabel = v23;

    [(UILabel *)self->_dateLabel setAdjustsFontSizeToFitWidth:0];
    v25 = +[UIFont telephonyUIBodyShortFont];
    [(UILabel *)self->_dateLabel setFont:v25];

    [(UILabel *)self->_dateLabel setLineBreakMode:4];
    [(UILabel *)self->_dateLabel setTextAlignment:4];
    v26 = +[UIColor dynamicLabelColor];
    [(UILabel *)self->_dateLabel setTextColor:v26];

    [(UILabel *)self->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v27) = 1148846080;
    [(UILabel *)self->_dateLabel setContentCompressionResistancePriority:0 forAxis:v27];
    LODWORD(v28) = 1148846080;
    [(UILabel *)self->_dateLabel setContentCompressionResistancePriority:1 forAxis:v28];
    LODWORD(v29) = 1148846080;
    [(UILabel *)self->_dateLabel setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(UILabel *)self->_dateLabel setContentHuggingPriority:1 forAxis:v30];
    [(VMMessageHeaderView *)self addSubview:self->_headlineLabel];
    [(VMMessageHeaderView *)self addSubview:self->_subheadlineLabel];
    [(VMMessageHeaderView *)self addSubview:self->_dateLabel];
    self->_subviewsLoaded = 1;
  }
}

- (void)loadSubviewsLayoutConstraints
{
  if (!self->_subviewsLayoutConstraintsLoaded)
  {
    leadingAnchor = [(UILabel *)self->_headlineLabel leadingAnchor];
    leadingAnchor2 = [(VMMessageHeaderView *)self leadingAnchor];
    v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v5 setActive:1];

    trailingAnchor = [(UILabel *)self->_headlineLabel trailingAnchor];
    trailingAnchor2 = [(VMMessageHeaderView *)self trailingAnchor];
    v8 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [v8 setActive:1];

    firstBaselineAnchor = [(UILabel *)self->_headlineLabel firstBaselineAnchor];
    topAnchor = [(VMMessageHeaderView *)self topAnchor];
    [(VMMessageHeaderView *)self headlineLabelFirstBaselineAnchorLayoutConstraintConstant];
    v11 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
    headlineLabelFirstBaselineAnchorLayoutConstraint = self->_headlineLabelFirstBaselineAnchorLayoutConstraint;
    self->_headlineLabelFirstBaselineAnchorLayoutConstraint = v11;

    [(NSLayoutConstraint *)self->_headlineLabelFirstBaselineAnchorLayoutConstraint setActive:1];
    leadingAnchor3 = [(UILabel *)self->_subheadlineLabel leadingAnchor];
    leadingAnchor4 = [(VMMessageHeaderView *)self leadingAnchor];
    v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v15 setActive:1];

    trailingAnchor3 = [(UILabel *)self->_subheadlineLabel trailingAnchor];
    trailingAnchor4 = [(VMMessageHeaderView *)self trailingAnchor];
    v18 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    [v18 setActive:1];

    firstBaselineAnchor2 = [(UILabel *)self->_subheadlineLabel firstBaselineAnchor];
    firstBaselineAnchor3 = [(UILabel *)self->_headlineLabel firstBaselineAnchor];
    [(VMMessageHeaderView *)self subheadlineLabelFirstBaselineAnchorLayoutConstraintConstant];
    v21 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
    subheadlineLabelFirstBaselineAnchorLayoutConstraint = self->_subheadlineLabelFirstBaselineAnchorLayoutConstraint;
    self->_subheadlineLabelFirstBaselineAnchorLayoutConstraint = v21;

    [(NSLayoutConstraint *)self->_subheadlineLabelFirstBaselineAnchorLayoutConstraint setActive:1];
    leadingAnchor5 = [(UILabel *)self->_dateLabel leadingAnchor];
    leadingAnchor6 = [(VMMessageHeaderView *)self leadingAnchor];
    v25 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v25 setActive:1];

    trailingAnchor5 = [(UILabel *)self->_dateLabel trailingAnchor];
    trailingAnchor6 = [(VMMessageHeaderView *)self trailingAnchor];
    v28 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
    [v28 setActive:1];

    firstBaselineAnchor4 = [(UILabel *)self->_dateLabel firstBaselineAnchor];
    firstBaselineAnchor5 = [(UILabel *)self->_subheadlineLabel firstBaselineAnchor];
    [(VMMessageHeaderView *)self dateLabelFirstBaselineAnchorLayoutConstraintConstant];
    v31 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5 constant:?];
    dateLabelFirstBaselineAnchorLayoutConstraint = self->_dateLabelFirstBaselineAnchorLayoutConstraint;
    self->_dateLabelFirstBaselineAnchorLayoutConstraint = v31;

    [(NSLayoutConstraint *)self->_dateLabelFirstBaselineAnchorLayoutConstraint setActive:1];
    bottomAnchor = [(VMMessageHeaderView *)self bottomAnchor];
    bottomAnchor2 = [(UILabel *)self->_dateLabel bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v35 setActive:1];

    self->_subviewsLayoutConstraintsLoaded = 1;
  }
}

- (double)dateLabelFirstBaselineAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  [v2 _scaledValueForValue:20.0];
  v4 = ceil(v3);

  return v4;
}

- (double)headlineLabelFirstBaselineAnchorLayoutConstraintConstant
{
  v2 = +[UIFont voicemailHeadlineShortFont];
  [v2 _scaledValueForValue:28.0];
  v4 = ceil(v3);

  return v4;
}

- (double)subheadlineLabelFirstBaselineAnchorLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  [v2 _scaledValueForValue:20.0];
  v4 = ceil(v3);

  return v4;
}

@end