@interface CNSharingProfileOnboardingFlowManager
+ (id)descriptorForRequiredKeys;
- (CNSharingProfileOnboardingFlowManager)initWithNavigationController:(id)a3 contact:(id)a4 avatarRecord:(id)a5 avatarItemProviderConfiguration:(id)a6;
- (CNSharingProfileOnboardingFlowManager)initWithNavigationController:(id)a3 contact:(id)a4 avatarRecord:(id)a5 avatarItemProviderConfiguration:(id)a6 logger:(id)a7;
- (CNSharingProfileOnboardingFlowManagerDelegate)delegate;
- (id)mutableContactForResult:(id)a3;
- (id)prepareVariantsControllerForResult:(id)a3;
- (id)providerItemForPhotoResult:(id)a3;
- (unint64_t)imageTypeForAvatarType:(int64_t)a3;
- (void)audienceController:(id)a3 didFinishWithContact:(id)a4 sharingAudience:(unint64_t)a5;
- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)notifyDelegateOfSetupLaterSelected;
- (void)onboardingVariantControllerDidTapContinue:(id)a3;
- (void)performSaveToMeCardAction;
- (void)photoSelectionViewControllerDidFinishWithResult:(id)a3;
- (void)posePickerController:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)posePickerControllerDidSelectBack:(id)a3;
- (void)posePickerControllerDidSelectSetupLater:(id)a3;
- (void)presentAnimojiPoseCapture;
- (void)presentMeCardAlertForResult:(id)a3;
- (void)presentMeCardPersistanceAlertIfNeededWithCompletionBlock:(id)a3;
- (void)presentNameAndAudienceControllerForContact:(id)a3;
- (void)saveCurrentInfoToMeCard;
- (void)startFlow;
@end

@implementation CNSharingProfileOnboardingFlowManager

- (CNSharingProfileOnboardingFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)audienceController:(id)a3 didFinishWithContact:(id)a4 sharingAudience:(unint64_t)a5
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__CNSharingProfileOnboardingFlowManager_audienceController_didFinishWithContact_sharingAudience___block_invoke;
  aBlock[3] = &unk_1E74E6DF8;
  v11 = v7;
  v12 = self;
  v13 = a5;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  v9[2]();
}

void __97__CNSharingProfileOnboardingFlowManager_audienceController_didFinishWithContact_sharingAudience___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v10 = objc_alloc_init(CNSharingProfileOnboardingFlowResult);
    v2 = [*(a1 + 32) imageData];
    v3 = [v2 length];

    if (!v3)
    {
      if ([*(a1 + 32) rawImageType])
      {
        if ([*(a1 + 32) rawImageType] != 2)
        {
          [*(*(a1 + 40) + 120) logOnboardingReturningEmptyImage];
        }
      }

      else
      {
        [*(*(a1 + 40) + 120) logOnboardingReturningDefaultMonogram];
      }
    }

    v4 = [*(a1 + 32) imageData];
    [(CNSharingProfileOnboardingFlowResult *)v10 setImageData:v4];

    [*(a1 + 32) cropRect];
    [(CNSharingProfileOnboardingFlowResult *)v10 setCropRect:?];
    v5 = [*(a1 + 32) givenName];
    [(CNSharingProfileOnboardingFlowResult *)v10 setGivenName:v5];

    v6 = [*(a1 + 32) familyName];
    [(CNSharingProfileOnboardingFlowResult *)v10 setFamilyName:v6];

    v7 = [*(a1 + 32) wallpaper];
    [(CNSharingProfileOnboardingFlowResult *)v10 setWallpaper:v7];

    [(CNSharingProfileOnboardingFlowResult *)v10 setSharingAudience:*(a1 + 48)];
    [(CNSharingProfileOnboardingFlowResult *)v10 setDidPersistImageToContact:*(*(a1 + 40) + 10)];
    v8 = [*(a1 + 40) delegate];
    [v8 flowManager:*(a1 + 40) didFinishWithResult:v10];
  }

  else
  {
    v9 = [*(*(a1 + 40) + 24) popViewControllerAnimated:*(*(a1 + 40) + 8)];
  }
}

- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    objc_storeStrong(&self->_selectedVariantItem, a4);
    v7 = [(CNSharingProfileOnboardingFlowManager *)self variantController];
    [v7 updateOriginalItem:v6];
  }

  v8 = [v9 viewController];
  [v8 dismissViewControllerAnimated:1 completion:0];
}

- (void)posePickerControllerDidSelectSetupLater:(id)a3
{
  v4 = [(CNSharingProfileOnboardingFlowManager *)self delegate];
  [v4 flowManagerDidSelectSetupLater:self];
}

- (void)posePickerControllerDidSelectBack:(id)a3
{
  v5 = [(CNSharingProfileOnboardingFlowManager *)self navigationController];
  v4 = [v5 popViewControllerAnimated:self->_shouldAnimateNavTransitions];
}

- (void)posePickerController:(id)a3 didFinishWithProviderItem:(id)a4
{
  v23 = a3;
  v6 = a4;
  if (!self->_variantsManager)
  {
    v7 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = self->_variantsManager;
    self->_variantsManager = v7;
  }

  v9 = MEMORY[0x1E69DCAB8];
  v10 = [v6 imageData];
  v11 = [v9 imageWithData:v10];

  v12 = [CNAvatarImageUtilities croppedAndCenteredAvatarImageForImage:v11 widthMultiplier:1.0];
  v13 = UIImagePNGRepresentation(v12);
  v14 = [CNPhotoPickerAnimojiProviderItem alloc];
  v15 = [(CNPhotoPickerAnimojiProviderItem *)v14 initWithOriginalImageData:v13 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  objc_opt_class();
  v16 = v6;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    v19 = [v18 avatarRecord];
    [(CNPhotoPickerAnimojiProviderItem *)v15 setAvatarRecord:v19];

    v20 = [v18 poseConfiguration];
    [(CNPhotoPickerAnimojiProviderItem *)v15 setPoseConfiguration:v20];

    [v18 edgeInsets];
    [(CNPhotoPickerAnimojiProviderItem *)v15 setEdgeInsets:?];
    [v18 originalImageSize];
    [(CNPhotoPickerAnimojiProviderItem *)v15 setOriginalImageSize:?];
  }

  else
  {
    [(CNSharingProfileLogger *)self->_logger logOnboardingReturningNonAnimojiItem];
  }

  v21 = [[CNSharingProfileOnboardingVariantViewController alloc] initWithVariantsManager:self->_variantsManager originalItem:v15 selectedVariantIdentifier:0];
  objc_storeStrong(&self->_variantController, v21);
  variantController = self->_variantController;
  if (variantController)
  {
    [(CNSharingProfileOnboardingVariantViewController *)variantController setOnboardingDelegate:self];
    [(UINavigationController *)self->_navigationController pushViewController:self->_variantController animated:self->_shouldAnimateNavTransitions];
  }
}

- (void)onboardingVariantControllerDidTapContinue:(id)a3
{
  v4 = [a3 selectedItem];
  selectedVariantItem = self->_selectedVariantItem;
  self->_selectedVariantItem = v4;

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__CNSharingProfileOnboardingFlowManager_onboardingVariantControllerDidTapContinue___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [(CNSharingProfileOnboardingFlowManager *)self presentMeCardPersistanceAlertIfNeededWithCompletionBlock:v6];
}

void __83__CNSharingProfileOnboardingFlowManager_onboardingVariantControllerDidTapContinue___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) mutableCopy];
  [*(*(a1 + 32) + 104) updateContact:v2];
  [*(a1 + 32) presentNameAndAudienceControllerForContact:v2];
}

- (id)mutableContactForResult:(id)a3
{
  v4 = [a3 compositedImage];
  v5 = UIImagePNGRepresentation(v4);
  v6 = [(CNContact *)self->_contact mutableCopy];
  [v6 setImageData:v5];
  [v6 setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setThumbnailImageData:v5];

  return v6;
}

