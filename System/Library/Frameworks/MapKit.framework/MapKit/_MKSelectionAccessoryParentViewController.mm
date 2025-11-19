@interface _MKSelectionAccessoryParentViewController
- (_MKSelectionAccessoryParentViewController)initWithChildViewController:(id)a3;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation _MKSelectionAccessoryParentViewController

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  v3.receiver = self;
  v3.super_class = _MKSelectionAccessoryParentViewController;
  [(_MKSelectionAccessoryParentViewController *)&v3 _setContentOverlayInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _MKSelectionAccessoryParentViewController;
  [(_MKSelectionAccessoryParentViewController *)&v5 viewDidDisappear:?];
  [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController beginAppearanceTransition:0 animated:v3];
  [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController endAppearanceTransition];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _MKSelectionAccessoryParentViewController;
  [(_MKSelectionAccessoryParentViewController *)&v5 viewDidAppear:?];
  [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController beginAppearanceTransition:1 animated:v3];
  [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController endAppearanceTransition];
}

- (void)viewDidLoad
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = _MKSelectionAccessoryParentViewController;
  [(_MKSelectionAccessoryParentViewController *)&v23 viewDidLoad];
  v3 = [(MKPlaceCardRemoteUIHostViewController *)self->_childViewController view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(_MKSelectionAccessoryParentViewController *)self view];
  [v4 addSubview:v3];

  v15 = MEMORY[0x1E696ACD8];
  v21 = [v3 topAnchor];
  v22 = [(_MKSelectionAccessoryParentViewController *)self view];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v17 = [v3 leadingAnchor];
  v18 = [(_MKSelectionAccessoryParentViewController *)self view];
  v16 = [v18 leadingAnchor];
  v14 = [v17 constraintEqualToAnchor:v16];
  v24[1] = v14;
  v5 = [v3 trailingAnchor];
  v6 = [(_MKSelectionAccessoryParentViewController *)self view];
  v7 = [v6 trailingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v24[2] = v8;
  v9 = [v3 bottomAnchor];
  v10 = [(_MKSelectionAccessoryParentViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v24[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v15 activateConstraints:v13];
}

- (_MKSelectionAccessoryParentViewController)initWithChildViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MKSelectionAccessoryParentViewController;
  v6 = [(_MKSelectionAccessoryParentViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_childViewController, a3);
  }

  return v7;
}

@end