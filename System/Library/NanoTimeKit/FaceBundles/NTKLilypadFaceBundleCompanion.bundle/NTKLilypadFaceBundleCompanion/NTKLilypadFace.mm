@interface NTKLilypadFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)argon_embeddedOverlayAssetURL;
- (int64_t)argon_overlayAssetType;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKLilypadFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 supportsPDRCapability:277329136];
  if ([v3 sizeClass] && ((objc_msgSend(v3, "sizeClass") != &dword_0 + 1) & v4) == 1)
  {
    v5 = NTKGizmoOrCompanionAreRussian();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_faceDescription
{
  v2 = [(NTKLilypadFace *)self _faceDescriptionKey];
  v3 = [NTKLilypadFaceBundle localizedStringForKey:v2 comment:@"Lilypad face description"];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKLilypadFace *)self device:a3];
  if (a3 == 15)
  {
    v6 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:1 forDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKLilypadFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKLilypadFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKLilypadFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKLilypadFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKLilypadFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKLilypadFace *)self device];
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

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    v4 = [@"EDIT_MODE_LABEL_LILYPAD_STYLE" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = [NTKLilypadFaceBundle localizedStringForKey:v4 comment:@"Lilypad custom edit mode name"];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NTKLilypadFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v5;
}

- (int64_t)argon_overlayAssetType
{
  v2 = [(NTKLilypadFace *)self device];
  [v2 sizeClass];

  return 1;
}

- (id)argon_embeddedOverlayAssetURL
{
  v2 = [(NTKLilypadFace *)self device];
  v3 = [v2 sizeClass];

  if ((v3 - 2) > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = off_C3D8[(v3 - 2)];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:v4 withExtension:@"pdf"];
  }

  return v6;
}

@end