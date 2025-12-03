@interface MKPresentableSelectionAccessoryViewController
- (MKPresentableSelectionAccessoryViewController)initWithSelectionAccessoryView:(id)view;
- (void)loadView;
@end

@implementation MKPresentableSelectionAccessoryViewController

- (void)loadView
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MKPresentableSelectionAccessoryViewController;
  [(MKPresentableSelectionAccessoryViewController *)&v25 loadView];
  view = [(MKPresentableSelectionAccessoryViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    view2 = [(MKPresentableSelectionAccessoryViewController *)self view];
    [view2 setBackgroundColor:systemGroupedBackgroundColor];
  }

  [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(MKPresentableSelectionAccessoryViewController *)self view];
  [view3 addSubview:self->_accessoryView];

  v17 = MEMORY[0x1E696ACD8];
  topAnchor = [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView topAnchor];
  view4 = [(MKPresentableSelectionAccessoryViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v21;
  leadingAnchor = [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView leadingAnchor];
  view5 = [(MKPresentableSelectionAccessoryViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v7;
  view6 = [(MKPresentableSelectionAccessoryViewController *)self view];
  trailingAnchor = [view6 trailingAnchor];
  trailingAnchor2 = [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v11;
  view7 = [(MKPresentableSelectionAccessoryViewController *)self view];
  bottomAnchor = [view7 bottomAnchor];
  bottomAnchor2 = [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v17 activateConstraints:v16];
}

- (MKPresentableSelectionAccessoryViewController)initWithSelectionAccessoryView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = MKPresentableSelectionAccessoryViewController;
  v6 = [(MKPresentableSelectionAccessoryViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryView, view);
    [(MKViewSwitchingSelectionAccessoryView *)v7->_accessoryView setParentViewController:v7];
  }

  return v7;
}

@end