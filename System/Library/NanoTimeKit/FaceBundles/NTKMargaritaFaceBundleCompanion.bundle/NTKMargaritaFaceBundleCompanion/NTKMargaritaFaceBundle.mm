@interface NTKMargaritaFaceBundle
- (id)_galleryEditOptionsForDevice:(id)device;
- (id)_galleryPigmentsForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKMargaritaFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKMargaritaFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v6 = [(NTKMargaritaFaceBundle *)self _galleryEditOptionsForDevice:deviceCopy];
    v7 = [v6 objectForKeyedSubscript:&off_15B40];
    v8 = [v6 objectForKeyedSubscript:&off_15B58];
    v9 = [(NTKMargaritaFaceBundle *)self _galleryPigmentsForDevice:deviceCopy];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_5D44;
    v17[3] = &unk_14708;
    v17[4] = self;
    v18 = deviceCopy;
    v19 = v8;
    v20 = v7;
    v21 = v5;
    v10 = deviceCopy;
    v11 = v7;
    v12 = v8;
    [v9 enumerateObjectsUsingBlock:v17];
  }

  else
  {
    v6 = [NTKMargaritaStripeCountEditOption optionsRestrictedByDevice:deviceCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_60E0;
    v14[3] = &unk_14730;
    v14[4] = self;
    v15 = deviceCopy;
    v16 = v5;
    v9 = deviceCopy;
    [v6 enumerateObjectsUsingBlock:v14];
  }

  return v5;
}

- (id)_galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = &off_15B40;
    v5[1] = &off_15B58;
    v6[0] = &off_16460;
    v6[1] = &off_16478;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v3 = ntk_margarita_lightBlue;
    v17[0] = ntk_margarita_lightBlue;
    v17[1] = ntk_margarita_royalBlue;
    v17[2] = ntk_margarita_purple;
    v4 = [NSArray arrayWithObjects:v17 count:3];
    v18[0] = v4;
    v16[0] = ntk_margarita_yellow;
    v16[1] = ntk_margarita_mustard;
    v16[2] = ntk_margarita_orange;
    v16[3] = ntk_margarita_orangeRed;
    v5 = [NSArray arrayWithObjects:v16 count:4];
    v18[1] = v5;
    v15[0] = ntk_margarita_brickRed;
    v15[1] = ntk_margarita_brightRed;
    v15[2] = ntk_margarita_pink;
    v15[3] = ntk_margarita_dustyRose;
    v15[4] = ntk_margarita_lightPink;
    v6 = [NSArray arrayWithObjects:v15 count:5];
    v18[2] = v6;
    v14[0] = v3;
    v14[1] = ntk_margarita_brown;
    v7 = [NSArray arrayWithObjects:v14 count:2];
    v18[3] = v7;
    v13[0] = ntk_margarita_beige;
    v13[1] = ntk_margarita_darkGreen;
    v8 = [NSArray arrayWithObjects:v13 count:2];
    v18[4] = v8;
    v12[0] = ntk_margarita_white;
    v12[1] = ntk_margarita_lightGray;
    v12[2] = ntk_margarita_gray;
    v12[3] = ntk_margarita_darkGray;
    v12[4] = ntk_margarita_charcoal;
    v9 = [NSArray arrayWithObjects:v12 count:5];
    v18[5] = v9;
    v10 = [NSArray arrayWithObjects:v18 count:6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
    v6 = [(NTKMargaritaFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:200];
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