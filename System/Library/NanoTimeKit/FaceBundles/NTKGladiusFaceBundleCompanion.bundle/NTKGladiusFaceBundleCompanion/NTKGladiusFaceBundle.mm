@interface NTKGladiusFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKGladiusFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKGladiusFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v8.receiver = self;
    v8.super_class = NTKGladiusFaceBundle;
    v5 = [(NTKGladiusFaceBundle *)&v8 galleryFacesForDevice:deviceCopy];

    [v5 enumerateObjectsUsingBlock:&stru_209B8];
  }

  else
  {
    v6 = [(NTKGladiusFaceBundle *)self defaultFaceForDevice:deviceCopy];

    v9 = v6;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v8[0] = &off_215D8;
    v4 = [NTKGladiusStyleEditOption _orderedValuesForDevice:deviceCopy];
    v8[1] = &off_215F0;
    v9[0] = v4;
    v5 = [NTKGladiusLightEditOption _orderedValuesForDevice:deviceCopy];
    v9[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)galleryPigmentsForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v6 = ntk_seasons_fall2021_blue11;
    v13[0] = ntk_seasons_fall2021_blue11;
    v13[1] = ntk_seasons_fall2021_blue11;
    v7 = [NSArray arrayWithObjects:v13 count:2];
    [v5 addObjectsFromArray:v7];

    v8 = [(NTKGladiusFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v9 = [v8 defaultOptionForCustomEditMode:10 slot:0];
    fullname = [v9 fullname];
    LODWORD(v6) = [fullname isEqualToString:v6];

    if (v6)
    {
      [v5 addObject:@"gladius.special.graphite"];
    }

    else
    {
      fullname2 = [v9 fullname];
      [v5 addObject:fullname2];
    }
  }

  return v5;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3669496134])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKGladiusFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:400];
    v9 = v7;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

@end