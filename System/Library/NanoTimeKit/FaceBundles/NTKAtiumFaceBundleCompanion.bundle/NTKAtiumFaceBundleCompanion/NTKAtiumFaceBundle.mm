@interface NTKAtiumFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKAtiumFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = +[NTKAtiumFaceBundle identifier];
  v5 = [NTKAtiumFace bundledFaceWithIdentifier:v4 forDevice:v3 initCustomization:0];

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_CAB8;
  v6 = &off_CAD0;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v20.receiver = self;
    v20.super_class = NTKAtiumFaceBundle;
    v6 = [(NTKAtiumFaceBundle *)&v20 galleryFacesForDevice:v4];
    [v5 addObjectsFromArray:v6];

    [v5 enumerateObjectsUsingBlock:&stru_C3C0];
  }

  else
  {
    v7 = [v4 materialType] - 8;
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
    v17 = self;
    v18 = v4;
    v19 = v5;
    [v9 enumerateObjectsUsingBlock:&v12];
  }

  v10 = [v5 copy];

  return v10;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    [v5 addObjectsFromArray:&off_CCA8];
    v6 = [(NTKAtiumFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [v6 defaultOptionForCustomEditMode:10 slot:0];
    v8 = [v7 fullname];
    v9 = [v8 isEqualToString:@"atium.special.threecolor3"];

    if (v9)
    {
      [v5 addObject:ntk_seasons_fall2024_blueCloud];
      [v5 addObject:ntk_special_rainbow];
    }

    else
    {
      v10 = [v7 fullname];
      [v5 insertObject:v10 atIndex:0];

      v11 = [v7 fullname];
      [v5 insertObject:v11 atIndex:0];
    }
  }

  return v5;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:3669496134])
  {
    v5 = [(NTKAtiumFaceBundle *)self defaultFaceForDevice:v4];
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