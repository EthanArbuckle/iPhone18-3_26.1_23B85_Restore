@interface CNSNaPSuggestionsGalleryViewController
- (CNSNaPSuggestionsGalleryViewController)initWithMode:(int64_t)a3 contact:(id)a4 isEditingSNaP:(BOOL)a5 isOnboarding:(BOOL)a6 photoLibraryAssetID:(id)a7;
- (CNSNaPSuggestionsGalleryViewControllerDelegate)delegate;
- (int64_t)sourceTypeFromString:(id)a3;
- (void)setupNavBarAppearance;
- (void)skipStep;
- (void)suggestionsGalleryDidCancel;
- (void)suggestionsGalleryDidFinishWithPosterConfiguration:(id)a3 posterType:(id)a4 withGivenName:(id)a5 familyName:(id)a6;
- (void)suggestionsGalleryDidRequestPresentationOfImagePickerController:(id)a3;
- (void)suggestionsGalleryDidRequestPresentationOfPosterEditingViewController:(id)a3;
- (void)suggestionsGalleryDidSelectAvatarSourceType:(id)a3 withGivenName:(id)a4 familyName:(id)a5;
- (void)suggestionsGalleryDidSelectSuggestedAvatar:(id)a3 withGivenName:(id)a4 familyName:(id)a5;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation CNSNaPSuggestionsGalleryViewController

- (CNSNaPSuggestionsGalleryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)suggestionsGalleryDidRequestPresentationOfImagePickerController:(id)a3
{
  v4 = a3;
  v5 = [(CNSNaPSuggestionsGalleryViewController *)self navigationController];
  [v5 presentViewController:v4 animated:1 completion:0];
}

- (void)suggestionsGalleryDidRequestPresentationOfPosterEditingViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 setModalPresentationStyle:6];
    v8 = [(CNSNaPSuggestionsGalleryViewController *)self navigationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __112__CNSNaPSuggestionsGalleryViewController_suggestionsGalleryDidRequestPresentationOfPosterEditingViewController___block_invoke;
    v9[3] = &unk_1E74E6A88;
    v10 = v7;
    [v8 presentViewController:v10 animated:1 completion:v9];
  }
}

- (void)suggestionsGalleryDidCancel
{
  v3 = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  [v3 suggestionsGalleryViewControllerDidCancel:self];
}

- (void)suggestionsGalleryDidFinishWithPosterConfiguration:(id)a3 posterType:(id)a4 withGivenName:(id)a5 familyName:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v13 = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  v12 = [[CNSNaPSuggestionsGalleryName alloc] initWithGivenName:v10 familyName:v9];

  [v13 suggestionsGalleryViewController:self didFinishWithPosterConfiguration:v11 name:v12];
}

- (void)suggestionsGalleryDidSelectSuggestedAvatar:(id)a3 withGivenName:(id)a4 familyName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  v11 = [[CNSNaPSuggestionsGalleryName alloc] initWithGivenName:v9 familyName:v8];

  [v12 suggestionsGalleryViewController:self didSelectSuggestedAvatar:v10 name:v11];
}

- (void)suggestionsGalleryDidSelectAvatarSourceType:(id)a3 withGivenName:(id)a4 familyName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  v11 = [(CNSNaPSuggestionsGalleryViewController *)self sourceTypeFromString:v10];

  v12 = [[CNSNaPSuggestionsGalleryName alloc] initWithGivenName:v9 familyName:v8];
  [v13 suggestionsGalleryViewController:self didSelectAvatarSourceType:v11 name:v12];
}

