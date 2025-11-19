@interface NTKSnowglobeFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKSnowglobeFace

- (id)_faceDescription
{
  v2 = [(NTKFace *)self device];
  v3 = [v2 supportsPDRCapability:3171091165];
  v4 = @"FACE_STYLE_SNOWGLOBE_DESCRIPTION";
  if (v3)
  {
    v4 = @"FACE_STYLE_SNOWGLOBE_DESCRIPTION_LIGHTHOUSE";
  }

  v5 = v4;

  v6 = [(NTKFaceBundle *)NTKSnowglobeFaceBundle localizedStringForKey:v5 comment:@"Description"];

  return v6;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 supportsPDRCapability:360081074] ^ 1;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKFace *)self device:a3];
  if (a3 == 15)
  {
    v6 = [NTKSnowglobeBackgroundEditOption optionWithSnowglobeBackground:0 forDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKSnowglobeFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKSnowglobeFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKSnowglobeFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKFace *)self device];
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
    v4 = [@"EDIT_MODE_LABEL_SNOWGLOBE_STYLE" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = [(NTKFaceBundle *)NTKSnowglobeFaceBundle localizedStringForKey:v4 comment:@"Snowglobe custom edit mode name"];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NTKSnowglobeFace;
    v5 = objc_msgSendSuper2(&v7, sel__localizedNameOverrideForCustomEditMode_forDevice_, a3, a4);
  }

  return v5;
}

@end