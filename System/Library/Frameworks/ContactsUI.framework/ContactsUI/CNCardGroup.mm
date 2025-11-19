@interface CNCardGroup
+ (id)groupForContact:(id)a3;
- (CNCardGroup)initWithContact:(id)a3;
- (NSArray)actionItems;
- (SEL)unwrappedSelectorForAction:(id)a3;
- (id)_loadActionItems;
- (id)addActionWithTitle:(id)a3 menuProvider:(id)a4 destructive:(BOOL)a5;
- (id)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 destructive:(BOOL)a6;
- (id)description;
- (id)unwrappedTargetForAction:(id)a3;
- (void)addAction:(id)a3 withTitle:(id)a4 color:(id)a5 glyphColor:(id)a6 transportType:(int64_t)a7 wrapTitle:(BOOL)a8;
- (void)addAction:(id)a3 withTitle:(id)a4 wrapTitle:(BOOL)a5;
- (void)removeActionWithTarget:(id)a3 selector:(SEL)a4;
- (void)removeActionWithTitle:(id)a3;
- (void)removeAllActions;
@end

@implementation CNCardGroup

- (id)_loadActionItems
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(CNCardGroup *)self useSplitActions])
  {
    v4 = [(CNCardGroup *)self actions];
    v5 = [v4 count];

    if (v5)
    {
      v6 = 0;
      do
      {
        v7 = [(CNCardGroup *)self actions];
        v8 = [v7 count];

        v9 = [(CNCardGroup *)self actions];
        v10 = [v9 objectAtIndexedSubscript:v6];
        v11 = v10;
        if (v6 + 1 >= v8)
        {
          v30 = v10;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        }

        else
        {
          v31[0] = v10;
          v12 = [(CNCardGroup *)self actions];
          v13 = [v12 objectAtIndexedSubscript:v6 + 1];
          v31[1] = v13;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
        }

        v15 = [CNCardActionGroupItem actionGroupItemWithActions:v14];
        [v3 addObject:v15];

        v6 += 2;
        v16 = [(CNCardGroup *)self actions];
        v17 = [v16 count];
      }

      while (v6 < v17);
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = [(CNCardGroup *)self actions];
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [CNCardActionGroupItem actionGroupItemWithAction:*(*(&v25 + 1) + 8 * i)];
          [v3 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CNCardGroup *)self actions];
  v6 = [v3 stringWithFormat:@"<%@ %p> %d actions", v4, self, objc_msgSend(v5, "count")];

  return v6;
}

- (void)removeAllActions
{
  [(NSMutableArray *)self->_actions removeAllObjects];
  actionItems = self->_actionItems;
  self->_actionItems = 0;
}

- (void)removeActionWithTitle:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_actions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 title];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [(NSMutableArray *)self->_actions removeObject:v10];
          actionItems = self->_actionItems;
          self->_actionItems = 0;

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (SEL)unwrappedSelectorForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 target];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 target];

    v7 = [v6 action];
    v3 = v6;
  }

  else
  {
    v7 = [v3 selector];
  }

  return v7;
}

- (id)unwrappedTargetForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 target];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v3 target];

  if (isKindOfClass)
  {
    v7 = [v6 target];

    v6 = v7;
  }

  return v6;
}

- (void)removeActionWithTarget:(id)a3 selector:(SEL)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_actions;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v10 = 0x1E74DE000uLL;
    v28 = self;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 target];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v15 = v12;
        if (isKindOfClass)
        {
          v16 = v8;
          v17 = v9;
          v18 = a4;
          v19 = v6;
          v15 = [v12 target];

          v20 = [v15 target];
          v21 = v10;
          objc_opt_class();
          v22 = objc_opt_isKindOfClass();

          if (v22)
          {
            v23 = [v15 target];

            v15 = v23;
          }

          v10 = v21;
          v6 = v19;
          a4 = v18;
          v9 = v17;
          v8 = v16;
          self = v28;
        }

        v24 = [(CNCardGroup *)self unwrappedTargetForAction:v15, v28];
        v25 = [(CNCardGroup *)self unwrappedSelectorForAction:v15];
        if (v24 == v6 && v25 == a4)
        {
          [(NSMutableArray *)self->_actions removeObject:v12];
          actionItems = self->_actionItems;
          self->_actionItems = 0;

          goto LABEL_18;
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (void)addAction:(id)a3 withTitle:(id)a4 color:(id)a5 glyphColor:(id)a6 transportType:(int64_t)a7 wrapTitle:(BOOL)a8
{
  v8 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  [(CNCardGroup *)self removeActionWithTitle:v16];
  v20 = +[CNContactAction contactActionWithTitle:target:selector:destructive:](CNContactAction, "contactActionWithTitle:target:selector:destructive:", v16, v17, sel_performActionWithSender_, [v17 isDestructive]);

  [v20 setColor:v15];
  [v20 setGlyphColor:v14];

  [v20 setTransportType:a7];
  v18 = [v17 showBackgroundPlatter];

  [v20 setShowBackgroundPlatter:v18];
  [v20 setWrapTitle:v8];
  [(NSMutableArray *)self->_actions addObject:v20];
  actionItems = self->_actionItems;
  self->_actionItems = 0;
}

- (id)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 destructive:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [CNContactAction contactActionWithTitle:v10 target:a4 selector:a5 destructive:v6];
  [(CNCardGroup *)self addAction:v11 withTitle:v10];

  return v11;
}

- (id)addActionWithTitle:(id)a3 menuProvider:(id)a4 destructive:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [CNContactMenuDisplayingAction contactActionWithTitle:v8 menuProvider:a4 destructive:v5];
  [(CNCardGroup *)self addAction:v9 withTitle:v8];

  return v9;
}

- (void)addAction:(id)a3 withTitle:(id)a4 wrapTitle:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(CNCardGroup *)self removeActionWithTitle:v9];
  objc_opt_class();
  v15 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v15;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 menuProvider];
    v13 = +[CNContactMenuDisplayingAction contactActionWithTitle:menuProvider:destructive:](CNContactMenuDisplayingAction, "contactActionWithTitle:menuProvider:destructive:", v9, v12, [v11 isDestructive]);

    v9 = v12;
  }

  else
  {
    v13 = +[CNContactAction contactActionWithTitle:target:selector:destructive:](CNContactAction, "contactActionWithTitle:target:selector:destructive:", v9, v15, sel_performActionWithSender_, [v15 isDestructive]);
  }

  [v13 setWrapTitle:v5];
  [(NSMutableArray *)self->_actions addObject:v13];
  actionItems = self->_actionItems;
  self->_actionItems = 0;
}

- (NSArray)actionItems
{
  actionItems = self->_actionItems;
  if (!actionItems)
  {
    v4 = [(CNCardGroup *)self _loadActionItems];
    v5 = self->_actionItems;
    self->_actionItems = v4;

    actionItems = self->_actionItems;
  }

  return actionItems;
}

- (CNCardGroup)initWithContact:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNCardGroup;
  v6 = [(CNCardGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v7->_actions;
    v7->_actions = v8;
  }

  return v7;
}

+ (id)groupForContact:(id)a3
{
  v3 = a3;
  v4 = [[CNCardGroup alloc] initWithContact:v3];

  return v4;
}

@end