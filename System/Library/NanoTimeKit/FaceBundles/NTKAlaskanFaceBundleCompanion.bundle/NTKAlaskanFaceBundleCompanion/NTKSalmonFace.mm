@interface NTKSalmonFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)unsafeDailySnapshotKey;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSalmonFace

- (id)unsafeDailySnapshotKey
{
  v6.receiver = self;
  v6.super_class = NTKSalmonFace;
  unsafeDailySnapshotKey = [(NTKSalmonFace *)&v6 unsafeDailySnapshotKey];
  if ([unsafeDailySnapshotKey isEqualToString:NTKSensitiveSnapshotKey])
  {
    v3 = unsafeDailySnapshotKey;
  }

  else
  {
    v3 = [unsafeDailySnapshotKey stringByAppendingString:@".salmon"];
  }

  v4 = v3;

  return v4;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [deviceCopy supportsPDRCapability:3588072423] ^ 1;
  }

  return v4;
}

+ (id)complicationConfiguration
{
  if (qword_46E48 != -1)
  {
    sub_220D8();
  }

  v3 = qword_46E40;

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v4 = [(NTKSalmonFace *)self device:10];
    v5 = [NTKSalmonColorEditOption optionWithColor:3000 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSalmonFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSalmonFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSalmonFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSalmonFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSalmonFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSalmonFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

@end