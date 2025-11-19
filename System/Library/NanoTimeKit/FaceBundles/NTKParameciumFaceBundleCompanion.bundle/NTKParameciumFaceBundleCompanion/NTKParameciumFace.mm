@interface NTKParameciumFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)complicationSlotsHiddenByEditOption:(id)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKParameciumFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = _os_feature_enabled_impl();
  v5 = [v3 supportsPDRCapability:2080325187];
  if ([v3 sizeClass] && ((objc_msgSend(v3, "sizeClass") != &dword_0 + 1) & v5 & v4) == 1)
  {
    v6 = NTKGizmoOrCompanionAreRussian();
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)complicationConfiguration
{
  if (qword_1A3E8 != -1)
  {
    sub_8E9C();
  }

  v3 = qword_1A3E0;

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

- (id)complicationSlotsHiddenByEditOption:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 style] == &dword_0 + 2)
  {
    v9[0] = NTKComplicationSlotTopLeft;
    v9[1] = NTKComplicationSlotTopRight;
    v9[2] = NTKComplicationSlotBottomLeft;
    v9[3] = NTKComplicationSlotBottomRight;
    v5 = [NSArray arrayWithObjects:v9 count:4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKParameciumFace;
    v5 = [(NTKParameciumFace *)&v8 complicationSlotsHiddenByEditOption:v4];
  }

  v6 = v5;

  return v6;
}

- (id)_faceDescription
{
  v2 = [(NTKParameciumFace *)self _faceDescriptionKey];
  v3 = [NTKParameciumFaceBundle localizedStringForKey:v2 comment:@"Paramecium face description"];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKParameciumFace *)self device:a3];
  if (a3 == 12)
  {
    v6 = [NTKParameciumStyleEditOption optionWithParameciumStyle:2 forDevice:v5];
    goto LABEL_5;
  }

  if (a3 == 15)
  {
    v6 = [NTKParameciumBackgroundEditOption optionWithParameciumBackground:0 forDevice:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKParameciumFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKParameciumFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKParameciumFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKParameciumFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKParameciumFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKParameciumFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 15)
  {
    v4 = off_142F8;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 12)
  {
    v4 = &off_14300;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 15:
      v7 = @"EDIT_MODE_LABEL_PARAMECIUM_STYLE";
      goto LABEL_7;
    case 14:
      v7 = @"EDIT_MODE_LABEL_PARAMECIUM_DIAL";
      goto LABEL_7;
    case 12:
      v7 = @"EDIT_MODE_LABEL_PARAMECIUM_CONTENT";
LABEL_7:
      v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
      v9 = [NTKParameciumFaceBundle localizedStringForKey:v8 comment:@"Paramecium custom edit mode name"];

      goto LABEL_9;
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___NTKParameciumFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
LABEL_9:

  return v9;
}

@end