@interface RAPPlacecardImageryController
- (RAPPlacecardImageryController)initWithReport:(id)report layoutManager:(id)manager;
- (void)_invokeCompletionHandlerWithShouldSubmit:(BOOL)submit;
- (void)_setupAlertController;
@end

@implementation RAPPlacecardImageryController

- (void)_invokeCompletionHandlerWithShouldSubmit:(BOOL)submit
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, submit, self->_report, self->_question);
  }
}

- (void)_setupAlertController
{
  v3 = objc_alloc_init(UIAlertController);
  val = self;
  alertController = self->_alertController;
  self = (self + 40);
  self->super.isa = v3;

  popoverPresentationController = [(objc_class *)self->super.isa popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:3];

  localizedTitle = [(RAPPlacecardImageryQuestion *)val->_question localizedTitle];
  [(objc_class *)self->super.isa setTitle:localizedTitle];

  objc_initWeak(&location, val);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  issueItems = [(RAPPlacecardImageryLayoutManager *)val->_layoutManager issueItems];
  v8 = [issueItems countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(issueItems);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        localizedTitle2 = [v11 localizedTitle];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100CDFE00;
        v20[3] = &unk_1016540D8;
        objc_copyWeak(&v21, &location);
        v20[4] = v11;
        v13 = [UIAlertAction actionWithTitle:localizedTitle2 style:0 handler:v20];

        [(UIAlertController *)val->_alertController addAction:v13];
        objc_destroyWeak(&v21);
      }

      v8 = [issueItems countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Cancel [RAP Placecard Imagery]" value:@"localized string not found" table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100CDFE70;
  v18[3] = &unk_101658AF0;
  objc_copyWeak(&v19, &location);
  v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v18];

  [(UIAlertController *)val->_alertController addAction:v16];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (RAPPlacecardImageryController)initWithReport:(id)report layoutManager:(id)manager
{
  reportCopy = report;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = RAPPlacecardImageryController;
  v9 = [(RAPPlacecardImageryController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutManager, manager);
    objc_storeStrong(&v10->_report, report);
    v11 = [RAPPlacecardImageryQuestion alloc];
    issueItems = [(RAPPlacecardImageryLayoutManager *)v10->_layoutManager issueItems];
    v13 = [(RAPPlacecardImageryQuestion *)v11 initWithReport:reportCopy parentQuestion:0 supportedIssueItems:issueItems];
    question = v10->_question;
    v10->_question = v13;

    [reportCopy setInitialQuestion:v10->_question];
    [(RAPPlacecardImageryController *)v10 _setupAlertController];
  }

  return v10;
}

@end