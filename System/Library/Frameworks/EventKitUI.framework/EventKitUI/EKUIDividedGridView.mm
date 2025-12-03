@interface EKUIDividedGridView
- (CGSize)intrinsicContentSize;
- (EKUIDividedGridViewController)viewController;
@end

@implementation EKUIDividedGridView

- (CGSize)intrinsicContentSize
{
  viewController = [(EKUIDividedGridView *)self viewController];
  [viewController intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (EKUIDividedGridViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end