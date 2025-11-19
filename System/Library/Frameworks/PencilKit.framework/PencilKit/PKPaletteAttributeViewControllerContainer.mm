@interface PKPaletteAttributeViewControllerContainer
- (CGSize)preferredContentSize;
- (PKPaletteAttributeViewControllerContainer)initWithContentViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKPaletteAttributeViewControllerContainer

- (PKPaletteAttributeViewControllerContainer)initWithContentViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaletteAttributeViewControllerContainer;
  v6 = [(PKPaletteAttributeViewControllerContainer *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PKPaletteAttributeViewControllerContainer;
  [(PKPaletteAttributeViewControllerContainer *)&v37 viewDidLoad];
  v3 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];

  if (v3)
  {
    v4 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    [(PKPaletteAttributeViewControllerContainer *)self addChildViewController:v4];

    v5 = [(PKPaletteAttributeViewControllerContainer *)self view];
    v6 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    v7 = [v6 view];
    [v5 addSubview:v7];

    v8 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    v9 = [v8 view];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = MEMORY[0x1E696ACD8];
    v36 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    v35 = [v36 view];
    v33 = [v35 topAnchor];
    v34 = [(PKPaletteAttributeViewControllerContainer *)self view];
    v32 = [v34 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v38[0] = v31;
    v30 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    v29 = [v30 view];
    v27 = [v29 bottomAnchor];
    v28 = [(PKPaletteAttributeViewControllerContainer *)self view];
    v26 = [v28 bottomAnchor];
    v24 = [v27 constraintEqualToAnchor:v26];
    v38[1] = v24;
    v23 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    v22 = [v23 view];
    v20 = [v22 leadingAnchor];
    v21 = [(PKPaletteAttributeViewControllerContainer *)self view];
    v10 = [v21 leadingAnchor];
    v11 = [v20 constraintEqualToAnchor:v10];
    v38[2] = v11;
    v12 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    v13 = [v12 view];
    v14 = [v13 trailingAnchor];
    v15 = [(PKPaletteAttributeViewControllerContainer *)self view];
    v16 = [v15 trailingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v38[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    [v25 activateConstraints:v18];

    v19 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    [v19 didMoveToParentViewController:self];
  }
}

- (CGSize)preferredContentSize
{
  v3 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];

  if (v3)
  {
    v4 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    [v4 preferredContentSize];
    v6 = v5;
    v8 = v7;

    if (_UISolariumEnabled())
    {
      v9 = [(PKPaletteAttributeViewController *)self edgeLocation];
      if (v9 == 4 || v9 == 1)
      {
        v8 = v8 + -12.0;
      }

      else
      {
        v14 = [(PKPaletteAttributeViewController *)self edgeLocation];
        if (v14 == 8 || v14 == 2)
        {
          v6 = v6 + -12.0;
        }
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PKPaletteAttributeViewControllerContainer;
    [(PKPaletteAttributeViewController *)&v15 preferredContentSize];
    v6 = v10;
    v8 = v11;
  }

  v12 = v6;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

@end