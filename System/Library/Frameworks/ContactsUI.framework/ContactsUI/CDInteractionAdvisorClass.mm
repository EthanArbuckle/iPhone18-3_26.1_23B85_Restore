@interface CDInteractionAdvisorClass
@end

@implementation CDInteractionAdvisorClass

void __get_CDInteractionAdvisorClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_CDInteractionAdvisor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_CDInteractionAdvisorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_CDInteractionAdvisorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNCoreDuet.h" lineNumber:29 description:{@"Unable to find class %s", "_CDInteractionAdvisor"}];

    __break(1u);
  }
}

@end