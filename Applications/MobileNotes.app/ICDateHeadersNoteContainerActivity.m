@interface ICDateHeadersNoteContainerActivity
- (ICDateHeadersNoteContainerActivity)initWithContainer:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5 noteContainerViewMode:(int64_t)a6;
- (ICDateHeadersNoteContainerActivity)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5 noteContainerViewMode:(int64_t)a6;
- (UIViewController)presentingViewController;
- (id)actionForDateHeadersType:(int64_t)a3 completion:(id)a4;
- (id)activityTitle;
- (id)menuWithCompletion:(id)a3;
- (void)activityDidFinish:(BOOL)a3;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICDateHeadersNoteContainerActivity

- (ICDateHeadersNoteContainerActivity)initWithContainer:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5 noteContainerViewMode:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = ICDateHeadersNoteContainerActivity;
  v14 = [(ICDateHeadersNoteContainerActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_noteContainer, a3);
    objc_storeWeak(&v15->_presentingViewController, v12);
    objc_storeStrong(&v15->_eventReporter, a5);
    v15->_noteContainerViewMode = a6;
  }

  return v15;
}

- (ICDateHeadersNoteContainerActivity)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5 noteContainerViewMode:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = ICDateHeadersNoteContainerActivity;
  v14 = [(ICDateHeadersNoteContainerActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_virtualSmartFolder, a3);
    objc_storeWeak(&v15->_presentingViewController, v12);
    objc_storeStrong(&v15->_eventReporter, a5);
    v15->_noteContainerViewMode = a6;
  }

  return v15;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Group By Date" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICDateHeadersNoteContainerActivity *)self presentingViewController];
  v6 = [v5 presentedViewController];

  if (v6)
  {
    v7 = [(ICDateHeadersNoteContainerActivity *)self presentingViewController];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100129814;
    v12 = &unk_100647900;
    v13 = self;
    v14 = v4;
    [v7 dismissViewControllerAnimated:1 completion:&v9];
  }

  else if (v4)
  {
    v8 = [(ICDateHeadersNoteContainerActivity *)self activityType];
    (*(v4 + 2))(v4, 0, v8);
  }

  [(ICDateHeadersNoteContainerActivity *)self activityDidFinish:1, v9, v10, v11, v12];
}

- (void)activityDidFinish:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ICDateHeadersNoteContainerActivity;
  [(ICDateHeadersNoteContainerActivity *)&v8 activityDidFinish:a3];
  v4 = [(ICDateHeadersNoteContainerActivity *)self eventReporter];
  v5 = sub_1000A0D2C([(ICDateHeadersNoteContainerActivity *)self noteContainerViewMode]);
  v6 = [(ICDateHeadersNoteContainerActivity *)self activityType];
  v7 = [(ICDateHeadersNoteContainerActivity *)self noteContainer];
  [v4 submitNoteActionMenuEventForNoteBrowserWithUsageType:3 layout:v5 activityType:v6 isTimelineView:{objc_msgSend(v7, "isShowingDateHeaders")}];
}

- (id)menuWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICDateHeadersNoteContainerActivity *)self activityTitle];
  v6 = [(ICDateHeadersNoteContainerActivity *)self activityImage];
  v7 = [(ICDateHeadersNoteContainerActivity *)self actionForDateHeadersType:0 completion:v4];
  v8 = [(ICDateHeadersNoteContainerActivity *)self actionForDateHeadersType:2 completion:v4, v7];
  v18[1] = v8;
  v9 = [(ICDateHeadersNoteContainerActivity *)self actionForDateHeadersType:1 completion:v4];

  v18[2] = v9;
  v10 = [NSArray arrayWithObjects:v18 count:3];
  v11 = [UIMenu menuWithTitle:v5 image:v6 identifier:0 options:0 children:v10];

  v12 = [(ICDateHeadersNoteContainerActivity *)self noteContainer];

  if (v12)
  {
    v13 = [(ICDateHeadersNoteContainerActivity *)self noteContainer];
  }

  else
  {
    v14 = [(ICDateHeadersNoteContainerActivity *)self virtualSmartFolder];

    if (!v14)
    {
      goto LABEL_6;
    }

    v13 = [(ICDateHeadersNoteContainerActivity *)self virtualSmartFolder];
  }

  v15 = v13;
  v16 = +[ICDateHeadersUtilities actionItemTitleWithDateHeadersType:](ICDateHeadersUtilities, "actionItemTitleWithDateHeadersType:", [v13 dateHeadersType]);
  [v11 setSubtitle:v16];

LABEL_6:

  return v11;
}

- (id)actionForDateHeadersType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [ICDateHeadersUtilities stringForDateHeadersType:a3];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100129C90;
  v15[3] = &unk_100649410;
  v16 = v6;
  v17 = a3;
  v15[4] = self;
  v8 = v6;
  v9 = [UIAction ic_actionWithTitle:v7 handler:v15];

  v10 = [(ICDateHeadersNoteContainerActivity *)self noteContainer];

  if (v10)
  {
    v11 = [(ICDateHeadersNoteContainerActivity *)self noteContainer];
  }

  else
  {
    v12 = [(ICDateHeadersNoteContainerActivity *)self virtualSmartFolder];

    if (!v12)
    {
      goto LABEL_6;
    }

    v11 = [(ICDateHeadersNoteContainerActivity *)self virtualSmartFolder];
  }

  v13 = v11;
  [v9 setState:{objc_msgSend(v11, "dateHeadersType") == a3}];

LABEL_6:

  return v9;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end