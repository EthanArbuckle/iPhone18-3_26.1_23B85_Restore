@interface AKLineStylesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation AKLineStylesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKLineStylesViewController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"AKLineStylesViewController" hasInstanceMethod:@"currentLineWidthTag" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"AKLineStylesViewController" hasInstanceMethod:@"lineWidthTags" withFullSignature:{"@", 0}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = AKLineStylesViewControllerAccessibility;
  v8 = [(AKLineStylesViewControllerAccessibility *)&v21 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  [v8 setIsAccessibilityElement:1];
  objc_opt_class();
  v9 = [(AKLineStylesViewControllerAccessibility *)self safeValueForKey:@"lineWidthTags"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [pathCopy row];
  if (v11 < [v10 count])
  {
    v12 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    integerValue = [v12 integerValue];

    v14 = [(AKLineStylesViewControllerAccessibility *)self safeIntegerForKey:@"currentLineWidthTag"];
    v15 = MEMORY[0x29EDBA0F8];
    v16 = accessibilityLocalizedString(@"stroke.thickness.value");
    765000 = [MEMORY[0x29EDBA070] numberWithInteger:integerValue - 765000];
    v18 = [v15 stringWithFormat:v16, 765000];
    [v8 setAccessibilityLabel:v18];

    v19 = *MEMORY[0x29EDC7FC0];
    if (integerValue != v14)
    {
      v19 = 0;
    }

    [v8 setAccessibilityTraits:v19 | *MEMORY[0x29EDC7F70]];
  }

  return v8;
}

@end