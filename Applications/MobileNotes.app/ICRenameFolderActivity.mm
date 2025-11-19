@interface ICRenameFolderActivity
- (ICRenameFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
- (void)textChanged:(id)a3;
@end

@implementation ICRenameFolderActivity

- (ICRenameFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICRenameFolderActivity;
  v9 = [(ICRenameFolderActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folder, a3);
    objc_storeWeak(&v10->_presentingViewController, v8);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Rename" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICRenameFolderActivity *)self presentingViewController];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Rename Folder" value:&stru_100661CF0 table:0];
    v8 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:1];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000F07B0;
    v24[3] = &unk_100646910;
    v24[4] = self;
    [v8 addTextFieldWithConfigurationHandler:v24];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000F0914;
    v22[3] = &unk_100646960;
    v22[4] = self;
    v11 = v4;
    v23 = v11;
    v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:v22];

    [v8 addAction:v12];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Save" value:&stru_100661CF0 table:0];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000F099C;
    v20[3] = &unk_100646960;
    v20[4] = self;
    v21 = v11;
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v20];
    [(ICRenameFolderActivity *)self setSaveAction:v15];

    v16 = [(ICRenameFolderActivity *)self saveAction];
    [v8 addAction:v16];

    v17 = [(ICRenameFolderActivity *)self presentingViewController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F0CA4;
    v19[3] = &unk_100645E30;
    v19[4] = self;
    [v17 presentViewController:v8 animated:1 completion:v19];
  }

  else
  {
    [(ICRenameFolderActivity *)self activityDidFinish:0];
    if (v4)
    {
      v18 = [(ICRenameFolderActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v18);
    }
  }
}

- (void)textChanged:(id)a3
{
  v4 = [(ICRenameFolderActivity *)self textField];
  v5 = [v4 text];
  v6 = [v5 ic_trimmedString];
  v7 = [v6 length] != 0;

  v8 = [(ICRenameFolderActivity *)self saveAction];
  [v8 setEnabled:v7];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end