@interface NTKDolomiteFaceBundle
- (BOOL)_hasHWDefaultColorForDevice:(id)a3;
- (id)_sortableFacesForDevice:(id)a3;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKDolomiteFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKDolomiteFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_D5CE60;
  v6 = &off_D5CE78;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NTKDolomiteFaceBundle;
  v5 = [(NTKDolomiteFaceBundle *)&v15 galleryFacesForDevice:v4];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_83A4;
  v12 = &unk_D5C550;
  v13 = self;
  v14 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

- (BOOL)_hasHWDefaultColorForDevice:(id)a3
{
  v3 = [(NTKDolomiteFaceBundle *)self defaultFaceForDevice:a3];
  v4 = [v3 defaultOptionForCustomEditMode:10 slot:0];
  v5 = [v4 fullname];
  v6 = [v5 isEqualToString:@"dolomite.dynamic"];

  return v6 ^ 1;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v10[0] = &off_D5CE90;
    v10[1] = &off_D5CED8;
    v11[0] = &off_D5D128;
    v11[1] = &off_D5D140;
    v3 = v11;
    v4 = v10;
    v5 = 2;
  }

  else
  {
    v8 = &off_D5CE90;
    v9 = &off_D5D158;
    v3 = &v9;
    v4 = &v8;
    v5 = 1;
  }

  v6 = [NSDictionary dictionaryWithObjects:v3 forKeys:v4 count:v5];

  return v6;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v18[0] = @"dolomite.dynamic";
    v18[1] = @"dolomite.color02";
    v18[2] = @"dolomite.color04";
    v18[3] = ntk_seasons_fall2025_neonYellow;
    v6 = [NSArray arrayWithObjects:v18 count:4];
    [v5 addObjectsFromArray:v6];

    v7 = [(NTKDolomiteFaceBundle *)self defaultFaceForDevice:v4];
    v8 = [v7 defaultOptionForCustomEditMode:10 slot:0];
    v9 = [v8 fullname];
    v10 = [v9 isEqualToString:@"dolomite.dynamic"];

    if (v10)
    {
      v17[0] = ntk_seasons_fall2025_forest;
      v17[1] = ntk_seasons_fall2025_anchorBlue;
      v11 = [NSArray arrayWithObjects:v17 count:2];
      [v5 addObjectsFromArray:v11];
    }

    else
    {
      v11 = [v8 fullname];
      v16[0] = v11;
      v12 = [v8 fullname];
      v16[1] = v12;
      v13 = [NSArray arrayWithObjects:v16 count:2];
      [v5 addObjectsFromArray:v13];
    }
  }

  else
  {
    v15[0] = @"dolomite.dynamic";
    v15[1] = @"dolomite.color02";
    v15[2] = @"dolomite.color04";
    v15[3] = @"dolomite.color11";
    v15[4] = ntk_seasons_fall2024_chartreuse;
    v15[5] = ntk_seasons_fall2024_denim;
    v15[6] = ntk_seasons_fall2024_plum;
    v15[7] = ntk_seasons_fall2024_lakeGreen;
    v15[8] = @"dolomite.silver";
    v15[9] = @"dolomite.rosegold";
    v15[10] = @"dolomite.jetblack";
    v15[11] = @"dolomite.silver";
    v7 = [NSArray arrayWithObjects:v15 count:12];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:3669496134])
  {
    v5 = [(NTKDolomiteFaceBundle *)self _sortableFacesForDevice:v4];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_sortableFacesForDevice:(id)a3
{
  v3 = [(NTKDolomiteFaceBundle *)self defaultFaceForDevice:a3];
  v4 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v3 priority:100];
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

@end