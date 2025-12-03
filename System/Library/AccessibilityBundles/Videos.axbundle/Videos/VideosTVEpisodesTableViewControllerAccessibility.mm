@interface VideosTVEpisodesTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureCell:(id)cell atIndexPath:(id)path withEntity:(id)entity invalidationContext:(id)context;
@end

@implementation VideosTVEpisodesTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosTVEpisodesTableViewController" hasInstanceMethod:@"configureCell: atIndexPath: withEntity: invalidationContext:" withFullSignature:{"v", "@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"VideosFormatters"];
  [validationsCopy validateClass:@"VideosFormatters" hasClassMethod:@"localizedEpisodeTitle:" withFullSignature:{"@", "Q", 0}];
}

- (void)configureCell:(id)cell atIndexPath:(id)path withEntity:(id)entity invalidationContext:(id)context
{
  cellCopy = cell;
  pathCopy = path;
  entityCopy = entity;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = VideosTVEpisodesTableViewControllerAccessibility;
  [(VideosTVEpisodesTableViewControllerAccessibility *)&v26 configureCell:cellCopy atIndexPath:pathCopy withEntity:entityCopy invalidationContext:contextCopy];
  v14 = [entityCopy objectForKeyedSubscript:*MEMORY[0x29EDBB2B0]];
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

  textLabel = [cellCopy textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];
  [entityCopy playbackDuration];
  v19 = AXDurationStringForDuration();
  v18 = __UIAXStringForVariables();

  [cellCopy setAccessibilityLabel:{v18, v15, v19, @"__AXStringForVariablesSentinel"}];
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