@interface CAMControlDrawerCustomButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
@end

@implementation CAMControlDrawerCustomButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [v3 validateClass:@"CAMControlDrawerCustomButton" isKindOfClass:@"CAMControlDrawerButton"];
  [v3 validateClass:@"CAMControlDrawerButton" hasInstanceMethod:@"_backgroundView" withFullSignature:{"@", 0}];
}

- (CGRect)accessibilityFrame
{
  if ([(CAMControlDrawerCustomButtonAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    v3 = [(CAMControlDrawerCustomButtonAccessibility *)self safeValueForKey:@"_backgroundView"];
    [v3 accessibilityFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CAMControlDrawerCustomButtonAccessibility;
    [(CAMControlDrawerCustomButtonAccessibility *)&v20 accessibilityFrame];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end