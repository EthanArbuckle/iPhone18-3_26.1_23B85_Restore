@interface ICNoteContext
- (id)addNewNoteByCopyingNote:(id)a3 toFolder:(id)a4;
- (id)adjustedDestinationFolderForNoteContainer:(id)a3 sourceFolder:(id)a4;
- (id)undoablyAddFolderToAccount:(id)a3 moveAction:(id)a4 actionName:(id)a5;
- (id)undoablyCopyFolder:(id)a3 toAccount:(id)a4 copyingNotes:(BOOL)a5 moveAction:(id)a6 actionName:(id)a7;
- (id)undoablyCopyNote:(id)a3 toFolder:(id)a4 moveAction:(id)a5 actionName:(id)a6;
- (id)undoablyCopyNotes:(id)a3 toFolder:(id)a4 actionName:(id)a5;
- (void)copyFolder:(id)a3 toFolder:(id)a4;
- (void)copyNotes:(id)a3 toFolder:(id)a4;
- (void)markNoteAndAttachmentsForDeletion:(id)a3;
- (void)postNotificationsForTrashingOrDeletingNoteIDs:(id)a3;
- (void)postNotificationsForUntrashingOrUndeletingNoteIDs:(id)a3;
- (void)sendNotificationAfterDeletingOrUndeletingNotes;
- (void)sendNotificationBeforeDeletingOrUndeletingNotes:(id)a3;
- (void)undoablyDeleteAttachment:(id)a3;
- (void)undoablyDeleteNote:(id)a3 moveAction:(id)a4 actionName:(id)a5;
- (void)undoablyDeleteUnusedTagsForSmartFolder:(id)a3;
- (void)undoablyMarkNotes:(id)a3 asCallNotes:(BOOL)a4;
- (void)undoablyMarkNotes:(id)a3 asMathNotes:(BOOL)a4;
- (void)undoablyMarkNotes:(id)a3 asSystemPaper:(BOOL)a4;
- (void)undoablyMoveNoteIDs:(id)a3 toFolderIDs:(id)a4 actionName:(id)a5 workerContext:(id)a6 completionHandler:(id)a7;
- (void)undoablyMoveNotes:(id)a3 toNoteContainer:(id)a4 actionName:(id)a5 workerContext:(id)a6 completionHandler:(id)a7;
- (void)undoablyMoveNotes:(id)a3 toVirtualSmartFolder:(id)a4 actionName:(id)a5 workerContext:(id)a6 completionHandler:(id)a7;
- (void)undoablyMoveNotes:(id)a3 toVirtualSmartFolderType:(id)a4 completionHandler:(id)a5;
- (void)undoablyPersistDeleteEventForObject:(id)a3 fromParentObject:(id)a4 sharedRootObject:(id)a5;
- (void)undoablyProcessNoteIDs:(id)a3 progressStringBlock:(id)a4 workerContext:(id)a5 processNoteBlock:(id)a6 completionHandler:(id)a7;
- (void)undoablyTrashOrDeleteNotes:(id)a3;
- (void)undoablyUndeleteAttachment:(id)a3;
- (void)undoablyUndeleteNote:(id)a3 moveAction:(id)a4 actionName:(id)a5;
- (void)undoablyUndeleteUnusedTagsForSmartFolder:(id)a3;
- (void)undoablyUnmoveNoteIDs:(id)a3 toFolderIDs:(id)a4 originalToCopyNoteIDs:(id)a5 actionName:(id)a6 noteToFolderIDsForRedo:(id)a7 workerContext:(id)a8;
- (void)unmarkNoteAndAttachmentsForDeletion:(id)a3;
@end

@implementation ICNoteContext

- (void)undoablyDeleteAttachment:(id)a3
{
  v9 = a3;
  if (([v9 markedForDeletion] & 1) == 0)
  {
    [ICBaseAttachment deleteAttachment:v9];
    v4 = +[NSUndoManager shared];
    [v4 registerUndoWithTarget:self selector:"undoablyUndeleteAttachment:" object:v9];

    v5 = +[NSUndoManager shared];
    LOBYTE(v4) = [v5 ic_isUndoingOrRedoing];

    if ((v4 & 1) == 0)
    {
      v6 = +[NSUndoManager shared];
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"Delete Attachment" value:&stru_1000F6F48 table:0];
      [v6 setActionName:v8];
    }
  }
}

