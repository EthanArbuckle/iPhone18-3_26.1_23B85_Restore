@interface NTKZeusAnalogFaceBundle
+ (id)identifier;
- (id)_fall2020DefaultFacesForDevice:(id)device;
- (id)_gloryEDefaultFacesForDevice:(id)device;
- (id)_graceDefaultFacesForDevice:(id)device;
- (id)_legacyDefaultFacesForDevice:(id)device;
- (id)_spring2020DefaultFacesForDevice:(id)device;
- (id)complicationTypesBySlot;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroGloryEDefaultFacesForDevice:(id)device;
- (id)heroGraceDefaultFacesForDevice:(id)device;
- (id)heroLegacyDefaultFacesForDevice:(id)device;
- (id)heroSpring2020DefaultFacesForDevice:(id)device;
@end

@implementation NTKZeusAnalogFaceBundle

+ (id)identifier
{
  v3 = [NSBundle bundleForClass:self];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = NSStringFromClass(self);
  v6 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, v5];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_46CE0;
  v6 = &off_46CF8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  [NTKZeusAnalogFace isRestrictedForDevice:deviceCopy];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v8.receiver = self;
    v8.super_class = NTKZeusAnalogFaceBundle;
    v5 = [(NTKZeusAnalogFaceBundle *)&v8 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&stru_44968];
  }

  else
  {
    if ([deviceCopy supportsPDRCapability:2919474315])
    {
      v6 = [(NTKZeusAnalogFaceBundle *)self _fall2020DefaultFacesForDevice:deviceCopy];
    }

    else if ([deviceCopy supportsPDRCapability:753405533])
    {
      v6 = [(NTKZeusAnalogFaceBundle *)self _spring2020DefaultFacesForDevice:deviceCopy];
    }

    else if ([deviceCopy isRunningGraceOrLater])
    {
      v6 = [(NTKZeusAnalogFaceBundle *)self _graceDefaultFacesForDevice:deviceCopy];
    }

    else
    {
      if ([deviceCopy isRunningGloryEOrLater])
      {
        [(NTKZeusAnalogFaceBundle *)self _gloryEDefaultFacesForDevice:deviceCopy];
      }

      else
      {
        [(NTKZeusAnalogFaceBundle *)self _legacyDefaultFacesForDevice:deviceCopy];
      }
      v6 = ;
    }

    v5 = v6;
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = &off_46D10;
    v5[1] = &off_46D70;
    v6[0] = &off_47D10;
    v6[1] = &off_47D28;
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
    v7[0] = ntk_zeus_blanc;
    v7[1] = ntk_zeus_orange;
    v3 = [NTKPigmentEditOption duotoneNameWithName:ntk_zeus_craie otherName:ntk_zeus_indigo];
    v7[2] = v3;
    v4 = [NTKPigmentEditOption duotoneNameWithName:ntk_zeus_roseExtreme otherName:ntk_zeus_bordeaux];
    v7[3] = v4;
    v7[4] = ntk_zeus_orangeDial;
    v7[5] = ntk_zeus_bambou;
    v5 = [NSArray arrayWithObjects:v7 count:6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_legacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  if ([deviceCopy deviceCategory] != &dword_0 + 1)
  {
    v6 = 3000;
    do
    {
      v7 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
      if (v7)
      {
        v8 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:deviceCopy];
        [v7 selectOption:v8 forCustomEditMode:11 slot:0];

        v9 = [NTKZeusColorEditOption optionWithColor:v6 forDevice:deviceCopy];
        [v7 selectOption:v9 forCustomEditMode:10 slot:0];

        v10 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
        [v7 selectOption:v10 forCustomEditMode:13 slot:0];

        complicationTypesBySlot = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
        [v7 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

        [v5 addObject:v7];
      }

      ++v6;
    }

    while (v6 != 3003);
  }

  v12 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
  v13 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:deviceCopy];
  [v12 selectOption:v13 forCustomEditMode:11 slot:0];

  v14 = [NTKZeusColorEditOption optionWithColor:102 forDevice:deviceCopy];
  [v12 selectOption:v14 forCustomEditMode:10 slot:0];

  v15 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
  [v12 selectOption:v15 forCustomEditMode:13 slot:0];

  complicationTypesBySlot2 = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
  [v12 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot2];

  if (v12)
  {
    [v5 addObject:v12];
  }

  v31 = v12;
  if ([deviceCopy isExplorer])
  {
    v17 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
    v18 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:deviceCopy];
    [v17 selectOption:v18 forCustomEditMode:11 slot:0];

    v19 = [NTKZeusColorEditOption optionWithColor:104 forDevice:deviceCopy];
    [v17 selectOption:v19 forCustomEditMode:10 slot:0];

    v20 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
    [v17 selectOption:v20 forCustomEditMode:13 slot:0];

    complicationTypesBySlot3 = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
    [v17 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot3];

    if (v17)
    {
      [v5 addObject:v17];
    }
  }

  for (i = -1; i != 3; ++i)
  {
    v23 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
    if (v23)
    {
      v24 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:deviceCopy];
      [v23 selectOption:v24 forCustomEditMode:11 slot:0];

      if (i > 2)
      {
        v25 = 1;
      }

      else
      {
        v25 = qword_37438[i];
      }

      v26 = [NTKZeusColorEditOption optionWithColor:7 forDevice:deviceCopy];
      [v23 selectOption:v26 forCustomEditMode:10 slot:0];

      v27 = [NTKZeusAnalogStyleEditOption optionWithStyle:v25 forDevice:deviceCopy];
      [v23 selectOption:v27 forCustomEditMode:13 slot:0];

      complicationTypesBySlot4 = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
      [v23 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot4];

      [v5 addObject:v23];
    }
  }

  v29 = [v5 copy];

  return v29;
}

