@interface NTKAtiumFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)editOptionThatHidesAllComplications;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKAtiumFace

- (id)_faceDescription
{
  v2 = [(NTKAtiumFace *)self _faceDescriptionKey];
  v3 = [NTKAtiumFaceBundle localizedStringForKey:v2 comment:v2];

  return v3;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCategory];
  v5 = _os_feature_enabled_impl();
  v6 = [v3 supportsPDRCapability:3669496134];

  return v4 == &dword_0 + 1 || (v5 & v6 & 1) == 0;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
  {
    v4 = [(NTKAtiumFace *)self device:15];
    v5 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKAtiumFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKAtiumFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKAtiumFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKAtiumFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKAtiumFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKAtiumFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)complicationConfiguration
{
  if (qword_11FF8 != -1)
  {
    sub_600C();
  }

  v3 = qword_11FF0;

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

- (id)editOptionThatHidesAllComplications
{
  v2 = [(NTKAtiumFace *)self device];
  v3 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:v2];

  return v3;
}

@end