@interface ICNoteContext
- (id)addNewNoteByCopyingNote:(id)note toFolder:(id)folder;
- (id)adjustedDestinationFolderForNoteContainer:(id)container sourceFolder:(id)folder;
- (id)undoablyAddFolderToAccount:(id)account moveAction:(id)action actionName:(id)name;
- (id)undoablyCopyFolder:(id)folder toAccount:(id)account copyingNotes:(BOOL)notes moveAction:(id)action actionName:(id)name;
- (id)undoablyCopyNote:(id)note toFolder:(id)folder moveAction:(id)action actionName:(id)name;
- (id)undoablyCopyNotes:(id)notes toFolder:(id)folder actionName:(id)name;
- (void)copyFolder:(id)folder toFolder:(id)toFolder;
- (void)copyNotes:(id)notes toFolder:(id)folder;
- (void)markNoteAndAttachmentsForDeletion:(id)deletion;
- (void)postNotificationsForTrashingOrDeletingNoteIDs:(id)ds;
- (void)postNotificationsForUntrashingOrUndeletingNoteIDs:(id)ds;
- (void)sendNotificationAfterDeletingOrUndeletingNotes;
- (void)sendNotificationBeforeDeletingOrUndeletingNotes:(id)notes;
- (void)undoablyDeleteAttachment:(id)attachment;
- (void)undoablyDeleteNote:(id)note moveAction:(id)action actionName:(id)name;
- (void)undoablyDeleteUnusedTagsForSmartFolder:(id)folder;
- (void)undoablyMarkNotes:(id)notes asCallNotes:(BOOL)callNotes;
- (void)undoablyMarkNotes:(id)notes asMathNotes:(BOOL)mathNotes;
- (void)undoablyMarkNotes:(id)notes asSystemPaper:(BOOL)paper;
- (void)undoablyMoveNoteIDs:(id)ds toFolderIDs:(id)iDs actionName:(id)name workerContext:(id)context completionHandler:(id)handler;
- (void)undoablyMoveNotes:(id)notes toNoteContainer:(id)container actionName:(id)name workerContext:(id)context completionHandler:(id)handler;
- (void)undoablyMoveNotes:(id)notes toVirtualSmartFolder:(id)folder actionName:(id)name workerContext:(id)context completionHandler:(id)handler;
- (void)undoablyMoveNotes:(id)notes toVirtualSmartFolderType:(id)type completionHandler:(id)handler;
- (void)undoablyPersistDeleteEventForObject:(id)object fromParentObject:(id)parentObject sharedRootObject:(id)rootObject;
- (void)undoablyProcessNoteIDs:(id)ds progressStringBlock:(id)block workerContext:(id)context processNoteBlock:(id)noteBlock completionHandler:(id)handler;
- (void)undoablyTrashOrDeleteNotes:(id)notes;
- (void)undoablyUndeleteAttachment:(id)attachment;
- (void)undoablyUndeleteNote:(id)note moveAction:(id)action actionName:(id)name;
- (void)undoablyUndeleteUnusedTagsForSmartFolder:(id)folder;
- (void)undoablyUnmoveNoteIDs:(id)ds toFolderIDs:(id)iDs originalToCopyNoteIDs:(id)noteIDs actionName:(id)name noteToFolderIDsForRedo:(id)redo workerContext:(id)context;
- (void)unmarkNoteAndAttachmentsForDeletion:(id)deletion;
@end

@implementation ICNoteContext

