@interface ICFolder
+ (id)undoablyMoveFolder:(id)folder toNoteContainer:(id)container;
+ (id)undoablyMoveFolder:(id)folder toNoteContainer:(id)container toAccount:(id)account moveAction:(id)action noteMovedBlock:(id)block;
+ (id)undoablyMoveNote:(id)note toFolder:(id)folder moveAction:(id)action actionName:(id)name;
+ (void)undoablyMoveNotes:(id)notes toFolder:(id)folder isCopy:(BOOL)copy noteMovedBlock:(id)block;
- (void)undoablySetParentFolder:(id)folder;
- (void)undoablySetParentFolder:(id)folder moveAction:(id)action;
- (void)undoablySetTitle:(id)title;
- (void)updateChangeCountRecursivelyWithReason:(id)reason;
@end

@implementation ICFolder

- (void)undoablySetTitle:(id)title
{
  titleCopy = title;
  v5 = +[NSUndoManager shared];
  v6 = [v5 prepareWithInvocationTarget:self];
  title = [(ICFolder *)self title];
  [v6 undoablySetTitle:title];

  v8 = +[NSUndoManager shared];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Set Folder Name" value:&stru_1000F6F48 table:0];
  [v8 setActionName:v10];

  [(ICFolder *)self setTitle:titleCopy];
  v11 = +[NSDate now];
  [(ICFolder *)self setDateForLastTitleModification:v11];

  [(ICFolder *)self updateChangeCountWithReason:@"Set folder title"];
  v12 = +[NSUndoManager shared];
  LOBYTE(v8) = [v12 isUndoing];

  if ((v8 & 1) == 0)
  {
    v13 = [(ICFolder *)self persistRenameActivityEventForObject:self];
    v14 = +[NSUndoManager shared];
    [v14 registerUndoForCloudSyncingObjectActivityEvent:v13 cloudSyncingObject:self];
  }

  managedObjectContext = [(ICFolder *)self managedObjectContext];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007AE8;
  v16[3] = &unk_1000F2390;
  v16[4] = self;
  [managedObjectContext performBlock:v16];
}

- (void)undoablySetParentFolder:(id)folder
{
  folderCopy = folder;
  v5 = [[ICCloudSyncingObjectMoveAction alloc] initWithFolder:self toParentObject:folderCopy isCopy:0];
  [(ICFolder *)self undoablySetParentFolder:folderCopy moveAction:v5];
}

- (void)undoablySetParentFolder:(id)folder moveAction:(id)action
{
  actionCopy = action;
  folderCopy = folder;
  parent = [(ICFolder *)self parent];

  if (parent)
  {
    [(ICFolder *)self parent];
  }

  else
  {
    [(ICFolder *)self account];
  }
  v8 = ;
  [v8 undoablyRemoveFromOrder:self];

  v9 = +[NSUndoManager shared];
  isUndoing = [v9 isUndoing];

  if (actionCopy && (isUndoing & 1) == 0)
  {
    [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:actionCopy oldObject:self newObject:self];
  }

  v11 = +[NSUndoManager shared];
  v12 = [v11 prepareWithInvocationTarget:self];
  parent2 = [(ICFolder *)self parent];
  [v12 undoablySetParentFolder:parent2 moveAction:actionCopy];

  v14 = +[NSUndoManager shared];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Move Folder" value:&stru_1000F6F48 table:0];
  [v14 setActionName:v16];

  [(ICFolder *)self setParent:folderCopy];
  v17 = +[NSDate now];
  [(ICFolder *)self setParentModificationDate:v17];

  [(ICFolder *)self updateChangeCountWithReason:@"Set parent folder"];
}

