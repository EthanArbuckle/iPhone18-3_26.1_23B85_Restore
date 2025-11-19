@interface SCATPointPickerGroup
- (BOOL)isEqual:(id)a3;
- (CGRect)scatFrame;
- (SCATPointPickerGroup)initWithSelectionPath:(id)a3 generatorDelegate:(id)a4;
- (SCATPointPickerGroupDelegate)delegate;
- (unint64_t)hash;
@end

@implementation SCATPointPickerGroup

- (SCATPointPickerGroup)initWithSelectionPath:(id)a3 generatorDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCATPointPickerGroup;
  v9 = [(SCATPointPickerGroup *)&v12 initWithGenerator:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selectionPath, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 selectionPath];
    v7 = [(SCATPointPickerGroup *)self selectionPath];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [v5 selectionPath];
      v9 = [(SCATPointPickerGroup *)self selectionPath];
      v10 = [v8 isEqual:v9];
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
  v2 = [(SCATPointPickerGroup *)self selectionPath];
  v3 = [v2 hash];

  return v3;
}

- (CGRect)scatFrame
{
  v3 = [(SCATPointPickerGroup *)self delegate];
  [v3 scannerFrameForPointPickerGroup:self];
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