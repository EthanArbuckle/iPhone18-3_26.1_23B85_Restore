@interface NTKPlumeriaFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
- (id)prideFacesForDevice:(id)a3;
@end

@implementation NTKPlumeriaFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKPlumeriaFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryTitleForDevice:(id)a3
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

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:3669496134])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKPlumeriaFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:1600];
    v9 = v7;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_10F00;
  v6 = &off_10F18;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if (NTKShowGalleryLiteUI())
  {
    v7.receiver = self;
    v7.super_class = NTKPlumeriaFaceBundle;
    v5 = [(NTKPlumeriaFaceBundle *)&v7 galleryFacesForDevice:v4];
    [v5 enumerateObjectsUsingBlock:&stru_103B0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    return &off_10FA8;
  }

  else
  {
    return 0;
  }
}

- (id)prideFacesForDevice:(id)a3
{
  v4 = a3;
  if (([(objc_class *)[(NTKPlumeriaFaceBundle *)self faceClass] isRestrictedForDevice:v4]& 1) != 0)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [objc_opt_class() identifier];
    v7 = [objc_opt_class() analyticsIdentifier];
    v8 = [NTKPlumeriaFace bundledFaceWithIdentifier:v6 analyticsIdentifier:v7 forDevice:v4 initCustomization:0];

    v9 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:1100];
    v11 = v9;
    v5 = [NSArray arrayWithObjects:&v11 count:1];
  }

  return v5;
}

@end