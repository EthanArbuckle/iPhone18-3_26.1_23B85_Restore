@interface NTKExtraLargeFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryDefaultPigmentOptionsForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
@end

@implementation NTKExtraLargeFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 212;
  }

  else
  {
    v4 = 12;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

- (id)galleryDefaultPigmentOptionsForDevice:(id)a3
{
  v4 = a3;
  if (NTKShowGossamerUI() && ([v4 supportsPDRCapability:3887189377] & 1) == 0)
  {
    v6 = [(objc_class *)[(NTKExtraLargeFaceBundle *)self faceClass] pigmentFaceDomain];
    v7 = [v6 stringByAppendingString:@"-Gossamer"];

    v8 = [NSBundle bundleForClass:[(NTKExtraLargeFaceBundle *)self faceClass]];
    v9 = +[NTKPigmentEditOptionStore sharedInstance];
    v5 = [v9 defaultGalleryColorsForDomain:v7 bundle:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NTKExtraLargeFaceBundle;
    v5 = [(NTKExtraLargeFaceBundle *)&v11 galleryDefaultPigmentOptionsForDevice:v4];
  }

  return v5;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 supportsPDRCapability:3669496134])
  {
    v31.receiver = self;
    v31.super_class = NTKExtraLargeFaceBundle;
    v6 = [(NTKExtraLargeFaceBundle *)&v31 galleryFacesForDevice:v4];
    [v5 addObjectsFromArray:v6];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_146C;
    v29[3] = &unk_10428;
    v30 = v4;
    [v5 enumerateObjectsUsingBlock:v29];
    v7 = v5;
  }

  else if (NTKShowGossamerUI())
  {
    v28.receiver = self;
    v28.super_class = NTKExtraLargeFaceBundle;
    v8 = [(NTKExtraLargeFaceBundle *)&v28 galleryFacesForDevice:v4];
    v9 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:1 forDevice:v4];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v8;
    v10 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v24 + 1) + 8 * i) selectOption:v9 forCustomEditMode:17 slot:{0, v24}];
        }

        v11 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v14 = objc_opt_class();
    v15 = [(NTKExtraLargeFaceBundle *)self defaultFaceForDevice:v4];
    if ([v15 deviceSupportsPigmentEditOption])
    {
      [(NTKExtraLargeFaceBundle *)self galleryDefaultPigmentOptionsForDevice:v4];
    }

    else
    {
      [NTKFaceColorEditOption standardColorsWithColorClass:v14 forDevice:v4];
    }
    v16 = ;
    v17 = [v16 mutableCopy];

    v18 = [v14 optionsRestrictedByDevice:v4];
    v19 = [v18 mutableCopy];

    if ([v19 count])
    {
      v20 = 9;
    }

    else
    {
      v20 = 8;
    }

    do
    {
      v21 = [(NTKExtraLargeFaceBundle *)self defaultFaceForDevice:v4];
      v22 = v21;
      if (v21 && [v21 _faceGalleryDidUpdateFaceColorForColorEditOptionClass:v14 availableHardwareSpecificColorOptions:v19 availableColorOptions:v17])
      {
        [v5 addObject:v22];
      }

      --v20;
    }

    while (v20);
    v7 = [v5 copy];
  }

  return v7;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  v3 = a3;
  if ([v3 isRunningNapiliGMOrLater])
  {
    v10[0] = &off_10750;
    v10[1] = &off_107C8;
    v11[0] = &off_10BA8;
    v11[1] = &off_10BC0;
    v4 = v11;
    v5 = v10;
LABEL_5:
    v6 = [NSDictionary dictionaryWithObjects:v4 forKeys:v5 count:2];
    goto LABEL_7;
  }

  if ([v3 supportsPDRCapability:3669496134])
  {
    v8[0] = &off_10750;
    v8[1] = &off_107C8;
    v9[0] = &off_10BD8;
    v9[1] = &off_10BF0;
    v4 = v9;
    v5 = v8;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  v3 = a3;
  if ([v3 isRunningNapiliGMOrLater])
  {
    v4 = &ntk_seasons_spring2025_peony;
    v5 = &ntk_seasons_fall2025_purpleFog;
    v6 = &ntk_seasons_fall2025_tumeric;
    v16 = ntk_seasons_fall2025_neonYellow;
    v7 = &ntk_seasons_fall2025_anchorBlue;
    v8 = &ntk_seasons_fall2025_forest;
    v9 = &v16;
LABEL_7:
    v10 = *v7;
    v9[1] = *v8;
    v9[2] = v10;
    v11 = *v5;
    v9[3] = *v6;
    v9[4] = v11;
    v9[5] = *v4;
    v12 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
    goto LABEL_8;
  }

  if ([v3 supportsPDRCapability:3874532124])
  {
    v4 = &ntk_seasons_spring2025_sage;
    v5 = &ntk_seasons_spring2025_northernLights;
    v6 = &ntk_seasons_spring2025_periwinkle;
    v15 = ntk_seasons_spring2025_peony;
    v7 = &ntk_seasons_spring2025_aquamarine;
    v8 = &ntk_seasons_spring2025_tangerine;
    v9 = &v15;
    goto LABEL_7;
  }

  if ([v3 supportsPDRCapability:3669496134])
  {
    v4 = &ntk_seasons_fall2024_darkTaupe;
    v5 = &ntk_seasons_fall2024_magenta;
    v6 = &ntk_seasons_fall2024_ultramarine;
    v14 = ntk_seasons_fall2024_denim;
    v7 = &ntk_seasons_fall2024_lakeGreen;
    v8 = &ntk_seasons_fall2024_chartreuse;
    v9 = &v14;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

@end