- (void)undoablyUndeleteAttachment:(id)a3
{
  v5 = a3;
  [ICBaseAttachment undeleteAttachment:v5];
  v4 = +[NSUndoManager shared];
  [v4 registerUndoWithTarget:self selector:"undoablyDeleteAttachment:" object:v5];

  [v5 ic_postNotificationOnMainThreadWithName:ICAttachmentPreviewImagesDidUpdateNotification];
}

- (id)undoablyCopyNote:(id)a3 toFolder:(id)a4 moveAction:(id)a5 actionName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    v14 = +[NSBundle mainBundle];
    v13 = [v14 localizedStringForKey:@"Copy Note" value:&stru_1000F6F48 table:0];
  }

  v15 = [(ICNoteContext *)self addNewNoteByCopyingNote:v10 toFolder:v11];
  v16 = v15;
  if (v15)
  {
    [v15 updateChangeCountWithReason:@"Copied note"];
    v17 = +[NSUndoManager shared];
    v18 = [v17 isUndoing];
    if (v12 && (v18 & 1) == 0)
    {
      v19 = [v12 type];

      if (v19 == 4)
      {
LABEL_9:
        v20 = +[NSUndoManager shared];
        v21 = [v20 prepareWithInvocationTarget:self];
        [v21 undoablyDeleteNote:v16 moveAction:v12 actionName:v13];

        v22 = +[NSUndoManager shared];
        [v22 setActionName:v13];

        v23 = v16;
        goto LABEL_10;
      }

      objc_opt_class();
      v17 = ICDynamicCast();
      [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:v12 oldObject:v17 newObject:v16];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v16;
}

- (id)undoablyCopyNotes:(id)a3 toFolder:(id)a4 actionName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v30 = a5;
  if (!v30)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Copy %lu Notes" value:&stru_1000F6F48 table:0];
    v30 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v10, [v7 count]);
  }

  v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v7;
  obj = [v7 copy];
  v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = ICCheckedProtocolCast();
        if (v16)
        {
          objc_opt_class();
          v17 = ICDynamicCast();
          v18 = v17;
          if (v8)
          {
            v19 = v8;
          }

          else
          {
            v19 = [v17 folder];
          }

          v20 = v19;
          if (v18)
          {
            v21 = [[ICCloudSyncingObjectMoveAction alloc] initWithNote:v18 toFolder:v19 isCopy:1];
          }

          else
          {
            v21 = 0;
          }

          v22 = [(ICNoteContext *)self undoablyCopyNote:v16 toFolder:v20 moveAction:v21 actionName:v30];
          [v29 ic_addNonNilObject:v22];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  v23 = +[NSUndoManager shared];
  [v23 setActionName:v30];

  v24 = [v29 copy];

  return v24;
}

- (void)undoablyDeleteNote:(id)a3 moveAction:(id)a4 actionName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 markedForDeletion] & 1) == 0)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3F70(v8);
    }

    if (!v10)
    {
      v12 = +[NSUndoManager shared];
      v13 = [v12 ic_isUndoingOrRedoing];

      if (v13)
      {
        v10 = 0;
      }

      else
      {
        v14 = +[NSBundle mainBundle];
        v10 = [v14 localizedStringForKey:@"Delete Note" value:&stru_1000F6F48 table:0];
      }
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:ICNoteWillBeDeletedNotification object:v8];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = [v8 attachments];
    v17 = [v16 copy];

    v18 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        v21 = 0;
        do
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(ICNoteContext *)self undoablyDeleteAttachment:*(*(&v37 + 1) + 8 * v21)];
          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v19);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = [v8 inlineAttachments];
    v23 = [v22 copy];

    v24 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        v27 = 0;
        do
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [(ICNoteContext *)self undoablyDeleteAttachment:*(*(&v33 + 1) + 8 * v27)];
          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v25);
    }

    [v8 markForDeletion];
    if ([v8 requiresLegacyTombstoneAfterDeletion])
    {
      [ICLegacyTombstone addLegacyTombstoneForNote:v8];
    }

    v28 = +[NSUndoManager shared];
    v29 = [v28 isUndoing];

    if (v9 && (v29 & 1) == 0)
    {
      [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:v9 oldObject:v8 newObject:0];
    }

    v30 = +[NSUndoManager shared];
    v31 = [v30 prepareWithInvocationTarget:self];
    [v31 undoablyUndeleteNote:v8 moveAction:v9 actionName:v10];

    if (v10)
    {
      v32 = +[NSUndoManager shared];
      [v32 setActionName:v10];
    }
  }
}

