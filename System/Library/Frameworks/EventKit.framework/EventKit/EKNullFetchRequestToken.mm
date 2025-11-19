@interface EKNullFetchRequestToken
+ (id)sharedToken;
@end

@implementation EKNullFetchRequestToken

+ (id)sharedToken
{
  if (sharedToken_onceToken != -1)
  {
    +[EKNullFetchRequestToken sharedToken];
  }

  v3 = sharedToken_sharedToken;

  return v3;
}

uint64_t __38__EKNullFetchRequestToken_sharedToken__block_invoke()
{
  sharedToken_sharedToken = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end