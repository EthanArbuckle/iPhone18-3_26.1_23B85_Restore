@interface NTKSecretariatFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKSecretariatFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKSecretariatFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_47418;
  v6 = &off_47430;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKSecretariatFaceBundle;
  v3 = [(NTKSecretariatFaceBundle *)&v5 galleryFacesForDevice:a3];
  [v3 enumerateObjectsUsingBlock:&stru_44E00];

  return v3;
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
    v6 = [(NTKSecretariatFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:700];
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