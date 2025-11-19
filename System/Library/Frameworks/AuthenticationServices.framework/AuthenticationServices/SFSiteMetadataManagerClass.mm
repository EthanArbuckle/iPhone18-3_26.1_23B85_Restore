@interface SFSiteMetadataManagerClass
@end

@implementation SFSiteMetadataManagerClass

Class __get_SFSiteMetadataManagerClass_block_invoke(uint64_t a1)
{
  MobileSafariLibrary();
  result = objc_getClass("_SFSiteMetadataManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SFSiteMetadataManagerClass_block_invoke_cold_1();
  }

  get_SFSiteMetadataManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_SFSiteMetadataManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SFSiteMetadataManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:39 description:{@"Unable to find class %s", "_SFSiteMetadataManager"}];

  __break(1u);
}

@end