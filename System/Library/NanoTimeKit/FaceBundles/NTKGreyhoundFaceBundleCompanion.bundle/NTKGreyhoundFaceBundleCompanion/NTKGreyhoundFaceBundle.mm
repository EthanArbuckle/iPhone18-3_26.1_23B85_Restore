@interface NTKGreyhoundFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKGreyhoundFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKGreyhoundFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v35.receiver = self;
    v35.super_class = NTKGreyhoundFaceBundle;
    v6 = [(NTKGreyhoundFaceBundle *)&v35 galleryFacesForDevice:v4];
    [v5 addObjectsFromArray:v6];

    [v5 enumerateObjectsUsingBlock:&stru_14488];
  }

  else
  {
    [(NTKGreyhoundFaceBundle *)self defaultFaceForDevice:v4];
    v24 = v29 = v5;
    if ([v24 deviceSupportsPigmentEditOption])
    {
      v28 = [(NTKGreyhoundFaceBundle *)self galleryDefaultPigmentOptionsForDevice:v4, v24];
    }

    else
    {
      v7 = [NTKGreyhoundColorEditOption optionWithCaliforniaColor:3000 forDevice:v4, v24];
      v37[0] = v7;
      v8 = [NTKGreyhoundColorEditOption optionWithCaliforniaColor:3002 forDevice:v4];
      v37[1] = v8;
      v9 = [NTKGreyhoundColorEditOption optionWithCaliforniaColor:3004 forDevice:v4];
      v37[2] = v9;
      v28 = [NSArray arrayWithObjects:v37 count:3];
    }

    if ([v4 supportsPDRCapability:360081074])
    {
      v26 = [&off_16170 arrayByAddingObject:&off_158E8];
    }

    else
    {
      v26 = &off_16170;
    }

    if ([&off_16158 count])
    {
      v30 = 0;
      do
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = v26;
        v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v32;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v32 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v31 + 1) + 8 * i);
              v15 = [objc_opt_class() identifier];
              v16 = [objc_opt_class() analyticsIdentifier];
              v17 = [NTKGreyhoundFace bundledFaceWithIdentifier:v15 analyticsIdentifier:v16 forDevice:v4 initCustomization:0];

              if (v17)
              {
                v18 = [v28 objectAtIndexedSubscript:v30];
                v19 = [&off_16158 objectAtIndexedSubscript:v30];
                v20 = +[NTKGreyhoundTypefaceEditOption optionWithTypeface:forDevice:](NTKGreyhoundTypefaceEditOption, "optionWithTypeface:forDevice:", [v19 unsignedIntValue], v4);

                v21 = +[NTKGreyhoundStyleEditOption optionWithStyle:forDevice:](NTKGreyhoundStyleEditOption, "optionWithStyle:forDevice:", [v14 unsignedIntValue], v4);
                [v17 selectOption:v18 forCustomEditMode:10 slot:0];
                [v17 selectOption:v20 forCustomEditMode:13 slot:0];
                [v17 selectOption:v21 forCustomEditMode:15 slot:0];
                [v29 addObject:v17];
              }
            }

            v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v11);
        }

        ++v30;
      }

      while ([&off_16158 count] > v30);
    }

    v5 = v29;
  }

  v22 = [v5 copy];

  return v22;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5[0] = &off_15900;
    v5[1] = &off_15918;
    v6[0] = &off_16188;
    v6[1] = &off_161A0;
    v5[2] = &off_15930;
    v6[2] = &off_161B8;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
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
    v5[0] = ntk_evergreen_navyBlue;
    v5[1] = ntk_evergreen_black;
    v5[2] = ntk_evergreen_palePink;
    v5[3] = ntk_evergreen_ivory;
    v5[4] = ntk_evergreen_darkTitanium;
    v5[5] = ntk_evergreen_watermelon;
    v3 = [NSArray arrayWithObjects:v5 count:6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:4094027452])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKGreyhoundFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:700];
    v8 = v7;
    if (v7)
    {
      v10 = v7;
      v5 = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      v5 = &__NSArray0__struct;
    }
  }

  return v5;
}

@end