- (void)undoablyDeleteAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (([attachmentCopy markedForDeletion] & 1) == 0)
  {
    [ICBaseAttachment deleteAttachment:attachmentCopy];
    v4 = +[NSUndoManager shared];
    [v4 registerUndoWithTarget:self selector:"undoablyUndeleteAttachment:" object:attachmentCopy];

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

- (void)undoablyUndeleteAttachment:(id)attachment
{
  attachmentCopy = attachment;
  [ICBaseAttachment undeleteAttachment:attachmentCopy];
  v4 = +[NSUndoManager shared];
  [v4 registerUndoWithTarget:self selector:"undoablyDeleteAttachment:" object:attachmentCopy];

  [attachmentCopy ic_postNotificationOnMainThreadWithName:ICAttachmentPreviewImagesDidUpdateNotification];
}

- (id)undoablyCopyNote:(id)note toFolder:(id)folder moveAction:(id)action actionName:(id)name
{
  noteCopy = note;
  folderCopy = folder;
  actionCopy = action;
  nameCopy = name;
  if (!nameCopy)
  {
    v14 = +[NSBundle mainBundle];
    nameCopy = [v14 localizedStringForKey:@"Copy Note" value:&stru_1000F6F48 table:0];
  }

  v15 = [(ICNoteContext *)self addNewNoteByCopyingNote:noteCopy toFolder:folderCopy];
  v16 = v15;
  if (v15)
  {
    [v15 updateChangeCountWithReason:@"Copied note"];
    v17 = +[NSUndoManager shared];
    isUndoing = [v17 isUndoing];
    if (actionCopy && (isUndoing & 1) == 0)
    {
      type = [actionCopy type];

      if (type == 4)
      {
LABEL_9:
        v20 = +[NSUndoManager shared];
        v21 = [v20 prepareWithInvocationTarget:self];
        [v21 undoablyDeleteNote:v16 moveAction:actionCopy actionName:nameCopy];

        v22 = +[NSUndoManager shared];
        [v22 setActionName:nameCopy];

        v23 = v16;
        goto LABEL_10;
      }

      objc_opt_class();
      v17 = ICDynamicCast();
      [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:actionCopy oldObject:v17 newObject:v16];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v16;
}

- (id)undoablyCopyNotes:(id)notes toFolder:(id)folder actionName:(id)name
{
  notesCopy = notes;
  folderCopy = folder;
  nameCopy = name;
  if (!nameCopy)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Copy %lu Notes" value:&stru_1000F6F48 table:0];
    nameCopy = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v10, [notesCopy count]);
  }

  v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [notesCopy count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = notesCopy;
  obj = [notesCopy copy];
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
          if (folderCopy)
          {
            folder = folderCopy;
          }

          else
          {
            folder = [v17 folder];
          }

          v20 = folder;
          if (v18)
          {
            v21 = [[ICCloudSyncingObjectMoveAction alloc] initWithNote:v18 toFolder:folder isCopy:1];
          }

          else
          {
            v21 = 0;
          }

          v22 = [(ICNoteContext *)self undoablyCopyNote:v16 toFolder:v20 moveAction:v21 actionName:nameCopy];
          [v29 ic_addNonNilObject:v22];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  v23 = +[NSUndoManager shared];
  [v23 setActionName:nameCopy];

  v24 = [v29 copy];

  return v24;
}

- (void)undoablyDeleteNote:(id)note moveAction:(id)action actionName:(id)name
{
  noteCopy = note;
  actionCopy = action;
  nameCopy = name;
  if (([noteCopy markedForDeletion] & 1) == 0)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3F70(noteCopy);
    }

    if (!nameCopy)
    {
      v12 = +[NSUndoManager shared];
      ic_isUndoingOrRedoing = [v12 ic_isUndoingOrRedoing];

      if (ic_isUndoingOrRedoing)
      {
        nameCopy = 0;
      }

      else
      {
        v14 = +[NSBundle mainBundle];
        nameCopy = [v14 localizedStringForKey:@"Delete Note" value:&stru_1000F6F48 table:0];
      }
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:ICNoteWillBeDeletedNotification object:noteCopy];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    attachments = [noteCopy attachments];
    v17 = [attachments copy];

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
    inlineAttachments = [noteCopy inlineAttachments];
    v23 = [inlineAttachments copy];

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

    [noteCopy markForDeletion];
    if ([noteCopy requiresLegacyTombstoneAfterDeletion])
    {
      [ICLegacyTombstone addLegacyTombstoneForNote:noteCopy];
    }

    v28 = +[NSUndoManager shared];
    isUndoing = [v28 isUndoing];

    if (actionCopy && (isUndoing & 1) == 0)
    {
      [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:actionCopy oldObject:noteCopy newObject:0];
    }

    v30 = +[NSUndoManager shared];
    v31 = [v30 prepareWithInvocationTarget:self];
    [v31 undoablyUndeleteNote:noteCopy moveAction:actionCopy actionName:nameCopy];

    if (nameCopy)
    {
      v32 = +[NSUndoManager shared];
      [v32 setActionName:nameCopy];
    }
  }
}

