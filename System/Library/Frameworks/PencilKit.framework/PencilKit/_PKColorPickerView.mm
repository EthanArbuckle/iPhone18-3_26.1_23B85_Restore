@interface _PKColorPickerView
- (BOOL)pointIsSignificantlyOutside:(CGPoint)outside;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_PKColorPickerView)initWithFrame:(CGRect)frame;
- (_PKColorPickerViewDelegate)delegate;
- (void)_setSelectedColorForPoint:(CGPoint)point;
- (void)colorPickerImplementationDidChangeSelectedColor:(id)color;
- (void)colorPickerImplementationUserDidTouchUpInside:(id)inside;
- (void)didPanCrosshair:(id)crosshair;
- (void)layoutSubviews;
- (void)setSelectedColor:(id)color;
@end

@implementation _PKColorPickerView

- (_PKColorPickerView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = _PKColorPickerView;
  v3 = [(_PKColorPickerView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_PKColorPickerView *)v3 setClipsToBounds:0];
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  selectedColor = v3->_selectedColor;
  v3->_selectedColor = v4;

  v6 = [PKColorMatrixView alloc];
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [(PKColorMatrixView *)v6 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
  gridColorPicker = v3->_gridColorPicker;
  v3->_gridColorPicker = v11;

  [(PKColorMatrixView *)v3->_gridColorPicker setColorPickerDelegate:v3];
  selectedColor = [(_PKColorPickerView *)v3 selectedColor];
  [(PKColorMatrixView *)v3->_gridColorPicker setSelectedColor:selectedColor];

  layer = [(PKColorMatrixView *)v3->_gridColorPicker layer];
  [layer setCornerRadius:9.0];

  [(PKColorMatrixView *)v3->_gridColorPicker setClipsToBounds:1];
  v15 = [[PKColorPickerCrosshairView alloc] initWithFrame:v7, v8, v9, v10];
  crosshairView = v3->_crosshairView;
  v3->_crosshairView = v15;

  [(PKColorPickerCrosshairView *)v3->_crosshairView setDelegate:v3->_gridColorPicker];
  v17 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel_didPanCrosshair_];
  crosshairPanGR = v3->_crosshairPanGR;
  v3->_crosshairPanGR = v17;

  [(_PKColorPickerView *)v3 addGestureRecognizer:v3->_crosshairPanGR];
  [(_PKColorPickerView *)v3 addSubview:v3->_gridColorPicker];
  [(_PKColorPickerView *)v3 addSubview:v3->_crosshairView];
  crosshairView = [(_PKColorPickerView *)v3 crosshairView];
  [crosshairView update];

  [(_PKColorPickerView *)v3 setAccessibilityIdentifier:@"gridColorPicker"];
  [(PKColorMatrixView *)v3->_gridColorPicker setHidden:0];
  return v3;
}

- (void)setSelectedColor:(id)color
{
  colorCopy = color;
  gridColorPicker = [(_PKColorPickerView *)self gridColorPicker];
  v6 = [gridColorPicker representableColorForColor:colorCopy];

  selectedColor = self->_selectedColor;
  self->_selectedColor = v6;
  v8 = v6;

  gridColorPicker2 = [(_PKColorPickerView *)self gridColorPicker];
  [gridColorPicker2 setSelectedColor:v8];

  [(_PKColorPickerView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _PKColorPickerView;
  [(_PKColorPickerView *)&v13 layoutSubviews];
  [(_PKColorPickerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  gridColorPicker = [(_PKColorPickerView *)self gridColorPicker];
  [gridColorPicker setFrame:{v4, v6, v8, v10}];

  crosshairView = [(_PKColorPickerView *)self crosshairView];
  [crosshairView update];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 352.0;
  v4 = 296.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didPanCrosshair:(id)crosshair
{
  crosshairCopy = crosshair;
  if ([crosshairCopy state] == 1)
  {
    selectedColor = [(_PKColorPickerView *)self selectedColor];
    initialColor = self->_initialColor;
    self->_initialColor = selectedColor;
  }

  else if ([crosshairCopy state] == 2)
  {
    [crosshairCopy locationInView:self];
    [(_PKColorPickerView *)self _setSelectedColorForPoint:?];
  }

  else if ([crosshairCopy state] == 3)
  {
    delegate = [(_PKColorPickerView *)self delegate];
    [delegate _colorPickerViewUserDidTouchUpInside:self];
  }
}

- (void)_setSelectedColorForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ((*&point.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&point.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    crosshairView = [(_PKColorPickerView *)self crosshairView];
    [crosshairView setCenter:{x, y}];

    if ([(_PKColorPickerView *)self pointIsSignificantlyOutside:x, y]&& self->_initialColor)
    {
      crosshairView2 = [(_PKColorPickerView *)self crosshairView];
      delegate = [crosshairView2 delegate];
      [delegate colorPickerCrosshairViewShouldUpdateWithColor:self->_initialColor];
    }

    else
    {
      crosshairView2 = [(_PKColorPickerView *)self crosshairView];
      delegate = [crosshairView2 delegate];
      crosshairView3 = [(_PKColorPickerView *)self crosshairView];
      [delegate colorPickerCrosshairViewShouldUpdateColor:crosshairView3 point:{x, y}];
    }

    [(_PKColorPickerView *)self setNeedsLayout];
  }
}

- (BOOL)pointIsSignificantlyOutside:(CGPoint)outside
{
  y = outside.y;
  x = outside.x;
  [(_PKColorPickerView *)self bounds];
  DKDDistanceToRect(x, y, v6, v7, v8, v9);
  v11 = v10;
  [(_PKColorPickerView *)self frame];
  v13 = v12;
  v14 = +[PKColorMatrixView defaultColorMatrix];
  v15 = v13 / [v14 count] * 5.0;

  if (v11 <= v15)
  {
    return 0;
  }

  [(_PKColorPickerView *)self bounds];
  v17.x = x;
  v17.y = y;
  return !CGRectContainsPoint(v18, v17);
}

- (void)colorPickerImplementationDidChangeSelectedColor:(id)color
{
  selectedColor = [color selectedColor];
  [(_PKColorPickerView *)self setSelectedColor:selectedColor];

  delegate = [(_PKColorPickerView *)self delegate];
  [delegate _colorPickerViewDidChangeSelectedColor:self];
}

- (void)colorPickerImplementationUserDidTouchUpInside:(id)inside
{
  delegate = [(_PKColorPickerView *)self delegate];
  [delegate _colorPickerViewUserDidTouchUpInside:self];
}

- (_PKColorPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end