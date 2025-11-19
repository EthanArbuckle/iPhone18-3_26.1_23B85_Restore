@interface NTKPrideDigitalFaceBundle
+ (id)identifier;
- (id)_analogFaceForDevice:(id)a3;
- (id)_facesFromSortableFaces:(id)a3;
- (id)_fall2021GalleryFacesForDevice:(id)a3;
- (id)_gloryFDefaultFacesForDevice:(id)a3;
- (id)_legacyDefaultFacesForDevice:(id)a3;
- (id)_legacyGalleryFacesForDevice:(id)a3;
- (id)_pride2020DefaultFacesForDevice:(id)a3;
- (id)_pride2021DefaultFacesForDevice:(id)a3;
- (id)_sortedGalleryFacesForDevice:(id)a3;
- (id)complicationTypesBySlot;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
- (id)heroGloryFDefaultFacesForDevice:(id)a3;
- (id)heroPride2020DefaultFacesForDevice:(id)a3;
- (id)prideFacesForDevice:(id)a3;
@end

@implementation NTKPrideDigitalFaceBundle

+ (id)identifier
{
  v3 = [NSBundle bundleForClass:a1];
  v4 = [v3 bundleIdentifier];
  v5 = NSStringFromClass(a1);
  v6 = [NSString stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (id)_analogFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 233;
  }

  else
  {
    v4 = 33;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

- (id)galleryTitleForDevice:(id)a3
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

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_25980;
  v6 = &off_25998;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKPrideDigitalFaceBundle *)self defaultFaceForDevice:v4];
    v6 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v4];
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
    if ([v4 supportsPDRCapability:277329136])
    {
      v11 = [(NTKPrideDigitalFaceBundle *)self _sortedGalleryFacesForDevice:v4];
    }

    else
    {
      if ([v4 supportsPDRCapability:277329136])
      {
        [(NTKPrideDigitalFaceBundle *)self _fall2021GalleryFacesForDevice:v4];
      }

      else
      {
        [(NTKPrideDigitalFaceBundle *)self _legacyGalleryFacesForDevice:v4];
      }
      v11 = ;
    }

    v10 = v11;
  }

  return v10;
}

- (id)_sortedGalleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[NTKFaceBundleManager sharedManager];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_B5E0;
  v14 = &unk_24888;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  [v6 enumerateFaceBundlesOnDevice:v8 includingLegacy:1 withBlock:&v11];

  v9 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v7, v11, v12, v13, v14];

  return v9;
}

- (id)_facesFromSortableFaces:(id)a3
{
  v3 = [a3 sortedArrayUsingSelector:"compare:"];
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

        v10 = [*(*(&v13 + 1) + 8 * i) face];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (id)prideFacesForDevice:(id)a3
{
  v4 = a3;
  if (([(objc_class *)[(NTKPrideDigitalFaceBundle *)self faceClass] isRestrictedForDevice:v4]& 1) != 0)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [NTKFace defaultFaceOfStyle:26 forDevice:v4];
    v7 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v4];
    [v6 selectOption:v7 forCustomEditMode:15 slot:0];

    v8 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:v4];
    v9 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v4];
    [v8 selectOption:v9 forCustomEditMode:12 slot:0];

    v10 = +[NTKPrideAnalogShapeEditOption optionWithStyle:forDevice:](NTKPrideAnalogShapeEditOption, "optionWithStyle:forDevice:", [v4 deviceCategory] != &dword_0 + 1, v4);
    [v8 selectOption:v10 forCustomEditMode:15 slot:0];

    v11 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:600];
    v12 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:700];
    v14[0] = v11;
    v14[1] = v12;
    v5 = [NSArray arrayWithObjects:v14 count:2];
  }

  return v5;
}

