@interface DPNumericDataRecorderClass
@end

@implementation DPNumericDataRecorderClass

double __get_DPNumericDataRecorderClass_block_invoke(uint64_t a1)
{
  DifferentialPrivacyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DPNumericDataRecorder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DPNumericDataRecorderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DPNumericDataRecorderClass_block_invoke_cold_1();
    *&result = [(AVTFunCamAvatarPickerCollectionViewLayout *)v3 engagementInsetsForCollectionViewBounds:v4, v5];
  }

  return result;
}

@end