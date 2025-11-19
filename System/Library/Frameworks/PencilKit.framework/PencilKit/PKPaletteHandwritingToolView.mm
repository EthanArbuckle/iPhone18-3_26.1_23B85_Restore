@interface PKPaletteHandwritingToolView
- (CGAffineTransform)_toolLabelImageViewTransform;
- (CGPoint)_toolLabelCenterOffset;
- (PKPaletteHandwritingToolView)init;
- (PKPaletteHandwritingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6;
- (id)_toolLabelText;
- (void)_setOverrideLabelCenterOffsetYHandler:(id)a3;
- (void)_updateUI;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)setScalingFactor:(double)a3;
- (void)updateConstraints;
@end

@implementation PKPaletteHandwritingToolView

- (PKPaletteHandwritingToolView)init
{
  v3 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:@"com.apple.ink.handwriting"];
  v4 = [(PKPaletteHandwritingToolView *)self initWithToolIdentifier:@"com.apple.ink.handwriting" itemIdentifier:@"com.apple.tool.scribble" variant:0 configuration:v3];

  return v4;
}

- (PKPaletteHandwritingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6
{
  v37[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKPaletteHandwritingToolView;
  v6 = [(PKPaletteToolView *)&v32 initWithToolIdentifier:a3 itemIdentifier:a4 variant:a5 configuration:a6];
  v7 = v6;
  if (v6)
  {
    localeIdentifier = v6->_localeIdentifier;
    v6->_localeIdentifier = @"en";

    v7->_needsUpdateTitleLabel = 1;
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    toolLabel = v7->_toolLabel;
    v7->_toolLabel = v9;

    v11 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v12 = [v11 fontDescriptor];
    v36 = *MEMORY[0x1E69DB990];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
    v37[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];

    v34 = *MEMORY[0x1E69DB8F0];
    v35 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v16 = [v12 fontDescriptorByAddingAttributes:v15];

    v17 = [v16 fontDescriptorWithDesign:*MEMORY[0x1E69DB8D8]];

    v18 = MEMORY[0x1E69DB878];
    [v11 pointSize];
    v19 = [v18 fontWithDescriptor:v17 size:?];

    [(UILabel *)v7->_toolLabel setFont:v19];
    v20 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v7->_toolLabel setTextColor:v20];

    [(UILabel *)v7->_toolLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteHandwritingToolView *)v7 addSubview:v7->_toolLabel];
    v21 = [(UILabel *)v7->_toolLabel centerXAnchor];
    v22 = [(PKPaletteHandwritingToolView *)v7 centerXAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    toolLabelCenterXConstraint = v7->_toolLabelCenterXConstraint;
    v7->_toolLabelCenterXConstraint = v23;

    v25 = [(UILabel *)v7->_toolLabel centerYAnchor];
    v26 = [(PKPaletteHandwritingToolView *)v7 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    toolLabelCenterYConstraint = v7->_toolLabelCenterYConstraint;
    v7->_toolLabelCenterYConstraint = v27;

    v29 = MEMORY[0x1E696ACD8];
    v33[0] = v7->_toolLabelCenterXConstraint;
    v33[1] = v7->_toolLabelCenterYConstraint;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    [v29 activateConstraints:v30];

    [(PKPaletteHandwritingToolView *)v7 setEdgeLocation:4];
    [(PKPaletteHandwritingToolView *)v7 _updateUI];
  }

  return v7;
}

- (void)_updateUI
{
  [(PKPaletteHandwritingToolView *)self _toolLabelImageViewTransform];
  v3 = [(PKPaletteHandwritingToolView *)self toolLabel];
  v6[0] = v6[3];
  v6[1] = v6[4];
  v6[2] = v6[5];
  [v3 setTransform:v6];

  if ([(PKPaletteHandwritingToolView *)self needsUpdateTitleLabel])
  {
    v4 = [(PKPaletteHandwritingToolView *)self _toolLabelText];
    v5 = [(PKPaletteHandwritingToolView *)self toolLabel];
    [v5 setText:v4];

    [(PKPaletteHandwritingToolView *)self setNeedsUpdateTitleLabel:0];
  }
}

- (id)_toolLabelText
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [(PKPaletteHandwritingToolView *)self localeIdentifier];
  v5 = [v3 localizedStringForKey:@"HANDWRITING_TOOL_TEXT_LABEL" value:@"HANDWRITING_TOOL_TEXT_LABEL" table:@"PencilKit" localization:v4];

  if ([v5 isEqualToString:@"HANDWRITING_TOOL_TEXT_LABEL"])
  {
    v6 = [v3 localizedStringForKey:@"HANDWRITING_TOOL_TEXT_LABEL" value:@"HANDWRITING_TOOL_TEXT_LABEL" table:@"PencilKit" localization:@"en"];

    v5 = v6;
  }

  return v5;
}

- (CGAffineTransform)_toolLabelImageViewTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  v16 = *MEMORY[0x1E695EFD0];
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v15;
  v14 = *(v5 + 32);
  *&retstr->tx = v14;
  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    *&v18.a = v16;
    *&v18.c = v15;
    *&v18.tx = v14;
    v6 = 1.57079633;
LABEL_5:
    CGAffineTransformRotate(retstr, &v18, v6);
    goto LABEL_6;
  }

  if ([(PKPaletteToolView *)self edgeLocation]== 8)
  {
    v7 = *&retstr->c;
    *&v18.a = *&retstr->a;
    *&v18.c = v7;
    *&v18.tx = *&retstr->tx;
    v6 = -1.57079633;
    goto LABEL_5;
  }

