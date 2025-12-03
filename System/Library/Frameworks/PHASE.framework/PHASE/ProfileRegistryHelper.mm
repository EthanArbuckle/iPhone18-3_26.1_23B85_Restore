@interface ProfileRegistryHelper
+ (id)getFileNames:(int64_t)names;
@end

@implementation ProfileRegistryHelper

+ (id)getFileNames:(int64_t)names
{
  IsInternalBuild = Phase::Controller::DeviceInfo::IsInternalBuild(self);
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

  if (names == 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end