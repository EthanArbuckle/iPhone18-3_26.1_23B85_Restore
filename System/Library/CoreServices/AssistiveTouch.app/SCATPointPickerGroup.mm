@interface SCATPointPickerGroup
- (BOOL)isEqual:(id)equal;
- (CGRect)scatFrame;
- (SCATPointPickerGroup)initWithSelectionPath:(id)path generatorDelegate:(id)delegate;
- (SCATPointPickerGroupDelegate)delegate;
- (unint64_t)hash;
@end

@implementation SCATPointPickerGroup

- (SCATPointPickerGroup)initWithSelectionPath:(id)path generatorDelegate:(id)delegate
{
  pathCopy = path;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SCATPointPickerGroup;
  v9 = [(SCATPointPickerGroup *)&v12 initWithGenerator:delegateCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selectionPath, path);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    selectionPath = [v5 selectionPath];
    selectionPath2 = [(SCATPointPickerGroup *)self selectionPath];
    if (selectionPath == selectionPath2)
    {
      v10 = 1;
    }

    else
    {
      selectionPath3 = [v5 selectionPath];
      selectionPath4 = [(SCATPointPickerGroup *)self selectionPath];
      v10 = [selectionPath3 isEqual:selectionPath4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  selectionPath = [(SCATPointPickerGroup *)self selectionPath];
  v3 = [selectionPath hash];

  return v3;
}

- (CGRect)scatFrame
{
  delegate = [(SCATPointPickerGroup *)self delegate];
  [delegate scannerFrameForPointPickerGroup:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (SCATPointPickerGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end