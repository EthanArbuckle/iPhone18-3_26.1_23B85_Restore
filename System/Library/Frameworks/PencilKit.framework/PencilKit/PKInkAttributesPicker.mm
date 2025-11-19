@interface PKInkAttributesPicker
- (PKInk)selectedInk;
- (PKInkAttributesPicker)initWithInk:(id)a3 toolConfiguration:(id)a4;
- (int64_t)colorUserInterfaceStyle;
- (unint64_t)displayMode;
- (void)_inkAttributesPickerViewUserDidEndDraggingSlider:(id)a3;
- (void)_inkAttributesPickerViewUserDidStartDraggingSlider:(id)a3;
- (void)_notifyInkAttributesPickerDidChangeInk;
- (void)_updateUI;
- (void)inkAttributesPickerViewDidChangeInkAzimuth:(id)a3;
- (void)inkAttributesPickerViewDidChangeInkOpacity:(id)a3;
- (void)inkAttributesPickerViewDidChangeInkThickness:(id)a3;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
- (void)setDisplayMode:(unint64_t)a3;
- (void)setMinimumOpacityValue:(double)a3;
- (void)setSelectedInk:(id)a3 animated:(BOOL)a4;
- (void)setTopViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKInkAttributesPicker

- (PKInkAttributesPicker)initWithInk:(id)a3 toolConfiguration:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PKInkAttributesPicker;
  v8 = [(PKInkAttributesPicker *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_minimumOpacityValue = 0.1;
    v10 = [[_PKInkAttributesPickerView alloc] initWithInk:v6 toolConfiguration:v7];
    pickerView = v9->_pickerView;
    v9->_pickerView = v10;

    [(_PKInkAttributesPickerView *)v9->_pickerView setDelegate:v9];
    [(_PKInkAttributesPickerView *)v9->_pickerView setDisplayMode:[(PKInkAttributesPicker *)v9 displayMode]];
    v12 = objc_alloc(MEMORY[0x1E69DCF90]);
    v18[0] = v9->_pickerView;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14 = [v12 initWithArrangedSubviews:v13];
    stackView = v9->_stackView;
    v9->_stackView = v14;

    [(UIStackView *)v9->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_stackView setAxis:1];
    [(_PKInkAttributesPickerView *)v9->_pickerView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(PKInkAttributesPicker *)v9 setPreferredContentSize:?];
    [(PKInkAttributesPicker *)v9 _updateUI];
  }

  return v9;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PKInkAttributesPicker;
  [(PKInkAttributesPicker *)&v24 viewDidLoad];
  v3 = [(PKInkAttributesPicker *)self view];
  [v3 addSubview:self->_stackView];

  v4 = [(PKInkAttributesPicker *)self view];
  v5 = [v4 safeAreaLayoutGuide];
  v6 = [v5 leadingAnchor];
  v7 = [(UIStackView *)self->_stackView leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [(PKInkAttributesPicker *)self view];
  v10 = [v9 safeAreaLayoutGuide];
  v11 = [v10 trailingAnchor];
  v12 = [(UIStackView *)self->_stackView trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(PKInkAttributesPicker *)self view];
  v15 = [v14 safeAreaLayoutGuide];
  v16 = [v15 topAnchor];
  v17 = [(UIStackView *)self->_stackView topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(PKInkAttributesPicker *)self view];
  v20 = [v19 safeAreaLayoutGuide];
  v21 = [v20 bottomAnchor];
  v22 = [(UIStackView *)self->_stackView bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];
}

- (void)setTopViewController:(id)a3
{
  v5 = a3;
  topViewController = self->_topViewController;
  if (topViewController != v5)
  {
    if (topViewController)
    {
      [(UIViewController *)topViewController willMoveToParentViewController:0];
      [(UIView *)self->_topViewControllerViewWrapper removeFromSuperview];
      [(UIViewController *)self->_topViewController removeFromParentViewController];
      topViewControllerViewWrapper = self->_topViewControllerViewWrapper;
      self->_topViewControllerViewWrapper = 0;
    }

    objc_storeStrong(&self->_topViewController, a3);
    [(_PKInkAttributesPickerView *)self->_pickerView setShowsTopSeparator:self->_topViewController != 0];
    [(_PKInkAttributesPickerView *)self->_pickerView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v9 = v8;
    v11 = v10;
    if (self->_topViewController)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v13 = self->_topViewControllerViewWrapper;
      self->_topViewControllerViewWrapper = v12;

      [(UIView *)self->_topViewControllerViewWrapper setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_topViewControllerViewWrapper setClipsToBounds:1];
      v14 = [(UIViewController *)self->_topViewController view];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_topViewControllerViewWrapper addSubview:v14];
      [(PKInkAttributesPicker *)self addChildViewController:self->_topViewController];
      [(UIStackView *)self->_stackView insertArrangedSubview:self->_topViewControllerViewWrapper atIndex:0];
      [(UIViewController *)self->_topViewController didMoveToParentViewController:self];
      [(UIViewController *)self->_topViewController preferredContentSize];
      v17 = v16;
      if (v15 == 0.0)
      {
        v18 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v34 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_ERROR, "View controller from viewControllerProvider has a preferredContentSize height of zero. Defaulting to 50pt height.", v34, 2u);
        }

        v19 = 50.0;
      }

      else
      {
        v19 = v15;
      }

      if (v9 < v17)
      {
        v9 = v17;
      }

      v11 = v11 + v19;
      v20 = [(UIView *)self->_topViewControllerViewWrapper heightAnchor];
      v21 = [v20 constraintEqualToConstant:v19];
      [v21 setActive:1];

      v22 = [v14 leadingAnchor];
      v23 = [(UIView *)self->_topViewControllerViewWrapper leadingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [v24 setActive:1];

      v25 = [v14 trailingAnchor];
      v26 = [(UIView *)self->_topViewControllerViewWrapper trailingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [v27 setActive:1];

      v28 = [v14 topAnchor];
      v29 = [(UIView *)self->_topViewControllerViewWrapper topAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      [v30 setActive:1];

      v31 = [v14 bottomAnchor];
      v32 = [(UIView *)self->_topViewControllerViewWrapper bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v33 setActive:1];
    }

    [(PKInkAttributesPicker *)self setPreferredContentSize:v9, v11];
  }
}

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  v4 = [(PKInkAttributesPicker *)self pickerView];
  [v4 setColorUserInterfaceStyle:a3];
}

