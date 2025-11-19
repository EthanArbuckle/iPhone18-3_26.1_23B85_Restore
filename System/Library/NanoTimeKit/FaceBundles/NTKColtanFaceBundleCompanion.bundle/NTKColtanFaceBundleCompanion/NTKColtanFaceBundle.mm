@interface NTKColtanFaceBundle
- (id)_sortableFacesForDevice:(id)a3;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKColtanFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v4 identifier];
  v6 = [v4 analyticsIdentifier];
  v7 = [NTKColtanAnalogFace bundledFaceWithIdentifier:v5 analyticsIdentifier:v6 forDevice:v3 initCustomization:0];

  return v7;
}

- (id)galleryTitleForDevice:(id)a3
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKColtanFaceBundle localizedStringForKey:@"COLTAN_FACE_NAME_IN_TITLE_CASE" comment:@"Unity Lights"];
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
  if (([v4 supportsPDRCapability:3101771132] & 1) != 0 || (objc_msgSend(v4, "supportsPDRCapability:", 360081074) & 1) != 0 || !objc_msgSend(v4, "supportsPDRCapability:", 3049862277))
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v5 = [(NTKColtanFaceBundle *)self _sortableFacesForDevice:v4];
  }

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_10A90;
  v6 = &off_10AA8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if (NTKShowGalleryLiteUI())
  {
    v7.receiver = self;
    v7.super_class = NTKColtanFaceBundle;
    v5 = [(NTKColtanFaceBundle *)&v7 galleryFacesForDevice:v4];
    [v5 enumerateObjectsUsingBlock:&stru_10490];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5[0] = &off_10AC0;
    v5[1] = &off_10B08;
    v6[0] = &off_10C68;
    v6[1] = &off_10C80;
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
  if ([a3 isRunningNapiliGMOrLater])
  {
    return &off_10C98;
  }

  else
  {
    return 0;
  }
}

- (id)_sortableFacesForDevice:(id)a3
{
  v3 = [(NTKColtanFaceBundle *)self defaultFaceForDevice:a3];
  v4 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v3 priority:1200];
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