@interface NSBundle
@end

@implementation NSBundle

uint64_t __59__NSBundle__QLUtilities__mainBundleSupportsBackgroundAudio__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 infoDictionary];
  v5 = [v1 objectForKey:*MEMORY[0x277D76798]];

  v2 = v5;
  if (v5)
  {
    v3 = [v5 containsObject:*MEMORY[0x277D76778]];
    v2 = v5;
  }

  else
  {
    v3 = 0;
  }

  mainBundleSupportsBackgroundAudio__appsSupportsBackgroundAudio = v3;

  return MEMORY[0x2821F96F8](v3, v2);
}

void __59__NSBundle__QLUtilities__mainBundleRequiresStatusBarHidden__block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 infoDictionary];
  v1 = [v0 objectForKey:*MEMORY[0x277D76F10]];
  mainBundleRequiresStatusBarHidden__appRequiresStatusBarHidden = [v1 BOOLValue];
}

void __56__NSBundle__QLUtilities__mainBundleSupportsPrintCommand__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v0 infoDictionary];

  v1 = [v3 objectForKey:*MEMORY[0x277D76728]];
  v2 = [v1 BOOLValue];
  if (v2)
  {
    LOBYTE(v2) = dyld_program_sdk_at_least();
  }

  mainBundleSupportsPrintCommand__supportsPrintCommand = v2;
}

@end