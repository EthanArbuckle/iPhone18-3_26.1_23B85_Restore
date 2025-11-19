@interface ProfileRegistryHelper
+ (id)getFileNames:(int64_t)a3;
@end

@implementation ProfileRegistryHelper

+ (id)getFileNames:(int64_t)a3
{
  IsInternalBuild = Phase::Controller::DeviceInfo::IsInternalBuild(a1);
  if (IsInternalBuild & 0x100) != 0 && (IsInternalBuild)
  {
    v5 = &unk_284D4DA30;
    v6 = &unk_284D4DA18;
  }

  else
  {
    v5 = &unk_284D4DA60;
    v6 = &unk_284D4DA48;
  }

  if (a3 == 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end