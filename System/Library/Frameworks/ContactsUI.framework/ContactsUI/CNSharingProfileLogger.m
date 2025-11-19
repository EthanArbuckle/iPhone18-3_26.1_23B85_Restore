@interface CNSharingProfileLogger
+ (id)log;
- (CNSharingProfileLogger)init;
- (void)logErrorGeneratingAvatarForPhotoPickerWithDescription:(id)a3;
- (void)logOnboardingAddingContact;
- (void)logOnboardingAvatarCarouselErrorCreatingContactImageWithDescription:(id)a3;
- (void)logOnboardingErrorSavingContactWithDescription:(id)a3;
- (void)logOnboardingErrorSavingMeCardImageToRecentsWithDescription:(id)a3;
- (void)logOnboardingErrorSavingMeCardPosterToRecentsWithDescription:(id)a3;
- (void)logOnboardingErrorSettingMeContactWithDescription:(id)a3;
- (void)logOnboardingReturningDefaultMonogram;
- (void)logOnboardingReturningEmptyImage;
- (void)logOnboardingReturningNonAnimojiItem;
- (void)logOnboardingReturningSharingResultWithDescription:(id)a3;
- (void)logOnboardingSavingContact:(id)a3;
- (void)logOnboardingSavingMeCardImageToRecentsForIdentifier:(id)a3;
- (void)logOnboardingSavingMeCardPosterToRecentsForIdentifier:(id)a3;
- (void)logOnboardingSettingMeContact;
- (void)logOnboardingSuccessSavingContact;
- (void)logOnboardingSuccessSavingMeCardImageToRecents;
- (void)logOnboardingSuccessSavingMeCardPosterToRecents;
- (void)logOnboardingUpdatingContactWithIdentifier:(id)a3;
- (void)logSettingsErrorSavingContactWithDescription:(id)a3;
- (void)logSettingsErrorSettingMeContactWithDescription:(id)a3;
- (void)logSettingsReturningDefaultMonogram;
- (void)logSettingsReturningEmptyImage;
- (void)logSettingsReturningEmptyImageForNoChange;
- (void)logSettingsReturningSharingResultWithDescription:(id)a3;
- (void)logSettingsSavingContact:(id)a3;
- (void)logSettingsSettingMeContact;
- (void)logSettingsSuccessSavingContact;
@end

@implementation CNSharingProfileLogger

- (void)logSettingsReturningEmptyImage
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_199A75000, log, OS_LOG_TYPE_ERROR, "[Settings] Image returned is empty!", v3, 2u);
  }
}

- (void)logSettingsReturningEmptyImageForNoChange
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Settings] No image changes detected, returning empty image", v3, 2u);
  }
}

- (void)logSettingsReturningDefaultMonogram
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Settings] Default gray monogram selected, returning empty imageData", v3, 2u);
  }
}

- (void)logSettingsReturningSharingResultWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Settings] Returning sharing result with description: %@", &v6, 0xCu);
  }
}

- (void)logErrorGeneratingAvatarForPhotoPickerWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Settings] Error generating avatar image prior to presenting photo picker: %@", &v6, 0xCu);
  }
}

- (void)logSettingsSuccessSavingContact
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Settings] Saving contact succeeded", v3, 2u);
  }
}

- (void)logSettingsErrorSettingMeContactWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_error_impl(&dword_199A75000, log, OS_LOG_TYPE_ERROR, "[Settings] Error setting me contact: %@", &v6, 0xCu);
  }
}

- (void)logSettingsSettingMeContact
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Settings] Saving contact", v3, 2u);
  }
}

- (void)logSettingsErrorSavingContactWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_error_impl(&dword_199A75000, log, OS_LOG_TYPE_ERROR, "[Settings] Error saving contact: %@", &v6, 0xCu);
  }
}

- (void)logSettingsSavingContact:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Settings] Saving contact with identifier %{public}@", &v6, 0xCu);
  }
}

- (void)logOnboardingReturningNonAnimojiItem
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_199A75000, log, OS_LOG_TYPE_ERROR, "[Onboarding] Pose picker finished with a provider item that was not of type CNPhotoPickerAnimojiProviderItem, Memoji metadata will not be saved", v3, 2u);
  }
}

- (void)logOnboardingReturningEmptyImage
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_199A75000, log, OS_LOG_TYPE_ERROR, "[Onboarding] Image returned is empty!", v3, 2u);
  }
}

- (void)logOnboardingReturningDefaultMonogram
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Settings] Default gray monogram selected, returning empty imageData", v3, 2u);
  }
}

- (void)logOnboardingReturningSharingResultWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Returning sharing result with description: %@", &v6, 0xCu);
  }
}

- (void)logOnboardingAvatarCarouselErrorCreatingContactImageWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_error_impl(&dword_199A75000, log, OS_LOG_TYPE_ERROR, "[Onboarding] Error generating contact image: %@", &v6, 0xCu);
  }
}

- (void)logOnboardingSuccessSavingContact
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Saving contact succeeded", v3, 2u);
  }
}

- (void)logOnboardingErrorSettingMeContactWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_error_impl(&dword_199A75000, log, OS_LOG_TYPE_ERROR, "[Onboarding] Error setting contact as me card: %{public}@", &v6, 0xCu);
  }
}

- (void)logOnboardingSettingMeContact
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Setting me contact", v3, 2u);
  }
}

- (void)logOnboardingErrorSavingContactWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_error_impl(&dword_199A75000, log, OS_LOG_TYPE_ERROR, "[Onboarding] Error saving contact: %{public}@", &v6, 0xCu);
  }
}

- (void)logOnboardingUpdatingContactWithIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Updating contact with identifier %{public}@", &v6, 0xCu);
  }
}

- (void)logOnboardingAddingContact
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Adding contact", v3, 2u);
  }
}

- (void)logOnboardingSavingContact:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Saving contact with identifier %{public}@", &v6, 0xCu);
  }
}

- (void)logOnboardingErrorSavingMeCardPosterToRecentsWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Error saving contact poster to recents: %{public}@", &v6, 0xCu);
  }
}

- (void)logOnboardingErrorSavingMeCardImageToRecentsWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Error saving contact image to recents: %{public}@", &v6, 0xCu);
  }
}

- (void)logOnboardingSuccessSavingMeCardPosterToRecents
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Success saving contact poster to recents", v3, 2u);
  }
}

- (void)logOnboardingSuccessSavingMeCardImageToRecents
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Success saving contact image to recents", v3, 2u);
  }
}

- (void)logOnboardingSavingMeCardPosterToRecentsForIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Saving contact poster to recents for contact with identifier %{public}@", &v6, 0xCu);
  }
}

- (void)logOnboardingSavingMeCardImageToRecentsForIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_199A75000, log, OS_LOG_TYPE_DEFAULT, "[Onboarding] Saving contact image to recents for contact with identifier %{public}@", &v6, 0xCu);
  }
}

- (CNSharingProfileLogger)init
{
  v6.receiver = self;
  v6.super_class = CNSharingProfileLogger;
  v2 = [(CNSharingProfileLogger *)&v6 init];
  if (v2)
  {
    v3 = [objc_opt_class() log];
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

+ (id)log
{
  if (log_cn_once_token_1_51495 != -1)
  {
    dispatch_once(&log_cn_once_token_1_51495, &__block_literal_global_51496);
  }

  v3 = log_cn_once_object_1_51497;

  return v3;
}

uint64_t __29__CNSharingProfileLogger_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "MeCardSharing");
  v1 = log_cn_once_object_1_51497;
  log_cn_once_object_1_51497 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end