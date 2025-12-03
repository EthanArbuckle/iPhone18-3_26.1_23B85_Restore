@interface CNCombinedVisualIdentityEditorViewController
+ (id)log;
- (CNCombinedVisualIdentityEditorViewController)initWithProviderItem:(id)item dataSource:(id)source;
- (CNVisualIdentityItemEditorViewControllerDelegate)delegate;
- (id)_newStyleEditorWithItem:(id)item;
- (id)updatedProviderItem;
- (void)_segmentedControlDidChange:(id)change;
- (void)_updateEditorsVisibility;
- (void)didTapCancel;
- (void)didTapDone;
- (void)setupBarButtonItems;
- (void)setupEditors;
- (void)setupSegmentedControl;
- (void)updateDoneButtonEnabledState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CNCombinedVisualIdentityEditorViewController

- (CNVisualIdentityItemEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)updatedProviderItem
{
  selectedEditor = [(CNCombinedVisualIdentityEditorViewController *)self selectedEditor];
  providerItem = [selectedEditor providerItem];
  if ([providerItem conformsToProtocol:&unk_1F0DD51E0])
  {
    v5 = providerItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  selectedEditor2 = [(CNCombinedVisualIdentityEditorViewController *)self selectedEditor];
  v8 = selectedEditor2;
  if (v6)
  {
    editableAvatarViewController = [selectedEditor2 editableAvatarViewController];
    text = [editableAvatarViewController text];
    v11 = [v6 updatedProviderItemWithText:text];
  }

  else
  {
    editableAvatarViewController = [selectedEditor2 providerItem];
    v11 = [editableAvatarViewController copy];
  }

  return v11;
}

- (void)didTapDone
{
  delegate = [(CNCombinedVisualIdentityEditorViewController *)self delegate];

  if (delegate)
  {
    updatedProviderItem = [(CNCombinedVisualIdentityEditorViewController *)self updatedProviderItem];
    delegate2 = [(CNCombinedVisualIdentityEditorViewController *)self delegate];
    [delegate2 visualIdentityEditorController:self didFinishWithProviderItem:updatedProviderItem];
  }

  else
  {

    [(CNCombinedVisualIdentityEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didTapCancel
{
  delegate = [(CNCombinedVisualIdentityEditorViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNCombinedVisualIdentityEditorViewController *)self delegate];
    [delegate2 visualIdentityEditorControllerDidCancel:self];
  }

  else
  {

    [(CNCombinedVisualIdentityEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_updateEditorsVisibility
{
  selectedEditor = [(CNCombinedVisualIdentityEditorViewController *)self selectedEditor];
  emojiEditor = self->_emojiEditor;
  v5 = selectedEditor == emojiEditor;
  v6 = selectedEditor != emojiEditor;

  view = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor view];
  [view setHidden:v6];

  view2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor view];
  [view2 setHidden:v5];
}

- (void)setupEditors
{
  v51[8] = *MEMORY[0x1E69E9840];
  view = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor view];
  [view2 setHidden:1];

  view3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor view];
  [view4 setHidden:1];

  [(CNCombinedVisualIdentityEditorViewController *)self addChildViewController:self->_textEditor];
  view5 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  view6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor view];
  [view5 addSubview:view6];

  [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor didMoveToParentViewController:self];
  [(CNCombinedVisualIdentityEditorViewController *)self addChildViewController:self->_emojiEditor];
  view7 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  view8 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor view];
  [view7 addSubview:view8];

  [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor didMoveToParentViewController:self];
  view9 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  view10 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor view];
  topAnchor = [view10 topAnchor];
  bottomAnchor = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
  v46 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
  v51[0] = v46;
  view11 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor view];
  bottomAnchor2 = [view11 bottomAnchor];
  view12 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  bottomAnchor3 = [view12 bottomAnchor];
  v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  v51[1] = v41;
  view13 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor view];
  leadingAnchor = [view13 leadingAnchor];
  view14 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  leadingAnchor2 = [view14 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v51[2] = v36;
  view15 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_textEditor view];
  trailingAnchor = [view15 trailingAnchor];
  view16 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  trailingAnchor2 = [view16 trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  v51[3] = v31;
  view17 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor view];
  topAnchor2 = [view17 topAnchor];
  bottomAnchor4 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
  v27 = [topAnchor2 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
  v51[4] = v27;
  view18 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor view];
  bottomAnchor5 = [view18 bottomAnchor];
  view19 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  bottomAnchor6 = [view19 bottomAnchor];
  v22 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0];
  v51[5] = v22;
  view20 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor view];
  leadingAnchor3 = [view20 leadingAnchor];
  view21 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  leadingAnchor4 = [view21 leadingAnchor];
  v13 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
  v51[6] = v13;
  view22 = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_emojiEditor view];
  trailingAnchor3 = [view22 trailingAnchor];
  view23 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  trailingAnchor4 = [view23 trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
  v51[7] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:8];
  [view9 addConstraints:v19];

  [(CNCombinedVisualIdentityEditorViewController *)self _updateEditorsVisibility];
}

