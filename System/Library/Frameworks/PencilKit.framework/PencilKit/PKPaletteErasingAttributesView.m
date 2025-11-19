@interface PKPaletteErasingAttributesView
- (CGSize)intrinsicContentSize;
- (PKPaletteErasingAttributesView)initWithFrame:(CGRect)a3;
- (int64_t)eraserType;
- (void)_updateThicknessPickerToolConfiguration;
- (void)setEraserType:(int64_t)a3;
- (void)setHideWeightPicker:(BOOL)a3;
@end

@implementation PKPaletteErasingAttributesView

- (PKPaletteErasingAttributesView)initWithFrame:(CGRect)a3
{
  v59[1] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = PKPaletteErasingAttributesView;
  v3 = [(PKPaletteErasingAttributesView *)&v56 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF38]);
    segmentedControl = v3->_segmentedControl;
    v3->_segmentedControl = v4;

    [(UISegmentedControl *)v3->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteErasingAttributesView *)v3 addSubview:v3->_segmentedControl];
    v55 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:@"com.apple.ink.objectEraser"];
    v6 = [[_PKInkThicknessPicker alloc] initWithToolConfiguration:v55];
    thicknessPicker = v3->_thicknessPicker;
    v3->_thicknessPicker = v6;

    [(_PKInkThicknessPicker *)v3->_thicknessPicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteErasingAttributesView *)v3 addSubview:v3->_thicknessPicker];
    +[PKLayoutConstants inkAttributesPickerViewOuterPadding];
    v9 = v8;
    v10 = [(UISegmentedControl *)v3->_segmentedControl bottomAnchor];
    v11 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:-v9];
    v59[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
    hiddenThicknessPickerConstraints = v3->_hiddenThicknessPickerConstraints;
    v3->_hiddenThicknessPickerConstraints = v14;

    v53 = [(UISegmentedControl *)v3->_segmentedControl bottomAnchor];
    v51 = [(_PKInkThicknessPicker *)v3->_thicknessPicker topAnchor];
    v49 = [v53 constraintEqualToAnchor:v51 constant:-v9];
    v58[0] = v49;
    v47 = [(_PKInkThicknessPicker *)v3->_thicknessPicker widthAnchor];
    v45 = [v47 constraintEqualToConstant:280.0];
    v58[1] = v45;
    v44 = [(_PKInkThicknessPicker *)v3->_thicknessPicker centerXAnchor];
    v43 = [(UISegmentedControl *)v3->_segmentedControl centerXAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v58[2] = v42;
    v41 = [(_PKInkThicknessPicker *)v3->_thicknessPicker leadingAnchor];
    v16 = [(UISegmentedControl *)v3->_segmentedControl leadingAnchor];
    v17 = [v41 constraintGreaterThanOrEqualToAnchor:v16];
    v58[3] = v17;
    v18 = [(_PKInkThicknessPicker *)v3->_thicknessPicker trailingAnchor];
    v19 = [(UISegmentedControl *)v3->_segmentedControl trailingAnchor];
    v20 = [v18 constraintLessThanOrEqualToAnchor:v19];
    v58[4] = v20;
    v21 = [(_PKInkThicknessPicker *)v3->_thicknessPicker bottomAnchor];
    v22 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:-v9];
    v58[5] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:6];
    visibleThicknessPickerConstraints = v3->_visibleThicknessPickerConstraints;
    v3->_visibleThicknessPickerConstraints = v25;

    v46 = MEMORY[0x1E696ACD8];
    v52 = [(UISegmentedControl *)v3->_segmentedControl topAnchor];
    v54 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    v50 = [v54 topAnchor];
    v48 = [v52 constraintEqualToAnchor:v50 constant:v9];
    v57[0] = v48;
    v27 = [(UISegmentedControl *)v3->_segmentedControl leadingAnchor];
    v28 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    v29 = [v28 leadingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:v9];
    v57[1] = v30;
    v31 = [(UISegmentedControl *)v3->_segmentedControl trailingAnchor];
    v32 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    v33 = [v32 trailingAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:-v9];
    v57[2] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
    [v46 activateConstraints:v35];

    [MEMORY[0x1E696ACD8] activateConstraints:v3->_visibleThicknessPickerConstraints];
    v36 = v3->_segmentedControl;
    v37 = PKPaletteEraserNameForEraserType(0);
    [(UISegmentedControl *)v36 insertSegmentWithTitle:v37 atIndex:0 animated:0];

    v38 = v3->_segmentedControl;
    v39 = PKPaletteEraserNameForEraserType(1);
    [(UISegmentedControl *)v38 insertSegmentWithTitle:v39 atIndex:1 animated:0];

    [(PKPaletteErasingAttributesView *)v3 setEraserType:1];
  }

  return v3;
}

