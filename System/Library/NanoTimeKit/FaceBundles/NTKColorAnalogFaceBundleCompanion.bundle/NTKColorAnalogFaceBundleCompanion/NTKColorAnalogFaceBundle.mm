@interface NTKColorAnalogFaceBundle
- (id)_allStyleFacesForDevice:(id)device colorOptions:(id)options;
- (id)_allStyleFacesForDevice:(id)device colors:(id)colors;
- (id)_colorOptionFromColorValue:(id)value device:(id)device;
- (id)_legacyDefaultFacesForDevice:(id)device;
- (id)_legacyGalleryFacesForDevice:(id)device;
- (id)_spring2020DefaultFacesForDevice:(id)device;
- (id)complicationTypesBySlot;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroGloryBDefaultFacesForDevice:(id)device;
@end

@implementation NTKColorAnalogFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 203;
  }

  else
  {
    v4 = 3;
  }

  v5 = [NTKColorAnalogFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v13.receiver = self;
    v13.super_class = NTKColorAnalogFaceBundle;
    v5 = [(NTKColorAnalogFaceBundle *)&v13 galleryFacesForDevice:deviceCopy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_335C;
    v12[3] = &unk_104D0;
    v12[4] = self;
    [v5 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    v6 = [(NTKColorAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
    deviceSupportsPigmentEditOption = [v6 deviceSupportsPigmentEditOption];

    if (deviceSupportsPigmentEditOption)
    {
      v8 = +[NSMutableArray array];
      v9 = [NTKFaceColorEditOption optionsRestrictedByDevice:deviceCopy];
      if (v9)
      {
        [v8 addObjectsFromArray:v9];
      }

      v10 = [(NTKColorAnalogFaceBundle *)self galleryDefaultPigmentOptionsForDevice:deviceCopy];
      if (v10)
      {
        [v8 addObjectsFromArray:v10];
      }

      v5 = [(NTKColorAnalogFaceBundle *)self _allStyleFacesForDevice:deviceCopy colorOptions:v8];
    }

    else
    {
      v5 = [(NTKColorAnalogFaceBundle *)self _legacyGalleryFacesForDevice:deviceCopy];
    }
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5 = &off_10BD0;
    v6 = &off_11258;
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
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v18[0] = ntk_seasons_fall2025_neonYellow;
    v18[1] = ntk_seasons_fall2025_forest;
    v18[2] = ntk_seasons_fall2025_anchorBlue;
    v6 = [NSArray arrayWithObjects:v18 count:3];
    [v5 addObjectsFromArray:v6];

    v7 = [(NTKColorAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v8 = [v7 defaultOptionForCustomEditMode:10 slot:0];
    fullname = [v8 fullname];
    v10 = [fullname isEqualToString:ntk_standard_blue];

    if (v10)
    {
      v17[0] = ntk_seasons_fall2025_tumeric;
      v17[1] = ntk_seasons_fall2025_purpleFog;
      v17[2] = ntk_seasons_spring2025_peony;
      fullname2 = [NSArray arrayWithObjects:v17 count:3];
      [v5 addObjectsFromArray:fullname2];
    }

    else
    {
      fullname2 = [v8 fullname];
      fullname3 = [v8 fullname];
      v16[1] = fullname3;
      fullname4 = [v8 fullname];
      v16[2] = fullname4;
      v14 = [NSArray arrayWithObjects:v16 count:3];
      [v5 addObjectsFromArray:v14];
    }
  }

  return v5;
}

- (id)_legacyGalleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:753405533])
  {
    v5 = [(NTKColorAnalogFaceBundle *)self _spring2020DefaultFacesForDevice:deviceCopy];
  }

  else if ([deviceCopy isRunningGraceOrLater])
  {
    v5 = [(NTKColorAnalogFaceBundle *)self _graceDefaultFacesForDevice:deviceCopy];
  }

  else
  {
    pdrDeviceVersion = [deviceCopy pdrDeviceVersion];
    if (pdrDeviceVersion <= 0x501FF)
    {
      if (pdrDeviceVersion <= 0x500FF)
      {
        [(NTKColorAnalogFaceBundle *)self _legacyDefaultFacesForDevice:deviceCopy];
      }

      else
      {
        [(NTKColorAnalogFaceBundle *)self _gloryBDefaultFacesForDevice:deviceCopy];
      }
      v5 = ;
    }

    else
    {
      v5 = [(NTKColorAnalogFaceBundle *)self _gloryEDefaultFacesForDevice:deviceCopy];
    }
  }

  v7 = v5;

  return v7;
}

- (id)_legacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = [NTKFaceColorEditOption standardColorsWithColorClass:v6 forDevice:deviceCopy];
  v8 = [v7 mutableCopy];

  v9 = [v6 optionsRestrictedByDevice:deviceCopy];
  v10 = [v9 mutableCopy];

  if ([v10 count])
  {
    v11 = 9;
  }

  else
  {
    v11 = 8;
  }

  do
  {
    v12 = [(NTKColorAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
    if (v12)
    {
      v13 = [NTKColorAnalogStyleEditOption optionWithStyle:0 forDevice:deviceCopy];
      [v12 selectOption:v13 forCustomEditMode:15 slot:0];

      complicationTypesBySlot = [(NTKColorAnalogFaceBundle *)self complicationTypesBySlot];
      [v12 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

      if ([v12 _faceGalleryDidUpdateFaceColorForColorEditOptionClass:v6 availableHardwareSpecificColorOptions:v10 availableColorOptions:v8])
      {
        [v5 addObject:v12];
      }
    }

    --v11;
  }

  while (v11);
  v15 = [v5 copy];

  return v15;
}

- (id)heroGloryBDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy deviceCategory] != &dword_0 + 1)
  {
    v6 = [(NTKColorAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [NTKColorAnalogStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
    [v6 selectOption:v7 forCustomEditMode:15 slot:0];

    v8 = [NTKFaceColorEditOption optionWithFaceColor:6 forDevice:deviceCopy];
    [v6 selectOption:v8 forCustomEditMode:10 slot:0];

    [v6 _setFaceGalleryComplicationTypesForSlots:&__NSDictionary0__struct];
    [v5 addObject:v6];
  }

  v9 = [(NTKColorAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
  v10 = [NTKColorAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
  [v9 selectOption:v10 forCustomEditMode:15 slot:0];

  v11 = [NTKFaceColorEditOption optionWithFaceColor:6 forDevice:deviceCopy];
  [v9 selectOption:v11 forCustomEditMode:10 slot:0];

  [v9 _setFaceGalleryComplicationTypesForSlots:&__NSDictionary0__struct];
  [v5 addObject:v9];
  v12 = [v5 copy];

  return v12;
}

- (id)_spring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v23 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = [&off_112B8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v22)
  {
    v5 = *v25;
    v6 = &NTKAllSignatureCornerTypes_ptr;
    selfCopy = self;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(&off_112B8);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [(NTKColorAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
        v10 = [v6[92] optionWithFaceColor:objc_msgSend(v8 forDevice:{"unsignedIntegerValue"), deviceCopy}];
        complicationTypesBySlot = [(NTKColorAnalogFaceBundle *)self complicationTypesBySlot];
        [v9 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

        [v9 selectOption:v10 forCustomEditMode:10 slot:0];
        if ([deviceCopy deviceCategory] != &dword_0 + 1)
        {
          v12 = [NTKColorAnalogStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
          [v9 selectOption:v12 forCustomEditMode:15 slot:0];
          if (v9)
          {
            [v23 addObject:v9];
          }
        }

        v13 = [v9 copy];
        v14 = [NTKColorAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
        [v13 selectOption:v14 forCustomEditMode:15 slot:0];
        if (v13)
        {
          [v23 addObject:v13];
        }

        if ([deviceCopy deviceCategory] == &dword_0 + 1)
        {
          v15 = v6;
          v16 = v5;
          v17 = [v9 copy];
          v18 = [NTKColorAnalogStyleEditOption optionWithStyle:0 forDevice:deviceCopy];
          [v17 selectOption:v18 forCustomEditMode:15 slot:0];
          if (v17)
          {
            [v23 addObject:v17];
          }

          v5 = v16;
          v6 = v15;
          self = selfCopy;
        }
      }

      v22 = [&off_112B8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v22);
  }

  v19 = [v23 copy];

  return v19;
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

        v13 = +[NTKFaceColorEditOption optionWithFaceColor:forDevice:](NTKFaceColorEditOption, "optionWithFaceColor:forDevice:", [*(*(&v15 + 1) + 8 * i) integerValue], deviceCopy);
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

- (id)_allStyleFacesForDevice:(id)device colors:(id)colors
{
  deviceCopy = device;
  v7 = [(NTKColorAnalogFaceBundle *)self _colorOptionFromColorValue:colors device:deviceCopy];
  v8 = [(NTKColorAnalogFaceBundle *)self _allStyleFacesForDevice:deviceCopy colorOptions:v7];

  return v8;
}

- (id)_allStyleFacesForDevice:(id)device colorOptions:(id)options
{
  deviceCopy = device;
  optionsCopy = options;
  v7 = objc_opt_new();
  v8 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = optionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addObject:*(*(&v36 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  v27 = v9;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = v8;
  obj = [v8 copy];
  v14 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v30 = *v33;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * j);
        v18 = [(NTKColorAnalogFaceBundle *)self defaultFaceForDevice:deviceCopy];
        if (v18)
        {
          complicationTypesBySlot = [(NTKColorAnalogFaceBundle *)self complicationTypesBySlot];
          [v18 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

          [v18 selectOption:v17 forCustomEditMode:10 slot:0];
          v20 = [NTKColorAnalogStyleEditOption numberOfOptionsForDevice:deviceCopy];
          if (v20 >= 1)
          {
            v21 = v20;
            for (k = 0; k != v21; ++k)
            {
              v23 = [v18 copy];
              v24 = [NTKColorAnalogStyleEditOption optionAtIndex:k forDevice:deviceCopy];
              [v23 selectOption:v24 forCustomEditMode:15 slot:0];

              [v7 addObject:v23];
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v15);
  }

  v25 = [v7 copy];

  return v25;
}

- (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v5[0] = &off_112D0;
  v5[1] = &off_112E8;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v5[2] = &off_11300;
  v5[3] = &off_11318;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end