@interface NTKAtiumFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKAtiumFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  v4 = +[NTKAtiumFaceBundle identifier];
  v5 = [NTKAtiumFace bundledFaceWithIdentifier:v4 forDevice:deviceCopy initCustomization:0];

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_CAB8;
  v6 = &off_CAD0;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v20.receiver = self;
    v20.super_class = NTKAtiumFaceBundle;
    v6 = [(NTKAtiumFaceBundle *)&v20 galleryFacesForDevice:deviceCopy];
    [v5 addObjectsFromArray:v6];

    [v5 enumerateObjectsUsingBlock:&stru_C3C0];
  }

  else
  {
    v7 = [deviceCopy materialType] - 8;
    if (v7 <= 0x10 && ((0x1F801u >> v7) & 1) != 0)
    {
      v21 = *(&off_C430 + v7);
      v8 = [NSArray arrayWithObjects:&v21 count:1];
    }

    else
    {
      v8 = &__NSArray0__struct;
    }

    v9 = [v8 arrayByAddingObjectsFromArray:&off_CC60];

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_13DC;
    v15 = &unk_C410;
    v16 = &off_CC78;
    selfCopy = self;
    v18 = deviceCopy;
    v19 = v5;
    [v9 enumerateObjectsUsingBlock:&v12];
  }

  v10 = [v5 copy];

  return v10;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5 = &off_CB18;
    v6 = &off_CC90;
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
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    [v5 addObjectsFromArray:&off_CCA8];
    v6 = [(NTKAtiumFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [v6 defaultOptionForCustomEditMode:10 slot:0];
    fullname = [v7 fullname];
    v9 = [fullname isEqualToString:@"atium.special.threecolor3"];

    if (v9)
    {
      [v5 addObject:ntk_seasons_fall2024_blueCloud];
      [v5 addObject:ntk_special_rainbow];
    }

    else
    {
      fullname2 = [v7 fullname];
      [v5 insertObject:fullname2 atIndex:0];

      fullname3 = [v7 fullname];
      [v5 insertObject:fullname3 atIndex:0];
    }
  }

  return v5;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3669496134])
  {
    v5 = [(NTKAtiumFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v6 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v5 priority:200];
    v7 = v6;
    if (v6)
    {
      v10 = v6;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      v8 = &__NSArray0__struct;
    }
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

@end