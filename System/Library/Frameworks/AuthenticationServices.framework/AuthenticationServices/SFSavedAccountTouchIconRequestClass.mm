@interface SFSavedAccountTouchIconRequestClass
@end

@implementation SFSavedAccountTouchIconRequestClass

Class __get_SFSavedAccountTouchIconRequestClass_block_invoke(uint64_t a1)
{
  MobileSafariLibrary();
  result = objc_getClass("_SFSavedAccountTouchIconRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SFSavedAccountTouchIconRequestClass_block_invoke_cold_1();
  }

  get_SFSavedAccountTouchIconRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_SFSavedAccountTouchIconRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SFSavedAccountTouchIconRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:40 description:{@"Unable to find class %s", "_SFSavedAccountTouchIconRequest"}];

  __break(1u);
}

@end