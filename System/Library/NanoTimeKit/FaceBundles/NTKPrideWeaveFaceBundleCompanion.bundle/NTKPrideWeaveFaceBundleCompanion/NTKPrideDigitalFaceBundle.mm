@interface NTKPrideDigitalFaceBundle
+ (id)identifier;
- (id)_analogFaceForDevice:(id)device;
- (id)_facesFromSortableFaces:(id)faces;
- (id)_fall2021GalleryFacesForDevice:(id)device;
- (id)_gloryFDefaultFacesForDevice:(id)device;
- (id)_legacyDefaultFacesForDevice:(id)device;
- (id)_legacyGalleryFacesForDevice:(id)device;
- (id)_pride2020DefaultFacesForDevice:(id)device;
- (id)_pride2021DefaultFacesForDevice:(id)device;
- (id)_sortedGalleryFacesForDevice:(id)device;
- (id)complicationTypesBySlot;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroGloryFDefaultFacesForDevice:(id)device;
- (id)heroPride2020DefaultFacesForDevice:(id)device;
- (id)prideFacesForDevice:(id)device;
@end

@implementation NTKPrideDigitalFaceBundle

+ (id)identifier
{
  v3 = [NSBundle bundleForClass:self];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = NSStringFromClass(self);
  v6 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, v5];

  return v6;
}

- (id)_analogFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 233;
  }

  else
  {
    v4 = 33;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

- (id)galleryTitleForDevice:(id)device
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKPrideDigitalFaceBundle localizedStringForKey:@"FACE_STYLE_PRIDE_DIGITAL_IN_TITLE_CASE" table:@"PrideDigital" comment:@"Pride Digital"];
  }

  else
  {
    v4 = [@"PrideDigital" stringByAppendingString:@"-Companion"];
    v3 = [NTKPrideDigitalFaceBundle localizedStringForKey:@"PRIDE_GALLERY_ROW_IN_TITLE_CASE" table:v4 comment:@"Pride"];
  }

  return v3;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_25980;
  v6 = &off_25998;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKPrideDigitalFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v6 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
    [v5 selectOption:v6 forCustomEditMode:15 slot:0];

    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:4000];
    v14[0] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v14[1] = v8;
    v9 = [NSArray arrayWithObjects:v14 count:2];
    [v5 setCurationPlacements:v9];

    v13 = v5;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    if ([deviceCopy supportsPDRCapability:277329136])
    {
      v11 = [(NTKPrideDigitalFaceBundle *)self _sortedGalleryFacesForDevice:deviceCopy];
    }

    else
    {
      if ([deviceCopy supportsPDRCapability:277329136])
      {
        [(NTKPrideDigitalFaceBundle *)self _fall2021GalleryFacesForDevice:deviceCopy];
      }

      else
      {
        [(NTKPrideDigitalFaceBundle *)self _legacyGalleryFacesForDevice:deviceCopy];
      }
      v11 = ;
    }

    v10 = v11;
  }

  return v10;
}

- (id)_sortedGalleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = +[NTKFaceBundleManager sharedManager];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_B5E0;
  v14 = &unk_24888;
  v15 = deviceCopy;
  v16 = v5;
  v7 = v5;
  v8 = deviceCopy;
  [v6 enumerateFaceBundlesOnDevice:v8 includingLegacy:1 withBlock:&v11];

  v9 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v7, v11, v12, v13, v14];

  return v9;
}

- (id)_facesFromSortableFaces:(id)faces
{
  v3 = [faces sortedArrayUsingSelector:"compare:"];
  v4 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        face = [*(*(&v13 + 1) + 8 * i) face];
        [v4 addObject:face];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (id)prideFacesForDevice:(id)device
{
  deviceCopy = device;
  if (([(objc_class *)[(NTKPrideDigitalFaceBundle *)self faceClass] isRestrictedForDevice:deviceCopy]& 1) != 0)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [NTKFace defaultFaceOfStyle:26 forDevice:deviceCopy];
    v7 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
    [v6 selectOption:v7 forCustomEditMode:15 slot:0];

    v8 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:deviceCopy];
    v9 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
    [v8 selectOption:v9 forCustomEditMode:12 slot:0];

    v10 = +[NTKPrideAnalogShapeEditOption optionWithStyle:forDevice:](NTKPrideAnalogShapeEditOption, "optionWithStyle:forDevice:", [deviceCopy deviceCategory] != &dword_0 + 1, deviceCopy);
    [v8 selectOption:v10 forCustomEditMode:15 slot:0];

    v11 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:600];
    v12 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:700];
    v14[0] = v11;
    v14[1] = v12;
    v5 = [NSArray arrayWithObjects:v14 count:2];
  }

  return v5;
}

