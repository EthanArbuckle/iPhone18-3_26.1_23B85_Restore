@interface NTKSquallFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKSquallFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKSquallFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_10998;
  v6 = &off_109B0;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = NTKSquallFaceBundle;
  v3 = [(NTKSquallFaceBundle *)&v5 galleryFacesForDevice:device];
  [v3 enumerateObjectsUsingBlock:&stru_104A8];

  return v3;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3669496134] && objc_msgSend(deviceCopy, "deviceCategory") == &dword_4)
  {
    v5 = [(NTKSquallFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v6 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v5 priority:1800];
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

@end