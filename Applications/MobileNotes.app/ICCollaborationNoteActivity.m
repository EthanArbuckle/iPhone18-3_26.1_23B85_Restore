@interface ICCollaborationNoteActivity
- (ICCollaborationNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 presentingSourceView:(id)a6 eventReporter:(id)a7;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICCollaborationNoteActivity

- (ICCollaborationNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 presentingSourceView:(id)a6 eventReporter:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ICCollaborationNoteActivity;
  v17 = [(ICCollaborationNoteActivity *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_note, a3);
    objc_storeStrong(&v18->_presentingBarButtonItem, a5);
    objc_storeStrong(&v18->_presentingSourceView, a6);
    objc_storeStrong(&v18->_presentingViewController, a4);
    objc_storeStrong(&v18->_eventReporter, a7);
  }

  return v18;
}

- (id)activityTitle
{
  v2 = [(ICCollaborationNoteActivity *)self note];
  v3 = [v2 shareViaICloudManageActionTitle];

  return v3;
}

- (id)activityImage
{
  v2 = [(ICCollaborationNoteActivity *)self note];
  v3 = [v2 shareViaICloudSystemImageName];

  v4 = [UIImage systemImageNamed:v3];

  return v4;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICCollaborationNoteActivity *)self note];
  if ([v5 canBeSharedViaICloud])
  {
    v6 = [(ICCollaborationNoteActivity *)self note];
    v7 = [v6 isEmpty];

    if (!v7)
    {
      if ([(ICCollaborationNoteActivity *)self contextPathEnum])
      {
        v8 = [(ICCollaborationNoteActivity *)self eventReporter];
        [v8 pushContextPathDataWithContextPathEnum:{-[ICCollaborationNoteActivity contextPathEnum](self, "contextPathEnum")}];
      }

      v9 = [(ICCollaborationNoteActivity *)self presentingViewController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001091D8;
      v12[3] = &unk_100645E80;
      v12[4] = self;
      v13 = v4;
      [v9 ic_dismissPresentedViewControllerAnimated:1 completion:v12];

      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1004E0200(v10);
  }

  [(ICCollaborationNoteActivity *)self activityDidFinish:0];
  if (v4)
  {
    v11 = [(ICCollaborationNoteActivity *)self activityType];
    (*(v4 + 2))(v4, 0, v11);
  }

LABEL_11:
}

@end