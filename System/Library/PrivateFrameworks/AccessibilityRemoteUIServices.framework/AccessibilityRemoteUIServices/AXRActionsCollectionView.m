@interface AXRActionsCollectionView
- (CGSize)intrinsicContentSize;
- (void)setContentSize:(CGSize)a3;
@end

@implementation AXRActionsCollectionView

- (void)setContentSize:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = AXRActionsCollectionView;
  [(AXRActionsCollectionView *)&v4 setContentSize:a3.width, a3.height];
  [(AXRActionsCollectionView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  [(AXRActionsCollectionView *)self layoutIfNeeded];
  v3 = *MEMORY[0x277D77260];
  [(AXRActionsCollectionView *)self contentSize];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

@end