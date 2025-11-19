@interface CNSharingProfileOnboardingVariantViewController
- (CNSharingProfileOnboardingVariantViewController)initWithVariantsManager:(id)a3 originalItem:(id)a4 selectedVariantIdentifier:(id)a5;
- (CNSharingProfileOnboardingVariantViewControllerDelegate)onboardingDelegate;
- (void)didTapBack:(id)a3;
- (void)didTapContinue:(id)a3;
- (void)didTapPose:(id)a3;
- (void)didTapSetupLater:(id)a3;
- (void)photoPickerVariantListController:(id)a3 didSelectProviderItem:(id)a4;
- (void)updateOriginalItem:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNSharingProfileOnboardingVariantViewController

- (CNSharingProfileOnboardingVariantViewControllerDelegate)onboardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingDelegate);

  return WeakRetained;
}

- (void)photoPickerVariantListController:(id)a3 didSelectProviderItem:(id)a4
{
  objc_storeStrong(&self->_selectedItem, a4);
  v5 = [(CNSharingProfileOnboardingVariantViewController *)self onboardingDelegate];
  [v5 onboardingVariantControllerDidTapContinue:self];
}

- (void)didTapBack:(id)a3
{
  v4 = [(CNSharingProfileOnboardingVariantViewController *)self onboardingDelegate];
  [v4 onboardingVariantControllerDidTapBack:self];
}

- (void)didTapPose:(id)a3
{
  v4 = [(CNSharingProfileOnboardingVariantViewController *)self onboardingDelegate];
  [v4 onboardingVariantControllerDidTapPose:self];
}

- (void)didTapContinue:(id)a3
{
  v3 = [(CNSharingProfileOnboardingVariantViewController *)self variantListController];
  [v3 didFinishSelectingVariant];
}

- (void)didTapSetupLater:(id)a3
{
  v4 = [(CNSharingProfileOnboardingVariantViewController *)self onboardingDelegate];
  [v4 onboardingVariantControllerDidTapSetupLater:self];
}

- (void)updateOriginalItem:(id)a3
{
  v4 = a3;
  v5 = [(CNSharingProfileOnboardingVariantViewController *)self variantListController];
  [v5 updateForNewOriginalItem:v4];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(CNSharingProfileOnboardingVariantViewController *)self variantListController];
  v4 = [v3 collectionView];
  [v4 contentSize];
  v6 = v5;
  v7 = [(CNSharingProfileOnboardingVariantViewController *)self heightLayoutConstraint];
  [v7 setConstant:v6];

  v8.receiver = self;
  v8.super_class = CNSharingProfileOnboardingVariantViewController;
  [(OBBaseWelcomeController *)&v8 viewDidLayoutSubviews];
}

- (void)viewDidLoad
{
  v58[4] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = CNSharingProfileOnboardingVariantViewController;
  [(OBBaseWelcomeController *)&v57 viewDidLoad];
  v3 = [CNPhotoPickerVariantListController alloc];
  v4 = [(CNSharingProfileOnboardingVariantViewController *)self variantsManager];
  v5 = [(CNSharingProfileOnboardingVariantViewController *)self item];
  v6 = [(CNSharingProfileOnboardingVariantViewController *)self variantName];
  v7 = [(CNPhotoPickerVariantListController *)v3 initWithVariantsManager:v4 originalItem:v5 selectedVariantIdentifier:v6];
  variantListController = self->_variantListController;
  self->_variantListController = v7;

  [(CNPhotoPickerVariantListController *)self->_variantListController setDelegate:self];
  v9 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(CNPhotoPickerVariantListController *)self->_variantListController collectionView];
  [v10 setShowsVerticalScrollIndicator:0];

  v11 = [(CNPhotoPickerVariantListController *)self->_variantListController collectionView];
  [v11 setShowsHorizontalScrollIndicator:0];

  v12 = [(CNPhotoPickerVariantListController *)self->_variantListController collectionView];
  [v12 setScrollEnabled:0];

  v13 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  v14 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  [v13 addSubview:v14];

  [(CNSharingProfileOnboardingVariantViewController *)self addChildViewController:self->_variantListController];
  [(CNPhotoPickerVariantListController *)self->_variantListController didMoveToParentViewController:self];
  v56 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  v54 = [v56 topAnchor];
  v55 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  v53 = [v55 topAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v58[0] = v52;
  v51 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  v49 = [v51 bottomAnchor];
  v50 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  v48 = [v50 bottomAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v58[1] = v47;
  v46 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  v44 = [v46 leadingAnchor];
  v45 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  v15 = [v45 leadingAnchor];
  v16 = [v44 constraintEqualToAnchor:v15];
  v58[2] = v16;
  v17 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  v18 = [v17 trailingAnchor];
  v19 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v58[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];

  v23 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  v24 = [v23 heightAnchor];
  v25 = [v24 constraintEqualToConstant:200.0];
  heightLayoutConstraint = self->_heightLayoutConstraint;
  self->_heightLayoutConstraint = v25;

  [(NSLayoutConstraint *)self->_heightLayoutConstraint setActive:1];
  [MEMORY[0x1E696ACD8] activateConstraints:v22];
  v27 = objc_alloc_init(CNOnboardingBoldButtonProvider);
  v28 = [(CNOnboardingBoldButtonProvider *)v27 boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v28;

  v30 = self->_continueButton;
  v31 = CNContactsUIBundle();
  v32 = [v31 localizedStringForKey:@"SHARING_CONTINUE" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBBoldTrayButton *)v30 setTitle:v32 forState:0];

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:sel_didTapContinue_ forControlEvents:64];
  v33 = [(CNSharingProfileOnboardingVariantViewController *)self buttonTray];
  [v33 addButton:self->_continueButton];

  if (self->_shouldShowPoseButton)
  {
    v34 = [MEMORY[0x1E69B7D30] linkButton];
    poseButton = self->_poseButton;
    self->_poseButton = v34;

    v36 = self->_poseButton;
    v37 = CNContactsUIBundle();
    v38 = [v37 localizedStringForKey:@"SHARING_STRIKE_YOUR_POSE" value:&stru_1F0CE7398 table:@"Localized"];
    [(OBLinkTrayButton *)v36 setTitle:v38 forState:0];

    [(OBLinkTrayButton *)self->_poseButton addTarget:self action:sel_didTapPose_ forControlEvents:64];
    v39 = [(CNSharingProfileOnboardingVariantViewController *)self buttonTray];
    [v39 addButton:self->_poseButton];
  }

  v40 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v41 = [(CNSharingProfileOnboardingVariantViewController *)self view];
  [v41 setBackgroundColor:v40];

  v42 = [(OBBaseWelcomeController *)self navigationItem];
  [v42 setLeftBarButtonItem:0];

  v43 = [(OBBaseWelcomeController *)self navigationItem];
  [v43 setRightBarButtonItem:0];
}

- (CNSharingProfileOnboardingVariantViewController)initWithVariantsManager:(id)a3 originalItem:(id)a4 selectedVariantIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 localizedVariantsTitle];
  v16.receiver = self;
  v16.super_class = CNSharingProfileOnboardingVariantViewController;
  v13 = [(CNSharingProfileOnboardingVariantViewController *)&v16 initWithTitle:v12 detailText:0 icon:0];

  if (v13)
  {
    objc_storeStrong(&v13->_variantsManager, a3);
    objc_storeStrong(&v13->_item, a4);
    objc_storeStrong(&v13->_variantName, a5);
    v14 = v13;
  }

  return v13;
}

@end