- (void)_segmentedControlDidChange:(id)change
{
  selectedSegmentIndex = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  v5 = &OBJC_IVAR___CNCombinedVisualIdentityEditorViewController__emojiEditor;
  if (!selectedSegmentIndex)
  {
    v5 = &OBJC_IVAR___CNCombinedVisualIdentityEditorViewController__textEditor;
  }

  objc_storeStrong(&self->_selectedEditor, *(&self->super.super.super.isa + *v5));
  [(CNCombinedVisualIdentityEditorViewController *)self _updateEditorsVisibility];
  selectedEditor = [(CNCombinedVisualIdentityEditorViewController *)self selectedEditor];
  [selectedEditor beginEditingAvatar];

  [(CNCombinedVisualIdentityEditorViewController *)self updateDoneButtonEnabledState];
}

- (void)setupSegmentedControl
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF38]);
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"PHOTO_TEXT_STYLE_EDITOR_TEXT_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v28[0] = v5;
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"PHOTO_TEXT_STYLE_EDITOR_EMOJI_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v28[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v9 = [v3 initWithItems:v8];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v9;

  selectedEditor = [(CNCombinedVisualIdentityEditorViewController *)self selectedEditor];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:selectedEditor != self->_textEditor];

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel__segmentedControlDidChange_ forControlEvents:4096];
  [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(CNCombinedVisualIdentityEditorViewController *)self view];
  [view addSubview:self->_segmentedControl];

  view2 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  topAnchor = [(UISegmentedControl *)self->_segmentedControl topAnchor];
  view3 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:86.0];
  v27[0] = v23;
  leadingAnchor = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
  view4 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v27[1] = v17;
  trailingAnchor = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
  view5 = [(CNCombinedVisualIdentityEditorViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v27[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  [view2 addConstraints:v22];
}

- (void)updateDoneButtonEnabledState
{
  selectedEditor = [(CNCombinedVisualIdentityEditorViewController *)self selectedEditor];
  providerItem = [selectedEditor providerItem];

  if ([providerItem conformsToProtocol:&unk_1F0DD51E0])
  {
    itemText = [providerItem itemText];
  }

  else
  {
    itemText = 0;
  }

  v5 = *MEMORY[0x1E6996570];
  _cn_trimmedString = [itemText _cn_trimmedString];
  v7 = (*(v5 + 16))(v5, _cn_trimmedString);
  navigationItem = [(CNCombinedVisualIdentityEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v7];
}

- (void)setupBarButtonItems
{
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel];
  navigationItem = [(CNCombinedVisualIdentityEditorViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDone];
  navigationItem2 = [(CNCombinedVisualIdentityEditorViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v5];

  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"EDIT_PHOTO" value:&stru_1F0CE7398 table:@"Localized"];
  navigationItem3 = [(CNCombinedVisualIdentityEditorViewController *)self navigationItem];
  [navigationItem3 setTitle:v8];

  navigationItem4 = [(CNCombinedVisualIdentityEditorViewController *)self navigationItem];
  [navigationItem4 setStyle:0];

  navigationItem5 = [(CNCombinedVisualIdentityEditorViewController *)self navigationItem];
  [navigationItem5 _setBackgroundHidden:1];

  navigationController = [(CNCombinedVisualIdentityEditorViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  LOBYTE(navigationItem3) = [navigationBar isTranslucent];

  if ((navigationItem3 & 1) == 0)
  {

    [(CNCombinedVisualIdentityEditorViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNCombinedVisualIdentityEditorViewController;
  [(CNCombinedVisualIdentityEditorViewController *)&v5 viewDidAppear:appear];
  editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self->_selectedEditor editableAvatarViewController];
  [editableAvatarViewController beginEditing];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CNCombinedVisualIdentityEditorViewController;
  [(CNCombinedVisualIdentityEditorViewController *)&v5 viewDidLoad];
  [(CNCombinedVisualIdentityEditorViewController *)self setupBarButtonItems];
  [(CNCombinedVisualIdentityEditorViewController *)self setupSegmentedControl];
  [(CNCombinedVisualIdentityEditorViewController *)self setupEditors];
  v3 = +[CNUIColorRepository visualIdentityEditorBackgroundColor];
  view = [(CNCombinedVisualIdentityEditorViewController *)self view];
  [view setBackgroundColor:v3];

  [(CNCombinedVisualIdentityEditorViewController *)self updateDoneButtonEnabledState];
}

- (id)_newStyleEditorWithItem:(id)item
{
  itemCopy = item;
  v5 = [CNVisualIdentityAvatarStyleEditorViewController alloc];
  variantsManager = [(CNPhotoPickerDataSource *)self->_dataSource variantsManager];
  v7 = [(CNVisualIdentityAvatarStyleEditorViewController *)v5 initWithProviderItem:itemCopy variantsManager:variantsManager];

  [(CNVisualIdentityAvatarStyleEditorViewController *)v7 setDelegate:self];
  return v7;
}

- (CNCombinedVisualIdentityEditorViewController)initWithProviderItem:(id)item dataSource:(id)source
{
  v25 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = CNCombinedVisualIdentityEditorViewController;
  v8 = [(CNCombinedVisualIdentityEditorViewController *)&v22 initWithNibName:0 bundle:0];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v8->_dataSource, source);
  v10 = [(CNCombinedVisualIdentityEditorViewController *)v9 _newStyleEditorWithItem:itemCopy];
  if ([itemCopy imageType] == 4)
  {
    v11 = 1024;
  }

  else
  {
    if ([itemCopy imageType] != 2)
    {
      p_super = [objc_opt_class() log];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = itemCopy;
        _os_log_error_impl(&dword_199A75000, p_super, OS_LOG_TYPE_ERROR, "Unsupported provider item type: %@", buf, 0xCu);
      }

      goto LABEL_9;
    }

    v11 = 1016;
  }

  objc_storeStrong((&v9->super.super.super.isa + v11), v10);
  v12 = *(&v9->super.super.super.isa + v11);
  p_super = &v9->_selectedEditor->super.super.super;
  v9->_selectedEditor = v12;
LABEL_9:

  if (!v9->_emojiEditor)
  {
    +[CNVisualIdentityPickerViewController defaultItemSize];
    v14 = [CNPhotoPickerEmojiProviderItem addNewEmojiProviderItemWithSize:?];
    v15 = [(CNCombinedVisualIdentityEditorViewController *)v9 _newStyleEditorWithItem:v14];
    emojiEditor = v9->_emojiEditor;
    v9->_emojiEditor = v15;
  }

  if (!v9->_textEditor)
  {
    dataSource = [(CNCombinedVisualIdentityEditorViewController *)v9 dataSource];
    +[CNVisualIdentityPickerViewController defaultItemSize];
    v18 = [dataSource monogramProviderMonogramItemWithSize:?];

    v19 = [(CNCombinedVisualIdentityEditorViewController *)v9 _newStyleEditorWithItem:v18];
    textEditor = v9->_textEditor;
    v9->_textEditor = v19;
  }

LABEL_14:
  return v9;
}

+ (id)log
{
  if (log_cn_once_token_2_51214 != -1)
  {
    dispatch_once(&log_cn_once_token_2_51214, &__block_literal_global_51215);
  }

  v3 = log_cn_once_object_2_51216;

  return v3;
}

uint64_t __51__CNCombinedVisualIdentityEditorViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNVisualIdentityAvatarStyleEditorViewController");
  v1 = log_cn_once_object_2_51216;
  log_cn_once_object_2_51216 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end