- (void)sendNotificationBeforeDeletingOrUndeletingNotes:(id)a3
{
  v3 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ICNoteContextWillUndoablyDeleteOrUndeleteNotes" object:v3];
}

- (void)sendNotificationAfterDeletingOrUndeletingNotes
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"ICNoteContextDidUndoablyDeleteOrUndeleteNotes" object:0];
}

- (void)undoablyUndeleteNote:(id)a3 moveAction:(id)a4 actionName:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSUndoManager shared];
  v11 = [v10 ic_isUndoingOrRedoing];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    if (v9)
    {
      goto LABEL_6;
    }

    [ICAssert handleFailedAssertWithCondition:"actionName" functionName:"[ICNoteContext(UndoSupport) undoablyUndeleteNote:moveAction:actionName:]" simulateCrash:1 showAlert:0 format:@"actionName cannot be nil"];
    v9 = +[NSBundle mainBundle];
    v12 = [v9 localizedStringForKey:@"Delete Note" value:&stru_1000F6F48 table:0];
  }

  v9 = v12;
LABEL_6:
  [v19 unmarkForDeletion];
  v13 = [v19 legacyContentHashAtImport];

  if (v13)
  {
    [ICLegacyTombstone removeLegacyTombstoneForNote:v19];
  }

  v14 = +[NSUndoManager shared];
  v15 = [v14 isUndoing];

  if (v8 && (v15 & 1) == 0)
  {
    [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:v8 oldObject:0 newObject:v19];
  }

  v16 = +[NSUndoManager shared];
  v17 = [v16 prepareWithInvocationTarget:self];
  [v17 undoablyDeleteNote:v19 moveAction:v8 actionName:v9];

  if (v9)
  {
    v18 = +[NSUndoManager shared];
    [v18 setActionName:v9];
  }
}

- (void)undoablyTrashOrDeleteNotes:(id)a3
{
  v4 = a3;
  if ([ICNote containsUndeletableNotes:v4])
  {
    v5 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000B4000();
    }
  }

  else
  {
    v6 = +[NSUndoManager shared];
    v7 = [v6 prepareWithInvocationTarget:self];
    [v7 sendNotificationAfterDeletingOrUndeletingNotes];

    [(ICNoteContext *)self sendNotificationBeforeDeletingOrUndeletingNotes:v4];
    v8 = [v4 firstObject];
    v9 = [v8 folder];
    LODWORD(v6) = [v9 isTrashFolder];
    v10 = +[NSBundle mainBundle];
    v11 = v10;
    if (v6)
    {
      v12 = @"Delete %lu Notes";
    }

    else
    {
      v12 = @"Trash %lu Notes";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_1000F6F48 table:0];
    v5 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v13, [v4 count]);

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v4;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          v20 = [v19 folder];
          v21 = [v19 sharedRootObject];
          [(ICNoteContext *)self undoablyPersistDeleteEventForObject:v19 fromParentObject:v20 sharedRootObject:v21];

          v22 = [v19 undoablyTrashOrDeleteWithMoveAction:0 actionName:v5];
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    [(ICNoteContext *)self sendNotificationAfterDeletingOrUndeletingNotes];
    v23 = +[NSUndoManager shared];
    v24 = [v23 prepareWithInvocationTarget:self];
    [v24 sendNotificationBeforeDeletingOrUndeletingNotes:v14];

    v25 = +[NSUndoManager shared];
    [v25 setActionName:v5];
  }
}