LABEL_6:
  [(PKPaletteToolView *)self scalingFactor];
  v9 = v8;
  [(PKPaletteToolView *)self scalingFactor];
  v10 = *&retstr->c;
  *&v17.a = *&retstr->a;
  *&v17.c = v10;
  *&v17.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v18, &v17, v9, v11);
  v13 = *&v18.c;
  *&retstr->a = *&v18.a;
  *&retstr->c = v13;
  *&retstr->tx = *&v18.tx;
  return result;
}

- (void)updateConstraints
{
  [(PKPaletteHandwritingToolView *)self _toolLabelCenterOffset];
  v4 = v3;
  v6 = v5;
  v7 = [(PKPaletteHandwritingToolView *)self toolLabelCenterXConstraint];
  [v7 setConstant:v4];

  v8 = [(PKPaletteHandwritingToolView *)self toolLabelCenterYConstraint];
  [v8 setConstant:v6];

  v9.receiver = self;
  v9.super_class = PKPaletteHandwritingToolView;
  [(PKPaletteToolView *)&v9 updateConstraints];
}

- (CGPoint)_toolLabelCenterOffset
{
  v3 = [(PKPaletteHandwritingToolView *)self traitCollection];
  v4 = [(PKPaletteHandwritingToolView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  if (v6)
  {
    if ([(PKPaletteHandwritingToolView *)self isSelected])
    {
      v7 = 4.0;
    }

    else
    {
      v7 = 14.0;
    }

    v8 = 0.25;
    goto LABEL_22;
  }

  overrideLabelCenterOffsetYHandler = self->__overrideLabelCenterOffsetYHandler;
  if ([(PKPaletteToolView *)self edgeLocation]== 2)
  {
    v10 = [(PKPaletteHandwritingToolView *)self isSelected]== 0;
    v11.n128_u64[0] = -24.0;
    v12 = -4.0;
LABEL_10:
    if (v10)
    {
      v8 = v11.n128_f64[0];
    }

    else
    {
      v8 = v12;
    }

    if (overrideLabelCenterOffsetYHandler)
    {
      v7 = (*(self->__overrideLabelCenterOffsetYHandler + 2))(v11);
    }

    else
    {
      v7 = 0.0;
    }

    goto LABEL_22;
  }

  if ([(PKPaletteToolView *)self edgeLocation]== 8)
  {
    v10 = [(PKPaletteHandwritingToolView *)self isSelected]== 0;
    v11.n128_u64[0] = 24.0;
    v12 = 4.0;
    goto LABEL_10;
  }

  if (overrideLabelCenterOffsetYHandler)
  {
    v7 = (*(self->__overrideLabelCenterOffsetYHandler + 2))();
  }

  else if ([(PKPaletteHandwritingToolView *)self isSelected])
  {
    v7 = 4.0;
  }

  else
  {
    v7 = 24.0;
  }

  v8 = 0.0;
LABEL_22:
  [(PKPaletteToolView *)self scalingFactor];
  v14 = v7 * v13;
  v15 = v8 * v13;
  result.y = v14;
  result.x = v15;
  return result;
}

- (void)setScalingFactor:(double)a3
{
  [(PKPaletteToolView *)self scalingFactor];
  v6 = v5;
  v8.receiver = self;
  v8.super_class = PKPaletteHandwritingToolView;
  [(PKPaletteToolView *)&v8 setScalingFactor:a3];
  [(PKPaletteToolView *)self scalingFactor];
  if (v6 != v7 && vabdd_f64(v6, v7) >= fabs(v7 * 0.000000999999997))
  {
    [(PKPaletteHandwritingToolView *)self setNeedsUpdateConstraints];
    [(PKPaletteHandwritingToolView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)a3
{
  v5 = [(PKPaletteToolView *)self edgeLocation];
  v6.receiver = self;
  v6.super_class = PKPaletteHandwritingToolView;
  [(PKPaletteToolView *)&v6 setEdgeLocation:a3];
  if (v5 != [(PKPaletteToolView *)self edgeLocation])
  {
    [(PKPaletteHandwritingToolView *)self setNeedsUpdateConstraints];
    [(PKPaletteHandwritingToolView *)self _updateUI];
  }
}

- (void)setLocaleIdentifier:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_localeIdentifier isEqualToString:?])
  {
    v4 = [v6 copy];
    localeIdentifier = self->_localeIdentifier;
    self->_localeIdentifier = v4;

    [(PKPaletteHandwritingToolView *)self setNeedsUpdateTitleLabel:1];
    [(PKPaletteHandwritingToolView *)self _updateUI];
  }
}

- (void)_setOverrideLabelCenterOffsetYHandler:(id)a3
{
  if (self->__overrideLabelCenterOffsetYHandler != a3)
  {
    v4 = [a3 copy];
    overrideLabelCenterOffsetYHandler = self->__overrideLabelCenterOffsetYHandler;
    self->__overrideLabelCenterOffsetYHandler = v4;

    [(PKPaletteHandwritingToolView *)self setNeedsUpdateConstraints];
  }
}

@end