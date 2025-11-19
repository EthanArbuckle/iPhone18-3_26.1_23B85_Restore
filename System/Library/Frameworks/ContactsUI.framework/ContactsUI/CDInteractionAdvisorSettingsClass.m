@interface CDInteractionAdvisorSettingsClass
@end

@implementation CDInteractionAdvisorSettingsClass

void __get_CDInteractionAdvisorSettingsClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_CDInteractionAdvisorSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_CDInteractionAdvisorSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_CDInteractionAdvisorSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNCoreDuet.h" lineNumber:30 description:{@"Unable to find class %s", "_CDInteractionAdvisorSettings"}];

    __break(1u);
  }
}

@end