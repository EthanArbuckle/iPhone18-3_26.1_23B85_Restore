@interface CNSNaPSuggestionsGalleryViewController
- (CNSNaPSuggestionsGalleryViewController)initWithMode:(int64_t)mode contact:(id)contact isEditingSNaP:(BOOL)p isOnboarding:(BOOL)onboarding photoLibraryAssetID:(id)d;
- (CNSNaPSuggestionsGalleryViewControllerDelegate)delegate;
- (int64_t)sourceTypeFromString:(id)string;
- (void)setupNavBarAppearance;
- (void)skipStep;
- (void)suggestionsGalleryDidCancel;
- (void)suggestionsGalleryDidFinishWithPosterConfiguration:(id)configuration posterType:(id)type withGivenName:(id)name familyName:(id)familyName;
- (void)suggestionsGalleryDidRequestPresentationOfImagePickerController:(id)controller;
- (void)suggestionsGalleryDidRequestPresentationOfPosterEditingViewController:(id)controller;
- (void)suggestionsGalleryDidSelectAvatarSourceType:(id)type withGivenName:(id)name familyName:(id)familyName;
- (void)suggestionsGalleryDidSelectSuggestedAvatar:(id)avatar withGivenName:(id)name familyName:(id)familyName;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CNSNaPSuggestionsGalleryViewController

- (CNSNaPSuggestionsGalleryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)suggestionsGalleryDidRequestPresentationOfImagePickerController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(CNSNaPSuggestionsGalleryViewController *)self navigationController];
  [navigationController presentViewController:controllerCopy animated:1 completion:0];
}

- (void)suggestionsGalleryDidRequestPresentationOfPosterEditingViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v5 = controllerCopy;
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
    navigationController = [(CNSNaPSuggestionsGalleryViewController *)self navigationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __112__CNSNaPSuggestionsGalleryViewController_suggestionsGalleryDidRequestPresentationOfPosterEditingViewController___block_invoke;
    v9[3] = &unk_1E74E6A88;
    v10 = v7;
    [navigationController presentViewController:v10 animated:1 completion:v9];
  }
}

- (void)suggestionsGalleryDidCancel
{
  delegate = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  [delegate suggestionsGalleryViewControllerDidCancel:self];
}

- (void)suggestionsGalleryDidFinishWithPosterConfiguration:(id)configuration posterType:(id)type withGivenName:(id)name familyName:(id)familyName
{
  familyNameCopy = familyName;
  nameCopy = name;
  configurationCopy = configuration;
  delegate = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  v12 = [[CNSNaPSuggestionsGalleryName alloc] initWithGivenName:nameCopy familyName:familyNameCopy];

  [delegate suggestionsGalleryViewController:self didFinishWithPosterConfiguration:configurationCopy name:v12];
}

- (void)suggestionsGalleryDidSelectSuggestedAvatar:(id)avatar withGivenName:(id)name familyName:(id)familyName
{
  familyNameCopy = familyName;
  nameCopy = name;
  avatarCopy = avatar;
  delegate = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  v11 = [[CNSNaPSuggestionsGalleryName alloc] initWithGivenName:nameCopy familyName:familyNameCopy];

  [delegate suggestionsGalleryViewController:self didSelectSuggestedAvatar:avatarCopy name:v11];
}

- (void)suggestionsGalleryDidSelectAvatarSourceType:(id)type withGivenName:(id)name familyName:(id)familyName
{
  familyNameCopy = familyName;
  nameCopy = name;
  typeCopy = type;
  delegate = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  v11 = [(CNSNaPSuggestionsGalleryViewController *)self sourceTypeFromString:typeCopy];

  v12 = [[CNSNaPSuggestionsGalleryName alloc] initWithGivenName:nameCopy familyName:familyNameCopy];
  [delegate suggestionsGalleryViewController:self didSelectAvatarSourceType:v11 name:v12];
}

