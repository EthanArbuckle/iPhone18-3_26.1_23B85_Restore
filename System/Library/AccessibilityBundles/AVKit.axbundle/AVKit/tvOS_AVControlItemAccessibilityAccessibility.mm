@interface tvOS_AVControlItemAccessibilityAccessibility
+ (id)_cancelPiPControlItem;
+ (id)_startPiPControlItem;
+ (id)_stopPiPControlItem;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation tvOS_AVControlItemAccessibilityAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVControlItem" hasClassMethod:@"_cancelPiPControlItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVControlItem" hasClassMethod:@"_stopPiPControlItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVControlItem" hasClassMethod:@"_startPiPControlItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBSPictureInPictureController"];
  [v3 validateClass:@"PBSPictureInPictureController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBSPictureInPictureController" hasInstanceMethod:@"currentState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBSPictureInPictureState" hasInstanceMethod:@"isPictureInPictureActive" withFullSignature:{"B", 0}];
}

+ (id)_cancelPiPControlItem
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___tvOS_AVControlItemAccessibilityAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel__cancelPiPControlItem);
  v3 = accessibilityLocalizedString(@"pip.cancel.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

+ (id)_stopPiPControlItem
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___tvOS_AVControlItemAccessibilityAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel__stopPiPControlItem);
  v3 = accessibilityLocalizedString(@"pip.stop.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

+ (id)_startPiPControlItem
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___tvOS_AVControlItemAccessibilityAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel__startPiPControlItem);
  [v2 _setAccessibilityLabelBlock:&__block_literal_global_3];

  return v2;
}

@end