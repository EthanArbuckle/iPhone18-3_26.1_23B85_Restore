@interface MFMessageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)messageContentView:(id)a3 didFinishRenderingWithHeight:(double)a4;
@end

@implementation MFMessageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFMessageViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)messageContentView:(id)a3 didFinishRenderingWithHeight:(double)a4
{
  v9.receiver = self;
  v9.super_class = MFMessageViewControllerAccessibility;
  [(MFMessageViewControllerAccessibility *)&v9 messageContentView:a3 didFinishRenderingWithHeight:?];
  v6 = [(MFMessageViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  v7 = [v6 safeValueForKey:@"collectionView"];

  NSClassFromString(&cfstr_Mfconversation_3.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 _axHeightOfCellsToLoad];
    if (v8 < a4)
    {
      [v7 _axSetHeightOfCellsToLoad:{a4, v8}];
    }
  }
}

@end