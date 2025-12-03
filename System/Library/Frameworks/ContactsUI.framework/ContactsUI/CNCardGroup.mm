@interface CNCardGroup
+ (id)groupForContact:(id)contact;
- (CNCardGroup)initWithContact:(id)contact;
- (NSArray)actionItems;
- (SEL)unwrappedSelectorForAction:(id)action;
- (id)_loadActionItems;
- (id)addActionWithTitle:(id)title menuProvider:(id)provider destructive:(BOOL)destructive;
- (id)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector destructive:(BOOL)destructive;
- (id)description;
- (id)unwrappedTargetForAction:(id)action;
- (void)addAction:(id)action withTitle:(id)title color:(id)color glyphColor:(id)glyphColor transportType:(int64_t)type wrapTitle:(BOOL)wrapTitle;
- (void)addAction:(id)action withTitle:(id)title wrapTitle:(BOOL)wrapTitle;
- (void)removeActionWithTarget:(id)target selector:(SEL)selector;
- (void)removeActionWithTitle:(id)title;
- (void)removeAllActions;
@end

@implementation CNCardGroup

- (id)_loadActionItems
{
  v31[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNCardGroup *)self useSplitActions])
  {
    actions = [(CNCardGroup *)self actions];
    v5 = [actions count];

    if (v5)
    {
      v6 = 0;
      do
      {
        actions2 = [(CNCardGroup *)self actions];
        v8 = [actions2 count];

        actions3 = [(CNCardGroup *)self actions];
        v10 = [actions3 objectAtIndexedSubscript:v6];
        v11 = v10;
        if (v6 + 1 >= v8)
        {
          v30 = v10;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        }

        else
        {
          v31[0] = v10;
          actions4 = [(CNCardGroup *)self actions];
          v13 = [actions4 objectAtIndexedSubscript:v6 + 1];
          v31[1] = v13;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
        }

        v15 = [CNCardActionGroupItem actionGroupItemWithActions:v14];
        [array addObject:v15];

        v6 += 2;
        actions5 = [(CNCardGroup *)self actions];
        v17 = [actions5 count];
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
    actions6 = [(CNCardGroup *)self actions];
    v19 = [actions6 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(actions6);
          }

          v23 = [CNCardActionGroupItem actionGroupItemWithAction:*(*(&v25 + 1) + 8 * i)];
          [array addObject:v23];
        }

        v20 = [actions6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }
  }

  return array;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  actions = [(CNCardGroup *)self actions];
  v6 = [v3 stringWithFormat:@"<%@ %p> %d actions", v4, self, objc_msgSend(actions, "count")];

  return v6;
}

- (void)removeAllActions
{
  [(NSMutableArray *)self->_actions removeAllObjects];
  actionItems = self->_actionItems;
  self->_actionItems = 0;
}

- (void)removeActionWithTitle:(id)title
{
  v19 = *MEMORY[0x1E69E9840];
  titleCopy = title;
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
        title = [v10 title];
        v12 = [title isEqualToString:titleCopy];

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

- (SEL)unwrappedSelectorForAction:(id)action
{
  actionCopy = action;
  target = [actionCopy target];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    target2 = [actionCopy target];

    action = [target2 action];
    actionCopy = target2;
  }

  else
  {
    action = [actionCopy selector];
  }

  return action;
}

- (id)unwrappedTargetForAction:(id)action
{
  actionCopy = action;
  target = [actionCopy target];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  target2 = [actionCopy target];

  if (isKindOfClass)
  {
    v6Target = [target2 target];

    target2 = v6Target;
  }

  return target2;
}

