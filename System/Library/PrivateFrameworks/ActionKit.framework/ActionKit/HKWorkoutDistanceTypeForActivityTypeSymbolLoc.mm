@interface HKWorkoutDistanceTypeForActivityTypeSymbolLoc
@end

@implementation HKWorkoutDistanceTypeForActivityTypeSymbolLoc

void *__get_HKWorkoutDistanceTypeForActivityTypeSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __HealthKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1BC28;
    v8 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = HealthKitLibraryCore_frameworkLibrary;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthKitLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFFitnessUIHelper.m" lineNumber:21 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "_HKWorkoutDistanceTypeForActivityType");
  *(*(a1[4] + 8) + 24) = result;
  get_HKWorkoutDistanceTypeForActivityTypeSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end