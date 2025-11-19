@interface UIImageViewAccessibility__PhotosUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (BOOL)_accessibilitySavePhotoLabel:(id)a3;
- (BOOL)_accessibilitySkipImageTraitDescription;
- (BOOL)_accessibilityZoomAtPoint:(CGPoint)a3 zoomIn:(BOOL)a4;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3;
- (id)_accessibilityElementStoredUserLabel;
- (id)_accessibilityPHAssetLocalIdentifier;
- (id)_accessibilityPhotoDescription;
- (id)_accessibilityPhotoLibraryURL;
- (id)_liftableSubjectView;
- (id)accessibilityCustomContent;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityLabel;
- (id)accessibilityURL;
- (id)accessibilityValue;
- (int64_t)_accessibilitySortPriority;
- (unint64_t)accessibilityTraits;
@end

@implementation UIImageViewAccessibility__PhotosUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUUserTransformView" hasInstanceMethod:@"_setEnabledInteractions:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"PUUserTransformView" hasInstanceMethod:@"setDesiredZoomScale:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"PUUserTransformView" hasInstanceMethod:@"_performZoomAndScrollChanges:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"PUUserTransformView" hasInstanceMethod:@"_scrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"mainFileURL" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUTilingView"];
  [v3 validateClass:@"VKCImageSubjectHighlightView"];
}

- (BOOL)_accessibilitySkipImageTraitDescription
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    v4 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v6 _accessibilitySkipImageTraitDescription];
  }

  return v4;
}

- (BOOL)_accessibilitySavePhotoLabel:(id)a3
{
  v4 = a3;
  v5 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v6 = [v5 _accessibilitySavePhotoLabel:v4];

  return v6;
}

- (id)_accessibilityElementStoredUserLabel
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v4 = [v3 safeValueForKey:@"_accessibilityiCloudPhotoLabel"];

  if ([v4 length])
  {
    v5 = v4;
    goto LABEL_11;
  }

  v6 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v7 = [v6 safeBoolForKey:@"isPhoto"];

  if (v7)
  {
    v8 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self accessibilityURL];
    v9 = UIAccessibilityMetadataDescriptionForImage();
  }

  else
  {
    v10 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
    v11 = [v10 safeBoolForKey:@"isVideo"];

    if (!v11)
    {
      v5 = &stru_2A228A390;
      goto LABEL_11;
    }

    v8 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self accessibilityURL];
    v9 = UIAccessibilityMetadataDescriptionForVideo();
  }

  v12 = v9;

  if (v12)
  {
    v5 = v12;
  }

  else
  {
    v5 = &stru_2A228A390;
  }

LABEL_11:

  return v5;
}

- (id)accessibilityCustomContent
{
  v2 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v3 = [v2 accessibilityCustomContent];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    v5 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v7 accessibilityTraits];
  v4 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  if (v4)
  {
    v5 = *MEMORY[0x29EDBDBF8];
  }

  else
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (BOOL)_accessibilityZoomAtPoint:(CGPoint)a3 zoomIn:(BOOL)a4
{
  v5 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset:a3.x];
  if (v5)
  {
    v6 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Putilingview.isa)];
    v7 = [v6 _accessibilityFindDescendant:&__block_literal_global_13];

    v8 = v7;
    AXPerformSafeBlock();
  }

  return v5 != 0;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = 1;
  if (![(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityZoomAtPoint:1 zoomIn:?])
  {
    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    return [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 accessibilityZoomInAtPoint:x, y];
  }

  return v6;
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityZoomAtPoint:0 zoomIn:?])
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
  return [(UIImageViewAccessibility__PhotosUI__UIKit *)&v7 accessibilityZoomInAtPoint:x, y];
}

- (id)accessibilityValue
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityValue];
    v6 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _liftableSubjectView];
    v9 = [v6 accessibilityLabel];
    v7 = __AXStringForVariables();
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    v7 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v10 accessibilityValue];
  }

  return v7;
}

- (id)accessibilityDragSourceDescriptors
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _liftableSubjectView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityDragSourceDescriptors];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    v5 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 accessibilityDragSourceDescriptors];
  }

  v6 = v5;

  return v6;
}

- (id)_liftableSubjectView
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  if (v3 && ([(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Putilingview.isa)], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 _accessibilityFindSubviewDescendant:&__block_literal_global_546];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityPhotoDescription
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _accessibilityPhotoDescription];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    v5 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 _accessibilityPhotoDescription];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityURL
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 accessibilityURL];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = 0;
      v5 = [v3 safeValueForKey:@"mainFileURL"];
      v6 = __UIAccessibilitySafeClass();

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    v4 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 accessibilityURL];
  }

  v6 = v4;
LABEL_7:

  return v6;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  v2 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v3 = [v2 _accessibilityPHAssetLocalIdentifier];

  return v3;
}

- (id)_accessibilityPhotoLibraryURL
{
  v2 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v3 = [v2 _accessibilityPhotoLibraryURL];

  return v3;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  v2 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v3 = [v2 _accessibilityIsPHAssetLocallyAvailable];

  return v3;
}

- (int64_t)_accessibilitySortPriority
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Putilingview.isa)];
  if (v3)
  {
    v4 = 0x8000000000000000;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    v4 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v6 _accessibilitySortPriority];
  }

  return v4;
}

@end