- (void)setHideWeightPicker:(BOOL)a3
{
  if (self->_hideWeightPicker != a3)
  {
    v11 = v3;
    self->_hideWeightPicker = a3;
    if (a3)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:self->_visibleThicknessPickerConstraints];
      [(_PKInkThicknessPicker *)self->_thicknessPicker removeFromSuperview];
      v10 = &OBJC_IVAR___PKPaletteErasingAttributesView__hiddenThicknessPickerConstraints;
    }

    else
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:self->_hiddenThicknessPickerConstraints];
      [(PKPaletteErasingAttributesView *)self addSubview:self->_thicknessPicker];
      v10 = &OBJC_IVAR___PKPaletteErasingAttributesView__visibleThicknessPickerConstraints;
    }

    [MEMORY[0x1E696ACD8] activateConstraints:{*(&self->super.super.super.isa + *v10), v6, v5, v4, v11, v7}];

    [(PKPaletteErasingAttributesView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setEraserType:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = [(PKPaletteErasingAttributesView *)self segmentedControl];
    if ([v8 numberOfSegments] <= a3)
    {
    }

    else
    {
      v5 = [(PKPaletteErasingAttributesView *)self segmentedControl];
      v6 = [v5 selectedSegmentIndex];

      if (v6 != a3)
      {
        v7 = [(PKPaletteErasingAttributesView *)self segmentedControl];
        [v7 setSelectedSegmentIndex:a3];

        [(PKPaletteErasingAttributesView *)self _updateThicknessPickerToolConfiguration];
      }
    }
  }
}

- (void)_updateThicknessPickerToolConfiguration
{
  v3 = [(PKPaletteErasingAttributesView *)self eraserType];
  v4 = &PKInkIdentifierObjectEraser;
  if (v3 != 1)
  {
    v4 = &PKInkIdentifierEraser;
  }

  v5 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:*v4];
  [(_PKInkThicknessPicker *)&self->_thicknessPicker->super.super.super.super.isa setToolConfiguration:v5];
  [(_PKInkThicknessPicker *)self->_thicknessPicker setUserInteractionEnabled:[(PKPaletteErasingAttributesView *)self eraserType]== 0];
}

- (int64_t)eraserType
{
  v2 = [(PKPaletteErasingAttributesView *)self segmentedControl];
  v3 = [v2 selectedSegmentIndex];

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PKPaletteErasingAttributesView *)self segmentedControl];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  [v3 sizeThatFits:{*MEMORY[0x1E695F060], v5}];
  v7 = v6;
  v9 = v8;

  +[PKLayoutConstants inkAttributesPickerViewOuterPadding];
  v11 = v10;
  if ([(PKPaletteErasingAttributesView *)self hideWeightPicker])
  {
    v12 = v7 + v11 * 2.0;
    v13 = v9 + v11 * 2.0;
  }

  else
  {
    v14 = [(PKPaletteErasingAttributesView *)self thicknessPicker];
    [v14 sizeThatFits:{v4, v5}];
    v16 = v15;
    v18 = v17;

    if (v7 >= v16)
    {
      v19 = v7;
    }

    else
    {
      v19 = v16;
    }

    v12 = v19 + v11 * 2.0;
    v13 = v9 + v11 * 3.0 + v18;
  }

  result.height = v13;
  result.width = v12;
  return result;
}

@end