@interface ICInspectAttachmentsNoteActivity
- (ICInspectAttachmentsNoteActivity)initWithAttachments:(id)a3 presentingViewController:(id)a4;
- (UIViewController)presentingViewController;
- (void)performActivityWithCompletion:(id)a3;
- (void)showAttachmentInspectorWithAttachment:(id)a3;
- (void)showAttachmentsPickerActionSheet;
@end

@implementation ICInspectAttachmentsNoteActivity

- (ICInspectAttachmentsNoteActivity)initWithAttachments:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICInspectAttachmentsNoteActivity;
  v9 = [(ICInspectAttachmentsNoteActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachments, a3);
    objc_storeWeak(&v10->_presentingViewController, v8);
  }

  return v10;
}

- (void)performActivityWithCompletion:(id)a3
{
  v13 = a3;
  v4 = [(ICInspectAttachmentsNoteActivity *)self presentingViewController];

  v5 = self;
  if (v4)
  {
    v6 = [(ICInspectAttachmentsNoteActivity *)self attachments];
    v7 = [v6 count];

    if (v7)
    {
      if (v7 == 1)
      {
        v8 = [(ICInspectAttachmentsNoteActivity *)self attachments];
        v9 = [v8 firstObject];
        [(ICInspectAttachmentsNoteActivity *)self showAttachmentInspectorWithAttachment:v9];
      }

      else
      {
        [(ICInspectAttachmentsNoteActivity *)self showAttachmentsPickerActionSheet];
      }
    }

    v5 = self;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  [(ICInspectAttachmentsNoteActivity *)v5 activityDidFinish:v10];
  v11 = v13;
  if (v13)
  {
    v12 = [(ICInspectAttachmentsNoteActivity *)self activityType];
    (*(v13 + 2))(v13, v4 != 0, v12);

    v11 = v13;
  }
}

- (void)showAttachmentInspectorWithAttachment:(id)a3
{
  v4 = a3;
  v7 = [[ICAttachmentInspectorViewController alloc] initWithAttachment:v4];

  v5 = [(ICAttachmentInspectorViewController *)v7 ic_embedInNavigationControllerForModalPresentation];
  v6 = [(ICInspectAttachmentsNoteActivity *)self presentingViewController];
  [v6 presentViewController:v5 animated:1 completion:0];
}

- (void)showAttachmentsPickerActionSheet
{
  v3 = [UIAlertController alertControllerWithTitle:@"Inspect Attachment" message:@"Select attachment to inspect" preferredStyle:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(ICInspectAttachmentsNoteActivity *)self attachments];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 title];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          [v8 attachmentType];
          v11 = NSStringFromICAttachmentType();
        }

        v12 = v11;

        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000A2E58;
        v17[3] = &unk_1006471F0;
        v17[4] = self;
        v17[5] = v8;
        v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v17];
        [v3 addAction:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v3 addAction:v14];
  v15 = [(ICInspectAttachmentsNoteActivity *)self presentingViewController];
  [v15 presentViewController:v3 animated:1 completion:0];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end