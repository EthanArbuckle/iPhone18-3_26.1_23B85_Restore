@interface NTKParameciumFaceBundle
- (id)_galleryEditOptionsForDevice:(id)device;
- (id)complicationTypesBySlot;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
- (id)prideFacesForDevice:(id)device;
@end

@implementation NTKParameciumFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKParameciumFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryTitleForDevice:(id)device
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKParameciumFaceBundle localizedStringForKey:@"PARAMECIUM_FACE_NAME_IN_TITLE_CASE" comment:@"Paramecium"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)prideFacesForDevice:(id)device
{
  deviceCopy = device;
  if (([(objc_class *)[(NTKParameciumFaceBundle *)self faceClass] isRestrictedForDevice:deviceCopy]& 1) != 0)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    identifier = [objc_opt_class() identifier];
    analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
    v8 = [NTKParameciumFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

    v9 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:1000];
    v11 = v9;
    v5 = [NSArray arrayWithObjects:&v11 count:1];
  }

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_14D90;
  v6 = &off_14DA8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v5 = +[NSMutableArray array];
    v6 = [(NTKParameciumFaceBundle *)self _galleryEditOptionsForDevice:deviceCopy];
    v7 = [v6 objectForKeyedSubscript:&off_14DC0];
    v8 = [v6 objectForKeyedSubscript:&off_14DD8];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_85A0;
    v14[3] = &unk_14678;
    v14[4] = self;
    v15 = deviceCopy;
    v16 = v8;
    v9 = v5;
    v17 = v9;
    v10 = v8;
    [v7 enumerateObjectsUsingBlock:v14];
    v11 = v17;
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = &off_14DD8;
    v5[1] = &off_14DC0;
    v6[0] = &off_15018;
    v6[1] = &off_15030;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
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
  if ([deviceCopy supportsPDRCapability:3887189377])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKParameciumFaceBundle *)self prideFacesForDevice:deviceCopy];
    firstObject = [v6 firstObject];

    v8 = [NTKFaceBundleSortableGalleryFace alloc];
    face = [firstObject face];
    v10 = [v8 initWithFace:face priority:1400];

    v12 = v10;
    v5 = [NSArray arrayWithObjects:&v12 count:1];
  }

  return v5;
}

- (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v5[0] = &off_15048;
  v5[1] = &off_15060;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v5[2] = &off_15078;
  v5[3] = &off_15090;
  v4[4] = NTKComplicationSlotSubdialTop;
  v5[4] = &off_150A8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end