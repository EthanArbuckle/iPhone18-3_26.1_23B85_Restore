@interface NTKGlobetrotterFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKGlobetrotterFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKGlobetrotterFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if (([deviceCopy supportsPDRCapability:360081074] & 1) != 0 || !objc_msgSend(deviceCopy, "supportsPDRCapability:", 4094027452))
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    if ([deviceCopy deviceCategory] == &dword_0 + 3)
    {
      v5 = 100;
    }

    else
    {
      v5 = 200;
    }

    v6 = [(NTKGlobetrotterFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:v5];
    v8 = v7;
    if (v7)
    {
      v11 = v7;
      v9 = [NSArray arrayWithObjects:&v11 count:1];
    }

    else
    {
      v9 = &__NSArray0__struct;
    }
  }

  return v9;
}

- (id)galleryFacesForDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = NTKGlobetrotterFaceBundle;
  v3 = [(NTKGlobetrotterFaceBundle *)&v5 galleryFacesForDevice:device];
  [v3 enumerateObjectsUsingBlock:&stru_10510];

  return v3;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = &off_115B0;
    v5[1] = &off_115F8;
    v6[0] = &off_11250;
    v6[1] = &off_11268;
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
    v5[0] = ntk_evergreen_navyBlue;
    v5[1] = ntk_evergreen_white;
    v5[2] = ntk_evergreen_evergreen;
    v5[3] = ntk_evergreen_black;
    v5[4] = ntk_evergreen_palePink;
    v5[5] = ntk_seasons_fall2021_blue11;
    v3 = [NSArray arrayWithObjects:v5 count:6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end