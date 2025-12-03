@interface NTKAkitaFaceBundle
- (id)_sortableFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKAkitaFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKAkitaFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  v7 = NTKAkitaGetMorphConfigString(0x12uLL);
  [v6 setCustomData:v7 forKey:NTKAkitaFaceKeyMorphConfig];

  return v6;
}

- (id)galleryTitleForDevice:(id)device
{
  deviceCopy = device;
  v4 = @"FACE_STYLE_AKITA_IN_TITLE_CASE";
  if ((NTKShowGalleryLiteUI() & 1) == 0 && [deviceCopy supportsPDRCapability:360081074])
  {
    v4 = @"GALLERY_TITLE_AKITA_IN_TITLE_CASE";
  }

  v5 = [NTKAkitaFaceBundle localizedStringForKey:v4 comment:@"Akita"];

  return v5;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKAkitaFaceBundle *)self artistFacesForDevice:deviceCopy];
    v6 = +[NSMutableArray array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    identifier = v5;
    v8 = [identifier countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(identifier);
          }

          face = [*(*(&v26 + 1) + 8 * i) face];
          [v6 addObject:face];
        }

        v9 = [identifier countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    goto LABEL_14;
  }

  if ([deviceCopy supportsPDRCapability:360081074])
  {
    v14 = +[NSMutableArray array];
    v15 = +[NTKFaceBundleManager sharedManager];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_2C78;
    v23[3] = &unk_10798;
    v24 = deviceCopy;
    v25 = v14;
    identifier = v14;
    [v15 enumerateFaceBundlesOnDevice:v24 withBlock:v23];

    [identifier sortUsingSelector:"compare:"];
    +[NSMutableArray array];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2CDC;
    v16 = v21[3] = &unk_107C0;
    v22 = v16;
    [identifier enumerateObjectsUsingBlock:v21];

    v6 = v24;
    goto LABEL_15;
  }

  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKAkitaFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  if (v6)
  {
    v18 = arc4random_uniform(9u);
    v19 = NTKAkitaGetMorphConfigString(v18 + 9);
    [v6 setCustomData:v19 forKey:NTKAkitaFaceKeyMorphConfig];

    v30 = v6;
    v13 = [NSArray arrayWithObjects:&v30 count:1];
LABEL_14:
    v16 = v13;
    goto LABEL_15;
  }

  v16 = &__NSArray0__struct;
LABEL_15:

  return v16;
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
    v5 = [(NTKAkitaFaceBundle *)self _sortableFacesForDevice:deviceCopy];
  }

  return v5;
}

- (id)_sortableFacesForDevice:(id)device
{
  v3 = [(NTKAkitaFaceBundle *)self defaultFaceForDevice:device];
  v4 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:15 zOrder:8000];
  v12[0] = v4;
  v5 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
  v12[1] = v5;
  v6 = [NSArray arrayWithObjects:v12 count:2];
  [v3 setCurationPlacements:v6];

  v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v3 priority:100];
  v8 = v7;
  if (v7)
  {
    v11 = v7;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

@end