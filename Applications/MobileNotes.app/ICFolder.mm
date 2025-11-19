@interface ICFolder
+ (id)undoablyMoveFolder:(id)a3 toNoteContainer:(id)a4;
+ (id)undoablyMoveFolder:(id)a3 toNoteContainer:(id)a4 toAccount:(id)a5 moveAction:(id)a6 noteMovedBlock:(id)a7;
+ (id)undoablyMoveNote:(id)a3 toFolder:(id)a4 moveAction:(id)a5 actionName:(id)a6;
+ (void)undoablyMoveNotes:(id)a3 toFolder:(id)a4 isCopy:(BOOL)a5 noteMovedBlock:(id)a6;
- (void)undoablySetParentFolder:(id)a3;
- (void)undoablySetParentFolder:(id)a3 moveAction:(id)a4;
- (void)undoablySetTitle:(id)a3;
- (void)updateChangeCountRecursivelyWithReason:(id)a3;
@end

@implementation ICFolder

- (void)undoablySetTitle:(id)a3
{
  v4 = a3;
  v5 = +[NSUndoManager shared];
  v6 = [v5 prepareWithInvocationTarget:self];
  v7 = [(ICFolder *)self title];
  [v6 undoablySetTitle:v7];

  v8 = +[NSUndoManager shared];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Set Folder Name" value:&stru_100661CF0 table:0];
  [v8 setActionName:v10];

  [(ICFolder *)self setTitle:v4];
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

  v15 = [(ICFolder *)self managedObjectContext];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000FC9F8;
  v16[3] = &unk_100645E30;
  v16[4] = self;
  [v15 performBlock:v16];
}

- (void)undoablySetParentFolder:(id)a3
{
  v4 = a3;
  v5 = [[ICCloudSyncingObjectMoveAction alloc] initWithFolder:self toParentObject:v4 isCopy:0];
  [(ICFolder *)self undoablySetParentFolder:v4 moveAction:v5];
}

- (void)undoablySetParentFolder:(id)a3 moveAction:(id)a4
{
  v18 = a4;
  v6 = a3;
  v7 = [(ICFolder *)self parent];

  if (v7)
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
  v10 = [v9 isUndoing];

  if (v18 && (v10 & 1) == 0)
  {
    [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:v18 oldObject:self newObject:self];
  }

  v11 = +[NSUndoManager shared];
  v12 = [v11 prepareWithInvocationTarget:self];
  v13 = [(ICFolder *)self parent];
  [v12 undoablySetParentFolder:v13 moveAction:v18];

  v14 = +[NSUndoManager shared];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Move Folder" value:&stru_100661CF0 table:0];
  [v14 setActionName:v16];

  [(ICFolder *)self setParent:v6];
  v17 = +[NSDate now];
  [(ICFolder *)self setParentModificationDate:v17];

  [(ICFolder *)self updateChangeCountWithReason:@"Set parent folder"];
}

- (void)updateChangeCountRecursivelyWithReason:(id)a3
{
  v4 = a3;
  [(ICFolder *)self updateChangeCountWithReason:v4];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = self;
  v5 = [(ICFolder *)self notes];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        [v10 updateChangeCountWithReason:v4];
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v10 attachments];
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v28 + 1) + 8 * j);
              [v16 updateChangeCountWithReason:v4];
              v17 = [v16 media];
              [v17 updateChangeCountWithReason:v4];
            }

            v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [(ICFolder *)v23 children];
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
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
          objc_enumerationMutation(v18);
        }

        [*(*(&v24 + 1) + 8 * k) updateChangeCountRecursivelyWithReason:v4];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }
}

+ (id)undoablyMoveFolder:(id)a3 toNoteContainer:(id)a4 toAccount:(id)a5 moveAction:(id)a6 noteMovedBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v12;
  objc_opt_class();
  v18 = ICDynamicCast();
  v19 = [v18 canMoveAddOrDeleteContents];
  if (!v14 && !v19)
  {
    v20 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1004DFB78(v17, v20);
    }

    v21 = v20;
    v22 = v17;
    goto LABEL_45;
  }

  v23 = [v17 title];
  v20 = [ICFolder deduplicatingTitle:v23 forFolder:v17 forNewFolderParent:v18 ofAccount:v14];
  if (v20 && ([v23 isEqualToString:v20]& 1) == 0)
  {
    [v17 undoablySetTitle:v20];
  }

  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = v14;
  }

  v53 = v23;
  if (([ICMoveDecision shouldCopyThenDeleteWhenMovingObject:v17 toNoteContainer:v24]& 1) != 0)
  {
    v50 = v20;
    v25 = +[ICNoteContext sharedContext];
    v22 = [v25 undoablyCopyFolder:v17 toAccount:v14 copyingNotes:0 moveAction:v15 actionName:0];

    v26 = [v17 title];
    [v22 setTitle:v26];

    v51 = v18;
    [v22 setParent:v18];
    if (v15)
    {
      [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:v15 oldObject:0 newObject:v22];
    }

    v52 = v15;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = [v17 subfoldersForCopying];
    v28 = [v27 countByEnumeratingWithState:&v60 objects:v65 count:16];
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
            objc_enumerationMutation(v27);
          }

          v32 = [a1 undoablyMoveFolder:*(*(&v60 + 1) + 8 * i) toNoteContainer:v22 toAccount:v14 moveAction:0 noteMovedBlock:v16];
        }

        v29 = [v27 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v29);
    }

    if (([v17 isSmartFolder] & 1) == 0)
    {
      v48 = v17;
      v49 = v13;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v33 = [v17 visibleNotes];
      v34 = [v33 countByEnumeratingWithState:&v56 objects:v64 count:16];
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
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v56 + 1) + 8 * j);
            v39 = [a1 undoablyMoveNote:v38 toFolder:v22 moveAction:0 actionName:0];
            if (v16)
            {
              v16[2](v16, v38);
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v35);
      }

      v17 = v48;
      v13 = v49;
    }

    v40 = +[ICNoteContext sharedContext];
    v15 = v52;
    [v40 undoablyDeleteFolder:v17 markNotesForDeletion:1 moveAction:v52 actionName:0];

    v20 = v50;
    v18 = v51;
    if (v51)
    {
      goto LABEL_34;
    }

