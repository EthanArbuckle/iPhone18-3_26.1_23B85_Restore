@interface NTKProteusFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKProteusFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2708;
  v9[3] = &unk_10420;
  v10 = v3;
  v6 = v3;
  v7 = [NTKProteusFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v6 initCustomization:v9];

  return v7;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v8.receiver = self;
    v8.super_class = NTKProteusFaceBundle;
    v5 = [(NTKProteusFaceBundle *)&v8 galleryFacesForDevice:v4];

    [v5 enumerateObjectsUsingBlock:&stru_10460];
  }

  else
  {
    v6 = [(NTKProteusFaceBundle *)self defaultFaceForDevice:v4];

    v9 = v6;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5[0] = &off_10B30;
    v5[1] = &off_10B78;
    v6[0] = &off_10D70;
    v6[1] = &off_10D88;
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
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v6 = ntk_standard_cream;
    v13[0] = ntk_standard_cream;
    v13[1] = ntk_seasons_fall2025_neonYellow;
    v7 = [NSArray arrayWithObjects:v13 count:2];
    [v5 addObjectsFromArray:v7];

    v8 = [(NTKProteusFaceBundle *)self defaultFaceForDevice:v4];
    v9 = [v8 defaultOptionForCustomEditMode:10 slot:0];
    v10 = [v9 fullname];
    LODWORD(v6) = [v10 isEqualToString:v6];

    if (v6)
    {
      [v5 addObject:ntk_seasons_fall2025_forest];
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
  if (([v4 supportsPDRCapability:360081074] & 1) == 0 && objc_msgSend(v4, "supportsPDRCapability:", 4094027452) && objc_msgSend(v4, "deviceCategory") == &dword_0 + 3)
  {
    v5 = [(NTKProteusFaceBundle *)self defaultFaceForDevice:v4];
    v6 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v5 priority:400];
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