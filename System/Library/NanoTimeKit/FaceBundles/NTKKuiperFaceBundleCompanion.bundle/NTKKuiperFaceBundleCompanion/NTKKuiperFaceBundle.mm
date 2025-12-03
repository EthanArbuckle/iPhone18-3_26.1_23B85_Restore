@interface NTKKuiperFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryTitle;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKKuiperFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKKuiperFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = NTKKuiperFaceBundle;
  v3 = [(NTKKuiperFaceBundle *)&v5 galleryFacesForDevice:device];
  [v3 enumerateObjectsUsingBlock:&stru_107E8];

  return v3;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v13[0] = ntk_seasons_spring2022_green5;
    v13[1] = ntk_standard_lightPurple;
    v6 = [NSArray arrayWithObjects:v13 count:2];
    [v5 addObjectsFromArray:v6];

    v7 = [(NTKKuiperFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v8 = [v7 defaultOptionForCustomEditMode:10 slot:0];
    fullname = [v8 fullname];
    v10 = [fullname isEqualToString:ntk_seasons_spring2022_blue2];

    if (v10)
    {
      [v5 addObject:ntk_seasons_fall2025_neonYellow];
    }

    else
    {
      fullname2 = [v8 fullname];
      [v5 addObject:fullname2];
    }
  }

  return v5;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3887189377])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKKuiperFaceBundle *)self defaultFaceForDevice:deviceCopy];
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