- (id)_fall2021GalleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([NTKPrideDigitalFace isAvailableForDevice:deviceCopy])
  {
    v5 = objc_opt_new();
    if ([deviceCopy isLuxo])
    {
      v6 = +[NTKFaceBundleManager sharedManager];
      v7 = +[NTKPrideWeaveFaceBundle identifier];
      v8 = [v6 faceBundleForBundleIdentifier:v7 onDevice:deviceCopy];

      v9 = [v8 prideFacesForDevice:deviceCopy];
      v10 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v9];
      [v5 addObjectsFromArray:v10];
    }

    if ([deviceCopy supportsPDRCapability:3503302961])
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_BC34;
      v19[3] = &unk_248B0;
      v20 = v5;
      v11 = objc_retainBlock(v19);
      v12 = [NTKFace defaultFaceOfStyle:26 forDevice:deviceCopy];
      v13 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
      [v12 selectOption:v13 forCustomEditMode:15 slot:0];

      (v11[2])(v11, v12);
      v14 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:deviceCopy];
      v15 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
      [v14 selectOption:v15 forCustomEditMode:12 slot:0];

      v16 = +[NTKPrideAnalogShapeEditOption optionWithStyle:forDevice:](NTKPrideAnalogShapeEditOption, "optionWithStyle:forDevice:", [deviceCopy deviceCategory] != &dword_0 + 1, deviceCopy);
      [v14 selectOption:v16 forCustomEditMode:15 slot:0];

      (v11[2])(v11, v14);
    }

    v17 = [(NTKPrideDigitalFaceBundle *)self _gloryFDefaultFacesForDevice:deviceCopy];
    [v5 addObjectsFromArray:v17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_legacyGalleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([NTKPrideDigitalFace isAvailableForDevice:deviceCopy])
  {
    if ([deviceCopy supportsPDRCapability:277329136])
    {
      v5 = [(NTKPrideDigitalFaceBundle *)self _pride2021DefaultFacesForDevice:deviceCopy];
    }

    else if ([deviceCopy supportsPDRCapability:3503302961])
    {
      v5 = [(NTKPrideDigitalFaceBundle *)self _pride2020DefaultFacesForDevice:deviceCopy];
    }

    else
    {
      if ([deviceCopy isRunningGloryFOrLater])
      {
        [(NTKPrideDigitalFaceBundle *)self _gloryFDefaultFacesForDevice:deviceCopy];
      }

      else
      {
        [(NTKPrideDigitalFaceBundle *)self _legacyDefaultFacesForDevice:deviceCopy];
      }
      v5 = ;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_legacyDefaultFacesForDevice:(id)device
{
  v4 = [NTKFace defaultFaceOfStyle:26 forDevice:device];
  complicationTypesBySlot = [(NTKPrideDigitalFaceBundle *)self complicationTypesBySlot];
  [v4 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

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

- (id)_gloryFDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_C124;
  v25 = &unk_248B0;
  v21 = objc_opt_new();
  v26 = v21;
  v5 = objc_retainBlock(&v22);
  v6 = [deviceCopy supportsPDRCapability:3503302961];
  v7 = [NTKFace defaultFaceOfStyle:26 forDevice:deviceCopy];
  v8 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
  [v7 selectOption:v8 forCustomEditMode:15 slot:0];

  (v5[2])(v5, v7);
  v9 = [NTKFace defaultFaceOfStyle:26 forDevice:deviceCopy];
  v10 = [NTKPrideStyleEditOption optionWithStyle:0 forDevice:deviceCopy];
  [v9 selectOption:v10 forCustomEditMode:15 slot:0];

  complicationTypesBySlot = [(NTKPrideDigitalFaceBundle *)self complicationTypesBySlot];
  [v9 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

  (v5[2])(v5, v9);
  v12 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:deviceCopy];
  v13 = [NTKPrideAnalogShapeEditOption optionWithStyle:0 forDevice:deviceCopy];
  [v12 selectOption:v13 forCustomEditMode:15 slot:0];

  if (v6)
  {
    v14 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
    [v12 selectOption:v14 forCustomEditMode:12 slot:0];
  }

  (v5[2])(v5, v12);
  if ([deviceCopy deviceCategory] != &dword_0 + 1)
  {
    v15 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:deviceCopy];
    v16 = [NTKPrideAnalogShapeEditOption optionWithStyle:1 forDevice:deviceCopy];
    [v15 selectOption:v16 forCustomEditMode:15 slot:0];

    if (v6)
    {
      v17 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
      [v15 selectOption:v17 forCustomEditMode:12 slot:0];
    }

    (v5[2])(v5, v15);
  }

  v18 = v21;
  v19 = [v21 copy];

  return v19;
}

- (id)_pride2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_C5A8;
  v38[3] = &unk_248B0;
  v5 = objc_opt_new();
  v39 = v5;
  v6 = objc_retainBlock(v38);
  if ([deviceCopy collectionType] == &dword_4 + 2)
  {
    v7 = +[NTKFaceBundleManager sharedManager];
    v8 = [v7 faceBundleForFaceStyle:19 onDevice:deviceCopy];

    if (v8)
    {
      v9 = [v8 prideFacesForDevice:deviceCopy];
      if ([v9 count])
      {
        v10 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v9];
        [v5 addObjectsFromArray:v10];
      }
    }
  }

  v11 = [NTKFace defaultFaceOfStyle:26 forDevice:deviceCopy];
  v12 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
  [v11 selectOption:v12 forCustomEditMode:15 slot:0];

  v36 = v11;
  (v6[2])(v6, v11);
  v13 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:deviceCopy];
  v14 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
  [v13 selectOption:v14 forCustomEditMode:12 slot:0];

  v15 = +[NTKPrideAnalogShapeEditOption optionWithStyle:forDevice:](NTKPrideAnalogShapeEditOption, "optionWithStyle:forDevice:", [deviceCopy deviceCategory] != &dword_0 + 1, deviceCopy);
  [v13 selectOption:v15 forCustomEditMode:15 slot:0];

  v35 = v13;
  (v6[2])(v6, v13);
  if ([deviceCopy deviceCategory] != &dword_0 + 1)
  {
    v16 = +[NTKFaceBundleManager sharedManager];
    v17 = [v16 faceBundleForFaceStyle:39 onDevice:deviceCopy];

    v18 = [v17 prideFacesForDevice:deviceCopy];
    if (v18)
    {
      v19 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v18];
      [v5 addObjectsFromArray:v19];
    }
  }

  v37 = v6;
  v20 = +[NTKFaceBundleManager sharedManager];
  v21 = [v20 faceBundleForFaceStyle:37 onDevice:deviceCopy];

  v22 = [v21 prideFacesForDevice:deviceCopy];
  if (v22)
  {
    v23 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v22];
    [v5 addObjectsFromArray:v23];
  }

  v24 = +[NTKFaceBundleManager sharedManager];
  v25 = [v24 faceBundleForFaceStyle:38 onDevice:deviceCopy];

  v26 = [v25 prideFacesForDevice:deviceCopy];
  if (v26)
  {
    v27 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v26];
    [v5 addObjectsFromArray:v27];
  }

  v28 = +[NTKFaceBundleManager sharedManager];
  v29 = [v28 faceBundleForFaceStyle:41 onDevice:deviceCopy];

  v30 = [v29 prideFacesForDevice:deviceCopy];
  if (v30)
  {
    v31 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v30];
    [v5 addObjectsFromArray:v31];
  }

  v32 = [(NTKPrideDigitalFaceBundle *)self _gloryFDefaultFacesForDevice:deviceCopy];
  [v5 addObjectsFromArray:v32];

  v33 = [v5 copy];

  return v33;
}

