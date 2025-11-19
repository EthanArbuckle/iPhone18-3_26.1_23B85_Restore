@interface AXAlternativeVoices
+ (id)sharedInstance;
@end

@implementation AXAlternativeVoices

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[AXAlternativeVoices sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __37__AXAlternativeVoices_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXAlternativeVoices);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end