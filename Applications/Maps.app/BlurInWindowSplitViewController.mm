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
    delegate = [(BlurInWindowSplitViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(BlurInWindowSplitViewController *)self delegate];
      [delegate2 _maps_splitViewControllerDidChangePrimaryColumnWidth:self];
    }
  }
}

@end