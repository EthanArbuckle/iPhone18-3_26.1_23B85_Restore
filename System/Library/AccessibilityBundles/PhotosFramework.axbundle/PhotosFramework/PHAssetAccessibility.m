@interface PHAssetAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (BOOL)_accessibilitySavePhotoLabel:(id)a3;
- (BOOL)shouldMeasureBlurriness;
- (id)_accessibilityAssetDuration;
- (id)_accessibilityCaptionLabel;
- (id)_accessibilityCreationDate;
- (id)_accessibilityCreationTime;
- (id)_accessibilityFacesInfo;
- (id)_accessibilityOrientation;
- (id)_accessibilityPeopleInPhoto;
- (id)_accessibilityPhotoLibraryURL;
- (id)_accessibilityiCloudPhotoLabel;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityURL;
- (void)_setAXValueCallback:(id)a3;
- (void)accessibilityApplyValueBlock:(id)a3;
@end

@implementation PHAssetAccessibility

- (void)_setAXValueCallback:(id)a3
{
  v3 = MEMORY[0x29C2E6820](a3, a2);
  __UIAccessibilitySetAssociatedCopiedObject();
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"pixelWidth" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"pixelHeight" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isPhoto" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isLoopingVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"pixelHeight" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"pixelWidth" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isAudio" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"mainFileURL" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"creationDate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"mediaSubtypes" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isPhotoIris" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"isFavorite" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHObject" hasInstanceMethod:@"localIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAsset" isKindOfClass:@"PHObject"];
  [v3 validateClass:@"PHObject" hasInstanceMethod:@"photoLibrary" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHPhotoLibrary" hasInstanceMethod:@"isSystemPhotoLibrary" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHPhotoLibrary" hasInstanceMethod:@"photoLibraryURL" withFullSignature:{"@", 0}];
}

- (BOOL)shouldMeasureBlurriness
{
  v2 = [(PHAssetAccessibility *)self safeValueForKey:@"mediaSubtypes"];
  v3 = [v2 unsignedIntegerValue];

  return (v3 & 0x10) == 0;
}

