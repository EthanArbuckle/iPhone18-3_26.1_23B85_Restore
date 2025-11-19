@interface INPreferences
+ (INSiriAuthorizationStatus)siriAuthorizationStatus;
+ (NSString)siriLanguageCode;
+ (id)sharedPreferences;
+ (void)_verifyProcessCanDonateIntentWithName:(id)a3 completion:(id)a4;
+ (void)requestSiriAuthorization:(void *)handler;
- (INPreferences)init;
- (id)_init;
- (id)_siriLanguageCode;
- (int64_t)_siriAuthorizationStatus;
- (void)_THROW_EXCEPTION_FOR_PROCESS_MISSING_ENTITLEMENT_com_apple_developer_siri;
- (void)_updateWithExtensionContext:(id)a3;
- (void)_verifyProcessCanDonateIntentWithName:(id)a3 completion:(id)a4;
- (void)assertThisProcessHasSiriEntitlement;
- (void)requestSiriAuthorization:(id)a3;
@end

@implementation INPreferences

+ (id)sharedPreferences
{
  if (sharedPreferences_singletonToken != -1)
  {
    dispatch_once(&sharedPreferences_singletonToken, &__block_literal_global_29674);
  }

  v3 = sSharedPreferences;

  return v3;
}

uint64_t __34__INPreferences_sharedPreferences__block_invoke()
{
  sSharedPreferences = [[INPreferences alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = INPreferences;
  v2 = [(INPreferences *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_INVocabularyConnection);
    assistantdConnection = v2->_assistantdConnection;
    v2->_assistantdConnection = v3;
  }

  return v2;
}

uint64_t __52__INPreferences_assertThisProcessHasSiriEntitlement__block_invoke(uint64_t a1)
{
  result = INThisProcessHasEntitlement(@"com.apple.developer.siri", 1);
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _THROW_EXCEPTION_FOR_PROCESS_MISSING_ENTITLEMENT_com_apple_developer_siri];
  }

  return result;
}

- (void)assertThisProcessHasSiriEntitlement
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__INPreferences_assertThisProcessHasSiriEntitlement__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  if (assertThisProcessHasSiriEntitlement_onlyCheckOnceToken != -1)
  {
    dispatch_once(&assertThisProcessHasSiriEntitlement_onlyCheckOnceToken, block);
  }
}

- (void)_verifyProcessCanDonateIntentWithName:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    assistantdConnection = self->_assistantdConnection;
    v8 = a3;
    v9 = [(_INVocabularyConnection *)assistantdConnection settingsService];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__INPreferences__verifyProcessCanDonateIntentWithName_completion___block_invoke;
    v10[3] = &unk_1E727FA90;
    v11 = v6;
    [v9 verifyProcessCanDonateIntentWithName:v8 completion:v10];
  }
}

void __66__INPreferences__verifyProcessCanDonateIntentWithName_completion___block_invoke(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__INPreferences__verifyProcessCanDonateIntentWithName_completion___block_invoke_2;
  v5[3] = &unk_1E72813A0;
  v6 = *(a1 + 32);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (id)_siriLanguageCode
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__29652;
  v21 = __Block_byref_object_dispose__29653;
  v22 = [(NSString *)self->_cachedSiriLanguageCode copy];
  v3 = v18[5];
  if (!v3)
  {
    if (INThisProcessIsAssistantd_onceToken != -1)
    {
      dispatch_once(&INThisProcessIsAssistantd_onceToken, &__block_literal_global_75004);
    }

    if (INThisProcessIsAssistantd_isAssistantd == 1)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v4 = getAFPreferencesClass_softClass;
      v27 = getAFPreferencesClass_softClass;
      if (!getAFPreferencesClass_softClass)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __getAFPreferencesClass_block_invoke;
        v23[3] = &unk_1E72888B8;
        v23[4] = &v24;
        __getAFPreferencesClass_block_invoke(v23);
        v4 = v25[3];
      }

      v5 = v4;
      _Block_object_dispose(&v24, 8);
      v6 = [v4 sharedPreferences];
      v7 = [v6 languageCode];
      v8 = v18[5];
      v18[5] = v7;
    }

    else
    {
      [(INPreferences *)self assertThisProcessHasSiriEntitlement];
      v9 = dispatch_group_create();
      dispatch_group_enter(v9);
      v10 = [(_INVocabularyConnection *)self->_assistantdConnection settingsService];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __34__INPreferences__siriLanguageCode__block_invoke;
      v14[3] = &unk_1E727FA68;
      v16 = &v17;
      v6 = v9;
      v15 = v6;
      [v10 fetchCurrentSiriLanguageCode:v14];

      v11 = dispatch_time(0, 5000000000);
      dispatch_group_wait(v6, v11);
      v8 = v15;
    }

    v3 = v18[5];
  }

  v12 = v3;
  _Block_object_dispose(&v17, 8);

  return v12;
}