- (void)presentMeCardAlertForResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CNSharingProfileOnboardingFlowManager_presentMeCardAlertForResult___block_invoke;
  v6[3] = &unk_1E74E77C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CNSharingProfileOnboardingFlowManager *)self presentMeCardPersistanceAlertIfNeededWithCompletionBlock:v6];
}

void __69__CNSharingProfileOnboardingFlowManager_presentMeCardAlertForResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableContactForResult:*(a1 + 40)];
  [*(a1 + 32) presentNameAndAudienceControllerForContact:v2];
}

- (void)photoSelectionViewControllerDidFinishWithResult:(id)a3
{
  v10 = a3;
  if (v10)
  {
    objc_storeStrong(&self->_photoSelectionResult, a3);
    selectedVariantItem = self->_selectedVariantItem;
    self->_selectedVariantItem = 0;

    if ([v10 wasSelectedInFullPhotoPicker] || (-[CNSharingProfileOnboardingFlowManager prepareVariantsControllerForResult:](self, "prepareVariantsControllerForResult:", v10), v6 = objc_claimAutoreleasedReturnValue(), variantController = self->_variantController, self->_variantController = v6, variantController, (v8 = self->_variantController) == 0))
    {
      [(CNSharingProfileOnboardingFlowManager *)self presentMeCardAlertForResult:v10];
    }

    else
    {
      [(CNSharingProfileOnboardingVariantViewController *)v8 setOnboardingDelegate:self];
      -[CNSharingProfileOnboardingVariantViewController setShouldShowPoseButton:](self->_variantController, "setShouldShowPoseButton:", [v10 avatarType] == 2);
      [(UINavigationController *)self->_navigationController pushViewController:self->_variantController animated:self->_shouldAnimateNavTransitions];
    }
  }

  else
  {
    v9 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:self->_shouldAnimateNavTransitions];
  }
}

- (void)notifyDelegateOfSetupLaterSelected
{
  v3 = [(CNSharingProfileOnboardingFlowManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNSharingProfileOnboardingFlowManager *)self delegate];
    [v5 flowManagerDidSelectSetupLater:self];
  }
}

- (void)presentAnimojiPoseCapture
{
  v3 = [[CNAvatarEditingManager alloc] initWithAvatarRecord:self->_avatarRecord variantsManager:self->_variantsManager];
  avatarEditingManager = self->_avatarEditingManager;
  self->_avatarEditingManager = v3;

  v5 = [CNPhotoPickerNavigationViewController alloc];
  v6 = [(CNAvatarEditingManager *)self->_avatarEditingManager viewController];
  v15 = [(CNPhotoPickerNavigationViewController *)v5 initWithRootViewController:v6];

  [(CNAvatarEditingManager *)self->_avatarEditingManager setDelegate:self];
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v8 = [(CNAvatarEditingManager *)self->_avatarEditingManager viewController];
  v9 = [v8 view];
  [v9 setBackgroundColor:v7];

  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v11 = v10;
  v13 = v12;
  v14 = [(CNAvatarEditingManager *)self->_avatarEditingManager viewController];
  [v14 setPreferredContentSize:{v11, v13}];

  [(UINavigationController *)self->_navigationController presentViewController:v15 animated:1 completion:0];
}

- (void)presentNameAndAudienceControllerForContact:(id)a3
{
  v4 = a3;
  v5 = [[CNSharingProfileOnboardingAudienceViewController alloc] initWithContact:v4 selectedSharingAudience:1];

  [(CNSharingProfileOnboardingAudienceViewController *)v5 setDelegate:self];
  audienceViewController = self->_audienceViewController;
  self->_audienceViewController = v5;
  v7 = v5;

  [(UINavigationController *)self->_navigationController pushViewController:v7 animated:self->_shouldAnimateNavTransitions];
}