- (int64_t)colorUserInterfaceStyle
{
  v2 = [(PKInkAttributesPicker *)self pickerView];
  v3 = [v2 colorUserInterfaceStyle];

  return v3;
}

- (void)setMinimumOpacityValue:(double)a3
{
  if (self->_minimumOpacityValue != a3)
  {
    self->_minimumOpacityValue = a3;
    [(PKInkAttributesPicker *)self _updateUI];
  }
}

- (void)_updateUI
{
  [(PKInkAttributesPicker *)self minimumOpacityValue];
  v4 = v3;
  v5 = [(PKInkAttributesPicker *)self pickerView];
  [v5 setMinimumOpacityValue:v4];
}

- (PKInk)selectedInk
{
  v2 = [(PKInkAttributesPicker *)self pickerView];
  v3 = [v2 ink];

  return v3;
}

- (void)setSelectedInk:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PKInkAttributesPicker *)self pickerView];
  [v7 setInk:v6 animated:v4];
}

- (unint64_t)displayMode
{
  v2 = [(PKInkAttributesPicker *)self pickerView];
  v3 = [v2 displayMode];

  return v3;
}

- (void)setDisplayMode:(unint64_t)a3
{
  v5 = [(PKInkAttributesPicker *)self pickerView];
  [v5 setDisplayMode:a3];

  v6 = [(PKInkAttributesPicker *)self pickerView];
  [v6 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(PKInkAttributesPicker *)self setPreferredContentSize:?];
}

- (void)_notifyInkAttributesPickerDidChangeInk
{
  v3 = [(PKInkAttributesPicker *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(PKInkAttributesPicker *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PKInkAttributesPicker *)self delegate];
      [v7 inkAttributesPickerDidChangeSelectedInk:self];
    }
  }
}

- (void)inkAttributesPickerViewDidChangeInkAzimuth:(id)a3
{
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  [(PKInkAttributesPicker *)self _notifyInkAttributesPickerDidChangeInk];
  v4 = [(PKInkAttributesPicker *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PKInkAttributesPicker *)self delegate];
      [v8 inkAttributesPickerDidChangeInkAzimuth:self];
    }
  }
}

- (void)inkAttributesPickerViewDidChangeInkThickness:(id)a3
{
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  [(PKInkAttributesPicker *)self _notifyInkAttributesPickerDidChangeInk];
  v4 = [(PKInkAttributesPicker *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PKInkAttributesPicker *)self delegate];
      [v8 inkAttributesPickerDidChangeInkThickness:self];
    }
  }
}

- (void)inkAttributesPickerViewDidChangeInkOpacity:(id)a3
{
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  [(PKInkAttributesPicker *)self _notifyInkAttributesPickerDidChangeInk];
  v4 = [(PKInkAttributesPicker *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PKInkAttributesPicker *)self delegate];
      [v8 inkAttributesPickerDidChangeInkOpacity:self];
    }
  }
}

- (void)_inkAttributesPickerViewUserDidStartDraggingSlider:(id)a3
{
  self->_updatingOpacityValue = 1;
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  v4 = [(PKInkAttributesPicker *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PKInkAttributesPicker *)self delegate];
      [v8 _inkAttributesPickerUserDidStartDraggingSlider:self];
    }
  }
}

- (void)_inkAttributesPickerViewUserDidEndDraggingSlider:(id)a3
{
  self->_updatingOpacityValue = 0;
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  v4 = [(PKInkAttributesPicker *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PKInkAttributesPicker *)self delegate];
      [v8 _inkAttributesPickerUserDidEndDraggingSlider:self];
    }
  }
}

@end