@interface _PKColorPickerView
- (BOOL)pointIsSignificantlyOutside:(CGPoint)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_PKColorPickerView)initWithFrame:(CGRect)a3;
- (_PKColorPickerViewDelegate)delegate;
- (void)_setSelectedColorForPoint:(CGPoint)a3;
- (void)colorPickerImplementationDidChangeSelectedColor:(id)a3;
- (void)colorPickerImplementationUserDidTouchUpInside:(id)a3;
- (void)didPanCrosshair:(id)a3;
- (void)layoutSubviews;
- (void)setSelectedColor:(id)a3;
@end

@implementation _PKColorPickerView

- (_PKColorPickerView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = _PKColorPickerView;
  v3 = [(_PKColorPickerView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v13 = [(_PKColorPickerView *)v3 selectedColor];
  [(PKColorMatrixView *)v3->_gridColorPicker setSelectedColor:v13];

  v14 = [(PKColorMatrixView *)v3->_gridColorPicker layer];
  [v14 setCornerRadius:9.0];

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
  v19 = [(_PKColorPickerView *)v3 crosshairView];
  [v19 update];

  [(_PKColorPickerView *)v3 setAccessibilityIdentifier:@"gridColorPicker"];
  [(PKColorMatrixView *)v3->_gridColorPicker setHidden:0];
  return v3;
}

- (void)setSelectedColor:(id)a3
{
  v4 = a3;
  v5 = [(_PKColorPickerView *)self gridColorPicker];
  v6 = [v5 representableColorForColor:v4];

  selectedColor = self->_selectedColor;
  self->_selectedColor = v6;
  v8 = v6;

  v9 = [(_PKColorPickerView *)self gridColorPicker];
  [v9 setSelectedColor:v8];

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
  v11 = [(_PKColorPickerView *)self gridColorPicker];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(_PKColorPickerView *)self crosshairView];
  [v12 update];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 352.0;
  v4 = 296.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didPanCrosshair:(id)a3
{
  v7 = a3;
  if ([v7 state] == 1)
  {
    v4 = [(_PKColorPickerView *)self selectedColor];
    initialColor = self->_initialColor;
    self->_initialColor = v4;
  }

  else if ([v7 state] == 2)
  {
    [v7 locationInView:self];
    [(_PKColorPickerView *)self _setSelectedColorForPoint:?];
  }

  else if ([v7 state] == 3)
  {
    v6 = [(_PKColorPickerView *)self delegate];
    [v6 _colorPickerViewUserDidTouchUpInside:self];
  }
}

- (void)_setSelectedColorForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ((*&a3.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v6 = [(_PKColorPickerView *)self crosshairView];
    [v6 setCenter:{x, y}];

    if ([(_PKColorPickerView *)self pointIsSignificantlyOutside:x, y]&& self->_initialColor)
    {
      v7 = [(_PKColorPickerView *)self crosshairView];
      v8 = [v7 delegate];
      [v8 colorPickerCrosshairViewShouldUpdateWithColor:self->_initialColor];
    }

    else
    {
      v7 = [(_PKColorPickerView *)self crosshairView];
      v8 = [v7 delegate];
      v9 = [(_PKColorPickerView *)self crosshairView];
      [v8 colorPickerCrosshairViewShouldUpdateColor:v9 point:{x, y}];
    }

    [(_PKColorPickerView *)self setNeedsLayout];
  }
}

- (BOOL)pointIsSignificantlyOutside:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)colorPickerImplementationDidChangeSelectedColor:(id)a3
{
  v4 = [a3 selectedColor];
  [(_PKColorPickerView *)self setSelectedColor:v4];

  v5 = [(_PKColorPickerView *)self delegate];
  [v5 _colorPickerViewDidChangeSelectedColor:self];
}

- (void)colorPickerImplementationUserDidTouchUpInside:(id)a3
{
  v4 = [(_PKColorPickerView *)self delegate];
  [v4 _colorPickerViewUserDidTouchUpInside:self];
}

- (_PKColorPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end