@interface HUSceneActionEditorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
@end

@implementation HUSceneActionEditorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUSceneActionEditorViewController" hasInstanceMethod:@"setupCell:forItem:indexPath:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v3 validateClass:@"HUSceneActionEditorViewController" isKindOfClass:@"HUItemTableViewController"];
  [v3 validateClass:@"HUItemTableViewController" hasInstanceMethod:@"itemManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUSceneActionEditorItemManager" hasInstanceMethod:@"nameAndIconItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUNameAndIconEditorCell" hasInstanceMethod:@"iconButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUNameAndIconEditorCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = HUSceneActionEditorViewControllerAccessibility;
  v9 = a4;
  [(HUSceneActionEditorViewControllerAccessibility *)&v15 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUSceneActionEditorViewControllerAccessibility *)self safeValueForKeyPath:@"itemManager.nameAndIconItem"];

  if (v10 == v9)
  {
    v11 = MEMORY[0x29EDB8D80];
    v12 = [v8 safeValueForKey:@"iconButton"];
    v13 = [v8 safeValueForKey:@"textField"];
    v14 = [v11 axArrayByIgnoringNilElementsWithCount:{2, v12, v13, v15.receiver, v15.super_class}];
    [v8 setAccessibilityElements:v14];
  }

  else
  {
    [v8 setAccessibilityElements:0];
  }
}

@end