- (id)_gloryEDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = [(NTKZeusAnalogFaceBundle *)self _legacyDefaultFacesForDevice:deviceCopy];
  [v5 addObjectsFromArray:v6];

  if ([deviceCopy deviceCategory] != &dword_0 + 1)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
      if (v10)
      {
        v11 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:deviceCopy];
        [v10 selectOption:v11 forCustomEditMode:11 slot:0];

        if (v7)
        {
          v12 = 3004;
        }

        else
        {
          v12 = 3003;
        }

        v13 = [NTKZeusColorEditOption optionWithColor:v12 forDevice:deviceCopy];
        [v10 selectOption:v13 forCustomEditMode:10 slot:0];

        v14 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
        [v10 selectOption:v14 forCustomEditMode:13 slot:0];

        complicationTypesBySlot = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
        [v10 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

        [v5 insertObject:v10 atIndex:v7];
      }

      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
  }

  v16 = [v5 copy];

  return v16;
}

- (id)_graceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = +[NSMutableArray array];
  if ([deviceCopy isZeusBlack])
  {
    [v6 addObject:&off_46DA0];
  }

  if ([deviceCopy isExplorer])
  {
    [v6 addObject:&off_46DB8];
  }

  [v6 addObjectsFromArray:&off_47D40];
  if ([deviceCopy deviceCategory] != &dword_0 + 1)
  {
    [v6 addObjectsFromArray:&off_47D58];
  }

  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
      if (v8)
      {
        v9 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:deviceCopy];
        [v8 selectOption:v9 forCustomEditMode:11 slot:0];

        v10 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
        [v8 selectOption:v10 forCustomEditMode:13 slot:0];

        v11 = [v6 objectAtIndexedSubscript:v7];
        v12 = +[NTKZeusColorEditOption optionWithColor:forDevice:](NTKZeusColorEditOption, "optionWithColor:forDevice:", [v11 integerValue], deviceCopy);
        [v8 selectOption:v12 forCustomEditMode:10 slot:0];

        complicationTypesBySlot = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
        [v8 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

        [v5 addObject:v8];
      }

      ++v7;
    }

    while ([v6 count] > v7);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)_spring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_242C;
  v11[3] = &unk_44990;
  v6 = deviceCopy;
  v12 = v6;
  selfCopy = self;
  v14 = v5;
  v7 = v5;
  v8 = objc_retainBlock(v11);
  if ([v6 deviceCategory] != &dword_0 + 1)
  {
    (v8[2])(v8, 3010);
    (v8[2])(v8, 3011);
  }

  (v8[2])(v8, 7);
  if ([v6 isExplorer])
  {
    (v8[2])(v8, 104);
  }

  (v8[2])(v8, 102);
  v9 = [v7 copy];

  return v9;
}

