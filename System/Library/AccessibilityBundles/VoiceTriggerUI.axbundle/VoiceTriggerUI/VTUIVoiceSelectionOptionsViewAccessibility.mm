@interface VTUIVoiceSelectionOptionsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_tableCellForVoiceViewModel:(id)a3 indexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation VTUIVoiceSelectionOptionsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VTUIVoiceSelectionOptionsView" hasInstanceMethod:@"_tableCellForVoiceViewModel:indexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"VTUIVoiceSelectionOptionsView" hasInstanceMethod:@"tableView:didSelectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = *MEMORY[0x29EDBDAB0];
  v7 = a4;
  v8 = a3;
  UIAccessibilitySpeak();
  v9.receiver = self;
  v9.super_class = VTUIVoiceSelectionOptionsViewAccessibility;
  [(VTUIVoiceSelectionOptionsViewAccessibility *)&v9 tableView:v8 didSelectRowAtIndexPath:v7];
}

- (id)_tableCellForVoiceViewModel:(id)a3 indexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = VTUIVoiceSelectionOptionsViewAccessibility;
  v4 = [(VTUIVoiceSelectionOptionsViewAccessibility *)&v6 _tableCellForVoiceViewModel:a3 indexPath:a4];
  [v4 _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_0];

  return v4;
}

@end