@interface UIImageViewAccessibility__PhotosUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (BOOL)_accessibilitySavePhotoLabel:(id)label;
- (BOOL)_accessibilitySkipImageTraitDescription;
- (BOOL)_accessibilityZoomAtPoint:(CGPoint)point zoomIn:(BOOL)in;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)point;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)point;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUUserTransformView" hasInstanceMethod:@"_setEnabledInteractions:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"PUUserTransformView" hasInstanceMethod:@"setDesiredZoomScale:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"PUUserTransformView" hasInstanceMethod:@"_performZoomAndScrollChanges:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"PUUserTransformView" hasInstanceMethod:@"_scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAsset" hasInstanceMethod:@"mainFileURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUTilingView"];
  [validationsCopy validateClass:@"VKCImageSubjectHighlightView"];
}

- (BOOL)_accessibilitySkipImageTraitDescription
{
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  if (_axPHAsset)
  {
    _accessibilitySkipImageTraitDescription = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    _accessibilitySkipImageTraitDescription = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v6 _accessibilitySkipImageTraitDescription];
  }

  return _accessibilitySkipImageTraitDescription;
}

- (BOOL)_accessibilitySavePhotoLabel:(id)label
{
  labelCopy = label;
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v6 = [_axPHAsset _accessibilitySavePhotoLabel:labelCopy];

  return v6;
}

- (id)_accessibilityElementStoredUserLabel
{
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v4 = [_axPHAsset safeValueForKey:@"_accessibilityiCloudPhotoLabel"];

  if ([v4 length])
  {
    v5 = v4;
    goto LABEL_11;
  }

  _axPHAsset2 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v7 = [_axPHAsset2 safeBoolForKey:@"isPhoto"];

  if (v7)
  {
    accessibilityURL = [(UIImageViewAccessibility__PhotosUI__UIKit *)self accessibilityURL];
    v9 = UIAccessibilityMetadataDescriptionForImage();
  }

  else
  {
    _axPHAsset3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
    v11 = [_axPHAsset3 safeBoolForKey:@"isVideo"];

    if (!v11)
    {
      v5 = &stru_2A228A390;
      goto LABEL_11;
    }

    accessibilityURL = [(UIImageViewAccessibility__PhotosUI__UIKit *)self accessibilityURL];
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
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  accessibilityCustomContent = [_axPHAsset accessibilityCustomContent];

  return accessibilityCustomContent;
}

- (id)accessibilityLabel
{
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v4 = _axPHAsset;
  if (_axPHAsset)
  {
    accessibilityLabel = [_axPHAsset accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    accessibilityLabel = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
  accessibilityTraits = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v7 accessibilityTraits];
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  if (_axPHAsset)
  {
    v5 = *MEMORY[0x29EDBDBF8];
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (BOOL)_accessibilityZoomAtPoint:(CGPoint)point zoomIn:(BOOL)in
{
  v5 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset:point.x];
  if (v5)
  {
    v6 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Putilingview.isa)];
    v7 = [v6 _accessibilityFindDescendant:&__block_literal_global_13];

    v8 = v7;
    AXPerformSafeBlock();
  }

  return v5 != 0;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = 1;
  if (![(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityZoomAtPoint:1 zoomIn:?])
  {
    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    return [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 accessibilityZoomInAtPoint:x, y];
  }

  return v6;
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v4 = _axPHAsset;
  if (_axPHAsset)
  {
    accessibilityValue = [_axPHAsset accessibilityValue];
    _liftableSubjectView = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _liftableSubjectView];
    accessibilityLabel = [_liftableSubjectView accessibilityLabel];
    accessibilityValue2 = __AXStringForVariables();
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    accessibilityValue2 = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v10 accessibilityValue];
  }

  return accessibilityValue2;
}

- (id)accessibilityDragSourceDescriptors
{
  _liftableSubjectView = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _liftableSubjectView];
  v4 = _liftableSubjectView;
  if (_liftableSubjectView)
  {
    accessibilityDragSourceDescriptors = [_liftableSubjectView accessibilityDragSourceDescriptors];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    accessibilityDragSourceDescriptors = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 accessibilityDragSourceDescriptors];
  }

  v6 = accessibilityDragSourceDescriptors;

  return v6;
}

- (id)_liftableSubjectView
{
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  if (_axPHAsset && ([(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Putilingview.isa)], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
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
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  v4 = _axPHAsset;
  if (_axPHAsset)
  {
    _accessibilityPhotoDescription = [_axPHAsset _accessibilityPhotoDescription];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    _accessibilityPhotoDescription = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 _accessibilityPhotoDescription];
  }

  v6 = _accessibilityPhotoDescription;

  return v6;
}

- (id)accessibilityURL
{
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessibilityURL = [_axPHAsset accessibilityURL];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = 0;
      v5 = [_axPHAsset safeValueForKey:@"mainFileURL"];
      v6 = __UIAccessibilitySafeClass();

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    accessibilityURL = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v8 accessibilityURL];
  }

  v6 = accessibilityURL;
LABEL_7:

  return v6;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  _accessibilityPHAssetLocalIdentifier = [_axPHAsset _accessibilityPHAssetLocalIdentifier];

  return _accessibilityPHAssetLocalIdentifier;
}

- (id)_accessibilityPhotoLibraryURL
{
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  _accessibilityPhotoLibraryURL = [_axPHAsset _accessibilityPhotoLibraryURL];

  return _accessibilityPhotoLibraryURL;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  _axPHAsset = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _axPHAsset];
  _accessibilityIsPHAssetLocallyAvailable = [_axPHAsset _accessibilityIsPHAssetLocallyAvailable];

  return _accessibilityIsPHAssetLocallyAvailable;
}

- (int64_t)_accessibilitySortPriority
{
  v3 = [(UIImageViewAccessibility__PhotosUI__UIKit *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Putilingview.isa)];
  if (v3)
  {
    _accessibilitySortPriority = 0x8000000000000000;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIImageViewAccessibility__PhotosUI__UIKit;
    _accessibilitySortPriority = [(UIImageViewAccessibility__PhotosUI__UIKit *)&v6 _accessibilitySortPriority];
  }

  return _accessibilitySortPriority;
}

@end