- (int64_t)sourceTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"camera"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"photos"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"memoji"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"emoji"])
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
  delegate = [(CNSNaPSuggestionsGalleryViewController *)self delegate];
  [delegate suggestionsGalleryViewControllerDidSelectCustomizeLater:self];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v41[4] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = CNSNaPSuggestionsGalleryViewController;
  [(CNSNaPSuggestionsGalleryViewController *)&v40 viewIsAppearing:appearing];
  v4 = [_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper alloc];
  view = [(CNSNaPSuggestionsGalleryViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  mode = [(CNSNaPSuggestionsGalleryViewController *)self mode];
  contact = [(CNSNaPSuggestionsGalleryViewController *)self contact];
  isEditingSNaP = [(CNSNaPSuggestionsGalleryViewController *)self isEditingSNaP];
  isOnboarding = [(CNSNaPSuggestionsGalleryViewController *)self isOnboarding];
  photoLibraryAssetID = [(CNSNaPSuggestionsGalleryViewController *)self photoLibraryAssetID];
  v13 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v4 initWithDelegate:self windowScene:windowScene mode:mode contact:contact isEditingSNaP:isEditingSNaP isOnboarding:isOnboarding photoLibraryAssetID:photoLibraryAssetID];

  hostingController = [(CNWallpaperSuggestionsGalleryViewWrapper *)v13 hostingController];
  view2 = [hostingController view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  hostingController2 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v13 hostingController];
  [hostingController2 willMoveToParentViewController:self];

  v39 = v13;
  hostingController3 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v13 hostingController];
  [(CNSNaPSuggestionsGalleryViewController *)self addChildViewController:hostingController3];

  view3 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  [view3 addSubview:view2];

  hostingController4 = [(CNWallpaperSuggestionsGalleryViewWrapper *)v13 hostingController];
  [hostingController4 didMoveToParentViewController:self];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view2 setBackgroundColor:systemBackgroundColor];

  v31 = MEMORY[0x1E696ACD8];
  leadingAnchor = [view2 leadingAnchor];
  view4 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v35;
  trailingAnchor = [view2 trailingAnchor];
  view5 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v30;
  topAnchor = [view2 topAnchor];
  view6 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v24;
  bottomAnchor = [view2 bottomAnchor];
  view7 = [(CNSNaPSuggestionsGalleryViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v8 setBackgroundColor:systemBackgroundColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v8 setShadowColor:clearColor];
  }

  navigationItem = [(CNSNaPSuggestionsGalleryViewController *)self navigationItem];
  [navigationItem setStandardAppearance:v8];

  v6 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v6 configureWithTransparentBackground];
  navigationItem2 = [(CNSNaPSuggestionsGalleryViewController *)self navigationItem];
  [navigationItem2 setScrollEdgeAppearance:v6];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CNSNaPSuggestionsGalleryViewController;
  [(CNSNaPSuggestionsGalleryViewController *)&v12 viewDidLoad];
  navigationController = [(CNSNaPSuggestionsGalleryViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  v6 = objc_alloc(MEMORY[0x1E69DC708]);
  v7 = v6;
  if (firstObject == self)
  {
    v8 = [v6 initWithBarButtonSystemItem:1 target:self action:sel_suggestionsGalleryDidCancel];
    navigationItem = [(CNSNaPSuggestionsGalleryViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v8];
  }

  else
  {
    v8 = CNContactsUIBundle();
    navigationItem = [v8 localizedStringForKey:@"SNAP_POSTER_PREVIEW_SKIP" value:&stru_1F0CE7398 table:@"Localized"];
    v10 = [v7 initWithTitle:navigationItem style:0 target:self action:sel_skipStep];
    navigationItem2 = [(CNSNaPSuggestionsGalleryViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v10];
  }

  [(CNSNaPSuggestionsGalleryViewController *)self setupNavBarAppearance];
}

- (CNSNaPSuggestionsGalleryViewController)initWithMode:(int64_t)mode contact:(id)contact isEditingSNaP:(BOOL)p isOnboarding:(BOOL)onboarding photoLibraryAssetID:(id)d
{
  contactCopy = contact;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = CNSNaPSuggestionsGalleryViewController;
  v15 = [(CNSNaPSuggestionsGalleryViewController *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_mode = mode;
    objc_storeStrong(&v15->_contact, contact);
    v16->_isEditingSNaP = p;
    v16->_isOnboarding = onboarding;
    objc_storeStrong(&v16->_photoLibraryAssetID, d);
    v17 = v16;
  }

  return v16;
}

@end