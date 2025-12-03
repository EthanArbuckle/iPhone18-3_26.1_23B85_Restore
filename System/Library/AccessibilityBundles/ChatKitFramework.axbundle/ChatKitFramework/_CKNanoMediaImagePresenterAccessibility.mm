@interface _CKNanoMediaImagePresenterAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidLoad;
@end

@implementation _CKNanoMediaImagePresenterAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_CKNanoMediaImagePresenter" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"_CKNanoMediaImagePresenter" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"CKNanoMediaPresenter" hasInstanceMethod:@"mediaObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMediaObject" hasInstanceMethod:@"fileURL" withFullSignature:{"@", 0}];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = _CKNanoMediaImagePresenterAccessibility;
  [(_CKNanoMediaImagePresenterAccessibility *)&v17 viewDidLoad];
  v3 = [(_CKNanoMediaImagePresenterAccessibility *)self safeValueForKey:@"_imageView"];
  [v3 setIsAccessibilityElement:1];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [accessibilityLabel length];

  if (!v5)
  {
    v6 = [(_CKNanoMediaImagePresenterAccessibility *)self safeValueForKey:@"mediaObject"];
    v7 = [v6 safeValueForKey:@"fileURL"];
    v8 = UIAccessibilityMetadataDescriptionForImage();
    v9 = UIAccessibilityEmojiDescription();
    if (!v8)
    {
      v10 = UIAccessibilityPhotoCreationDate();
      v11 = accessibilityLocalizedString(@"photo.attachment");
      v14 = v10;
      v16 = @"__AXStringForVariablesSentinel";
      v8 = __UIAXStringForVariables();
    }

    if ([v9 length])
    {
      v12 = accessibilityUIKitLocalizedString();
      v15 = v9;
    }

    else
    {
      if (UIAccessibilityIsImageScreenshot())
      {
        v12 = accessibilityUIKitLocalizedString();
      }

      else
      {
        v12 = 0;
      }

      v15 = v8;
    }

    v13 = __UIAXStringForVariables();
    [v3 setAccessibilityLabel:{v13, v15, @"__AXStringForVariablesSentinel"}];
  }
}

@end