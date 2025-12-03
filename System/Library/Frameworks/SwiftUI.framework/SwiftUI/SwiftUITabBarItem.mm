@interface SwiftUITabBarItem
- (void)setView:(id)view;
@end

@implementation SwiftUITabBarItem

- (void)setView:(id)view
{
  v4.receiver = self;
  v4.super_class = SwiftUITabBarItem;
  [(SwiftUITabBarItem *)&v4 setView:view];
  [(SwiftUITabBarItem *)self updateAccessibility];
}

@end