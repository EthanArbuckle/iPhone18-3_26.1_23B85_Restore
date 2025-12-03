@interface NTKVictoryDigitalFaceBundle
- (id)_colorOptionsFromColorValues:(id)values device:(id)device;
- (id)_fall2020DefaultFacesForDevice:(id)device;
- (id)_fullscreenDefaultFacesForDevice:(id)device colorOptions:(id)options;
- (id)_fullscreenDefaultFacesForDevice:(id)device colors:(id)colors;
- (id)_gloryDefaultFacesForDevice:(id)device;
- (id)_gloryEDefaultFacesForDevice:(id)device;
- (id)_graceDefaultFacesForDevice:(id)device;
- (id)_legacyDefaultFacesForDevice:(id)device;
- (id)_legacyGalleryFacesForDevice:(id)device;
- (id)_spring2020DefaultFacesForDevice:(id)device;
- (id)complications;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
@end

@implementation NTKVictoryDigitalFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 220;
  }

  else
  {
    v4 = 20;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_10DB0;
  v6 = &off_10DC8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v10.receiver = self;
    v10.super_class = NTKVictoryDigitalFaceBundle;
    v5 = [(NTKVictoryDigitalFaceBundle *)&v10 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&stru_10550];
  }

  else
  {
    v6 = [(NTKVictoryDigitalFaceBundle *)self defaultFaceForDevice:deviceCopy];
    deviceSupportsPigmentEditOption = [v6 deviceSupportsPigmentEditOption];

    if (deviceSupportsPigmentEditOption)
    {
      v8 = [(NTKVictoryDigitalFaceBundle *)self galleryDefaultPigmentOptionsForDevice:deviceCopy];
      v5 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v8];
    }

    else
    {
      v5 = [(NTKVictoryDigitalFaceBundle *)self _legacyGalleryFacesForDevice:deviceCopy];
    }
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
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

- (id)_legacyGalleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:2919474315])
  {
    v5 = [(NTKVictoryDigitalFaceBundle *)self _fall2020DefaultFacesForDevice:deviceCopy];
  }

  else if ([deviceCopy supportsPDRCapability:753405533])
  {
    v5 = [(NTKVictoryDigitalFaceBundle *)self _spring2020DefaultFacesForDevice:deviceCopy];
  }

  else if ([deviceCopy isRunningGraceOrLater])
  {
    v5 = [(NTKVictoryDigitalFaceBundle *)self _graceDefaultFacesForDevice:deviceCopy];
  }

  else if ([deviceCopy isRunningGloryEOrLater])
  {
    v5 = [(NTKVictoryDigitalFaceBundle *)self _gloryEDefaultFacesForDevice:deviceCopy];
  }

  else
  {
    if ([deviceCopy isRunningGloryGMOrLater])
    {
      [(NTKVictoryDigitalFaceBundle *)self _gloryDefaultFacesForDevice:deviceCopy];
    }

    else
    {
      [(NTKVictoryDigitalFaceBundle *)self _legacyDefaultFacesForDevice:deviceCopy];
    }
    v5 = ;
  }

  v6 = v5;

  return v6;
}

- (id)_legacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  if ([NTKVictoryDigitalStyleEditOption numberOfOptionsForDevice:deviceCopy])
  {
    v6 = NTKComplicationSlotBottom;
    v7 = 3;
    do
    {
      v8 = [(NTKVictoryDigitalFaceBundle *)self defaultFaceForDevice:deviceCopy];
      if (v8)
      {
        v9 = [NTKVictoryDigitalStyleEditOption optionWithStyle:v7 forDevice:deviceCopy];
        [v8 selectOption:v9 forCustomEditMode:13 slot:0];

        complications = [(NTKVictoryDigitalFaceBundle *)self complications];
        [v8 _setFaceGalleryComplicationTypesForSlots:complications];

        v11 = +[NTKVictoryAppLauncher complication];
        [v8 setComplication:v11 forSlot:v6];

        [v5 addObject:v8];
      }

      v12 = [NTKVictoryDigitalStyleEditOption numberOfOptionsForDevice:deviceCopy];
      v13 = v7 - 2;
      ++v7;
    }

    while (v12 > v13);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)_gloryDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption gloryVictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colors:v5];

  return v6;
}

- (id)_gloryEDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption gloryEVictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colors:v5];

  return v6;
}

- (id)_graceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption graceVictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colors:v5];

  return v6;
}

- (id)_spring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption spring2020VictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colors:v5];

  return v6;
}

- (id)_colorOptionsFromColorValues:(id)values device:(id)device
{
  valuesCopy = values;
  deviceCopy = device;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [valuesCopy count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = valuesCopy;
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

        v13 = +[NTKVictoryDigitalColorEditOption optionWithVictoryColor:forDevice:](NTKVictoryDigitalColorEditOption, "optionWithVictoryColor:forDevice:", [*(*(&v15 + 1) + 8 * i) integerValue], deviceCopy);
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

- (id)_fall2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption fall2020VictoryColors];
  v6 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colors:v5];

  return v6;
}

- (id)_fullscreenDefaultFacesForDevice:(id)device colors:(id)colors
{
  deviceCopy = device;
  v7 = [(NTKVictoryDigitalFaceBundle *)self _colorOptionsFromColorValues:colors device:deviceCopy];
  v8 = [(NTKVictoryDigitalFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v7];

  return v8;
}

- (id)_fullscreenDefaultFacesForDevice:(id)device colorOptions:(id)options
{
  deviceCopy = device;
  optionsCopy = options;
  v8 = objc_opt_new();
  v9 = [optionsCopy count];
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
      v14 = [(NTKVictoryDigitalFaceBundle *)self defaultFaceForDevice:deviceCopy];
      if (v14)
      {
        v15 = [NTKVictoryDigitalStyleEditOption optionWithStyle:3 forDevice:deviceCopy];
        [v14 selectOption:v15 forCustomEditMode:13 slot:0];

        v16 = [optionsCopy objectAtIndexedSubscript:v11];

        [v14 selectOption:v16 forCustomEditMode:10 slot:0];
        complications = [(NTKVictoryDigitalFaceBundle *)self complications];
        [v14 _setFaceGalleryComplicationTypesForSlots:complications];

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