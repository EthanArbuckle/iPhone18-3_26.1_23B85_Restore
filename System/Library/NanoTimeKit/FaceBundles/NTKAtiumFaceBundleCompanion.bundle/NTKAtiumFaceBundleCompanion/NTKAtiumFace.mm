@interface NTKAtiumFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)editOptionThatHidesAllComplications;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKAtiumFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKAtiumFace *)self _faceDescriptionKey];
  v3 = [NTKAtiumFaceBundle localizedStringForKey:_faceDescriptionKey comment:_faceDescriptionKey];

  return v3;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  deviceCategory = [deviceCopy deviceCategory];
  v5 = _os_feature_enabled_impl();
  v6 = [deviceCopy supportsPDRCapability:3669496134];

  return deviceCategory == &dword_0 + 1 || (v5 & v6 & 1) == 0;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
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

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKAtiumFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKAtiumFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKAtiumFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKAtiumFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKAtiumFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKAtiumFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 15)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", device}];
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

- (id)editOptionThatHidesAllComplications
{
  device = [(NTKAtiumFace *)self device];
  v3 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:device];

  return v3;
}

@end