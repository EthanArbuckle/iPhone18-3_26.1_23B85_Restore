@interface CNContactListSearchBar
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation CNContactListSearchBar

- (void)buildMenuWithBuilder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNContactListSearchBar;
  v3 = a3;
  [(CNContactListSearchBar *)&v4 buildMenuWithBuilder:v3];
  [v3 removeMenuForIdentifier:{@"com.apple.menu.insert-from-external-sources", v4.receiver, v4.super_class}];
}

@end