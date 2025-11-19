@interface NTKTroutFaceBundle
+ (id)identifier;
- (id)_legacyGalleryFacesForDevice:(id)a3;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKTroutFaceBundle

+ (id)identifier
{
  v3 = [NSBundle bundleForClass:a1];
  v4 = [v3 bundleIdentifier];
  v5 = NSStringFromClass(a1);
  v6 = [NSString stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKTroutFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = [(NTKTroutFaceBundle *)self defaultFaceForDevice:v4];
  if ([v5 deviceSupportsPigmentEditOption])
  {
    v8.receiver = self;
    v8.super_class = NTKTroutFaceBundle;
    v6 = [(NTKTroutFaceBundle *)&v8 galleryFacesForDevice:v4];

    [v6 enumerateObjectsUsingBlock:&stru_38728];
  }

  else
  {
    v6 = [(NTKTroutFaceBundle *)self _legacyGalleryFacesForDevice:v4];
  }

  return v6;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5[0] = ntk_evergreen_navyBlue;
    v5[1] = ntk_evergreen_white;
    v5[2] = ntk_evergreen_evergreen;
    v3 = [NSArray arrayWithObjects:v5 count:3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_legacyGalleryFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [&off_3ACB8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(&off_3ACB8);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [objc_opt_class() identifier];
        v11 = [objc_opt_class() analyticsIdentifier];
        v12 = [NTKTroutFace bundledFaceWithIdentifier:v10 analyticsIdentifier:v11 forDevice:v3 initCustomization:0];

        if (v12)
        {
          v13 = +[NTKAlaskanColorEditOption optionWithColor:forDevice:](NTKTroutColorEditOption, "optionWithColor:forDevice:", [v9 unsignedIntValue], v3);
          [v12 selectOption:v13 forCustomEditMode:10 slot:0];

          [v4 addObject:v12];
        }
      }

      v6 = [&off_3ACB8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [v4 copy];

  return v14;
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
    v6 = [(NTKTroutFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:300];
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