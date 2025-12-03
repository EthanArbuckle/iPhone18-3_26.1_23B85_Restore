@interface NTKHadesFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKHadesFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKHadesFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_47838;
  v6 = &off_47850;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = NTKHadesFaceBundle;
  v3 = [(NTKHadesFaceBundle *)&v5 galleryFacesForDevice:device];
  [v3 enumerateObjectsUsingBlock:&stru_45378];

  return v3;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5 = &off_47868;
    v6 = &off_48040;
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
    v5[0] = @"hades.noir";
    v5[1] = @"hades.biscuit";
    v5[2] = ntk_zeus_orange;
    v3 = [NSArray arrayWithObjects:v5 count:3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if (([deviceCopy supportsPDRCapability:360081074] & 1) != 0 || !objc_msgSend(deviceCopy, "supportsPDRCapability:", 4094027452))
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    if ([deviceCopy deviceCategory] == &dword_4)
    {
      v5 = 600;
    }

    else if ([deviceCopy deviceCategory] == &dword_0 + 3)
    {
      v5 = 600;
    }

    else
    {
      v5 = 400;
    }

    v7 = [(NTKHadesFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v8 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v7 priority:v5];
    v9 = v8;
    if (v8)
    {
      v11 = v8;
      v6 = [NSArray arrayWithObjects:&v11 count:1];
    }

    else
    {
      v6 = &__NSArray0__struct;
    }
  }

  return v6;
}

@end