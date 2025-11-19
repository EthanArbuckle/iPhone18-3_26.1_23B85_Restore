@interface NTKVictoryDigitalFaceBundle
- (id)_colorOptionsFromColorValues:(id)a3 device:(id)a4;
- (id)_fall2020DefaultFacesForDevice:(id)a3;
- (id)_fullscreenDefaultFacesForDevice:(id)a3 colorOptions:(id)a4;
- (id)_fullscreenDefaultFacesForDevice:(id)a3 colors:(id)a4;
- (id)_gloryDefaultFacesForDevice:(id)a3;
- (id)_gloryEDefaultFacesForDevice:(id)a3;
- (id)_graceDefaultFacesForDevice:(id)a3;
- (id)_legacyDefaultFacesForDevice:(id)a3;
- (id)_legacyGalleryFacesForDevice:(id)a3;
- (id)_spring2020DefaultFacesForDevice:(id)a3;
- (id)complications;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
@end

@implementation NTKVictoryDigitalFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 220;
  }

  else
  {
    v4 = 20;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_10DB0;
  v6 = &off_10DC8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v10.receiver = self;
    v10.super_class = NTKVictoryDigitalFaceBundle;
    v5 = [(NTKVictoryDigitalFaceBundle *)&v10 galleryFacesForDevice:v4];
    [v5 enumerateObjectsUsingBlock:&stru_10550];
  }

  else
  {
    v6 = [(NTKVictoryDigitalFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [v6 deviceSupportsPigmentEditOption];

    if (v7)
    {
      v8 = [(NTKVictoryDigitalFaceBundle *)self galleryDefaultPigmentOptionsForDevice:v4];
      v5 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:v4 colorOptions:v8];
    }

    else
    {
      v5 = [(NTKVictoryDigitalFaceBundle *)self _legacyGalleryFacesForDevice:v4];
    }
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5 = &off_10DE0;
    v6 = &off_110A0;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
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
    v5[0] = ntk_victory_white;
    v5[1] = ntk_victory_volt;
    v5[2] = ntk_victory_totalOrange;
    v3 = [NSArray arrayWithObjects:v5 count:3];
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
    v5 = [(NTKVictoryDigitalFaceBundle *)self _fall2020DefaultFacesForDevice:v4];
  }

  else if ([v4 supportsPDRCapability:753405533])
  {
    v5 = [(NTKVictoryDigitalFaceBundle *)self _spring2020DefaultFacesForDevice:v4];
  }

  else if ([v4 isRunningGraceOrLater])
  {
    v5 = [(NTKVictoryDigitalFaceBundle *)self _graceDefaultFacesForDevice:v4];
  }

  else if ([v4 isRunningGloryEOrLater])
  {
    v5 = [(NTKVictoryDigitalFaceBundle *)self _gloryEDefaultFacesForDevice:v4];
  }

  else
  {
    if ([v4 isRunningGloryGMOrLater])
    {
      [(NTKVictoryDigitalFaceBundle *)self _gloryDefaultFacesForDevice:v4];
    }

    else
    {
      [(NTKVictoryDigitalFaceBundle *)self _legacyDefaultFacesForDevice:v4];
    }
    v5 = ;
  }

  v6 = v5;

  return v6;
}

- (id)_legacyDefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([NTKVictoryDigitalStyleEditOption numberOfOptionsForDevice:v4])
  {
    v6 = NTKComplicationSlotBottom;
    v7 = 3;
    do
    {
      v8 = [(NTKVictoryDigitalFaceBundle *)self defaultFaceForDevice:v4];
      if (v8)
      {
        v9 = [NTKVictoryDigitalStyleEditOption optionWithStyle:v7 forDevice:v4];
        [v8 selectOption:v9 forCustomEditMode:13 slot:0];

        v10 = [(NTKVictoryDigitalFaceBundle *)self complications];
        [v8 _setFaceGalleryComplicationTypesForSlots:v10];

        v11 = +[NTKVictoryAppLauncher complication];
        [v8 setComplication:v11 forSlot:v6];

        [v5 addObject:v8];
      }

      v12 = [NTKVictoryDigitalStyleEditOption numberOfOptionsForDevice:v4];
      v13 = v7 - 2;
      ++v7;
    }

    while (v12 > v13);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)_gloryDefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NTKVictoryColorEditOption gloryVictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:v4 colors:v5];

  return v6;
}

- (id)_gloryEDefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NTKVictoryColorEditOption gloryEVictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:v4 colors:v5];

  return v6;
}

- (id)_graceDefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NTKVictoryColorEditOption graceVictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:v4 colors:v5];

  return v6;
}

- (id)_spring2020DefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NTKVictoryColorEditOption spring2020VictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:v4 colors:v5];

  return v6;
}

- (id)_colorOptionsFromColorValues:(id)a3 device:(id)a4
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

        v13 = +[NTKVictoryDigitalColorEditOption optionWithVictoryColor:forDevice:](NTKVictoryDigitalColorEditOption, "optionWithVictoryColor:forDevice:", [*(*(&v15 + 1) + 8 * i) integerValue], v6);
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

- (id)_fall2020DefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NTKVictoryColorEditOption fall2020VictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:v4 colors:v5];

  return v6;
}

- (id)_fullscreenDefaultFacesForDevice:(id)a3 colors:(id)a4
{
  v6 = a3;
  v7 = [(NTKVictoryDigitalFaceBundle *)self _colorOptionsFromColorValues:a4 device:v6];
  v8 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:v6 colorOptions:v7];

  return v8;
}

- (id)_fullscreenDefaultFacesForDevice:(id)a3 colorOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v7 count];
  if (v9 >= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = NTKComplicationSlotBottom;
    do
    {
      v14 = [(NTKVictoryDigitalFaceBundle *)self defaultFaceForDevice:v6];
      if (v14)
      {
        v15 = [NTKVictoryDigitalStyleEditOption optionWithStyle:3 forDevice:v6];
        [v14 selectOption:v15 forCustomEditMode:13 slot:0];

        v16 = [v7 objectAtIndexedSubscript:v11];

        [v14 selectOption:v16 forCustomEditMode:10 slot:0];
        v17 = [(NTKVictoryDigitalFaceBundle *)self complications];
        [v14 _setFaceGalleryComplicationTypesForSlots:v17];

        v18 = +[NTKVictoryAppLauncher complication];
        [v14 setComplication:v18 forSlot:v13];

        [v8 addObject:v14];
        v12 = v16;
      }

      ++v11;
    }

    while (v10 != v11);
  }

  else
  {
    v12 = 0;
  }

  v19 = [v8 copy];

  return v19;
}

- (id)complications
{
  v4[0] = NTKComplicationSlot1;
  v4[1] = NTKComplicationSlot2;
  v5[0] = &off_110B8;
  v5[1] = &off_110D0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end