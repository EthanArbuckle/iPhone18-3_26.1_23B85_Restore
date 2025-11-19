@interface ABParameterLimits
+ (id)unlimited;
@end

@implementation ABParameterLimits

+ (id)unlimited
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ABParameterLimits_unlimited__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (unlimited_onceToken != -1)
  {
    dispatch_once(&unlimited_onceToken, block);
  }

  v1 = unlimited_unlimited;

  return v1;
}

void __30__ABParameterLimits_unlimited__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = ABParameterLimits;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      *(v1 + 8) = xmmword_23DE289C0;
    }
  }

  v2 = unlimited_unlimited;
  unlimited_unlimited = v1;
}

@end