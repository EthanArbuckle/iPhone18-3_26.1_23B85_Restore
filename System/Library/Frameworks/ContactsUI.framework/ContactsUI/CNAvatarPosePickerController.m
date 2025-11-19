@interface CNAvatarPosePickerController
- (CGSize)desiredContentSize;
- (CNAvatarPosePickerController)initWithAnimojiProviderItem:(id)a3 variantsManager:(id)a4;
- (CNAvatarPosePickerController)initWithAvatarRecord:(id)a3 variantsManager:(id)a4;
- (CNAvatarPosePickerControllerDelegate)delegate;
- (id)posePickerViewController;
- (void)photoPickerVariantListController:(id)a3 didSelectProviderItem:(id)a4;
- (void)photoPickerVariantListControllerDidCancel:(id)a3;
- (void)setDesiredContentSize:(CGSize)a3;
- (void)setNumberOfItemsPerRow:(int64_t)a3;
@end

@implementation CNAvatarPosePickerController

- (CGSize)desiredContentSize
{
  width = self->_desiredContentSize.width;
  height = self->_desiredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CNAvatarPosePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photoPickerVariantListControllerDidCancel:(id)a3
{
  v4 = [(CNAvatarPosePickerController *)self delegate];
  [v4 posePickerController:self didSelectProviderItem:0];
}

- (void)photoPickerVariantListController:(id)a3 didSelectProviderItem:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(CNAvatarPosePickerController *)self delegate];
    [v8 posePickerController:self didSelectProviderItem:v7];
  }
}

- (id)posePickerViewController
{
  posePickerController = self->_posePickerController;
  if (posePickerController)
  {
    v3 = posePickerController;
  }

  else
  {
    v5 = [CNPhotoPickerVariantListController alloc];
    v6 = [(CNAvatarPosePickerController *)self variantsManager];
    v7 = [(CNAvatarPosePickerController *)self originalProviderItem];
    v8 = [(CNPhotoPickerVariantListController *)v5 initWithVariantsManager:v6 originalItem:v7];

    [(CNPhotoPickerVariantListController *)v8 setDelegate:self];
    [(CNPhotoPickerVariantListController *)v8 setShowPreview:0];
    [(CNPhotoPickerVariantListController *)v8 setCellStyle:0];
    v9 = [(CNAvatarPosePickerController *)self numberOfItemsPerRow];
    v10 = 3;
    if (v9)
    {
      v10 = v9;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__CNAvatarPosePickerController_posePickerViewController__block_invoke;
    v17[3] = &__block_descriptor_40_e39_q40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v17[4] = v10;
    [(CNPhotoPickerVariantListController *)v8 setNumberOfItemsPerRowProvider:v17];
    [(CNPhotoPickerVariantListController *)v8 setCommitsChangesOnSelection:1];
    [(CNAvatarPosePickerController *)self desiredContentSize];
    if (v12 != *MEMORY[0x1E695F060] || v11 != *(MEMORY[0x1E695F060] + 8))
    {
      [(CNAvatarPosePickerController *)self desiredContentSize];
      [(CNPhotoPickerVariantListController *)v8 setPreferredContentSize:?];
    }

    [(CNPhotoPickerVariantListController *)v8 setShowsSelection:0];
    v14 = self->_posePickerController;
    self->_posePickerController = v8;
    v15 = v8;

    v3 = self->_posePickerController;
  }

  return v3;
}

- (void)setDesiredContentSize:(CGSize)a3
{
  if (self->_desiredContentSize.width != a3.width || self->_desiredContentSize.height != a3.height)
  {
    self->_desiredContentSize = a3;
    [(CNPhotoPickerVariantListController *)self->_posePickerController setPreferredContentSize:?];
  }
}

- (void)setNumberOfItemsPerRow:(int64_t)a3
{
  if (self->_numberOfItemsPerRow != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_numberOfItemsPerRow = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__CNAvatarPosePickerController_setNumberOfItemsPerRow___block_invoke;
    v5[3] = &__block_descriptor_40_e39_q40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v5[4] = a3;
    [(CNPhotoPickerVariantListController *)self->_posePickerController setNumberOfItemsPerRowProvider:v5];
  }
}

- (CNAvatarPosePickerController)initWithAnimojiProviderItem:(id)a3 variantsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNAvatarPosePickerController;
  v9 = [(CNAvatarPosePickerController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_variantsManager, a4);
    objc_storeStrong(&v10->_originalProviderItem, a3);
    v11 = v10;
  }

  return v10;
}

- (CNAvatarPosePickerController)initWithAvatarRecord:(id)a3 variantsManager:(id)a4
{
  v6 = a4;
  v7 = [CNPhotoPickerAnimojiProvider providerItemForAvatarRecord:a3];
  v8 = [(CNAvatarPosePickerController *)self initWithAnimojiProviderItem:v7 variantsManager:v6];

  return v8;
}

@end