@interface ICMoveModernNotesToLegacyAccountController
+ (id)alertForUnsupportedAttachmentsDestinationStore:(id)store continueHandler:(id)handler;
+ (id)localizedAlertMessageForCopyingNotesForAccount:(id)account;
+ (id)localizedAlertMessageForMovingNotesForAccount:(id)account;
+ (id)localizedAlertTitle;
- (ICMoveModernNotesToLegacyAccountController)init;
- (void)addOperationToCopyOrMoveNotes:(id)notes toFolder:(id)folder copyOnly:(BOOL)only;
- (void)asyncFinishCopyOnly:(BOOL)only;
- (void)cancel;
- (void)finishAfterCopyingNotesCopyOnly:(BOOL)only;
- (void)waitUntilFinishedWithDispatchTimeout:(unint64_t)timeout;
@end

@implementation ICMoveModernNotesToLegacyAccountController

- (ICMoveModernNotesToLegacyAccountController)init
{
  v9.receiver = self;
  v9.super_class = ICMoveModernNotesToLegacyAccountController;
  v2 = [(ICMoveModernNotesToLegacyAccountController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    [(ICMoveModernNotesToLegacyAccountController *)v2 setOperationQueue:v3];

    operationQueue = [(ICMoveModernNotesToLegacyAccountController *)v2 operationQueue];
    [operationQueue setName:@"com.apple.notes.move-modern-notes-to-HTML-account-queue"];

    operationQueue2 = [(ICMoveModernNotesToLegacyAccountController *)v2 operationQueue];
    [operationQueue2 setMaxConcurrentOperationCount:1];

    v6 = +[NSMutableArray array];
    [(ICMoveModernNotesToLegacyAccountController *)v2 setNotesToDelete:v6];

    v7 = +[NSMutableArray array];
    [(ICMoveModernNotesToLegacyAccountController *)v2 setCreatedLegacyNotes:v7];
  }

  return v2;
}

- (void)addOperationToCopyOrMoveNotes:(id)notes toFolder:(id)folder copyOnly:(BOOL)only
{
  onlyCopy = only;
  notesCopy = notes;
  folderCopy = folder;
  v10 = +[NotesApp sharedNotesApp];
  noteContext = [v10 noteContext];

  v12 = [notesCopy count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v24 = v27;
    v25 = notesCopy;
    do
    {
      v15 = v14 + 5;
      if (v14 + 5 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v14 + 5;
      }

      v17 = [notesCopy subarrayWithRange:{v14, v16 - v14, v24}];
      v18 = [ICCopyModernNotesToLegacyAccountOperation alloc];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v27[0] = sub_1001272E0;
      v27[1] = &unk_10064AA38;
      v28 = onlyCopy;
      v27[2] = self;
      v19 = onlyCopy;
      v20 = [v18 initWithNotes:v17 toFolder:folderCopy legacyContext:noteContext didCopyBlock:v26];
      [(ICMoveModernNotesToLegacyAccountController *)self operationQueue];
      selfCopy = self;
      v23 = v22 = noteContext;
      [v23 addOperation:v20];

      noteContext = v22;
      self = selfCopy;

      onlyCopy = v19;
      notesCopy = v25;
      v14 = v16;
    }

    while (v15 < v13);
  }
}

- (void)cancel
{
  operationQueue = [(ICMoveModernNotesToLegacyAccountController *)self operationQueue];
  [operationQueue cancelAllOperations];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  createdLegacyNotes = [(ICMoveModernNotesToLegacyAccountController *)self createdLegacyNotes];
  v5 = [createdLegacyNotes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(createdLegacyNotes);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 isMarkedForDeletion] & 1) == 0)
        {
          [v9 markForDeletion];
        }
      }

      v6 = [createdLegacyNotes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)waitUntilFinishedWithDispatchTimeout:(unint64_t)timeout
{
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(-2, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012756C;
  v8[3] = &unk_100645BA0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);

  dispatch_semaphore_wait(v7, timeout);
}

- (void)asyncFinishCopyOnly:(BOOL)only
{
  v5 = dispatch_get_global_queue(-2, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100127658;
  v6[3] = &unk_100646080;
  v6[4] = self;
  onlyCopy = only;
  dispatch_async(v5, v6);
}

- (void)finishAfterCopyingNotesCopyOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = +[ICAppDelegate sharedInstance];
  undoManager = [v5 undoManager];

  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (onlyCopy)
  {
    v9 = @"Copy %lu Notes";
  }

  else
  {
    v9 = @"Move %lu Notes";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_100661CF0 table:0];
  createdLegacyNotes = [(ICMoveModernNotesToLegacyAccountController *)self createdLegacyNotes];
  v12 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v10, [createdLegacyNotes count]);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  notesToDelete = [(ICMoveModernNotesToLegacyAccountController *)self notesToDelete];
  v14 = [notesToDelete countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(notesToDelete);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        managedObjectContext = [v18 managedObjectContext];
        if (managedObjectContext)
        {
          v20 = managedObjectContext;
          markedForDeletion = [v18 markedForDeletion];

          if ((markedForDeletion & 1) == 0)
          {
            [ICNote deleteNote:v18];
          }
        }
      }

      v15 = [notesToDelete countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v22 = +[ICNoteContext sharedContext];
  [v22 save];

  v23 = +[NotesApp sharedNotesApp];
  noteContext = [v23 noteContext];
  managedObjectContext2 = [noteContext managedObjectContext];
  [managedObjectContext2 ic_save];
}

+ (id)localizedAlertTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Unsupported Attachments" value:&stru_100661CF0 table:0];

  return v3;
}

+ (id)localizedAlertMessageForMovingNotesForAccount:(id)account
{
  supportsAttachments = [account supportsAttachments];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (supportsAttachments)
  {
    v6 = @"You’re moving notes to an account that doesn’t support some attachments. If you continue, unsupported attachments may look different.";
  }

  else
  {
    v6 = @"You’re moving notes to an account that doesn’t support attachments. If you continue, all attachments will be removed.";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100661CF0 table:0];

  return v7;
}

+ (id)localizedAlertMessageForCopyingNotesForAccount:(id)account
{
  supportsAttachments = [account supportsAttachments];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (supportsAttachments)
  {
    v6 = @"You’re copying notes to an account that doesn’t support some attachments. If you continue, unsupported attachments may look different.";
  }

  else
  {
    v6 = @"You’re moving notes to an account that doesn’t support attachments. If you continue, all attachments will be removed.";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100661CF0 table:0];

  return v7;
}

+ (id)alertForUnsupportedAttachmentsDestinationStore:(id)store continueHandler:(id)handler
{
  handlerCopy = handler;
  storeCopy = store;
  v7 = +[ICMoveModernNotesToLegacyAccountController localizedAlertTitle];
  account = [storeCopy account];

  v9 = [ICMoveModernNotesToLegacyAccountController localizedAlertMessageForMovingNotesForAccount:account];

  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Continue" value:&stru_100661CF0 table:0];
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:handlerCopy];

  [v10 addAction:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];
  v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
  [v10 addAction:v16];

  if (+[UIDevice ic_isVision])
  {
    v17 = -2;
  }

  else
  {
    v17 = 7;
  }

  [v10 setModalPresentationStyle:v17];

  return v10;
}

@end