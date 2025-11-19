@interface SWCollaborationMetadataClass
@end

@implementation SWCollaborationMetadataClass

Class __get_SWCollaborationMetadataClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!SharedWithYouLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __SharedWithYouLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A35960;
    v9 = 0;
    SharedWithYouLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SharedWithYouLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWithYouLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPMetadata.m" lineNumber:48 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("_SWCollaborationMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SWCollaborationMetadataClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPMetadata.m" lineNumber:49 description:{@"Unable to find class %s", "_SWCollaborationMetadata"}];

LABEL_10:
    __break(1u);
  }

  get_SWCollaborationMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end