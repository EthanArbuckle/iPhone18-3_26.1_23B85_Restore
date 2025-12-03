@interface PLExpandableImageViewAccessibility
- (id)_accessibilityElementStoredUserLabel;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_axExifLabel;
- (id)_axMainAssetURL;
- (id)_axSourceObject;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PLExpandableImageViewAccessibility

- (id)_axMainAssetURL
{
  v3 = [(PLExpandableImageViewAccessibility *)self safeValueForKey:@"_photo"];
  v4 = v3;
  if (v3)
  {
    [v3 safeValueForKey:@"mainFileURL"];
  }

  else
  {
    [(PLExpandableImageViewAccessibility *)self _accessibilityValueForKey:@"AXAssetURL"];
  }
  v5 = ;

  return v5;
}

- (id)_axExifLabel
{
  _axMainAssetURL = [(PLExpandableImageViewAccessibility *)self _axMainAssetURL];
  v3 = UIAccessibilityMetadataDescriptionForImage();

  return v3;
}

- (id)_accessibilityElementStoredUserLabel
{
  _axExifLabel = [(PLExpandableImageViewAccessibility *)self _axExifLabel];
  v3 = _axExifLabel;
  if (_axExifLabel)
  {
    v4 = _axExifLabel;
  }

  else
  {
    v4 = &stru_2A227B0B8;
  }

  return v4;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  v46 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v6 = [(PLExpandableImageViewAccessibility *)self _accessibilityValueForKey:@"AXAccessibilityFrame"];
  [v6 rectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(PLExpandableImageViewAccessibility *)self accessibilityFrame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v49.origin.x = v8;
  v49.origin.y = v10;
  v49.size.width = v12;
  v49.size.height = v14;
  v51.origin.x = v16;
  v51.origin.y = v18;
  v51.size.width = v20;
  v51.size.height = v22;
  if (!CGRectEqualToRect(v49, v51))
  {
    v23 = [MEMORY[0x29EDBA168] valueWithRect:{v16, v18, v20, v22}];
    [(PLExpandableImageViewAccessibility *)self _accessibilitySetRetainedValue:v23 forKey:@"AXAccessibilityFrame"];
  }

  x = testCopy.x;
  y = testCopy.y;
  UIAccessibilityPointForPoint();
  v27 = v26;
  v29 = v28;
  [(PLExpandableImageViewAccessibility *)self _accessibilityValueForKey:@"_faceElements"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = v44 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v42;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v41 + 1) + 8 * i);
        [v35 accessibilityFrame];
        v48.x = v27;
        v48.y = v29;
        if (CGRectContainsPoint(v50, v48))
        {
          v36 = v35;

          goto LABEL_13;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v40.receiver = self;
  v40.super_class = PLExpandableImageViewAccessibility;
  v36 = [(PLExpandableImageViewAccessibility *)&v40 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_13:

  v37 = *MEMORY[0x29EDCA608];

  return v36;
}

- (id)_axSourceObject
{
  v3 = [(PLExpandableImageViewAccessibility *)self safeValueForKey:@"_photo"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [accessibilityLabel length];

  if (!v5)
  {
    v6 = [(PLExpandableImageViewAccessibility *)self safeValueForKey:@"_imageView"];

    v3 = v6;
  }

  return v3;
}

- (id)accessibilityValue
{
  _axSourceObject = [(PLExpandableImageViewAccessibility *)self _axSourceObject];
  accessibilityValue = [_axSourceObject accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityLabel
{
  _axSourceObject = [(PLExpandableImageViewAccessibility *)self _axSourceObject];
  accessibilityLabel = [_axSourceObject accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  _axSourceObject = [(PLExpandableImageViewAccessibility *)self _axSourceObject];
  accessibilityTraits = [_axSourceObject accessibilityTraits];

  return accessibilityTraits;
}

@end