- (void)undoablyPersistDeleteEventForObject:(id)a3 fromParentObject:(id)a4 sharedRootObject:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSUndoManager shared];
  v11 = [v10 isUndoing];

  if ((v11 & 1) == 0)
  {
    v12 = [v9 persistDeleteActivityEventForObject:v16 fromParentObject:v8];
    v13 = +[NSUndoManager shared];
    [v13 registerUndoForCloudSyncingObjectActivityEvent:v12 cloudSyncingObject:v9];
  }

  v14 = +[NSUndoManager shared];
  v15 = [v14 prepareWithInvocationTarget:self];
  [v15 undoablyPersistDeleteEventForObject:v16 fromParentObject:v8 sharedRootObject:v9];
}

- (id)addNewNoteByCopyingNote:(id)a3 toFolder:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 isPasswordProtected])
  {
    v7 = v5;
    if ([v7 isAuthenticated])
    {
      v8 = [ICNote duplicateNote:v7 intoFolder:v6 isPasswordProtected:1 removeOriginalNote:0];
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B4034(v7);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = [ICNote newEmptyNoteInFolder:v6];
    if (([v5 copyValuesToNote:v8] & 1) == 0)
    {
      [ICNote deleteNote:v8];
    }
  }

  [v8 updateChangeCountWithReason:@"Copied note"];

  return v8;
}

- (void)copyNotes:(id)a3 toFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = ICCheckedProtocolCast();
        if (v13)
        {
          v14 = [(ICNoteContext *)self addNewNoteByCopyingNote:v13 toFolder:v7];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)copyFolder:(id)a3 toFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"sourceFolder" functionName:"[ICNoteContext(UndoSupport) copyFolder:toFolder:]" simulateCrash:1 showAlert:0 format:@"sourceFolder is nil"];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [ICAssert handleFailedAssertWithCondition:"targetFolder" functionName:"[ICNoteContext(UndoSupport) copyFolder:toFolder:]" simulateCrash:1 showAlert:0 format:@"targetFolder is nil"];
LABEL_3:
  if (v6 == v8)
  {
    [ICAssert handleFailedAssertWithCondition:"sourceFolder != targetFolder" functionName:"[ICNoteContext(UndoSupport) copyFolder:toFolder:]" simulateCrash:1 showAlert:0 format:@"Should not copy to the same folder %@", v8];
  }

  else if (v6 && v8)
  {
    v9 = [v6 titleForCopying];
    [v8 setTitle:v9];

    v10 = [v6 notesForCopying];
    [(ICNoteContext *)self copyNotes:v10 toFolder:v8];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v6;
    v11 = [v6 subfoldersForCopying];
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = ICCheckedProtocolCast();
          if (v17)
          {
            v18 = [ICFolder newFolderInParentFolder:v8];
            [(ICNoteContext *)self copyFolder:v17 toFolder:v18];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v6 = v19;
  }
}

- (id)adjustedDestinationFolderForNoteContainer:(id)a3 sourceFolder:(id)a4
{
  v4 = a3;
  v5 = [v4 noteContainerAccount];
  objc_opt_class();
  v6 = ICDynamicCast();

  if ([v6 isSmartFolder] || !v6)
  {
    v7 = [v5 defaultFolder];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (void)undoablyMoveNotes:(id)a3 toNoteContainer:(id)a4 actionName:(id)a5 workerContext:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v29 = a6;
  v28 = a7;
  v31 = v14;
  if (!v14)
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Move %lu Notes" value:&stru_1000F6F48 table:0];
    v31 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v16, [v12 count]);
  }

  v30 = [NSManagedObject ic_permanentObjectIDsFromObjects:v12];
  v17 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v12 count]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v19)
  {
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = [v22 folder];
        v24 = [(ICNoteContext *)self adjustedDestinationFolderForNoteContainer:v13 sourceFolder:v23];

        v25 = [v24 objectID];
        v26 = [v22 objectID];
        [v17 setObject:v25 forKeyedSubscript:v26];
      }

      v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v19);
  }

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_10001CAD0;
  v35[4] = sub_10001CAE0;
  v36 = [v13 managedObjectContext];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001CAE8;
  v32[3] = &unk_1000F2A68;
  v27 = v28;
  v33 = v27;
  v34 = v35;
  [(ICNoteContext *)self undoablyMoveNoteIDs:v30 toFolderIDs:v17 actionName:v31 workerContext:v29 completionHandler:v32];

  _Block_object_dispose(v35, 8);
}

