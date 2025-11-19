@interface CNLabeledValue(ABLabeledCell)
- (id)contactViewControllerCellClassForPropertyType:()ABLabeledCell;
@end

@implementation CNLabeledValue(ABLabeledCell)

- (id)contactViewControllerCellClassForPropertyType:()ABLabeledCell
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x1E695C330]] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C208]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C360]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C320]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C1E0]) & 1) == 0)
  {
    [v3 isEqualToString:*MEMORY[0x1E695C3F8]];
  }

  v4 = objc_opt_class();

  return v4;
}

@end