@interface _TVControlTargetAccessibility
+ (void)addTargetInControl:(id)a3 withViewElement:(id)a4;
@end

@implementation _TVControlTargetAccessibility

+ (void)addTargetInControl:(id)a3 withViewElement:(id)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS____TVControlTargetAccessibility;
  v7 = a4;
  objc_msgSendSuper2(&v13, sel_addTargetInControl_withViewElement_, v6, v7);
  v8 = [v7 dataDictionary];

  v9 = [v8 objectForKeyedSubscript:@"metrics"];
  v10 = [v9 objectForKeyedSubscript:@"click"];
  v11 = [v10 safeStringForKey:@"targetType"];

  v12 = accessibilityRetrieveLabelForSource(v11);
  if ([v12 length])
  {
    [v6 _accessibilitySetRetainedValue:v12 forKey:@"AXTVMLKitAccessibilityTextOverrideKey"];
  }
}

@end