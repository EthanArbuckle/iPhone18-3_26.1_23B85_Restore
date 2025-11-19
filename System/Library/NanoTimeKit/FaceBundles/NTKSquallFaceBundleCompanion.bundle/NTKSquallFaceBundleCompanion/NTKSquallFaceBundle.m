@interface NTKSquallFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKSquallFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKSquallFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_10998;
  v6 = &off_109B0;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKSquallFaceBundle;
  v3 = [(NTKSquallFaceBundle *)&v5 galleryFacesForDevice:a3];
  [v3 enumerateObjectsUsingBlock:&stru_104A8];

  return v3;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:3669496134] && objc_msgSend(v4, "deviceCategory") == &dword_4)
  {
    v5 = [(NTKSquallFaceBundle *)self defaultFaceForDevice:v4];
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