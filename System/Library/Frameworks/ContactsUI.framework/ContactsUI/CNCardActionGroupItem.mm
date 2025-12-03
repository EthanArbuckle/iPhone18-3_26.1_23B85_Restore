@interface CNCardActionGroupItem
+ (id)actionGroupItemWithAction:(id)action;
+ (id)actionGroupItemWithActions:(id)actions;
- (CNCardActionGroupItem)init;
- (CNCardActionGroupItem)initWithAction:(id)action;
@end

@implementation CNCardActionGroupItem

- (CNCardActionGroupItem)initWithAction:(id)action
{
  actionCopy = action;
  v5 = [(CNCardActionGroupItem *)self init];
  v6 = v5;
  if (v5)
  {
    [(CNCardActionGroupItem *)v5 addAction:actionCopy];
  }

  return v6;
}

- (CNCardActionGroupItem)init
{
  v6.receiver = self;
  v6.super_class = CNCardActionGroupItem;
  v2 = [(CNCardActionGroupItem *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v2->_actions;
    v2->_actions = v3;
  }

  return v2;
}

+ (id)actionGroupItemWithActions:(id)actions
{
  v19 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if ([actionsCopy count] != 1 && objc_msgSend(actionsCopy, "count") != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNCardActionGroupItem.m" lineNumber:49 description:@"We currently only support at most two actions in a cell"];
  }

  v6 = objc_alloc_init(self);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = actionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addAction:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)actionGroupItemWithAction:(id)action
{
  actionCopy = action;
  v4 = [[CNCardActionGroupItem alloc] initWithAction:actionCopy];

  return v4;
}

@end