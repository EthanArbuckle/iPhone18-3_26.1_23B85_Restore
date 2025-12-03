@interface _TVControlTargetAccessibility
+ (void)addTargetInControl:(id)control withViewElement:(id)element;
@end

@implementation _TVControlTargetAccessibility

+ (void)addTargetInControl:(id)control withViewElement:(id)element
{
  controlCopy = control;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS____TVControlTargetAccessibility;
  elementCopy = element;
  objc_msgSendSuper2(&v13, sel_addTargetInControl_withViewElement_, controlCopy, elementCopy);
  dataDictionary = [elementCopy dataDictionary];

  v9 = [dataDictionary objectForKeyedSubscript:@"metrics"];
  v10 = [v9 objectForKeyedSubscript:@"click"];
  v11 = [v10 safeStringForKey:@"targetType"];

  v12 = accessibilityRetrieveLabelForSource(v11);
  if ([v12 length])
  {
    [controlCopy _accessibilitySetRetainedValue:v12 forKey:@"AXTVMLKitAccessibilityTextOverrideKey"];
  }
}

@end