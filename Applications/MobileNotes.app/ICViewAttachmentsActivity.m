@interface ICViewAttachmentsActivity
- (ICViewAttachmentsActivity)initWithPresentingViewController:(id)a3 eventReporter:(id)a4;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityUserInitiated:(BOOL)a3 completion:(id)a4;
@end

@implementation ICViewAttachmentsActivity

- (ICViewAttachmentsActivity)initWithPresentingViewController:(id)a3 eventReporter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICViewAttachmentsActivity;
  v8 = [(ICViewAttachmentsActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingViewController, v6);
    objc_storeStrong(&v9->_eventReporter, a4);
  }

  return v9;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"View Attachments" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityUserInitiated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    v7 = [[ICBrowseAttachmentsCollectionController alloc] initWithAttachmentSection:1];
  }

  else
  {
    v7 = objc_alloc_init(ICBrowseAttachmentsCollectionController);
  }

  v8 = v7;
  v9 = [[UINavigationController alloc] initWithRootViewController:v7];
  [v9 setModalPresentationStyle:{+[UIDevice ic_isVision](UIDevice, "ic_isVision") ^ 1}];
  v10 = [(ICViewAttachmentsActivity *)self presentingViewController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100108958;
  v12[3] = &unk_10064A238;
  v12[4] = self;
  v13 = v6;
  v14 = v4;
  v11 = v6;
  [v10 presentViewController:v9 animated:v4 completion:v12];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end