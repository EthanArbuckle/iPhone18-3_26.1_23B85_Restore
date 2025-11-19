@interface PLManagedAssetAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PLManagedAssetAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLManagedAsset" hasInstanceMethod:@"isPhoto" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PLManagedAsset" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PLManagedAsset" hasInstanceMethod:@"isAudio" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PLManagedAsset" hasInstanceMethod:@"isPhotoIris" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"isPhoto"];
  v4 = [v3 BOOLValue];

  v5 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"isVideo"];
  v6 = [v5 BOOLValue];

  v7 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"isAudio"];
  v8 = [v7 BOOLValue];

  v9 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"isPhotoIris"];
  v10 = [v9 BOOLValue];

  v11 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"mainFileURL"];
  if (v4)
  {
    if (UIAccessibilityIsImageScreenshot())
    {
      v12 = accessibilityUIKitLocalizedString();
LABEL_12:
      v49 = v12;
      goto LABEL_13;
    }

    if (v10)
    {
      v14 = *MEMORY[0x29EDC7378];
      v15 = accessibilityPLServicesLocalizedString(@"photo.label.type.photo.iris");
      v49 = AXAttributedStringForBetterPronuciation();

      goto LABEL_13;
    }

    v13 = @"photo.label.type.photo";
LABEL_11:
    v12 = accessibilityPLServicesLocalizedString(v13);
    goto LABEL_12;
  }

  if (v6)
  {
    v13 = @"photo.label.type.video";
    goto LABEL_11;
  }

  if (v8)
  {
    v13 = @"photo.label.type.audio";
    goto LABEL_11;
  }

  v49 = 0;
LABEL_13:
  v16 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"width"];
  v17 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"height"];
  v18 = v17;
  if (v16)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  if ((v20 & v4) == 1)
  {
    v21 = [v16 integerValue];
    if (v21 >= [v18 integerValue])
    {
      v22 = @"photo.label.orientation.landscape";
    }

    else
    {
      v22 = @"photo.label.orientation.portrait";
    }

    v47 = accessibilityPLServicesLocalizedString(v22);
  }

  else
  {
    v47 = 0;
  }

  v48 = v4;
  v23 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"dateCreated"];
  v24 = v8;
  if (v23)
  {
    v46 = v6;
    v25 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [MEMORY[0x29EDB8D98] currentCalendar];
      v27 = [v26 components:28 fromDate:v23];

      v28 = [MEMORY[0x29EDB8D98] currentCalendar];
      v29 = [MEMORY[0x29EDB8DB0] date];
      v30 = [v28 components:28 fromDate:v29];

      v31 = [v27 year];
      if (v31 == [v30 year])
      {
        v32 = [v27 month];
        if (v32 == [v30 month])
        {
          [v27 day];
          [v30 day];
        }
      }

      v33 = AXDateStringForFormat();
    }

    else
    {
      v33 = 0;
    }

    v11 = v25;
    v6 = v46;
  }

  else
  {
    v33 = 0;
  }

  v34 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"duration"];
  [v34 floatValue];
  v36 = roundf(v35);

  v37 = 0;
  if (v36 > 0.0 && ((v24 | v6) & 1) != 0)
  {
    v38 = MEMORY[0x29EDBD7E8];
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"%.0f", v36];
    v40 = v39 = v11;
    v37 = [v38 axAttributedStringWithString:v40];

    v11 = v39;
    if (v36 >= 3600.0)
    {
      v41 = MEMORY[0x29EDBD8B0];
    }

    else
    {
      v41 = MEMORY[0x29EDBD8C0];
    }

    [v37 setAttribute:*MEMORY[0x29EDB8F00] forKey:*v41];
  }

  if (v48)
  {
    v42 = UIAccessibilityMetadataDescriptionForImage();
    v43 = v47;
  }

  else
  {
    if (v6)
    {
      v42 = UIAccessibilityMetadataDescriptionForVideo();
    }

    else
    {
      v42 = 0;
    }

    v43 = v47;
  }

  v44 = __UIAXStringForVariables();

  return v44;
}

@end