@interface BSUINavigationItem
- (void)_setManualScrollEdgeAppearanceProgress:(double)progress;
- (void)notifyRightBarButtonItemsDidChange;
- (void)setLeadingItemGroups:(id)groups;
- (void)setLeftBarButtonItem:(id)item;
- (void)setLeftBarButtonItem:(id)item animated:(BOOL)animated;
- (void)setLeftBarButtonItems:(id)items;
- (void)setLeftBarButtonItems:(id)items animated:(BOOL)animated;
- (void)setPinnedTrailingGroup:(id)group;
- (void)setRightBarButtonItem:(id)item;
- (void)setRightBarButtonItem:(id)item animated:(BOOL)animated;
- (void)setRightBarButtonItems:(id)items;
- (void)setRightBarButtonItems:(id)items animated:(BOOL)animated;
- (void)setTrailingItemGroups:(id)groups;
@end

@implementation BSUINavigationItem

- (void)_setManualScrollEdgeAppearanceProgress:(double)progress
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
    [(BSUINavigationItem *)&v5 _setManualScrollEdgeAppearanceProgress:progress];
  }
}

- (void)setLeftBarButtonItem:(id)item
{
  itemCopy = item;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setLeftBarButtonItem:itemCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setLeftBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v7.receiver = self;
  v7.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v7 setLeftBarButtonItem:itemCopy animated:animatedCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setLeftBarButtonItems:(id)items
{
  itemsCopy = items;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setLeftBarButtonItems:itemsCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setLeftBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v7.receiver = self;
  v7.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v7 setLeftBarButtonItems:itemsCopy animated:animatedCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setRightBarButtonItem:(id)item
{
  itemCopy = item;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setRightBarButtonItem:itemCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setRightBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v7.receiver = self;
  v7.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v7 setRightBarButtonItem:itemCopy animated:animatedCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setRightBarButtonItems:(id)items
{
  itemsCopy = items;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setRightBarButtonItems:itemsCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setRightBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v7.receiver = self;
  v7.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v7 setRightBarButtonItems:itemsCopy animated:animatedCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setLeadingItemGroups:(id)groups
{
  groupsCopy = groups;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_leftBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setLeadingItemGroups:groupsCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_leftBarButtonItems"];
}

- (void)setTrailingItemGroups:(id)groups
{
  groupsCopy = groups;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setTrailingItemGroups:groupsCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)setPinnedTrailingGroup:(id)group
{
  groupCopy = group;
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];
  v5.receiver = self;
  v5.super_class = BSUINavigationItem;
  [(BSUINavigationItem *)&v5 setPinnedTrailingGroup:groupCopy];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

- (void)notifyRightBarButtonItemsDidChange
{
  [(BSUINavigationItem *)self willChangeValueForKey:@"bsui_rightBarButtonItems"];

  [(BSUINavigationItem *)self didChangeValueForKey:@"bsui_rightBarButtonItems"];
}

@end