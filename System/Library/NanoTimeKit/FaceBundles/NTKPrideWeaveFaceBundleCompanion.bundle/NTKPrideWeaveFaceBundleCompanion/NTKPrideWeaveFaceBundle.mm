@interface NTKPrideWeaveFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
- (id)prideFacesForDevice:(id)device;
@end

@implementation NTKPrideWeaveFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKPrideWeaveFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:4094027452])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKPrideWeaveFaceBundle *)self prideFacesForDevice:deviceCopy];
    +[NSMutableArray array];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_8554;
    v13 = v12 = &unk_247A0;
    v14 = 1100;
    v7 = v13;
    [v6 enumerateObjectsUsingBlock:&v9];
    v5 = [v7 copy];
  }

  return v5;
}

- (id)prideFacesForDevice:(id)device
{
  deviceCopy = device;
  if (([(objc_class *)[(NTKPrideWeaveFaceBundle *)self faceClass] isRestrictedForDevice:deviceCopy]& 1) != 0)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    identifier = [objc_opt_class() identifier];
    analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
    v8 = [NTKPrideWeaveFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:6000];
    v25[0] = v9;
    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v25[1] = v10;
    v11 = [NSArray arrayWithObjects:v25 count:2];
    [v8 setCurationPlacements:v11];

    v12 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:deviceCopy];
    [v8 selectOption:v12 forCustomEditMode:12 slot:0];

    identifier2 = [objc_opt_class() identifier];
    analyticsIdentifier2 = [objc_opt_class() analyticsIdentifier];
    v15 = [NTKPrideWeaveFace bundledFaceWithIdentifier:identifier2 analyticsIdentifier:analyticsIdentifier2 forDevice:deviceCopy initCustomization:0];

    v16 = [NTKAnalogDialShapeEditOption optionWithShape:0 forDevice:deviceCopy];
    [v15 selectOption:v16 forCustomEditMode:12 slot:0];

    v17 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:4000];
    v24[0] = v17;
    v18 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v24[1] = v18;
    v19 = [NSArray arrayWithObjects:v24 count:2];
    [v15 setCurationPlacements:v19];

    v20 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:800];
    v21 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v15 priority:801];
    v23[0] = v20;
    v23[1] = v21;
    v5 = [NSArray arrayWithObjects:v23 count:2];
  }

  return v5;
}

- (id)galleryTitleForDevice:(id)device
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKPrideWeaveFaceBundle localizedStringForKey:@"FACE_NAME_IN_TITLE_CASE" comment:@"Pride Weave"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_258A8;
  v6 = &off_258C0;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKPrideWeaveFaceBundle *)self prideFacesForDevice:deviceCopy];
    v6 = +[NSMutableArray array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          face = [*(*(&v15 + 1) + 8 * i) face];
          [v6 addObject:face];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end