- (id)_fall2021GalleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([NTKPrideDigitalFace isAvailableForDevice:v4])
  {
    v5 = objc_opt_new();
    if ([v4 isLuxo])
    {
      v6 = +[NTKFaceBundleManager sharedManager];
      v7 = +[NTKPrideWeaveFaceBundle identifier];
      v8 = [v6 faceBundleForBundleIdentifier:v7 onDevice:v4];

      v9 = [v8 prideFacesForDevice:v4];
      v10 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v9];
      [v5 addObjectsFromArray:v10];
    }

    if ([v4 supportsPDRCapability:3503302961])
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_BC34;
      v19[3] = &unk_248B0;
      v20 = v5;
      v11 = objc_retainBlock(v19);
      v12 = [NTKFace defaultFaceOfStyle:26 forDevice:v4];
      v13 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v4];
      [v12 selectOption:v13 forCustomEditMode:15 slot:0];

      (v11[2])(v11, v12);
      v14 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:v4];
      v15 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v4];
      [v14 selectOption:v15 forCustomEditMode:12 slot:0];

      v16 = +[NTKPrideAnalogShapeEditOption optionWithStyle:forDevice:](NTKPrideAnalogShapeEditOption, "optionWithStyle:forDevice:", [v4 deviceCategory] != &dword_0 + 1, v4);
      [v14 selectOption:v16 forCustomEditMode:15 slot:0];

      (v11[2])(v11, v14);
    }

    v17 = [(NTKPrideDigitalFaceBundle *)self _gloryFDefaultFacesForDevice:v4];
    [v5 addObjectsFromArray:v17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_legacyGalleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([NTKPrideDigitalFace isAvailableForDevice:v4])
  {
    if ([v4 supportsPDRCapability:277329136])
    {
      v5 = [(NTKPrideDigitalFaceBundle *)self _pride2021DefaultFacesForDevice:v4];
    }

    else if ([v4 supportsPDRCapability:3503302961])
    {
      v5 = [(NTKPrideDigitalFaceBundle *)self _pride2020DefaultFacesForDevice:v4];
    }

    else
    {
      if ([v4 isRunningGloryFOrLater])
      {
        [(NTKPrideDigitalFaceBundle *)self _gloryFDefaultFacesForDevice:v4];
      }

      else
      {
        [(NTKPrideDigitalFaceBundle *)self _legacyDefaultFacesForDevice:v4];
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

- (id)_legacyDefaultFacesForDevice:(id)a3
{
  v4 = [NTKFace defaultFaceOfStyle:26 forDevice:a3];
  v5 = [(NTKPrideDigitalFaceBundle *)self complicationTypesBySlot];
  [v4 _setFaceGalleryComplicationTypesForSlots:v5];

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

- (id)_gloryFDefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_C124;
  v25 = &unk_248B0;
  v21 = objc_opt_new();
  v26 = v21;
  v5 = objc_retainBlock(&v22);
  v6 = [v4 supportsPDRCapability:3503302961];
  v7 = [NTKFace defaultFaceOfStyle:26 forDevice:v4];
  v8 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:v4];
  [v7 selectOption:v8 forCustomEditMode:15 slot:0];

  (v5[2])(v5, v7);
  v9 = [NTKFace defaultFaceOfStyle:26 forDevice:v4];
  v10 = [NTKPrideStyleEditOption optionWithStyle:0 forDevice:v4];
  [v9 selectOption:v10 forCustomEditMode:15 slot:0];

  v11 = [(NTKPrideDigitalFaceBundle *)self complicationTypesBySlot];
  [v9 _setFaceGalleryComplicationTypesForSlots:v11];

  (v5[2])(v5, v9);
  v12 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:v4];
  v13 = [NTKPrideAnalogShapeEditOption optionWithStyle:0 forDevice:v4];
  [v12 selectOption:v13 forCustomEditMode:15 slot:0];

  if (v6)
  {
    v14 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:v4];
    [v12 selectOption:v14 forCustomEditMode:12 slot:0];
  }

  (v5[2])(v5, v12);
  if ([v4 deviceCategory] != &dword_0 + 1)
  {
    v15 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:v4];
    v16 = [NTKPrideAnalogShapeEditOption optionWithStyle:1 forDevice:v4];
    [v15 selectOption:v16 forCustomEditMode:15 slot:0];

    if (v6)
    {
      v17 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:v4];
      [v15 selectOption:v17 forCustomEditMode:12 slot:0];
    }

    (v5[2])(v5, v15);
  }

  v18 = v21;
  v19 = [v21 copy];

  return v19;
}

