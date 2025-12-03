@interface CNSharingProfileOnboardingPosePickerController
- (CNSharingProfileOnboardingPosePickerController)initWithAvatarRecord:(id)record variantsManager:(id)manager;
- (CNSharingProfileOnboardingPosePickerControllerDelegate)delegate;
- (void)didTapBack:(id)back;
- (void)didTapContinue:(id)continue;
- (void)didTapSetupLater:(id)later;
- (void)photoPickerVariantListController:(id)controller didSelectProviderItem:(id)item;
- (void)photoPickerVariantListControllerDidCancel:(id)cancel;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNSharingProfileOnboardingPosePickerController

- (CNSharingProfileOnboardingPosePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photoPickerVariantListController:(id)controller didSelectProviderItem:(id)item
{
  itemCopy = item;
  delegate = [(CNSharingProfileOnboardingPosePickerController *)self delegate];
  [delegate posePickerController:self didFinishWithProviderItem:itemCopy];
}

- (void)photoPickerVariantListControllerDidCancel:(id)cancel
{
  delegate = [(CNSharingProfileOnboardingPosePickerController *)self delegate];
  [delegate posePickerControllerDidSelectBack:self];
}

- (void)didTapContinue:(id)continue
{
  variantListController = [(CNSharingProfileOnboardingPosePickerController *)self variantListController];
  [variantListController didFinishSelectingVariant];
}

- (void)didTapBack:(id)back
{
  delegate = [(CNSharingProfileOnboardingPosePickerController *)self delegate];
  [delegate posePickerControllerDidSelectBack:self];
}

- (void)didTapSetupLater:(id)later
{
  delegate = [(CNSharingProfileOnboardingPosePickerController *)self delegate];
  [delegate posePickerControllerDidSelectSetupLater:self];
}

- (void)viewDidLayoutSubviews
{
  variantListController = [(CNSharingProfileOnboardingPosePickerController *)self variantListController];
  collectionView = [variantListController collectionView];
  [collectionView contentSize];
  v6 = v5;
  heightConstraint = [(CNSharingProfileOnboardingPosePickerController *)self heightConstraint];
  [heightConstraint setConstant:v6];

  v8.receiver = self;
  v8.super_class = CNSharingProfileOnboardingPosePickerController;
  [(OBBaseWelcomeController *)&v8 viewDidLayoutSubviews];
}

- (void)viewDidLoad
{
  v63[4] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = CNSharingProfileOnboardingPosePickerController;
  [(OBBaseWelcomeController *)&v62 viewDidLoad];
  v3 = [CNPhotoPickerVariantListController alloc];
  variantsManager = [(CNSharingProfileOnboardingPosePickerController *)self variantsManager];
  avatarRecord = [(CNSharingProfileOnboardingPosePickerController *)self avatarRecord];
  v6 = [CNPhotoPickerAnimojiProvider providerItemForAvatarRecord:avatarRecord];
  v7 = [(CNPhotoPickerVariantListController *)v3 initWithVariantsManager:variantsManager originalItem:v6];

  [(CNPhotoPickerVariantListController *)v7 setDelegate:self];
  [(CNPhotoPickerVariantListController *)v7 setShowPreview:0];
  [(CNPhotoPickerVariantListController *)v7 setCellStyle:0];
  [(CNPhotoPickerVariantListController *)v7 setNumberOfItemsPerRowProvider:&__block_literal_global_7505];
  view = [(CNPhotoPickerVariantListController *)v7 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  variantListController = self->_variantListController;
  self->_variantListController = v7;
  v61 = v7;

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view2 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  [view2 setBackgroundColor:systemBackgroundColor];

  contentView = [(CNSharingProfileOnboardingPosePickerController *)self contentView];
  view3 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  [contentView addSubview:view3];

  [(CNSharingProfileOnboardingPosePickerController *)self addChildViewController:self->_variantListController];
  [(CNPhotoPickerVariantListController *)self->_variantListController didMoveToParentViewController:self];
  v14 = objc_alloc_init(CNOnboardingBoldButtonProvider);
  linkButton = [MEMORY[0x1E69B7D30] linkButton];
  setupLaterButton = self->_setupLaterButton;
  self->_setupLaterButton = linkButton;

  v17 = self->_setupLaterButton;
  v18 = CNContactsUIBundle();
  v19 = [v18 localizedStringForKey:@"SHARING_SET_UP_LATER" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBLinkTrayButton *)v17 setTitle:v19 forState:0];

  [(OBLinkTrayButton *)self->_setupLaterButton addTarget:self action:sel_didTapSetupLater_ forControlEvents:64];
  buttonTray = [(CNSharingProfileOnboardingPosePickerController *)self buttonTray];
  [buttonTray addButton:self->_setupLaterButton];

  v60 = v14;
  boldAlternateButton = [(CNOnboardingBoldButtonProvider *)v14 boldAlternateButton];
  backButton = self->_backButton;
  self->_backButton = boldAlternateButton;

  v23 = self->_backButton;
  v24 = CNContactsUIBundle();
  v25 = [v24 localizedStringForKey:@"SHARING_BACK" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBBoldTrayButton *)v23 setTitle:v25 forState:0];

  [(OBBoldTrayButton *)self->_backButton addTarget:self action:sel_didTapBack_ forControlEvents:64];
  buttonTray2 = [(CNSharingProfileOnboardingPosePickerController *)self buttonTray];
  [buttonTray2 addButton:self->_backButton];

  boldButton = [(CNOnboardingBoldButtonProvider *)v14 boldButton];
  nextButton = self->_nextButton;
  self->_nextButton = boldButton;

  v29 = self->_nextButton;
  v30 = CNContactsUIBundle();
  v31 = [v30 localizedStringForKey:@"SHARING_CONTINUE" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBBoldTrayButton *)v29 setTitle:v31 forState:0];

  [(OBBoldTrayButton *)self->_nextButton addTarget:self action:sel_didTapContinue_ forControlEvents:64];
  buttonTray3 = [(CNSharingProfileOnboardingPosePickerController *)self buttonTray];
  [buttonTray3 addButton:self->_nextButton];

  view4 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  leadingAnchor = [view4 leadingAnchor];
  contentView2 = [(CNSharingProfileOnboardingPosePickerController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v63[0] = v55;
  view5 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  trailingAnchor = [view5 trailingAnchor];
  contentView3 = [(CNSharingProfileOnboardingPosePickerController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v63[1] = v49;
  view6 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  topAnchor = [view6 topAnchor];
  contentView4 = [(CNSharingProfileOnboardingPosePickerController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v63[2] = v36;
  view7 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  bottomAnchor = [view7 bottomAnchor];
  contentView5 = [(CNSharingProfileOnboardingPosePickerController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v63[3] = v41;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];

  view8 = [(CNPhotoPickerVariantListController *)self->_variantListController view];
  heightAnchor = [view8 heightAnchor];
  v44 = [heightAnchor constraintEqualToConstant:200.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v44;

  v46 = MEMORY[0x1E696ACD8];
  v47 = [v51 arrayByAddingObject:self->_heightConstraint];
  [v46 activateConstraints:v47];
}

- (CNSharingProfileOnboardingPosePickerController)initWithAvatarRecord:(id)record variantsManager:(id)manager
{
  recordCopy = record;
  managerCopy = manager;
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_CHOOSE_YOUR_POSE" value:&stru_1F0CE7398 table:@"Localized"];
  v14.receiver = self;
  v14.super_class = CNSharingProfileOnboardingPosePickerController;
  v11 = [(CNSharingProfileOnboardingPosePickerController *)&v14 initWithTitle:v10 detailText:0 icon:0];

  if (v11)
  {
    objc_storeStrong(&v11->_avatarRecord, record);
    objc_storeStrong(&v11->_variantsManager, manager);
    v12 = v11;
  }

  return v11;
}

@end