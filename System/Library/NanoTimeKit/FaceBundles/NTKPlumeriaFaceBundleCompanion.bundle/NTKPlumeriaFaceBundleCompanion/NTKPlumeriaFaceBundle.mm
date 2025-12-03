@interface NTKPlumeriaFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
- (id)prideFacesForDevice:(id)device;
@end

@implementation NTKPlumeriaFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKPlumeriaFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryTitleForDevice:(id)device
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKPlumeriaFaceBundle localizedStringForKey:@"FACE_PLUMERIA_IN_TITLE_CASE" comment:@"Plumeria"];
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
    v6 = [(NTKPlumeriaFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:1600];
    v9 = v7;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_10F00;
  v6 = &off_10F18;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v7.receiver = self;
    v7.super_class = NTKPlumeriaFaceBundle;
    v5 = [(NTKPlumeriaFaceBundle *)&v7 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&stru_103B0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    return &off_10FA8;
  }

  else
  {
    return 0;
  }
}

- (id)prideFacesForDevice:(id)device
{
  deviceCopy = device;
  if (([(objc_class *)[(NTKPlumeriaFaceBundle *)self faceClass] isRestrictedForDevice:deviceCopy]& 1) != 0)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    identifier = [objc_opt_class() identifier];
    analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
    v8 = [NTKPlumeriaFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

    v9 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:1100];
    v11 = v9;
    v5 = [NSArray arrayWithObjects:&v11 count:1];
  }

  return v5;
}

@end