LABEL_36:
    v41 = v14;
    goto LABEL_37;
  }

  [v17 undoablySetParentFolder:v18 moveAction:v15];
  v22 = v17;
  if (!v18)
  {
    goto LABEL_36;
  }

LABEL_34:
  v41 = v18;
LABEL_37:
  v42 = [v41 subFolderIdentifiersOrderedSet];
  if (!v42)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "((orderedIdentifiers) != nil)", "+[ICFolder(UndoSupport) undoablyMoveFolder:toNoteContainer:toAccount:moveAction:noteMovedBlock:]", 1, 0, @"Expected non-nil value for '%s'", "orderedIdentifiers");
  }

  if ([v42 count])
  {
    v43 = [v42 count];
    if (v18)
    {
      v44 = v18;
    }

    else
    {
      v44 = v14;
    }

    [v44 undoablySetOrder:v43 ofChild:v22];
  }

  v21 = v53;
LABEL_45:

  v45 = [v22 managedObjectContext];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1000FD448;
  v54[3] = &unk_100645E30;
  v46 = v22;
  v55 = v46;
  [v45 performBlock:v54];

  return v46;
}

+ (id)undoablyMoveFolder:(id)a3 toNoteContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 noteContainerAccount];
  v9 = [a1 undoablyMoveFolder:v7 toNoteContainer:v6 toAccount:v8 moveAction:0 noteMovedBlock:0];

  return v9;
}

+ (void)undoablyMoveNotes:(id)a3 toFolder:(id)a4 isCopy:(BOOL)a5 noteMovedBlock:(id)a6
{
  v23 = a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Move %lu Notes" value:&stru_100661CF0 table:0];
  v14 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v13, [v9 count]);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v9;
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
        v20 = [[ICCloudSyncingObjectMoveAction alloc] initWithNote:v19 toFolder:v10 isCopy:v23];
        v21 = [a1 undoablyMoveNote:v19 toFolder:v10 moveAction:v20 actionName:v14];
        if (v11)
        {
          v11[2](v11, v19);
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }
}

+ (id)undoablyMoveNote:(id)a3 toFolder:(id)a4 moveAction:(id)a5 actionName:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 isSystemPaper])
  {
    v13 = +[ICNoteContext sharedContext];
    v26 = v9;
    v14 = [NSArray arrayWithObjects:&v26 count:1];
    [v13 undoablyMarkNotes:v14 asSystemPaper:0];
  }

  v15 = [v9 folder];

  if (v15 == v10)
  {
    v24 = v9;
    v18 = v10;
    goto LABEL_14;
  }

  v16 = +[ICNoteContext sharedContext];
  v17 = [v9 folder];
  v18 = [v16 adjustedDestinationFolderForNoteContainer:v10 sourceFolder:v17];

  v19 = [ICMoveDecision shouldCopyThenDeleteWhenMovingObject:v9 toNoteContainer:v18];
  v20 = [v11 isCopy];
  if (v19)
  {
    if (([v11 isCopy] & 1) == 0)
    {
      v21 = os_log_create("com.apple.notes", "Move");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DFC10(v18, v9, v21);
      }

      v22 = [v9 folder];
      v23 = [v9 undoablyCopyAndDeleteFromFolder:v22 destinationFolder:v18 moveAction:v11 actionName:v12];
      goto LABEL_12;
    }

LABEL_11:
    v22 = +[ICNoteContext sharedContext];
    v23 = [v22 undoablyCopyNote:v9 toFolder:v18 moveAction:v11 actionName:0];
LABEL_12:
    v24 = v23;

    goto LABEL_14;
  }

  if (v20)
  {
    goto LABEL_11;
  }

  [v9 undoablySetFolder:v18];
  v24 = v9;
LABEL_14:

  return v24;
}

@end