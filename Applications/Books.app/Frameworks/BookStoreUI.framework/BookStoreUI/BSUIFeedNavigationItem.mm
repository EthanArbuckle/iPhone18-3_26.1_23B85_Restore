@interface BSUIFeedNavigationItem
- (void)setTitle:(id)title;
@end

@implementation BSUIFeedNavigationItem

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ([(BSUIFeedNavigationItem *)self allowsTitle])
  {
    v5.receiver = self;
    v5.super_class = BSUIFeedNavigationItem;
    [(BSUIFeedNavigationItem *)&v5 setTitle:titleCopy];
  }
}

@end