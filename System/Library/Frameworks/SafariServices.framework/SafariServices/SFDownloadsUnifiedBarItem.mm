@interface SFDownloadsUnifiedBarItem
- (SFDownloadsUnifiedBarItem)initWithAction:(id)action;
@end

@implementation SFDownloadsUnifiedBarItem

- (SFDownloadsUnifiedBarItem)initWithAction:(id)action
{
  actionCopy = action;
  v17.receiver = self;
  v17.super_class = SFDownloadsUnifiedBarItem;
  v5 = [(SFDownloadsUnifiedBarItem *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(SFDownloadsUnifiedBarItemView);
    view = v5->_view;
    v5->_view = v6;

    objc_initWeak(&location, v5);
    v8 = v5->_view;
    v9 = MEMORY[0x1E69DC628];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__SFDownloadsUnifiedBarItem_initWithAction___block_invoke;
    v13[3] = &unk_1E84966A0;
    objc_copyWeak(&v15, &location);
    v14 = actionCopy;
    v10 = [v9 actionWithHandler:v13];
    [(SFDownloadsUnifiedBarItemView *)v8 addAction:v10 forControlEvents:0x2000];

    v11 = v5;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __44__SFDownloadsUnifiedBarItem_initWithAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = WeakRetained;
      (*(v3 + 16))();
      WeakRetained = v4;
    }
  }
}

@end