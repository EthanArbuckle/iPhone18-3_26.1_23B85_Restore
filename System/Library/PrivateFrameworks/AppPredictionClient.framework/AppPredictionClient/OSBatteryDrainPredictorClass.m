@interface OSBatteryDrainPredictorClass
@end

@implementation OSBatteryDrainPredictorClass

Class __get_OSBatteryDrainPredictorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!OSIntelligenceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __OSIntelligenceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80C4298;
    v5 = 0;
    OSIntelligenceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!OSIntelligenceLibraryCore_frameworkLibrary)
  {
    __get_OSBatteryDrainPredictorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("_OSBatteryDrainPredictor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_OSBatteryDrainPredictorClass_block_invoke_cold_1();
  }

  get_OSBatteryDrainPredictorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_OSBatteryDrainPredictorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_OSBatteryDrainPredictorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXBatteryDrainBehavior.m" lineNumber:20 description:{@"Unable to find class %s", "_OSBatteryDrainPredictor"}];

  __break(1u);
}

void __get_OSBatteryDrainPredictorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *OSIntelligenceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXBatteryDrainBehavior.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

@end