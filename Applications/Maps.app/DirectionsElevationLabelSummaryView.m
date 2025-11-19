@interface DirectionsElevationLabelSummaryView
- (BOOL)_shouldStackVertically;
- (DirectionsElevationLabelSummaryView)initWithFrame:(CGRect)a3;
- (id)accessibilityIdentifier;
- (void)_updateShouldStackVertically;
- (void)_updateStackViewMetrics;
- (void)setAscent:(id)a3 descent:(id)a4;
- (void)setFont:(id)a3;
- (void)setFont:(id)a3 color:(id)a4;
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
  v2 = [(DirectionsElevationLabelSummaryView *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

- (void)_updateShouldStackVertically
{
  v3 = [(DirectionsElevationLabelSummaryView *)self _shouldStackVertically];
  if (self->_stackVertically != v3)
  {
    self->_stackVertically = v3;
    [(DirectionsElevationLabelSummaryView *)self _updateStackViewMetrics];

    [(DirectionsElevationLabelSummaryView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setFont:(id)a3 color:(id)a4
{
  ascentLabel = self->_ascentLabel;
  v7 = a4;
  v8 = a3;
  [(DirectionsElevationLabelView *)ascentLabel setFont:v8 color:v7];
  [(DirectionsElevationLabelView *)self->_descentLabel setFont:v8 color:v7];
}

- (void)setFont:(id)a3
{
  ascentLabel = self->_ascentLabel;
  v5 = a3;
  [(DirectionsElevationLabelView *)ascentLabel setFont:v5];
  [(DirectionsElevationLabelView *)self->_descentLabel setFont:v5];
}

- (void)setAscent:(id)a3 descent:(id)a4
{
  ascentLabel = self->_ascentLabel;
  v7 = a4;
  [(DirectionsElevationLabelView *)ascentLabel setElevation:a3];
  [(DirectionsElevationLabelView *)self->_descentLabel setElevation:v7];
}

- (DirectionsElevationLabelSummaryView)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = DirectionsElevationLabelSummaryView;
  v3 = [(DirectionsElevationLabelSummaryView *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v30 = [(UIStackView *)v16 topAnchor];
    v29 = [(DirectionsElevationLabelSummaryView *)v3 topAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v32[0] = v28;
    v27 = [(UIStackView *)v16 leadingAnchor];
    v26 = [(DirectionsElevationLabelSummaryView *)v3 leadingAnchor];
    v17 = [v27 constraintEqualToAnchor:v26];
    v32[1] = v17;
    v18 = [(DirectionsElevationLabelSummaryView *)v3 bottomAnchor];
    v19 = [(UIStackView *)v16 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v32[2] = v20;
    v21 = [(DirectionsElevationLabelSummaryView *)v3 trailingAnchor];
    v22 = [(UIStackView *)v16 trailingAnchor];
    v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
    v32[3] = v23;
    v24 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v24];

    [DynamicTypeWizard makeObject:v3 performSelector:"_contentSizeCategoryDidChange" whenSizeCategoryChangesWithOrder:0];
  }

  return v3;
}

@end