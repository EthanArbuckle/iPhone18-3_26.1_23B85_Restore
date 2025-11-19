@interface NTKGlobetrotterFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKGlobetrotterFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKGlobetrotterFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if (([v4 supportsPDRCapability:360081074] & 1) != 0 || !objc_msgSend(v4, "supportsPDRCapability:", 4094027452))
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    if ([v4 deviceCategory] == &dword_0 + 3)
    {
      v5 = 100;
    }

    else
    {
      v5 = 200;
    }

    v6 = [(NTKGlobetrotterFaceBundle *)self defaultFaceForDevice:v4];
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

- (id)galleryFacesForDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKGlobetrotterFaceBundle;
  v3 = [(NTKGlobetrotterFaceBundle *)&v5 galleryFacesForDevice:a3];
  [v3 enumerateObjectsUsingBlock:&stru_10510];

  return v3;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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