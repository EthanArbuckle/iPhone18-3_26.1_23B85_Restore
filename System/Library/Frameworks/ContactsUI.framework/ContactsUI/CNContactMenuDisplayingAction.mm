@interface CNContactMenuDisplayingAction
+ (id)contactActionWithTitle:(id)title menuProvider:(id)provider destructive:(BOOL)destructive;
- (CNContactMenuDisplayingAction)initWithTitle:(id)title menuProvider:(id)provider destructive:(BOOL)destructive;
@end

@implementation CNContactMenuDisplayingAction

- (CNContactMenuDisplayingAction)initWithTitle:(id)title menuProvider:(id)provider destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = CNContactMenuDisplayingAction;
  v9 = [(CNContactAction *)&v14 initWithTitle:title target:0 selector:0 destructive:destructiveCopy];
  if (v9)
  {
    v10 = _Block_copy(providerCopy);
    menuProvider = v9->_menuProvider;
    v9->_menuProvider = v10;

    v12 = v9;
  }

  return v9;
}

+ (id)contactActionWithTitle:(id)title menuProvider:(id)provider destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  providerCopy = provider;
  titleCopy = title;
  v9 = [[CNContactMenuDisplayingAction alloc] initWithTitle:titleCopy menuProvider:providerCopy destructive:destructiveCopy];

  return v9;
}

@end