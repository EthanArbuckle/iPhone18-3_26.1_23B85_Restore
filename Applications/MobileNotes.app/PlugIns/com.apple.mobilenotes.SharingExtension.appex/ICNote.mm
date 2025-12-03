@interface ICNote
+ (id)undoablyDuplicateNotes:(id)notes;
- (id)undoablyCopyAndDeleteFromFolder:(id)folder destinationFolder:(id)destinationFolder moveAction:(id)action actionName:(id)name;
- (id)undoablyDuplicate;
- (id)undoablyTrashOrDeleteWithMoveAction:(id)action actionName:(id)name;
- (void)undoablyDeleteUnusedHashtags;
- (void)undoablySetFolder:(id)folder;
@end

@implementation ICNote

- (void)undoablySetFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[NSUndoManager shared];
  v6 = [v5 prepareWithInvocationTarget:self];
  folder = [(ICNote *)self folder];
  [v6 undoablySetFolder:folder];

  v8 = +[NSUndoManager shared];
  LOBYTE(v6) = [v8 ic_isUndoingOrRedoing];

  if ((v6 & 1) == 0)
  {
    isTrashFolder = [folderCopy isTrashFolder];
    if (isTrashFolder & 1) != 0 || (-[ICNote folder](self, "folder"), v8 = objc_claimAutoreleasedReturnValue(), ([v8 isTrashFolder]))
    {
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"Trash Note" value:&stru_1000F6F48 table:0];

      if (isTrashFolder)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = +[NSBundle mainBundle];
      v11 = [v12 localizedStringForKey:@"Move Note" value:&stru_1000F6F48 table:0];
    }

LABEL_8:
    v13 = +[NSUndoManager shared];
    [v13 setActionName:v11];
  }

  folder2 = [(ICNote *)self folder];
  isTrashFolder2 = [folder2 isTrashFolder];

  if (isTrashFolder2)
  {
    v16 = &ICNoteWillMoveFromRecentlyDeletedFolderNotification;
  }

  else
  {
    if (![folderCopy isTrashFolder])
    {
      goto LABEL_14;
    }

    [(ICNote *)self undoablyDeleteUnusedHashtags];
    [(ICNote *)self notifyAttachmentsNoteWillMoveToRecentlyDeletedFolder];
    v16 = &ICNoteWillMoveToRecentlyDeletedFolderNotification;
  }

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 postNotificationName:*v16 object:self];

LABEL_14:
  if ([folderCopy isSmartFolder])
  {
    v18 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3C60(v18);
    }

    account = [folderCopy account];
    defaultFolder = [account defaultFolder];

    folderCopy = defaultFolder;
  }

  v21 = os_log_create("com.apple.notes", "Move");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B3CA4(folderCopy, self, v21);
  }

  v22 = [[ICCloudSyncingObjectMoveAction alloc] initWithNote:self toFolder:folderCopy isCopy:0];
  [(ICNote *)self setFolder:folderCopy];
  v23 = +[NSDate now];
  [(ICNote *)self setFolderModificationDate:v23];

  [(ICNote *)self updateChangeCountWithReason:@"Set folder"];
  v24 = +[NSUndoManager shared];
  isUndoing = [v24 isUndoing];

  if ((isUndoing & 1) == 0 && v22)
  {
    [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:v22 oldObject:self newObject:self];
  }
}

