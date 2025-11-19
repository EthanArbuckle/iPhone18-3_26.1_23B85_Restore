@interface NTKGladiusFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKGladiusFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKGladiusFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v8.receiver = self;
    v8.super_class = NTKGladiusFaceBundle;
    v5 = [(NTKGladiusFaceBundle *)&v8 galleryFacesForDevice:v4];

    [v5 enumerateObjectsUsingBlock:&stru_209B8];
  }

  else
  {
    v6 = [(NTKGladiusFaceBundle *)self defaultFaceForDevice:v4];

    v9 = v6;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  v3 = a3;
  if ([v3 isRunningNapiliGMOrLater])
  {
    v8[0] = &off_215D8;
    v4 = [NTKGladiusStyleEditOption _orderedValuesForDevice:v3];
    v8[1] = &off_215F0;
    v9[0] = v4;
    v5 = [NTKGladiusLightEditOption _orderedValuesForDevice:v3];
    v9[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v6 = ntk_seasons_fall2021_blue11;
    v13[0] = ntk_seasons_fall2021_blue11;
    v13[1] = ntk_seasons_fall2021_blue11;
    v7 = [NSArray arrayWithObjects:v13 count:2];
    [v5 addObjectsFromArray:v7];

    v8 = [(NTKGladiusFaceBundle *)self defaultFaceForDevice:v4];
    v9 = [v8 defaultOptionForCustomEditMode:10 slot:0];
    v10 = [v9 fullname];
    LODWORD(v6) = [v10 isEqualToString:v6];

    if (v6)
    {
      [v5 addObject:@"gladius.special.graphite"];
    }

    else
    {
      v11 = [v9 fullname];
      [v5 addObject:v11];
    }
  }

  return v5;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:3669496134])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKGladiusFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:400];
    v9 = v7;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

@end