@interface ANEDeviceInfoClass
@end

@implementation ANEDeviceInfoClass

Class __get_ANEDeviceInfoClass_block_invoke(uint64_t a1)
{
  if (!AppleNeuralEngineLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("_ANEDeviceInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_ANEDeviceInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __get_ANEDeviceInfoClass_block_invoke_cold_1();
    return __getMGGetBoolAnswerSymbolLoc_block_invoke(v4);
  }

  return result;
}

@end