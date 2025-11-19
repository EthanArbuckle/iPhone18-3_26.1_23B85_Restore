@interface NTKSharkFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)unsafeDailySnapshotKey;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKSharkFace

- (id)unsafeDailySnapshotKey
{
  v6.receiver = self;
  v6.super_class = NTKSharkFace;
  v2 = [(NTKSharkFace *)&v6 unsafeDailySnapshotKey];
  if ([v2 isEqualToString:NTKSensitiveSnapshotKey])
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 stringByAppendingString:@".shark"];
  }

  v4 = v3;

  return v4;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 supportsPDRCapability:3588072423] ^ 1;
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

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  if ([a3 isEqualToString:{NTKComplicationSlotBottomLeft, a4}])
  {
    v4 = [NTKComplication timerComplicationWithDuration:180.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 10)
  {
    if ([(NTKSharkFace *)self deviceSupportsPigmentEditOption])
    {
      v7 = [(NTKSharkFace *)self pigmentOptionProvider];
      [v7 defaultColorOptionForSlot:v6];
    }

    else
    {
      v7 = [(NTKSharkFace *)self device];
      [(NTKAlaskanColorEditOption *)NTKSharkColorEditOption optionWithColor:3003 forDevice:v7];
    }
    v8 = ;
  }

  else
  {
    if (a3 != 11)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v7 = [(NTKSharkFace *)self device];
    v8 = [NTKSharkTimescaleEditOption optionWithTimescale:1 forDevice:v7];
  }

  v9 = v8;

LABEL_10:

  return v9;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 11 || a3 == 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKSharkFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKSharkFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKSharkFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKSharkFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKSharkFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKSharkFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    v4 = [NTKSharkFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_SHARK_TIMESCALE" comment:@"TIMESCALE"];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NTKSharkFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v4;
}

@end