- (id)_pride2021DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  if ([deviceCopy deviceCategory] == &dword_0 + 3)
  {
    v6 = +[NTKFaceBundleManager sharedManager];
    v7 = [v6 faceBundleForBundleIdentifier:@"com.apple.NTKProteusFaceBundle" onDevice:deviceCopy];

    v8 = [v7 prideFacesForDevice:deviceCopy];
    v9 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v8];
    [v5 addObjectsFromArray:v9];
  }

  if ([deviceCopy isLuxo])
  {
    v10 = +[NTKFaceBundleManager sharedManager];
    v11 = +[NTKPrideWeaveFaceBundle identifier];
    v12 = [v10 faceBundleForBundleIdentifier:v11 onDevice:deviceCopy];

    v13 = [v12 prideFacesForDevice:deviceCopy];
    v14 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v13];
    [v5 addObjectsFromArray:v14];
  }

  v15 = [(NTKPrideDigitalFaceBundle *)self _pride2020DefaultFacesForDevice:deviceCopy];
  [v5 addObjectsFromArray:v15];

  return v5;
}

- (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottom;
  v5[0] = &off_25BE0;
  v5[1] = &off_25BF8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)heroGloryFDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = [NTKPrideDigitalFace defaultFaceOfStyle:26 forDevice:deviceCopy];
  v5 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:deviceCopy];

  [v4 selectOption:v5 forCustomEditMode:15 slot:0];
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

- (id)heroPride2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = [NTKPrideDigitalFace defaultFaceOfStyle:26 forDevice:deviceCopy];
  v5 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:deviceCopy];

  [v4 selectOption:v5 forCustomEditMode:15 slot:0];
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