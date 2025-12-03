@interface NotesActivityViewController
- (BOOL)_shouldShowSystemActivityType:(id)type;
- (void)_prepareActivity:(id)activity;
@end

@implementation NotesActivityViewController

- (BOOL)_shouldShowSystemActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:UIActivityTypeMessage] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", UIActivityTypeMail) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", UIActivityTypePrint))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:UIActivityTypeCopyToPasteboard];
  }

  return v4;
}

- (void)_prepareActivity:(id)activity
{
  activityCopy = activity;
  displayController = [(NotesActivityViewController *)self displayController];
  note = [displayController note];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = activityCopy;
      mailComposeViewController = [activityCopy mailComposeViewController];
      v21 = +[UIColor _systemInteractionTintColor];
      view = [mailComposeViewController view];
      [view _setInteractionTintColor:v21];

      title = [note title];
      [mailComposeViewController setSubject:title];

      content = [note content];
      [mailComposeViewController setMessageBody:content isHTML:{objc_msgSend(note, "isPlainText") ^ 1}];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v38 = note;
      attachments = [note attachments];
      v25 = [attachments countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v42;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v42 != v27)
            {
              objc_enumerationMutation(attachments);
            }

            v29 = *(*(&v41 + 1) + 8 * i);
            v40 = 0;
            v30 = [v29 attachmentDataWithError:&v40];
            v31 = v40;
            if (v30)
            {
              mimeType = [v29 mimeType];
              filename = [v29 filename];

              [mailComposeViewController addAttachmentData:v30 mimeType:mimeType fileName:filename];
            }

            else
            {
              mimeType = [v29 contentID];
              filename = [v31 localizedDescription];

              NSLog(@"Couldn't attach data to Mail for contentID: %@, error: %@", mimeType, filename);
            }
          }

          v26 = [attachments countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v26);
      }

      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![note isPlainText])
      {
        displayController2 = [(NotesActivityViewController *)self displayController];
        [displayController2 copyNoteHTMLToPasteboard];
        goto LABEL_34;
      }

      displayController2 = [note contentAsPlainTextPreservingNewlines];
      if (!displayController2)
      {
LABEL_34:

        goto LABEL_25;
      }

      pasteboard = [activityCopy pasteboard];
      [pasteboard setString:displayController2];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      displayController2 = [activityCopy socialComposeViewController];
      v36 = +[UIColor _systemInteractionTintColor];
      view2 = [displayController2 view];
      [view2 _setInteractionTintColor:v36];

      pasteboard = [note contentAsPlainTextPreservingNewlines];
      [displayController2 setInitialText:pasteboard];
    }

    goto LABEL_34;
  }

  v39 = activityCopy;
  mailComposeViewController = [activityCopy messageComposeViewController];
  v8 = +[UIColor _systemInteractionTintColor];
  view3 = [mailComposeViewController view];
  [view3 _setInteractionTintColor:v8];

  contentAsPlainTextPreservingNewlines = [note contentAsPlainTextPreservingNewlines];
  [mailComposeViewController setBody:contentAsPlainTextPreservingNewlines];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = note;
  attachments = [note attachments];
  v12 = [attachments countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(attachments);
        }

        v16 = *(*(&v46 + 1) + 8 * j);
        v45 = 0;
        v17 = [v16 attachmentDataWithError:&v45];
        v18 = v45;
        if (v17)
        {
          mimeType2 = [v16 mimeType];
          filename2 = [v16 filename];

          [mailComposeViewController addAttachmentData:v17 typeIdentifier:mimeType2 filename:filename2];
        }

        else
        {
          mimeType2 = [v16 contentID];
          filename2 = [v18 localizedDescription];

          NSLog(@"Couldn't attach data to Message for contentID: %@, error: %@", mimeType2, filename2);
        }
      }

      v13 = [attachments countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v13);
  }

LABEL_24:

  note = v38;
  activityCopy = v39;
LABEL_25:
}

@end