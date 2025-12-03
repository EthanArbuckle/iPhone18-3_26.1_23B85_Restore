@interface NTKRenegadeFaceBundle
- (id)_sortableFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)galleryTitle;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKRenegadeFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKRenegadeFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryTitle
{
  _galleryTitleKey = [(NTKRenegadeFaceBundle *)self _galleryTitleKey];
  v3 = [NTKRenegadeFaceBundle localizedStringForKey:_galleryTitleKey comment:@"Unity gallery row"];

  return v3;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_109F0;
  v6 = &off_10A08;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v15.receiver = self;
    v15.super_class = NTKRenegadeFaceBundle;
    v5 = [(NTKRenegadeFaceBundle *)&v15 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&stru_10470];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = +[NTKFaceBundleManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1364;
    v12[3] = &unk_10498;
    v13 = deviceCopy;
    v14 = v6;
    v8 = v6;
    [v7 enumerateFaceBundlesOnDevice:v13 withBlock:v12];

    [v8 sortUsingSelector:"compare:"];
    +[NSMutableArray array];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_13C8;
    v5 = v10[3] = &unk_104C0;
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v10];
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5 = &off_10A20;
    v6 = &off_10C60;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3101771132] & 1) != 0 || (objc_msgSend(deviceCopy, "supportsPDRCapability:", 4094027452))
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v5 = [(NTKRenegadeFaceBundle *)self _sortableFacesForDevice:deviceCopy];
  }

  return v5;
}

- (id)_sortableFacesForDevice:(id)device
{
  v3 = [(NTKRenegadeFaceBundle *)self defaultFaceForDevice:device];
  v4 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v3 priority:1000];
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