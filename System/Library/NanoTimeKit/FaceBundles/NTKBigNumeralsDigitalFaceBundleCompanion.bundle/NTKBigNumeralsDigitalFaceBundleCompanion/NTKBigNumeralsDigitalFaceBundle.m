@interface NTKBigNumeralsDigitalFaceBundle
+ (id)_bigNumeralsDigitalFacesWithColorOptions:(id)a3 forDevice:(id)a4;
+ (id)_editOptionsWithColorValues:(id)a3 device:(id)a4;
+ (id)_fall2020FacesForDevice:(id)a3;
+ (id)_graceDefaultFacesForDevice:(id)a3;
+ (id)_spring2020FacesForDevice:(id)a3;
- (id)_legacyGalleryFacesForDevice:(id)a3;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroGraceDefaultFacesForDevice:(id)a3;
- (id)heroSpring2020DefaultFacesForDevice:(id)a3;
@end

@implementation NTKBigNumeralsDigitalFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKBigNumeralsDigitalFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v11.receiver = self;
    v11.super_class = NTKBigNumeralsDigitalFaceBundle;
    v5 = [(NTKBigNumeralsDigitalFaceBundle *)&v11 galleryFacesForDevice:v4];
    [v5 enumerateObjectsUsingBlock:&stru_C678];
  }

  else
  {
    v6 = [(NTKBigNumeralsDigitalFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [v6 deviceSupportsPigmentEditOption];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [(NTKBigNumeralsDigitalFaceBundle *)self galleryDefaultPigmentOptionsForDevice:v4];
      v5 = [v8 _bigNumeralsDigitalFacesWithColorOptions:v9 forDevice:v4];
    }

    else
    {
      v5 = [(NTKBigNumeralsDigitalFaceBundle *)self _legacyGalleryFacesForDevice:v4];
    }
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5[0] = &off_D278;
    v5[1] = &off_D2D8;
    v6[0] = &off_D670;
    v6[1] = &off_D688;
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
    v3 = [NTKPigmentEditOption duotoneNameWithName:ntk_seasons_fall2023_lightPink otherName:ntk_seasons_fall2023_guava];
    v14[0] = v3;
    v4 = [NTKPigmentEditOption duotoneNameWithName:ntk_seasons_fall2023_cypress otherName:ntk_custom_fall2023_mint];
    v14[1] = v4;
    v5 = ntk_seasons_fall2023_winterBlue;
    v6 = [NTKPigmentEditOption duotoneNameWithName:ntk_seasons_fall2023_winterBlue otherName:ntk_seasons_fall2023_mulberry];
    v14[2] = v6;
    v7 = ntk_seasons_fall2021_stardust;
    v8 = ntk_seasons_fall2023_orangeSorbet;
    v9 = [NTKPigmentEditOption duotoneNameWithName:ntk_seasons_fall2021_stardust otherName:ntk_seasons_fall2023_orangeSorbet];
    v14[3] = v9;
    v10 = [NTKPigmentEditOption duotoneNameWithName:v7 otherName:v5];
    v14[4] = v10;
    v11 = [NTKPigmentEditOption duotoneNameWithName:v8 otherName:v5];
    v14[5] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_legacyGalleryFacesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 supportsPDRCapability:2919474315])
  {
    v4 = [NTKBigNumeralsDigitalFaceBundle _fall2020FacesForDevice:v3];
  }

  else
  {
    if ([v3 supportsPDRCapability:753405533])
    {
      [NTKBigNumeralsDigitalFaceBundle _spring2020FacesForDevice:v3];
    }

    else
    {
      [NTKBigNumeralsDigitalFaceBundle _graceDefaultFacesForDevice:v3];
    }
    v4 = ;
  }

  v5 = v4;

  return v5;
}

+ (id)_graceDefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 _editOptionsWithColorValues:&off_D6A0 device:v4];
  v6 = [a1 _bigNumeralsDigitalFacesWithColorOptions:v5 forDevice:v4];

  return v6;
}

+ (id)_spring2020FacesForDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 _editOptionsWithColorValues:&off_D6B8 device:v4];
  v6 = [a1 _bigNumeralsDigitalFacesWithColorOptions:v5 forDevice:v4];

  return v6;
}

+ (id)_fall2020FacesForDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 _editOptionsWithColorValues:&off_D6D0 device:v4];
  v6 = [a1 _bigNumeralsDigitalFacesWithColorOptions:v5 forDevice:v4];

  return v6;
}

+ (id)_editOptionsWithColorValues:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
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

        v13 = +[NTKBigNumeralsDigitalColorEditOption optionWithColor:forDevice:](NTKBigNumeralsDigitalColorEditOption, "optionWithColor:forDevice:", [*(*(&v15 + 1) + 8 * i) integerValue], v6);
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

+ (id)_bigNumeralsDigitalFacesWithColorOptions:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v8 = [NTKBigNumeralsDigitalStyleEditOption numberOfOptionsForDevice:v6];
  v9 = v8 * v7;
  v10 = +[NSMutableArray array];
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = [NTKFace defaultFaceOfStyle:37 forDevice:v6];
      if (v12)
      {
        v13 = [NTKBigNumeralsDigitalStyleEditOption optionAtIndex:i % v8 forDevice:v6];
        [v12 selectOption:v13 forCustomEditMode:15 slot:0];
        v14 = [v5 objectAtIndexedSubscript:i / v8];
        [v12 selectOption:v14 forCustomEditMode:10 slot:0];

        [v10 addObject:v12];
      }
    }
  }

  v15 = [v10 copy];

  return v15;
}

- (id)heroGraceDefaultFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCategory];
  v5 = [NTKFace defaultFaceOfStyle:37 forDevice:v3];
  v6 = [NTKBigNumeralsDigitalColorEditOption optionWithColor:3005 forDevice:v3];
  if (v4 == &dword_0 + 1)
  {
    [v5 selectOption:v6 forCustomEditMode:10 slot:0];

    v6 = [NTKBigNumeralsDigitalStyleEditOption optionWithStyle:0 forDevice:v3];

    v7 = v5;
    v8 = v6;
    v9 = 15;
  }

  else
  {

    v7 = v5;
    v8 = v6;
    v9 = 10;
  }

  [v7 selectOption:v8 forCustomEditMode:v9 slot:0];

  if (v5)
  {
    v12 = v5;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)heroSpring2020DefaultFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = [NTKFace defaultFaceOfStyle:37 forDevice:v3];
  v5 = [NTKBigNumeralsDigitalColorEditOption optionWithColor:3011 forDevice:v3];
  [v4 selectOption:v5 forCustomEditMode:10 slot:0];

  v6 = [NTKBigNumeralsDigitalStyleEditOption optionWithStyle:0 forDevice:v3];

  [v4 selectOption:v6 forCustomEditMode:15 slot:0];
  if (v4)
  {
    v9 = v4;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

@end