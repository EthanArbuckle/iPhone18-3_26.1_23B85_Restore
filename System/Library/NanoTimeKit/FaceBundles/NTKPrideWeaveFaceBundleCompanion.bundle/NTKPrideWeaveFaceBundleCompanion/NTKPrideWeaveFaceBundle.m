@interface NTKPrideWeaveFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
- (id)prideFacesForDevice:(id)a3;
@end

@implementation NTKPrideWeaveFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKPrideWeaveFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:4094027452])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKPrideWeaveFaceBundle *)self prideFacesForDevice:v4];
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

- (id)prideFacesForDevice:(id)a3
{
  v4 = a3;
  if (([(objc_class *)[(NTKPrideWeaveFaceBundle *)self faceClass] isRestrictedForDevice:v4]& 1) != 0)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [objc_opt_class() identifier];
    v7 = [objc_opt_class() analyticsIdentifier];
    v8 = [NTKPrideWeaveFace bundledFaceWithIdentifier:v6 analyticsIdentifier:v7 forDevice:v4 initCustomization:0];

    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:6000];
    v25[0] = v9;
    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v25[1] = v10;
    v11 = [NSArray arrayWithObjects:v25 count:2];
    [v8 setCurationPlacements:v11];

    v12 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:v4];
    [v8 selectOption:v12 forCustomEditMode:12 slot:0];

    v13 = [objc_opt_class() identifier];
    v14 = [objc_opt_class() analyticsIdentifier];
    v15 = [NTKPrideWeaveFace bundledFaceWithIdentifier:v13 analyticsIdentifier:v14 forDevice:v4 initCustomization:0];

    v16 = [NTKAnalogDialShapeEditOption optionWithShape:0 forDevice:v4];
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

- (id)galleryTitleForDevice:(id)a3
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

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_258A8;
  v6 = &off_258C0;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKPrideWeaveFaceBundle *)self prideFacesForDevice:v4];
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

          v12 = [*(*(&v15 + 1) + 8 * i) face];
          [v6 addObject:v12];
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