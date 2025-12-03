@interface AMSUICommonCollectionView
- (AMSUICommonCollectionView)init;
- (AMSUICommonCollectionViewDelegate)commonDelegate;
- (void)setCommonDelegate:(id)delegate;
@end

@implementation AMSUICommonCollectionView

- (AMSUICommonCollectionView)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v4 = [(AMSUICommonCollectionView *)self initWithFrame:v3 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  if (v4)
  {
    [(AMSUICommonCollectionView *)v4 setAlwaysBounceVertical:1];
    ams_clear = [MEMORY[0x1E69DC888] ams_clear];
    [(AMSUICommonCollectionView *)v4 setBackgroundColor:ams_clear];

    v6 = [[AMSUICommonCollectionViewHandler alloc] initWithCollectionView:v4];
    handler = v4->_handler;
    v4->_handler = v6;

    v8 = v4->_handler;
    v10.receiver = v4;
    v10.super_class = AMSUICommonCollectionView;
    [(AMSUICommonCollectionView *)&v10 setDelegate:v8];
  }

  return v4;
}

- (AMSUICommonCollectionViewDelegate)commonDelegate
{
  handler = [(AMSUICommonCollectionView *)self handler];
  delegate = [handler delegate];

  return delegate;
}

- (void)setCommonDelegate:(id)delegate
{
  delegateCopy = delegate;
  handler = [(AMSUICommonCollectionView *)self handler];
  [handler setDelegate:delegateCopy];
}

@end