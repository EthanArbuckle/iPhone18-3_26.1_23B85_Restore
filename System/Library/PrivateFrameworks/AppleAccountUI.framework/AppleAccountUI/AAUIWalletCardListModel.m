@interface AAUIWalletCardListModel
- (AAUIWalletCardListModel)init;
- (CGSize)setupAssistantCredentialCardArtSize;
- (void)fetchWalletCardsWithCompletion:(id)a3;
- (void)setupAssistantCredentialUpdatedCardArt:(id)a3;
@end

@implementation AAUIWalletCardListModel

- (AAUIWalletCardListModel)init
{
  v9.receiver = self;
  v9.super_class = AAUIWalletCardListModel;
  v2 = [(AAUIWalletCardListModel *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    cards = v2->_cards;
    v2->_cards = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.appleaccountui.card.update", v5);
    walletCardQueue = v2->_walletCardQueue;
    v2->_walletCardQueue = v6;
  }

  return v2;
}

- (void)fetchWalletCardsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v6 = getPKSetupAssistantContextClass_softClass;
  v26 = getPKSetupAssistantContextClass_softClass;
  if (!getPKSetupAssistantContextClass_softClass)
  {
    location = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getPKSetupAssistantContextClass_block_invoke;
    v21 = &unk_1E820BE08;
    v22 = &v23;
    __getPKSetupAssistantContextClass_block_invoke(&location);
    v6 = v24[3];
  }

  v7 = v6;
  _Block_object_dispose(&v23, 8);
  v8 = [[v6 alloc] initWithSetupAssistant:0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v9 = getPKPaymentSetupAssistantResetControllerClass_softClass;
  v26 = getPKPaymentSetupAssistantResetControllerClass_softClass;
  if (!getPKPaymentSetupAssistantResetControllerClass_softClass)
  {
    location = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getPKPaymentSetupAssistantResetControllerClass_block_invoke;
    v21 = &unk_1E820BE08;
    v22 = &v23;
    __getPKPaymentSetupAssistantResetControllerClass_block_invoke(&location);
    v9 = v24[3];
  }

  v10 = v9;
  _Block_object_dispose(&v23, 8);
  v11 = [[v9 alloc] initWithSetupAssistantContext:v8];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__AAUIWalletCardListModel_fetchWalletCardsWithCompletion___block_invoke;
  v14[3] = &unk_1E820D470;
  v14[4] = self;
  objc_copyWeak(&v17, &location);
  v12 = v4;
  v16 = v12;
  v13 = v5;
  v15 = v13;
  [v11 expressResetCardsWithCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __58__AAUIWalletCardListModel_fetchWalletCardsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AAUIWalletCardListModel_fetchWalletCardsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E820D448;
  objc_copyWeak(&v10, (a1 + 56));
  v9 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
}

void __58__AAUIWalletCardListModel_fetchWalletCardsWithCompletion___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v24 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __58__AAUIWalletCardListModel_fetchWalletCardsWithCompletion___block_invoke_2_cold_2(v24);
    }

    goto LABEL_20;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v24 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __58__AAUIWalletCardListModel_fetchWalletCardsWithCompletion___block_invoke_2_cold_1(v24);
    }

LABEL_20:

    (*(*(a1 + 48) + 16))();
    goto LABEL_21;
  }

  v25 = WeakRetained;
  [v3 setDelegate:WeakRetained];
  v4 = [*(a1 + 32) setupAssistantCredentials];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [*(a1 + 32) passSnapshotForCredential:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard.fill"];
        }

        v16 = v15;

        v17 = [AAUIWalletCardListItem alloc];
        v18 = [v12 title];
        v19 = [v12 subtitle];
        v20 = [v12 uniqueIdentifier];
        v21 = [(AAUIWalletCardListItem *)v17 initWithTitle:v18 subtitle:v19 icon:v16 uniqueIdentifier:v20];

        [*(a1 + 40) addObject:v21];
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v22 = [*(a1 + 40) copy];
  WeakRetained = v25;
  v23 = v25[2];
  v25[2] = v22;

  (*(*(a1 + 48) + 16))();
LABEL_21:
}

- (void)setupAssistantCredentialUpdatedCardArt:(id)a3
{
  v4 = a3;
  walletCardQueue = self->_walletCardQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AAUIWalletCardListModel_setupAssistantCredentialUpdatedCardArt___block_invoke;
  v7[3] = &unk_1E820BEB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(walletCardQueue, v7);
}

void __66__AAUIWalletCardListModel_setupAssistantCredentialUpdatedCardArt___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) cards];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 uniqueIdentifier];
        v9 = [*(a1 + 40) uniqueIdentifier];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v11 = [*(a1 + 40) passSnapshot];
          [v7 setIcon:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (CGSize)setupAssistantCredentialCardArtSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end