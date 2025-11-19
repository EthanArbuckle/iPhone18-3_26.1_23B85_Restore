@interface SCATPointPickerElement
- (SCATPointPickerElement)initWithSelectionPath:(id)a3;
@end

@implementation SCATPointPickerElement

- (SCATPointPickerElement)initWithSelectionPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCATPointPickerElement;
  v6 = [(SCATPointPickerElement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectionPath, a3);
  }

  return v7;
}

@end