@interface NTKDolomiteFaceBundle
- (BOOL)_hasHWDefaultColorForDevice:(id)device;
- (id)_sortableFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKDolomiteFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKDolomiteFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_D5CE60;
  v6 = &off_D5CE78;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKDolomiteFaceBundle;
  v5 = [(NTKDolomiteFaceBundle *)&v15 galleryFacesForDevice:deviceCopy];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_83A4;
  v12 = &unk_D5C550;
  selfCopy = self;
  v14 = deviceCopy;
  v6 = deviceCopy;
  [v5 enumerateObjectsUsingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

- (BOOL)_hasHWDefaultColorForDevice:(id)device
{
  v3 = [(NTKDolomiteFaceBundle *)self defaultFaceForDevice:device];
  v4 = [v3 defaultOptionForCustomEditMode:10 slot:0];
  fullname = [v4 fullname];
  v6 = [fullname isEqualToString:@"dolomite.dynamic"];

  return v6 ^ 1;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v18[0] = @"dolomite.dynamic";
    v18[1] = @"dolomite.color02";
    v18[2] = @"dolomite.color04";
    v18[3] = ntk_seasons_fall2025_neonYellow;
    v6 = [NSArray arrayWithObjects:v18 count:4];
    [v5 addObjectsFromArray:v6];

    v7 = [(NTKDolomiteFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v8 = [v7 defaultOptionForCustomEditMode:10 slot:0];
    fullname = [v8 fullname];
    v10 = [fullname isEqualToString:@"dolomite.dynamic"];

    if (v10)
    {
      v17[0] = ntk_seasons_fall2025_forest;
      v17[1] = ntk_seasons_fall2025_anchorBlue;
      fullname2 = [NSArray arrayWithObjects:v17 count:2];
      [v5 addObjectsFromArray:fullname2];
    }

    else
    {
      fullname2 = [v8 fullname];
      v16[0] = fullname2;
      fullname3 = [v8 fullname];
      v16[1] = fullname3;
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

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3669496134])
  {
    v5 = [(NTKDolomiteFaceBundle *)self _sortableFacesForDevice:deviceCopy];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_sortableFacesForDevice:(id)device
{
  v3 = [(NTKDolomiteFaceBundle *)self defaultFaceForDevice:device];
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