+ (id)undoablyDuplicateNotes:(id)notes
{
  notesCopy = notes;
  if ([notesCopy count] && (+[ICNote containsUnduplicatableNotes:](ICNote, "containsUnduplicatableNotes:", notesCopy) & 1) == 0)
  {
    v5 = +[ICNoteContext sharedContext];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Duplicate Notes" value:&stru_1000F6F48 table:0];
    v4 = [v5 undoablyCopyNotes:notesCopy toFolder:0 actionName:v7];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (id)undoablyDuplicate
{
  if ([(ICNote *)self isDuplicatable])
  {
    v3 = [ICCloudSyncingObjectMoveAction alloc];
    folder = [(ICNote *)self folder];
    v5 = [(ICCloudSyncingObjectMoveAction *)v3 initWithNote:self toFolder:folder isCopy:1];

    v6 = +[ICNoteContext sharedContext];
    folder2 = [(ICNote *)self folder];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Duplicate Note" value:&stru_1000F6F48 table:0];
    v10 = [v6 undoablyCopyNote:self toFolder:folder2 moveAction:v5 actionName:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)undoablyTrashOrDeleteWithMoveAction:(id)action actionName:(id)name
{
  actionCopy = action;
  nameCopy = name;
  if (![(ICNote *)self isSharedViaICloud]|| ([(ICNote *)self isOwnedByCurrentUser]& 1) != 0)
  {
    if ((-[ICNote isEmpty](self, "isEmpty") & 1) != 0 || (-[ICNote folder](self, "folder"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isTrashFolder], v8, v9))
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 postNotificationName:ICNoteWillBeDeletedNotification object:self];

      [ICNote deleteNote:self];
    }

    else
    {
      v14 = os_log_create("com.apple.notes", "Move");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B3E60(self);
      }

      account = [(ICNote *)self account];
      trashFolder = [account trashFolder];
      [(ICNote *)self undoablySetFolder:trashFolder];
    }

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  if ([(ICNote *)self isSharedRootObject])
  {
    v11 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3D5C(self);
    }

    account2 = [(ICNote *)self account];
    trashFolder2 = [account2 trashFolder];
    [(ICNote *)self setFolder:trashFolder2];

    [(ICNote *)self markForDeletion];
    goto LABEL_13;
  }

  folder = [(ICNote *)self folder];
  account3 = [(ICNote *)self account];
  trashFolder3 = [account3 trashFolder];
  v17 = [(ICNote *)self undoablyCopyAndDeleteFromFolder:folder destinationFolder:trashFolder3 moveAction:actionCopy actionName:nameCopy];

LABEL_14:

  return v17;
}

- (id)undoablyCopyAndDeleteFromFolder:(id)folder destinationFolder:(id)destinationFolder moveAction:(id)action actionName:(id)name
{
  folderCopy = folder;
  destinationFolderCopy = destinationFolder;
  actionCopy = action;
  nameCopy = name;
  v14 = +[NSUndoManager shared];
  v15 = +[ICNoteContext sharedContext];
  v16 = [v15 addNewNoteByCopyingNote:self toFolder:destinationFolderCopy];

  if (v16)
  {
    [ICInlineAttachment changeLinkDestinationFromNote:self toNote:v16];
    [v16 unmarkForDeletion];
    [(ICNote *)self markForDeletion];
    isUndoing = [v14 isUndoing];
    if (actionCopy && (isUndoing & 1) == 0)
    {
      [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:actionCopy oldObject:self newObject:v16];
    }

    v18 = [v14 prepareWithInvocationTarget:v16];
    v19 = [v18 undoablyCopyAndDeleteFromFolder:destinationFolderCopy destinationFolder:folderCopy moveAction:actionCopy actionName:nameCopy];

    if (nameCopy)
    {
      [v14 setActionName:nameCopy];
    }

    v20 = v16;
  }

  return v16;
}

- (void)undoablyDeleteUnusedHashtags
{
  account = [(ICNote *)self account];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inlineAttachments = [(ICNote *)self inlineAttachments];
  v5 = [inlineAttachments copy];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isHashtagAttachment])
        {
          tokenContentIdentifier = [v10 tokenContentIdentifier];
          if ([ICInlineAttachment countOfNonTrashFolderVisibleInlineAttachmentsForHashtagStandardizedContent:tokenContentIdentifier account:account]<= 1)
          {
            [ICHashtag undoablyMarkForDeletion:1 standardizedContent:tokenContentIdentifier account:account];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end