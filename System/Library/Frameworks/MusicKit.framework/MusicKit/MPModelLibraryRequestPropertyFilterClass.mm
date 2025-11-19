@interface MPModelLibraryRequestPropertyFilterClass
@end

@implementation MPModelLibraryRequestPropertyFilterClass

Class __get_MPModelLibraryRequestPropertyFilterClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_26)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_26;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27822A1B8;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_26 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_26)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_MPModelLibraryRequestPropertyFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_MPModelLibraryRequestPropertyFilterClass_block_invoke_cold_1();
  }

  get_MPModelLibraryRequestPropertyFilterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

@end