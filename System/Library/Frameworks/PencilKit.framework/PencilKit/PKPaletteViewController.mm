@interface PKPaletteViewController
- (PKPaletteViewControllerDelegate)delegate;
- (void)viewDidAppear:(BOOL)a3;
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
  v7 = [(PKPaletteViewController *)self view];
  [v7 addSubview:self->_hostView];

  v18 = MEMORY[0x1E696ACD8];
  v24 = [(PKPaletteHostView *)self->_hostView centerXAnchor];
  v25 = [(PKPaletteViewController *)self view];
  v23 = [v25 centerXAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v20 = [(PKPaletteHostView *)self->_hostView centerYAnchor];
  v21 = [(PKPaletteViewController *)self view];
  v19 = [v21 centerYAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v27[1] = v17;
  v16 = [(PKPaletteHostView *)self->_hostView widthAnchor];
  v8 = [(PKPaletteViewController *)self view];
  v9 = [v8 widthAnchor];
  v10 = [v16 constraintEqualToAnchor:v9];
  v27[2] = v10;
  v11 = [(PKPaletteHostView *)self->_hostView heightAnchor];
  v12 = [(PKPaletteViewController *)self view];
  v13 = [v12 heightAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v27[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v18 activateConstraints:v15];

  [(PKPaletteHostView *)self->_hostView setPaletteVisible:1 animated:0 completion:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPaletteViewController;
  [(PKPaletteViewController *)&v5 viewDidAppear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paletteViewControllerViewDidAppear:self];
}

- (PKPaletteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end