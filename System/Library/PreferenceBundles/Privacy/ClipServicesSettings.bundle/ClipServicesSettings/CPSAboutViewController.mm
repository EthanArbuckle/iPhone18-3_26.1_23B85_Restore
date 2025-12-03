@interface CPSAboutViewController
- (CPSAboutViewController)init;
- (void)donePressed;
@end

@implementation CPSAboutViewController

- (CPSAboutViewController)init
{
  v32.receiver = self;
  v32.super_class = CPSAboutViewController;
  v2 = [(CPSAboutViewController *)&v32 init];
  if (v2)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v3 = qword_1A080;
    v37 = qword_1A080;
    if (!qword_1A080)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_6DC0;
      v33[3] = &unk_148E8;
      v33[4] = &v34;
      sub_6DC0(v33);
      v3 = v35[3];
    }

    v4 = v3;
    _Block_object_dispose(&v34, 8);
    v5 = [v3 alloc];
    v6 = _CPSLocalizedString();
    v7 = [v5 initWithTitle:v6 detailText:0 symbolName:0];
    [(CPSAboutViewController *)v2 setTextController:v7];

    textController = [(CPSAboutViewController *)v2 textController];
    v9 = sub_6C98(@"APP_CLIPS_LEARN_MORE");
    [textController addSectionWithHeader:0 content:v9];

    textController2 = [(CPSAboutViewController *)v2 textController];
    v11 = sub_6C98(@"LOCATION_CONFIRMATION_TITLE");
    v12 = sub_6C98(@"LOCATION_CONFIRMATION_SECTION");
    [textController2 addSectionWithHeader:v11 content:v12];

    textController3 = [(CPSAboutViewController *)v2 textController];
    v14 = sub_6C98(@"NOTIFICATIONS_TITLE");
    v15 = sub_6C98(@"NOTIFICATIONS_SECTION");
    [textController3 addSectionWithHeader:v14 content:v15];

    textController4 = [(CPSAboutViewController *)v2 textController];
    v17 = sub_6C98(@"MANAGE_TITLE");
    v18 = sub_6C98(@"MANAGE_SECTION");
    [textController4 addSectionWithHeader:v17 content:v18];

    textController5 = [(CPSAboutViewController *)v2 textController];
    v20 = sub_6C98(@"SHARING_TITLE");
    v21 = sub_6C98(@"SHARING_SECTION");
    [textController5 addSectionWithHeader:v20 content:v21];

    textController6 = [(CPSAboutViewController *)v2 textController];
    v23 = sub_6C98(@"RETENTION_TITLE");
    v24 = sub_6C98(@"RETENTION_SECTION");
    [textController6 addSectionWithHeader:v23 content:v24];

    textController7 = [(CPSAboutViewController *)v2 textController];
    v38 = textController7;
    v26 = [NSArray arrayWithObjects:&v38 count:1];
    [(CPSAboutViewController *)v2 setViewControllers:v26];

    v27 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v2 action:"donePressed"];
    textController8 = [(CPSAboutViewController *)v2 textController];
    navigationItem = [textController8 navigationItem];
    [navigationItem setRightBarButtonItem:v27];

    v30 = v2;
  }

  return v2;
}

- (void)donePressed
{
  textController = [(CPSAboutViewController *)self textController];
  presentingViewController = [textController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end