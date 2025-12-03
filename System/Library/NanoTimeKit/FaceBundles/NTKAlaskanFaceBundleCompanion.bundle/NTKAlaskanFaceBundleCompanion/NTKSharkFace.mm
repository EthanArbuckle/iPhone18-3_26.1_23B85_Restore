@interface NTKSharkFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)unsafeDailySnapshotKey;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSharkFace

- (id)unsafeDailySnapshotKey
{
  v6.receiver = self;
  v6.super_class = NTKSharkFace;
  unsafeDailySnapshotKey = [(NTKSharkFace *)&v6 unsafeDailySnapshotKey];
  if ([unsafeDailySnapshotKey isEqualToString:NTKSensitiveSnapshotKey])
  {
    v3 = unsafeDailySnapshotKey;
  }

  else
  {
    v3 = [unsafeDailySnapshotKey stringByAppendingString:@".shark"];
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
  if (qword_46B50 != -1)
  {
    sub_220C4();
  }

  v3 = qword_46B48;

  return v3;
}

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotBottomLeft, device}])
  {
    v4 = [NTKComplication timerComplicationWithDuration:180.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    if ([(NTKSharkFace *)self deviceSupportsPigmentEditOption])
    {
      pigmentOptionProvider = [(NTKSharkFace *)self pigmentOptionProvider];
      [pigmentOptionProvider defaultColorOptionForSlot:slotCopy];
    }

    else
    {
      pigmentOptionProvider = [(NTKSharkFace *)self device];
      [(NTKAlaskanColorEditOption *)NTKSharkColorEditOption optionWithColor:3003 forDevice:pigmentOptionProvider];
    }
    v8 = ;
  }

  else
  {
    if (mode != 11)
    {
      v9 = 0;
      goto LABEL_10;
    }

    pigmentOptionProvider = [(NTKSharkFace *)self device];
    v8 = [NTKSharkTimescaleEditOption optionWithTimescale:1 forDevice:pigmentOptionProvider];
  }

  v9 = v8;

LABEL_10:

  return v9;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 11 || mode == 10)
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
  slot = [(NTKSharkFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSharkFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSharkFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSharkFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSharkFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSharkFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 11)
  {
    v4 = [NTKSharkFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_SHARK_TIMESCALE" comment:@"TIMESCALE"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NTKSharkFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v4;
}

@end