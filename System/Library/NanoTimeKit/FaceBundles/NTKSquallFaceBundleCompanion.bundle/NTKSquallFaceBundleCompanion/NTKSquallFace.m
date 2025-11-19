@interface NTKSquallFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKSquallFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = _os_feature_enabled_impl();
  if ([v3 collectionType] == &dword_4 + 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = NTKShowHardwareSpecificFaces() ^ 1;
  }

  if ([v3 deviceCategory] != &dword_4)
  {
    if (!(([v3 deviceCategory] != &dword_4 + 2 || (v4 & 1) == 0) | v5 & 1))
    {
      goto LABEL_6;
    }

LABEL_8:
    LOBYTE(v6) = 1;
    goto LABEL_9;
  }

  if (v5 & 1 | ((v4 & 1) == 0))
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = [v3 supportsPDRCapability:3669496134] ^ 1;
LABEL_9:

  return v6;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKSquallFace;
  v3 = [(NTKSquallFace *)&v5 _localizedNameForComplicationSlot:a3];

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10)
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
  v5 = [(NTKSquallFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKSquallFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKSquallFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKSquallFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKSquallFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKSquallFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NTKSquallFace;
  v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);

  return v4;
}

- (id)_faceDescription
{
  v2 = [(NTKSquallFace *)self _faceDescriptionKey];
  v3 = [NTKSquallFaceBundle localizedStringForKey:v2 comment:&stru_105B8];

  return v3;
}

@end