@interface NTKShibaFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKShibaFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKShibaFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_C600;
  v6 = &off_C618;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v16.receiver = self;
    v16.super_class = NTKShibaFaceBundle;
    v6 = [(NTKShibaFaceBundle *)&v16 galleryFacesForDevice:v4];
    [v5 addObjectsFromArray:v6];

    [v5 enumerateObjectsUsingBlock:&stru_C318];
  }

  else
  {
    v7 = [NTKShibaStyleEditOption numberOfOptionsForDevice:v4];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [objc_opt_class() identifier];
        v11 = [objc_opt_class() analyticsIdentifier];
        v12 = [NTKShibaFace bundledFaceWithIdentifier:v10 analyticsIdentifier:v11 forDevice:v4 initCustomization:0];

        if (v12)
        {
          v13 = [NTKShibaStyleEditOption optionAtIndex:i forDevice:v4];
          [v12 selectOption:v13 forCustomEditMode:15 slot:0];

          [v5 addObject:v12];
        }
      }
    }
  }

  v14 = [v5 copy];

  return v14;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v3 = ntk_victory_black;
    v4 = [NTKPigmentEditOption duotoneNameWithName:ntk_victory_purePlatinum otherName:ntk_victory_black, ntk_special_multicolor];
    v8[1] = v4;
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

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:4094027452])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKShibaFaceBundle *)self defaultFaceForDevice:v4];
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