@interface SWPendingCollaborationClass
@end

@implementation SWPendingCollaborationClass

void __get_SWPendingCollaborationClass_block_invoke(uint64_t a1)
{
  SharedWithYouCoreLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_SWPendingCollaboration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_SWPendingCollaborationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SWPendingCollaborationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageComposeViewController.m" lineNumber:54 description:{@"Unable to find class %s", "_SWPendingCollaboration"}];

    __break(1u);
  }
}

@end