- (void)updateChangeCountRecursivelyWithReason:(id)reason
{
  reasonCopy = reason;
  [(ICFolder *)self updateChangeCountWithReason:reasonCopy];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  selfCopy = self;
  notes = [(ICFolder *)self notes];
  v6 = [notes countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(notes);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        [v10 updateChangeCountWithReason:reasonCopy];
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        attachments = [v10 attachments];
        v12 = [attachments countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(attachments);
              }

              v16 = *(*(&v28 + 1) + 8 * j);
              [v16 updateChangeCountWithReason:reasonCopy];
              media = [v16 media];
              [media updateChangeCountWithReason:reasonCopy];
            }

            v13 = [attachments countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v13);
        }
      }

      v7 = [notes countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  children = [(ICFolder *)selfCopy children];
  v19 = [children countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v24 + 1) + 8 * k) updateChangeCountRecursivelyWithReason:reasonCopy];
      }

      v20 = [children countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }
}

+ (id)undoablyMoveFolder:(id)folder toNoteContainer:(id)container toAccount:(id)account moveAction:(id)action noteMovedBlock:(id)block
{
  folderCopy = folder;
  containerCopy = container;
  accountCopy = account;
  actionCopy = action;
  blockCopy = block;
  v17 = folderCopy;
  objc_opt_class();
  v18 = ICDynamicCast();
  canMoveAddOrDeleteContents = [v18 canMoveAddOrDeleteContents];
  if (!accountCopy && !canMoveAddOrDeleteContents)
  {
    v20 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3190(v17, v20);
    }

    v21 = v20;
    v22 = v17;
    goto LABEL_45;
  }

  title = [v17 title];
  v20 = [ICFolder deduplicatingTitle:title forFolder:v17 forNewFolderParent:v18 ofAccount:accountCopy];
  if (v20 && ([title isEqualToString:v20]& 1) == 0)
  {
    [v17 undoablySetTitle:v20];
  }

  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = accountCopy;
  }

  v53 = title;
  if (([ICMoveDecision shouldCopyThenDeleteWhenMovingObject:v17 toNoteContainer:v24]& 1) != 0)
  {
    v50 = v20;
    v25 = +[ICNoteContext sharedContext];
    v22 = [v25 undoablyCopyFolder:v17 toAccount:accountCopy copyingNotes:0 moveAction:actionCopy actionName:0];

    title2 = [v17 title];
    [v22 setTitle:title2];

    v51 = v18;
    [v22 setParent:v18];
    if (actionCopy)
    {
      [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:actionCopy oldObject:0 newObject:v22];
    }

    v52 = actionCopy;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    subfoldersForCopying = [v17 subfoldersForCopying];
    v28 = [subfoldersForCopying countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v61;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v61 != v30)
          {
            objc_enumerationMutation(subfoldersForCopying);
          }

          v32 = [self undoablyMoveFolder:*(*(&v60 + 1) + 8 * i) toNoteContainer:v22 toAccount:accountCopy moveAction:0 noteMovedBlock:blockCopy];
        }

        v29 = [subfoldersForCopying countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v29);
    }

    if (([v17 isSmartFolder] & 1) == 0)
    {
      v48 = v17;
      v49 = containerCopy;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      visibleNotes = [v17 visibleNotes];
      v34 = [visibleNotes countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v57;
        do
        {
          for (j = 0; j != v35; j = j + 1)
          {
            if (*v57 != v36)
            {
              objc_enumerationMutation(visibleNotes);
            }

            v38 = *(*(&v56 + 1) + 8 * j);
            v39 = [self undoablyMoveNote:v38 toFolder:v22 moveAction:0 actionName:0];
            if (blockCopy)
            {
              blockCopy[2](blockCopy, v38);
            }
          }

          v35 = [visibleNotes countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v35);
      }

      v17 = v48;
      containerCopy = v49;
    }

    v40 = +[ICNoteContext sharedContext];
    actionCopy = v52;
    [v40 undoablyDeleteFolder:v17 markNotesForDeletion:1 moveAction:v52 actionName:0];

    v20 = v50;
    v18 = v51;
    if (v51)
    {
      goto LABEL_34;
    }

LABEL_36:
    v41 = accountCopy;
    goto LABEL_37;
  }

  [v17 undoablySetParentFolder:v18 moveAction:actionCopy];
  v22 = v17;
  if (!v18)
  {
    goto LABEL_36;
  }

LABEL_34:
  v41 = v18;
