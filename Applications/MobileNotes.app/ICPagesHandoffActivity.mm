@interface ICPagesHandoffActivity
- (ICNAEventReporter)eventReporter;
- (ICPagesHandoffActivity)initWithNote:(id)note viewController:(id)controller;
- (UIViewController)viewController;
- (id)activityTitle;
- (void)eventReporterLostSession:(id)session;
- (void)performActivity;
@end

@implementation ICPagesHandoffActivity

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if (+[ICNAEventReporter isOptedInForAnalytics])
    {
      viewController = [(ICPagesHandoffActivity *)self viewController];
      viewIfLoaded = [viewController viewIfLoaded];

      if (viewIfLoaded)
      {
        v5 = [ICNAEventReporter alloc];
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        viewController2 = [(ICPagesHandoffActivity *)self viewController];
        view = [viewController2 view];
        v10 = [v5 initWithSubTrackerName:v7 view:view];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v10;

        v12 = +[NSNotificationCenter defaultCenter];
        [v12 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
      }
    }
  }

  v13 = self->_eventReporter;

  return v13;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  object = [sessionCopy object];

  [v8 removeObserver:self name:v6 object:object];
}

- (ICPagesHandoffActivity)initWithNote:(id)note viewController:(id)controller
{
  noteCopy = note;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ICPagesHandoffActivity;
  v9 = [(ICPagesHandoffActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, note);
    objc_storeWeak(&v10->_viewController, controllerCopy);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Open in Pages" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivity
{
  v11 = objc_alloc_init(ICPagesHandoffManager);
  note = [(ICPagesHandoffActivity *)self note];
  viewController = [(ICPagesHandoffActivity *)self viewController];
  [(ICPagesHandoffManager *)v11 launchPagesWithArchiveFromNote:note viewController:viewController];

  objc_opt_class();
  viewController2 = [(ICPagesHandoffActivity *)self viewController];
  v6 = ICDynamicCast();

  objc_opt_class();
  viewController3 = [(ICPagesHandoffActivity *)self viewController];
  v8 = ICDynamicCast();

  if (v6 | v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  eventReporter = [(ICPagesHandoffActivity *)self eventReporter];
  [eventReporter submitNotesToPagesEventWithContextPath:v9];

  [(ICPagesHandoffActivity *)self activityDidFinish:1];
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end