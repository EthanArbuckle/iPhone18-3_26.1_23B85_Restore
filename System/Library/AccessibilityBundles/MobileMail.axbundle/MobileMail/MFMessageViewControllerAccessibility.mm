@interface MFMessageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)messageContentView:(id)view didFinishRenderingWithHeight:(double)height;
@end

@implementation MFMessageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFMessageViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)messageContentView:(id)view didFinishRenderingWithHeight:(double)height
{
  v9.receiver = self;
  v9.super_class = MFMessageViewControllerAccessibility;
  [(MFMessageViewControllerAccessibility *)&v9 messageContentView:view didFinishRenderingWithHeight:?];
  v6 = [(MFMessageViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  v7 = [v6 safeValueForKey:@"collectionView"];

  NSClassFromString(&cfstr_Mfconversation_3.isa);
  if (objc_opt_isKindOfClass())
  {
    _axHeightOfCellsToLoad = [v7 _axHeightOfCellsToLoad];
    if (_axHeightOfCellsToLoad < height)
    {
      [v7 _axSetHeightOfCellsToLoad:{height, _axHeightOfCellsToLoad}];
    }
  }
}

@end