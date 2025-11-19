@interface SWCollaborationMetadataClass
@end

@implementation SWCollaborationMetadataClass

void __get_SWCollaborationMetadataClass_block_invoke(uint64_t a1)
{
  SharedWithYouCoreLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_SWCollaborationMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_SWCollaborationMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SWCollaborationMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageComposeViewController.m" lineNumber:55 description:{@"Unable to find class %s", "_SWCollaborationMetadata"}];

    __break(1u);
  }
}

@end