- (id)_accessibilityCreationTime
{
  v2 = [(PHAssetAccessibility *)self safeValueForKey:@"creationDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = AXDateStringForFormat();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityCreationDate
{
  v2 = [(PHAssetAccessibility *)self safeValueForKey:@"creationDate"];
  v3 = __UIAccessibilitySafeClass();

  if (v3)
  {
    v4 = [MEMORY[0x29EDB8D98] currentCalendar];
    v5 = [v4 components:28 fromDate:v3];

    v6 = [MEMORY[0x29EDB8D98] currentCalendar];
    v7 = [MEMORY[0x29EDB8DB0] date];
    v8 = [v6 components:28 fromDate:v7];

    [v5 year];
    [v8 year];
    v9 = AXDateStringForFormat();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_accessibilityOrientation
{
  v3 = [(PHAssetAccessibility *)self safeValueForKey:@"pixelWidth"];
  v4 = [(PHAssetAccessibility *)self safeValueForKey:@"pixelHeight"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 integerValue];
    if (v8 >= [v5 integerValue])
    {
      v9 = @"photo.label.orientation.landscape";
    }

    else
    {
      v9 = @"photo.label.orientation.portrait";
    }

    v7 = accessibilityPLServicesLocalizedString(v9);
  }

  return v7;
}

- (id)_accessibilityAssetDuration
{
  [(PHAssetAccessibility *)self safeFloatForKey:@"duration"];
  v3 = roundf(v2);
  if (v3 <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = MEMORY[0x29C2E6570](1, v3);
  }

  return v4;
}

- (id)accessibilityCustomContent
{
  v3 = objc_opt_new();
  v4 = [(PHAssetAccessibility *)self safeValueForKey:@"creationDate"];
  v60 = __UIAccessibilitySafeClass();

  v5 = [MEMORY[0x29EDB8D98] currentCalendar];
  v61 = [v5 components:28 fromDate:v60];

  v6 = [MEMORY[0x29EDB8D98] currentCalendar];
  v7 = [MEMORY[0x29EDB8DB0] date];
  v8 = [v6 components:28 fromDate:v7];

  v9 = [(PHAssetAccessibility *)self _accessibilityCreationDate];
  if ([v9 length])
  {
    v10 = MEMORY[0x29EDB8058];
    v11 = accessibilityPLServicesLocalizedString(@"date.title");
    v12 = [v10 customContentWithLabel:v11 value:v9];

    v13 = [v61 month];
    if (v13 != [v8 month] || (v14 = objc_msgSend(v61, "day"), v14 != objc_msgSend(v8, "day")) || (v15 = objc_msgSend(v61, "year"), v15 != objc_msgSend(v8, "year")))
    {
      [v12 setImportance:1];
    }

    [v3 addObject:v12];
  }

  v16 = [(PHAssetAccessibility *)self _accessibilityCreationTime];
  if ([v16 length])
  {
    v17 = MEMORY[0x29EDB8058];
    v18 = accessibilityPLServicesLocalizedString(@"time.title");
    v19 = [v17 customContentWithLabel:v18 value:v16];

    [v19 setImportance:1];
    [v3 addObject:v19];
  }

  v58 = v16;
  v20 = [(PHAssetAccessibility *)self _accessibilityOrientation];
  if ([v20 length])
  {
    v21 = MEMORY[0x29EDB8058];
    v22 = accessibilityPLServicesLocalizedString(@"orientation.title");
    v23 = [v21 customContentWithLabel:v22 value:v20];

    [v3 addObject:v23];
  }

  v24 = [(PHAssetAccessibility *)self _accessibilityAssetDuration];
  if ([v24 length])
  {
    v25 = MEMORY[0x29EDB8058];
    v26 = accessibilityPLServicesLocalizedString(@"duration.title");
    v27 = [v25 customContentWithLabel:v26 value:v24];

    [v3 addObject:v27];
  }

  v28 = [(PHAssetAccessibility *)self _accessibilityCaptionLabel];
  if ([v28 length])
  {
    v29 = MEMORY[0x29EDB8058];
    v30 = accessibilityPLServicesLocalizedString(@"caption.title");
    v31 = [v29 customContentWithLabel:v30 value:v28];

    [v3 addObject:v31];
  }

  v32 = [(PHAssetAccessibility *)self _accessibilityPeopleInPhoto];
  v59 = v20;
  v57 = v32;
  if ([v32 length])
  {
    v33 = MEMORY[0x29EDB8058];
    v34 = accessibilityPLServicesLocalizedString(@"names.title");
    v35 = [v33 customContentWithLabel:v34 value:v32];

    [v3 addObject:v35];
  }

  else
  {
    v35 = [(PHAssetAccessibility *)self _accessibilityFacesInfo];
    if ([v35 length])
    {
      v36 = MEMORY[0x29EDB8058];
      v37 = accessibilityPLServicesLocalizedString(@"faces.title");
      v38 = [v36 customContentWithLabel:v37 value:v35];

      [v3 addObject:v38];
    }
  }

  v39 = [(PHAssetAccessibility *)self safeValueForKey:@"mediaSubtypes"];
  v40 = [v39 unsignedIntegerValue];

  if ((v40 & 2) != 0)
  {
    v41 = accessibilityPLServicesLocalizedString(@"photo.label.type.photo.hdr");
    if ((v40 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v41 = 0;
  if (v40)
  {
LABEL_23:
    v42 = MEMORY[0x29EDB8D80];
    v43 = accessibilityPLServicesLocalizedString(@"photo.label.type.photo.panorama");
    v44 = [v42 axArrayByIgnoringNilElementsWithCount:{2, v41, v43, v32}];
    AXCombineStringsWithoutDuplicates(v44);
    v45 = v9;
    v46 = v8;
    v47 = v3;
    v49 = v48 = v28;

    v41 = v49;
    v28 = v48;
    v3 = v47;
    v8 = v46;
    v9 = v45;
  }

LABEL_24:
  v50 = v59;
  if ((v40 & 0x10) != 0)
  {
    v51 = accessibilityPLServicesLocalizedString(@"photo.label.type.photo.depth");

    v41 = v51;
  }

  v52 = v24;
  if ([v41 length])
  {
    v53 = MEMORY[0x29EDB8058];
    v54 = accessibilityPLServicesLocalizedString(@"photo.type.title");
    v55 = [v53 customContentWithLabel:v54 value:v41];

    v50 = v59;
    [v3 addObject:v55];

    v52 = v24;
  }

  return v3;
}

- (id)_accessibilityFacesInfo
{
  v2 = [MEMORY[0x29EDBBA20] fetchFacesInAsset:self options:0];
  if ([v2 count])
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilityPLServicesLocalizedString(@"faces.count");
    v5 = [v3 localizedStringWithFormat:v4, objc_msgSend(v2, "count")];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityPeopleInPhoto
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBBA38] fetchPersonsInAsset:self options:0];
  if ([v2 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 name];
          v11 = [v10 length];

          if (v11)
          {
            v12 = MEMORY[0x29EDB8D80];
            v13 = [v9 name];
            v14 = [v12 axArrayByIgnoringNilElementsWithCount:{2, v6, v13, v18}];
            v15 = AXCombineStringsWithoutDuplicates(v14);

            v6 = v15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)accessibilityURL
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = 0;
  __UIAccessibilitySafeClass();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v26 = 0u;
  obj = [MEMORY[0x29EDBBA10] assetResourcesForAsset:? includeDerivatives:?];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    v21 = *MEMORY[0x29EDBCCB0];
    v20 = *MEMORY[0x29EDBCCA8];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        if ([v6 isLocallyAvailable])
        {
          v7 = [v6 privateFileURL];
          if (v7)
          {
            v8 = v7;
            v9 = [v6 uniformTypeIdentifier];
            v10 = [v21 identifier];
            if ([v9 isEqualToString:v10])
            {

LABEL_17:
              v16 = [v6 privateFileURL];

              v14 = v19;
              goto LABEL_19;
            }

            v11 = [v6 uniformTypeIdentifier];
            v12 = [v20 identifier];
            v13 = [v11 isEqualToString:v12];

            if (v13)
            {
              goto LABEL_17;
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v14 = v19;
  if (objc_opt_respondsToSelector())
  {
    v27 = 0;
    v15 = [v19 safeValueForKey:@"mainFileURL"];
    v16 = __UIAccessibilitySafeClass();

    if (v27 == 1)
    {
      abort();
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  v2 = __UIAccessibilitySafeClass();
  v3 = [MEMORY[0x29EDBBA10] assetResourcesForAsset:v2 includeDerivatives:0];
  v4 = [v3 axFilterObjectsUsingBlock:&__block_literal_global_0];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)_accessibilityPhotoLibraryURL
{
  v2 = [(PHAssetAccessibility *)self safeValueForKey:@"photoLibrary"];
  v3 = [v2 safeValueForKey:@"photoLibraryURL"];
  v4 = __UIAccessibilitySafeClass();

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(PHAssetAccessibility *)self accessibilityUserDefinedLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_37;
  }

  v6 = [(PHAssetAccessibility *)self safeValueForKey:@"isPhoto"];
  v7 = [v6 BOOLValue];

  v8 = [(PHAssetAccessibility *)self safeValueForKey:@"isVideo"];
  v9 = [v8 BOOLValue];

  v10 = [(PHAssetAccessibility *)self safeValueForKey:@"isAudio"];
  v11 = [v10 BOOLValue];

  v12 = [(PHAssetAccessibility *)self safeBoolForKey:@"isLoopingVideo"];
  v13 = [(PHAssetAccessibility *)self safeBoolForKey:@"isFavorite"];
  v14 = [(PHAssetAccessibility *)self safeValueForKey:@"isPhotoIris"];
  v15 = [v14 BOOLValue];

  v16 = [(PHAssetAccessibility *)self safeValueForKey:@"mainFileURL"];
  if (v7)
  {
    if (UIAccessibilityIsImageScreenshot())
    {
      v17 = accessibilityUIKitLocalizedString();
LABEL_21:
      v18 = v17;
LABEL_22:
      v24 = [(PHAssetAccessibility *)self _accessibilityiCloudPhotoLabel];
      if ([v24 length])
      {
        v25 = v24;
      }

      else
      {
        if (v7)
        {
          UIAccessibilityMetadataDescriptionForImage();
        }

        else
        {
          UIAccessibilityMetadataDescriptionForVideo();
        }
        v25 = ;
        if ([v25 length])
        {
          [(PHAssetAccessibility *)self _accessibilitySavePhotoLabel:v25];
        }
      }

      if (v13)
      {
        goto LABEL_30;
      }

LABEL_33:
      v26 = 0;
      goto LABEL_34;
    }

    if (v15)
    {
      v19 = *MEMORY[0x29EDC7378];
      v20 = accessibilityCameraUILocalizedString(@"live.photo");
      v18 = AXAttributedStringForBetterPronuciation();
LABEL_11:

      goto LABEL_22;
    }

    v23 = @"photo.label.type.photo";
    goto LABEL_20;
  }

  if (v12)
  {
    v18 = accessibilityPLServicesLocalizedString(@"photo.label.type.looping.video");
    if (v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v9)
    {
      v21 = [(PHAssetAccessibility *)self safeValueForKey:@"mediaSubtypes"];
      v22 = [v21 unsignedIntegerValue];

      if ((v22 & 0x20000) != 0)
      {
        v23 = @"photo.label.type.video.slomo";
      }

      else
      {
        if ((v22 & 0x40000) != 0)
        {
          v36 = MEMORY[0x29EDB8D80];
          v20 = accessibilityPLServicesLocalizedString(@"photo.label.type.video.timelapse");
          v37 = [v36 axArrayByIgnoringNilElementsWithCount:{1, v20}];
          v18 = AXCombineStringsWithoutDuplicates(v37);

          goto LABEL_11;
        }

        v23 = @"photo.label.type.video";
      }

LABEL_20:
      v17 = accessibilityPLServicesLocalizedString(v23);
      goto LABEL_21;
    }

    if (v11)
    {
      v18 = accessibilityPLServicesLocalizedString(@"photo.label.type.audio");
    }

    else
    {
      v18 = 0;
    }
  }

  v25 = 0;
  if (!v13)
  {
    goto LABEL_33;
  }

LABEL_30:
  v26 = accessibilityPLServicesLocalizedString(@"is.favorite");
LABEL_34:
  v27 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v18, v25, v26}];
  v5 = AXCombineStringsWithoutDuplicates(v27);
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v28 = MEMORY[0x29EDB8D80];
    [(PHAssetAccessibility *)self _accessibilityAssetDuration];
    v29 = v38 = v16;
    v30 = [(PHAssetAccessibility *)self _accessibilityCreationDate];
    [(PHAssetAccessibility *)self _accessibilityCreationTime];
    v32 = v31 = v18;
    v33 = [v28 axArrayByIgnoringNilElementsWithCount:{4, v5, v29, v30, v32}];

    v18 = v31;
    v4 = 0;

    v16 = v38;
    v34 = AXCombineStringsWithoutDuplicates(v33);

    v5 = v34;
  }

  [(PHAssetAccessibility *)self setAccessibilityLabel:v5];

LABEL_37:

  return v5;
}

- (id)_accessibilityCaptionLabel
{
  v2 = [(PHAssetAccessibility *)self descriptionProperties];
  v3 = [v2 assetDescription];

  return v3;
}

- (id)_accessibilityiCloudPhotoLabel
{
  v14[1] = *MEMORY[0x29EDCA608];
  v2 = self;
  if ([(PHAssetAccessibility *)v2 _axICloudLabelWasSet])
  {
    v3 = [(PHAssetAccessibility *)v2 localIdentifier];
    v4 = v3;
    v5 = v2;
    if (v3)
    {
      v14[0] = v3;
      v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];
      v7 = [MEMORY[0x29EDBB9F8] fetchAssetsWithLocalIdentifiers:v6 options:0];
      if ([v7 count] != 1)
      {
        v12 = v2;
        v13 = v7;
        _AXAssert();
      }

      v5 = [v7 firstObject];
    }

    if (!v5)
    {
      v5 = v2;
    }

    v2 = v5;
  }

  v8 = [(PHAssetAccessibility *)v2 descriptionProperties];
  v9 = [v8 accessibilityDescription];

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (BOOL)_accessibilitySavePhotoLabel:(id)a3
{
  v4 = a3;
  [(PHAssetAccessibility *)self setAccessibilityLabel:0];
  [(PHAssetAccessibility *)self _axSetICloudLabelWasSet:1];
  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(PHAssetAccessibility *)self safeValueForKey:@"photoLibrary"];
  v6 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __53__PHAssetAccessibility__accessibilitySavePhotoLabel___block_invoke;
  v11[3] = &unk_29F2E5900;
  v11[4] = self;
  v7 = v4;
  v12 = v7;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __53__PHAssetAccessibility__accessibilitySavePhotoLabel___block_invoke_2;
  v9[3] = &unk_29F2E5928;
  objc_copyWeak(&v10, &location);
  [v6 performChanges:v11 completionHandler:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  return 1;
}

void __53__PHAssetAccessibility__accessibilitySavePhotoLabel___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDBBA00] changeRequestForAsset:*(a1 + 32)];
  [v2 setAccessibilityDescription:*(a1 + 40)];
}

void __53__PHAssetAccessibility__accessibilitySavePhotoLabel___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = VOTLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = 138412802;
    v10 = WeakRetained;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_29C112000, v6, OS_LOG_TYPE_DEFAULT, "Asset save: %@ success %d: %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)accessibilityApplyValueBlock:(id)a3
{
  v5 = a3;
  [(PHAssetAccessibility *)self _setAXValueCallback:v5];
  v4 = [(PHAssetAccessibility *)self _accessibilityPhotoDescription];
  if (v5 && v4)
  {
    v5[2](v5, v4);
  }
}

@end