- (void)sendNotificationBeforeDeletingOrUndeletingNotes:(id)notes
{
  notesCopy = notes;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ICNoteContextWillUndoablyDeleteOrUndeleteNotes" object:notesCopy];
}

- (void)sendNotificationAfterDeletingOrUndeletingNotes
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"ICNoteContextDidUndoablyDeleteOrUndeleteNotes" object:0];
}

- (void)undoablyUndeleteNote:(id)note moveAction:(id)action actionName:(id)name
{
  noteCopy = note;
  actionCopy = action;
  nameCopy = name;
  v10 = +[NSUndoManager shared];
  ic_isUndoingOrRedoing = [v10 ic_isUndoingOrRedoing];

  if (ic_isUndoingOrRedoing)
  {
    v12 = 0;
  }

  else
  {
    if (nameCopy)
    {
      goto LABEL_6;
    }

    [ICAssert handleFailedAssertWithCondition:"actionName" functionName:"[ICNoteContext(UndoSupport) undoablyUndeleteNote:moveAction:actionName:]" simulateCrash:1 showAlert:0 format:@"actionName cannot be nil"];
    nameCopy = +[NSBundle mainBundle];
    v12 = [nameCopy localizedStringForKey:@"Delete Note" value:&stru_1000F6F48 table:0];
  }

  nameCopy = v12;
LABEL_6:
  [noteCopy unmarkForDeletion];
  legacyContentHashAtImport = [noteCopy legacyContentHashAtImport];

  if (legacyContentHashAtImport)
  {
    [ICLegacyTombstone removeLegacyTombstoneForNote:noteCopy];
  }

  v14 = +[NSUndoManager shared];
  isUndoing = [v14 isUndoing];

  if (actionCopy && (isUndoing & 1) == 0)
  {
    [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:actionCopy oldObject:0 newObject:noteCopy];
  }

  v16 = +[NSUndoManager shared];
  v17 = [v16 prepareWithInvocationTarget:self];
  [v17 undoablyDeleteNote:noteCopy moveAction:actionCopy actionName:nameCopy];

  if (nameCopy)
  {
    v18 = +[NSUndoManager shared];
    [v18 setActionName:nameCopy];
  }
}

- (void)undoablyTrashOrDeleteNotes:(id)notes
{
  notesCopy = notes;
  if ([ICNote containsUndeletableNotes:notesCopy])
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

    [(ICNoteContext *)self sendNotificationBeforeDeletingOrUndeletingNotes:notesCopy];
    firstObject = [notesCopy firstObject];
    folder = [firstObject folder];
    LODWORD(v6) = [folder isTrashFolder];
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
    v5 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v13, [notesCopy count]);

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = notesCopy;
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
          folder2 = [v19 folder];
          sharedRootObject = [v19 sharedRootObject];
          [(ICNoteContext *)self undoablyPersistDeleteEventForObject:v19 fromParentObject:folder2 sharedRootObject:sharedRootObject];

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

- (void)undoablyPersistDeleteEventForObject:(id)object fromParentObject:(id)parentObject sharedRootObject:(id)rootObject
{
  objectCopy = object;
  parentObjectCopy = parentObject;
  rootObjectCopy = rootObject;
  v10 = +[NSUndoManager shared];
  isUndoing = [v10 isUndoing];

  if ((isUndoing & 1) == 0)
  {
    v12 = [rootObjectCopy persistDeleteActivityEventForObject:objectCopy fromParentObject:parentObjectCopy];
    v13 = +[NSUndoManager shared];
    [v13 registerUndoForCloudSyncingObjectActivityEvent:v12 cloudSyncingObject:rootObjectCopy];
  }

  v14 = +[NSUndoManager shared];
  v15 = [v14 prepareWithInvocationTarget:self];
  [v15 undoablyPersistDeleteEventForObject:objectCopy fromParentObject:parentObjectCopy sharedRootObject:rootObjectCopy];
}

