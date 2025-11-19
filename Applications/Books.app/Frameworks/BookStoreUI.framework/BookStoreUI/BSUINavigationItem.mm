@interface BSUINavigationItem
- (void)_setManualScrollEdgeAppearanceProgress:(double)a3;
- (void)notifyRightBarButtonItemsDidChange;
- (void)setLeadingItemGroups:(id)a3;
- (void)setLeftBarButtonItem:(id)a3;
- (void)setLeftBarButtonItem:(id)a3 animated:(BOOL)a4;
- (void)setLeftBarButtonItems:(id)a3;
- (void)setLeftBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)setPinnedTrailingGroup:(id)a3;
- (void)setRightBarButtonItem:(id)a3;
- (void)setRightBarButtonItem:(id)a3 animated:(BOOL)a4;
- (void)setRightBarButtonItems:(id)a3;
- (void)setRightBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)setTrailingItemGroups:(id)a3;
@end

@implementation BSUINavigationItem

- (void)_setManualScrollEdgeAppearanceProgress:(double)a3
{
  if ([(BSUINavigationItem *)self _isManualScrollEdgeAppearanceEnabled]&& [(BSUINavigationItem *)self isUpdatingManualScrollEdgeAppearanceProgress])
  {
    [(BSUINavigationItem *)self _setManualScrollEdgeAppearanceEnabled:0];

    [(BSUINavigationItem *)self _setManualScrollEdgeAppearanceEnabled:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = BSUINavigationItem;
    [(BSUINavigationItem *)&v5 _setManualScrollEdgeAppearanceProgress:a3];
  }
}

- (void)setLeftBarButtonItem:(id)a3
{
  v4 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setLeftBarButtonItem:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setLeftBarButtonItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v7.receiver = self;
  v7.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v7 setLeftBarButtonItem:v6 animated:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setLeftBarButtonItems:(id)a3
{
  v4 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setLeftBarButtonItems:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setLeftBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v7.receiver = self;
  v7.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v7 setLeftBarButtonItems:v6 animated:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setRightBarButtonItem:(id)a3
{
  v4 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setRightBarButtonItem:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setRightBarButtonItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v7.receiver = self;
  v7.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v7 setRightBarButtonItem:v6 animated:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setRightBarButtonItems:(id)a3
{
  v4 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setRightBarButtonItems:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setRightBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v7.receiver = self;
  v7.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v7 setRightBarButtonItems:v6 animated:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setLeadingItemGroups:(id)a3
{
  v4 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setLeadingItemGroups:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setTrailingItemGroups:(id)a3
{
  v4 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setTrailingItemGroups:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setPinnedTrailingGroup:(id)a3
{
  v4 = a3;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setPinnedTrailingGroup:v4];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)notifyRightBarButtonItemsDidChange
{
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

@end