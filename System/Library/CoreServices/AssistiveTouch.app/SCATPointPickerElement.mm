@interface SCATPointPickerElement
- (SCATPointPickerElement)initWithSelectionPath:(id)path;
@end

@implementation SCATPointPickerElement

- (SCATPointPickerElement)initWithSelectionPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = SCATPointPickerElement;
  v6 = [(SCATPointPickerElement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectionPath, path);
  }

  return v7;
}

@end