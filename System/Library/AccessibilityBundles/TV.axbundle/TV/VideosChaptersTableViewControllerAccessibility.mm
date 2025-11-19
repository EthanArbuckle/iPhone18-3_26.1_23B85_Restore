@interface VideosChaptersTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation VideosChaptersTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosChaptersTableViewController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"VideosChaptersTableViewController" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosFormatters" hasClassMethod:@"localizedChapterTitle:" withFullSignature:{"@", "Q", 0}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = VideosChaptersTableViewControllerAccessibility;
  v8 = [(VideosChaptersTableViewControllerAccessibility *)&v26 tableView:v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  v9 = [(VideosChaptersTableViewControllerAccessibility *)self safeValueForKey:@"item"];
  v10 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v11 = [v10 chapterOfType:1 atIndex:{objc_msgSend(v7, "row")}];
  v12 = __UIAccessibilityCastAsClass();

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v19 = v7;
  AXPerformSafeBlock();
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  v14 = [v8 textLabel];
  v15 = [v14 accessibilityLabel];
  [v12 playbackTime];
  v18 = AXDurationStringForDuration();
  v16 = __UIAXStringForVariables();

  [v8 setAccessibilityLabel:{v16, v13, v18, @"__AXStringForVariablesSentinel"}];

  return v8;
}

uint64_t __82__VideosChaptersTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29ED3B310](@"VideosFormatters") localizedChapterTitle:{objc_msgSend(*(a1 + 32), "row") + 1}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end