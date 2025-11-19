@interface ICSEFolderListItem
- (BOOL)isCollapsed;
- (BOOL)isCollapsible;
- (ICSEFolderListItem)initWithViewState:(id)a3;
- (ICSEFolderListItem)parent;
- (ICSEFolderListViewState)viewState;
- (NSString)title;
- (id)description;
- (id)flattenedChildItems;
- (unint64_t)countOfVisibleDescendants;
- (unint64_t)level;
- (void)addChildItem:(id)a3;
- (void)insertChildItem:(id)a3 atIndex:(unint64_t)a4;
- (void)recursivelyAddChildFolder:(id)a3;
- (void)setCollapsed:(BOOL)a3;
@end

@implementation ICSEFolderListItem

- (ICSEFolderListItem)initWithViewState:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICSEFolderListItem;
  v5 = [(ICSEFolderListItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewState, v4);
    v7 = objc_alloc_init(NSMutableArray);
    children = v6->_children;
    v6->_children = v7;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  if ([(ICSEFolderListItem *)self level])
  {
    v4 = 0;
    do
    {
      [v3 appendString:@"    "];
      ++v4;
    }

    while (v4 < [(ICSEFolderListItem *)self level]);
  }

  v5 = objc_alloc_init(NSMutableString);
  if ([(ICSEFolderListItem *)self isCollapsed])
  {
    v6 = @"-";
  }

  else
  {
    v6 = @"+";
  }

  [v5 appendString:v6];
  [v5 appendString:v3];
  v7 = [(ICSEFolderListItem *)self noteContainer];
  v8 = [v7 titleForTableViewCell];
  [v5 appendString:v8];

  [v5 appendString:@"\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(ICSEFolderListItem *)self children];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) debugDescription];
        [v5 appendString:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v5;
}

- (unint64_t)level
{
  v3 = [(ICSEFolderListItem *)self parent];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSEFolderListItem *)self parent];
  v5 = [v4 level] + 1;

  return v5;
}

- (BOOL)isCollapsible
{
  if ([(ICSEFolderListItem *)self isAccount])
  {
    v3 = [(ICSEFolderListItem *)self parent];

    if (!v3)
    {
      return 1;
    }
  }

  v4 = [(ICSEFolderListItem *)self children];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)isCollapsed
{
  v2 = self;
  if (![(ICSEFolderListItem *)self isCollapsible])
  {
    goto LABEL_6;
  }

  if ([(ICSEFolderListItem *)v2 isAccount])
  {
    v3 = [(ICSEFolderListItem *)v2 parent];

    if (!v3)
    {
      objc_opt_class();
      v12 = [(ICSEFolderListItem *)v2 noteContainer];
      v13 = ICDynamicCast();

      if (!v13)
      {
        [ICAssert handleFailedAssertWithCondition:"((((ICAccount*)ICDynamicCast([ICAccount class] functionName:self.noteContainer))) != nil)" simulateCrash:"[ICSEFolderListItem isCollapsed]" showAlert:1 format:0, @"Expected non-nil value for '%s'", "ICCastAsClass(ICAccount, self.noteContainer)"];
      }

      v6 = [(ICSEFolderListItem *)v2 viewState];
      v7 = [v6 collapsedAccountIdentifiers];
      v8 = [(ICSEFolderListItem *)v2 noteContainer];
      v9 = [v8 identifier];
      LOBYTE(v2) = [v7 containsObject:v9];
      goto LABEL_13;
    }
  }

  v4 = [(ICSEFolderListItem *)v2 viewState];
  v5 = [v4 overrideCollapsed];

  if (!v5)
  {
    v6 = [(ICSEFolderListItem *)v2 viewState];
    v7 = [v6 expandedFolderIdentifiers];
    v8 = [(ICSEFolderListItem *)v2 noteContainer];
    v9 = [v8 identifier];
    LODWORD(v2) = [v7 containsObject:v9] ^ 1;
    goto LABEL_13;
  }

  if (![(ICSEFolderListItem *)v2 isAccount])
  {
    v6 = [(ICSEFolderListItem *)v2 viewState];
    v7 = [v6 overrideCollapsedFolder];
    if (!v7)
    {
      LOBYTE(v2) = 0;
      goto LABEL_14;
    }

    v8 = [(ICSEFolderListItem *)v2 viewState];
    v9 = [v8 overrideCollapsedFolder];
    v10 = [(ICSEFolderListItem *)v2 noteContainer];
    v11 = [v10 identifier];
    LOBYTE(v2) = [v9 isEqualToString:v11];

LABEL_13:
LABEL_14:

    return v2;
  }

LABEL_6:
  LOBYTE(v2) = 0;
  return v2;
}

