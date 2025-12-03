@interface _MKSelectionAccessoryParentViewController
- (_MKSelectionAccessoryParentViewController)initWithChildViewController:(id)controller;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation _MKSelectionAccessoryParentViewController

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  v3.receiver = self;
  v3.super_class = _MKSelectionAccessoryParentViewController;
  [(_MKSelectionAccessoryParentViewController *)&v3 _setContentOverlayInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = _MKSelectionAccessoryParentViewController;
  [(_MKSelectionAccessoryParentViewController *)&v5 viewDidDisappear:?];
  [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController beginAppearanceTransition:0 animated:disappearCopy];
  [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController endAppearanceTransition];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = _MKSelectionAccessoryParentViewController;
  [(_MKSelectionAccessoryParentViewController *)&v5 viewDidAppear:?];
  [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController beginAppearanceTransition:1 animated:appearCopy];
  [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController endAppearanceTransition];
}

- (void)viewDidLoad
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = _MKSelectionAccessoryParentViewController;
  [(_MKSelectionAccessoryParentViewController *)&v23 viewDidLoad];
  view = [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(_MKSelectionAccessoryParentViewController *)self view];
  [view2 addSubview:view];

  v15 = MEMORY[0x1E696ACD8];
  topAnchor = [view topAnchor];
  view3 = [(_MKSelectionAccessoryParentViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v19;
  leadingAnchor = [view leadingAnchor];
  view4 = [(_MKSelectionAccessoryParentViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v14;
  trailingAnchor = [view trailingAnchor];
  view5 = [(_MKSelectionAccessoryParentViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[2] = v8;
  bottomAnchor = [view bottomAnchor];
  view6 = [(_MKSelectionAccessoryParentViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v15 activateConstraints:v13];
}

- (_MKSelectionAccessoryParentViewController)initWithChildViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _MKSelectionAccessoryParentViewController;
  v6 = [(_MKSelectionAccessoryParentViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_childViewController, controller);
  }

  return v7;
}

@end