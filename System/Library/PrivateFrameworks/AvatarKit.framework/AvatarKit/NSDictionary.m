@interface NSDictionary
@end

@implementation NSDictionary

void __60__NSDictionary_AVTSecureDecoding__avt_mutableContainersCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 avt_mutableContainersCopy];

    v5 = v6;
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
}

@end