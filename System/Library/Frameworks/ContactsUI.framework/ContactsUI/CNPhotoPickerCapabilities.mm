@interface CNPhotoPickerCapabilities
+ (BOOL)allowsAvatarFaceTracking;
+ (BOOL)allowsAvatarStoreAccess;
+ (BOOL)allowsAvatarUI;
+ (BOOL)allowsCameraAccess;
+ (BOOL)allowsPhotoLibraryAccess;
+ (BOOL)isCameraTCCEnabled;
@end

@implementation CNPhotoPickerCapabilities

+ (BOOL)allowsPhotoLibraryAccess
{
  if (allowsPhotoLibraryAccess_onceToken != -1)
  {
    dispatch_once(&allowsPhotoLibraryAccess_onceToken, &__block_literal_global_9_41974);
  }

  return allowsPhotoLibraryAccess_enabled;
}

void __53__CNPhotoPickerCapabilities_allowsPhotoLibraryAccess__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 objectForInfoDictionaryKey:@"NSPhotoLibraryUsageDescription"];

  v1 = v4;
  if (v4)
  {
    v2 = 1;
  }

  else
  {
    v3 = TCCAccessPreflight() == 0;
    v1 = 0;
    v2 = v3;
  }

  allowsPhotoLibraryAccess_enabled = v2;
}

+ (BOOL)allowsCameraAccess
{
  v2 = 1;
  v3 = [MEMORY[0x1E69DCAD0] isSourceTypeAvailable:1];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
    v2 = [*MEMORY[0x1E69DDA98] applicationState] != 2;
  }

  return v3 & v2 & [objc_opt_class() isCameraTCCEnabled];
}

+ (BOOL)isCameraTCCEnabled
{
  if (isCameraTCCEnabled_onceToken != -1)
  {
    dispatch_once(&isCameraTCCEnabled_onceToken, &__block_literal_global_41982);
  }

  return isCameraTCCEnabled_enabled;
}

uint64_t __47__CNPhotoPickerCapabilities_isCameraTCCEnabled__block_invoke()
{
  result = TCCAccessPreflight();
  isCameraTCCEnabled_enabled = result == 0;
  return result;
}

+ (BOOL)allowsAvatarFaceTracking
{
  v2 = [a1 allowsCameraAccess];
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v3 = getAVTUIIsFacetrackingSupportedSymbolLoc_ptr;
    v11 = getAVTUIIsFacetrackingSupportedSymbolLoc_ptr;
    if (!getAVTUIIsFacetrackingSupportedSymbolLoc_ptr)
    {
      v4 = AvatarUILibrary_41984();
      v9[3] = dlsym(v4, "AVTUIIsFacetrackingSupported");
      getAVTUIIsFacetrackingSupportedSymbolLoc_ptr = v9[3];
      v3 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (v3)
    {
      LOBYTE(v2) = v3();
    }

    else
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL CNSoftLinkAVTUIIsFacetrackingSupported(void)"];
      [v5 handleFailureInFunction:v6 file:@"CNUIAvatarSoftLink.h" lineNumber:31 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }

  return v2;
}

+ (BOOL)allowsAvatarStoreAccess
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 entitlementVerifier];
  v4 = *MEMORY[0x1E69964C8];
  v12 = 0;
  v5 = [v3 currentProcessHasBooleanEntitlement:v4 error:&v12];
  v6 = v12;

  if ((v5 & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPhotoPickerCapabilities.m", 35, 3, @"Photo Picker doesn't have access to avatar store %@", v7, v8, v9, v10, v6);
  }

  return v5;
}

+ (BOOL)allowsAvatarUI
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v2 = getAVTAvatarStoreClass_softClass_42004;
  v18 = getAVTAvatarStoreClass_softClass_42004;
  if (!getAVTAvatarStoreClass_softClass_42004)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getAVTAvatarStoreClass_block_invoke_42005;
    v13 = &unk_1E74E7518;
    v14 = &v15;
    __getAVTAvatarStoreClass_block_invoke_42005(&v10);
    v2 = v16[3];
  }

  v3 = v2;
  _Block_object_dispose(&v15, 8);
  if (!v2)
  {
    return 0;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = getAVTUIAreAvatarsSupportedSymbolLoc_ptr;
  v18 = getAVTUIAreAvatarsSupportedSymbolLoc_ptr;
  if (!getAVTUIAreAvatarsSupportedSymbolLoc_ptr)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getAVTUIAreAvatarsSupportedSymbolLoc_block_invoke;
    v13 = &unk_1E74E7518;
    v14 = &v15;
    v5 = AvatarUILibrary_41984();
    v6 = dlsym(v5, "AVTUIAreAvatarsSupported");
    *(v14[1] + 24) = v6;
    getAVTUIAreAvatarsSupportedSymbolLoc_ptr = *(v14[1] + 24);
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v4)
  {
    return v4();
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL CNSoftLinkAVTUIAreAvatarsSupported(void)"];
  [v8 handleFailureInFunction:v9 file:@"CNUIAvatarSoftLink.h" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

@end