- (void)undoablyMoveNotes:(id)a3 toVirtualSmartFolder:(id)a4 actionName:(id)a5 workerContext:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v12 count])
  {
    v17 = [v13 accountObjectID];
    if (v17)
    {
      v18 = [(ICNoteContext *)self managedObjectContext];
      v19 = [v13 accountObjectID];
      v20 = [v18 objectWithID:v19];
    }

    else
    {
      v18 = [v12 firstObject];
      v20 = [v18 account];
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001CDAC;
    v27[3] = &unk_1000F2A90;
    v28 = v20;
    v21 = v20;
    v22 = [v12 ic_objectsPassingTest:v27];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001CE14;
    v23[3] = &unk_1000F2AB8;
    v23[4] = self;
    v24 = v12;
    v25 = v13;
    v26 = v16;
    [(ICNoteContext *)self undoablyMoveNotes:v22 toNoteContainer:v21 actionName:v14 workerContext:v15 completionHandler:v23];
  }

  else if (v16)
  {
    (*(v16 + 2))(v16, v12);
  }
}

- (void)undoablyMoveNotes:(id)a3 toVirtualSmartFolderType:(id)a4 completionHandler:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 isEqual:ICVirtualSmartFolderItemIdentifierTypeSystemPaper])
  {
    [(ICNoteContext *)self undoablyMarkNotes:v10 asSystemPaper:1];
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_9:
    v9[2](v9, v10);
    goto LABEL_10;
  }

  if ([v8 isEqual:ICVirtualSmartFolderItemIdentifierTypeCallNotes])
  {
    [(ICNoteContext *)self undoablyMarkNotes:v10 asCallNotes:1];
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ([v8 isEqual:ICVirtualSmartFolderItemIdentifierTypeMathNotes])
    {
      [(ICNoteContext *)self undoablyMarkNotes:v10 asMathNotes:1];
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICNoteContext(UndoSupport) undoablyMoveNotes:toVirtualSmartFolderType:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Cannot move notes into Virtual Smart Folder"];
    if (v9)
    {
      v9[2](v9, &__NSArray0__struct);
    }
  }

LABEL_10:
}

- (void)undoablyMarkNotes:(id)a3 asSystemPaper:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICNoteContext *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D0C8;
  v11[3] = &unk_1000F2AE0;
  v14 = v4;
  v12 = v6;
  v13 = self;
  v8 = v6;
  [v7 performBlockAndWait:v11];

  v9 = +[NSUndoManager shared];
  v10 = [v9 prepareWithInvocationTarget:self];
  [v10 undoablyMarkNotes:v8 asSystemPaper:!v4];
}

- (void)undoablyMarkNotes:(id)a3 asMathNotes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICNoteContext *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D2C8;
  v11[3] = &unk_1000F2AE0;
  v14 = v4;
  v12 = v6;
  v13 = self;
  v8 = v6;
  [v7 performBlockAndWait:v11];

  v9 = +[NSUndoManager shared];
  v10 = [v9 prepareWithInvocationTarget:self];
  [v10 undoablyMarkNotes:v8 asMathNotes:!v4];
}

- (void)undoablyMarkNotes:(id)a3 asCallNotes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICNoteContext *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D4C8;
  v11[3] = &unk_1000F2AE0;
  v14 = v4;
  v12 = v6;
  v13 = self;
  v8 = v6;
  [v7 performBlockAndWait:v11];

  v9 = +[NSUndoManager shared];
  v10 = [v9 prepareWithInvocationTarget:self];
  [v10 undoablyMarkNotes:v8 asCallNotes:!v4];
}

