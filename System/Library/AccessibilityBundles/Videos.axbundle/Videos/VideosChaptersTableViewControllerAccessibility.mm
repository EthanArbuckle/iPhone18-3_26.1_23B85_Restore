@interface VideosChaptersTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation VideosChaptersTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosChaptersTableViewController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"VideosChaptersTableViewController" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VideosFormatters" hasClassMethod:@"localizedChapterTitle:" withFullSignature:{"@", "Q", 0}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = VideosChaptersTableViewControllerAccessibility;
  v8 = [(VideosChaptersTableViewControllerAccessibility *)&v26 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  v9 = [(VideosChaptersTableViewControllerAccessibility *)self safeValueForKey:@"item"];
  v10 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v11 = [v10 chapterOfType:1 atIndex:{objc_msgSend(pathCopy, "row")}];
  v12 = __UIAccessibilityCastAsClass();

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v19 = pathCopy;
  AXPerformSafeBlock();
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  textLabel = [v8 textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];
  [v12 playbackTime];
  v18 = AXDurationStringForDuration();
  v16 = __UIAXStringForVariables();

  [v8 setAccessibilityLabel:{v16, v13, v18, @"__AXStringForVariablesSentinel"}];

  return v8;
}

uint64_t __82__VideosChaptersTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29ED3FBC0](@"VideosFormatters") localizedChapterTitle:{objc_msgSend(*(a1 + 32), "row") + 1}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end