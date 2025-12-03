@interface ICSEFolderListItem
- (BOOL)isCollapsed;
- (BOOL)isCollapsible;
- (ICSEFolderListItem)initWithViewState:(id)state;
- (ICSEFolderListItem)parent;
- (ICSEFolderListViewState)viewState;
- (NSString)title;
- (id)description;
- (id)flattenedChildItems;
- (unint64_t)countOfVisibleDescendants;
- (unint64_t)level;
- (void)addChildItem:(id)item;
- (void)insertChildItem:(id)item atIndex:(unint64_t)index;
- (void)recursivelyAddChildFolder:(id)folder;
- (void)setCollapsed:(BOOL)collapsed;
@end

@implementation ICSEFolderListItem

- (ICSEFolderListItem)initWithViewState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = ICSEFolderListItem;
  v5 = [(ICSEFolderListItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewState, stateCopy);
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
  noteContainer = [(ICSEFolderListItem *)self noteContainer];
  titleForTableViewCell = [noteContainer titleForTableViewCell];
  [v5 appendString:titleForTableViewCell];

  [v5 appendString:@"\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  children = [(ICSEFolderListItem *)self children];
  v10 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(children);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) debugDescription];
        [v5 appendString:v14];
      }

      v11 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v5;
}

- (unint64_t)level
{
  parent = [(ICSEFolderListItem *)self parent];

  if (!parent)
  {
    return 0;
  }

  parent2 = [(ICSEFolderListItem *)self parent];
  v5 = [parent2 level] + 1;

  return v5;
}

- (BOOL)isCollapsible
{
  if ([(ICSEFolderListItem *)self isAccount])
  {
    parent = [(ICSEFolderListItem *)self parent];

    if (!parent)
    {
      return 1;
    }
  }

  children = [(ICSEFolderListItem *)self children];
  v5 = [children count] != 0;

  return v5;
}

- (BOOL)isCollapsed
{
  selfCopy = self;
  if (![(ICSEFolderListItem *)self isCollapsible])
  {
    goto LABEL_6;
  }

  if ([(ICSEFolderListItem *)selfCopy isAccount])
  {
    parent = [(ICSEFolderListItem *)selfCopy parent];

    if (!parent)
    {
      objc_opt_class();
      noteContainer = [(ICSEFolderListItem *)selfCopy noteContainer];
      v13 = ICDynamicCast();

      if (!v13)
      {
        [ICAssert handleFailedAssertWithCondition:"((((ICAccount*)ICDynamicCast([ICAccount class] functionName:self.noteContainer))) != nil)" simulateCrash:"[ICSEFolderListItem isCollapsed]" showAlert:1 format:0, @"Expected non-nil value for '%s'", "ICCastAsClass(ICAccount, self.noteContainer)"];
      }

      viewState = [(ICSEFolderListItem *)selfCopy viewState];
      collapsedAccountIdentifiers = [viewState collapsedAccountIdentifiers];
      noteContainer2 = [(ICSEFolderListItem *)selfCopy noteContainer];
      identifier = [noteContainer2 identifier];
      LOBYTE(selfCopy) = [collapsedAccountIdentifiers containsObject:identifier];
      goto LABEL_13;
    }
  }

  viewState2 = [(ICSEFolderListItem *)selfCopy viewState];
  overrideCollapsed = [viewState2 overrideCollapsed];

  if (!overrideCollapsed)
  {
    viewState = [(ICSEFolderListItem *)selfCopy viewState];
    collapsedAccountIdentifiers = [viewState expandedFolderIdentifiers];
    noteContainer2 = [(ICSEFolderListItem *)selfCopy noteContainer];
    identifier = [noteContainer2 identifier];
    LODWORD(selfCopy) = [collapsedAccountIdentifiers containsObject:identifier] ^ 1;
    goto LABEL_13;
  }

  if (![(ICSEFolderListItem *)selfCopy isAccount])
  {
    viewState = [(ICSEFolderListItem *)selfCopy viewState];
    collapsedAccountIdentifiers = [viewState overrideCollapsedFolder];
    if (!collapsedAccountIdentifiers)
    {
      LOBYTE(selfCopy) = 0;
      goto LABEL_14;
    }

    noteContainer2 = [(ICSEFolderListItem *)selfCopy viewState];
    identifier = [noteContainer2 overrideCollapsedFolder];
    noteContainer3 = [(ICSEFolderListItem *)selfCopy noteContainer];
    identifier2 = [noteContainer3 identifier];
    LOBYTE(selfCopy) = [identifier isEqualToString:identifier2];

LABEL_13:
LABEL_14:

    return selfCopy;
  }

LABEL_6:
  LOBYTE(selfCopy) = 0;
  return selfCopy;
}

