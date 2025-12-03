@interface PKPaletteAttributeViewControllerContainer
- (CGSize)preferredContentSize;
- (PKPaletteAttributeViewControllerContainer)initWithContentViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation PKPaletteAttributeViewControllerContainer

- (PKPaletteAttributeViewControllerContainer)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PKPaletteAttributeViewControllerContainer;
  v6 = [(PKPaletteAttributeViewControllerContainer *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, controller);
  }

  return v7;
}

- (void)viewDidLoad
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PKPaletteAttributeViewControllerContainer;
  [(PKPaletteAttributeViewControllerContainer *)&v37 viewDidLoad];
  contentViewController = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];

  if (contentViewController)
  {
    contentViewController2 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    [(PKPaletteAttributeViewControllerContainer *)self addChildViewController:contentViewController2];

    view = [(PKPaletteAttributeViewControllerContainer *)self view];
    contentViewController3 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    view2 = [contentViewController3 view];
    [view addSubview:view2];

    contentViewController4 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    view3 = [contentViewController4 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = MEMORY[0x1E696ACD8];
    contentViewController5 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    view4 = [contentViewController5 view];
    topAnchor = [view4 topAnchor];
    view5 = [(PKPaletteAttributeViewControllerContainer *)self view];
    topAnchor2 = [view5 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v38[0] = v31;
    contentViewController6 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    view6 = [contentViewController6 view];
    bottomAnchor = [view6 bottomAnchor];
    view7 = [(PKPaletteAttributeViewControllerContainer *)self view];
    bottomAnchor2 = [view7 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v38[1] = v24;
    contentViewController7 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    view8 = [contentViewController7 view];
    leadingAnchor = [view8 leadingAnchor];
    view9 = [(PKPaletteAttributeViewControllerContainer *)self view];
    leadingAnchor2 = [view9 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v38[2] = v11;
    contentViewController8 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    view10 = [contentViewController8 view];
    trailingAnchor = [view10 trailingAnchor];
    view11 = [(PKPaletteAttributeViewControllerContainer *)self view];
    trailingAnchor2 = [view11 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v38[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    [v25 activateConstraints:v18];

    contentViewController9 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    [contentViewController9 didMoveToParentViewController:self];
  }
}

- (CGSize)preferredContentSize
{
  contentViewController = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];

  if (contentViewController)
  {
    contentViewController2 = [(PKPaletteAttributeViewControllerContainer *)self contentViewController];
    [contentViewController2 preferredContentSize];
    v6 = v5;
    v8 = v7;

    if (_UISolariumEnabled())
    {
      edgeLocation = [(PKPaletteAttributeViewController *)self edgeLocation];
      if (edgeLocation == 4 || edgeLocation == 1)
      {
        v8 = v8 + -12.0;
      }

      else
      {
        edgeLocation2 = [(PKPaletteAttributeViewController *)self edgeLocation];
        if (edgeLocation2 == 8 || edgeLocation2 == 2)
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