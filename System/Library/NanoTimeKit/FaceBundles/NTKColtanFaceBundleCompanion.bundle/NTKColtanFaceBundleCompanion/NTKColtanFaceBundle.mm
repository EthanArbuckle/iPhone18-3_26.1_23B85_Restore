@interface NTKColtanFaceBundle
- (id)_sortableFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKColtanFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_class();
  identifier = [v4 identifier];
  analyticsIdentifier = [v4 analyticsIdentifier];
  v7 = [NTKColtanAnalogFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v7;
}

- (id)galleryTitleForDevice:(id)device
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

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if (([deviceCopy supportsPDRCapability:3101771132] & 1) != 0 || (objc_msgSend(deviceCopy, "supportsPDRCapability:", 360081074) & 1) != 0 || !objc_msgSend(deviceCopy, "supportsPDRCapability:", 3049862277))
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v5 = [(NTKColtanFaceBundle *)self _sortableFacesForDevice:deviceCopy];
  }

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_10A90;
  v6 = &off_10AA8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v7.receiver = self;
    v7.super_class = NTKColtanFaceBundle;
    v5 = [(NTKColtanFaceBundle *)&v7 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&stru_10490];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
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

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    return &off_10C98;
  }

  else
  {
    return 0;
  }
}

- (id)_sortableFacesForDevice:(id)device
{
  v3 = [(NTKColtanFaceBundle *)self defaultFaceForDevice:device];
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