@interface HMAccessory
@end

@implementation HMAccessory

uint64_t __64__HMAccessory_Announce__an_announceSettingFromAccessorySettings__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 keyPath];
  v3 = [v2 isEqualToString:@"root.announce"];

  return v3;
}

uint64_t __64__HMAccessory_Announce__an_announceSettingFromAccessorySettings__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 keyPath];
  v3 = [v2 isEqualToString:@"root.announce.enabled"];

  return v3;
}

@end