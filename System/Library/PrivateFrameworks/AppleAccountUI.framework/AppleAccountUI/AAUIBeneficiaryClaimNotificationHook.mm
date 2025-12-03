@interface AAUIBeneficiaryClaimNotificationHook
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_beneficiaryContactNameForBeneficiaryID:(id)d completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIBeneficiaryClaimNotificationHook

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:@"action"];
  v5 = [v4 isEqualToString:@"beneficiary:contactName"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__5;
  v17[4] = __Block_byref_object_dispose__5;
  pages = [modelCopy pages];
  firstObject = [pages firstObject];

  clientInfo = [modelCopy clientInfo];
  v10 = [clientInfo objectForKeyedSubscript:@"beneficiaryUUID"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__AAUIBeneficiaryClaimNotificationHook_processObjectModel_completion___block_invoke;
  v13[3] = &unk_1E820C490;
  v11 = completionCopy;
  v15 = v11;
  v16 = v17;
  v12 = modelCopy;
  v14 = v12;
  [(AAUIBeneficiaryClaimNotificationHook *)self _beneficiaryContactNameForBeneficiaryID:v10 completion:v13];

  _Block_object_dispose(v17, 8);
}

void __70__AAUIBeneficiaryClaimNotificationHook_processObjectModel_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AAUIBeneficiaryClaimNotificationHook_processObjectModel_completion___block_invoke_2;
    block[3] = &unk_1E820B7A8;
    v7 = &v16;
    v16 = *(a1 + 40);
    v8 = &v15;
    v15 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__AAUIBeneficiaryClaimNotificationHook_processObjectModel_completion___block_invoke_3;
    v9[3] = &unk_1E820C468;
    v13 = *(a1 + 48);
    v7 = &v10;
    v10 = v5;
    v8 = &v11;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

uint64_t __70__AAUIBeneficiaryClaimNotificationHook_processObjectModel_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t __70__AAUIBeneficiaryClaimNotificationHook_processObjectModel_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(*(a1 + 56) + 8) + 40) tableViewOM];
  v3 = [v2 sections];
  v4 = [v3 firstObject];
  v5 = [v4 headerView];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) clientInfo];
  v8 = [v7 objectForKeyedSubscript:@"targetQuery"];
  [v5 setHTMLContent:v6 toElementsMatchingQuery:v8];

  result = *(a1 + 48);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

- (void)_beneficiaryContactNameForBeneficiaryID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x1E698B8E0]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__AAUIBeneficiaryClaimNotificationHook__beneficiaryContactNameForBeneficiaryID_completion___block_invoke;
  v10[3] = &unk_1E820C4E0;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = dCopy;
  v9 = completionCopy;
  [v7 fetchBeneficiariesWithCompletion:v10];
}

void __91__AAUIBeneficiaryClaimNotificationHook__beneficiaryContactNameForBeneficiaryID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = MEMORY[0x1E696AE18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__AAUIBeneficiaryClaimNotificationHook__beneficiaryContactNameForBeneficiaryID_completion___block_invoke_2;
    v15[3] = &unk_1E820C4B8;
    v16 = *(a1 + 32);
    v7 = [v6 predicateWithBlock:v15];
    v8 = [v5 filteredArrayUsingPredicate:v7];

    v9 = [v8 firstObject];
    v10 = MEMORY[0x1E698B930];
    v11 = [v9 handle];
    v12 = [v10 contactInfoForHandle:v11];

    v13 = *(a1 + 40);
    v14 = [v12 fullName];
    (*(v13 + 16))(v13, v14, 0);
  }
}

uint64_t __91__AAUIBeneficiaryClaimNotificationHook__beneficiaryContactNameForBeneficiaryID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 beneficiaryID];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end