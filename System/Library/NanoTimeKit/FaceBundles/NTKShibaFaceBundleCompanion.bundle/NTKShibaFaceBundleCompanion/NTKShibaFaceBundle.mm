@interface NTKShibaFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKShibaFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKShibaFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_C600;
  v6 = &off_C618;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v16.receiver = self;
    v16.super_class = NTKShibaFaceBundle;
    v6 = [(NTKShibaFaceBundle *)&v16 galleryFacesForDevice:deviceCopy];
    [v5 addObjectsFromArray:v6];

    [v5 enumerateObjectsUsingBlock:&stru_C318];
  }

  else
  {
    v7 = [NTKShibaStyleEditOption numberOfOptionsForDevice:deviceCopy];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        identifier = [objc_opt_class() identifier];
        analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
        v12 = [NTKShibaFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

        if (v12)
        {
          v13 = [NTKShibaStyleEditOption optionAtIndex:i forDevice:deviceCopy];
          [v12 selectOption:v13 forCustomEditMode:15 slot:0];

          [v5 addObject:v12];
        }
      }
    }
  }

  v14 = [v5 copy];

  return v14;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5 = &off_C630;
    v6 = &off_CB70;
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
    v3 = ntk_victory_black;
    ntk_special_multicolor = [NTKPigmentEditOption duotoneNameWithName:ntk_victory_purePlatinum otherName:ntk_victory_black, ntk_special_multicolor];
    v8[1] = ntk_special_multicolor;
    v5 = [NTKPigmentEditOption duotoneNameWithName:v3 otherName:ntk_victory_volt];
    v8[2] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    v6 = [(NTKShibaFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:900];
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