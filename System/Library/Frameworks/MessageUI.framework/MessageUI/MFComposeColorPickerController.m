@interface MFComposeColorPickerController
- (MFComposeColorPickerController)initWithSelectedColor:(id)a3 shouldShowTitleBar:(BOOL)a4;
- (MFComposeColorPickerControllerDelegate)delegate;
- (void)closeColorPicker:(id)a3;
- (void)colorPickerDidChangeSelectedColor:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation MFComposeColorPickerController

- (MFComposeColorPickerController)initWithSelectedColor:(id)a3 shouldShowTitleBar:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MFComposeColorPickerController;
  v8 = [(MFComposeColorPickerController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_selectedColor, a3);
    v9->_shouldShowTitleBar = a4;
  }

  return v9;
}

- (void)loadView
{
  v42[4] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = MFComposeColorPickerController;
  [(MFComposeColorPickerController *)&v41 loadView];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(MFComposeColorPickerController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(MEMORY[0x1E6978400]);
  colorPicker = self->_colorPicker;
  self->_colorPicker = v5;

  [(PKColorPicker *)self->_colorPicker setDelegate:self];
  [(PKColorPicker *)self->_colorPicker setColorUserInterfaceStyle:1];
  v7 = [(MFComposeColorPickerController *)self selectedColor];
  [(PKColorPicker *)self->_colorPicker setSelectedColor:v7];

  [(PKColorPicker *)self->_colorPicker setEdgesForExtendedLayout:0];
  v8 = [MEMORY[0x1E69DC888] mailStyleSheetBackground];
  v9 = [(PKColorPicker *)self->_colorPicker view];
  [v9 setBackgroundColor:v8];

  v10 = [(PKColorPicker *)self->_colorPicker view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(MFComposeColorPickerController *)self addChildViewController:self->_colorPicker];
  v11 = [(MFComposeColorPickerController *)self view];
  v12 = [(PKColorPicker *)self->_colorPicker view];
  [v11 addSubview:v12];

  [(PKColorPicker *)self->_colorPicker didMoveToParentViewController:self];
  if ([(MFComposeColorPickerController *)self shouldShowTitleBar])
  {
    v13 = MEMORY[0x1E696ACD8];
    v14 = [(PKColorPicker *)self->_colorPicker view];
    v40 = [v14 topAnchor];
    v37 = [(MFComposeColorPickerController *)self view];
    v36 = [v37 layoutMarginsGuide];
    v35 = [v36 topAnchor];
    v34 = [v40 constraintEqualToAnchor:?];
    v42[0] = v34;
    v33 = [(PKColorPicker *)self->_colorPicker view];
    v39 = [v33 bottomAnchor];
    v32 = [(MFComposeColorPickerController *)self view];
    v31 = [v32 layoutMarginsGuide];
    v30 = [v31 bottomAnchor];
    v29 = [v39 constraintEqualToAnchor:?];
    v42[1] = v29;
    v28 = [(PKColorPicker *)self->_colorPicker view];
    v38 = [v28 leadingAnchor];
    v27 = [(MFComposeColorPickerController *)self view];
    v26 = [v27 layoutMarginsGuide];
    v25 = [v26 leadingAnchor];
    v15 = [v38 constraintEqualToAnchor:-5.0 constant:?];
    v42[2] = v15;
    v16 = [(PKColorPicker *)self->_colorPicker view];
    v17 = [v16 trailingAnchor];
    v18 = [(MFComposeColorPickerController *)self view];
    v19 = [v18 layoutMarginsGuide];
    v20 = [v19 trailingAnchor];
    v21 = [v17 constraintEqualToAnchor:v20 constant:5.0];
    v42[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
    [v13 activateConstraints:v22];
  }

  else
  {
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"FORMAT_COLOR_PALETTE_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeColorPickerController *)self setTitle:v24];

    v14 = [(PKColorPicker *)self->_colorPicker view];
    v40 = [(MFComposeColorPickerController *)self view];
    [v14 mf_pinToView:? usingLayoutMargins:?];
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = MFComposeColorPickerController;
  [(MFComposeColorPickerController *)&v12 viewDidLoad];
  if ([(MFComposeColorPickerController *)self shouldShowTitleBar])
  {
    v3 = [MFComposeActionCardTitleView alloc];
    v4 = [(MFComposeActionCardTitleView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"FORMAT_COLOR_PALETTE_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v7 = [(MFComposeActionCardTitleView *)v4 titleLabel];
    [v7 setText:v6];

    v8 = [(MFComposeActionCardTitleView *)v4 closeButton];
    [v8 addTarget:self action:sel_closeColorPicker_ forEvents:64];

    v9 = [(MFComposeColorPickerController *)self navigationItem];
    [v9 setTitleView:v4];

    v10 = [(MFComposeColorPickerController *)self navigationItem];
    [v10 _setManualScrollEdgeAppearanceProgress:0.0];

    v11 = [(MFComposeColorPickerController *)self navigationItem];
    [v11 _setManualScrollEdgeAppearanceEnabled:1];
  }
}

- (void)closeColorPicker:(id)a3
{
  v4 = [(MFComposeColorPickerController *)self delegate];
  [v4 colorPickerDidCancel:self];
}

- (void)colorPickerDidChangeSelectedColor:(id)a3
{
  v6 = a3;
  v4 = [(MFComposeColorPickerController *)self delegate];
  v5 = [v6 selectedColor];
  [v4 colorPicker:self didChangeSelectedColor:v5];
}

- (MFComposeColorPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end