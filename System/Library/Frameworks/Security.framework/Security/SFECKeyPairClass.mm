@interface SFECKeyPairClass
@end

@implementation SFECKeyPairClass

Class __get_SFECKeyPairClass_block_invoke(uint64_t a1)
{
  v7[9] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!SecurityFoundationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __SecurityFoundationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/SecurityFoundation.framework/SecurityFoundation";
    SecurityFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SecurityFoundationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SecurityFoundationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"SOSFullPeerInfo.m" lineNumber:68 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("_SFECKeyPair");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SFECKeyPairClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"SOSFullPeerInfo.m" lineNumber:72 description:{@"Unable to find class %s", "_SFECKeyPair"}];

LABEL_10:
    __break(1u);
  }

  get_SFECKeyPairClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end