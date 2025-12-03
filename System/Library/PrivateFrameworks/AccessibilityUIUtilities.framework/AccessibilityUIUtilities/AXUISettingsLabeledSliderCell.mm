@interface AXUISettingsLabeledSliderCell
- (AXUISettingsLabeledSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (unint64_t)accessibilityTraits;
- (void)_updateLabelFont:(id)font;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)dealloc;
- (void)didChangeTraitPreferredContentSizeCategory;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setLabelText:(id)text;
@end

@implementation AXUISettingsLabeledSliderCell

- (AXUISettingsLabeledSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v63[1] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = AXUISettingsLabeledSliderCell;
  v4 = [(PSTableCell *)&v62 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AXUISettingsLabeledSliderCell *)v4 setUserInteractionEnabled:1];
    contentView = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    [contentView setHidden:0];

    v7 = objc_alloc([(AXUISettingsLabeledSliderCell *)v5 sliderCellClass]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    [(AXUISettingsLabeledSliderCell *)v5 setSliderView:v12];
    [(AXUISettingsLabeledSliderCell *)v5 minimumValue];
    *&v13 = v13;
    [v12 setMinimumValue:v13];
    [(AXUISettingsLabeledSliderCell *)v5 maximumValue];
    *&v14 = v14;
    [v12 setMaximumValue:v14];
    [(AXUISettingsLabeledSliderCell *)v5 initialValue];
    *&v15 = v15;
    [v12 setValue:v15];
    [v12 setContinuous:1];
    [v12 addTarget:v5 action:sel_handleSliderBeingDragged_ forControlEvents:4096];
    [v12 addTarget:v5 action:sel_handleSliderDidFinishDrag_ forControlEvents:192];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1148846080;
    [v12 setContentCompressionResistancePriority:1 forAxis:v16];
    contentView2 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    [contentView2 addSubview:v12];

    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    [(AXUISettingsLabeledSliderCell *)v5 setRightView:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [v18 setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [v18 setContentCompressionResistancePriority:1 forAxis:v20];
    contentView3 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    [contentView3 addSubview:v18];

    v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    [(AXUISettingsLabeledSliderCell *)v5 setRightLabel:v22];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 addSubview:v22];
    [v22 setTextAlignment:2];
    [v22 setNumberOfLines:1];
    [v22 setLineBreakMode:2];
    [(AXUISettingsLabeledSliderCell *)v5 _updateLabelFont:v22];
    labelTextColor = [(AXUISettingsLabeledSliderCell *)v5 labelTextColor];
    [v22 setTextColor:labelTextColor];

    [v22 setAdjustsFontForContentSizeCategory:1];
    [(AXUISettingsLabeledSliderCell *)v5 rightViewPadding];
    *&v8 = v24;
    leadingAnchor = [v12 leadingAnchor];
    contentView4 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:25.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v28];

    trailingAnchor = [v12 trailingAnchor];
    leadingAnchor3 = [v18 leadingAnchor];
    v31 = -*&v8;
    v32 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:v31];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v32];

    trailingAnchor2 = [v18 trailingAnchor];
    contentView5 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    trailingAnchor3 = [contentView5 trailingAnchor];
    v36 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v31];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v36];

    centerYAnchor = [v12 centerYAnchor];
    contentView6 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    centerYAnchor2 = [contentView6 centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v40];

    centerYAnchor3 = [v18 centerYAnchor];
    contentView7 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    centerYAnchor4 = [contentView7 centerYAnchor];
    v44 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v44];

    heightAnchor = [v18 heightAnchor];
    contentView8 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    heightAnchor2 = [contentView8 heightAnchor];
    v48 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v48];

    leadingAnchor4 = [v22 leadingAnchor];
    leadingAnchor5 = [v18 leadingAnchor];
    v51 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v51];

    trailingAnchor4 = [v22 trailingAnchor];
    trailingAnchor5 = [v18 trailingAnchor];
    v54 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v54];

    centerYAnchor5 = [v22 centerYAnchor];
    centerYAnchor6 = [v18 centerYAnchor];
    v57 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v57];

    v63[0] = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
    v59 = [(AXUISettingsLabeledSliderCell *)v5 registerForTraitChanges:v58 withAction:sel_didChangeTraitPreferredContentSizeCategory];
    traitRegistration = v5->_traitRegistration;
    v5->_traitRegistration = v59;
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v18.receiver = self;
  v18.super_class = AXUISettingsLabeledSliderCell;
  [(PSTableCell *)&v18 refreshCellContentsWithSpecifier:specifier];
  maximumTextSizeString = [(AXUISettingsLabeledSliderCell *)self maximumTextSizeString];
  if (maximumTextSizeString)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v6 setNumberOfLines:1];
    [(AXUISettingsLabeledSliderCell *)self _updateLabelFont:v6];
    [v6 setAdjustsFontForContentSizeCategory:1];
    [v6 setText:maximumTextSizeString];
    [v6 sizeThatFits:{10000.0, 10000.0}];
    v8 = v7;

    if (v8 != 0.0)
    {
      [(NSLayoutConstraint *)self->_rightViewConstraint constant];
      if (v9 == v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = 0.0;
  }

  if (self->_rightViewConstraint)
  {
    [(AXUISettingsLabeledSliderCell *)self removeConstraint:?];
    rightViewConstraint = self->_rightViewConstraint;
    self->_rightViewConstraint = 0;
  }

LABEL_8:
  if (v8 > 0.0)
  {
    rightView = [(AXUISettingsLabeledSliderCell *)self rightView];
    v12 = [rightView ax_addedConstraintForLayoutAttribute:7 asEqualToConstant:v8];
    [(AXUISettingsLabeledSliderCell *)self setRightViewConstraint:v12];

    rightViewConstraint = [(AXUISettingsLabeledSliderCell *)self rightViewConstraint];
    [(AXUISettingsLabeledSliderCell *)self addConstraint:rightViewConstraint];
  }

  [(AXUISettingsLabeledSliderCell *)self initialValue];
  v15 = v14;
  sliderView = [(AXUISettingsLabeledSliderCell *)self sliderView];
  *&v17 = v15;
  [sliderView setValue:v17];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXUISettingsLabeledSliderCell;
  [(PSTableCell *)&v4 prepareForReuse];
  if (self->_rightViewConstraint)
  {
    [(AXUISettingsLabeledSliderCell *)self removeConstraint:?];
    rightViewConstraint = self->_rightViewConstraint;
    self->_rightViewConstraint = 0;
  }
}

