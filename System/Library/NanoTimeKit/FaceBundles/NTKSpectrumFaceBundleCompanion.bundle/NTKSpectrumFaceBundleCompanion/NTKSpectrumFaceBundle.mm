@interface NTKSpectrumFaceBundle
- (id)_galleryFacesWithColorOptions:(id)a3 device:(id)a4;
- (id)_legacyGalleryFacesForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
- (id)heroGraceDefaultFacesForDevice:(id)a3;
- (id)heroSpring2020DefaultFacesForDevice:(id)a3;
@end

@implementation NTKSpectrumFaceBundle

- (id)galleryTitleForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSpectrumFaceBundle;
    v5 = [(NTKSpectrumFaceBundle *)&v7 galleryTitleForDevice:v4];
  }

  return v5;
}

- (id)heroSpring2020DefaultFacesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [NTKFace defaultFaceOfStyle:41 forDevice:v3];
    v6 = [NTKSpectrumAnalogColorEditOption optionWithColor:3004 forDevice:v3];
    [v5 selectOption:v6 forCustomEditMode:10 slot:0];

    if (v5)
    {
      v8 = v5;
      v4 = [NSArray arrayWithObjects:&v8 count:1];
    }

    else
    {
      v4 = &__NSArray0__struct;
    }
  }

  return v4;
}

- (id)heroGraceDefaultFacesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [NTKFace defaultFaceOfStyle:41 forDevice:v3];
    v6 = [NTKSpectrumAnalogColorEditOption optionWithColor:6 forDevice:v3];
    [v5 selectOption:v6 forCustomEditMode:10 slot:0];

    v10[0] = NTKComplicationSlotTopLeft;
    v10[1] = NTKComplicationSlotTopRight;
    v11[0] = &off_111B0;
    v11[1] = &off_111C8;
    v10[2] = NTKComplicationSlotBottomLeft;
    v10[3] = NTKComplicationSlotBottomRight;
    v11[2] = &off_111E0;
    v11[3] = &off_111F8;
    v10[4] = NTKComplicationSlotBezel;
    v11[4] = &off_11210;
    v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
    [v5 _setFaceGalleryComplicationTypesForSlots:v7];

    if (v5)
    {
      v9 = v5;
      v4 = [NSArray arrayWithObjects:&v9 count:1];
    }

    else
    {
      v4 = &__NSArray0__struct;
    }
  }

  return v4;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = [(NTKSpectrumFaceBundle *)self defaultFaceForDevice:v4];
  if ([v5 deviceSupportsPigmentEditOption])
  {
    v6 = [(NTKSpectrumFaceBundle *)self galleryDefaultPigmentOptionsForDevice:v4];
    v7 = [(NTKSpectrumFaceBundle *)self _galleryFacesWithColorOptions:v6 device:v4];
  }

  else
  {
    v7 = [(NTKSpectrumFaceBundle *)self _legacyGalleryFacesForDevice:v4];
  }

  return v7;
}

- (id)_legacyGalleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:2919474315])
  {
    v5 = &off_11228;
  }

  else if ([v4 supportsPDRCapability:753405533])
  {
    v5 = &off_11240;
  }

  else
  {
    v5 = &off_11258;
  }

  v6 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = +[NTKSpectrumAnalogColorEditOption optionWithFaceColor:forDevice:](NTKSpectrumAnalogColorEditOption, "optionWithFaceColor:forDevice:", [*(*(&v14 + 1) + 8 * i) integerValue], v4);
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(NTKSpectrumFaceBundle *)self _galleryFacesWithColorOptions:v6 device:v4];

  return v12;
}

- (id)_galleryFacesWithColorOptions:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = 2 * [v5 count];
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [NTKFace defaultFaceOfStyle:41 forDevice:v6];
      if (v10)
      {
        v11 = [NTKSpectrumStyleEditOption optionWithStyle:2 forDevice:v6];
        [v10 selectOption:v11 forCustomEditMode:15 slot:0];

        v12 = [NTKAnalogDialShapeEditOption optionWithShape:(i & 1) == 0 forDevice:v6];
        [v10 selectOption:v12 forCustomEditMode:12 slot:0];

        v13 = [v5 objectAtIndexedSubscript:i >> 1];
        [v10 selectOption:v13 forCustomEditMode:10 slot:0];

        [v7 addObject:v10];
      }
    }
  }

  v14 = [v7 copy];

  return v14;
}

@end