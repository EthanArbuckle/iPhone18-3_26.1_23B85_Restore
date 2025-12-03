@interface MainWindowSearchBar
- (SearchBarHeightObserver)heightObserver;
- (void)setFrame:(CGRect)frame;
@end

@implementation MainWindowSearchBar

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MainWindowSearchBar *)self frame];
  v9 = v8;
  v11.receiver = self;
  v11.super_class = MainWindowSearchBar;
  [(MainWindowSearchBar *)&v11 setFrame:x, y, width, height];
  if (height != v9)
  {
    heightObserver = [(MainWindowSearchBar *)self heightObserver];
    [heightObserver searchBarHeightDidChange];
  }
}

- (SearchBarHeightObserver)heightObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_heightObserver);

  return WeakRetained;
}

@end