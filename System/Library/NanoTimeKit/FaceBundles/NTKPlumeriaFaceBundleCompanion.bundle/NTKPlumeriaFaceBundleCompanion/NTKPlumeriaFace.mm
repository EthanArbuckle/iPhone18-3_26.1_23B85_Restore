@interface NTKPlumeriaFace
+ (BOOL)isRestrictedForDevice:(id)a3;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKPlumeriaFace

- (id)_faceDescription
{
  v2 = [(NTKPlumeriaFace *)self _faceDescriptionKey];
  v3 = [NTKPlumeriaFaceBundle localizedStringForKey:v2 comment:@"FACE_STYLE_PLUMERIA_DESCRIPTION"];

  return v3;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = NTKGizmoOrCompanionAreRussian();
  v5 = [v3 deviceCategory];
  v6 = [v3 supportsPDRCapability:2851856547];

  v7 = _os_feature_enabled_impl();
  if (v5 == &dword_0 + 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4;
  }

  return v8 & 1 | ((v7 & v6 & 1) == 0);
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKPlumeriaFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKPlumeriaFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKPlumeriaFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKPlumeriaFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKPlumeriaFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKPlumeriaFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

@end