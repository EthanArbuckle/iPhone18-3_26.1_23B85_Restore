@interface NTKSalmonFaceBundle
+ (id)identifier;
- (id)_legacyGalleryFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKSalmonFaceBundle

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
  v6 = [NTKSalmonFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [(NTKSalmonFaceBundle *)self defaultFaceForDevice:deviceCopy];
  if ([v5 deviceSupportsPigmentEditOption])
  {
    v8.receiver = self;
    v8.super_class = NTKSalmonFaceBundle;
    v6 = [(NTKSalmonFaceBundle *)&v8 galleryFacesForDevice:deviceCopy];

    [v6 enumerateObjectsUsingBlock:&stru_39378];
  }

  else
  {
    v6 = [(NTKSalmonFaceBundle *)self _legacyGalleryFacesForDevice:deviceCopy];
  }

  return v6;
}

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v3 = [NTKPigmentEditOption duotoneNameWithName:ntk_evergreen_navyBlue otherName:ntk_evergreen_watermelon];
    v4 = ntk_evergreen_warmGray;
    v5 = [NTKPigmentEditOption duotoneNameWithName:ntk_evergreen_white otherName:ntk_evergreen_warmGray, v3];
    v9[1] = v5;
    v6 = [NTKPigmentEditOption duotoneNameWithName:ntk_evergreen_evergreen otherName:v4];
    v9[2] = v6;
    v7 = [NSArray arrayWithObjects:v9 count:3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_legacyGalleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [&off_3AD78 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(&off_3AD78);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        identifier = [objc_opt_class() identifier];
        analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
        v12 = [NTKSalmonFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

        if (v12)
        {
          v13 = +[NTKSalmonColorEditOption optionWithColor:forDevice:](NTKSalmonColorEditOption, "optionWithColor:forDevice:", [v9 unsignedIntValue], deviceCopy);
          [v12 selectOption:v13 forCustomEditMode:10 slot:0];

          [v4 addObject:v12];
        }
      }

      v6 = [&off_3AD78 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v6 = [(NTKSalmonFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:500];
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