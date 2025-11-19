@interface MainWindowSearchBar
- (SearchBarHeightObserver)heightObserver;
- (void)setFrame:(CGRect)a3;
@end

@implementation MainWindowSearchBar

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MainWindowSearchBar *)self frame];
  v9 = v8;
  v11.receiver = self;
  v11.super_class = MainWindowSearchBar;
  [(MainWindowSearchBar *)&v11 setFrame:x, y, width, height];
  if (height != v9)
  {
    v10 = [(MainWindowSearchBar *)self heightObserver];
    [v10 searchBarHeightDidChange];
  }
}

- (SearchBarHeightObserver)heightObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_heightObserver);

  return WeakRetained;
}

@end