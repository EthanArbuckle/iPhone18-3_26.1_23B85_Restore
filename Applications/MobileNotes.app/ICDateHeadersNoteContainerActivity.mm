@interface ICDateHeadersNoteContainerActivity
- (ICDateHeadersNoteContainerActivity)initWithContainer:(id)container presentingViewController:(id)controller eventReporter:(id)reporter noteContainerViewMode:(int64_t)mode;
- (ICDateHeadersNoteContainerActivity)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller eventReporter:(id)reporter noteContainerViewMode:(int64_t)mode;
- (UIViewController)presentingViewController;
- (id)actionForDateHeadersType:(int64_t)type completion:(id)completion;
- (id)activityTitle;
- (id)menuWithCompletion:(id)completion;
- (void)activityDidFinish:(BOOL)finish;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICDateHeadersNoteContainerActivity

- (ICDateHeadersNoteContainerActivity)initWithContainer:(id)container presentingViewController:(id)controller eventReporter:(id)reporter noteContainerViewMode:(int64_t)mode
{
  containerCopy = container;
  controllerCopy = controller;
  reporterCopy = reporter;
  v17.receiver = self;
  v17.super_class = ICDateHeadersNoteContainerActivity;
  v14 = [(ICDateHeadersNoteContainerActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_noteContainer, container);
    objc_storeWeak(&v15->_presentingViewController, controllerCopy);
    objc_storeStrong(&v15->_eventReporter, reporter);
    v15->_noteContainerViewMode = mode;
  }

  return v15;
}

- (ICDateHeadersNoteContainerActivity)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller eventReporter:(id)reporter noteContainerViewMode:(int64_t)mode
{
  folderCopy = folder;
  controllerCopy = controller;
  reporterCopy = reporter;
  v17.receiver = self;
  v17.super_class = ICDateHeadersNoteContainerActivity;
  v14 = [(ICDateHeadersNoteContainerActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_virtualSmartFolder, folder);
    objc_storeWeak(&v15->_presentingViewController, controllerCopy);
    objc_storeStrong(&v15->_eventReporter, reporter);
    v15->_noteContainerViewMode = mode;
  }

  return v15;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Group By Date" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICDateHeadersNoteContainerActivity *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController)
  {
    presentingViewController2 = [(ICDateHeadersNoteContainerActivity *)self presentingViewController];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100129814;
    v12 = &unk_100647900;
    selfCopy = self;
    v14 = completionCopy;
    [presentingViewController2 dismissViewControllerAnimated:1 completion:&v9];
  }

  else if (completionCopy)
  {
    activityType = [(ICDateHeadersNoteContainerActivity *)self activityType];
    (*(completionCopy + 2))(completionCopy, 0, activityType);
  }

  [(ICDateHeadersNoteContainerActivity *)self activityDidFinish:1, v9, v10, v11, v12];
}

- (void)activityDidFinish:(BOOL)finish
{
  v8.receiver = self;
  v8.super_class = ICDateHeadersNoteContainerActivity;
  [(ICDateHeadersNoteContainerActivity *)&v8 activityDidFinish:finish];
  eventReporter = [(ICDateHeadersNoteContainerActivity *)self eventReporter];
  v5 = sub_1000A0D2C([(ICDateHeadersNoteContainerActivity *)self noteContainerViewMode]);
  activityType = [(ICDateHeadersNoteContainerActivity *)self activityType];
  noteContainer = [(ICDateHeadersNoteContainerActivity *)self noteContainer];
  [eventReporter submitNoteActionMenuEventForNoteBrowserWithUsageType:3 layout:v5 activityType:activityType isTimelineView:{objc_msgSend(noteContainer, "isShowingDateHeaders")}];
}

- (id)menuWithCompletion:(id)completion
{
  completionCopy = completion;
  activityTitle = [(ICDateHeadersNoteContainerActivity *)self activityTitle];
  activityImage = [(ICDateHeadersNoteContainerActivity *)self activityImage];
  v7 = [(ICDateHeadersNoteContainerActivity *)self actionForDateHeadersType:0 completion:completionCopy];
  v8 = [(ICDateHeadersNoteContainerActivity *)self actionForDateHeadersType:2 completion:completionCopy, v7];
  v18[1] = v8;
  v9 = [(ICDateHeadersNoteContainerActivity *)self actionForDateHeadersType:1 completion:completionCopy];

  v18[2] = v9;
  v10 = [NSArray arrayWithObjects:v18 count:3];
  v11 = [UIMenu menuWithTitle:activityTitle image:activityImage identifier:0 options:0 children:v10];

  noteContainer = [(ICDateHeadersNoteContainerActivity *)self noteContainer];

  if (noteContainer)
  {
    noteContainer2 = [(ICDateHeadersNoteContainerActivity *)self noteContainer];
  }

  else
  {
    virtualSmartFolder = [(ICDateHeadersNoteContainerActivity *)self virtualSmartFolder];

    if (!virtualSmartFolder)
    {
      goto LABEL_6;
    }

    noteContainer2 = [(ICDateHeadersNoteContainerActivity *)self virtualSmartFolder];
  }

  v15 = noteContainer2;
  v16 = +[ICDateHeadersUtilities actionItemTitleWithDateHeadersType:](ICDateHeadersUtilities, "actionItemTitleWithDateHeadersType:", [noteContainer2 dateHeadersType]);
  [v11 setSubtitle:v16];

LABEL_6:

  return v11;
}

- (id)actionForDateHeadersType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = [ICDateHeadersUtilities stringForDateHeadersType:type];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100129C90;
  v15[3] = &unk_100649410;
  v16 = completionCopy;
  typeCopy = type;
  v15[4] = self;
  v8 = completionCopy;
  v9 = [UIAction ic_actionWithTitle:v7 handler:v15];

  noteContainer = [(ICDateHeadersNoteContainerActivity *)self noteContainer];

  if (noteContainer)
  {
    noteContainer2 = [(ICDateHeadersNoteContainerActivity *)self noteContainer];
  }

  else
  {
    virtualSmartFolder = [(ICDateHeadersNoteContainerActivity *)self virtualSmartFolder];

    if (!virtualSmartFolder)
    {
      goto LABEL_6;
    }

    noteContainer2 = [(ICDateHeadersNoteContainerActivity *)self virtualSmartFolder];
  }

  v13 = noteContainer2;
  [v9 setState:{objc_msgSend(noteContainer2, "dateHeadersType") == type}];

LABEL_6:

  return v9;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end