@interface NTKTroutFaceBundle
+ (id)identifier;
- (id)_legacyGalleryFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKTroutFaceBundle

+ (id)identifier
{
  v3 = [NSBundle bundleForClass:self];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = NSStringFromClass(self);
  v6 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, v5];

  return v6;
}

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKTroutFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [(NTKTroutFaceBundle *)self defaultFaceForDevice:deviceCopy];
  if ([v5 deviceSupportsPigmentEditOption])
  {
    v8.receiver = self;
    v8.super_class = NTKTroutFaceBundle;
    v6 = [(NTKTroutFaceBundle *)&v8 galleryFacesForDevice:deviceCopy];

    [v6 enumerateObjectsUsingBlock:&stru_38728];
  }

  else
  {
    v6 = [(NTKTroutFaceBundle *)self _legacyGalleryFacesForDevice:deviceCopy];
  }

  return v6;
}

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
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

- (id)_legacyGalleryFacesForDevice:(id)device
{
  deviceCopy = device;
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
        identifier = [objc_opt_class() identifier];
        analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
        v12 = [NTKTroutFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

        if (v12)
        {
          v13 = +[NTKAlaskanColorEditOption optionWithColor:forDevice:](NTKTroutColorEditOption, "optionWithColor:forDevice:", [v9 unsignedIntValue], deviceCopy);
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

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:4094027452])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKTroutFaceBundle *)self defaultFaceForDevice:deviceCopy];
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