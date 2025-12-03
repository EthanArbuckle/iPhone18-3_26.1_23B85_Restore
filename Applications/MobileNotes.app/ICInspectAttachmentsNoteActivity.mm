@interface ICInspectAttachmentsNoteActivity
- (ICInspectAttachmentsNoteActivity)initWithAttachments:(id)attachments presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (void)performActivityWithCompletion:(id)completion;
- (void)showAttachmentInspectorWithAttachment:(id)attachment;
- (void)showAttachmentsPickerActionSheet;
@end

@implementation ICInspectAttachmentsNoteActivity

- (ICInspectAttachmentsNoteActivity)initWithAttachments:(id)attachments presentingViewController:(id)controller
{
  attachmentsCopy = attachments;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ICInspectAttachmentsNoteActivity;
  v9 = [(ICInspectAttachmentsNoteActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachments, attachments);
    objc_storeWeak(&v10->_presentingViewController, controllerCopy);
  }

  return v10;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICInspectAttachmentsNoteActivity *)self presentingViewController];

  selfCopy2 = self;
  if (presentingViewController)
  {
    attachments = [(ICInspectAttachmentsNoteActivity *)self attachments];
    v7 = [attachments count];

    if (v7)
    {
      if (v7 == 1)
      {
        attachments2 = [(ICInspectAttachmentsNoteActivity *)self attachments];
        firstObject = [attachments2 firstObject];
        [(ICInspectAttachmentsNoteActivity *)self showAttachmentInspectorWithAttachment:firstObject];
      }

      else
      {
        [(ICInspectAttachmentsNoteActivity *)self showAttachmentsPickerActionSheet];
      }
    }

    selfCopy2 = self;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  [(ICInspectAttachmentsNoteActivity *)selfCopy2 activityDidFinish:v10];
  v11 = completionCopy;
  if (completionCopy)
  {
    activityType = [(ICInspectAttachmentsNoteActivity *)self activityType];
    (*(completionCopy + 2))(completionCopy, presentingViewController != 0, activityType);

    v11 = completionCopy;
  }
}

- (void)showAttachmentInspectorWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v7 = [[ICAttachmentInspectorViewController alloc] initWithAttachment:attachmentCopy];

  ic_embedInNavigationControllerForModalPresentation = [(ICAttachmentInspectorViewController *)v7 ic_embedInNavigationControllerForModalPresentation];
  presentingViewController = [(ICInspectAttachmentsNoteActivity *)self presentingViewController];
  [presentingViewController presentViewController:ic_embedInNavigationControllerForModalPresentation animated:1 completion:0];
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
        title = [v8 title];
        v10 = title;
        if (title)
        {
          v11 = title;
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
  presentingViewController = [(ICInspectAttachmentsNoteActivity *)self presentingViewController];
  [presentingViewController presentViewController:v3 animated:1 completion:0];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end