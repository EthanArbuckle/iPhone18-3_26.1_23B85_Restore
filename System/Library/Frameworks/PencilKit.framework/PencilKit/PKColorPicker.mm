@interface PKColorPicker
- (CGSize)preferredContentSize;
- (PKColorPicker)init;
- (PKColorPickerDelegate)delegate;
- (UIColor)selectedColor;
- (int64_t)colorUserInterfaceStyle;
- (void)_colorPickerViewDidChangeSelectedColor:(id)color;
- (void)_colorPickerViewUserDidTouchUpInside:(id)inside;
- (void)_setInitialColorForSpringLoading:(id)loading;
- (void)_setSelectedColorForPoint:(CGPoint)point;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setSelectedColor:(id)color;
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
  view = [(PKColorPicker *)self view];
  colorPickerView = [(PKColorPicker *)self colorPickerView];
  [view addSubview:colorPickerView];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKColorPicker;
  [(PKColorPicker *)&v10 viewWillLayoutSubviews];
  view = [(PKColorPicker *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v12 = CGRectInset(v11, 5.0, 5.0);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  colorPickerView = [(PKColorPicker *)self colorPickerView];
  [colorPickerView setFrame:{x, y, width, height}];
}

- (UIColor)selectedColor
{
  colorPickerView = [(PKColorPicker *)self colorPickerView];
  selectedColor = [colorPickerView selectedColor];

  return selectedColor;
}

- (void)setSelectedColor:(id)color
{
  colorCopy = color;
  colorPickerView = [(PKColorPicker *)self colorPickerView];
  [colorPickerView setSelectedColor:colorCopy];
}

- (int64_t)colorUserInterfaceStyle
{
  gridColorPicker = [(_PKColorPickerView *)self->_colorPickerView gridColorPicker];
  colorUserInterfaceStyle = [gridColorPicker colorUserInterfaceStyle];

  return colorUserInterfaceStyle;
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  gridColorPicker = [(_PKColorPickerView *)self->_colorPickerView gridColorPicker];
  [gridColorPicker setColorUserInterfaceStyle:style];
}

- (CGSize)preferredContentSize
{
  colorPickerView = [(PKColorPicker *)self colorPickerView];
  [colorPickerView sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_setSelectedColorForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(PKColorPicker *)self view];
  colorPickerView = [(PKColorPicker *)self colorPickerView];
  [view convertPoint:colorPickerView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  colorPickerView2 = [(PKColorPicker *)self colorPickerView];
  [colorPickerView2 _setSelectedColorForPoint:{v9, v11}];
}

- (void)_setInitialColorForSpringLoading:(id)loading
{
  loadingCopy = loading;
  colorPickerView = [(PKColorPicker *)self colorPickerView];
  [colorPickerView setInitialColor:loadingCopy];
}

- (void)_colorPickerViewDidChangeSelectedColor:(id)color
{
  delegate = [(PKColorPicker *)self delegate];
  [delegate colorPickerDidChangeSelectedColor:self];
}

- (void)_colorPickerViewUserDidTouchUpInside:(id)inside
{
  delegate = [(PKColorPicker *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PKColorPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PKColorPicker *)self delegate];
      [delegate3 _colorPickerUserDidTouchUpInside:self];
    }
  }
}

- (PKColorPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end