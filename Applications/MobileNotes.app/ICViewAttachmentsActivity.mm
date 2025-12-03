@interface ICViewAttachmentsActivity
- (ICViewAttachmentsActivity)initWithPresentingViewController:(id)controller eventReporter:(id)reporter;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityUserInitiated:(BOOL)initiated completion:(id)completion;
@end

@implementation ICViewAttachmentsActivity

- (ICViewAttachmentsActivity)initWithPresentingViewController:(id)controller eventReporter:(id)reporter
{
  controllerCopy = controller;
  reporterCopy = reporter;
  v11.receiver = self;
  v11.super_class = ICViewAttachmentsActivity;
  v8 = [(ICViewAttachmentsActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingViewController, controllerCopy);
    objc_storeStrong(&v9->_eventReporter, reporter);
  }

  return v9;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"View Attachments" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityUserInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  completionCopy = completion;
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
  presentingViewController = [(ICViewAttachmentsActivity *)self presentingViewController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100108958;
  v12[3] = &unk_10064A238;
  v12[4] = self;
  v13 = completionCopy;
  v14 = initiatedCopy;
  v11 = completionCopy;
  [presentingViewController presentViewController:v9 animated:initiatedCopy completion:v12];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end