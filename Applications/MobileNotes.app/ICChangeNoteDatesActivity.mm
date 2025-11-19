@interface ICChangeNoteDatesActivity
- (ICChangeNoteDatesActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5;
- (UIViewController)presentingViewController;
- (id)activityViewController;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICChangeNoteDatesActivity

- (ICChangeNoteDatesActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICChangeNoteDatesActivity;
  v12 = [(ICChangeNoteDatesActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_note, a3);
    objc_storeWeak(&v13->_presentingViewController, v10);
    objc_storeStrong(&v13->_presentingBarButtonItem, a5);
  }

  return v13;
}

- (id)activityViewController
{
  v3 = [UIAlertController alertControllerWithTitle:@"Change Dates" message:@"Change Modification Date or Creation Date" preferredStyle:0];
  v4 = objc_alloc_init(UIView);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_alloc_init(UIDatePicker);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setDatePickerMode:2];
  [v5 setPreferredDatePickerStyle:3];
  [v4 addSubview:v5];
  [v5 ic_addAnchorsToFillSuperview];
  v6 = objc_alloc_init(UIViewController);
  [v6 setView:v4];
  [v3 setContentViewController:v6];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000814A0;
  v16[3] = &unk_1006471F0;
  v16[4] = self;
  v7 = v5;
  v17 = v7;
  v8 = [UIAlertAction actionWithTitle:@"Set Modification Date" style:0 handler:v16];
  [v3 addAction:v8];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008155C;
  v14[3] = &unk_1006471F0;
  v14[4] = self;
  v15 = v7;
  v9 = v7;
  v10 = [UIAlertAction actionWithTitle:@"Set Creation Date" style:0 handler:v14];
  [v3 addAction:v10];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081618;
  v13[3] = &unk_100647218;
  v13[4] = self;
  v11 = [UIAlertAction actionWithTitle:@"Set Both Distant Past" style:2 handler:v13];
  [v3 addAction:v11];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICChangeNoteDatesActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [(ICChangeNoteDatesActivity *)self activityViewController];
    v7 = [(ICChangeNoteDatesActivity *)self presentingViewController];
    v8 = [v7 view];
    v9 = [v6 popoverPresentationController];
    [v9 setSourceView:v8];

    v10 = [(ICChangeNoteDatesActivity *)self presentationSourceItem];
    v11 = [v6 popoverPresentationController];
    [v11 setSourceItem:v10];

    v12 = [(ICChangeNoteDatesActivity *)self presentingViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100081858;
    v14[3] = &unk_100645E80;
    v14[4] = self;
    v15 = v4;
    [v12 ic_replacePresentedViewControllerWithViewController:v6 animated:1 completion:v14];
  }

  else
  {
    [(ICChangeNoteDatesActivity *)self activityDidFinish:0];
    if (v4)
    {
      v13 = [(ICChangeNoteDatesActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v13);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end