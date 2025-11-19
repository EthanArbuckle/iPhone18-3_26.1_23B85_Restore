@interface NSDictionary
@end

@implementation NSDictionary

void __41__NSDictionary_AvatarUI___avtui_deepCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copyWithZone:0];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end