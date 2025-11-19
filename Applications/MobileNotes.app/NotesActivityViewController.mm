@interface NotesActivityViewController
- (BOOL)_shouldShowSystemActivityType:(id)a3;
- (void)_prepareActivity:(id)a3;
@end

@implementation NotesActivityViewController

- (BOOL)_shouldShowSystemActivityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:UIActivityTypeMessage] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", UIActivityTypeMail) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", UIActivityTypePrint))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:UIActivityTypeCopyToPasteboard];
  }

  return v4;
}

- (void)_prepareActivity:(id)a3
{
  v4 = a3;
  v5 = [(NotesActivityViewController *)self displayController];
  v6 = [v5 note];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v4;
      v7 = [v4 mailComposeViewController];
      v21 = +[UIColor _systemInteractionTintColor];
      v22 = [v7 view];
      [v22 _setInteractionTintColor:v21];

      v23 = [v6 title];
      [v7 setSubject:v23];

      v24 = [v6 content];
      [v7 setMessageBody:v24 isHTML:{objc_msgSend(v6, "isPlainText") ^ 1}];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v38 = v6;
      v11 = [v6 attachments];
      v25 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
              objc_enumerationMutation(v11);
            }

            v29 = *(*(&v41 + 1) + 8 * i);
            v40 = 0;
            v30 = [v29 attachmentDataWithError:&v40];
            v31 = v40;
            if (v30)
            {
              v32 = [v29 mimeType];
              v33 = [v29 filename];

              [v7 addAttachmentData:v30 mimeType:v32 fileName:v33];
            }

            else
            {
              v32 = [v29 contentID];
              v33 = [v31 localizedDescription];

              NSLog(@"Couldn't attach data to Mail for contentID: %@, error: %@", v32, v33);
            }
          }

          v26 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v26);
      }

      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![v6 isPlainText])
      {
        v34 = [(NotesActivityViewController *)self displayController];
        [v34 copyNoteHTMLToPasteboard];
        goto LABEL_34;
      }

      v34 = [v6 contentAsPlainTextPreservingNewlines];
      if (!v34)
      {
LABEL_34:

        goto LABEL_25;
      }

      v35 = [v4 pasteboard];
      [v35 setString:v34];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      v34 = [v4 socialComposeViewController];
      v36 = +[UIColor _systemInteractionTintColor];
      v37 = [v34 view];
      [v37 _setInteractionTintColor:v36];

      v35 = [v6 contentAsPlainTextPreservingNewlines];
      [v34 setInitialText:v35];
    }

    goto LABEL_34;
  }

  v39 = v4;
  v7 = [v4 messageComposeViewController];
  v8 = +[UIColor _systemInteractionTintColor];
  v9 = [v7 view];
  [v9 _setInteractionTintColor:v8];

  v10 = [v6 contentAsPlainTextPreservingNewlines];
  [v7 setBody:v10];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = v6;
  v11 = [v6 attachments];
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * j);
        v45 = 0;
        v17 = [v16 attachmentDataWithError:&v45];
        v18 = v45;
        if (v17)
        {
          v19 = [v16 mimeType];
          v20 = [v16 filename];

          [v7 addAttachmentData:v17 typeIdentifier:v19 filename:v20];
        }

        else
        {
          v19 = [v16 contentID];
          v20 = [v18 localizedDescription];

          NSLog(@"Couldn't attach data to Message for contentID: %@, error: %@", v19, v20);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v13);
  }

LABEL_24:

  v6 = v38;
  v4 = v39;
LABEL_25:
}

@end