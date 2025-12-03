@interface PKPaletteErasingAttributesViewController
- (CGSize)preferredContentSize;
- (PKPaletteErasingAttributesViewControllerDelegate)delegate;
- (double)weight;
- (int64_t)eraserType;
- (void)_segmentedControlDidChangeValue:(id)value;
- (void)_thicknessValueChanged:(id)changed;
- (void)loadView;
- (void)setEraserType:(int64_t)type;
- (void)setHideWeightPicker:(BOOL)picker;
- (void)setWeight:(double)weight;
- (void)viewDidLoad;
@end

@implementation PKPaletteErasingAttributesViewController

- (void)loadView
{
  v5 = objc_alloc_init(PKPaletteErasingAttributesView);
  segmentedControl = [(PKPaletteErasingAttributesView *)v5 segmentedControl];
  [segmentedControl addTarget:self action:sel__segmentedControlDidChangeValue_ forControlEvents:4096];

  thicknessPicker = [(PKPaletteErasingAttributesView *)v5 thicknessPicker];
  [thicknessPicker addTarget:self action:sel__thicknessValueChanged_ forControlEvents:4096];

  [(PKPaletteErasingAttributesViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPaletteErasingAttributesViewController;
  [(PKPaletteErasingAttributesViewController *)&v4 viewDidLoad];
  if (PKIsVisionDevice())
  {
    view = [(PKPaletteErasingAttributesViewController *)self view];
    [view setOverrideUserInterfaceStyle:2];
  }
}

- (void)_segmentedControlDidChangeValue:(id)value
{
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  _attributesView = [(PKPaletteErasingAttributesViewController *)self _attributesView];
  [_attributesView _updateThicknessPickerToolConfiguration];

  delegate = [(PKPaletteErasingAttributesViewController *)self delegate];
  [delegate erasingAttributesViewControllerDidChangeErasingType:self];
}

- (void)setHideWeightPicker:(BOOL)picker
{
  pickerCopy = picker;
  _attributesView = [(PKPaletteErasingAttributesViewController *)self _attributesView];
  [_attributesView setHideWeightPicker:pickerCopy];
}

- (double)weight
{
  _attributesView = [(PKPaletteErasingAttributesViewController *)self _attributesView];
  thicknessPicker = [_attributesView thicknessPicker];
  if (thicknessPicker)
  {
    v4 = thicknessPicker[58];
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)setWeight:(double)weight
{
  _attributesView = [(PKPaletteErasingAttributesViewController *)self _attributesView];
  thicknessPicker = [_attributesView thicknessPicker];
  v5 = thicknessPicker;
  if (thicknessPicker)
  {
    thicknessPicker[58] = weight;
    [thicknessPicker setNeedsLayout];
  }
}

- (void)setEraserType:(int64_t)type
{
  _attributesView = [(PKPaletteErasingAttributesViewController *)self _attributesView];
  [_attributesView setEraserType:type];
}

- (int64_t)eraserType
{
  _attributesView = [(PKPaletteErasingAttributesViewController *)self _attributesView];
  eraserType = [_attributesView eraserType];

  return eraserType;
}

- (CGSize)preferredContentSize
{
  _attributesView = [(PKPaletteErasingAttributesViewController *)self _attributesView];
  [_attributesView intrinsicContentSize];
  v5 = v4;

  v6 = fmax(v5, 320.0);
  if (v6 <= 400.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 400.0;
  }

  _attributesView2 = [(PKPaletteErasingAttributesViewController *)self _attributesView];
  [_attributesView2 intrinsicContentSize];
  v10 = v9;

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_thicknessValueChanged:(id)changed
{
  delegate = [(PKPaletteErasingAttributesViewController *)self delegate];
  [delegate erasingAttributesViewControllerDidChangeInkThickness:self];
}

- (PKPaletteErasingAttributesViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end