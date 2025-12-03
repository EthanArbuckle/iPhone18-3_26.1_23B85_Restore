@interface CNSharingProfileOnboardingVariantViewController
- (CNSharingProfileOnboardingVariantViewController)initWithVariantsManager:(id)manager originalItem:(id)item selectedVariantIdentifier:(id)identifier;
- (CNSharingProfileOnboardingVariantViewControllerDelegate)onboardingDelegate;
- (void)didTapBack:(id)back;
- (void)didTapContinue:(id)continue;
- (void)didTapPose:(id)pose;
- (void)didTapSetupLater:(id)later;
- (void)photoPickerVariantListController:(id)controller didSelectProviderItem:(id)item;
- (void)updateOriginalItem:(id)item;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNSharingProfileOnboardingVariantViewController

- (CNSharingProfileOnboardingVariantViewControllerDelegate)onboardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingDelegate);

  return WeakRetained;
}

- (void)photoPickerVariantListController:(id)controller didSelectProviderItem:(id)item
{
  objc_storeStrong(&self->_selectedItem, item);
  onboardingDelegate = [(CNSharingProfileOnboardingVariantViewController *)self onboardingDelegate];
  [onboardingDelegate onboardingVariantControllerDidTapContinue:self];
}

- (void)didTapBack:(id)back
{
  onboardingDelegate = [(CNSharingProfileOnboardingVariantViewController *)self onboardingDelegate];
  [onboardingDelegate onboardingVariantControllerDidTapBack:self];
}

- (void)didTapPose:(id)pose
{
  onboardingDelegate = [(CNSharingProfileOnboardingVariantViewController *)self onboardingDelegate];
  [onboardingDelegate onboardingVariantControllerDidTapPose:self];
}

- (void)didTapContinue:(id)continue
{
  variantListController = [(CNSharingProfileOnboardingVariantViewController *)self variantListController];
  [variantListController didFinishSelectingVariant];
}

- (void)didTapSetupLater:(id)later
{
  onboardingDelegate = [(CNSharingProfileOnboardingVariantViewController *)self onboardingDelegate];
  [onboardingDelegate onboardingVariantControllerDidTapSetupLater:self];
}

- (void)updateOriginalItem:(id)item
{
  itemCopy = item;
  variantListController = [(CNSharingProfileOnboardingVariantViewController *)self variantListController];
  [variantListController updateForNewOriginalItem:itemCopy];
}

- (void)viewDidLayoutSubviews
{
  variantListController = [(CNSharingProfileOnboardingVariantViewController *)self variantListController];
  collectionView = [variantListController collectionView];
  [collectionView contentSize];
  v6 = v5;
  heightLayoutConstraint = [(CNSharingProfileOnboardingVariantViewController *)self heightLayoutConstraint];
  [heightLayoutConstraint setConstant:v6];

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
  variantsManager = [(CNSharingProfileOnboardingVariantViewController *)self variantsManager];
  item = [(CNSharingProfileOnboardingVariantViewController *)self item];
  variantName = [(CNSharingProfileOnboardingVariantViewController *)self variantName];
  v7 = [(CNPhotoPickerVariantListController *)v3 initWithVariantsManager:variantsManager originalItem:item selectedVariantIdentifier:variantName];
  variantListController = self->_variantListController;
  self->_variantListController = v7;

  [(CNPhotoPickerVariantListController *)self->_variantListController setDelegate:self];
  view = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView = [(CNPhotoPickerVariantListController *)self->_variantListController collectionView];
  [collectionView setShowsVerticalScrollIndicator:0];

  collectionView2 = [(CNPhotoPickerVariantListController *)self->_variantListController collectionView];
  [collectionView2 setShowsHorizontalScrollIndicator:0];

  collectionView3 = [(CNPhotoPickerVariantListController *)self->_variantListController collectionView];
  [collectionView3 setScrollEnabled:0];

  contentView = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  view2 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  [contentView addSubview:view2];

  [(CNSharingProfileOnboardingVariantViewController *)self addChildViewController:self->_variantListController];
  [(CNPhotoPickerVariantListController *)self->_variantListController didMoveToParentViewController:self];
  view3 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  topAnchor = [view3 topAnchor];
  contentView2 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v58[0] = v52;
  view4 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  bottomAnchor = [view4 bottomAnchor];
  contentView3 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v58[1] = v47;
  view5 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  leadingAnchor = [view5 leadingAnchor];
  contentView4 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v58[2] = v16;
  view6 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  trailingAnchor = [view6 trailingAnchor];
  contentView5 = [(CNSharingProfileOnboardingVariantViewController *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v58[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];

  view7 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  heightAnchor = [view7 heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:200.0];
  heightLayoutConstraint = self->_heightLayoutConstraint;
  self->_heightLayoutConstraint = v25;

  [(NSLayoutConstraint *)self->_heightLayoutConstraint setActive:1];
  [MEMORY[0x1E696ACD8] activateConstraints:v22];
  v27 = objc_alloc_init(CNOnboardingBoldButtonProvider);
  boldButton = [(CNOnboardingBoldButtonProvider *)v27 boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = boldButton;

  v30 = self->_continueButton;
  v31 = CNContactsUIBundle();
  v32 = [v31 localizedStringForKey:@"SHARING_CONTINUE" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBBoldTrayButton *)v30 setTitle:v32 forState:0];

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:sel_didTapContinue_ forControlEvents:64];
  buttonTray = [(CNSharingProfileOnboardingVariantViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  if (self->_shouldShowPoseButton)
  {
    linkButton = [MEMORY[0x1E69B7D30] linkButton];
    poseButton = self->_poseButton;
    self->_poseButton = linkButton;

    v36 = self->_poseButton;
    v37 = CNContactsUIBundle();
    v38 = [v37 localizedStringForKey:@"SHARING_STRIKE_YOUR_POSE" value:&stru_1F0CE7398 table:@"Localized"];
    [(OBLinkTrayButton *)v36 setTitle:v38 forState:0];

    [(OBLinkTrayButton *)self->_poseButton addTarget:self action:sel_didTapPose_ forControlEvents:64];
    buttonTray2 = [(CNSharingProfileOnboardingVariantViewController *)self buttonTray];
    [buttonTray2 addButton:self->_poseButton];
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view8 = [(CNSharingProfileOnboardingVariantViewController *)self view];
  [view8 setBackgroundColor:systemBackgroundColor];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0];
}

- (CNSharingProfileOnboardingVariantViewController)initWithVariantsManager:(id)manager originalItem:(id)item selectedVariantIdentifier:(id)identifier
{
  managerCopy = manager;
  itemCopy = item;
  identifierCopy = identifier;
  localizedVariantsTitle = [itemCopy localizedVariantsTitle];
  v16.receiver = self;
  v16.super_class = CNSharingProfileOnboardingVariantViewController;
  v13 = [(CNSharingProfileOnboardingVariantViewController *)&v16 initWithTitle:localizedVariantsTitle detailText:0 icon:0];

  if (v13)
  {
    objc_storeStrong(&v13->_variantsManager, manager);
    objc_storeStrong(&v13->_item, item);
    objc_storeStrong(&v13->_variantName, identifier);
    v14 = v13;
  }

  return v13;
}

@end