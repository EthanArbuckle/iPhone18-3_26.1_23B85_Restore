@interface NTKCaliforniaFaceBundle
- (id)_californiaFacesWithColorOptions:(id)options device:(id)device;
- (id)complicationTypesBySlotForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroGraceDefaultFacesForDevice:(id)device;
- (id)heroSpring2020DefaultFacesForDevice:(id)device;
@end

@implementation NTKCaliforniaFaceBundle

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [(NTKCaliforniaFaceBundle *)self defaultFaceForDevice:deviceCopy];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v14.receiver = self;
    v14.super_class = NTKCaliforniaFaceBundle;
    v6 = [(NTKCaliforniaFaceBundle *)&v14 galleryFacesForDevice:deviceCopy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_3224;
    v12[3] = &unk_1C650;
    v12[4] = self;
    v13 = deviceCopy;
    [v6 enumerateObjectsUsingBlock:v12];
  }

  else if ([v5 deviceSupportsPigmentEditOption])
  {
    v7 = [(NTKCaliforniaFaceBundle *)self galleryDefaultPigmentOptionsForDevice:deviceCopy];
    v6 = [(NTKCaliforniaFaceBundle *)self _californiaFacesWithColorOptions:v7 device:deviceCopy];
  }

  else
  {
    v8 = [NTKCaliforniaColorEditOption optionWithCaliforniaColor:3004 forDevice:deviceCopy];
    v15[0] = v8;
    v9 = [NTKCaliforniaColorEditOption optionWithCaliforniaColor:3003 forDevice:deviceCopy];
    v15[1] = v9;
    v10 = [NSArray arrayWithObjects:v15 count:2];

    v6 = [(NTKCaliforniaFaceBundle *)self _californiaFacesWithColorOptions:v10 device:deviceCopy];
  }

  return v6;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = &off_1EC40;
    v5[1] = &off_1EC88;
    v6[0] = &off_1F5C0;
    v6[1] = &off_1F5D8;
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
    v5[2] = ntk_evergreen_evergreen;
    v5[3] = ntk_evergreen_palePink;
    v5[0] = ntk_evergreen_navyBlue;
    v5[1] = ntk_evergreen_white;
    v5[4] = ntk_evergreen_black;
    v5[5] = ntk_evergreen_white;
    v3 = [NSArray arrayWithObjects:v5 count:6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_californiaFacesWithColorOptions:(id)options device:(id)device
{
  optionsCopy = options;
  deviceCopy = device;
  v8 = +[NSMutableArray array];
  if ([deviceCopy deviceCategory] != &dword_0 + 1 && objc_msgSend(deviceCopy, "isRunningGraceOrLater"))
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_38F8;
    v22[3] = &unk_1C678;
    v23 = deviceCopy;
    selfCopy = self;
    v25 = v8;
    v9 = objc_retainBlock(v22);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = optionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          (v9[2])(v9, v15, 2, 1);
          (v9[2])(v9, v15, 0, 1);
          (v9[2])(v9, v15, -1, 1);
          (v9[2])(v9, v15, -1, 0);
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v12);
    }
  }

  v16 = [v8 copy];

  return v16;
}

- (id)heroGraceDefaultFacesForDevice:(id)device
{
  v3 = [NTKCaliforniaFace defaultFaceOfStyle:39 forDevice:device];
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)heroSpring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [NTKCaliforniaFace defaultFaceOfStyle:39 forDevice:deviceCopy];
  v6 = [(NTKCaliforniaFaceBundle *)self complicationTypesBySlotForDevice:deviceCopy];

  [v5 _setFaceGalleryComplicationTypesForSlots:v6];
  if (v5)
  {
    v9 = v5;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (id)complicationTypesBySlotForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v10[0] = NTKComplicationSlotTopLeft;
    v10[1] = NTKComplicationSlotTopRight;
    v11[0] = &off_1F5F0;
    v11[1] = &off_1F608;
    v10[2] = NTKComplicationSlotBottomLeft;
    v10[3] = NTKComplicationSlotBottomRight;
    v11[2] = &off_1F620;
    v11[3] = &off_1F638;
    v10[4] = NTKComplicationSlotSubdialTop;
    v11[4] = &off_1F650;
    v3 = v11;
    v4 = v10;
    v5 = 5;
  }

  else
  {
    v8[0] = NTKComplicationSlotTopLeft;
    v8[1] = NTKComplicationSlotTopRight;
    v9[0] = &off_1F668;
    v9[1] = &off_1F680;
    v8[2] = NTKComplicationSlotBottomLeft;
    v8[3] = NTKComplicationSlotBottomRight;
    v9[2] = &off_1F698;
    v9[3] = &off_1F6B0;
    v8[4] = NTKComplicationSlotSubdialTop;
    v8[5] = NTKComplicationSlotSubdialBottom;
    v9[4] = &off_1F6C8;
    v9[5] = &off_1F6E0;
    v3 = v9;
    v4 = v8;
    v5 = 6;
  }

  v6 = [NSDictionary dictionaryWithObjects:v3 forKeys:v4 count:v5];

  return v6;
}

@end