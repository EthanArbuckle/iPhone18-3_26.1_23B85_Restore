@interface NTKDigitalModularFaceBundle
+ (id)complicationTypesBySlot;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
@end

@implementation NTKDigitalModularFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKDigitalModularFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryTitleForDevice:(id)a3
{
  v3 = a3;
  v4 = _os_feature_enabled_impl();
  v5 = NTKShowBlueRidgeUI();

  if (!v5 || v4)
  {
    v7 = [NTKDigitalModularFaceBundle localizedStringForKey:@"FACE_STYLE_DIGITAL_MODULAR_IN_TITLE_CASE" comment:@"Modular"];
    v8 = v7;
    if (v4)
    {
      v9 = [NSString stringWithFormat:@"%@ (Legacy)", v7];
    }

    else
    {
      v9 = v7;
    }

    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v18 = objc_opt_new();
  v5 = objc_opt_class();
  v17 = [(NTKDigitalModularFaceBundle *)self defaultFaceForDevice:v4];
  if ([v17 deviceSupportsPigmentEditOption])
  {
    [(NTKDigitalModularFaceBundle *)self galleryDefaultPigmentOptionsForDevice:v4];
  }

  else
  {
    [NTKFaceColorEditOption standardColorsWithColorClass:v5 forDevice:v4];
  }
  v6 = ;
  v7 = [v6 mutableCopy];

  v8 = [v5 optionsRestrictedByDevice:v4];
  v9 = [v8 mutableCopy];

  v10 = 0;
  if ([v9 count])
  {
    v11 = 9;
  }

  else
  {
    v11 = 8;
  }

  do
  {
    v12 = [NTKFace defaultFaceOfStyle:4 forDevice:v4];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = +[NTKDigitalModularFaceBundle complicationTypesBySlot];
    [v12 _setFaceGalleryComplicationTypesForSlots:v13];

    if (!v10)
    {
      v14 = [NTKFaceColorModularEditOption optionWithFaceColor:200 forDevice:v4];
      [v12 selectOption:v14 forCustomEditMode:10 slot:0];

LABEL_12:
      [v18 addObject:v12];
      goto LABEL_13;
    }

    if ([v12 _faceGalleryDidUpdateFaceColorForColorEditOptionClass:v5 availableHardwareSpecificColorOptions:v9 availableColorOptions:v7])
    {
      goto LABEL_12;
    }

LABEL_13:

    ++v10;
  }

  while (v11 != v10);
  v15 = [v18 copy];

  return v15;
}

+ (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotCenter;
  v5[0] = &off_8710;
  v5[1] = &off_8728;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomCenter;
  v5[2] = &off_8740;
  v5[3] = &off_8758;
  v4[4] = NTKComplicationSlotBottomRight;
  v5[4] = &off_8770;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end