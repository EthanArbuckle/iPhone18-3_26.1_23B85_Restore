@interface NTKBigNumeralsAnalogFaceBundle
- (id)_bigNumeralsAnalogFacesWithColor:(id)a3 forDevice:(id)a4;
- (id)_bigNumeralsAnalogFacesWithColorOptions:(id)a3 forDevice:(id)a4;
- (id)_colorOptionFromColorValue:(id)a3 device:(id)a4;
- (id)_graceDefaultFacesForDevice:(id)a3;
- (id)_legacyGalleryFacesForDevice:(id)a3;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroGraceDefaultFacesForDevice:(id)a3;
- (id)heroSpring2020DefaultFacesForDevice:(id)a3;
@end

@implementation NTKBigNumeralsAnalogFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKBigNumeralsAnalogFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v10.receiver = self;
    v10.super_class = NTKBigNumeralsAnalogFaceBundle;
    v5 = [(NTKBigNumeralsAnalogFaceBundle *)&v10 galleryFacesForDevice:v4];
    [v5 enumerateObjectsUsingBlock:&stru_C3C0];
  }

  else
  {
    v6 = [(NTKBigNumeralsAnalogFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [v6 deviceSupportsPigmentEditOption];

    if (v7)
    {
      v8 = [(NTKBigNumeralsAnalogFaceBundle *)self galleryDefaultPigmentOptionsForDevice:v4];
      v5 = [(NTKBigNumeralsAnalogFaceBundle *)self _bigNumeralsAnalogFacesWithColorOptions:v8 forDevice:v4];
    }

    else
    {
      v5 = [(NTKBigNumeralsAnalogFaceBundle *)self _legacyGalleryFacesForDevice:v4];
    }
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)_legacyGalleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:2919474315])
  {
    v5 = [(NTKBigNumeralsAnalogFaceBundle *)self _fall2020FacesForDevice:v4];
  }

  else
  {
    if ([v4 supportsPDRCapability:753405533])
    {
      [(NTKBigNumeralsAnalogFaceBundle *)self _spring2020FacesForDevice:v4];
    }

    else
    {
      [(NTKBigNumeralsAnalogFaceBundle *)self _graceDefaultFacesForDevice:v4];
    }
    v5 = ;
  }

  v6 = v5;

  return v6;
}

- (id)_graceDefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = [NTKFaceColorEditOption standardColorValuesForDevice:v4];
  v6 = [v5 subarrayWithRange:{0, 3}];
  v7 = [(NTKBigNumeralsAnalogFaceBundle *)self _bigNumeralsAnalogFacesWithColor:v6 forDevice:v4];

  return v7;
}

- (id)_colorOptionFromColorValue:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
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

        v13 = +[NTKBigNumeralsAnalogColorEditOption optionWithFaceColor:forDevice:](NTKBigNumeralsAnalogColorEditOption, "optionWithFaceColor:forDevice:", [*(*(&v15 + 1) + 8 * i) integerValue], v6);
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

- (id)_bigNumeralsAnalogFacesWithColor:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [(NTKBigNumeralsAnalogFaceBundle *)self _colorOptionFromColorValue:a3 device:v6];
  v8 = [(NTKBigNumeralsAnalogFaceBundle *)self _bigNumeralsAnalogFacesWithColorOptions:v7 forDevice:v6];

  return v8;
}

- (id)_bigNumeralsAnalogFacesWithColorOptions:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v8 = [NTKBigNumeralsAnalogTypefaceEditOption numberOfOptionsForDevice:v6];
  v9 = v8 * v7;
  v10 = +[NSMutableArray array];
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = [NTKFace defaultFaceOfStyle:38 forDevice:v6];
      if (v12)
      {
        v13 = [NTKBigNumeralsAnalogTypefaceEditOption optionAtIndex:i % v8 forDevice:v6];
        [v12 selectOption:v13 forCustomEditMode:13 slot:0];
        v14 = [v5 objectAtIndexedSubscript:i / v8];
        [v12 selectOption:v14 forCustomEditMode:10 slot:0];

        [v10 addObject:v12];
      }
    }
  }

  return v10;
}

- (id)heroGraceDefaultFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCategory];
  v5 = [NTKFace defaultFaceOfStyle:38 forDevice:v3];
  if (v4 == &dword_0 + 1)
  {
    if ([v3 supportsPDRCapability:3503302961])
    {
      v6 = NTKBigNumeralsAnalogColorEditOption;
    }

    else
    {
      v6 = NTKFaceColorEditOption;
    }

    v7 = [NTKFaceColorEditOption standardColorValuesForDevice:v3];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = -[__objc2_class optionWithFaceColor:forDevice:](v6, "optionWithFaceColor:forDevice:", [v8 integerValue], v3);
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

- (id)heroSpring2020DefaultFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = [NTKFace defaultFaceOfStyle:38 forDevice:v3];
  v5 = [v3 supportsPDRCapability:3503302961];
  v6 = off_C1B0;
  if (!v5)
  {
    v6 = NTKFaceColorEditOption_ptr;
  }

  v7 = [*v6 optionWithFaceColor:68 forDevice:v3];

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