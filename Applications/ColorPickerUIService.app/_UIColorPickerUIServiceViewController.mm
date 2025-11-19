@interface _UIColorPickerUIServiceViewController
- (void)_pickerDidDismissEyedropper;
- (void)_pickerDidFinish;
- (void)_pickerDidFloatEyedropper;
- (void)_pickerDidShowEyedropper;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation _UIColorPickerUIServiceViewController

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = _UIColorPickerUIServiceViewController;
  [(_UIColorPickerUIServiceViewController *)&v25 viewDidLoad];
  v3 = objc_alloc_init(_UIColorPickerContainerViewController);
  [(_UIColorPickerUIServiceViewController *)self addChildViewController:v3];
  v24 = v3;
  v4 = [(_UIColorPickerContainerViewController *)v3 view];
  v5 = [(_UIColorPickerUIServiceViewController *)self view];
  [v5 addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_UIColorPickerContainerViewController *)v3 didMoveToParentViewController:self];
  v22 = [v4 leadingAnchor];
  v23 = [(_UIColorPickerUIServiceViewController *)self view];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v26[0] = v20;
  v18 = [v4 trailingAnchor];
  v19 = [(_UIColorPickerUIServiceViewController *)self view];
  v17 = [v19 trailingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v26[1] = v16;
  v15 = [v4 topAnchor];
  v6 = [(_UIColorPickerUIServiceViewController *)self view];
  v7 = [v6 topAnchor];
  v8 = [v15 constraintEqualToAnchor:v7];
  v26[2] = v8;
  v9 = [v4 bottomAnchor];
  v10 = [(_UIColorPickerUIServiceViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v26[3] = v12;
  v13 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v13];

  [(_UIColorPickerContainerViewController *)v24 _setDelegate:self];
  containerViewController = self->_containerViewController;
  self->_containerViewController = v24;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  if (self->_containerViewController == a3)
  {
    [a3 preferredContentSize];
    v6 = v5;
    v8 = v7;
    [(_UIColorPickerUIServiceViewController *)self setPreferredContentSize:?];
    v9 = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
    [v9 _setPreferredContentSize:{v6, v8}];
  }
}

- (void)_pickerDidFinish
{
  v4 = +[_UIColorPickerActionClientToHost actionForColorPickerDidFinish];
  v3 = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
  [v3 sendAction:v4];
}

- (void)_pickerDidShowEyedropper
{
  v4 = +[_UIColorPickerActionClientToHost actionForColorPickerDidShowEyedropper];
  v3 = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
  [v3 sendAction:v4];
}

- (void)_pickerDidFloatEyedropper
{
  v4 = +[_UIColorPickerActionClientToHost actionForColorPickerDidFloatEyedropper];
  v3 = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
  [v3 sendAction:v4];
}

- (void)_pickerDidDismissEyedropper
{
  v4 = +[_UIColorPickerActionClientToHost actionForColorPickerDidDismissEyedropper];
  v3 = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
  [v3 sendAction:v4];
}

@end