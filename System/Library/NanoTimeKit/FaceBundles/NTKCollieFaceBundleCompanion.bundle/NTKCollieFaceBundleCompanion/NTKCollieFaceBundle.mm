@interface NTKCollieFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKCollieFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKCollieFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v17 = @"unicorn";
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  v6 = [v5 mutableCopy];

  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v16[0] = @"ghost";
    v16[1] = @"giraffe";
    v7 = [NSArray arrayWithObjects:v16 count:2];
    [v6 addObjectsFromArray:v7];
  }

  v15.receiver = self;
  v15.super_class = NTKCollieFaceBundle;
  v8 = [(NTKCollieFaceBundle *)&v15 galleryFacesForDevice:deviceCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_149E8;
  v12[3] = &unk_2D0E0;
  v13 = v6;
  v14 = deviceCopy;
  v9 = deviceCopy;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v12];

  return v8;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5 = &off_2E018;
    v6 = &off_2DE50;
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
  if ([device isRunningNapiliGMOrLater])
  {
    v8[0] = ntk_seasons_spring2015_purple;
    v8[1] = ntk_seasons_fall2024_ink;
    v8[2] = ntk_seasons_fall2015_stone;
    v3 = v8;
    v4 = 3;
  }

  else
  {
    v7 = ntk_seasons_spring2015_purple;
    v3 = &v7;
    v4 = 1;
  }

  v5 = [NSArray arrayWithObjects:v3 count:v4];

  return v5;
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
    v6 = [(NTKCollieFaceBundle *)self galleryFacesForDevice:deviceCopy];
    +[NSMutableArray array];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_14F08;
    v13 = v12 = &unk_2D108;
    v14 = 600;
    v7 = v13;
    [v6 enumerateObjectsUsingBlock:&v9];
    v5 = [v7 copy];
  }

  return v5;
}

@end