- (void)setCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  if (![(ICSEFolderListItem *)self isCollapsible])
  {
    return;
  }

  if ([(ICSEFolderListItem *)self isAccount])
  {
    parent = [(ICSEFolderListItem *)self parent];

    if (!parent)
    {
      objc_opt_class();
      noteContainer = [(ICSEFolderListItem *)self noteContainer];
      v12 = ICDynamicCast();

      if (!v12)
      {
        [ICAssert handleFailedAssertWithCondition:"((((ICAccount*)ICDynamicCast([ICAccount class] functionName:self.noteContainer))) != nil)" simulateCrash:"[ICSEFolderListItem setCollapsed:]" showAlert:1 format:0, @"Expected non-nil value for '%s'", "ICCastAsClass(ICAccount, self.noteContainer)"];
      }

      viewState = [(ICSEFolderListItem *)self viewState];
      collapsedAccountIdentifiers = [viewState collapsedAccountIdentifiers];
      noteContainer2 = [(ICSEFolderListItem *)self noteContainer];
      identifier = [noteContainer2 identifier];
      if (!collapsedCopy)
      {
        goto LABEL_26;
      }

LABEL_28:
      [collapsedAccountIdentifiers addObject:identifier];
      goto LABEL_29;
    }
  }

  viewState2 = [(ICSEFolderListItem *)self viewState];
  overrideCollapsed = [viewState2 overrideCollapsed];

  if (overrideCollapsed)
  {
    viewState3 = [(ICSEFolderListItem *)self viewState];
    overrideCollapsedFolder = [viewState3 overrideCollapsedFolder];
    v10 = overrideCollapsedFolder;
    if (collapsedCopy)
    {
      if (!overrideCollapsedFolder)
      {

LABEL_18:
        if ([(ICSEFolderListItem *)self isAccount])
        {
          [ICAssert handleFailedAssertWithCondition:"!self.isAccount" functionName:"[ICSEFolderListItem setCollapsed:]" simulateCrash:1 showAlert:0 format:@"Can't collapse a legacy or account node in edit mode"];
        }

        if (collapsedCopy)
        {
          viewState3 = [(ICSEFolderListItem *)self noteContainer];
          identifier2 = [viewState3 identifier];
        }

        else
        {
          identifier2 = 0;
        }

        viewState4 = [(ICSEFolderListItem *)self viewState];
        [viewState4 setOverrideCollapsedFolder:identifier2];

        if (collapsedCopy)
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

  if (!collapsedCopy)
  {
LABEL_27:
    viewState = [(ICSEFolderListItem *)self viewState];
    collapsedAccountIdentifiers = [viewState expandedFolderIdentifiers];
    noteContainer2 = [(ICSEFolderListItem *)self noteContainer];
    identifier = [noteContainer2 identifier];
    goto LABEL_28;
  }

LABEL_25:
  viewState = [(ICSEFolderListItem *)self viewState];
  collapsedAccountIdentifiers = [viewState expandedFolderIdentifiers];
  noteContainer2 = [(ICSEFolderListItem *)self noteContainer];
  identifier = [noteContainer2 identifier];
LABEL_26:
  [collapsedAccountIdentifiers removeObject:identifier];
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
    children = [(ICSEFolderListItem *)self children];
    v5 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(children);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          [v3 addObject:v9];
          flattenedChildItems = [v9 flattenedChildItems];
          [v3 addObjectsFromArray:flattenedChildItems];
        }

        v6 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (unint64_t)countOfVisibleDescendants
{
  flattenedChildItems = [(ICSEFolderListItem *)self flattenedChildItems];
  v3 = [flattenedChildItems count];

  return v3;
}

- (NSString)title
{
  noteContainer = [(ICSEFolderListItem *)self noteContainer];
  titleForTableViewCell = [noteContainer titleForTableViewCell];

  return titleForTableViewCell;
}

- (void)recursivelyAddChildFolder:(id)folder
{
  folderCopy = folder;
  v5 = [ICSEFolderListItem alloc];
  viewState = [(ICSEFolderListItem *)self viewState];
  v7 = [(ICSEFolderListItem *)v5 initWithViewState:viewState];

  [(ICSEFolderListItem *)v7 setNoteContainer:folderCopy];
  -[ICSEFolderListItem setIsDefaultFolder:](v7, "setIsDefaultFolder:", [folderCopy isDefaultFolderForAccount]);
  [(ICSEFolderListItem *)v7 setParent:self];
  children = [(ICSEFolderListItem *)self children];
  [children addObject:v7];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  visibleNoteContainerChildren = [folderCopy visibleNoteContainerChildren];
  v10 = [visibleNoteContainerChildren countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(visibleNoteContainerChildren);
        }

        [(ICSEFolderListItem *)v7 recursivelyAddChildFolder:*(*(&v14 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [visibleNoteContainerChildren countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)addChildItem:(id)item
{
  itemCopy = item;
  children = [(ICSEFolderListItem *)self children];
  [children addObject:itemCopy];

  [itemCopy setParent:self];
}

- (void)insertChildItem:(id)item atIndex:(unint64_t)index
{
  itemCopy = item;
  children = [(ICSEFolderListItem *)self children];
  [children insertObject:itemCopy atIndex:index];

  [itemCopy setParent:self];
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