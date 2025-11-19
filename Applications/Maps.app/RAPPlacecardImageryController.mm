@interface RAPPlacecardImageryController
- (RAPPlacecardImageryController)initWithReport:(id)a3 layoutManager:(id)a4;
- (void)_invokeCompletionHandlerWithShouldSubmit:(BOOL)a3;
- (void)_setupAlertController;
@end

@implementation RAPPlacecardImageryController

- (void)_invokeCompletionHandlerWithShouldSubmit:(BOOL)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a3, self->_report, self->_question);
  }
}

- (void)_setupAlertController
{
  v3 = objc_alloc_init(UIAlertController);
  val = self;
  alertController = self->_alertController;
  self = (self + 40);
  self->super.isa = v3;

  v5 = [(objc_class *)self->super.isa popoverPresentationController];
  [v5 setPermittedArrowDirections:3];

  v6 = [(RAPPlacecardImageryQuestion *)val->_question localizedTitle];
  [(objc_class *)self->super.isa setTitle:v6];

  objc_initWeak(&location, val);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(RAPPlacecardImageryLayoutManager *)val->_layoutManager issueItems];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 localizedTitle];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100CDFE00;
        v20[3] = &unk_1016540D8;
        objc_copyWeak(&v21, &location);
        v20[4] = v11;
        v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v20];

        [(UIAlertController *)val->_alertController addAction:v13];
        objc_destroyWeak(&v21);
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
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

- (RAPPlacecardImageryController)initWithReport:(id)a3 layoutManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = RAPPlacecardImageryController;
  v9 = [(RAPPlacecardImageryController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutManager, a4);
    objc_storeStrong(&v10->_report, a3);
    v11 = [RAPPlacecardImageryQuestion alloc];
    v12 = [(RAPPlacecardImageryLayoutManager *)v10->_layoutManager issueItems];
    v13 = [(RAPPlacecardImageryQuestion *)v11 initWithReport:v7 parentQuestion:0 supportedIssueItems:v12];
    question = v10->_question;
    v10->_question = v13;

    [v7 setInitialQuestion:v10->_question];
    [(RAPPlacecardImageryController *)v10 _setupAlertController];
  }

  return v10;
}

@end