- (void)removeActionWithTarget:(id)target selector:(SEL)selector
{
  v35 = *MEMORY[0x1E69E9840];
  targetCopy = target;
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
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        target = [v12 target];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        target2 = v12;
        if (isKindOfClass)
        {
          v16 = v8;
          v17 = v9;
          selectorCopy = selector;
          v19 = targetCopy;
          target2 = [v12 target];

          v15Target = [target2 target];
          v21 = v10;
          objc_opt_class();
          v22 = objc_opt_isKindOfClass();

          if (v22)
          {
            v15Target2 = [target2 target];

            target2 = v15Target2;
          }

          v10 = v21;
          targetCopy = v19;
          selector = selectorCopy;
          v9 = v17;
          v8 = v16;
          self = selfCopy;
        }

        selfCopy = [(CNCardGroup *)self unwrappedTargetForAction:target2, selfCopy];
        v25 = [(CNCardGroup *)self unwrappedSelectorForAction:target2];
        if (selfCopy == targetCopy && v25 == selector)
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

- (void)addAction:(id)action withTitle:(id)title color:(id)color glyphColor:(id)glyphColor transportType:(int64_t)type wrapTitle:(BOOL)wrapTitle
{
  wrapTitleCopy = wrapTitle;
  glyphColorCopy = glyphColor;
  colorCopy = color;
  titleCopy = title;
  actionCopy = action;
  [(CNCardGroup *)self removeActionWithTitle:titleCopy];
  v20 = +[CNContactAction contactActionWithTitle:target:selector:destructive:](CNContactAction, "contactActionWithTitle:target:selector:destructive:", titleCopy, actionCopy, sel_performActionWithSender_, [actionCopy isDestructive]);

  [v20 setColor:colorCopy];
  [v20 setGlyphColor:glyphColorCopy];

  [v20 setTransportType:type];
  showBackgroundPlatter = [actionCopy showBackgroundPlatter];

  [v20 setShowBackgroundPlatter:showBackgroundPlatter];
  [v20 setWrapTitle:wrapTitleCopy];
  [(NSMutableArray *)self->_actions addObject:v20];
  actionItems = self->_actionItems;
  self->_actionItems = 0;
}

- (id)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  titleCopy = title;
  v11 = [CNContactAction contactActionWithTitle:titleCopy target:target selector:selector destructive:destructiveCopy];
  [(CNCardGroup *)self addAction:v11 withTitle:titleCopy];

  return v11;
}

- (id)addActionWithTitle:(id)title menuProvider:(id)provider destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  titleCopy = title;
  v9 = [CNContactMenuDisplayingAction contactActionWithTitle:titleCopy menuProvider:provider destructive:destructiveCopy];
  [(CNCardGroup *)self addAction:v9 withTitle:titleCopy];

  return v9;
}

- (void)addAction:(id)action withTitle:(id)title wrapTitle:(BOOL)wrapTitle
{
  wrapTitleCopy = wrapTitle;
  actionCopy = action;
  titleCopy = title;
  [(CNCardGroup *)self removeActionWithTitle:titleCopy];
  objc_opt_class();
  v15 = actionCopy;
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
    menuProvider = [v11 menuProvider];
    v13 = +[CNContactMenuDisplayingAction contactActionWithTitle:menuProvider:destructive:](CNContactMenuDisplayingAction, "contactActionWithTitle:menuProvider:destructive:", titleCopy, menuProvider, [v11 isDestructive]);

    titleCopy = menuProvider;
  }

  else
  {
    v13 = +[CNContactAction contactActionWithTitle:target:selector:destructive:](CNContactAction, "contactActionWithTitle:target:selector:destructive:", titleCopy, v15, sel_performActionWithSender_, [v15 isDestructive]);
  }

  [v13 setWrapTitle:wrapTitleCopy];
  [(NSMutableArray *)self->_actions addObject:v13];
  actionItems = self->_actionItems;
  self->_actionItems = 0;
}

- (NSArray)actionItems
{
  actionItems = self->_actionItems;
  if (!actionItems)
  {
    _loadActionItems = [(CNCardGroup *)self _loadActionItems];
    v5 = self->_actionItems;
    self->_actionItems = _loadActionItems;

    actionItems = self->_actionItems;
  }

  return actionItems;
}

- (CNCardGroup)initWithContact:(id)contact
{
  contactCopy = contact;
  v11.receiver = self;
  v11.super_class = CNCardGroup;
  v6 = [(CNCardGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v7->_actions;
    v7->_actions = v8;
  }

  return v7;
}

+ (id)groupForContact:(id)contact
{
  contactCopy = contact;
  v4 = [[CNCardGroup alloc] initWithContact:contactCopy];

  return v4;
}

@end