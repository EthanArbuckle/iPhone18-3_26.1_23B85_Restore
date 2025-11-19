@interface ICSendNoteActivity
- (CGRect)presentingSourceRect;
- (ICSendNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 presentingSourceView:(id)a6 presentingSourceRect:(CGRect)a7 eventReporter:(id)a8;
- (id)activityTitle;
- (void)performActivityWithExcludedTypes:(id)a3 completion:(id)a4;
@end

@implementation ICSendNoteActivity

- (ICSendNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 presentingSourceView:(id)a6 presentingSourceRect:(CGRect)a7 eventReporter:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v25 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v26.receiver = self;
  v26.super_class = ICSendNoteActivity;
  v22 = [(ICSendNoteActivity *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_note, a3);
    objc_storeStrong(&v23->_presentingViewController, a4);
    objc_storeStrong(&v23->_presentingBarButtonItem, a5);
    objc_storeStrong(&v23->_presentingSourceView, a6);
    v23->_presentingSourceRect.origin.x = x;
    v23->_presentingSourceRect.origin.y = y;
    v23->_presentingSourceRect.size.width = width;
    v23->_presentingSourceRect.size.height = height;
    objc_storeStrong(&v23->_eventReporter, a8);
  }

  return v23;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Share" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithExcludedTypes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v23 = +[ICCollaborationUIController sharedInstance];
  v25 = [(ICSendNoteActivity *)self presentingViewController];
  v24 = [v25 view];
  v8 = [v24 window];
  v9 = [(ICSendNoteActivity *)self presentingViewController];
  v10 = [(ICSendNoteActivity *)self presentationSourceItem];
  v11 = [(ICSendNoteActivity *)self presentingSourceView];
  [(ICSendNoteActivity *)self presentingSourceRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(ICSendNoteActivity *)self note];
  v21 = [(ICSendNoteActivity *)self eventReporter];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000780B4;
  v26[3] = &unk_100645E80;
  v26[4] = self;
  v27 = v6;
  v22 = v6;
  [v23 presentSendNoteActivityViewControllerWithPresentingWindow:v8 presentingViewController:v9 sourceItem:v10 sourceView:v11 sourceRect:v20 note:v7 excludedTypes:v13 eventReporter:v15 didPresentActivityHandler:{v17, v19, v21, v26}];
}

- (CGRect)presentingSourceRect
{
  x = self->_presentingSourceRect.origin.x;
  y = self->_presentingSourceRect.origin.y;
  width = self->_presentingSourceRect.size.width;
  height = self->_presentingSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end