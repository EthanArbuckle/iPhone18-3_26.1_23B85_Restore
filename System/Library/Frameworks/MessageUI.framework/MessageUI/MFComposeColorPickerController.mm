@interface MFComposeColorPickerController
- (MFComposeColorPickerController)initWithSelectedColor:(id)color shouldShowTitleBar:(BOOL)bar;
- (MFComposeColorPickerControllerDelegate)delegate;
- (void)closeColorPicker:(id)picker;
- (void)colorPickerDidChangeSelectedColor:(id)color;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation MFComposeColorPickerController

- (MFComposeColorPickerController)initWithSelectedColor:(id)color shouldShowTitleBar:(BOOL)bar
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = MFComposeColorPickerController;
  v8 = [(MFComposeColorPickerController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_selectedColor, color);
    v9->_shouldShowTitleBar = bar;
  }

  return v9;
}

- (void)loadView
{
  v42[4] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = MFComposeColorPickerController;
  [(MFComposeColorPickerController *)&v41 loadView];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(MFComposeColorPickerController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc_init(MEMORY[0x1E6978400]);
  colorPicker = self->_colorPicker;
  self->_colorPicker = v5;

  [(PKColorPicker *)self->_colorPicker setDelegate:self];
  [(PKColorPicker *)self->_colorPicker setColorUserInterfaceStyle:1];
  selectedColor = [(MFComposeColorPickerController *)self selectedColor];
  [(PKColorPicker *)self->_colorPicker setSelectedColor:selectedColor];

  [(PKColorPicker *)self->_colorPicker setEdgesForExtendedLayout:0];
  mailStyleSheetBackground = [MEMORY[0x1E69DC888] mailStyleSheetBackground];
  view2 = [(PKColorPicker *)self->_colorPicker view];
  [view2 setBackgroundColor:mailStyleSheetBackground];

  view3 = [(PKColorPicker *)self->_colorPicker view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(MFComposeColorPickerController *)self addChildViewController:self->_colorPicker];
  view4 = [(MFComposeColorPickerController *)self view];
  view5 = [(PKColorPicker *)self->_colorPicker view];
  [view4 addSubview:view5];

  [(PKColorPicker *)self->_colorPicker didMoveToParentViewController:self];
  if ([(MFComposeColorPickerController *)self shouldShowTitleBar])
  {
    v13 = MEMORY[0x1E696ACD8];
    view6 = [(PKColorPicker *)self->_colorPicker view];
    topAnchor = [view6 topAnchor];
    view7 = [(MFComposeColorPickerController *)self view];
    layoutMarginsGuide = [view7 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v34 = [topAnchor constraintEqualToAnchor:?];
    v42[0] = v34;
    view8 = [(PKColorPicker *)self->_colorPicker view];
    bottomAnchor = [view8 bottomAnchor];
    view9 = [(MFComposeColorPickerController *)self view];
    layoutMarginsGuide2 = [view9 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:?];
    v42[1] = v29;
    view10 = [(PKColorPicker *)self->_colorPicker view];
    leadingAnchor = [view10 leadingAnchor];
    view11 = [(MFComposeColorPickerController *)self view];
    layoutMarginsGuide3 = [view11 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:-5.0 constant:?];
    v42[2] = v15;
    view12 = [(PKColorPicker *)self->_colorPicker view];
    trailingAnchor = [view12 trailingAnchor];
    view13 = [(MFComposeColorPickerController *)self view];
    layoutMarginsGuide4 = [view13 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:5.0];
    v42[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
    [v13 activateConstraints:v22];
  }

  else
  {
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"FORMAT_COLOR_PALETTE_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeColorPickerController *)self setTitle:v24];

    view6 = [(PKColorPicker *)self->_colorPicker view];
    topAnchor = [(MFComposeColorPickerController *)self view];
    [view6 mf_pinToView:? usingLayoutMargins:?];
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
    titleLabel = [(MFComposeActionCardTitleView *)v4 titleLabel];
    [titleLabel setText:v6];

    closeButton = [(MFComposeActionCardTitleView *)v4 closeButton];
    [closeButton addTarget:self action:sel_closeColorPicker_ forEvents:64];

    navigationItem = [(MFComposeColorPickerController *)self navigationItem];
    [navigationItem setTitleView:v4];

    navigationItem2 = [(MFComposeColorPickerController *)self navigationItem];
    [navigationItem2 _setManualScrollEdgeAppearanceProgress:0.0];

    navigationItem3 = [(MFComposeColorPickerController *)self navigationItem];
    [navigationItem3 _setManualScrollEdgeAppearanceEnabled:1];
  }
}

- (void)closeColorPicker:(id)picker
{
  delegate = [(MFComposeColorPickerController *)self delegate];
  [delegate colorPickerDidCancel:self];
}

- (void)colorPickerDidChangeSelectedColor:(id)color
{
  colorCopy = color;
  delegate = [(MFComposeColorPickerController *)self delegate];
  selectedColor = [colorCopy selectedColor];
  [delegate colorPicker:self didChangeSelectedColor:selectedColor];
}

- (MFComposeColorPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end