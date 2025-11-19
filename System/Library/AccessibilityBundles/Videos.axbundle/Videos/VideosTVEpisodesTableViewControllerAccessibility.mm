@interface VideosTVEpisodesTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)configureCell:(id)a3 atIndexPath:(id)a4 withEntity:(id)a5 invalidationContext:(id)a6;
@end

@implementation VideosTVEpisodesTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosTVEpisodesTableViewController" hasInstanceMethod:@"configureCell: atIndexPath: withEntity: invalidationContext:" withFullSignature:{"v", "@", "@", "@", "@", 0}];
  [v3 validateClass:@"VideosFormatters"];
  [v3 validateClass:@"VideosFormatters" hasClassMethod:@"localizedEpisodeTitle:" withFullSignature:{"@", "Q", 0}];
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4 withEntity:(id)a5 invalidationContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = VideosTVEpisodesTableViewControllerAccessibility;
  [(VideosTVEpisodesTableViewControllerAccessibility *)&v26 configureCell:v10 atIndexPath:v11 withEntity:v12 invalidationContext:v13];
  v14 = [v12 objectForKeyedSubscript:*MEMORY[0x29EDBB2B0]];
  [v14 unsignedIntegerValue];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  AXPerformSafeBlock();
  v15 = v21[5];
  _Block_object_dispose(&v20, 8);

  v16 = [v10 textLabel];
  v17 = [v16 accessibilityLabel];
  [v12 playbackDuration];
  v19 = AXDurationStringForDuration();
  v18 = __UIAXStringForVariables();

  [v10 setAccessibilityLabel:{v18, v15, v19, @"__AXStringForVariablesSentinel"}];
}

uint64_t __109__VideosTVEpisodesTableViewControllerAccessibility_configureCell_atIndexPath_withEntity_invalidationContext___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29ED3FBC0](@"VideosFormatters") localizedEpisodeTitle:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end