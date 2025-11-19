@interface AAAppleIDRepairController
- (AAAppleIDRepairController)init;
- (BOOL)offline_primaryAppleIDNeedsRepair;
- (unint64_t)_fetchRepairState;
- (void)_forceFetchUpdatedUserInformationWithCompletion:(id)a3;
- (void)primaryAppleIDRepairNeedsRepairCompletion:(id)a3;
@end

@implementation AAAppleIDRepairController

- (AAAppleIDRepairController)init
{
  v6.receiver = self;
  v6.super_class = AAAppleIDRepairController;
  v2 = [(AAAppleIDRepairController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6959A48] defaultStore];
    v4 = [v3 aa_primaryAppleAccount];
    [(AAAppleIDRepairController *)v2 setPrimaryAccount:v4];
  }

  return v2;
}

- (BOOL)offline_primaryAppleIDNeedsRepair
{
  v3 = [(AAAppleIDRepairController *)self primaryAccount];

  if (!v3)
  {
    return 0;
  }

  v4 = [(AAAppleIDRepairController *)self _fetchRepairState];
  return (v4 & 0xFFFFFFFFFFFFFFFDLL) == 0 || v4 == 3;
}

- (void)primaryAppleIDRepairNeedsRepairCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AAAppleIDRepairController_primaryAppleIDRepairNeedsRepairCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9C950;
  v5 = v4;
  v10 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(AAAppleIDRepairController *)self primaryAccount];

  if (v7)
  {
    v8 = [(AAAppleIDRepairController *)self _fetchRepairState];
    if (v8)
    {
      v6[2](v6, v8);
    }

    else
    {
      [(AAAppleIDRepairController *)self _forceFetchUpdatedUserInformationWithCompletion:v6];
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

uint64_t __71__AAAppleIDRepairController_primaryAppleIDRepairNeedsRepairCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Final repair state %@", &v8, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, (a2 & 0xFFFFFFFFFFFFFFFELL) == 2);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)_fetchRepairState
{
  v3 = [MEMORY[0x1E698DC80] sharedInstance];
  v4 = [(AAAppleIDRepairController *)self primaryAccount];
  v5 = [v4 aa_altDSID];
  v6 = [v3 authKitAccountWithAltDSID:v5];

  v7 = [MEMORY[0x1E698DC80] sharedInstance];
  v8 = [v7 repairStateForAccount:v6];

  return v8;
}

- (void)_forceFetchUpdatedUserInformationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(AAAppleIDRepairController *)self primaryAccount];
  v7 = [v6 aa_altDSID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__AAAppleIDRepairController__forceFetchUpdatedUserInformationWithCompletion___block_invoke;
  v9[3] = &unk_1E7C9C978;
  v10 = v4;
  v8 = v4;
  [v5 getUserInformationForAltDSID:v7 completion:v9];
}

void __77__AAAppleIDRepairController__forceFetchUpdatedUserInformationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _AALogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__AAAppleIDRepairController__forceFetchUpdatedUserInformationWithCompletion___block_invoke_cold_1(v6, v8);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "repairState")}];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "User information returned state: %@", &v13, 0xCu);
    }

    v11 = *(a1 + 32);
    [v5 repairState];
    v9 = *(v11 + 16);
  }

  v9();

  v12 = *MEMORY[0x1E69E9840];
}

void __77__AAAppleIDRepairController__forceFetchUpdatedUserInformationWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Error fetching user information: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end