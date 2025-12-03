@interface PKPaletteHandwritingToolView
- (CGAffineTransform)_toolLabelImageViewTransform;
- (CGPoint)_toolLabelCenterOffset;
- (PKPaletteHandwritingToolView)init;
- (PKPaletteHandwritingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration;
- (id)_toolLabelText;
- (void)_setOverrideLabelCenterOffsetYHandler:(id)handler;
- (void)_updateUI;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setScalingFactor:(double)factor;
- (void)updateConstraints;
@end

@implementation PKPaletteHandwritingToolView

- (PKPaletteHandwritingToolView)init
{
  v3 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:@"com.apple.ink.handwriting"];
  v4 = [(PKPaletteHandwritingToolView *)self initWithToolIdentifier:@"com.apple.ink.handwriting" itemIdentifier:@"com.apple.tool.scribble" variant:0 configuration:v3];

  return v4;
}

- (PKPaletteHandwritingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration
{
  v37[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKPaletteHandwritingToolView;
  v6 = [(PKPaletteToolView *)&v32 initWithToolIdentifier:identifier itemIdentifier:itemIdentifier variant:variant configuration:configuration];
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
    fontDescriptor = [v11 fontDescriptor];
    v36 = *MEMORY[0x1E69DB990];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
    v37[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];

    v34 = *MEMORY[0x1E69DB8F0];
    v35 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v16 = [fontDescriptor fontDescriptorByAddingAttributes:v15];

    v17 = [v16 fontDescriptorWithDesign:*MEMORY[0x1E69DB8D8]];

    v18 = MEMORY[0x1E69DB878];
    [v11 pointSize];
    v19 = [v18 fontWithDescriptor:v17 size:?];

    [(UILabel *)v7->_toolLabel setFont:v19];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v7->_toolLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v7->_toolLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteHandwritingToolView *)v7 addSubview:v7->_toolLabel];
    centerXAnchor = [(UILabel *)v7->_toolLabel centerXAnchor];
    centerXAnchor2 = [(PKPaletteHandwritingToolView *)v7 centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    toolLabelCenterXConstraint = v7->_toolLabelCenterXConstraint;
    v7->_toolLabelCenterXConstraint = v23;

    centerYAnchor = [(UILabel *)v7->_toolLabel centerYAnchor];
    centerYAnchor2 = [(PKPaletteHandwritingToolView *)v7 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
  toolLabel = [(PKPaletteHandwritingToolView *)self toolLabel];
  v6[0] = v6[3];
  v6[1] = v6[4];
  v6[2] = v6[5];
  [toolLabel setTransform:v6];

  if ([(PKPaletteHandwritingToolView *)self needsUpdateTitleLabel])
  {
    _toolLabelText = [(PKPaletteHandwritingToolView *)self _toolLabelText];
    toolLabel2 = [(PKPaletteHandwritingToolView *)self toolLabel];
    [toolLabel2 setText:_toolLabelText];

    [(PKPaletteHandwritingToolView *)self setNeedsUpdateTitleLabel:0];
  }
}

- (id)_toolLabelText
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  localeIdentifier = [(PKPaletteHandwritingToolView *)self localeIdentifier];
  v5 = [v3 localizedStringForKey:@"HANDWRITING_TOOL_TEXT_LABEL" value:@"HANDWRITING_TOOL_TEXT_LABEL" table:@"PencilKit" localization:localeIdentifier];

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
  toolLabelCenterXConstraint = [(PKPaletteHandwritingToolView *)self toolLabelCenterXConstraint];
  [toolLabelCenterXConstraint setConstant:v4];

  toolLabelCenterYConstraint = [(PKPaletteHandwritingToolView *)self toolLabelCenterYConstraint];
  [toolLabelCenterYConstraint setConstant:v6];

  v9.receiver = self;
  v9.super_class = PKPaletteHandwritingToolView;
  [(PKPaletteToolView *)&v9 updateConstraints];
}

- (CGPoint)_toolLabelCenterOffset
{
  traitCollection = [(PKPaletteHandwritingToolView *)self traitCollection];
  window = [(PKPaletteHandwritingToolView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

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

- (void)setScalingFactor:(double)factor
{
  [(PKPaletteToolView *)self scalingFactor];
  v6 = v5;
  v8.receiver = self;
  v8.super_class = PKPaletteHandwritingToolView;
  [(PKPaletteToolView *)&v8 setScalingFactor:factor];
  [(PKPaletteToolView *)self scalingFactor];
  if (v6 != v7 && vabdd_f64(v6, v7) >= fabs(v7 * 0.000000999999997))
  {
    [(PKPaletteHandwritingToolView *)self setNeedsUpdateConstraints];
    [(PKPaletteHandwritingToolView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)location
{
  edgeLocation = [(PKPaletteToolView *)self edgeLocation];
  v6.receiver = self;
  v6.super_class = PKPaletteHandwritingToolView;
  [(PKPaletteToolView *)&v6 setEdgeLocation:location];
  if (edgeLocation != [(PKPaletteToolView *)self edgeLocation])
  {
    [(PKPaletteHandwritingToolView *)self setNeedsUpdateConstraints];
    [(PKPaletteHandwritingToolView *)self _updateUI];
  }
}

- (void)setLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_localeIdentifier isEqualToString:?])
  {
    v4 = [identifierCopy copy];
    localeIdentifier = self->_localeIdentifier;
    self->_localeIdentifier = v4;

    [(PKPaletteHandwritingToolView *)self setNeedsUpdateTitleLabel:1];
    [(PKPaletteHandwritingToolView *)self _updateUI];
  }
}

- (void)_setOverrideLabelCenterOffsetYHandler:(id)handler
{
  if (self->__overrideLabelCenterOffsetYHandler != handler)
  {
    v4 = [handler copy];
    overrideLabelCenterOffsetYHandler = self->__overrideLabelCenterOffsetYHandler;
    self->__overrideLabelCenterOffsetYHandler = v4;

    [(PKPaletteHandwritingToolView *)self setNeedsUpdateConstraints];
  }
}

@end