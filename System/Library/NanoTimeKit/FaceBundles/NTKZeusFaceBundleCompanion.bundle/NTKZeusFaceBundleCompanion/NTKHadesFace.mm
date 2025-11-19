@interface NTKHadesFace
+ (BOOL)isRestrictedForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKHadesFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1 || objc_msgSend(v3, "deviceCategory") == &dword_4 || objc_msgSend(v3, "deviceCategory") == &dword_4 + 2 || !objc_msgSend(v3, "supportsPDRCapability:", 4094027452))
  {
    LOBYTE(v4) = 1;
  }

  else if ([v3 collectionType] == &dword_4 + 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = NTKShowHardwareSpecificFaces() ^ 1;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
  {
    v4 = [(NTKHadesFace *)self device:15];
    v5 = [NTKHadesRotationEditOption optionWithRotation:0 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKHadesFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKHadesFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKHadesFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKHadesFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKHadesFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKHadesFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
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

- (id)_faceDescription
{
  v2 = [(NTKHadesFace *)self _faceDescriptionKey];
  v3 = [NTKHadesFaceBundle localizedStringForKey:v2 comment:&stru_45510];

  return v3;
}

@end