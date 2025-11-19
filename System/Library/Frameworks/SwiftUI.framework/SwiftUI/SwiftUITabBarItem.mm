@interface SwiftUITabBarItem
- (void)setView:(id)a3;
@end

@implementation SwiftUITabBarItem

- (void)setView:(id)a3
{
  v4.receiver = self;
  v4.super_class = SwiftUITabBarItem;
  [(SwiftUITabBarItem *)&v4 setView:a3];
  [(SwiftUITabBarItem *)self updateAccessibility];
}

@end