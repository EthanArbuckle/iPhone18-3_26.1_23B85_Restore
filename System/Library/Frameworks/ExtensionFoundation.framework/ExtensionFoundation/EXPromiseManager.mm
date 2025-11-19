@interface EXPromiseManager
@end

@implementation EXPromiseManager

uint64_t __35___EXPromiseManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __78___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:9 userInfo:MEMORY[0x1E695E0F8]];
    (*(v2 + 16))(v2, 0, v5);
  }
}

@end