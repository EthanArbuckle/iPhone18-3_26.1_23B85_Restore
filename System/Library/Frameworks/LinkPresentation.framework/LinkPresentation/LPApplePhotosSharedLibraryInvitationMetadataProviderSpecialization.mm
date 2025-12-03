@interface LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization
+ (id)specializedMetadataProviderForURLWithContext:(id)context;
- (void)completeWithOriginatorDisplayName:(id)name;
- (void)start;
@end

@implementation LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)context
{
  contextCopy = context;
  postRedirectURL = [contextCopy postRedirectURL];
  v5 = [LPPresentationSpecializations isApplePhotosSharedLibraryInvitationURL:postRedirectURL];

  if (v5)
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization alloc] initWithContext:contextCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)start
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LinkPresentation: Failed to generate metadata - Could not open system photo library: %@", &v2, 0xCu);
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2;
    v28 = __Block_byref_object_dispose__2;
    v29 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v7 = getPHShareParticipantClass_softClass;
    v33 = getPHShareParticipantClass_softClass;
    if (!getPHShareParticipantClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __getPHShareParticipantClass_block_invoke;
      v37 = &unk_1E7A35518;
      v38 = &v30;
      __getPHShareParticipantClass_block_invoke(buf);
      v7 = v31[3];
    }

    v8 = v7;
    _Block_object_dispose(&v30, 8);
    v9 = [v7 fetchParticipantsInShare:v5 options:*(a1 + 48)];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_5;
    v23[3] = &unk_1E7A36380;
    v23[4] = &v24;
    [v9 enumerateObjectsUsingBlock:v23];
    v10 = v25[5];
    if (!v10)
    {
      v16 = sharedLibraryLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v5 localIdentifier];
        __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_2(v17, buf, v16);
      }

      [*(a1 + 40) completeWithOriginatorDisplayName:0];
      goto LABEL_21;
    }

    v11 = v10;
    v12 = [v11 nameComponents];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E696ADF8]);
      [v13 setStyle:1];
      v14 = [v13 stringFromPersonNameComponents:v12];
    }

    else
    {
      v13 = [v11 emailAddress];
      if (![v13 length])
      {
        v22 = [v11 phoneNumber];
        if ([v22 length])
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_16;
      }

      v14 = v13;
      v13 = v14;
    }

    v18 = v14;
LABEL_16:

    if (!v18)
    {
      v19 = sharedLibraryLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v25[5] localIdentifier];
        v21 = [v5 localIdentifier];
        __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_1(v20, v21, buf, v19);
      }
    }

    [*(a1 + 40) completeWithOriginatorDisplayName:v18];

LABEL_21:
    _Block_object_dispose(&v24, 8);

    goto LABEL_22;
  }

  v15 = sharedLibraryLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_3(a1, v6, v15);
  }

  [*(a1 + 40) completeWithOriginatorDisplayName:0];
LABEL_22:
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 role] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)completeWithOriginatorDisplayName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(LPApplePhotosSharedLibraryInvitationMetadata);
  if (nameCopy)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = LPLocalizedString(@"%@ wants you to join a Shared Library in Photos");
    nameCopy = [v6 localizedStringWithFormat:v7, nameCopy];
    [(LPApplePhotosSharedLibraryInvitationMetadata *)v5 setMessage:nameCopy];

    [(LPApplePhotosSharedLibraryInvitationMetadata *)v5 setOriginatorDisplayName:nameCopy];
  }

  v9 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:v5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_completeWithOriginatorDisplayName___block_invoke;
  block[3] = &unk_1E7A35478;
  block[4] = self;
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_completeWithOriginatorDisplayName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metadataProviderSpecialization:*(a1 + 32) didCompleteWithMetadata:*(a1 + 40)];
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LinkPresentation: Failed to generate metadata - No name for owner: %{public}@, library scope: %{public}@", buf, 0x16u);
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LinkPresentation: Failed to generate metadata - No owner for library scope: %{public}@", buf, 0xCu);
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LinkPresentation: Failed to generate metadata - No library scope for URL: %@, error: %@", &v4, 0x16u);
}

@end