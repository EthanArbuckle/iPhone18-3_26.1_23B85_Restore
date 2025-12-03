@interface MUPhotoTileCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MUPhotoTileCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUPhotoTileCollectionViewCell" hasInstanceMethod:@"photoOverlay" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPhotoTileOverlay" hasInstanceMethod:@"shouldBeShown" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MUPhotoTileOverlay" hasInstanceMethod:@"attributionTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPhotoTileOverlay" hasInstanceMethod:@"tileTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPhotoTileOverlay" hasInstanceMethod:@"badgeTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MUPhotoTileCollectionViewCellAccessibility *)self safeValueForKey:@"photoOverlay"];
  v3 = v2;
  if (v2 && [v2 safeBoolForKey:@"shouldBeShown"])
  {
    v4 = [v3 safeStringForKey:@"attributionTitle"];
    v5 = [v3 safeStringForKey:@"badgeTitle"];
    v6 = v5;
    if (v4)
    {
      v7 = v4;
    }

    else if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v3 safeStringForKey:@"tileTitle"];
    }

    v8 = v7;
  }

  else
  {
    v8 = &stru_2A21F1AD0;
  }

  return v8;
}

@end