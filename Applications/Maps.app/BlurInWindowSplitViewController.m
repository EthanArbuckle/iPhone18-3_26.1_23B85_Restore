@interface BlurInWindowSplitViewController
- (void)viewDidLayoutSubviews;
@end

@implementation BlurInWindowSplitViewController

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = BlurInWindowSplitViewController;
  [(BlurInWindowSplitViewController *)&v8 viewDidLayoutSubviews];
  [(BlurInWindowSplitViewController *)self primaryColumnWidth];
  if (v3 != self->_cachedPrimaryColumnWidth)
  {
    [(BlurInWindowSplitViewController *)self primaryColumnWidth];
    self->_cachedPrimaryColumnWidth = v4;
    v5 = [(BlurInWindowSplitViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(BlurInWindowSplitViewController *)self delegate];
      [v7 _maps_splitViewControllerDidChangePrimaryColumnWidth:self];
    }
  }
}

@end