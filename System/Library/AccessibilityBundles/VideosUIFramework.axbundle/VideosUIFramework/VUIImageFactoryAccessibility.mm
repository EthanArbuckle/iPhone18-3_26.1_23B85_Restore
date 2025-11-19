@interface VUIImageFactoryAccessibility
+ (id)makeImageViewWithResourceDescriptor:(id)a3 existingView:(id)a4;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation VUIImageFactoryAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIResourceImageDescriptor" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIImageFactory" hasClassMethod:@"makeImageViewWithResourceDescriptor:existingView:" withFullSignature:{"@", "@", "@", 0}];
}

+ (id)makeImageViewWithResourceDescriptor:(id)a3 existingView:(id)a4
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___VUIImageFactoryAccessibility;
  v5 = a3;
  v6 = objc_msgSendSuper2(&v10, sel_makeImageViewWithResourceDescriptor_existingView_, v5, a4);
  v7 = [v5 safeStringForKey:{@"name", v10.receiver, v10.super_class}];

  LODWORD(v5) = [v7 isEqualToString:@"AppleTV-Channels"];
  if (v5)
  {
    [v6 setIsAccessibilityElement:1];
    v8 = accessibilityLocalizedString(@"channels.AppleTV");
    [v6 setAccessibilityLabel:v8];
  }

  return v6;
}

@end