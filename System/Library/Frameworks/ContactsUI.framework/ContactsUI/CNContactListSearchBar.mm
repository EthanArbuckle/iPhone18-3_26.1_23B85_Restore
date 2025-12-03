@interface CNContactListSearchBar
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation CNContactListSearchBar

- (void)buildMenuWithBuilder:(id)builder
{
  v4.receiver = self;
  v4.super_class = CNContactListSearchBar;
  builderCopy = builder;
  [(CNContactListSearchBar *)&v4 buildMenuWithBuilder:builderCopy];
  [builderCopy removeMenuForIdentifier:{@"com.apple.menu.insert-from-external-sources", v4.receiver, v4.super_class}];
}

@end