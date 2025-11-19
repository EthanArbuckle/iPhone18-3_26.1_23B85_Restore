@interface NTKSharkFaceBundle
+ (id)identifier;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKSharkFaceBundle

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
  v6 = [NTKSharkFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v16.receiver = self;
    v16.super_class = NTKSharkFaceBundle;
    v6 = [(NTKSharkFaceBundle *)&v16 galleryFacesForDevice:v4];
    [v5 addObjectsFromArray:v6];

    [v5 enumerateObjectsUsingBlock:&stru_38A48];
  }

  else
  {
    v7 = [NTKSharkTimescaleEditOption numberOfOptionsForDevice:v4];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [objc_opt_class() identifier];
        v11 = [objc_opt_class() analyticsIdentifier];
        v12 = [NTKSharkFace bundledFaceWithIdentifier:v10 analyticsIdentifier:v11 forDevice:v4 initCustomization:0];

        if (v12)
        {
          v13 = [NTKSharkTimescaleEditOption optionAtIndex:i forDevice:v4];
          [v12 selectOption:v13 forCustomEditMode:11 slot:0];

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
  v3 = a3;
  if ([v3 isRunningNapiliGMOrLater])
  {
    v7 = &off_3A3E0;
    v4 = [NTKSharkTimescaleEditOption _orderedValuesForDevice:v3];
    v8 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5[0] = ntk_evergreen_navyBlue;
    v5[1] = ntk_evergreen_white;
    v5[2] = ntk_evergreen_evergreen;
    v5[3] = ntk_evergreen_palePink;
    v5[4] = ntk_evergreen_slate;
    v3 = [NSArray arrayWithObjects:v5 count:5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    v6 = [(NTKSharkFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:400];
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