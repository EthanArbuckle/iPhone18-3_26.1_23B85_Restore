@interface NTKCollieFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKCollieFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKCollieFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v17 = @"unicorn";
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  v6 = [v5 mutableCopy];

  if ([v4 isRunningNapiliGMOrLater])
  {
    v16[0] = @"ghost";
    v16[1] = @"giraffe";
    v7 = [NSArray arrayWithObjects:v16 count:2];
    [v6 addObjectsFromArray:v7];
  }

  v15.receiver = self;
  v15.super_class = NTKCollieFaceBundle;
  v8 = [(NTKCollieFaceBundle *)&v15 galleryFacesForDevice:v4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_149E8;
  v12[3] = &unk_2D0E0;
  v13 = v6;
  v14 = v4;
  v9 = v4;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v12];

  return v8;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
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

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:4094027452])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKCollieFaceBundle *)self galleryFacesForDevice:v4];
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