@interface PHASEVolumeCommandForVolumeCategoryMode
- (id)description;
- (id)initInternalWithCategory:(id)category mode:(id)mode;
@end

@implementation PHASEVolumeCommandForVolumeCategoryMode

- (id)initInternalWithCategory:(id)category mode:(id)mode
{
  categoryCopy = category;
  modeCopy = mode;
  v12.receiver = self;
  v12.super_class = PHASEVolumeCommandForVolumeCategoryMode;
  initInternal = [(PHASEVolumeCommand *)&v12 initInternal];
  v10 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 1, category);
    objc_storeStrong(v10 + 2, mode);
  }

  return v10;
}

- (id)description
{
  p_isa = &self->super.super.isa;
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSString *)self->_volumeCategory description];
  uTF8String = [v4 UTF8String];
  v6 = [p_isa[2] description];
  uTF8String2 = [v6 UTF8String];
  v8 = p_isa[3];
  if (v8)
  {
    p_isa = [p_isa[3] description];
    uTF8String3 = [p_isa UTF8String];
  }

  else
  {
    uTF8String3 = "-";
  }

  v10 = [v3 stringWithFormat:@"VolumeCommandForVolumeCategoryMode: category/mode [%s, %s], volume %s", uTF8String, uTF8String2, uTF8String3];
  if (v8)
  {
  }

  return v10;
}

@end