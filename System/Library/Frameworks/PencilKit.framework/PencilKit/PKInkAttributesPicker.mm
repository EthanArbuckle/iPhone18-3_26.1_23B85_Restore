@interface PKInkAttributesPicker
- (PKInk)selectedInk;
- (PKInkAttributesPicker)initWithInk:(id)ink toolConfiguration:(id)configuration;
- (int64_t)colorUserInterfaceStyle;
- (unint64_t)displayMode;
- (void)_inkAttributesPickerViewUserDidEndDraggingSlider:(id)slider;
- (void)_inkAttributesPickerViewUserDidStartDraggingSlider:(id)slider;
- (void)_notifyInkAttributesPickerDidChangeInk;
- (void)_updateUI;
- (void)inkAttributesPickerViewDidChangeInkAzimuth:(id)azimuth;
- (void)inkAttributesPickerViewDidChangeInkOpacity:(id)opacity;
- (void)inkAttributesPickerViewDidChangeInkThickness:(id)thickness;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setDisplayMode:(unint64_t)mode;
- (void)setMinimumOpacityValue:(double)value;
- (void)setSelectedInk:(id)ink animated:(BOOL)animated;
- (void)setTopViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation PKInkAttributesPicker

- (PKInkAttributesPicker)initWithInk:(id)ink toolConfiguration:(id)configuration
{
  v18[1] = *MEMORY[0x1E69E9840];
  inkCopy = ink;
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = PKInkAttributesPicker;
  v8 = [(PKInkAttributesPicker *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_minimumOpacityValue = 0.1;
    v10 = [[_PKInkAttributesPickerView alloc] initWithInk:inkCopy toolConfiguration:configurationCopy];
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
  view = [(PKInkAttributesPicker *)self view];
  [view addSubview:self->_stackView];

  view2 = [(PKInkAttributesPicker *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
  leadingAnchor2 = [(UIStackView *)self->_stackView leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v8 setActive:1];

  view3 = [(PKInkAttributesPicker *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  trailingAnchor2 = [(UIStackView *)self->_stackView trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v13 setActive:1];

  view4 = [(PKInkAttributesPicker *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide3 topAnchor];
  topAnchor2 = [(UIStackView *)self->_stackView topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  view5 = [(PKInkAttributesPicker *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide4 bottomAnchor];
  bottomAnchor2 = [(UIStackView *)self->_stackView bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 setActive:1];
}

- (void)setTopViewController:(id)controller
{
  controllerCopy = controller;
  topViewController = self->_topViewController;
  if (topViewController != controllerCopy)
  {
    if (topViewController)
    {
      [(UIViewController *)topViewController willMoveToParentViewController:0];
      [(UIView *)self->_topViewControllerViewWrapper removeFromSuperview];
      [(UIViewController *)self->_topViewController removeFromParentViewController];
      topViewControllerViewWrapper = self->_topViewControllerViewWrapper;
      self->_topViewControllerViewWrapper = 0;
    }

    objc_storeStrong(&self->_topViewController, controller);
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
      view = [(UIViewController *)self->_topViewController view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_topViewControllerViewWrapper addSubview:view];
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
      heightAnchor = [(UIView *)self->_topViewControllerViewWrapper heightAnchor];
      v21 = [heightAnchor constraintEqualToConstant:v19];
      [v21 setActive:1];

      leadingAnchor = [view leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_topViewControllerViewWrapper leadingAnchor];
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v24 setActive:1];

      trailingAnchor = [view trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_topViewControllerViewWrapper trailingAnchor];
      v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v27 setActive:1];

      topAnchor = [view topAnchor];
      topAnchor2 = [(UIView *)self->_topViewControllerViewWrapper topAnchor];
      v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v30 setActive:1];

      bottomAnchor = [view bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_topViewControllerViewWrapper bottomAnchor];
      v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v33 setActive:1];
    }

    [(PKInkAttributesPicker *)self setPreferredContentSize:v9, v11];
  }
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  pickerView = [(PKInkAttributesPicker *)self pickerView];
  [pickerView setColorUserInterfaceStyle:style];
}

- (int64_t)colorUserInterfaceStyle
{
  pickerView = [(PKInkAttributesPicker *)self pickerView];
  colorUserInterfaceStyle = [pickerView colorUserInterfaceStyle];

  return colorUserInterfaceStyle;
}

- (void)setMinimumOpacityValue:(double)value
{
  if (self->_minimumOpacityValue != value)
  {
    self->_minimumOpacityValue = value;
    [(PKInkAttributesPicker *)self _updateUI];
  }
}

- (void)_updateUI
{
  [(PKInkAttributesPicker *)self minimumOpacityValue];
  v4 = v3;
  pickerView = [(PKInkAttributesPicker *)self pickerView];
  [pickerView setMinimumOpacityValue:v4];
}

- (PKInk)selectedInk
{
  pickerView = [(PKInkAttributesPicker *)self pickerView];
  v3 = [pickerView ink];

  return v3;
}

- (void)setSelectedInk:(id)ink animated:(BOOL)animated
{
  animatedCopy = animated;
  inkCopy = ink;
  pickerView = [(PKInkAttributesPicker *)self pickerView];
  [pickerView setInk:inkCopy animated:animatedCopy];
}

- (unint64_t)displayMode
{
  pickerView = [(PKInkAttributesPicker *)self pickerView];
  displayMode = [pickerView displayMode];

  return displayMode;
}

- (void)setDisplayMode:(unint64_t)mode
{
  pickerView = [(PKInkAttributesPicker *)self pickerView];
  [pickerView setDisplayMode:mode];

  pickerView2 = [(PKInkAttributesPicker *)self pickerView];
  [pickerView2 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(PKInkAttributesPicker *)self setPreferredContentSize:?];
}

- (void)_notifyInkAttributesPickerDidChangeInk
{
  delegate = [(PKInkAttributesPicker *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(PKInkAttributesPicker *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(PKInkAttributesPicker *)self delegate];
      [delegate3 inkAttributesPickerDidChangeSelectedInk:self];
    }
  }
}

- (void)inkAttributesPickerViewDidChangeInkAzimuth:(id)azimuth
{
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  [(PKInkAttributesPicker *)self _notifyInkAttributesPickerDidChangeInk];
  delegate = [(PKInkAttributesPicker *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PKInkAttributesPicker *)self delegate];
      [delegate3 inkAttributesPickerDidChangeInkAzimuth:self];
    }
  }
}

- (void)inkAttributesPickerViewDidChangeInkThickness:(id)thickness
{
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  [(PKInkAttributesPicker *)self _notifyInkAttributesPickerDidChangeInk];
  delegate = [(PKInkAttributesPicker *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PKInkAttributesPicker *)self delegate];
      [delegate3 inkAttributesPickerDidChangeInkThickness:self];
    }
  }
}

- (void)inkAttributesPickerViewDidChangeInkOpacity:(id)opacity
{
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  [(PKInkAttributesPicker *)self _notifyInkAttributesPickerDidChangeInk];
  delegate = [(PKInkAttributesPicker *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PKInkAttributesPicker *)self delegate];
      [delegate3 inkAttributesPickerDidChangeInkOpacity:self];
    }
  }
}

- (void)_inkAttributesPickerViewUserDidStartDraggingSlider:(id)slider
{
  self->_updatingOpacityValue = 1;
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  delegate = [(PKInkAttributesPicker *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PKInkAttributesPicker *)self delegate];
      [delegate3 _inkAttributesPickerUserDidStartDraggingSlider:self];
    }
  }
}

- (void)_inkAttributesPickerViewUserDidEndDraggingSlider:(id)slider
{
  self->_updatingOpacityValue = 0;
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:1];
  delegate = [(PKInkAttributesPicker *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PKInkAttributesPicker *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PKInkAttributesPicker *)self delegate];
      [delegate3 _inkAttributesPickerUserDidEndDraggingSlider:self];
    }
  }
}

@end