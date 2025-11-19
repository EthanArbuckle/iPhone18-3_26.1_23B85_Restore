@interface AAUIContactsProvider
- (AAUIContactsProvider)init;
- (void)_fetchImageDataForLocalContact:(id)a3 ofSize:(double)a4 withCompletion:(id)a5;
- (void)_fetchImagesForContacts:(id)a3 ofSize:(double)a4 completion:(id)a5;
- (void)_fetchServerImageDataFor:(id)a3 WithCompletion:(id)a4;
- (void)fetchSuggestedBeneficiariesWithImagesOfSize:(double)a3 andCompletion:(id)a4;
- (void)fetchSuggestedCustodiansForUpsellWithImagesOfSize:(double)a3 telemetryFlowID:(id)a4 andCompletion:(id)a5;
- (void)fetchSuggestedCustodiansWithImagesOfSize:(double)a3 andCompletion:(id)a4;
@end

@implementation AAUIContactsProvider

- (AAUIContactsProvider)init
{
  v6.receiver = self;
  v6.super_class = AAUIContactsProvider;
  v2 = [(AAContactsProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    contactsManager = v2->_contactsManager;
    v2->_contactsManager = v3;
  }

  return v2;
}

- (void)fetchSuggestedCustodiansWithImagesOfSize:(double)a3 andCompletion:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__AAUIContactsProvider_fetchSuggestedCustodiansWithImagesOfSize_andCompletion___block_invoke;
  v9[3] = &unk_1E820D658;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = AAUIContactsProvider;
  v7 = v6;
  [(AAContactsProvider *)&v8 fetchSuggestedCustodians:v9];
}

- (void)fetchSuggestedCustodiansForUpsellWithImagesOfSize:(double)a3 telemetryFlowID:(id)a4 andCompletion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__AAUIContactsProvider_fetchSuggestedCustodiansForUpsellWithImagesOfSize_telemetryFlowID_andCompletion___block_invoke;
  v10[3] = &unk_1E820D658;
  v12 = a3;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(AAContactsProvider *)self fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:a4 completion:v10];
}

- (void)fetchSuggestedBeneficiariesWithImagesOfSize:(double)a3 andCompletion:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__AAUIContactsProvider_fetchSuggestedBeneficiariesWithImagesOfSize_andCompletion___block_invoke;
  v9[3] = &unk_1E820D658;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = AAUIContactsProvider;
  v7 = v6;
  [(AAContactsProvider *)&v8 fetchSuggestedBeneficiaries:v9];
}

- (void)_fetchImagesForContacts:(id)a3 ofSize:(double)a4 completion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v20 = a5;
  v9 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 imageData];

        if (!v16)
        {
          dispatch_group_enter(v9);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __66__AAUIContactsProvider__fetchImagesForContacts_ofSize_completion___block_invoke;
          v24[3] = &unk_1E820D680;
          v24[4] = v15;
          v25 = v9;
          [(AAUIContactsProvider *)self _fetchImageDataForLocalContact:v15 ofSize:v24 withCompletion:a4];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v17 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AAUIContactsProvider__fetchImagesForContacts_ofSize_completion___block_invoke_2;
  block[3] = &unk_1E820B7A8;
  v22 = v10;
  v23 = v20;
  v18 = v10;
  v19 = v20;
  dispatch_group_notify(v9, v17, block);
}

void __66__AAUIContactsProvider__fetchImagesForContacts_ofSize_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setImageData:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)_fetchImageDataForLocalContact:(id)a3 ofSize:(double)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  contactsManager = self->_contactsManager;
  v11 = [v8 handle];
  v12 = [(AAContactsManager *)contactsManager contactForHandle:v11];

  v13 = [v12 imageData];

  if (v13)
  {
    v14 = [v12 imageData];
  }

  else
  {
    v15 = [v12 thumbnailImageData];

    if (!v15)
    {
      v17 = [v8 familyDSID];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __77__AAUIContactsProvider__fetchImageDataForLocalContact_ofSize_withCompletion___block_invoke;
      v18[3] = &unk_1E820D6A8;
      v19 = v8;
      v21 = a4;
      v20 = v9;
      [(AAUIContactsProvider *)self _fetchServerImageDataFor:v17 WithCompletion:v18];

      goto LABEL_6;
    }

    v14 = [v12 thumbnailImageData];
  }

  v16 = v14;
  (*(v9 + 2))(v9, v14);

LABEL_6:
}

void __77__AAUIContactsProvider__fetchImageDataForLocalContact_ofSize_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getFAProfilePictureStoreClass_softClass;
  v13 = getFAProfilePictureStoreClass_softClass;
  if (!getFAProfilePictureStoreClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getFAProfilePictureStoreClass_block_invoke;
    v9[3] = &unk_1E820BE08;
    v9[4] = &v10;
    __getFAProfilePictureStoreClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [*(a1 + 32) firstName];
  v7 = [*(a1 + 32) lastName];
  v8 = [v4 profilePictureForContact:0 serverImageData:v3 firstName:v6 lastName:v7 diameter:*(a1 + 48)];

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchServerImageDataFor:(id)a3 WithCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E699C078]) initWithFamilyMemberDSID:v5 size:1 localFallback:1];
    [v8 setUseMonogramAsLastResort:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__AAUIContactsProvider__fetchServerImageDataFor_WithCompletion___block_invoke;
    v9[3] = &unk_1E820D6D0;
    v10 = v7;
    [v8 startRequestWithCompletionHandler:v9];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

@end