- (void)saveCurrentInfoToMeCard
{
  v95[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v4 = objc_alloc_init(MEMORY[0x1E695CF88]);
  v5 = [(CNContact *)self->_contact mutableCopy];
  selectedVariantItem = self->_selectedVariantItem;
  if (selectedVariantItem)
  {
    [(CNPhotoPickerProviderItem *)selectedVariantItem updateContact:v5];
  }

  else
  {
    v7 = [(CNSharingProfileOnboardingPhotoSelectionResult *)self->_photoSelectionResult compositedImage];
    v8 = UIImagePNGRepresentation(v7);

    [v5 setImageData:v8];
    [v5 setThumbnailImageData:v8];
    v9 = [v8 _cn_md5Hash];
    [v5 setImageHash:v9];

    [v5 setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v5 updateImageInfoWithType:{-[CNSharingProfileOnboardingFlowManager imageTypeForAvatarType:](self, "imageTypeForAvatarType:", -[CNSharingProfileOnboardingPhotoSelectionResult avatarType](self->_photoSelectionResult, "avatarType"))}];
    v10 = [(CNSharingProfileOnboardingPhotoSelectionResult *)self->_photoSelectionResult memojiMetadata];
    [v5 setMemojiMetadata:v10];
  }

  if (![v5 hasBeenPersisted])
  {
    [(CNSharingProfileLogger *)self->_logger logOnboardingAddingContact];
    [v4 addContact:v5 toContainerWithIdentifier:0];
    v87 = 0;
    v12 = [v3 executeSaveRequest:v4 error:&v87];
    v13 = v87;
    v14 = v13;
    logger = self->_logger;
    if (v12)
    {
      [(CNSharingProfileLogger *)self->_logger logOnboardingSuccessSavingContact];
    }

    else
    {
      v41 = [v13 localizedDescription];
      [(CNSharingProfileLogger *)logger logOnboardingErrorSavingContactWithDescription:v41];
    }

    v86 = 0;
    v42 = [v3 setMeContact:v5 error:&v86];
    v43 = v86;
    v44 = v43;
    if ((v42 & 1) == 0)
    {
      v45 = self->_logger;
      v46 = [v43 localizedDescription];
      [(CNSharingProfileLogger *)v45 logOnboardingErrorSettingMeContactWithDescription:v46];
    }

    goto LABEL_32;
  }

  v11 = [(CNContact *)self->_contact rawImageType]!= 1 && [(CNContact *)self->_contact rawImageType]!= 0;
  v16 = [(CNSharingProfileOnboardingPhotoSelectionResult *)self->_photoSelectionResult wasSelectedInFullPhotoPicker];
  if ([(CNContact *)self->_contact imageDataAvailable]&& !v11 && !v16)
  {
    v17 = [objc_alloc(MEMORY[0x1E695CFB0]) initWithContactStore:v3];
    v18 = [v17 recentImagesForContact:self->_contact];
    v19 = objc_alloc_init(MEMORY[0x1E695CDA8]);
    v94 = 0;
    v20 = [v19 performFetchRequest:v18 error:&v94];
    v84 = v94;
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __64__CNSharingProfileOnboardingFlowManager_saveCurrentInfoToMeCard__block_invoke;
    v93[3] = &unk_1E74E5390;
    v93[4] = self;
    if (([v20 _cn_any:v93] & 1) == 0)
    {
      v80 = v18;
      v82 = v17;
      v21 = self->_logger;
      v22 = [(CNContact *)self->_contact identifier];
      [(CNSharingProfileLogger *)v21 logOnboardingSavingMeCardImageToRecentsForIdentifier:v22];

      v23 = objc_alloc(MEMORY[0x1E695CD88]);
      v24 = [(CNContact *)self->_contact imageData];
      [(CNContact *)self->_contact cropRect];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = [MEMORY[0x1E695DF00] date];
      v34 = [v23 initWithImageData:v24 cropRect:v33 lastUsedDate:{v26, v28, v30, v32}];

      v35 = MEMORY[0x1E695CD90];
      v36 = [(CNContact *)self->_contact identifier];
      v78 = v34;
      v37 = [v35 requestToCreateImage:v34 forContactIdentifier:v36];

      v92 = 0;
      LOBYTE(v34) = [v19 performCreateRequest:v37 error:&v92];
      v38 = v92;
      v39 = v38;
      v40 = self->_logger;
      if (v34)
      {
        [(CNSharingProfileLogger *)self->_logger logOnboardingSuccessSavingMeCardImageToRecents];
      }

      else
      {
        v47 = [v38 localizedDescription];
        [(CNSharingProfileLogger *)v40 logOnboardingErrorSavingMeCardImageToRecentsWithDescription:v47];
      }

      v18 = v80;
      v17 = v82;
    }
  }

  v48 = [(CNContact *)self->_contact wallpaper];
  v49 = [v48 posterArchiveData];

  if (v49)
  {
    v50 = [objc_alloc(MEMORY[0x1E695CFB0]) initWithContactStore:v3];
    v51 = [v50 recentPostersForContact:self->_contact];
    v52 = objc_alloc_init(MEMORY[0x1E695CE00]);
    v91 = 0;
    v53 = [v52 performFetchRequest:v51 error:&v91];
    v54 = v91;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __64__CNSharingProfileOnboardingFlowManager_saveCurrentInfoToMeCard__block_invoke_2;
    v90[3] = &unk_1E74E53B8;
    v90[4] = self;
    if (([v53 _cn_any:v90] & 1) == 0)
    {
      v77 = v54;
      v79 = v53;
      v81 = v3;
      v83 = v51;
      v85 = v4;
      v55 = self->_logger;
      v56 = [(CNContact *)self->_contact identifier];
      [(CNSharingProfileLogger *)v55 logOnboardingSavingMeCardPosterToRecentsForIdentifier:v56];

      v57 = objc_alloc(MEMORY[0x1E695CDD0]);
      v58 = [MEMORY[0x1E696AFB0] UUID];
      v59 = [v58 UUIDString];
      v60 = [(CNContact *)self->_contact wallpaper];
      [v60 posterArchiveData];
      v62 = v61 = v52;
      [MEMORY[0x1E695DF00] date];
      v64 = v63 = v50;
      v65 = [v57 initWithIdentifier:v59 posterData:v62 lastUsedDate:v64];

      v50 = v63;
      v52 = v61;
      v66 = v65;

      v95[0] = v65;
      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];
      v68 = [v63 createPosters:v67 forContact:self->_contact];

      v89 = 0;
      LOBYTE(v67) = [v52 performCreateRequest:v68 error:&v89];
      v69 = v89;
      v70 = v69;
      v71 = self->_logger;
      if (v67)
      {
        [(CNSharingProfileLogger *)self->_logger logOnboardingSuccessSavingMeCardPosterToRecents];
      }

      else
      {
        v72 = [v69 localizedDescription];
        [(CNSharingProfileLogger *)v71 logOnboardingErrorSavingMeCardPosterToRecentsWithDescription:v72];
      }

      v51 = v83;
      v4 = v85;
      v53 = v79;
      v3 = v81;
      v54 = v77;
    }
  }

  v73 = self->_logger;
  v74 = [v5 identifier];
  [(CNSharingProfileLogger *)v73 logOnboardingUpdatingContactWithIdentifier:v74];

  [v4 updateContact:v5];
  v88 = 0;
  LOBYTE(v74) = [v3 executeSaveRequest:v4 error:&v88];
  v75 = v88;
  v14 = v75;
  v76 = self->_logger;
  if ((v74 & 1) == 0)
  {
    v44 = [v75 localizedDescription];
    [(CNSharingProfileLogger *)v76 logOnboardingErrorSavingContactWithDescription:v44];
LABEL_32:

    goto LABEL_33;
  }

  [(CNSharingProfileLogger *)v76 logOnboardingSuccessSavingContact];
LABEL_33:
}

