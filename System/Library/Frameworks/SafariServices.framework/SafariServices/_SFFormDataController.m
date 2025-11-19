@interface _SFFormDataController
+ (id)sharedController;
- (_SFFormDataController)initWithAggressiveKeychainCaching:(BOOL)a3;
- (id)metadataOfBestFormForStreamlinedLogin:(id)a3 autoFillFrameHandle:(id *)a4;
- (id)oneTimeCodeProvider;
@end

@implementation _SFFormDataController

+ (id)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___SFFormDataController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken_2 != -1)
  {
    dispatch_once(&sharedController_onceToken_2, block);
  }

  v2 = sharedController_sharedInstance;

  return v2;
}

- (_SFFormDataController)initWithAggressiveKeychainCaching:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = _SFFormDataController;
  v3 = [(WBUFormDataController *)&v8 initWithAggressiveKeychainCaching:a3];
  if (v3)
  {
    v4 = objc_alloc_init(_SFAuthenticationContext);
    autoFillAuthenticationContext = v3->_autoFillAuthenticationContext;
    v3->_autoFillAuthenticationContext = v4;

    [(_SFAuthenticationContext *)v3->_autoFillAuthenticationContext setDelegate:v3];
    v6 = v3;
  }

  return v3;
}

- (id)metadataOfBestFormForStreamlinedLogin:(id)a3 autoFillFrameHandle:(id *)a4
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__15;
  v19 = __Block_byref_object_dispose__15;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15;
  v13 = __Block_byref_object_dispose__15;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83___SFFormDataController_metadataOfBestFormForStreamlinedLogin_autoFillFrameHandle___block_invoke;
  v8[3] = &unk_1E84964B0;
  v8[4] = &v9;
  v8[5] = &v15;
  [v5 enumerateFormsAndFrameHandlesUsingBlock:v8];
  if (a4)
  {
    *a4 = v16[5];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

- (id)oneTimeCodeProvider
{
  oneTimeCodeProvider = self->_oneTimeCodeProvider;
  if (!oneTimeCodeProvider)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C8DB0]);
    v5 = self->_oneTimeCodeProvider;
    self->_oneTimeCodeProvider = v4;

    v6 = [(_SFFormDataController *)self autoFillQuirksManager];
    v7 = [v6 associatedDomainsManager];
    [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider setAssociatedDomainsManager:v7];

    oneTimeCodeProvider = self->_oneTimeCodeProvider;
  }

  v8 = oneTimeCodeProvider;

  return v8;
}

@end