- (id)_pride2020DefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_C5A8;
  v38[3] = &unk_248B0;
  v5 = objc_opt_new();
  v39 = v5;
  v6 = objc_retainBlock(v38);
  if ([v4 collectionType] == &dword_4 + 2)
  {
    v7 = +[NTKFaceBundleManager sharedManager];
    v8 = [v7 faceBundleForFaceStyle:19 onDevice:v4];

    if (v8)
    {
      v9 = [v8 prideFacesForDevice:v4];
      if ([v9 count])
      {
        v10 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v9];
        [v5 addObjectsFromArray:v10];
      }
    }
  }

  v11 = [NTKFace defaultFaceOfStyle:26 forDevice:v4];
  v12 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v4];
  [v11 selectOption:v12 forCustomEditMode:15 slot:0];

  v36 = v11;
  (v6[2])(v6, v11);
  v13 = [(NTKPrideDigitalFaceBundle *)self _analogFaceForDevice:v4];
  v14 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v4];
  [v13 selectOption:v14 forCustomEditMode:12 slot:0];

  v15 = +[NTKPrideAnalogShapeEditOption optionWithStyle:forDevice:](NTKPrideAnalogShapeEditOption, "optionWithStyle:forDevice:", [v4 deviceCategory] != &dword_0 + 1, v4);
  [v13 selectOption:v15 forCustomEditMode:15 slot:0];

  v35 = v13;
  (v6[2])(v6, v13);
  if ([v4 deviceCategory] != &dword_0 + 1)
  {
    v16 = +[NTKFaceBundleManager sharedManager];
    v17 = [v16 faceBundleForFaceStyle:39 onDevice:v4];

    v18 = [v17 prideFacesForDevice:v4];
    if (v18)
    {
      v19 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v18];
      [v5 addObjectsFromArray:v19];
    }
  }

  v37 = v6;
  v20 = +[NTKFaceBundleManager sharedManager];
  v21 = [v20 faceBundleForFaceStyle:37 onDevice:v4];

  v22 = [v21 prideFacesForDevice:v4];
  if (v22)
  {
    v23 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v22];
    [v5 addObjectsFromArray:v23];
  }

  v24 = +[NTKFaceBundleManager sharedManager];
  v25 = [v24 faceBundleForFaceStyle:38 onDevice:v4];

  v26 = [v25 prideFacesForDevice:v4];
  if (v26)
  {
    v27 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v26];
    [v5 addObjectsFromArray:v27];
  }

  v28 = +[NTKFaceBundleManager sharedManager];
  v29 = [v28 faceBundleForFaceStyle:41 onDevice:v4];

  v30 = [v29 prideFacesForDevice:v4];
  if (v30)
  {
    v31 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v30];
    [v5 addObjectsFromArray:v31];
  }

  v32 = [(NTKPrideDigitalFaceBundle *)self _gloryFDefaultFacesForDevice:v4];
  [v5 addObjectsFromArray:v32];

  v33 = [v5 copy];

  return v33;
}

- (id)_pride2021DefaultFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 deviceCategory] == &dword_0 + 3)
  {
    v6 = +[NTKFaceBundleManager sharedManager];
    v7 = [v6 faceBundleForBundleIdentifier:@"com.apple.NTKProteusFaceBundle" onDevice:v4];

    v8 = [v7 prideFacesForDevice:v4];
    v9 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v8];
    [v5 addObjectsFromArray:v9];
  }

  if ([v4 isLuxo])
  {
    v10 = +[NTKFaceBundleManager sharedManager];
    v11 = +[NTKPrideWeaveFaceBundle identifier];
    v12 = [v10 faceBundleForBundleIdentifier:v11 onDevice:v4];

    v13 = [v12 prideFacesForDevice:v4];
    v14 = [(NTKPrideDigitalFaceBundle *)self _facesFromSortableFaces:v13];
    [v5 addObjectsFromArray:v14];
  }

  v15 = [(NTKPrideDigitalFaceBundle *)self _pride2020DefaultFacesForDevice:v4];
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

- (id)heroGloryFDefaultFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = [NTKPrideDigitalFace defaultFaceOfStyle:26 forDevice:v3];
  v5 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:v3];

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

- (id)heroPride2020DefaultFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = [NTKPrideDigitalFace defaultFaceOfStyle:26 forDevice:v3];
  v5 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v3];

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