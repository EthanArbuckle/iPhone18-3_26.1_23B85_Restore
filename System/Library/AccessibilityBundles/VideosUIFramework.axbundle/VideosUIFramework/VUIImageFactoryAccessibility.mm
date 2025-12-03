@interface VUIImageFactoryAccessibility
+ (id)makeImageViewWithResourceDescriptor:(id)descriptor existingView:(id)view;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation VUIImageFactoryAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIResourceImageDescriptor" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIImageFactory" hasClassMethod:@"makeImageViewWithResourceDescriptor:existingView:" withFullSignature:{"@", "@", "@", 0}];
}

+ (id)makeImageViewWithResourceDescriptor:(id)descriptor existingView:(id)view
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___VUIImageFactoryAccessibility;
  descriptorCopy = descriptor;
  v6 = objc_msgSendSuper2(&v10, sel_makeImageViewWithResourceDescriptor_existingView_, descriptorCopy, view);
  v7 = [descriptorCopy safeStringForKey:{@"name", v10.receiver, v10.super_class}];

  LODWORD(descriptorCopy) = [v7 isEqualToString:@"AppleTV-Channels"];
  if (descriptorCopy)
  {
    [v6 setIsAccessibilityElement:1];
    v8 = accessibilityLocalizedString(@"channels.AppleTV");
    [v6 setAccessibilityLabel:v8];
  }

  return v6;
}

@end