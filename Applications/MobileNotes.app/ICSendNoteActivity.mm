@interface ICSendNoteActivity
- (CGRect)presentingSourceRect;
- (ICSendNoteActivity)initWithNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view presentingSourceRect:(CGRect)rect eventReporter:(id)reporter;
- (id)activityTitle;
- (void)performActivityWithExcludedTypes:(id)types completion:(id)completion;
@end

@implementation ICSendNoteActivity

- (ICSendNoteActivity)initWithNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view presentingSourceRect:(CGRect)rect eventReporter:(id)reporter
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  noteCopy = note;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  reporterCopy = reporter;
  v26.receiver = self;
  v26.super_class = ICSendNoteActivity;
  v22 = [(ICSendNoteActivity *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_note, note);
    objc_storeStrong(&v23->_presentingViewController, controller);
    objc_storeStrong(&v23->_presentingBarButtonItem, item);
    objc_storeStrong(&v23->_presentingSourceView, view);
    v23->_presentingSourceRect.origin.x = x;
    v23->_presentingSourceRect.origin.y = y;
    v23->_presentingSourceRect.size.width = width;
    v23->_presentingSourceRect.size.height = height;
    objc_storeStrong(&v23->_eventReporter, reporter);
  }

  return v23;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Share" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithExcludedTypes:(id)types completion:(id)completion
{
  completionCopy = completion;
  typesCopy = types;
  v23 = +[ICCollaborationUIController sharedInstance];
  presentingViewController = [(ICSendNoteActivity *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  presentingViewController2 = [(ICSendNoteActivity *)self presentingViewController];
  presentationSourceItem = [(ICSendNoteActivity *)self presentationSourceItem];
  presentingSourceView = [(ICSendNoteActivity *)self presentingSourceView];
  [(ICSendNoteActivity *)self presentingSourceRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  note = [(ICSendNoteActivity *)self note];
  eventReporter = [(ICSendNoteActivity *)self eventReporter];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000780B4;
  v26[3] = &unk_100645E80;
  v26[4] = self;
  v27 = completionCopy;
  v22 = completionCopy;
  [v23 presentSendNoteActivityViewControllerWithPresentingWindow:window presentingViewController:presentingViewController2 sourceItem:presentationSourceItem sourceView:presentingSourceView sourceRect:note note:typesCopy excludedTypes:v13 eventReporter:v15 didPresentActivityHandler:{v17, v19, eventReporter, v26}];
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