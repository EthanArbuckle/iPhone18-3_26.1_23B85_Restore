@interface NTKKuiperFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4;
@end

@implementation NTKKuiperFace

- (id)_faceDescription
{
  v2 = [(NTKKuiperFace *)self device];
  v3 = [v2 supportsPDRCapability:3171091165];
  v4 = @"FACE_STYLE_KUIPER_DESCRIPTION_COMPANION";
  if (v3)
  {
    v4 = @"FACE_STYLE_KUIPER_DESCRIPTION_LIGHTHOUSE_COMPANION";
  }

  v5 = v4;

  v6 = [NTKKuiperFaceBundle localizedStringForKey:v5 comment:@"description"];

  return v6;
}

+ (id)complicationConfiguration
{
  if (qword_16DD8 != -1)
  {
    sub_79CC();
  }

  v3 = qword_16DD0;

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
  if (a3 == 15)
  {
    v7 = [(NTKKuiperFace *)self device];
    v8 = [NTKKuiperDialEditOption optionWithKuiperDial:4 forDevice:v7];
    goto LABEL_5;
  }

  if (a3 == 11)
  {
    v7 = [(NTKKuiperFace *)self device];
    v8 = [NTKKuiperDensityEditOption optionWithKuiperDensity:0 forDevice:v7];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKKuiperFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKKuiperFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKKuiperFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKKuiperFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKKuiperFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKKuiperFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 11)
  {
    v4 = off_102C0;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 15)
  {
    v4 = &off_102C8;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 11)
  {
    v7 = @"EDIT_MODE_LABEL_KUIPER_STYLE";
LABEL_5:
    v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v9 = [NTKKuiperFaceBundle localizedStringForKey:v8 comment:@"edit mode"];
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a3 == 15)
  {
    v7 = @"EDIT_MODE_LABEL_KUIPER_DIAL";
    goto LABEL_5;
  }

  v8 = 0;
LABEL_8:
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___NTKKuiperFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
LABEL_9:

  return v9;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCategory] == &dword_0 + 1;
  v5 = [v3 supportsPDRCapability:360081074];

  return v4 || (v5 & 1) == 0;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4
{
  if (a4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = **(&off_10768 + a4);
  }

  v11 = v5;
  v6 = [NTKPigmentEditOption pigmentNamed:v5];
  [(NTKKuiperFace *)self selectOption:v6 forCustomEditMode:10 slot:0];
  v7 = [(NTKKuiperFace *)self device];
  v8 = [NTKKuiperDialEditOption optionWithKuiperDial:0 forDevice:v7];

  [(NTKKuiperFace *)self selectOption:v8 forCustomEditMode:15 slot:0];
  v9 = [NTKKuiperTypographicSizeProvider keyForTypographicStyleFraction:0.0];
  [(NTKKuiperFace *)self setCustomData:v9 forKey:@"typographicStyleFraction"];
  v10 = [NTKComplication anyComplicationOfType:0];
  [(NTKKuiperFace *)self setComplication:v10 forSlot:NTKComplicationSlotTopLeft];
  [(NTKKuiperFace *)self setComplication:v10 forSlot:NTKComplicationSlotTopRight];
  [(NTKKuiperFace *)self setComplication:v10 forSlot:NTKComplicationSlotBottomLeft];
  [(NTKKuiperFace *)self setComplication:v10 forSlot:NTKComplicationSlotBottomRight];
}

@end