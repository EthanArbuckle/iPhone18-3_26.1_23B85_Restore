@interface NTKPoodleFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
- (int64_t)_hermesGroupZOrderForDevice:(id)device;
@end

@implementation NTKPoodleFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKPoodleFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_475B0;
  v6 = &off_475C8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v25.receiver = self;
    v25.super_class = NTKPoodleFaceBundle;
    v6 = [(NTKPoodleFaceBundle *)&v25 galleryFacesForDevice:deviceCopy];
    [v5 addObjectsFromArray:v6];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_15688;
    v23[3] = &unk_44FE0;
    v23[4] = self;
    v24 = deviceCopy;
    [v5 enumerateObjectsUsingBlock:v23];
  }

  else
  {
    identifier = [objc_opt_class() identifier];
    [NTKPoodleColorEditOption _orderedValuesForDevice:deviceCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v22 = 0u;
    v8 = [obj countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          intValue = [*(*(&v19 + 1) + 8 * i) intValue];
          analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
          v14 = [NTKPoodleFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

          if (v14)
          {
            v15 = [NTKPoodleColorEditOption optionWithPoodleColor:intValue forDevice:deviceCopy];
            [v14 selectOption:v15 forCustomEditMode:10 slot:0];
            [v5 addObject:v14];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v9);
    }
  }

  v16 = [v5 copy];

  return v16;
}

- (int64_t)_hermesGroupZOrderForDevice:(id)device
{
  if (([device deviceCategory] & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    return 8000;
  }

  else
  {
    return 6000;
  }
}

- (id)galleryPigmentsForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    if ([deviceCopy deviceCategory] == &dword_4 || objc_msgSend(deviceCopy, "deviceCategory") == &dword_4 + 2)
    {
      v11 = ntk_zeus_fall2025_orangeMangue;
      v4 = &ntk_zeus_fall2025_bleuHydra;
      v5 = &ntk_zeus_fall2025_vertComics;
      v6 = &v11;
    }

    else
    {
      v10 = ntk_zeus_fall2025_bordeaux;
      v4 = &ntk_zeus_blanc;
      v5 = &ntk_zeus_fall2025_bleuPastel;
      v6 = &v10;
    }

    v8 = *v4;
    v6[1] = *v5;
    v6[2] = v8;
    v7 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:4094027452])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKPoodleFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:800];
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