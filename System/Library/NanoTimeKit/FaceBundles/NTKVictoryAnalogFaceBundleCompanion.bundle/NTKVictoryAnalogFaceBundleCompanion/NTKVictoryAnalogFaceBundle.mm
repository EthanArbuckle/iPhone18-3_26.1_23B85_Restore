@interface NTKVictoryAnalogFaceBundle
- (id)_colorOptionsFromColorValues:(id)values device:(id)device;
- (id)_fall2020DefaultFacesForDevice:(id)device;
- (id)_fullscreenDefaultFacesForDevice:(id)device colorOptions:(id)options;
- (id)_gloryDefaultFacesForDevice:(id)device;
- (id)_gloryEDefaultFacesForDevice:(id)device;
- (id)_graceDefaultFacesForDevice:(id)device;
- (id)_legacyDefaultFacesForDevice:(id)device;
- (id)_legacyGalleryFacesForDevice:(id)device;
- (id)_spring2020DefaultFacesForDevice:(id)device;
- (id)_spring2021DefaultFacesForDevice:(id)device;
- (id)complicationTypesBySlot;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroLegacyDefaultFacesForDevice:(id)device;
- (id)spring2021VictoryColors;
@end

@implementation NTKVictoryAnalogFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 219;
  }

  else
  {
    v4 = 19;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

- (id)heroLegacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [(NTKVictoryAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
  v6 = [NTKVictoryAnalogColorEditOption optionWithVictoryColor:21 forDevice:deviceCopy];
  [v5 selectOption:v6 forCustomEditMode:10 slot:0];

  v7 = [NTKVictoryAnalogStyleEditOption optionWithStyle:4 forDevice:deviceCopy];

  [v5 selectOption:v7 forCustomEditMode:11 slot:0];
  complicationTypesBySlot = [(NTKVictoryAnalogFaceBundle *)self complicationTypesBySlot];
  [v5 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

  if (v5)
  {
    v11 = v5;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v5[0] = &off_CC98;
  v5[1] = &off_CCB0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_C928;
  v6 = &off_C940;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v10.receiver = self;
    v10.super_class = NTKVictoryAnalogFaceBundle;
    v5 = [(NTKVictoryAnalogFaceBundle *)&v10 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&stru_C3E8];
  }

  else
  {
    v6 = [(NTKVictoryAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
    deviceSupportsPigmentEditOption = [v6 deviceSupportsPigmentEditOption];

    if (deviceSupportsPigmentEditOption)
    {
      v8 = [(NTKVictoryAnalogFaceBundle *)self galleryDefaultPigmentOptionsForDevice:deviceCopy];
      v5 = [(NTKVictoryAnalogFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v8];
    }

    else
    {
      v5 = [(NTKVictoryAnalogFaceBundle *)self _legacyGalleryFacesForDevice:deviceCopy];
    }
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5 = &off_C958;
    v6 = &off_CCC8;
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
    v5[2] = ntk_victory_cargoKhaki;
    v5[3] = ntk_victory_totalOrange;
    v5[4] = ntk_victory_hyperGrape;
    v5[5] = ntk_special_rainbow;
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
  if ([deviceCopy supportsPDRCapability:3356802055])
  {
    v5 = [(NTKVictoryAnalogFaceBundle *)self _spring2021DefaultFacesForDevice:deviceCopy];
  }

  else if ([deviceCopy supportsPDRCapability:2919474315])
  {
    v5 = [(NTKVictoryAnalogFaceBundle *)self _fall2020DefaultFacesForDevice:deviceCopy];
  }

  else if ([deviceCopy supportsPDRCapability:753405533])
  {
    v5 = [(NTKVictoryAnalogFaceBundle *)self _spring2020DefaultFacesForDevice:deviceCopy];
  }

  else if ([deviceCopy isRunningGraceOrLater])
  {
    v5 = [(NTKVictoryAnalogFaceBundle *)self _graceDefaultFacesForDevice:deviceCopy];
  }

  else if ([deviceCopy isRunningGloryEOrLater])
  {
    v5 = [(NTKVictoryAnalogFaceBundle *)self _gloryEDefaultFacesForDevice:deviceCopy];
  }

  else
  {
    if ([deviceCopy isRunningGloryGMOrLater])
    {
      [(NTKVictoryAnalogFaceBundle *)self _gloryDefaultFacesForDevice:deviceCopy];
    }

    else
    {
      [(NTKVictoryAnalogFaceBundle *)self _legacyDefaultFacesForDevice:deviceCopy];
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
  if ([NTKVictoryAnalogStyleEditOption numberOfOptionsForDevice:deviceCopy])
  {
    v6 = 0;
    v7 = NTKComplicationSlotBottomCenter;
    v8 = 3;
    do
    {
      v9 = [(NTKVictoryAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
      if (v9)
      {
        if ([deviceCopy isExplorer])
        {
          v10 = 100;
        }

        else
        {
          v10 = 1;
        }

        v11 = [NTKVictoryAnalogColorEditOption optionWithVictoryColor:v10 forDevice:deviceCopy];
        [v9 selectOption:v11 forCustomEditMode:10 slot:0];

        v12 = [NTKVictoryAnalogStyleEditOption optionWithStyle:v8 forDevice:deviceCopy];
        [v9 selectOption:v12 forCustomEditMode:11 slot:0];

        complicationTypesBySlot = [(NTKVictoryAnalogFaceBundle *)self complicationTypesBySlot];
        [v9 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

        v14 = +[NTKVictoryAppLauncher complication];
        [v9 setComplication:v14 forSlot:v7];

        [v5 addObject:v9];
      }

      ++v6;
      --v8;
    }

    while ([NTKVictoryAnalogStyleEditOption numberOfOptionsForDevice:deviceCopy]> v6);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)_gloryDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption gloryVictoryColors];
  v6 = [(NTKVictoryAnalogFaceBundle *)self _colorOptionsFromColorValues:v5 device:deviceCopy];
  v7 = [(NTKVictoryAnalogFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v6];

  return v7;
}

- (id)_gloryEDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption gloryEVictoryColors];
  v6 = [(NTKVictoryAnalogFaceBundle *)self _colorOptionsFromColorValues:v5 device:deviceCopy];
  v7 = [(NTKVictoryAnalogFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v6];

  return v7;
}

- (id)_graceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption graceVictoryColors];
  v6 = [(NTKVictoryAnalogFaceBundle *)self _colorOptionsFromColorValues:v5 device:deviceCopy];
  v7 = [(NTKVictoryAnalogFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v6];

  return v7;
}

- (id)_spring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption spring2020VictoryColors];
  v6 = [(NTKVictoryAnalogFaceBundle *)self _colorOptionsFromColorValues:v5 device:deviceCopy];
  v7 = [(NTKVictoryAnalogFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v6];

  return v7;
}

- (id)_spring2021DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  spring2021VictoryColors = [(NTKVictoryAnalogFaceBundle *)self spring2021VictoryColors];
  v6 = [(NTKVictoryAnalogFaceBundle *)self _colorOptionsFromColorValues:spring2021VictoryColors device:deviceCopy];
  v7 = [(NTKVictoryAnalogFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v6];

  return v7;
}

- (id)spring2021VictoryColors
{
  v2 = +[NTKVictoryColorEditOption fall2020VictoryColors];
  v3 = [v2 arrayByAddingObjectsFromArray:&off_CCF8];
  v4 = [&off_CCE0 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (id)_fall2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NTKVictoryColorEditOption fall2020VictoryColors];
  v6 = [(NTKVictoryAnalogFaceBundle *)self _colorOptionsFromColorValues:v5 device:deviceCopy];
  v7 = [(NTKVictoryAnalogFaceBundle *)self _fullscreenDefaultFacesForDevice:deviceCopy colorOptions:v6];

  return v7;
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

        v13 = +[NTKVictoryAnalogColorEditOption optionWithVictoryColor:forDevice:](NTKVictoryAnalogColorEditOption, "optionWithVictoryColor:forDevice:", [*(*(&v15 + 1) + 8 * i) integerValue], deviceCopy);
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
    v12 = NTKComplicationSlotBottomCenter;
    do
    {
      v13 = [(NTKVictoryAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
      if (v13)
      {
        v14 = [NTKVictoryAnalogStyleEditOption optionWithStyle:3 forDevice:deviceCopy];
        [v13 selectOption:v14 forCustomEditMode:11 slot:0];

        v15 = [optionsCopy objectAtIndexedSubscript:v11];
        [v13 selectOption:v15 forCustomEditMode:10 slot:0];

        complicationTypesBySlot = [(NTKVictoryAnalogFaceBundle *)self complicationTypesBySlot];
        [v13 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

        v17 = +[NTKVictoryAppLauncher complication];
        [v13 setComplication:v17 forSlot:v12];

        [v8 addObject:v13];
      }

      ++v11;
    }

    while (v10 != v11);
  }

  v18 = [v8 copy];

  return v18;
}

@end