- (id)_fall2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  +[NSMutableArray array];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_26B8;
  v10[3] = &unk_44990;
  v11 = deviceCopy;
  v13 = v12 = self;
  v5 = v13;
  v6 = deviceCopy;
  v7 = objc_retainBlock(v10);
  (v7[2])(v7, 7);
  (v7[2])(v7, 3013);
  (v7[2])(v7, 3014);
  (v7[2])(v7, 3015);
  (v7[2])(v7, 3016);
  (v7[2])(v7, 3012);
  (v7[2])(v7, 3017);
  v8 = [v5 copy];

  return v8;
}

- (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTop;
  v4[1] = NTKComplicationSlotBottom;
  v5[0] = &off_47D70;
  v5[1] = &off_47D88;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)heroSpring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy deviceCategory] != &dword_0 + 1)
  {
    v6 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
    v7 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:deviceCopy];
    [v6 selectOption:v7 forCustomEditMode:11 slot:0];

    v8 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
    [v6 selectOption:v8 forCustomEditMode:13 slot:0];

    v9 = [NTKZeusColorEditOption optionWithColor:3010 forDevice:deviceCopy];
    [v6 selectOption:v9 forCustomEditMode:10 slot:0];

    complicationTypesBySlot = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
    [v6 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

    if (v6)
    {
      [v5 addObject:v6];
    }

    v11 = [v6 copy];
    v12 = [NTKZeusColorEditOption optionWithColor:3011 forDevice:deviceCopy];
    [v11 selectOption:v12 forCustomEditMode:10 slot:0];

    if (v11)
    {
      [v5 addObject:v11];
    }
  }

  v13 = [v5 copy];

  return v13;
}

- (id)heroGraceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    v5 = 0;
  }

  else
  {
    if ([deviceCopy isZeusBlack])
    {
      v6 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
      v7 = [NTKZeusColorEditOption optionWithColor:3009 forDevice:deviceCopy];
      [v6 selectOption:v7 forCustomEditMode:10 slot:0];

      complicationTypesBySlot = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
      [v6 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

      if (v6)
      {
        v22 = v6;
        v5 = [NSArray arrayWithObjects:&v22 count:1];
      }

      else
      {
        v5 = &__NSArray0__struct;
      }
    }

    else
    {
      +[NSMutableArray array];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_2DAC;
      v21 = v20[3] = &unk_449B8;
      v6 = v21;
      v9 = objc_retainBlock(v20);
      v10 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
      v11 = [NTKZeusColorEditOption optionWithColor:3006 forDevice:deviceCopy];
      [v10 selectOption:v11 forCustomEditMode:10 slot:0];

      complicationTypesBySlot2 = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
      [v10 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot2];

      (v9[2])(v9, v10);
      v13 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
      v14 = [NTKZeusColorEditOption optionWithColor:3007 forDevice:deviceCopy];
      [v13 selectOption:v14 forCustomEditMode:10 slot:0];

      complicationTypesBySlot3 = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
      [v13 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot3];

      (v9[2])(v9, v13);
      v16 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
      v17 = [NTKZeusColorEditOption optionWithColor:3008 forDevice:deviceCopy];
      [v16 selectOption:v17 forCustomEditMode:10 slot:0];

      complicationTypesBySlot4 = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
      [v16 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot4];

      (v9[2])(v9, v16);
      v5 = [v6 copy];
    }
  }

  return v5;
}

- (id)heroGloryEDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  [(NTKZeusAnalogFaceBundle *)self heroLegacyDefaultFacesForDevice:deviceCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 faceStyle] == &dword_C + 2)
        {
          v11 = [NTKZeusColorEditOption optionWithColor:3003 forDevice:deviceCopy];
          [v10 selectOption:v11 forCustomEditMode:10 slot:0];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [v5 copy];

  return v12;
}

- (id)heroLegacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [NTKFace defaultFaceOfStyle:14 forDevice:deviceCopy];
    v7 = [NTKZeusColorEditOption optionWithColor:3000 forDevice:deviceCopy];
    [v6 selectOption:v7 forCustomEditMode:10 slot:0];

    v8 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
    [v6 selectOption:v8 forCustomEditMode:13 slot:0];

    complicationTypesBySlot = [(NTKZeusAnalogFaceBundle *)self complicationTypesBySlot];
    [v6 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

    if (v6)
    {
      v11 = v6;
      v5 = [NSArray arrayWithObjects:&v11 count:1];
    }

    else
    {
      v5 = &__NSArray0__struct;
    }
  }

  return v5;
}

@end