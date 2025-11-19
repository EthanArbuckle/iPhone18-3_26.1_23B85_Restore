@interface SWCollaborationShareOptionsClass
@end

@implementation SWCollaborationShareOptionsClass

void __get_SWCollaborationShareOptionsClass_block_invoke(uint64_t a1)
{
  SharedWithYouCoreLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_SWCollaborationShareOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_SWCollaborationShareOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SWCollaborationShareOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageComposeViewController.m" lineNumber:56 description:{@"Unable to find class %s", "_SWCollaborationShareOptions"}];

    __break(1u);
  }
}

@end