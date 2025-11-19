@interface NTKHadesFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKHadesFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKHadesFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_47838;
  v6 = &off_47850;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKHadesFaceBundle;
  v3 = [(NTKHadesFaceBundle *)&v5 galleryFacesForDevice:a3];
  [v3 enumerateObjectsUsingBlock:&stru_45378];

  return v3;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if (([v4 supportsPDRCapability:360081074] & 1) != 0 || !objc_msgSend(v4, "supportsPDRCapability:", 4094027452))
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    if ([v4 deviceCategory] == &dword_4)
    {
      v5 = 600;
    }

    else if ([v4 deviceCategory] == &dword_0 + 3)
    {
      v5 = 600;
    }

    else
    {
      v5 = 400;
    }

    v7 = [(NTKHadesFaceBundle *)self defaultFaceForDevice:v4];
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