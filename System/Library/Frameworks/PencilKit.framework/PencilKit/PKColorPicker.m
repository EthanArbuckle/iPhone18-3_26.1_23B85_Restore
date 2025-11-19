@interface PKColorPicker
- (CGSize)preferredContentSize;
- (PKColorPicker)init;
- (PKColorPickerDelegate)delegate;
- (UIColor)selectedColor;
- (int64_t)colorUserInterfaceStyle;
- (void)_colorPickerViewDidChangeSelectedColor:(id)a3;
- (void)_colorPickerViewUserDidTouchUpInside:(id)a3;
- (void)_setInitialColorForSpringLoading:(id)a3;
- (void)_setSelectedColorForPoint:(CGPoint)a3;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
- (void)setSelectedColor:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKColorPicker

- (PKColorPicker)init
{
  v7.receiver = self;
  v7.super_class = PKColorPicker;
  v2 = [(PKColorPicker *)&v7 init];
  v3 = [_PKColorPickerView alloc];
  v4 = [(_PKColorPickerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  colorPickerView = v2->_colorPickerView;
  v2->_colorPickerView = v4;

  [(_PKColorPickerView *)v2->_colorPickerView setDelegate:v2];
  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKColorPicker;
  [(PKColorPicker *)&v5 viewDidLoad];
  v3 = [(PKColorPicker *)self view];
  v4 = [(PKColorPicker *)self colorPickerView];
  [v3 addSubview:v4];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKColorPicker;
  [(PKColorPicker *)&v10 viewWillLayoutSubviews];
  v3 = [(PKColorPicker *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v12 = CGRectInset(v11, 5.0, 5.0);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v9 = [(PKColorPicker *)self colorPickerView];
  [v9 setFrame:{x, y, width, height}];
}

- (UIColor)selectedColor
{
  v2 = [(PKColorPicker *)self colorPickerView];
  v3 = [v2 selectedColor];

  return v3;
}

- (void)setSelectedColor:(id)a3
{
  v4 = a3;
  v5 = [(PKColorPicker *)self colorPickerView];
  [v5 setSelectedColor:v4];
}

- (int64_t)colorUserInterfaceStyle
{
  v2 = [(_PKColorPickerView *)self->_colorPickerView gridColorPicker];
  v3 = [v2 colorUserInterfaceStyle];

  return v3;
}

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  v4 = [(_PKColorPickerView *)self->_colorPickerView gridColorPicker];
  [v4 setColorUserInterfaceStyle:a3];
}

- (CGSize)preferredContentSize
{
  v2 = [(PKColorPicker *)self colorPickerView];
  [v2 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_setSelectedColorForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKColorPicker *)self view];
  v7 = [(PKColorPicker *)self colorPickerView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(PKColorPicker *)self colorPickerView];
  [v12 _setSelectedColorForPoint:{v9, v11}];
}

- (void)_setInitialColorForSpringLoading:(id)a3
{
  v4 = a3;
  v5 = [(PKColorPicker *)self colorPickerView];
  [v5 setInitialColor:v4];
}

- (void)_colorPickerViewDidChangeSelectedColor:(id)a3
{
  v4 = [(PKColorPicker *)self delegate];
  [v4 colorPickerDidChangeSelectedColor:self];
}

- (void)_colorPickerViewUserDidTouchUpInside:(id)a3
{
  v4 = [(PKColorPicker *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PKColorPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PKColorPicker *)self delegate];
      [v8 _colorPickerUserDidTouchUpInside:self];
    }
  }
}

- (PKColorPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end