- (id)undoablyAddFolderToAccount:(id)a3 moveAction:(id)a4 actionName:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = v8;
    v10 = a4;
    v11 = a3;
  }

  else
  {
    v12 = a4;
    v13 = a3;
    v14 = +[NSBundle mainBundle];
    v9 = [v14 localizedStringForKey:@"Add Folder" value:&stru_1000F6F48 table:0];
  }

  v15 = [ICFolder newFolderInAccount:a3];

  v16 = +[NSUndoManager shared];
  v17 = [v16 prepareWithInvocationTarget:self];
  [v17 undoablyDeleteFolder:v15 markNotesForDeletion:1 moveAction:a4 actionName:v9];

  v18 = +[NSUndoManager shared];
  [v18 setActionName:v9];

  return v15;
}

- (id)undoablyCopyFolder:(id)a3 toAccount:(id)a4 copyingNotes:(BOOL)a5 moveAction:(id)a6 actionName:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (!v15)
  {
    v16 = +[NSBundle mainBundle];
    v15 = [v16 localizedStringForKey:@"Copy Folder" value:&stru_1000F6F48 table:0];
  }

  v17 = [(ICNoteContext *)self undoablyAddFolderToAccount:v13 moveAction:v14 actionName:v15];
  v18 = [v12 customNoteSortType];
  [v17 setCustomNoteSortType:v18];

  objc_opt_class();
  v19 = ICDynamicCast();
  v20 = [v19 smartFolderQueryJSON];
  [v17 setSmartFolderQueryJSON:v20];

  if (v9)
  {
    [(ICNoteContext *)self copyFolder:v12 toFolder:v17];
  }

  [v17 updateChangeCountRecursivelyWithReason:@"Copied folder"];

  return v17;
}

- (void)undoablyDeleteUnusedTagsForSmartFolder:(id)a3
{
  v4 = a3;
  [v4 managedObjectContext];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10001DF94;
  v12 = &unk_1000F23B8;
  v14 = v13 = v4;
  v5 = v14;
  v6 = v4;
  [v5 performBlockAndWait:&v9];
  v7 = [NSUndoManager shared:v9];
  v8 = [v7 prepareWithInvocationTarget:self];
  [v8 undoablyUndeleteUnusedTagsForSmartFolder:v6];
}

- (void)undoablyUndeleteUnusedTagsForSmartFolder:(id)a3
{
  v4 = a3;
  [v4 managedObjectContext];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10001E154;
  v12 = &unk_1000F23B8;
  v14 = v13 = v4;
  v5 = v14;
  v6 = v4;
  [v5 performBlockAndWait:&v9];
  v7 = [NSUndoManager shared:v9];
  v8 = [v7 prepareWithInvocationTarget:self];
  [v8 undoablyDeleteUnusedTagsForSmartFolder:v6];
}

- (void)markNoteAndAttachmentsForDeletion:(id)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 attachments];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 markedForDeletion] & 1) == 0)
        {
          [ICAttachment deleteAttachment:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v3 markForDeletion];
  if ([v3 requiresLegacyTombstoneAfterDeletion])
  {
    [ICLegacyTombstone addLegacyTombstoneForNote:v3];
  }
}

- (void)unmarkNoteAndAttachmentsForDeletion:(id)a3
{
  v3 = a3;
  [v3 unmarkForDeletion];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v3;
  v4 = [v3 attachments];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = ICAttachmentPreviewImagesDidUpdateNotification;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        [v11 unmarkForDeletion];
        v12 = [v11 media];
        [v12 unmarkForDeletion];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v13 = [v11 previewImages];
        v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v22;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v21 + 1) + 8 * j) unmarkForDeletion];
            }

            v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v15);
        }

        v18 = [v11 ic_postNotificationOnMainThreadAfterSaveWithName:v9];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v19 = [v20 legacyContentHashAtImport];

  if (v19)
  {
    [ICLegacyTombstone removeLegacyTombstoneForNote:v20];
  }
}

