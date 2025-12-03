@interface PKPaletteViewController
- (PKPaletteViewControllerDelegate)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaletteViewController

- (void)viewDidLoad
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKPaletteViewController;
  [(PKPaletteViewController *)&v26 viewDidLoad];
  v3 = objc_alloc_init(PKDrawingPaletteView);
  paletteView = self->_paletteView;
  self->_paletteView = v3;

  [(PKPaletteView *)self->_paletteView setDraggingEnabled:0];
  [(PKPaletteView *)self->_paletteView setPalettePopoverPresentingController:self];
  v5 = [[PKPaletteHostView alloc] initWithPaletteView:self->_paletteView];
  hostView = self->_hostView;
  self->_hostView = v5;

  [(PKPaletteHostView *)self->_hostView setPaletteViewBottomEdgeSpacing:0.0];
  [(PKPaletteHostView *)self->_hostView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(PKPaletteViewController *)self view];
  [view addSubview:self->_hostView];

  v18 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(PKPaletteHostView *)self->_hostView centerXAnchor];
  view2 = [(PKPaletteViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v27[0] = v22;
  centerYAnchor = [(PKPaletteHostView *)self->_hostView centerYAnchor];
  view3 = [(PKPaletteViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v27[1] = v17;
  widthAnchor = [(PKPaletteHostView *)self->_hostView widthAnchor];
  view4 = [(PKPaletteViewController *)self view];
  widthAnchor2 = [view4 widthAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v27[2] = v10;
  heightAnchor = [(PKPaletteHostView *)self->_hostView heightAnchor];
  view5 = [(PKPaletteViewController *)self view];
  heightAnchor2 = [view5 heightAnchor];
  v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v27[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v18 activateConstraints:v15];

  [(PKPaletteHostView *)self->_hostView setPaletteVisible:1 animated:0 completion:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPaletteViewController;
  [(PKPaletteViewController *)&v5 viewDidAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paletteViewControllerViewDidAppear:self];
}

- (PKPaletteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end