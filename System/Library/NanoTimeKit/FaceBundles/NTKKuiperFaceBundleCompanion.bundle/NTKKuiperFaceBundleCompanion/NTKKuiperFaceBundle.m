@interface NTKKuiperFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryTitle;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKKuiperFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKKuiperFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKKuiperFaceBundle;
  v3 = [(NTKKuiperFaceBundle *)&v5 galleryFacesForDevice:a3];
  [v3 enumerateObjectsUsingBlock:&stru_107E8];

  return v3;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5[0] = &off_10F50;
    v5[1] = &off_10FB0;
    v6[0] = &off_11168;
    v6[1] = &off_11180;
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
    v13[0] = ntk_seasons_spring2022_green5;
    v13[1] = ntk_standard_lightPurple;
    v6 = [NSArray arrayWithObjects:v13 count:2];
    [v5 addObjectsFromArray:v6];

    v7 = [(NTKKuiperFaceBundle *)self defaultFaceForDevice:v4];
    v8 = [v7 defaultOptionForCustomEditMode:10 slot:0];
    v9 = [v8 fullname];
    v10 = [v9 isEqualToString:ntk_seasons_spring2022_blue2];

    if (v10)
    {
      [v5 addObject:ntk_seasons_fall2025_neonYellow];
    }

    else
    {
      v11 = [v8 fullname];
      [v5 addObject:v11];
    }
  }

  return v5;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:3887189377])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKKuiperFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:600];
    v9 = v7;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

- (id)galleryTitle
{
  v2 = objc_opt_class();

  return [v2 localizedStringForKey:@"FACE_STYLE_KUIPER_IN_TITLE_CASE" comment:@"Kuiper"];
}

@end