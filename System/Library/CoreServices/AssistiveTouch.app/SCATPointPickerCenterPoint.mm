@interface SCATPointPickerCenterPoint
- (CGPath)scatPath;
- (CGRect)scatFrame;
- (SCATPointPickerCenterPointDelegate)delegate;
@end

@implementation SCATPointPickerCenterPoint

- (CGRect)scatFrame
{
  delegate = [(SCATPointPickerCenterPoint *)self delegate];
  [delegate scannerFrameForPointPickerCenterPoint:self];
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

- (CGPath)scatPath
{
  delegate = [(SCATPointPickerCenterPoint *)self delegate];
  v4 = [delegate scannerPathForPointPickerCenterPoint:self];

  return v4;
}

- (SCATPointPickerCenterPointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end