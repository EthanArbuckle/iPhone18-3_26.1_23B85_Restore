@interface PKPaletteErasingAttributesView
- (CGSize)intrinsicContentSize;
- (PKPaletteErasingAttributesView)initWithFrame:(CGRect)frame;
- (int64_t)eraserType;
- (void)_updateThicknessPickerToolConfiguration;
- (void)setEraserType:(int64_t)type;
- (void)setHideWeightPicker:(BOOL)picker;
@end

@implementation PKPaletteErasingAttributesView

- (PKPaletteErasingAttributesView)initWithFrame:(CGRect)frame
{
  v59[1] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = PKPaletteErasingAttributesView;
  v3 = [(PKPaletteErasingAttributesView *)&v56 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    bottomAnchor = [(UISegmentedControl *)v3->_segmentedControl bottomAnchor];
    safeAreaLayoutGuide = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v9];
    v59[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
    hiddenThicknessPickerConstraints = v3->_hiddenThicknessPickerConstraints;
    v3->_hiddenThicknessPickerConstraints = v14;

    bottomAnchor3 = [(UISegmentedControl *)v3->_segmentedControl bottomAnchor];
    topAnchor = [(_PKInkThicknessPicker *)v3->_thicknessPicker topAnchor];
    v49 = [bottomAnchor3 constraintEqualToAnchor:topAnchor constant:-v9];
    v58[0] = v49;
    widthAnchor = [(_PKInkThicknessPicker *)v3->_thicknessPicker widthAnchor];
    v45 = [widthAnchor constraintEqualToConstant:280.0];
    v58[1] = v45;
    centerXAnchor = [(_PKInkThicknessPicker *)v3->_thicknessPicker centerXAnchor];
    centerXAnchor2 = [(UISegmentedControl *)v3->_segmentedControl centerXAnchor];
    v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v58[2] = v42;
    leadingAnchor = [(_PKInkThicknessPicker *)v3->_thicknessPicker leadingAnchor];
    leadingAnchor2 = [(UISegmentedControl *)v3->_segmentedControl leadingAnchor];
    v17 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v58[3] = v17;
    trailingAnchor = [(_PKInkThicknessPicker *)v3->_thicknessPicker trailingAnchor];
    trailingAnchor2 = [(UISegmentedControl *)v3->_segmentedControl trailingAnchor];
    v20 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v58[4] = v20;
    bottomAnchor4 = [(_PKInkThicknessPicker *)v3->_thicknessPicker bottomAnchor];
    safeAreaLayoutGuide2 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    bottomAnchor5 = [safeAreaLayoutGuide2 bottomAnchor];
    v24 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-v9];
    v58[5] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:6];
    visibleThicknessPickerConstraints = v3->_visibleThicknessPickerConstraints;
    v3->_visibleThicknessPickerConstraints = v25;

    v46 = MEMORY[0x1E696ACD8];
    topAnchor2 = [(UISegmentedControl *)v3->_segmentedControl topAnchor];
    safeAreaLayoutGuide3 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    topAnchor3 = [safeAreaLayoutGuide3 topAnchor];
    v48 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:v9];
    v57[0] = v48;
    leadingAnchor3 = [(UISegmentedControl *)v3->_segmentedControl leadingAnchor];
    safeAreaLayoutGuide4 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
    v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v9];
    v57[1] = v30;
    trailingAnchor3 = [(UISegmentedControl *)v3->_segmentedControl trailingAnchor];
    safeAreaLayoutGuide5 = [(PKPaletteErasingAttributesView *)v3 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide5 trailingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v9];
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

- (void)setHideWeightPicker:(BOOL)picker
{
  if (self->_hideWeightPicker != picker)
  {
    v11 = v3;
    self->_hideWeightPicker = picker;
    if (picker)
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

- (void)setEraserType:(int64_t)type
{
  if ((type & 0x8000000000000000) == 0)
  {
    segmentedControl = [(PKPaletteErasingAttributesView *)self segmentedControl];
    if ([segmentedControl numberOfSegments] <= type)
    {
    }

    else
    {
      segmentedControl2 = [(PKPaletteErasingAttributesView *)self segmentedControl];
      selectedSegmentIndex = [segmentedControl2 selectedSegmentIndex];

      if (selectedSegmentIndex != type)
      {
        segmentedControl3 = [(PKPaletteErasingAttributesView *)self segmentedControl];
        [segmentedControl3 setSelectedSegmentIndex:type];

        [(PKPaletteErasingAttributesView *)self _updateThicknessPickerToolConfiguration];
      }
    }
  }
}

- (void)_updateThicknessPickerToolConfiguration
{
  eraserType = [(PKPaletteErasingAttributesView *)self eraserType];
  v4 = &PKInkIdentifierObjectEraser;
  if (eraserType != 1)
  {
    v4 = &PKInkIdentifierEraser;
  }

  v5 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:*v4];
  [(_PKInkThicknessPicker *)&self->_thicknessPicker->super.super.super.super.isa setToolConfiguration:v5];
  [(_PKInkThicknessPicker *)self->_thicknessPicker setUserInteractionEnabled:[(PKPaletteErasingAttributesView *)self eraserType]== 0];
}

- (int64_t)eraserType
{
  segmentedControl = [(PKPaletteErasingAttributesView *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  return selectedSegmentIndex;
}

- (CGSize)intrinsicContentSize
{
  segmentedControl = [(PKPaletteErasingAttributesView *)self segmentedControl];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  [segmentedControl sizeThatFits:{*MEMORY[0x1E695F060], v5}];
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
    thicknessPicker = [(PKPaletteErasingAttributesView *)self thicknessPicker];
    [thicknessPicker sizeThatFits:{v4, v5}];
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