- (void)setCollapsed:(BOOL)a3
{
  v3 = a3;
  if (![(ICSEFolderListItem *)self isCollapsible])
  {
    return;
  }

  if ([(ICSEFolderListItem *)self isAccount])
  {
    v5 = [(ICSEFolderListItem *)self parent];

    if (!v5)
    {
      objc_opt_class();
      v11 = [(ICSEFolderListItem *)self noteContainer];
      v12 = ICDynamicCast();

      if (!v12)
      {
        [ICAssert handleFailedAssertWithCondition:"((((ICAccount*)ICDynamicCast([ICAccount class] functionName:self.noteContainer))) != nil)" simulateCrash:"[ICSEFolderListItem setCollapsed:]" showAlert:1 format:0, @"Expected non-nil value for '%s'", "ICCastAsClass(ICAccount, self.noteContainer)"];
      }

      v18 = [(ICSEFolderListItem *)self viewState];
      v13 = [v18 collapsedAccountIdentifiers];
      v14 = [(ICSEFolderListItem *)self noteContainer];
      v15 = [v14 identifier];
      if (!v3)
      {
        goto LABEL_26;
      }

LABEL_28:
      [v13 addObject:v15];
      goto LABEL_29;
    }
  }

  v6 = [(ICSEFolderListItem *)self viewState];
  v7 = [v6 overrideCollapsed];

  if (v7)
  {
    v8 = [(ICSEFolderListItem *)self viewState];
    v9 = [v8 overrideCollapsedFolder];
    v10 = v9;
    if (v3)
    {
      if (!v9)
      {

LABEL_18:
        if ([(ICSEFolderListItem *)self isAccount])
        {
          [ICAssert handleFailedAssertWithCondition:"!self.isAccount" functionName:"[ICSEFolderListItem setCollapsed:]" simulateCrash:1 showAlert:0 format:@"Can't collapse a legacy or account node in edit mode"];
        }

        if (v3)
        {
          v8 = [(ICSEFolderListItem *)self noteContainer];
          v16 = [v8 identifier];
        }

        else
        {
          v16 = 0;
        }

        v17 = [(ICSEFolderListItem *)self viewState];
        [v17 setOverrideCollapsedFolder:v16];

        if (v3)
        {

          goto LABEL_25;
        }

        goto LABEL_27;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_18;
      }
    }

    [ICAssert handleFailedAssertWithCondition:"(collapsed && !self.viewState.overrideCollapsedFolder) || (!collapsed && self.viewState.overrideCollapsedFolder)" functionName:"[ICSEFolderListItem setCollapsed:]" simulateCrash:1 showAlert:0 format:@"Can't collapse or expand more than one folder in edit mode"];
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_27:
    v18 = [(ICSEFolderListItem *)self viewState];
    v13 = [v18 expandedFolderIdentifiers];
    v14 = [(ICSEFolderListItem *)self noteContainer];
    v15 = [v14 identifier];
    goto LABEL_28;
  }

LABEL_25:
  v18 = [(ICSEFolderListItem *)self viewState];
  v13 = [v18 expandedFolderIdentifiers];
  v14 = [(ICSEFolderListItem *)self noteContainer];
  v15 = [v14 identifier];
LABEL_26:
  [v13 removeObject:v15];
LABEL_29:
}

- (id)flattenedChildItems
{
  v3 = +[NSMutableArray array];
  if (![(ICSEFolderListItem *)self isCollapsed])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(ICSEFolderListItem *)self children];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          [v3 addObject:v9];
          v10 = [v9 flattenedChildItems];
          [v3 addObjectsFromArray:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (unint64_t)countOfVisibleDescendants
{
  v2 = [(ICSEFolderListItem *)self flattenedChildItems];
  v3 = [v2 count];

  return v3;
}

- (NSString)title
{
  v2 = [(ICSEFolderListItem *)self noteContainer];
  v3 = [v2 titleForTableViewCell];

  return v3;
}

- (void)recursivelyAddChildFolder:(id)a3
{
  v4 = a3;
  v5 = [ICSEFolderListItem alloc];
  v6 = [(ICSEFolderListItem *)self viewState];
  v7 = [(ICSEFolderListItem *)v5 initWithViewState:v6];

  [(ICSEFolderListItem *)v7 setNoteContainer:v4];
  -[ICSEFolderListItem setIsDefaultFolder:](v7, "setIsDefaultFolder:", [v4 isDefaultFolderForAccount]);
  [(ICSEFolderListItem *)v7 setParent:self];
  v8 = [(ICSEFolderListItem *)self children];
  [v8 addObject:v7];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v4 visibleNoteContainerChildren];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(ICSEFolderListItem *)v7 recursivelyAddChildFolder:*(*(&v14 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)addChildItem:(id)a3
{
  v5 = a3;
  v4 = [(ICSEFolderListItem *)self children];
  [v4 addObject:v5];

  [v5 setParent:self];
}

- (void)insertChildItem:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  v6 = [(ICSEFolderListItem *)self children];
  [v6 insertObject:v7 atIndex:a4];

  [v7 setParent:self];
}

- (ICSEFolderListItem)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (ICSEFolderListViewState)viewState
{
  WeakRetained = objc_loadWeakRetained(&self->_viewState);

  return WeakRetained;
}

@end