uint64_t __64__CNSharingProfileOnboardingFlowManager_saveCurrentInfoToMeCard__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 imageData];
  v4 = [*(*(a1 + 32) + 32) imageData];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

uint64_t __64__CNSharingProfileOnboardingFlowManager_saveCurrentInfoToMeCard__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 posterData];
  v4 = [*(*(a1 + 32) + 32) wallpaper];
  v5 = [v4 posterArchiveData];
  v6 = [v3 isEqualToData:v5];

  return v6;
}

- (unint64_t)imageTypeForAvatarType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_199E43EC0[a3 - 1];
  }
}

- (void)performSaveToMeCardAction
{
  [(CNSharingProfileOnboardingFlowManager *)self saveCurrentInfoToMeCard];

  [(CNSharingProfileOnboardingFlowManager *)self setDidPersistToMeCard:1];
}

- (void)presentMeCardPersistanceAlertIfNeededWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:27];

  if (v7)
  {
    [(CNSharingProfileOnboardingFlowManager *)self performSaveToMeCardAction];
    v4[2](v4);
  }

  else
  {
    v8 = MEMORY[0x1E69DC650];
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
    v13 = [v8 alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v14 = MEMORY[0x1E69DC648];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_CONFIRM" value:&stru_1F0CE7398 table:@"Localized"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __98__CNSharingProfileOnboardingFlowManager_presentMeCardPersistanceAlertIfNeededWithCompletionBlock___block_invoke;
    v30[3] = &unk_1E74E5368;
    v30[4] = self;
    v17 = v4;
    v31 = v17;
    v18 = [v14 actionWithTitle:v16 style:0 handler:v30];
    [v13 addAction:v18];

    v19 = MEMORY[0x1E69DC648];
    v20 = CNContactsUIBundle();
    v21 = [v20 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __98__CNSharingProfileOnboardingFlowManager_presentMeCardPersistanceAlertIfNeededWithCompletionBlock___block_invoke_2;
    v27 = &unk_1E74E5368;
    v28 = self;
    v29 = v17;
    v22 = [v19 actionWithTitle:v21 style:1 handler:&v24];
    [v13 addAction:{v22, v24, v25, v26, v27, v28}];

    v23 = [(CNSharingProfileOnboardingFlowManager *)self navigationController];
    [v23 presentViewController:v13 animated:1 completion:0];
  }
}

uint64_t __98__CNSharingProfileOnboardingFlowManager_presentMeCardPersistanceAlertIfNeededWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) performSaveToMeCardAction];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)providerItemForPhotoResult:(id)a3
{
  v4 = a3;
  v5 = [v4 avatarType];
  switch(v5)
  {
    case 1:
      v10 = [[CNVisualIdentity alloc] initWithContact:self->_contact];
      v9 = +[CNPhotoPickerMonogramProvider providerItemForVisualIdentity:size:RTL:](CNPhotoPickerMonogramProvider, "providerItemForVisualIdentity:size:RTL:", v10, [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, 500.0, 500.0);
      goto LABEL_10;
    case 4:
      v18 = [CNPhotoPickerProviderItem alloc];
      v10 = [v4 originalImage];
      v16 = UIImageJPEGRepresentation(v10, 0.8);
      v9 = [(CNPhotoPickerProviderItem *)v18 initWithImageData:v16 thumbnailImageData:0 fullscreenImageData:0 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      goto LABEL_8;
    case 2:
      v6 = [CNPhotoPickerAnimojiProviderItem alloc];
      v7 = [v4 originalImage];
      v8 = UIImagePNGRepresentation(v7);
      v9 = [(CNPhotoPickerAnimojiProviderItem *)v6 initWithOriginalImageData:v8 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

      v10 = [CNPhotoPickerVariantsManager sharingProfileAvatarPoseConfigurationForAvatarRecord:self->_avatarRecord];
      v11 = [v4 originalImage];
      [CNAvatarImageUtilities transparencyInsetsForImage:v11 requiringFullOpacity:0];
      [(CNPhotoPickerAnimojiProviderItem *)v9 setEdgeInsets:?];

      v12 = [v4 originalImage];
      [v12 size];
      [(CNPhotoPickerAnimojiProviderItem *)v9 setOriginalImageSize:?];

      [(CNPhotoPickerAnimojiProviderItem *)v9 setPoseConfiguration:v10];
      v13 = [v4 memojiMetadata];

      if (!v13)
      {
LABEL_10:

        goto LABEL_12;
      }

      v14 = MEMORY[0x1E695CF08];
      v15 = [v4 memojiMetadata];
      v16 = [v14 memojiMetadataFromData:v15];

      if (v16)
      {
        v17 = [v16 avatarRecord];
        [(CNPhotoPickerAnimojiProviderItem *)v9 setAvatarRecord:v17];
      }

LABEL_8:

      goto LABEL_10;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)prepareVariantsControllerForResult:(id)a3
{
  v4 = a3;
  if (!self->_variantsManager)
  {
    v5 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = self->_variantsManager;
    self->_variantsManager = v5;
  }

  v7 = [(CNSharingProfileOnboardingFlowManager *)self providerItemForPhotoResult:v4];
  if (v7)
  {
    v8 = [CNSharingProfileOnboardingVariantViewController alloc];
    v9 = self->_variantsManager;
    v10 = [v4 variantName];
    v11 = [(CNSharingProfileOnboardingVariantViewController *)v8 initWithVariantsManager:v9 originalItem:v7 selectedVariantIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)startFlow
{
  if (![(CNSharingProfileOnboardingFlowManager *)self isRunning])
  {
    [(CNSharingProfileOnboardingFlowManager *)self setIsRunning:1];
    v3 = [[CNSharingProfileOnboardingPhotoSelectionViewController alloc] initWithContact:self->_contact avatarRecord:self->_avatarRecord avatarItemProviderConfiguration:self->_avatarItemProviderConfiguration];
    photoSelectionController = self->_photoSelectionController;
    self->_photoSelectionController = v3;

    [(CNSharingProfileOnboardingPhotoSelectionViewController *)self->_photoSelectionController setDelegate:self];
    navigationController = self->_navigationController;
    v6 = self->_photoSelectionController;
    shouldAnimateNavTransitions = self->_shouldAnimateNavTransitions;

    [(UINavigationController *)navigationController pushViewController:v6 animated:shouldAnimateNavTransitions];
  }
}

- (CNSharingProfileOnboardingFlowManager)initWithNavigationController:(id)a3 contact:(id)a4 avatarRecord:(id)a5 avatarItemProviderConfiguration:(id)a6 logger:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = CNSharingProfileOnboardingFlowManager;
  v16 = [(CNSharingProfileOnboardingFlowManager *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_navigationController, a3);
    objc_storeStrong(&v17->_contact, a4);
    objc_storeStrong(&v17->_avatarRecord, a5);
    objc_storeStrong(&v17->_avatarItemProviderConfiguration, a6);
    v18 = objc_alloc_init(CNSharingProfileLogger);
    logger = v17->_logger;
    v17->_logger = v18;

    v17->_shouldAnimateNavTransitions = 1;
    v20 = v17;
  }

  return v17;
}

- (CNSharingProfileOnboardingFlowManager)initWithNavigationController:(id)a3 contact:(id)a4 avatarRecord:(id)a5 avatarItemProviderConfiguration:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(CNSharingProfileLogger);
  v15 = [(CNSharingProfileOnboardingFlowManager *)self initWithNavigationController:v13 contact:v12 avatarRecord:v11 avatarItemProviderConfiguration:v10 logger:v14];

  return v15;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_48221 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_48221, &__block_literal_global_48222);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_48223;

  return v3;
}

void __66__CNSharingProfileOnboardingFlowManager_descriptorForRequiredKeys__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = +[CNSharingProfileOnboardingPhotoSelectionViewController descriptorForRequiredKeys];
  v7[0] = v0;
  v1 = +[CNSharingProfileOnboardingAudienceViewController descriptorForRequiredKeys];
  v7[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v3 = MEMORY[0x1E695CD58];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSharingProfileOnboardingFlowManager descriptorForRequiredKeys]_block_invoke"];
  v5 = [v3 descriptorWithKeyDescriptors:v2 description:v4];

  v6 = descriptorForRequiredKeys_cn_once_object_1_48223;
  descriptorForRequiredKeys_cn_once_object_1_48223 = v5;
}

@end