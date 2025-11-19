@interface ICMoveModernNotesToLegacyAccountController
+ (id)alertForUnsupportedAttachmentsDestinationStore:(id)a3 continueHandler:(id)a4;
+ (id)localizedAlertMessageForCopyingNotesForAccount:(id)a3;
+ (id)localizedAlertMessageForMovingNotesForAccount:(id)a3;
+ (id)localizedAlertTitle;
- (ICMoveModernNotesToLegacyAccountController)init;
- (void)addOperationToCopyOrMoveNotes:(id)a3 toFolder:(id)a4 copyOnly:(BOOL)a5;
- (void)asyncFinishCopyOnly:(BOOL)a3;
- (void)cancel;
- (void)finishAfterCopyingNotesCopyOnly:(BOOL)a3;
- (void)waitUntilFinishedWithDispatchTimeout:(unint64_t)a3;
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

    v4 = [(ICMoveModernNotesToLegacyAccountController *)v2 operationQueue];
    [v4 setName:@"com.apple.notes.move-modern-notes-to-HTML-account-queue"];

    v5 = [(ICMoveModernNotesToLegacyAccountController *)v2 operationQueue];
    [v5 setMaxConcurrentOperationCount:1];

    v6 = +[NSMutableArray array];
    [(ICMoveModernNotesToLegacyAccountController *)v2 setNotesToDelete:v6];

    v7 = +[NSMutableArray array];
    [(ICMoveModernNotesToLegacyAccountController *)v2 setCreatedLegacyNotes:v7];
  }

  return v2;
}

- (void)addOperationToCopyOrMoveNotes:(id)a3 toFolder:(id)a4 copyOnly:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = +[NotesApp sharedNotesApp];
  v11 = [v10 noteContext];

  v12 = [v8 count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v24 = v27;
    v25 = v8;
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

      v17 = [v8 subarrayWithRange:{v14, v16 - v14, v24}];
      v18 = [ICCopyModernNotesToLegacyAccountOperation alloc];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v27[0] = sub_1001272E0;
      v27[1] = &unk_10064AA38;
      v28 = v5;
      v27[2] = self;
      v19 = v5;
      v20 = [v18 initWithNotes:v17 toFolder:v9 legacyContext:v11 didCopyBlock:v26];
      [(ICMoveModernNotesToLegacyAccountController *)self operationQueue];
      v21 = self;
      v23 = v22 = v11;
      [v23 addOperation:v20];

      v11 = v22;
      self = v21;

      v5 = v19;
      v8 = v25;
      v14 = v16;
    }

    while (v15 < v13);
  }
}

- (void)cancel
{
  v3 = [(ICMoveModernNotesToLegacyAccountController *)self operationQueue];
  [v3 cancelAllOperations];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(ICMoveModernNotesToLegacyAccountController *)self createdLegacyNotes];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 isMarkedForDeletion] & 1) == 0)
        {
          [v9 markForDeletion];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)waitUntilFinishedWithDispatchTimeout:(unint64_t)a3
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

  dispatch_semaphore_wait(v7, a3);
}

- (void)asyncFinishCopyOnly:(BOOL)a3
{
  v5 = dispatch_get_global_queue(-2, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100127658;
  v6[3] = &unk_100646080;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)finishAfterCopyingNotesCopyOnly:(BOOL)a3
{
  v3 = a3;
  v5 = +[ICAppDelegate sharedInstance];
  v6 = [v5 undoManager];

  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v3)
  {
    v9 = @"Copy %lu Notes";
  }

  else
  {
    v9 = @"Move %lu Notes";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_100661CF0 table:0];
  v11 = [(ICMoveModernNotesToLegacyAccountController *)self createdLegacyNotes];
  v12 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v10, [v11 count]);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [(ICMoveModernNotesToLegacyAccountController *)self notesToDelete];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v18 managedObjectContext];
        if (v19)
        {
          v20 = v19;
          v21 = [v18 markedForDeletion];

          if ((v21 & 1) == 0)
          {
            [ICNote deleteNote:v18];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v22 = +[ICNoteContext sharedContext];
  [v22 save];

  v23 = +[NotesApp sharedNotesApp];
  v24 = [v23 noteContext];
  v25 = [v24 managedObjectContext];
  [v25 ic_save];
}

+ (id)localizedAlertTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Unsupported Attachments" value:&stru_100661CF0 table:0];

  return v3;
}

+ (id)localizedAlertMessageForMovingNotesForAccount:(id)a3
{
  v3 = [a3 supportsAttachments];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
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

+ (id)localizedAlertMessageForCopyingNotesForAccount:(id)a3
{
  v3 = [a3 supportsAttachments];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
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

+ (id)alertForUnsupportedAttachmentsDestinationStore:(id)a3 continueHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ICMoveModernNotesToLegacyAccountController localizedAlertTitle];
  v8 = [v6 account];

  v9 = [ICMoveModernNotesToLegacyAccountController localizedAlertMessageForMovingNotesForAccount:v8];

  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Continue" value:&stru_100661CF0 table:0];
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v5];

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