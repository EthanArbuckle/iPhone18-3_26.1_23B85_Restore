@interface HUSceneActionEditorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
@end

@implementation HUSceneActionEditorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUSceneActionEditorViewController" hasInstanceMethod:@"setupCell:forItem:indexPath:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"HUSceneActionEditorViewController" isKindOfClass:@"HUItemTableViewController"];
  [validationsCopy validateClass:@"HUItemTableViewController" hasInstanceMethod:@"itemManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUSceneActionEditorItemManager" hasInstanceMethod:@"nameAndIconItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUNameAndIconEditorCell" hasInstanceMethod:@"iconButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUNameAndIconEditorCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v15.receiver = self;
  v15.super_class = HUSceneActionEditorViewControllerAccessibility;
  itemCopy = item;
  [(HUSceneActionEditorViewControllerAccessibility *)&v15 setupCell:cellCopy forItem:itemCopy indexPath:path];
  v10 = [(HUSceneActionEditorViewControllerAccessibility *)self safeValueForKeyPath:@"itemManager.nameAndIconItem"];

  if (v10 == itemCopy)
  {
    v11 = MEMORY[0x29EDB8D80];
    v12 = [cellCopy safeValueForKey:@"iconButton"];
    v13 = [cellCopy safeValueForKey:@"textField"];
    v14 = [v11 axArrayByIgnoringNilElementsWithCount:{2, v12, v13, v15.receiver, v15.super_class}];
    [cellCopy setAccessibilityElements:v14];
  }

  else
  {
    [cellCopy setAccessibilityElements:0];
  }
}

@end