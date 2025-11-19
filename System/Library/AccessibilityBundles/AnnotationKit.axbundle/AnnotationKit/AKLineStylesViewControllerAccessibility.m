@interface AKLineStylesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation AKLineStylesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKLineStylesViewController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"AKLineStylesViewController" hasInstanceMethod:@"currentLineWidthTag" withFullSignature:{"q", 0}];
  [v3 validateClass:@"AKLineStylesViewController" hasInstanceMethod:@"lineWidthTags" withFullSignature:{"@", 0}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = AKLineStylesViewControllerAccessibility;
  v8 = [(AKLineStylesViewControllerAccessibility *)&v21 tableView:v6 cellForRowAtIndexPath:v7];
  [v8 setIsAccessibilityElement:1];
  objc_opt_class();
  v9 = [(AKLineStylesViewControllerAccessibility *)self safeValueForKey:@"lineWidthTags"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v7 row];
  if (v11 < [v10 count])
  {
    v12 = [v10 objectAtIndex:{objc_msgSend(v7, "row")}];
    v13 = [v12 integerValue];

    v14 = [(AKLineStylesViewControllerAccessibility *)self safeIntegerForKey:@"currentLineWidthTag"];
    v15 = MEMORY[0x29EDBA0F8];
    v16 = accessibilityLocalizedString(@"stroke.thickness.value");
    v17 = [MEMORY[0x29EDBA070] numberWithInteger:v13 - 765000];
    v18 = [v15 stringWithFormat:v16, v17];
    [v8 setAccessibilityLabel:v18];

    v19 = *MEMORY[0x29EDC7FC0];
    if (v13 != v14)
    {
      v19 = 0;
    }

    [v8 setAccessibilityTraits:v19 | *MEMORY[0x29EDC7F70]];
  }

  return v8;
}

@end