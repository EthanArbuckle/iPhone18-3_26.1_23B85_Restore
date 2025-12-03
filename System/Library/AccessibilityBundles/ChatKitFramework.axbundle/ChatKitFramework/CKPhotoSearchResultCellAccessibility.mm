@interface CKPhotoSearchResultCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)prepareForReuse;
@end

@implementation CKPhotoSearchResultCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKPhotoSearchResultCell" isKindOfClass:@"CKEditableSearchResultCell"];
  [validationsCopy validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"isLivePhoto" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKEditableSearchResultCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"durationLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"prepareForReuse" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKPhotoSearchResultCell" hasInstanceMethod:@"configureWithQueryResult:searchText:mode:" withFullSignature:{"v", "@", "@", "Q", 0}];
  [validationsCopy validateClass:@"CKSpotlightQueryResult"];
  [validationsCopy validateClass:@"CKSpotlightQueryResult" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSSearchableItem"];
  [validationsCopy validateClass:@"CSSearchableItem" hasInstanceMethod:@"attributeSet" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSSearchableItemAttributeSet"];
  [validationsCopy validateClass:@"CSSearchableItemAttributeSet" hasInstanceMethod:@"contentURL" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axContact = [(CKPhotoSearchResultCellAccessibility *)self _axContact];
  v4 = AXCKLocalizedFromStringWithContact(_axContact);

  if ([(CKPhotoSearchResultCellAccessibility *)self safeBoolForKey:@"isVideo"])
  {
    v5 = accessibilityLocalizedString(@"video.attachment");
    _axImageURL = [(CKPhotoSearchResultCellAccessibility *)self safeUIViewForKey:@"durationLabel"];
    accessibilityLabel = [_axImageURL accessibilityLabel];
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
    _axDescription = [(CKPhotoSearchResultCellAccessibility *)self _axDescription];
    _axImageURL = [(CKPhotoSearchResultCellAccessibility *)self _axImageURL];
    if ([_axDescription length] || !_axImageURL)
    {
      goto LABEL_16;
    }

    accessibilityLabel = UIAccessibilityPhotoCreationDate();
    v11 = UIAccessibilityEmojiDescription();
    if ([v11 length])
    {
      v12 = accessibilityUIKitLocalizedString();
      v17 = accessibilityLabel;
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

      v17 = accessibilityLabel;
      v16 = v12;
      v8 = __UIAXStringForVariables();

      _axDescription = v13;
    }

    [(CKPhotoSearchResultCellAccessibility *)self _axSetDescription:v8, v16, v17, @"__AXStringForVariablesSentinel"];
  }

  _axDescription = v8;
LABEL_16:

  v14 = __UIAXStringForVariables();

  return v14;
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  v10.receiver = self;
  v10.super_class = CKPhotoSearchResultCellAccessibility;
  resultCopy = result;
  [(CKPhotoSearchResultCellAccessibility *)&v10 configureWithQueryResult:resultCopy searchText:text mode:mode];
  v9 = [resultCopy safeValueForKeyPath:{@"item.attributeSet.contentURL", v10.receiver, v10.super_class}];

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