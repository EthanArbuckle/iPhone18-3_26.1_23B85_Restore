@interface _UIColorPickerUIServiceViewController
- (void)_pickerDidDismissEyedropper;
- (void)_pickerDidFinish;
- (void)_pickerDidFloatEyedropper;
- (void)_pickerDidShowEyedropper;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
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
  view = [(_UIColorPickerContainerViewController *)v3 view];
  view2 = [(_UIColorPickerUIServiceViewController *)self view];
  [view2 addSubview:view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_UIColorPickerContainerViewController *)v3 didMoveToParentViewController:self];
  leadingAnchor = [view leadingAnchor];
  view3 = [(_UIColorPickerUIServiceViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v20;
  trailingAnchor = [view trailingAnchor];
  view4 = [(_UIColorPickerUIServiceViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v16;
  topAnchor = [view topAnchor];
  view5 = [(_UIColorPickerUIServiceViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v8;
  bottomAnchor = [view bottomAnchor];
  view6 = [(_UIColorPickerUIServiceViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v12;
  v13 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v13];

  [(_UIColorPickerContainerViewController *)v24 _setDelegate:self];
  containerViewController = self->_containerViewController;
  self->_containerViewController = v24;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  if (self->_containerViewController == container)
  {
    [container preferredContentSize];
    v6 = v5;
    v8 = v7;
    [(_UIColorPickerUIServiceViewController *)self setPreferredContentSize:?];
    _hostedWindowScene = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
    [_hostedWindowScene _setPreferredContentSize:{v6, v8}];
  }
}

- (void)_pickerDidFinish
{
  v4 = +[_UIColorPickerActionClientToHost actionForColorPickerDidFinish];
  _hostedWindowScene = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
  [_hostedWindowScene sendAction:v4];
}

- (void)_pickerDidShowEyedropper
{
  v4 = +[_UIColorPickerActionClientToHost actionForColorPickerDidShowEyedropper];
  _hostedWindowScene = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
  [_hostedWindowScene sendAction:v4];
}

- (void)_pickerDidFloatEyedropper
{
  v4 = +[_UIColorPickerActionClientToHost actionForColorPickerDidFloatEyedropper];
  _hostedWindowScene = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
  [_hostedWindowScene sendAction:v4];
}

- (void)_pickerDidDismissEyedropper
{
  v4 = +[_UIColorPickerActionClientToHost actionForColorPickerDidDismissEyedropper];
  _hostedWindowScene = [(_UIColorPickerUIServiceViewController *)self _hostedWindowScene];
  [_hostedWindowScene sendAction:v4];
}

@end