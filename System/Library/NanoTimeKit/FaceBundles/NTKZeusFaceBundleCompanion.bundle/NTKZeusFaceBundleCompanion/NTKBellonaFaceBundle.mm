@interface NTKBellonaFaceBundle
- (id)_hermesGroupPriorityForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
- (int64_t)_hermesGroupZOrderForDevice:(id)device;
@end

@implementation NTKBellonaFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKBellonaFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v6 = &off_47490;
  v3 = [(NTKBellonaFaceBundle *)self _hermesGroupPriorityForDevice:device];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = NTKBellonaFaceBundle;
  v5 = [(NTKBellonaFaceBundle *)&v10 galleryFacesForDevice:deviceCopy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10174;
  v8[3] = &unk_44FE0;
  v8[4] = self;
  v9 = deviceCopy;
  v6 = deviceCopy;
  [v5 enumerateObjectsUsingBlock:v8];

  return v5;
}

- (int64_t)_hermesGroupZOrderForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isZeus10])
  {
    v4 = 7000;
  }

  else if (([deviceCopy deviceCategory] & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v4 = 7000;
  }

  else
  {
    v4 = 9000;
  }

  return v4;
}

- (id)_hermesGroupPriorityForDevice:(id)device
{
  if ([device isZeus10])
  {
    return &off_474A8;
  }

  else
  {
    return &off_474C0;
  }
}

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = ntk_zeus_orange;
    v5[1] = ntk_zeus_fall2024_beton;
    v5[2] = ntk_zeus_orange;
    v3 = [NSArray arrayWithObjects:v5 count:3];
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
  if ([deviceCopy supportsPDRCapability:3669496134])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKBellonaFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:500];
    v9 = v7;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

@end