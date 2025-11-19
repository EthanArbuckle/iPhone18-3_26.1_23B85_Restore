@interface ICNoteContainer
- (void)undoablyMoveSubFolder:(id)a3 toIndex:(unint64_t)a4;
- (void)undoablyRemoveFromOrder:(id)a3;
- (void)undoablySetOrder:(unint64_t)a3 ofChild:(id)a4;
@end

@implementation ICNoteContainer

- (void)undoablySetOrder:(unint64_t)a3 ofChild:(id)a4
{
  v6 = a4;
  v7 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet];
  v8 = [v6 identifier];
  v9 = [v7 indexOfObject:v8];

  v10 = +[NSUndoManager shared];
  v11 = [v10 prepareWithInvocationTarget:self];
  v12 = v11;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 undoablyRemoveFromOrder:v6];
  }

  else
  {
    [v11 undoablySetOrder:v9 ofChild:v6];
  }

  v13 = +[NSUndoManager shared];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Set Folder Order" value:&stru_100661CF0 table:0];
  [v13 setActionName:v15];

  v16 = [v6 identifier];
  LODWORD(v14) = [v7 containsObject:v16];

  v17 = [v7 count];
  if (!v14)
  {
    if (v17 < a3)
    {
      v19 = os_log_create("com.apple.notes", "Move");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v25 = [v6 ic_loggingDescription];
        v27 = 138412802;
        v28 = v7;
        v29 = 2112;
        v30 = v25;
        v31 = 2048;
        v32 = a3;
        _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Illegal subfolder insert — setting as last subfolder {orderedIdentifiers: %@, folder: %@, index: %lu}", &v27, 0x20u);
      }

      v20 = [v6 identifier];
      [v7 insertObject:v20 atIndex:{objc_msgSend(v7, "count")}];
      goto LABEL_15;
    }

    v18 = [v6 identifier];
    [v7 insertObject:v18 atIndex:a3];
LABEL_17:

    goto LABEL_18;
  }

  if (v17 > a3)
  {
    v18 = [v6 identifier];
    [v7 moveObject:v18 toIndex:a3];
    goto LABEL_17;
  }

  v21 = os_log_create("com.apple.notes", "Move");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    v26 = [v6 ic_loggingDescription];
    v27 = 138412802;
    v28 = v7;
    v29 = 2112;
    v30 = v26;
    v31 = 2048;
    v32 = a3;
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Illegal subfolder move — setting as last subfolder {orderedIdentifiers: %@, folder: %@, index: %lu}", &v27, 0x20u);
  }

  v20 = [v6 identifier];
  [v7 moveObject:v20 toIndex:{objc_msgSend(v7, "count") - 1}];
LABEL_15:

LABEL_18:
  [(ICNoteContainer *)self setSubFolderOrderMergeableDataDirty:1];
  [(ICNoteContainer *)self saveSubFolderMergeableDataIfNeeded];
  v23 = +[NSDate date];
  [v6 setParentModificationDate:v23];

  [v6 updateChangeCountWithReason:@"Set folder order"];
  [(ICNoteContainer *)self updateSubFolderMergeableDataChangeCount];
  v24 = +[NSNotificationCenter defaultCenter];
  [v24 postNotificationName:@"ICNoteContainerOrderDidChangeNotification" object:v6];
}

- (void)undoablyRemoveFromOrder:(id)a3
{
  v15 = a3;
  v4 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet];
  v5 = [v15 identifier];
  v6 = [v4 indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = +[NSUndoManager shared];
    v8 = [v7 prepareWithInvocationTarget:self];
    [v8 undoablySetOrder:v6 ofChild:v15];
  }

  v9 = +[NSUndoManager shared];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Remove Folder Order" value:&stru_100661CF0 table:0];
  [v9 setActionName:v11];

  v12 = [v15 identifier];
  [v4 removeObject:v12];

  [(ICNoteContainer *)self setSubFolderOrderMergeableDataDirty:1];
  [(ICNoteContainer *)self saveSubFolderMergeableDataIfNeeded];
  v13 = +[NSDate date];
  [v15 setParentModificationDate:v13];

  [v15 updateChangeCountWithReason:@"Removed from folder order"];
  [(ICNoteContainer *)self updateSubFolderMergeableDataChangeCount];
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 postNotificationName:@"ICNoteContainerOrderDidChangeNotification" object:v15];
}

- (void)undoablyMoveSubFolder:(id)a3 toIndex:(unint64_t)a4
{
  v8 = a3;
  v9 = [v8 parent];
  if (!v9 && ([v8 account], v4 = objc_claimAutoreleasedReturnValue(), -[ICNoteContainer noteContainerAccount](self, "noteContainerAccount"), v10 = objc_claimAutoreleasedReturnValue(), v5 = v10, v4 == v10))
  {
  }

  else
  {
    v11 = [v8 parent];

    if (v9)
    {
    }

    else
    {
    }

    if (v11 != self)
    {
      [ICAssert handleFailedAssertWithCondition:"(subFolder.parent == ((void*)0) && subFolder.account == self.noteContainerAccount) || subFolder.parent == self" functionName:"[ICNoteContainer(UndoSupport) undoablyMoveSubFolder:toIndex:]" simulateCrash:1 showAlert:0 format:@"Trying to move subfolder in the wrong parent"];
    }
  }

  v12 = [(ICNoteContainer *)self visibleSubFolders];
  v13 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v12;
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

        v19 = [*(*(&v42 + 1) + 8 * i) identifier];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v16);
  }

  v20 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet];
  v21 = [v20 allObjects];
  v22 = [NSSet setWithArray:v21];

  if (([v13 isEqual:v22] & 1) == 0)
  {
    v32 = a4;
    v34 = v8;
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
          v29 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet:v32];
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

    a4 = v33;
    v8 = v35;
  }

  [(ICNoteContainer *)self undoablySetOrder:a4 ofChild:v8];
}

@end