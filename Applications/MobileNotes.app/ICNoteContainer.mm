@interface ICNoteContainer
- (void)undoablyMoveSubFolder:(id)folder toIndex:(unint64_t)index;
- (void)undoablyRemoveFromOrder:(id)order;
- (void)undoablySetOrder:(unint64_t)order ofChild:(id)child;
@end

@implementation ICNoteContainer

- (void)undoablySetOrder:(unint64_t)order ofChild:(id)child
{
  childCopy = child;
  subFolderIdentifiersOrderedSet = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet];
  identifier = [childCopy identifier];
  v9 = [subFolderIdentifiersOrderedSet indexOfObject:identifier];

  v10 = +[NSUndoManager shared];
  v11 = [v10 prepareWithInvocationTarget:self];
  v12 = v11;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 undoablyRemoveFromOrder:childCopy];
  }

  else
  {
    [v11 undoablySetOrder:v9 ofChild:childCopy];
  }

  v13 = +[NSUndoManager shared];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Set Folder Order" value:&stru_100661CF0 table:0];
  [v13 setActionName:v15];

  identifier2 = [childCopy identifier];
  LODWORD(v14) = [subFolderIdentifiersOrderedSet containsObject:identifier2];

  v17 = [subFolderIdentifiersOrderedSet count];
  if (!v14)
  {
    if (v17 < order)
    {
      v19 = os_log_create("com.apple.notes", "Move");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        ic_loggingDescription = [childCopy ic_loggingDescription];
        v27 = 138412802;
        v28 = subFolderIdentifiersOrderedSet;
        v29 = 2112;
        v30 = ic_loggingDescription;
        v31 = 2048;
        orderCopy2 = order;
        _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Illegal subfolder insert — setting as last subfolder {orderedIdentifiers: %@, folder: %@, index: %lu}", &v27, 0x20u);
      }

      identifier3 = [childCopy identifier];
      [subFolderIdentifiersOrderedSet insertObject:identifier3 atIndex:{objc_msgSend(subFolderIdentifiersOrderedSet, "count")}];
      goto LABEL_15;
    }

    identifier4 = [childCopy identifier];
    [subFolderIdentifiersOrderedSet insertObject:identifier4 atIndex:order];
LABEL_17:

    goto LABEL_18;
  }

  if (v17 > order)
  {
    identifier4 = [childCopy identifier];
    [subFolderIdentifiersOrderedSet moveObject:identifier4 toIndex:order];
    goto LABEL_17;
  }

  v21 = os_log_create("com.apple.notes", "Move");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    ic_loggingDescription2 = [childCopy ic_loggingDescription];
    v27 = 138412802;
    v28 = subFolderIdentifiersOrderedSet;
    v29 = 2112;
    v30 = ic_loggingDescription2;
    v31 = 2048;
    orderCopy2 = order;
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Illegal subfolder move — setting as last subfolder {orderedIdentifiers: %@, folder: %@, index: %lu}", &v27, 0x20u);
  }

  identifier3 = [childCopy identifier];
  [subFolderIdentifiersOrderedSet moveObject:identifier3 toIndex:{objc_msgSend(subFolderIdentifiersOrderedSet, "count") - 1}];
LABEL_15:

LABEL_18:
  [(ICNoteContainer *)self setSubFolderOrderMergeableDataDirty:1];
  [(ICNoteContainer *)self saveSubFolderMergeableDataIfNeeded];
  v23 = +[NSDate date];
  [childCopy setParentModificationDate:v23];

  [childCopy updateChangeCountWithReason:@"Set folder order"];
  [(ICNoteContainer *)self updateSubFolderMergeableDataChangeCount];
  v24 = +[NSNotificationCenter defaultCenter];
  [v24 postNotificationName:@"ICNoteContainerOrderDidChangeNotification" object:childCopy];
}

- (void)undoablyRemoveFromOrder:(id)order
{
  orderCopy = order;
  subFolderIdentifiersOrderedSet = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet];
  identifier = [orderCopy identifier];
  v6 = [subFolderIdentifiersOrderedSet indexOfObject:identifier];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = +[NSUndoManager shared];
    v8 = [v7 prepareWithInvocationTarget:self];
    [v8 undoablySetOrder:v6 ofChild:orderCopy];
  }

  v9 = +[NSUndoManager shared];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Remove Folder Order" value:&stru_100661CF0 table:0];
  [v9 setActionName:v11];

  identifier2 = [orderCopy identifier];
  [subFolderIdentifiersOrderedSet removeObject:identifier2];

  [(ICNoteContainer *)self setSubFolderOrderMergeableDataDirty:1];
  [(ICNoteContainer *)self saveSubFolderMergeableDataIfNeeded];
  v13 = +[NSDate date];
  [orderCopy setParentModificationDate:v13];

  [orderCopy updateChangeCountWithReason:@"Removed from folder order"];
  [(ICNoteContainer *)self updateSubFolderMergeableDataChangeCount];
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 postNotificationName:@"ICNoteContainerOrderDidChangeNotification" object:orderCopy];
}

- (void)undoablyMoveSubFolder:(id)folder toIndex:(unint64_t)index
{
  folderCopy = folder;
  parent = [folderCopy parent];
  if (!parent && ([folderCopy account], v4 = objc_claimAutoreleasedReturnValue(), -[ICNoteContainer noteContainerAccount](self, "noteContainerAccount"), v10 = objc_claimAutoreleasedReturnValue(), v5 = v10, v4 == v10))
  {
  }

  else
  {
    parent2 = [folderCopy parent];

    if (parent)
    {
    }

    else
    {
    }

    if (parent2 != self)
    {
      [ICAssert handleFailedAssertWithCondition:"(subFolder.parent == ((void*)0) && subFolder.account == self.noteContainerAccount) || subFolder.parent == self" functionName:"[ICNoteContainer(UndoSupport) undoablyMoveSubFolder:toIndex:]" simulateCrash:1 showAlert:0 format:@"Trying to move subfolder in the wrong parent"];
    }
  }

  visibleSubFolders = [(ICNoteContainer *)self visibleSubFolders];
  v13 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(visibleSubFolders, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = visibleSubFolders;
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        identifier = [*(*(&v42 + 1) + 8 * i) identifier];
        [v13 addObject:identifier];
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v16);
  }

  subFolderIdentifiersOrderedSet = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet];
  allObjects = [subFolderIdentifiersOrderedSet allObjects];
  v22 = [NSSet setWithArray:allObjects];

  if (([v13 isEqual:v22] & 1) == 0)
  {
    indexCopy = index;
    v34 = folderCopy;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000C1ED8;
    v40[3] = &unk_100648728;
    v41 = v13;
    v23 = [v22 objectsPassingTest:v40];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v36 + 1) + 8 * j);
          v29 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet:indexCopy];
          [v29 removeObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v25);
    }

    if ([v14 count])
    {
      v30 = 0;
      do
      {
        v31 = [v14 objectAtIndexedSubscript:v30];
        [(ICNoteContainer *)self undoablySetOrder:v30 ofChild:v31];

        ++v30;
      }

      while (v30 < [v14 count]);
    }

    index = v33;
    folderCopy = v35;
  }

  [(ICNoteContainer *)self undoablySetOrder:index ofChild:folderCopy];
}

@end