@interface CNPosterPreviewViewController
- (CNPosterPreviewViewController)initWithPosterConfiguration:(id)a3 fromProviderItem:(id)a4 contact:(id)a5 editingState:(int64_t)a6 isEditingSNaP:(BOOL)a7;
- (CNPosterPreviewViewControllerDelegate)delegate;
- (id)backgroundColorFromPhotoPickerProviderItem:(id)a3;
- (void)previewViewDidCreateWithPosterConfiguration:(id)a3;
- (void)previewViewDidFinishWithPosterConfiguration:(id)a3;
- (void)previewViewDidSelectUseDifferentPoster;
- (void)skipPosterSetup;
- (void)updateNavigationBar;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation CNPosterPreviewViewController

- (CNPosterPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)previewViewDidSelectUseDifferentPoster
{
  v3 = [(CNPosterPreviewViewController *)self delegate];
  [v3 posterPreviewViewControllerDidSelectUseDifferentPoster:self];
}

- (void)previewViewDidFinishWithPosterConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CNPosterPreviewViewController *)self delegate];
  [v5 posterPreviewViewController:self didFinishWithPosterConfiguration:v4];
}

- (void)previewViewDidCreateWithPosterConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CNPosterPreviewViewController *)self contact];
  v6 = [v5 posterName];
  v7 = [_TtC10ContactsUI32CNPosterPreviewViewConfiguration configurationForExistingPosterConfiguration:v4 displayName:v6];

  [(CNPosterPreviewViewController *)self setConfiguration:v7];
  [(CNPosterPreviewViewController *)self setEditingState:[CNMeCardSharingSettingsEditingStateMachine stateAfterPerformingAction:1 onState:[(CNPosterPreviewViewController *)self editingState]]];

  [(CNPosterPreviewViewController *)self updateNavigationBar];
}

- (void)skipPosterSetup
{
  v3 = [(CNPosterPreviewViewController *)self delegate];
  [v3 posterPreviewViewControllerDidSelectCustomizeLater:self];
}

- (void)updateNavigationBar
{
  v3 = [(CNPosterPreviewViewController *)self configuration];
  v4 = [v3 hasExistingPoster];
  v5 = CNContactsUIBundle();
  v6 = v5;
  if (v4)
  {
    v7 = @"SNAP_POSTER_PREVIEW";
  }

  else
  {
    v7 = @"SNAP_POSTER_PREVIEW_ADD";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized"];
  [(CNPosterPreviewViewController *)self setTitle:v8];

  v9 = [(CNPosterPreviewViewController *)self navigationItem];
  [v9 _setBackgroundHidden:1];

  if ([(CNPosterPreviewViewController *)self editingState]== 1)
  {
    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v14 = CNContactsUIBundle();
    v11 = [v14 localizedStringForKey:@"SNAP_POSTER_PREVIEW_SKIP" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v10 initWithTitle:v11 style:0 target:self action:sel_skipPosterSetup];
    v13 = [(CNPosterPreviewViewController *)self navigationItem];
    [v13 setRightBarButtonItem:v12];
  }

  else
  {
    v14 = [(CNPosterPreviewViewController *)self navigationItem];
    [v14 setRightBarButtonItem:0];
  }
}

- (id)backgroundColorFromPhotoPickerProviderItem:(id)a3
{
  v3 = a3;
  v4 = [v3 imageType];
  if (v4 == 2 || v4 == 4)
  {
    objc_opt_class();
    v10 = v3;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    v9 = [v7 backgroundColor];
    goto LABEL_12;
  }

  if (v4 == 3)
  {
    objc_opt_class();
    v5 = v3;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 backgroundColorVariant];
    v9 = [v8 color];

LABEL_12:
    goto LABEL_14;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v39[4] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CNPosterPreviewViewController;
  [(CNPosterPreviewViewController *)&v38 viewIsAppearing:a3];
  v4 = [_TtC10ContactsUI26CNPosterPreviewViewWrapper alloc];
  v5 = [(CNPosterPreviewViewController *)self configuration];
  v6 = [(CNPosterPreviewViewController *)self contact];
  v7 = [(CNPosterPreviewViewController *)self editingState];
  v8 = [(CNPosterPreviewViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [(CNPosterPreviewViewWrapper *)v4 initWithConfiguration:v5 contact:v6 editingState:v7 delegate:self windowScene:v10];

  v12 = v11;
  v13 = [(CNPosterPreviewViewWrapper *)v11 hostingController];
  v14 = [v13 view];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [(CNPosterPreviewViewWrapper *)v12 hostingController];
  [v15 willMoveToParentViewController:self];

  v37 = v12;
  v16 = [(CNPosterPreviewViewWrapper *)v12 hostingController];
  [(CNPosterPreviewViewController *)self addChildViewController:v16];

  v17 = [(CNPosterPreviewViewController *)self view];
  [v17 addSubview:v14];

  v18 = [(CNPosterPreviewViewWrapper *)v12 hostingController];
  [v18 didMoveToParentViewController:self];

  v29 = MEMORY[0x1E696ACD8];
  v35 = [v14 leadingAnchor];
  v36 = [(CNPosterPreviewViewController *)self view];
  v34 = [v36 leadingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v39[0] = v33;
  v31 = [v14 trailingAnchor];
  v32 = [(CNPosterPreviewViewController *)self view];
  v30 = [v32 trailingAnchor];
  v28 = [v31 constraintEqualToAnchor:v30];
  v39[1] = v28;
  v19 = [v14 topAnchor];
  v20 = [(CNPosterPreviewViewController *)self view];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v39[2] = v22;
  v23 = [v14 bottomAnchor];
  v24 = [(CNPosterPreviewViewController *)self view];
  v25 = [v24 bottomAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v39[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  [v29 activateConstraints:v27];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNPosterPreviewViewController;
  [(CNPosterPreviewViewController *)&v3 viewDidLoad];
  [(CNPosterPreviewViewController *)self updateNavigationBar];
}

- (CNPosterPreviewViewController)initWithPosterConfiguration:(id)a3 fromProviderItem:(id)a4 contact:(id)a5 editingState:(int64_t)a6 isEditingSNaP:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v30.receiver = self;
  v30.super_class = CNPosterPreviewViewController;
  v15 = [(CNPosterPreviewViewController *)&v30 init];
  if (v15)
  {
    if (v12)
    {
      v16 = [v14 posterName];
      v17 = [_TtC10ContactsUI32CNPosterPreviewViewConfiguration configurationForExistingPosterConfiguration:v12 displayName:v16];
      configuration = v15->_configuration;
      v15->_configuration = v17;
    }

    else
    {
      objc_opt_class();
      v19 = v13;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      configuration = v20;

      v29 = v13;
      v28 = v7;
      if (configuration)
      {
        v16 = [(CNPosterPreviewViewConfiguration *)configuration monogramText];
      }

      else
      {
        v16 = 0;
      }

      v21 = [v19 assetIdentifier];
      v22 = [(CNPosterPreviewViewController *)v15 backgroundColorFromPhotoPickerProviderItem:v19];
      v23 = [v14 posterName];
      v24 = [_TtC10ContactsUI32CNPosterPreviewViewConfiguration configurationForNewPosterWithPhotoAssetID:v21 backgroundColor:v22 displayName:v23 isEditingSNaP:v28 monogramText:v16];
      v25 = v15->_configuration;
      v15->_configuration = v24;

      v13 = v29;
    }

    objc_storeStrong(&v15->_contact, a5);
    v15->_editingState = a6;
    v26 = v15;
  }

  return v15;
}

@end