@interface NTKBigNumeralsAnalogFaceBundle
- (id)_bigNumeralsAnalogFacesWithColor:(id)color forDevice:(id)device;
- (id)_bigNumeralsAnalogFacesWithColorOptions:(id)options forDevice:(id)device;
- (id)_colorOptionFromColorValue:(id)value device:(id)device;
- (id)_graceDefaultFacesForDevice:(id)device;
- (id)_legacyGalleryFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroGraceDefaultFacesForDevice:(id)device;
- (id)heroSpring2020DefaultFacesForDevice:(id)device;
@end

@implementation NTKBigNumeralsAnalogFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKBigNumeralsAnalogFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v10.receiver = self;
    v10.super_class = NTKBigNumeralsAnalogFaceBundle;
    v5 = [(NTKBigNumeralsAnalogFaceBundle *)&v10 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&stru_C3C0];
  }

  else
  {
    v6 = [(NTKBigNumeralsAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
    deviceSupportsPigmentEditOption = [v6 deviceSupportsPigmentEditOption];

    if (deviceSupportsPigmentEditOption)
    {
      v8 = [(NTKBigNumeralsAnalogFaceBundle *)self galleryDefaultPigmentOptionsForDevice:deviceCopy];
      v5 = [(NTKBigNumeralsAnalogFaceBundle *)self _bigNumeralsAnalogFacesWithColorOptions:v8 forDevice:deviceCopy];
    }

    else
    {
      v5 = [(NTKBigNumeralsAnalogFaceBundle *)self _legacyGalleryFacesForDevice:deviceCopy];
    }
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = &off_CAE0;
    v5[1] = &off_CB58;
    v6[0] = &off_CD90;
    v6[1] = &off_CDA8;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = ntk_seasons_fall2024_silver;
    v5[1] = ntk_standard_lightPink;
    v5[2] = ntk_standard_orange;
    v5[3] = ntk_standard_blue;
    v5[4] = ntk_special_rainbow;
    v5[5] = ntk_standard_purple;
    v3 = [NSArray arrayWithObjects:v5 count:6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_legacyGalleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:2919474315])
  {
    v5 = [(NTKBigNumeralsAnalogFaceBundle *)self _fall2020FacesForDevice:deviceCopy];
  }

  else
  {
    if ([deviceCopy supportsPDRCapability:753405533])
    {
      [(NTKBigNumeralsAnalogFaceBundle *)self _spring2020FacesForDevice:deviceCopy];
    }

    else
    {
      [(NTKBigNumeralsAnalogFaceBundle *)self _graceDefaultFacesForDevice:deviceCopy];
    }
    v5 = ;
  }

  v6 = v5;

  return v6;
}

- (id)_graceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [NTKFaceColorEditOption standardColorValuesForDevice:deviceCopy];
  v6 = [v5 subarrayWithRange:{0, 3}];
  v7 = [(NTKBigNumeralsAnalogFaceBundle *)self _bigNumeralsAnalogFacesWithColor:v6 forDevice:deviceCopy];

  return v7;
}

- (id)_colorOptionFromColorValue:(id)value device:(id)device
{
  valueCopy = value;
  deviceCopy = device;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [valueCopy count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = valueCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = +[NTKBigNumeralsAnalogColorEditOption optionWithFaceColor:forDevice:](NTKBigNumeralsAnalogColorEditOption, "optionWithFaceColor:forDevice:", [*(*(&v15 + 1) + 8 * i) integerValue], deviceCopy);
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_bigNumeralsAnalogFacesWithColor:(id)color forDevice:(id)device
{
  deviceCopy = device;
  v7 = [(NTKBigNumeralsAnalogFaceBundle *)self _colorOptionFromColorValue:color device:deviceCopy];
  v8 = [(NTKBigNumeralsAnalogFaceBundle *)self _bigNumeralsAnalogFacesWithColorOptions:v7 forDevice:deviceCopy];

  return v8;
}

- (id)_bigNumeralsAnalogFacesWithColorOptions:(id)options forDevice:(id)device
{
  optionsCopy = options;
  deviceCopy = device;
  v7 = [optionsCopy count];
  v8 = [NTKBigNumeralsAnalogTypefaceEditOption numberOfOptionsForDevice:deviceCopy];
  v9 = v8 * v7;
  v10 = +[NSMutableArray array];
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = [NTKFace defaultFaceOfStyle:38 forDevice:deviceCopy];
      if (v12)
      {
        v13 = [NTKBigNumeralsAnalogTypefaceEditOption optionAtIndex:i % v8 forDevice:deviceCopy];
        [v12 selectOption:v13 forCustomEditMode:13 slot:0];
        v14 = [optionsCopy objectAtIndexedSubscript:i / v8];
        [v12 selectOption:v14 forCustomEditMode:10 slot:0];

        [v10 addObject:v12];
      }
    }
  }

  return v10;
}

- (id)heroGraceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  deviceCategory = [deviceCopy deviceCategory];
  v5 = [NTKFace defaultFaceOfStyle:38 forDevice:deviceCopy];
  if (deviceCategory == &dword_0 + 1)
  {
    if ([deviceCopy supportsPDRCapability:3503302961])
    {
      v6 = NTKBigNumeralsAnalogColorEditOption;
    }

    else
    {
      v6 = NTKFaceColorEditOption;
    }

    v7 = [NTKFaceColorEditOption standardColorValuesForDevice:deviceCopy];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = -[__objc2_class optionWithFaceColor:forDevice:](v6, "optionWithFaceColor:forDevice:", [v8 integerValue], deviceCopy);
    [v5 selectOption:v9 forCustomEditMode:10 slot:0];

    v10 = [v5 copy];
    v5 = v10;
  }

  if (v5)
  {
    v13 = v5;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (id)heroSpring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = [NTKFace defaultFaceOfStyle:38 forDevice:deviceCopy];
  v5 = [deviceCopy supportsPDRCapability:3503302961];
  v6 = off_C1B0;
  if (!v5)
  {
    v6 = NTKFaceColorEditOption_ptr;
  }

  v7 = [*v6 optionWithFaceColor:68 forDevice:deviceCopy];

  [v4 selectOption:v7 forCustomEditMode:10 slot:0];
  if (v4)
  {
    v10 = v4;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

@end