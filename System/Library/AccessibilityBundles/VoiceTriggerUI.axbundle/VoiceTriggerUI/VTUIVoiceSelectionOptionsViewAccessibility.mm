@interface VTUIVoiceSelectionOptionsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_tableCellForVoiceViewModel:(id)model indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation VTUIVoiceSelectionOptionsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VTUIVoiceSelectionOptionsView" hasInstanceMethod:@"_tableCellForVoiceViewModel:indexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"VTUIVoiceSelectionOptionsView" hasInstanceMethod:@"tableView:didSelectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = *MEMORY[0x29EDBDAB0];
  pathCopy = path;
  viewCopy = view;
  UIAccessibilitySpeak();
  v9.receiver = self;
  v9.super_class = VTUIVoiceSelectionOptionsViewAccessibility;
  [(VTUIVoiceSelectionOptionsViewAccessibility *)&v9 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)_tableCellForVoiceViewModel:(id)model indexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = VTUIVoiceSelectionOptionsViewAccessibility;
  v4 = [(VTUIVoiceSelectionOptionsViewAccessibility *)&v6 _tableCellForVoiceViewModel:model indexPath:path];
  [v4 _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_0];

  return v4;
}

@end