@interface BSUIFeedNavigationItem
- (void)setTitle:(id)a3;
@end

@implementation BSUIFeedNavigationItem

- (void)setTitle:(id)a3
{
  v4 = a3;
  if ([(BSUIFeedNavigationItem *)self allowsTitle])
  {
    v5.receiver = self;
    v5.super_class = BSUIFeedNavigationItem;
    [(BSUIFeedNavigationItem *)&v5 setTitle:v4];
  }
}

@end