@interface HKMedicalIDDataClass
@end

@implementation HKMedicalIDDataClass

Class __get_HKMedicalIDDataClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __HealthUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E40E0;
    v8 = 0;
    HealthUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ABHealthKit.h" lineNumber:39 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("_HKMedicalIDData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_HKMedicalIDDataClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ABHealthKit.h" lineNumber:40 description:{@"Unable to find class %s", "_HKMedicalIDData"}];

LABEL_10:
    __break(1u);
  }

  get_HKMedicalIDDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end