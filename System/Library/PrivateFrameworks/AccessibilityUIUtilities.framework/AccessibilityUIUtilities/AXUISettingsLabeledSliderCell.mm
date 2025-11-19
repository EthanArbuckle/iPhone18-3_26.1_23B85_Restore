@interface AXUISettingsLabeledSliderCell
- (AXUISettingsLabeledSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)_updateLabelFont:(id)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)dealloc;
- (void)didChangeTraitPreferredContentSizeCategory;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setLabelText:(id)a3;
@end

@implementation AXUISettingsLabeledSliderCell

- (AXUISettingsLabeledSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = AXUISettingsLabeledSliderCell;
  v4 = [(PSTableCell *)&v62 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AXUISettingsLabeledSliderCell *)v4 setUserInteractionEnabled:1];
    v6 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    [v6 setHidden:0];

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
    v17 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    [v17 addSubview:v12];

    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    [(AXUISettingsLabeledSliderCell *)v5 setRightView:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [v18 setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [v18 setContentCompressionResistancePriority:1 forAxis:v20];
    v21 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    [v21 addSubview:v18];

    v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    [(AXUISettingsLabeledSliderCell *)v5 setRightLabel:v22];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 addSubview:v22];
    [v22 setTextAlignment:2];
    [v22 setNumberOfLines:1];
    [v22 setLineBreakMode:2];
    [(AXUISettingsLabeledSliderCell *)v5 _updateLabelFont:v22];
    v23 = [(AXUISettingsLabeledSliderCell *)v5 labelTextColor];
    [v22 setTextColor:v23];

    [v22 setAdjustsFontForContentSizeCategory:1];
    [(AXUISettingsLabeledSliderCell *)v5 rightViewPadding];
    *&v8 = v24;
    v25 = [v12 leadingAnchor];
    v26 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    v27 = [v26 leadingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27 constant:25.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v28];

    v29 = [v12 trailingAnchor];
    v30 = [v18 leadingAnchor];
    v31 = -*&v8;
    v32 = [v29 constraintEqualToAnchor:v30 constant:v31];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v32];

    v33 = [v18 trailingAnchor];
    v34 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    v35 = [v34 trailingAnchor];
    v36 = [v33 constraintEqualToAnchor:v35 constant:v31];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v36];

    v37 = [v12 centerYAnchor];
    v38 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    v39 = [v38 centerYAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v40];

    v41 = [v18 centerYAnchor];
    v42 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    v43 = [v42 centerYAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v44];

    v45 = [v18 heightAnchor];
    v46 = [(AXUISettingsLabeledSliderCell *)v5 contentView];
    v47 = [v46 heightAnchor];
    v48 = [v45 constraintEqualToAnchor:v47 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v48];

    v49 = [v22 leadingAnchor];
    v50 = [v18 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v51];

    v52 = [v22 trailingAnchor];
    v53 = [v18 trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v54];

    v55 = [v22 centerYAnchor];
    v56 = [v18 centerYAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:0.0];
    [(AXUISettingsLabeledSliderCell *)v5 addConstraint:v57];

    v63[0] = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
    v59 = [(AXUISettingsLabeledSliderCell *)v5 registerForTraitChanges:v58 withAction:sel_didChangeTraitPreferredContentSizeCategory];
    traitRegistration = v5->_traitRegistration;
    v5->_traitRegistration = v59;
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v18.receiver = self;
  v18.super_class = AXUISettingsLabeledSliderCell;
  [(PSTableCell *)&v18 refreshCellContentsWithSpecifier:a3];
  v4 = [(AXUISettingsLabeledSliderCell *)self maximumTextSizeString];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v6 setNumberOfLines:1];
    [(AXUISettingsLabeledSliderCell *)self _updateLabelFont:v6];
    [v6 setAdjustsFontForContentSizeCategory:1];
    [v6 setText:v4];
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
    v11 = [(AXUISettingsLabeledSliderCell *)self rightView];
    v12 = [v11 ax_addedConstraintForLayoutAttribute:7 asEqualToConstant:v8];
    [(AXUISettingsLabeledSliderCell *)self setRightViewConstraint:v12];

    v13 = [(AXUISettingsLabeledSliderCell *)self rightViewConstraint];
    [(AXUISettingsLabeledSliderCell *)self addConstraint:v13];
  }

  [(AXUISettingsLabeledSliderCell *)self initialValue];
  v15 = v14;
  v16 = [(AXUISettingsLabeledSliderCell *)self sliderView];
  *&v17 = v15;
  [v16 setValue:v17];
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

- (void)_updateLabelFont:(id)a3
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = a3;
  v8 = [v3 preferredFontForTextStyle:v4];
  v6 = MEMORY[0x1E69DB878];
  [v8 pointSize];
  v7 = [v6 monospacedDigitSystemFontOfSize:? weight:?];
  [v5 setFont:v7];
}

- (id)accessibilityValue
{
  v2 = [(AXUISettingsLabeledSliderCell *)self rightLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AXUISettingsLabeledSliderCell *)self sliderView];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (void)accessibilityDecrement
{
  v2 = [(AXUISettingsLabeledSliderCell *)self sliderView];
  [v2 accessibilityDecrement];

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
  v2 = [(AXUISettingsLabeledSliderCell *)self sliderView];
  [v2 accessibilityIncrement];

  AXPerformBlockAsynchronouslyOnMainThread();
}

void __55__AXUISettingsLabeledSliderCell_accessibilityIncrement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 sliderView];
  [v1 handleSliderDidFinishDrag:v2];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (([(AXUISettingsLabeledSliderCell *)self isHidden]& 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = AXUISettingsLabeledSliderCell;
    v8 = [(AXUISettingsLabeledSliderCell *)&v12 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v9 = [(AXUISettingsLabeledSliderCell *)self sliderView];
    v10 = [(AXUISettingsLabeledSliderCell *)self sliderView];
    [(AXUISettingsLabeledSliderCell *)self convertPoint:v10 toView:x, y];
    v8 = [v9 hitTest:v7 withEvent:?];
  }

  return v8;
}

- (void)setLabelText:(id)a3
{
  v4 = a3;
  v5 = [(AXUISettingsLabeledSliderCell *)self rightLabel];
  [v5 setText:v4];
}

- (id)accessibilityLabel
{
  v4.receiver = self;
  v4.super_class = AXUISettingsLabeledSliderCell;
  v2 = [(AXUISettingsLabeledSliderCell *)&v4 accessibilityLabel];

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(AXUISettingsLabeledSliderCell *)self sliderView];
  [v2 accessibilityActivationPoint];
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
  v3 = [(AXUISettingsLabeledSliderCell *)self rightLabel];
  [(AXUISettingsLabeledSliderCell *)self _updateLabelFont:v3];
}

@end