- (id)addNewNoteByCopyingNote:(id)note toFolder:(id)folder
{
  noteCopy = note;
  folderCopy = folder;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([noteCopy isPasswordProtected])
  {
    v7 = noteCopy;
    if ([v7 isAuthenticated])
    {
      v8 = [ICNote duplicateNote:v7 intoFolder:folderCopy isPasswordProtected:1 removeOriginalNote:0];
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
    v8 = [ICNote newEmptyNoteInFolder:folderCopy];
    if (([noteCopy copyValuesToNote:v8] & 1) == 0)
    {
      [ICNote deleteNote:v8];
    }
  }

  [v8 updateChangeCountWithReason:@"Copied note"];

  return v8;
}

- (void)copyNotes:(id)notes toFolder:(id)folder
{
  notesCopy = notes;
  folderCopy = folder;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [notesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(notesCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = ICCheckedProtocolCast();
        if (v13)
        {
          v14 = [(ICNoteContext *)self addNewNoteByCopyingNote:v13 toFolder:folderCopy];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [notesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)copyFolder:(id)folder toFolder:(id)toFolder
{
  folderCopy = folder;
  toFolderCopy = toFolder;
  v8 = toFolderCopy;
  if (folderCopy)
  {
    if (toFolderCopy)
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
  if (folderCopy == v8)
  {
    [ICAssert handleFailedAssertWithCondition:"sourceFolder != targetFolder" functionName:"[ICNoteContext(UndoSupport) copyFolder:toFolder:]" simulateCrash:1 showAlert:0 format:@"Should not copy to the same folder %@", v8];
  }

  else if (folderCopy && v8)
  {
    titleForCopying = [folderCopy titleForCopying];
    [v8 setTitle:titleForCopying];

    notesForCopying = [folderCopy notesForCopying];
    [(ICNoteContext *)self copyNotes:notesForCopying toFolder:v8];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = folderCopy;
    subfoldersForCopying = [folderCopy subfoldersForCopying];
    v12 = [subfoldersForCopying countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(subfoldersForCopying);
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
        v13 = [subfoldersForCopying countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    folderCopy = v19;
  }
}

- (id)adjustedDestinationFolderForNoteContainer:(id)container sourceFolder:(id)folder
{
  containerCopy = container;
  noteContainerAccount = [containerCopy noteContainerAccount];
  objc_opt_class();
  v6 = ICDynamicCast();

  if ([v6 isSmartFolder] || !v6)
  {
    defaultFolder = [noteContainerAccount defaultFolder];
  }

  else
  {
    defaultFolder = v6;
  }

  v8 = defaultFolder;

  return v8;
}

- (void)undoablyMoveNotes:(id)notes toNoteContainer:(id)container actionName:(id)name workerContext:(id)context completionHandler:(id)handler
{
  notesCopy = notes;
  containerCopy = container;
  nameCopy = name;
  contextCopy = context;
  handlerCopy = handler;
  v31 = nameCopy;
  if (!nameCopy)
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Move %lu Notes" value:&stru_1000F6F48 table:0];
    v31 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v16, [notesCopy count]);
  }

  v30 = [NSManagedObject ic_permanentObjectIDsFromObjects:notesCopy];
  v17 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [notesCopy count]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = notesCopy;
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
        folder = [v22 folder];
        v24 = [(ICNoteContext *)self adjustedDestinationFolderForNoteContainer:containerCopy sourceFolder:folder];

        objectID = [v24 objectID];
        objectID2 = [v22 objectID];
        [v17 setObject:objectID forKeyedSubscript:objectID2];
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
  managedObjectContext = [containerCopy managedObjectContext];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001CAE8;
  v32[3] = &unk_1000F2A68;
  v27 = handlerCopy;
  v33 = v27;
  v34 = v35;
  [(ICNoteContext *)self undoablyMoveNoteIDs:v30 toFolderIDs:v17 actionName:v31 workerContext:contextCopy completionHandler:v32];

  _Block_object_dispose(v35, 8);
}

- (void)undoablyMoveNotes:(id)notes toVirtualSmartFolder:(id)folder actionName:(id)name workerContext:(id)context completionHandler:(id)handler
{
  notesCopy = notes;
  folderCopy = folder;
  nameCopy = name;
  contextCopy = context;
  handlerCopy = handler;
  if ([notesCopy count])
  {
    accountObjectID = [folderCopy accountObjectID];
    if (accountObjectID)
    {
      managedObjectContext = [(ICNoteContext *)self managedObjectContext];
      accountObjectID2 = [folderCopy accountObjectID];
      account = [managedObjectContext objectWithID:accountObjectID2];
    }

    else
    {
      managedObjectContext = [notesCopy firstObject];
      account = [managedObjectContext account];
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001CDAC;
    v27[3] = &unk_1000F2A90;
    v28 = account;
    v21 = account;
    v22 = [notesCopy ic_objectsPassingTest:v27];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001CE14;
    v23[3] = &unk_1000F2AB8;
    v23[4] = self;
    v24 = notesCopy;
    v25 = folderCopy;
    v26 = handlerCopy;
    [(ICNoteContext *)self undoablyMoveNotes:v22 toNoteContainer:v21 actionName:nameCopy workerContext:contextCopy completionHandler:v23];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, notesCopy);
  }
}

- (void)undoablyMoveNotes:(id)notes toVirtualSmartFolderType:(id)type completionHandler:(id)handler
{
  notesCopy = notes;
  typeCopy = type;
  handlerCopy = handler;
  if ([typeCopy isEqual:ICVirtualSmartFolderItemIdentifierTypeSystemPaper])
  {
    [(ICNoteContext *)self undoablyMarkNotes:notesCopy asSystemPaper:1];
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

LABEL_9:
    handlerCopy[2](handlerCopy, notesCopy);
    goto LABEL_10;
  }

  if ([typeCopy isEqual:ICVirtualSmartFolderItemIdentifierTypeCallNotes])
  {
    [(ICNoteContext *)self undoablyMarkNotes:notesCopy asCallNotes:1];
    if (handlerCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ([typeCopy isEqual:ICVirtualSmartFolderItemIdentifierTypeMathNotes])
    {
      [(ICNoteContext *)self undoablyMarkNotes:notesCopy asMathNotes:1];
      if (!handlerCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICNoteContext(UndoSupport) undoablyMoveNotes:toVirtualSmartFolderType:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Cannot move notes into Virtual Smart Folder"];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, &__NSArray0__struct);
    }
  }

LABEL_10:
}

- (void)undoablyMarkNotes:(id)notes asSystemPaper:(BOOL)paper
{
  paperCopy = paper;
  notesCopy = notes;
  managedObjectContext = [(ICNoteContext *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D0C8;
  v11[3] = &unk_1000F2AE0;
  v14 = paperCopy;
  v12 = notesCopy;
  selfCopy = self;
  v8 = notesCopy;
  [managedObjectContext performBlockAndWait:v11];

  v9 = +[NSUndoManager shared];
  v10 = [v9 prepareWithInvocationTarget:self];
  [v10 undoablyMarkNotes:v8 asSystemPaper:!paperCopy];
}

- (void)undoablyMarkNotes:(id)notes asMathNotes:(BOOL)mathNotes
{
  mathNotesCopy = mathNotes;
  notesCopy = notes;
  managedObjectContext = [(ICNoteContext *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D2C8;
  v11[3] = &unk_1000F2AE0;
  v14 = mathNotesCopy;
  v12 = notesCopy;
  selfCopy = self;
  v8 = notesCopy;
  [managedObjectContext performBlockAndWait:v11];

  v9 = +[NSUndoManager shared];
  v10 = [v9 prepareWithInvocationTarget:self];
  [v10 undoablyMarkNotes:v8 asMathNotes:!mathNotesCopy];
}

- (void)undoablyMarkNotes:(id)notes asCallNotes:(BOOL)callNotes
{
  callNotesCopy = callNotes;
  notesCopy = notes;
  managedObjectContext = [(ICNoteContext *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D4C8;
  v11[3] = &unk_1000F2AE0;
  v14 = callNotesCopy;
  v12 = notesCopy;
  selfCopy = self;
  v8 = notesCopy;
  [managedObjectContext performBlockAndWait:v11];

  v9 = +[NSUndoManager shared];
  v10 = [v9 prepareWithInvocationTarget:self];
  [v10 undoablyMarkNotes:v8 asCallNotes:!callNotesCopy];
}

- (id)undoablyAddFolderToAccount:(id)account moveAction:(id)action actionName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v9 = nameCopy;
    actionCopy = action;
    accountCopy = account;
  }

  else
  {
    actionCopy2 = action;
    accountCopy2 = account;
    v14 = +[NSBundle mainBundle];
    v9 = [v14 localizedStringForKey:@"Add Folder" value:&stru_1000F6F48 table:0];
  }

  v15 = [ICFolder newFolderInAccount:account];

  v16 = +[NSUndoManager shared];
  v17 = [v16 prepareWithInvocationTarget:self];
  [v17 undoablyDeleteFolder:v15 markNotesForDeletion:1 moveAction:action actionName:v9];

  v18 = +[NSUndoManager shared];
  [v18 setActionName:v9];

  return v15;
}

- (id)undoablyCopyFolder:(id)folder toAccount:(id)account copyingNotes:(BOOL)notes moveAction:(id)action actionName:(id)name
{
  notesCopy = notes;
  folderCopy = folder;
  accountCopy = account;
  actionCopy = action;
  nameCopy = name;
  if (!nameCopy)
  {
    v16 = +[NSBundle mainBundle];
    nameCopy = [v16 localizedStringForKey:@"Copy Folder" value:&stru_1000F6F48 table:0];
  }

  v17 = [(ICNoteContext *)self undoablyAddFolderToAccount:accountCopy moveAction:actionCopy actionName:nameCopy];
  customNoteSortType = [folderCopy customNoteSortType];
  [v17 setCustomNoteSortType:customNoteSortType];

  objc_opt_class();
  v19 = ICDynamicCast();
  smartFolderQueryJSON = [v19 smartFolderQueryJSON];
  [v17 setSmartFolderQueryJSON:smartFolderQueryJSON];

  if (notesCopy)
  {
    [(ICNoteContext *)self copyFolder:folderCopy toFolder:v17];
  }

  [v17 updateChangeCountRecursivelyWithReason:@"Copied folder"];

  return v17;
}

- (void)undoablyDeleteUnusedTagsForSmartFolder:(id)folder
{
  folderCopy = folder;
  [folderCopy managedObjectContext];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10001DF94;
  v12 = &unk_1000F23B8;
  v14 = v13 = folderCopy;
  v5 = v14;
  v6 = folderCopy;
  [v5 performBlockAndWait:&v9];
  v7 = [NSUndoManager shared:v9];
  v8 = [v7 prepareWithInvocationTarget:self];
  [v8 undoablyUndeleteUnusedTagsForSmartFolder:v6];
}

- (void)undoablyUndeleteUnusedTagsForSmartFolder:(id)folder
{
  folderCopy = folder;
  [folderCopy managedObjectContext];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10001E154;
  v12 = &unk_1000F23B8;
  v14 = v13 = folderCopy;
  v5 = v14;
  v6 = folderCopy;
  [v5 performBlockAndWait:&v9];
  v7 = [NSUndoManager shared:v9];
  v8 = [v7 prepareWithInvocationTarget:self];
  [v8 undoablyDeleteUnusedTagsForSmartFolder:v6];
}

- (void)markNoteAndAttachmentsForDeletion:(id)deletion
{
  deletionCopy = deletion;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachments = [deletionCopy attachments];
  v5 = [attachments copy];

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

  [deletionCopy markForDeletion];
  if ([deletionCopy requiresLegacyTombstoneAfterDeletion])
  {
    [ICLegacyTombstone addLegacyTombstoneForNote:deletionCopy];
  }
}

- (void)unmarkNoteAndAttachmentsForDeletion:(id)deletion
{
  deletionCopy = deletion;
  [deletionCopy unmarkForDeletion];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = deletionCopy;
  attachments = [deletionCopy attachments];
  v5 = [attachments copy];

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
        media = [v11 media];
        [media unmarkForDeletion];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        previewImages = [v11 previewImages];
        v14 = [previewImages countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(previewImages);
              }

              [*(*(&v21 + 1) + 8 * j) unmarkForDeletion];
            }

            v15 = [previewImages countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v15);
        }

        v18 = [v11 ic_postNotificationOnMainThreadAfterSaveWithName:v9];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  legacyContentHashAtImport = [v20 legacyContentHashAtImport];

  if (legacyContentHashAtImport)
  {
    [ICLegacyTombstone removeLegacyTombstoneForNote:v20];
  }
}

- (void)undoablyProcessNoteIDs:(id)ds progressStringBlock:(id)block workerContext:(id)context processNoteBlock:(id)noteBlock completionHandler:(id)handler
{
  dsCopy = ds;
  blockCopy = block;
  contextCopy = context;
  noteBlockCopy = noteBlock;
  handlerCopy = handler;
  if (!contextCopy)
  {
    contextCopy = [(ICNoteContext *)self snapshotManagedObjectContext];
  }

  v17 = objc_alloc_init(ICLongRunningTaskController);
  [v17 setProgressStringBlock:blockCopy];
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
  v18 = dsCopy;
  v26 = v18;
  v19 = contextCopy;
  v27 = v19;
  v20 = noteBlockCopy;
  v28 = v20;
  v29 = v30;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001EBD4;
  v22[3] = &unk_1000F2B58;
  v21 = handlerCopy;
  v23 = v21;
  v24 = v30;
  [v17 startTask:v25 completionBlock:v22];

  _Block_object_dispose(v30, 8);
}

- (void)undoablyUnmoveNoteIDs:(id)ds toFolderIDs:(id)iDs originalToCopyNoteIDs:(id)noteIDs actionName:(id)name noteToFolderIDsForRedo:(id)redo workerContext:(id)context
{
  iDsCopy = iDs;
  noteIDsCopy = noteIDs;
  contextCopy = context;
  redoCopy = redo;
  nameCopy = name;
  dsCopy = ds;
  v20 = +[NSUndoManager shared];
  v21 = [v20 prepareWithInvocationTarget:self];
  [v21 undoablyMoveNoteIDs:dsCopy toFolderIDs:redoCopy actionName:nameCopy workerContext:contextCopy completionHandler:0];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001EE14;
  v24[3] = &unk_1000F2BC0;
  v25 = iDsCopy;
  v26 = noteIDsCopy;
  selfCopy = self;
  v22 = noteIDsCopy;
  v23 = iDsCopy;
  [(ICNoteContext *)self undoablyProcessNoteIDs:dsCopy progressStringBlock:&stru_1000F2B98 workerContext:contextCopy processNoteBlock:v24 completionHandler:0];
}

- (void)undoablyMoveNoteIDs:(id)ds toFolderIDs:(id)iDs actionName:(id)name workerContext:(id)context completionHandler:(id)handler
{
  iDsCopy = iDs;
  nameCopy = name;
  contextCopy = context;
  handlerCopy = handler;
  dsCopy = ds;
  v16 = +[NSUndoManager shared];
  [v16 beginUndoGrouping];

  v17 = +[NSMutableDictionary dictionary];
  v18 = +[NSMutableDictionary dictionary];
  v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10001F400;
  v36[3] = &unk_1000F2C08;
  v37 = iDsCopy;
  v38 = v17;
  v39 = v18;
  selfCopy = self;
  v41 = v19;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001F840;
  v28[3] = &unk_1000F2C30;
  v28[4] = self;
  v29 = v38;
  v30 = v39;
  v31 = nameCopy;
  v32 = v37;
  v33 = contextCopy;
  v34 = v41;
  v35 = handlerCopy;
  v20 = v41;
  v21 = handlerCopy;
  v22 = contextCopy;
  v23 = v37;
  v24 = nameCopy;
  v25 = v39;
  v26 = v38;
  [(ICNoteContext *)self undoablyProcessNoteIDs:dsCopy progressStringBlock:&stru_1000F2BE0 workerContext:v22 processNoteBlock:v36 completionHandler:v28];
}

- (void)postNotificationsForUntrashingOrUndeletingNoteIDs:(id)ds
{
  dsCopy = ds;
  managedObjectContext = [(ICNoteContext *)self managedObjectContext];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = dsCopy;
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

        v12 = [ICNote ic_existingObjectWithID:*(*(&v18 + 1) + 8 * v11) context:managedObjectContext];
        markedForDeletion = [v12 markedForDeletion];
        v14 = +[NSNotificationCenter defaultCenter];
        v15 = v14;
        if (markedForDeletion)
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

- (void)postNotificationsForTrashingOrDeletingNoteIDs:(id)ds
{
  dsCopy = ds;
  managedObjectContext = [(ICNoteContext *)self managedObjectContext];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = dsCopy;
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

        v12 = [ICNote ic_existingObjectWithID:*(*(&v19 + 1) + 8 * v11) context:managedObjectContext];
        folder = [v12 folder];
        isTrashFolder = [folder isTrashFolder];

        v15 = +[NSNotificationCenter defaultCenter];
        v16 = v15;
        if (isTrashFolder)
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