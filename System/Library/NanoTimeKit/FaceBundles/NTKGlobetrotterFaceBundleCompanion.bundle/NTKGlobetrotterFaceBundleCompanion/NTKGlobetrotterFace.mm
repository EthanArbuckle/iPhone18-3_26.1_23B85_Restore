@interface NTKGlobetrotterFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)unsafeDailySnapshotKey;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKGlobetrotterFace

- (int64_t)timeStyle
{
  v2 = [(NTKGlobetrotterFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] != 0;

  return v3;
}

- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  v10 = [(NTKGlobetrotterFace *)self selectedOptionForCustomEditMode:mode slot:slotCopy];
  v13.receiver = self;
  v13.super_class = NTKGlobetrotterFace;
  [(NTKGlobetrotterFace *)&v13 selectOption:optionCopy forCustomEditMode:mode slot:slotCopy];

  if (mode == 15 && (NTKEqualObjects() & 1) == 0)
  {
    v11 = v10;
    style = [optionCopy style];
    if (style != [v11 style])
    {
      [(NTKGlobetrotterFace *)self _notifyObserversFaceTimeStyleChanged];
    }
  }
}

- (id)unsafeDailySnapshotKey
{
  v8.receiver = self;
  v8.super_class = NTKGlobetrotterFace;
  unsafeDailySnapshotKey = [(NTKGlobetrotterFace *)&v8 unsafeDailySnapshotKey];
  if ([unsafeDailySnapshotKey isEqualToString:NTKSensitiveSnapshotKey])
  {
    v3 = unsafeDailySnapshotKey;
  }

  else
  {
    v4 = +[NSTimeZone localTimeZone];
    name = [v4 name];
    v6 = [name stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

    v3 = [unsafeDailySnapshotKey stringByAppendingString:v6];
  }

  return v3;
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
    v4 = [deviceCopy supportsPDRCapability:4094027452] ^ 1;
  }

  return v4;
}

+ (id)complicationConfiguration
{
  if (qword_15C30 != -1)
  {
    sub_92F8();
  }

  v3 = qword_15C28;

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

- (id)_customEditModes
{
  device = [(NTKGlobetrotterFace *)self device];
  v3 = NTKShowIndicScriptNumerals();

  if (v3)
  {
    return &off_11298;
  }

  else
  {
    return &off_112B0;
  }
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  switch(mode)
  {
    case 10:
      v4 = NTKPigmentEditOption_ptr;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 15:
      v4 = NTKDualTimeStyleEditOption_ptr;
      goto LABEL_7;
    case 19:
      v4 = NTKNumeralEditOption_ptr;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 19)
  {
    CLKLocaleNumberSystemForFirstLanguage();
    v9 = NTKNumeralOptionFromCLKLocaleNumberSystem();
    device = [(NTKGlobetrotterFace *)self device];
    v8 = [NTKNumeralEditOption optionWithNumeral:v9 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 15)
  {
    device = [(NTKGlobetrotterFace *)self device];
    v8 = [NTKDualTimeStyleEditOption optionWithStyle:0 forDevice:device];
LABEL_5:
    v10 = v8;

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKGlobetrotterFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKGlobetrotterFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKGlobetrotterFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKGlobetrotterFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKGlobetrotterFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKGlobetrotterFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

@end