@interface CKPhotoSearchResultCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)prepareForReuse;
@end

@implementation CKPhotoSearchResultCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKPhotoSearchResultCell" isKindOfClass:@"CKEditableSearchResultCell"];
  [v3 validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"isLivePhoto" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKEditableSearchResultCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"durationLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"prepareForReuse" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"configureWithQueryResult:searchText:mode:" withFullSignature:{"v", "@", "@", "Q", 0}];
  [v3 validateClass:@"CKSpotlightQueryResult"];
  [v3 validateClass:@"CKSpotlightQueryResult" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSSearchableItem"];
  [v3 validateClass:@"CSSearchableItem" hasInstanceMethod:@"attributeSet" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSSearchableItemAttributeSet"];
  [v3 validateClass:@"CSSearchableItemAttributeSet" hasInstanceMethod:@"contentURL" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKPhotoSearchResultCellAccessibility *)self _axContact];
  v4 = AXCKLocalizedFromStringWithContact(v3);

  if ([(CKPhotoSearchResultCellAccessibility *)self safeBoolForKey:@"isVideo"])
  {
    v5 = accessibilityLocalizedString(@"video.attachment");
    v6 = [(CKPhotoSearchResultCellAccessibility *)self safeUIViewForKey:@"durationLabel"];
    v7 = [v6 accessibilityLabel];
    v8 = AXLocalizeDurationTime();
  }

  else
  {
    if ([(CKPhotoSearchResultCellAccessibility *)self safeBoolForKey:@"isLivePhoto"])
    {
      v9 = @"live.photo";
    }

    else
    {
      v9 = @"photo.attachment";
    }

    v5 = accessibilityLocalizedString(v9);
    v10 = [(CKPhotoSearchResultCellAccessibility *)self _axDescription];
    v6 = [(CKPhotoSearchResultCellAccessibility *)self _axImageURL];
    if ([v10 length] || !v6)
    {
      goto LABEL_16;
    }

    v7 = UIAccessibilityPhotoCreationDate();
    v11 = UIAccessibilityEmojiDescription();
    if ([v11 length])
    {
      v12 = accessibilityUIKitLocalizedString();
      v17 = v7;
      v16 = v11;
      v8 = __UIAXStringForVariables();
    }

    else
    {
      v12 = UIAccessibilityMetadataDescriptionForImage();
      if (UIAccessibilityIsImageScreenshot())
      {
        v13 = accessibilityUIKitLocalizedString();
      }

      else
      {
        v13 = 0;
      }

      v17 = v7;
      v16 = v12;
      v8 = __UIAXStringForVariables();

      v10 = v13;
    }

    [(CKPhotoSearchResultCellAccessibility *)self _axSetDescription:v8, v16, v17, @"__AXStringForVariablesSentinel"];
  }

  v10 = v8;
LABEL_16:

  v14 = __UIAXStringForVariables();

  return v14;
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = CKPhotoSearchResultCellAccessibility;
  v8 = a3;
  [(CKPhotoSearchResultCellAccessibility *)&v10 configureWithQueryResult:v8 searchText:a4 mode:a5];
  v9 = [v8 safeValueForKeyPath:{@"item.attributeSet.contentURL", v10.receiver, v10.super_class}];

  [(CKPhotoSearchResultCellAccessibility *)self _axSetImageURL:v9];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKPhotoSearchResultCellAccessibility;
  [(CKPhotoSearchResultCellAccessibility *)&v3 prepareForReuse];
  [(CKPhotoSearchResultCellAccessibility *)self _axSetDescription:0];
  [(CKPhotoSearchResultCellAccessibility *)self _axSetContact:0];
  [(CKPhotoSearchResultCellAccessibility *)self _axSetImageURL:0];
}

@end