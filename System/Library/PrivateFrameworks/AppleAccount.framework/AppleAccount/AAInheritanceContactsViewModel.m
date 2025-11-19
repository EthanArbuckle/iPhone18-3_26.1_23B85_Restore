@interface AAInheritanceContactsViewModel
- (AAInheritanceContactsViewModel)init;
- (id)_localBenefactors:(id)a3;
- (id)_localBeneficiaries:(id)a3 invitationStatuses:(id)a4;
- (id)_localContact:(id)a3;
- (void)_fetchInvitationStatuses:(id)a3;
- (void)_fetchInvitations:(id)a3;
- (void)fetchBenefactors:(id)a3;
- (void)fetchBeneficiaries:(id)a3;
- (void)fetchSuggestedBeneficiaries:(id)a3;
@end

@implementation AAInheritanceContactsViewModel

- (AAInheritanceContactsViewModel)init
{
  v8.receiver = self;
  v8.super_class = AAInheritanceContactsViewModel;
  v2 = [(AAInheritanceContactsViewModel *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(AAInheritanceController);
    inheritanceController = v2->_inheritanceController;
    v2->_inheritanceController = v3;

    v5 = objc_alloc_init(AAContactsManager);
    contactsManager = v2->_contactsManager;
    v2->_contactsManager = v5;
  }

  return v2;
}

- (void)fetchBeneficiaries:(id)a3
{
  v4 = a3;
  inheritanceController = self->_inheritanceController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AAInheritanceContactsViewModel_fetchBeneficiaries___block_invoke;
  v7[3] = &unk_1E7C9B9E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AAInheritanceController *)inheritanceController fetchBeneficiariesWithCompletion:v7];
}

void __53__AAInheritanceContactsViewModel_fetchBeneficiaries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__AAInheritanceContactsViewModel_fetchBeneficiaries___block_invoke_cold_1();
    }
  }

  else if ([v5 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__AAInheritanceContactsViewModel_fetchBeneficiaries___block_invoke_29;
    v11[3] = &unk_1E7C9BDF0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v13 = v9;
    v11[4] = v10;
    v12 = v5;
    [v8 _fetchInvitationStatuses:v11];

    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))();
LABEL_8:
}

void __53__AAInheritanceContactsViewModel_fetchBeneficiaries___block_invoke_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) _localBeneficiaries:*(a1 + 40) invitationStatuses:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)fetchBenefactors:(id)a3
{
  v4 = a3;
  inheritanceController = self->_inheritanceController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AAInheritanceContactsViewModel_fetchBenefactors___block_invoke;
  v7[3] = &unk_1E7C9B9E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AAInheritanceController *)inheritanceController fetchBenefactorsWithCompletion:v7];
}

void __51__AAInheritanceContactsViewModel_fetchBenefactors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__AAInheritanceContactsViewModel_fetchBenefactors___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v5 count];
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = [*(a1 + 32) _localBenefactors:v5];
      (*(v9 + 16))(v9, v10);
    }

    else
    {
      (*(v9 + 16))(*(a1 + 40), MEMORY[0x1E695E0F0]);
    }
  }
}

- (void)fetchSuggestedBeneficiaries:(id)a3
{
  v4 = a3;
  inheritanceController = self->_inheritanceController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AAInheritanceContactsViewModel_fetchSuggestedBeneficiaries___block_invoke;
  v7[3] = &unk_1E7C9B290;
  v8 = v4;
  v6 = v4;
  [(AAInheritanceController *)inheritanceController fetchSuggestedBeneficiariesWithCompletion:v7];
}

void __62__AAInheritanceContactsViewModel_fetchSuggestedBeneficiaries___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__AAInheritanceContactsViewModel_fetchSuggestedBeneficiaries___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)_fetchInvitationStatuses:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__AAInheritanceContactsViewModel__fetchInvitationStatuses___block_invoke;
  v8[3] = &unk_1E7C9BE18;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(AAInheritanceContactsViewModel *)self _fetchInvitations:v8];
}

void __59__AAInheritanceContactsViewModel__fetchInvitationStatuses___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "status")}];
        v11 = [v8 beneficiaryID];
        v12 = [v11 UUIDString];
        [v9 setObject:v10 forKey:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_fetchInvitations:(id)a3
{
  v4 = a3;
  inheritanceController = self->_inheritanceController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AAInheritanceContactsViewModel__fetchInvitations___block_invoke;
  v7[3] = &unk_1E7C9B290;
  v8 = v4;
  v6 = v4;
  [(AAInheritanceController *)inheritanceController fetchInvitationsWithCompletion:v7];
}

void __52__AAInheritanceContactsViewModel__fetchInvitations___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__AAInheritanceContactsViewModel__fetchInvitations___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (id)_localBeneficiaries:(id)a3 invitationStatuses:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AAInheritanceContactsViewModel__localBeneficiaries_invitationStatuses___block_invoke;
  v10[3] = &unk_1E7C9BE40;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 aaf_map:v10];

  return v8;
}

id __73__AAInheritanceContactsViewModel__localBeneficiaries_invitationStatuses___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 handle];
  v6 = [v3 _localContact:v5];

  [v6 setInheritanceContactInfo:v4];
  [v6 setContactType:4];
  v7 = *(a1 + 40);
  v8 = [v4 beneficiaryID];

  v9 = [v8 UUIDString];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (v10)
  {
    if ([v10 integerValue] == 4)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v12 = [v10 integerValue];
  }

  else
  {
    v12 = -1;
  }

  [v6 setTrustedContactStatus:v12];
  v11 = v6;
LABEL_7:

  return v11;
}

- (id)_localBenefactors:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AAInheritanceContactsViewModel__localBenefactors___block_invoke;
  v5[3] = &unk_1E7C9BE68;
  v5[4] = self;
  v3 = [a3 aaf_map:v5];

  return v3;
}

id __52__AAInheritanceContactsViewModel__localBenefactors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == 4)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 handle];
    v4 = [v5 _localContact:v6];

    [v4 setInheritanceContactInfo:v3];
    [v4 setContactType:8];
    v7 = [v3 accessKey];
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [v4 setTrustedContactStatus:v8];
  }

  return v4;
}

- (id)_localContact:(id)a3
{
  contactsManager = self->_contactsManager;
  v4 = a3;
  v5 = [(AAContactsManager *)contactsManager contactForHandle:v4];
  v6 = [[AALocalContactInfo alloc] initWithHandle:v4 contact:v5];

  return v6;
}

void __53__AAInheritanceContactsViewModel_fetchBeneficiaries___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "%{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__AAInheritanceContactsViewModel_fetchBenefactors___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "%{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__AAInheritanceContactsViewModel_fetchSuggestedBeneficiaries___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "%{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__AAInheritanceContactsViewModel__fetchInvitations___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "%{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end