- (void)undoablyProcessNoteIDs:(id)a3 progressStringBlock:(id)a4 workerContext:(id)a5 processNoteBlock:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14)
  {
    v14 = [(ICNoteContext *)self snapshotManagedObjectContext];
  }

  v17 = objc_alloc_init(ICLongRunningTaskController);
  [v17 setProgressStringBlock:v13];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_10001CAD0;
  v30[4] = sub_10001CAE0;
  v31 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001E834;
  v25[3] = &unk_1000F2B30;
  v18 = v12;
  v26 = v18;
  v19 = v14;
  v27 = v19;
  v20 = v15;
  v28 = v20;
  v29 = v30;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001EBD4;
  v22[3] = &unk_1000F2B58;
  v21 = v16;
  v23 = v21;
  v24 = v30;
  [v17 startTask:v25 completionBlock:v22];

  _Block_object_dispose(v30, 8);
}

- (void)undoablyUnmoveNoteIDs:(id)a3 toFolderIDs:(id)a4 originalToCopyNoteIDs:(id)a5 actionName:(id)a6 noteToFolderIDsForRedo:(id)a7 workerContext:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a3;
  v20 = +[NSUndoManager shared];
  v21 = [v20 prepareWithInvocationTarget:self];
  [v21 undoablyMoveNoteIDs:v19 toFolderIDs:v17 actionName:v18 workerContext:v16 completionHandler:0];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001EE14;
  v24[3] = &unk_1000F2BC0;
  v25 = v14;
  v26 = v15;
  v27 = self;
  v22 = v15;
  v23 = v14;
  [(ICNoteContext *)self undoablyProcessNoteIDs:v19 progressStringBlock:&stru_1000F2B98 workerContext:v16 processNoteBlock:v24 completionHandler:0];
}

- (void)undoablyMoveNoteIDs:(id)a3 toFolderIDs:(id)a4 actionName:(id)a5 workerContext:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v27 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = +[NSUndoManager shared];
  [v16 beginUndoGrouping];

  v17 = +[NSMutableDictionary dictionary];
  v18 = +[NSMutableDictionary dictionary];
  v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10001F400;
  v36[3] = &unk_1000F2C08;
  v37 = v12;
  v38 = v17;
  v39 = v18;
  v40 = self;
  v41 = v19;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001F840;
  v28[3] = &unk_1000F2C30;
  v28[4] = self;
  v29 = v38;
  v30 = v39;
  v31 = v27;
  v32 = v37;
  v33 = v13;
  v34 = v41;
  v35 = v14;
  v20 = v41;
  v21 = v14;
  v22 = v13;
  v23 = v37;
  v24 = v27;
  v25 = v39;
  v26 = v38;
  [(ICNoteContext *)self undoablyProcessNoteIDs:v15 progressStringBlock:&stru_1000F2BE0 workerContext:v22 processNoteBlock:v36 completionHandler:v28];
}

- (void)postNotificationsForUntrashingOrUndeletingNoteIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteContext *)self managedObjectContext];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = ICNoteWillMoveFromRecentlyDeletedFolderNotification;
    v10 = ICNoteWillBeUndeletedNotification;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [ICNote ic_existingObjectWithID:*(*(&v18 + 1) + 8 * v11) context:v5];
        v13 = [v12 markedForDeletion];
        v14 = +[NSNotificationCenter defaultCenter];
        v15 = v14;
        if (v13)
        {
          v16 = v10;
        }

        else
        {
          v16 = v9;
        }

        [v14 postNotificationName:v16 object:v12];

        v11 = v11 + 1;
      }

      while (v7 != v11);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)postNotificationsForTrashingOrDeletingNoteIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteContext *)self managedObjectContext];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = ICNoteWillMoveToRecentlyDeletedFolderNotification;
    v10 = ICNoteWillBeDeletedNotification;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [ICNote ic_existingObjectWithID:*(*(&v19 + 1) + 8 * v11) context:v5];
        v13 = [v12 folder];
        v14 = [v13 isTrashFolder];

        v15 = +[NSNotificationCenter defaultCenter];
        v16 = v15;
        if (v14)
        {
          v17 = v10;
        }

        else
        {
          v17 = v9;
        }

        [v15 postNotificationName:v17 object:v12];

        v11 = v11 + 1;
      }

      while (v7 != v11);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

@end