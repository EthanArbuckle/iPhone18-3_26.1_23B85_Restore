@interface NTKGlobetrotterFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)unsafeDailySnapshotKey;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
@end

@implementation NTKGlobetrotterFace

- (int64_t)timeStyle
{
  v2 = [(NTKGlobetrotterFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] != 0;

  return v3;
}

- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKGlobetrotterFace *)self selectedOptionForCustomEditMode:a4 slot:v9];
  v13.receiver = self;
  v13.super_class = NTKGlobetrotterFace;
  [(NTKGlobetrotterFace *)&v13 selectOption:v8 forCustomEditMode:a4 slot:v9];

  if (a4 == 15 && (NTKEqualObjects() & 1) == 0)
  {
    v11 = v10;
    v12 = [v8 style];
    if (v12 != [v11 style])
    {
      [(NTKGlobetrotterFace *)self _notifyObserversFaceTimeStyleChanged];
    }
  }
}

- (id)unsafeDailySnapshotKey
{
  v8.receiver = self;
  v8.super_class = NTKGlobetrotterFace;
  v2 = [(NTKGlobetrotterFace *)&v8 unsafeDailySnapshotKey];
  if ([v2 isEqualToString:NTKSensitiveSnapshotKey])
  {
    v3 = v2;
  }

  else
  {
    v4 = +[NSTimeZone localTimeZone];
    v5 = [v4 name];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

    v3 = [v2 stringByAppendingString:v6];
  }

  return v3;
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
    v4 = [v3 supportsPDRCapability:4094027452] ^ 1;
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

- (id)_customEditModes
{
  v2 = [(NTKGlobetrotterFace *)self device];
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

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  switch(a3)
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

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 19)
  {
    CLKLocaleNumberSystemForFirstLanguage();
    v9 = NTKNumeralOptionFromCLKLocaleNumberSystem();
    v7 = [(NTKGlobetrotterFace *)self device];
    v8 = [NTKNumeralEditOption optionWithNumeral:v9 forDevice:v7];
    goto LABEL_5;
  }

  if (a3 == 15)
  {
    v7 = [(NTKGlobetrotterFace *)self device];
    v8 = [NTKDualTimeStyleEditOption optionWithStyle:0 forDevice:v7];
LABEL_5:
    v10 = v8;

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKGlobetrotterFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKGlobetrotterFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKGlobetrotterFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKGlobetrotterFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKGlobetrotterFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKGlobetrotterFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

@end