void __34__INPreferences__siriLanguageCode__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)requestSiriAuthorization:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (+[_INSiriAuthorizationManager _isSiriAuthorizationRestricted])
    {
      v4[2](v4, 1);
    }

    else
    {
      [(INPreferences *)self assertThisProcessHasSiriEntitlement];
      v5 = [(_INVocabularyConnection *)self->_assistantdConnection settingsService];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __42__INPreferences_requestSiriAuthorization___block_invoke;
      v6[3] = &unk_1E727FA40;
      v7 = v4;
      [v5 requestSiriAuthorization:v6];
    }
  }
}

void __42__INPreferences_requestSiriAuthorization___block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__INPreferences_requestSiriAuthorization___block_invoke_2;
  v3[3] = &unk_1E727FA18;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (int64_t)_siriAuthorizationStatus
{
  if ([(INPreferences *)self _weAreRunningAsAnExtension])
  {
    return 3;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 2;
  if (+[_INSiriAuthorizationManager _isSiriAuthorizationRestricted])
  {
    v3 = 1;
  }

  else
  {
    [(INPreferences *)self assertThisProcessHasSiriEntitlement];
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = [(_INVocabularyConnection *)self->_assistantdConnection settingsService];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__INPreferences__siriAuthorizationStatus__block_invoke;
    v9[3] = &unk_1E727F9F0;
    v11 = &v12;
    v6 = v4;
    v10 = v6;
    [v5 fetchSiriAuthorization:v9];

    v7 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v6, v7);
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  return v3;
}

- (void)_THROW_EXCEPTION_FOR_PROCESS_MISSING_ENTITLEMENT_com_apple_developer_siri
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Use of the class %@ from an app requires the entitlement %@. Did you enable the Siri capability in your Xcode project?", self, @"com.apple.developer.siri"];
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v2);
}

- (void)_updateWithExtensionContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 inputItems];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) userInfo];
        v10 = [v9 objectForKey:@"Session Language"];

        if (v10)
        {
          [(INPreferences *)self _setCachedSiriLanguageCode:v10];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

- (INPreferences)init
{
  v3 = [objc_opt_class() sharedPreferences];

  return v3;
}

+ (void)_verifyProcessCanDonateIntentWithName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedPreferences];
  [v8 _verifyProcessCanDonateIntentWithName:v7 completion:v6];
}

+ (NSString)siriLanguageCode
{
  v2 = [a1 sharedPreferences];
  v3 = [v2 _siriLanguageCode];

  return v3;
}

+ (void)requestSiriAuthorization:(void *)handler
{
  v4 = handler;
  v5 = [a1 sharedPreferences];
  [v5 requestSiriAuthorization:v4];
}

+ (INSiriAuthorizationStatus)siriAuthorizationStatus
{
  v2 = [a1 sharedPreferences];
  v3 = [v2 _siriAuthorizationStatus];

  return v3;
}

@end