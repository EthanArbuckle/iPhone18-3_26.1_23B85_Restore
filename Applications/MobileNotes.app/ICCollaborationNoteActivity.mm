@interface ICCollaborationNoteActivity
- (ICCollaborationNoteActivity)initWithNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view eventReporter:(id)reporter;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICCollaborationNoteActivity

- (ICCollaborationNoteActivity)initWithNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view eventReporter:(id)reporter
{
  noteCopy = note;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  reporterCopy = reporter;
  v21.receiver = self;
  v21.super_class = ICCollaborationNoteActivity;
  v17 = [(ICCollaborationNoteActivity *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_note, note);
    objc_storeStrong(&v18->_presentingBarButtonItem, item);
    objc_storeStrong(&v18->_presentingSourceView, view);
    objc_storeStrong(&v18->_presentingViewController, controller);
    objc_storeStrong(&v18->_eventReporter, reporter);
  }

  return v18;
}

- (id)activityTitle
{
  note = [(ICCollaborationNoteActivity *)self note];
  shareViaICloudManageActionTitle = [note shareViaICloudManageActionTitle];

  return shareViaICloudManageActionTitle;
}

- (id)activityImage
{
  note = [(ICCollaborationNoteActivity *)self note];
  shareViaICloudSystemImageName = [note shareViaICloudSystemImageName];

  v4 = [UIImage systemImageNamed:shareViaICloudSystemImageName];

  return v4;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  note = [(ICCollaborationNoteActivity *)self note];
  if ([note canBeSharedViaICloud])
  {
    note2 = [(ICCollaborationNoteActivity *)self note];
    isEmpty = [note2 isEmpty];

    if (!isEmpty)
    {
      if ([(ICCollaborationNoteActivity *)self contextPathEnum])
      {
        eventReporter = [(ICCollaborationNoteActivity *)self eventReporter];
        [eventReporter pushContextPathDataWithContextPathEnum:{-[ICCollaborationNoteActivity contextPathEnum](self, "contextPathEnum")}];
      }

      presentingViewController = [(ICCollaborationNoteActivity *)self presentingViewController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001091D8;
      v12[3] = &unk_100645E80;
      v12[4] = self;
      v13 = completionCopy;
      [presentingViewController ic_dismissPresentedViewControllerAnimated:1 completion:v12];

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
  if (completionCopy)
  {
    activityType = [(ICCollaborationNoteActivity *)self activityType];
    (*(completionCopy + 2))(completionCopy, 0, activityType);
  }

LABEL_11:
}

@end