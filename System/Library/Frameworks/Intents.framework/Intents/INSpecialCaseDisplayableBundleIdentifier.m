@interface INSpecialCaseDisplayableBundleIdentifier
@end

@implementation INSpecialCaseDisplayableBundleIdentifier

void ___INSpecialCaseDisplayableBundleIdentifier_block_invoke_24(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:?];
  v8 = [v7 appState];
  v9 = [v8 isInstalled];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void ___INSpecialCaseDisplayableBundleIdentifier_block_invoke()
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23[0] = @"com.apple.InCallService";
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v20[0] = @"com.apple.mobilephone";
  v20[1] = @"com.apple.facetime";
  v21[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v22[0] = v2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v21[1] = v4;
  v19[0] = @"com.apple.mobilephone";
  v19[1] = @"com.apple.facetime";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v22[1] = v5;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v21[2] = v7;
  v18 = @"com.apple.facetime";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v22[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v9;
  v23[1] = @"com.apple.MobileSMS";
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v16 = v11;
  v17 = &unk_1F02DB9B8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v24[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v14 = _INSpecialCaseDisplayableBundleIdentifier_overrides;
  _INSpecialCaseDisplayableBundleIdentifier_overrides = v13;

  v15 = *MEMORY[0x1E69E9840];
}

@end