- (void)dealloc
{
  [(AXUISettingsLabeledSliderCell *)self unregisterForTraitChanges:self->_traitRegistration];
  v3.receiver = self;
  v3.super_class = AXUISettingsLabeledSliderCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)_updateLabelFont:(id)font
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDCF8];
  fontCopy = font;
  v8 = [v3 preferredFontForTextStyle:v4];
  v6 = MEMORY[0x1E69DB878];
  [v8 pointSize];
  v7 = [v6 monospacedDigitSystemFontOfSize:? weight:?];
  [fontCopy setFont:v7];
}

- (id)accessibilityValue
{
  rightLabel = [(AXUISettingsLabeledSliderCell *)self rightLabel];
  accessibilityLabel = [rightLabel accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  sliderView = [(AXUISettingsLabeledSliderCell *)self sliderView];
  accessibilityTraits = [sliderView accessibilityTraits];

  return accessibilityTraits;
}

- (void)accessibilityDecrement
{
  sliderView = [(AXUISettingsLabeledSliderCell *)self sliderView];
  [sliderView accessibilityDecrement];

  AXPerformBlockAsynchronouslyOnMainThread();
}

void __55__AXUISettingsLabeledSliderCell_accessibilityDecrement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 sliderView];
  [v1 handleSliderDidFinishDrag:v2];
}

- (void)accessibilityIncrement
{
  sliderView = [(AXUISettingsLabeledSliderCell *)self sliderView];
  [sliderView accessibilityIncrement];

  AXPerformBlockAsynchronouslyOnMainThread();
}

void __55__AXUISettingsLabeledSliderCell_accessibilityIncrement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 sliderView];
  [v1 handleSliderDidFinishDrag:v2];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (([(AXUISettingsLabeledSliderCell *)self isHidden]& 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = AXUISettingsLabeledSliderCell;
    v8 = [(AXUISettingsLabeledSliderCell *)&v12 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    sliderView = [(AXUISettingsLabeledSliderCell *)self sliderView];
    sliderView2 = [(AXUISettingsLabeledSliderCell *)self sliderView];
    [(AXUISettingsLabeledSliderCell *)self convertPoint:sliderView2 toView:x, y];
    v8 = [sliderView hitTest:eventCopy withEvent:?];
  }

  return v8;
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  rightLabel = [(AXUISettingsLabeledSliderCell *)self rightLabel];
  [rightLabel setText:textCopy];
}

- (id)accessibilityLabel
{
  v4.receiver = self;
  v4.super_class = AXUISettingsLabeledSliderCell;
  accessibilityLabel = [(AXUISettingsLabeledSliderCell *)&v4 accessibilityLabel];

  return accessibilityLabel;
}

- (CGPoint)accessibilityActivationPoint
{
  sliderView = [(AXUISettingsLabeledSliderCell *)self sliderView];
  [sliderView accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)didChangeTraitPreferredContentSizeCategory
{
  rightLabel = [(AXUISettingsLabeledSliderCell *)self rightLabel];
  [(AXUISettingsLabeledSliderCell *)self _updateLabelFont:rightLabel];
}

@end