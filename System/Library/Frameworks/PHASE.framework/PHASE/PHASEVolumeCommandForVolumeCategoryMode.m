@interface PHASEVolumeCommandForVolumeCategoryMode
- (id)description;
- (id)initInternalWithCategory:(id)a3 mode:(id)a4;
@end

@implementation PHASEVolumeCommandForVolumeCategoryMode

- (id)initInternalWithCategory:(id)a3 mode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PHASEVolumeCommandForVolumeCategoryMode;
  v9 = [(PHASEVolumeCommand *)&v12 initInternal];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(v10 + 2, a4);
  }

  return v10;
}

- (id)description
{
  p_isa = &self->super.super.isa;
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSString *)self->_volumeCategory description];
  v5 = [v4 UTF8String];
  v6 = [p_isa[2] description];
  v7 = [v6 UTF8String];
  v8 = p_isa[3];
  if (v8)
  {
    p_isa = [p_isa[3] description];
    v9 = [p_isa UTF8String];
  }

  else
  {
    v9 = "-";
  }

  v10 = [v3 stringWithFormat:@"VolumeCommandForVolumeCategoryMode: category/mode [%s, %s], volume %s", v5, v7, v9];
  if (v8)
  {
  }

  return v10;
}

@end