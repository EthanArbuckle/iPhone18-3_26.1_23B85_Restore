@interface DirectionsElevationLabelSummaryView
- (BOOL)_shouldStackVertically;
- (DirectionsElevationLabelSummaryView)initWithFrame:(CGRect)frame;
- (id)accessibilityIdentifier;
- (void)_updateShouldStackVertically;
- (void)_updateStackViewMetrics;
- (void)setAscent:(id)ascent descent:(id)descent;
- (void)setFont:(id)font;
- (void)setFont:(id)font color:(id)color;
@end

@implementation DirectionsElevationLabelSummaryView

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_updateStackViewMetrics
{
  stackVertically = self->_stackVertically;
  labelStack = self->_labelStack;
  if (stackVertically)
  {
    v5 = 2.0;
  }

  else
  {
    v5 = 8.0;
  }

  [(UIStackView *)labelStack setAxis:?];
  v6 = self->_labelStack;

  [(UIStackView *)v6 setSpacing:v5];
}

- (BOOL)_shouldStackVertically
{
  traitCollection = [(DirectionsElevationLabelSummaryView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)_updateShouldStackVertically
{
  _shouldStackVertically = [(DirectionsElevationLabelSummaryView *)self _shouldStackVertically];
  if (self->_stackVertically != _shouldStackVertically)
  {
    self->_stackVertically = _shouldStackVertically;
    [(DirectionsElevationLabelSummaryView *)self _updateStackViewMetrics];

    [(DirectionsElevationLabelSummaryView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setFont:(id)font color:(id)color
{
  ascentLabel = self->_ascentLabel;
  colorCopy = color;
  fontCopy = font;
  [(DirectionsElevationLabelView *)ascentLabel setFont:fontCopy color:colorCopy];
  [(DirectionsElevationLabelView *)self->_descentLabel setFont:fontCopy color:colorCopy];
}

- (void)setFont:(id)font
{
  ascentLabel = self->_ascentLabel;
  fontCopy = font;
  [(DirectionsElevationLabelView *)ascentLabel setFont:fontCopy];
  [(DirectionsElevationLabelView *)self->_descentLabel setFont:fontCopy];
}

- (void)setAscent:(id)ascent descent:(id)descent
{
  ascentLabel = self->_ascentLabel;
  descentCopy = descent;
  [(DirectionsElevationLabelView *)ascentLabel setElevation:ascent];
  [(DirectionsElevationLabelView *)self->_descentLabel setElevation:descentCopy];
}

- (DirectionsElevationLabelSummaryView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = DirectionsElevationLabelSummaryView;
  v3 = [(DirectionsElevationLabelSummaryView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[DirectionsElevationLabelView alloc] initWithStyle:0];
    ascentLabel = v3->_ascentLabel;
    v3->_ascentLabel = v4;

    v6 = [[DirectionsElevationLabelView alloc] initWithStyle:1];
    descentLabel = v3->_descentLabel;
    v3->_descentLabel = v6;

    v8 = [UIStackView alloc];
    v33[0] = v3->_ascentLabel;
    v33[1] = v3->_descentLabel;
    v9 = [NSArray arrayWithObjects:v33 count:2];
    v10 = [v8 initWithArrangedSubviews:v9];

    [(UIStackView *)v10 setAccessibilityIdentifier:@"DirectionsElevationLabelStack"];
    [(UIStackView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v10 setDistribution:2];
    [(UIStackView *)v10 setAlignment:0];
    LODWORD(v11) = 1132068864;
    [(UIStackView *)v10 setContentHuggingPriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UIStackView *)v10 setContentHuggingPriority:1 forAxis:v12];
    LODWORD(v13) = 1148829696;
    [(UIStackView *)v10 setContentCompressionResistancePriority:0 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UIStackView *)v10 setContentCompressionResistancePriority:1 forAxis:v14];
    [(DirectionsElevationLabelSummaryView *)v3 addSubview:v10];
    labelStack = v3->_labelStack;
    v3->_labelStack = v10;
    v16 = v10;

    v3->_stackVertically = [(DirectionsElevationLabelSummaryView *)v3 _shouldStackVertically];
    [(DirectionsElevationLabelSummaryView *)v3 _updateStackViewMetrics];
    topAnchor = [(UIStackView *)v16 topAnchor];
    topAnchor2 = [(DirectionsElevationLabelSummaryView *)v3 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[0] = v28;
    leadingAnchor = [(UIStackView *)v16 leadingAnchor];
    leadingAnchor2 = [(DirectionsElevationLabelSummaryView *)v3 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[1] = v17;
    bottomAnchor = [(DirectionsElevationLabelSummaryView *)v3 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v16 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[2] = v20;
    trailingAnchor = [(DirectionsElevationLabelSummaryView *)v3 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v16 trailingAnchor];
    v23 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    v32[3] = v23;
    v24 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v24];

    [DynamicTypeWizard makeObject:v3 performSelector:"_contentSizeCategoryDidChange" whenSizeCategoryChangesWithOrder:0];
  }

  return v3;
}

@end