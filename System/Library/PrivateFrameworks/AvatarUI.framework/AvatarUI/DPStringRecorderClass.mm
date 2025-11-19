@interface DPStringRecorderClass
@end

@implementation DPStringRecorderClass

void __get_DPStringRecorderClass_block_invoke(uint64_t a1)
{
  DifferentialPrivacyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DPStringRecorder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DPStringRecorderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_DPStringRecorderClass_block_invoke_cold_1();
    DifferentialPrivacyLibrary();
  }
}

@end