LABEL_37:
  subFolderIdentifiersOrderedSet = [v41 subFolderIdentifiersOrderedSet];
  if (!subFolderIdentifiersOrderedSet)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "((orderedIdentifiers) != nil)", "+[ICFolder(UndoSupport) undoablyMoveFolder:toNoteContainer:toAccount:moveAction:noteMovedBlock:]", 1, 0, @"Expected non-nil value for '%s'", "orderedIdentifiers");
  }

  if ([subFolderIdentifiersOrderedSet count])
  {
    v43 = [subFolderIdentifiersOrderedSet count];
    if (v18)
    {
      v44 = v18;
    }

    else
    {
      v44 = accountCopy;
    }

    [v44 undoablySetOrder:v43 ofChild:v22];
  }

  v21 = v53;
LABEL_45:

  managedObjectContext = [v22 managedObjectContext];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100008538;
  v54[3] = &unk_1000F2390;
  v46 = v22;
  v55 = v46;
  [managedObjectContext performBlock:v54];

  return v46;
}

+ (id)undoablyMoveFolder:(id)folder toNoteContainer:(id)container
{
  containerCopy = container;
  folderCopy = folder;
  noteContainerAccount = [containerCopy noteContainerAccount];
  v9 = [self undoablyMoveFolder:folderCopy toNoteContainer:containerCopy toAccount:noteContainerAccount moveAction:0 noteMovedBlock:0];

  return v9;
}

+ (void)undoablyMoveNotes:(id)notes toFolder:(id)folder isCopy:(BOOL)copy noteMovedBlock:(id)block
{
  copyCopy = copy;
  notesCopy = notes;
  folderCopy = folder;
  blockCopy = block;
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Move %lu Notes" value:&stru_1000F6F48 table:0];
  v14 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v13, [notesCopy count]);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = notesCopy;
  v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        v20 = [[ICCloudSyncingObjectMoveAction alloc] initWithNote:v19 toFolder:folderCopy isCopy:copyCopy];
        v21 = [self undoablyMoveNote:v19 toFolder:folderCopy moveAction:v20 actionName:v14];
        if (blockCopy)
        {
          blockCopy[2](blockCopy, v19);
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }
}

+ (id)undoablyMoveNote:(id)note toFolder:(id)folder moveAction:(id)action actionName:(id)name
{
  noteCopy = note;
  folderCopy = folder;
  actionCopy = action;
  nameCopy = name;
  if ([noteCopy isSystemPaper])
  {
    v13 = +[ICNoteContext sharedContext];
    v26 = noteCopy;
    v14 = [NSArray arrayWithObjects:&v26 count:1];
    [v13 undoablyMarkNotes:v14 asSystemPaper:0];
  }

  folder = [noteCopy folder];

  if (folder == folderCopy)
  {
    v24 = noteCopy;
    v18 = folderCopy;
    goto LABEL_14;
  }

  v16 = +[ICNoteContext sharedContext];
  folder2 = [noteCopy folder];
  v18 = [v16 adjustedDestinationFolderForNoteContainer:folderCopy sourceFolder:folder2];

  v19 = [ICMoveDecision shouldCopyThenDeleteWhenMovingObject:noteCopy toNoteContainer:v18];
  isCopy = [actionCopy isCopy];
  if (v19)
  {
    if (([actionCopy isCopy] & 1) == 0)
    {
      v21 = os_log_create("com.apple.notes", "Move");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B3228(v18, noteCopy, v21);
      }

      folder3 = [noteCopy folder];
      v23 = [noteCopy undoablyCopyAndDeleteFromFolder:folder3 destinationFolder:v18 moveAction:actionCopy actionName:nameCopy];
      goto LABEL_12;
    }

LABEL_11:
    folder3 = +[ICNoteContext sharedContext];
    v23 = [folder3 undoablyCopyNote:noteCopy toFolder:v18 moveAction:actionCopy actionName:0];
LABEL_12:
    v24 = v23;

    goto LABEL_14;
  }

  if (isCopy)
  {
    goto LABEL_11;
  }

  [noteCopy undoablySetFolder:v18];
  v24 = noteCopy;
LABEL_14:

  return v24;
}

@end