@interface CNContactMenuDisplayingAction
+ (id)contactActionWithTitle:(id)a3 menuProvider:(id)a4 destructive:(BOOL)a5;
- (CNContactMenuDisplayingAction)initWithTitle:(id)a3 menuProvider:(id)a4 destructive:(BOOL)a5;
@end

@implementation CNContactMenuDisplayingAction

- (CNContactMenuDisplayingAction)initWithTitle:(id)a3 menuProvider:(id)a4 destructive:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CNContactMenuDisplayingAction;
  v9 = [(CNContactAction *)&v14 initWithTitle:a3 target:0 selector:0 destructive:v5];
  if (v9)
  {
    v10 = _Block_copy(v8);
    menuProvider = v9->_menuProvider;
    v9->_menuProvider = v10;

    v12 = v9;
  }

  return v9;
}

+ (id)contactActionWithTitle:(id)a3 menuProvider:(id)a4 destructive:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [[CNContactMenuDisplayingAction alloc] initWithTitle:v8 menuProvider:v7 destructive:v5];

  return v9;
}

@end