- (int64_t)sourceTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"camera"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"photos"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"memoji"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"emoji"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (void)skipStep
{
  v3 = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  [v3 suggestionsGalleryViewControllerDidSelectCustomizeLater:self];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v41[4] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = CNSNaPSuggestionsGalleryViewController;
  [(CNSNaPSuggestionsGalleryViewController *)&v40 viewIsAppearing:a3];
  v4 = [_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper alloc];
  v5 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [(CNSNaPSuggestionsGalleryViewController *)self mode];
  v9 = [(CNSNaPSuggestionsGalleryViewController *)self contact];
  v10 = [(CNSNaPSuggestionsGalleryViewController *)self isEditingSNaP];
  v11 = [(CNSNaPSuggestionsGalleryViewController *)self isOnboarding];
  v12 = [(CNSNaPSuggestionsGalleryViewController *)self photoLibraryAssetID];
  v13 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v4 initWithDelegate:self windowScene:v7 mode:v8 contact:v9 isEditingSNaP:v10 isOnboarding:v11 photoLibraryAssetID:v12];

  v14 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v13 hostingController];
  v15 = [v14 view];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v13 hostingController];
  [v16 willMoveToParentViewController:self];

  v39 = v13;
  v17 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v13 hostingController];
  [(CNSNaPSuggestionsGalleryViewController *)self addChildViewController:v17];

  v18 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  [v18 addSubview:v15];

  v19 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v13 hostingController];
  [v19 didMoveToParentViewController:self];

  v20 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v15 setBackgroundColor:v20];

  v31 = MEMORY[0x1E696ACD8];
  v37 = [v15 leadingAnchor];
  v38 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  v36 = [v38 leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v41[0] = v35;
  v33 = [v15 trailingAnchor];
  v34 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  v32 = [v34 trailingAnchor];
  v30 = [v33 constraintEqualToAnchor:v32];
  v41[1] = v30;
  v21 = [v15 topAnchor];
  v22 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v41[2] = v24;
  v25 = [v15 bottomAnchor];
  v26 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  v41[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  [v31 activateConstraints:v29];
}

- (void)setupNavBarAppearance
{
  v8 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v8 configureWithDefaultBackground];
  if (CNUIIsMessages())
  {
    v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v8 setBackgroundColor:v3];

    v4 = [MEMORY[0x1E69DC888] clearColor];
    [v8 setShadowColor:v4];
  }

  v5 = [(CNSNaPSuggestionsGalleryViewController *)self navigationItem];
  [v5 setStandardAppearance:v8];

  v6 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v6 configureWithTransparentBackground];
  v7 = [(CNSNaPSuggestionsGalleryViewController *)self navigationItem];
  [v7 setScrollEdgeAppearance:v6];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CNSNaPSuggestionsGalleryViewController;
  [(CNSNaPSuggestionsGalleryViewController *)&v12 viewDidLoad];
  v3 = [(CNSNaPSuggestionsGalleryViewController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 firstObject];

  v6 = objc_alloc(MEMORY[0x1E69DC708]);
  v7 = v6;
  if (v5 == self)
  {
    v8 = [v6 initWithBarButtonSystemItem:1 target:self action:sel_suggestionsGalleryDidCancel];
    v9 = [(CNSNaPSuggestionsGalleryViewController *)self navigationItem];
    [v9 setLeftBarButtonItem:v8];
  }

  else
  {
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"SNAP_POSTER_PREVIEW_SKIP" value:&stru_1F0CE7398 table:@"Localized"];
    v10 = [v7 initWithTitle:v9 style:0 target:self action:sel_skipStep];
    v11 = [(CNSNaPSuggestionsGalleryViewController *)self navigationItem];
    [v11 setRightBarButtonItem:v10];
  }

  [(CNSNaPSuggestionsGalleryViewController *)self setupNavBarAppearance];
}

- (CNSNaPSuggestionsGalleryViewController)initWithMode:(int64_t)a3 contact:(id)a4 isEditingSNaP:(BOOL)a5 isOnboarding:(BOOL)a6 photoLibraryAssetID:(id)a7
{
  v13 = a4;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = CNSNaPSuggestionsGalleryViewController;
  v15 = [(CNSNaPSuggestionsGalleryViewController *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_mode = a3;
    objc_storeStrong(&v15->_contact, a4);
    v16->_isEditingSNaP = a5;
    v16->_isOnboarding = a6;
    objc_storeStrong(&v16->_photoLibraryAssetID, a7);
    v17 = v16;
  }

  return v16;
}

@end