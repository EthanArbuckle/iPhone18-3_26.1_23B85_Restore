@interface ICPagesHandoffActivity
- (ICNAEventReporter)eventReporter;
- (ICPagesHandoffActivity)initWithNote:(id)a3 viewController:(id)a4;
- (UIViewController)viewController;
- (id)activityTitle;
- (void)eventReporterLostSession:(id)a3;
- (void)performActivity;
@end

@implementation ICPagesHandoffActivity

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if (+[ICNAEventReporter isOptedInForAnalytics])
    {
      v3 = [(ICPagesHandoffActivity *)self viewController];
      v4 = [v3 viewIfLoaded];

      if (v4)
      {
        v5 = [ICNAEventReporter alloc];
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = [(ICPagesHandoffActivity *)self viewController];
        v9 = [v8 view];
        v10 = [v5 initWithSubTrackerName:v7 view:v9];
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

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (ICPagesHandoffActivity)initWithNote:(id)a3 viewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICPagesHandoffActivity;
  v9 = [(ICPagesHandoffActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    objc_storeWeak(&v10->_viewController, v8);
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
  v3 = [(ICPagesHandoffActivity *)self note];
  v4 = [(ICPagesHandoffActivity *)self viewController];
  [(ICPagesHandoffManager *)v11 launchPagesWithArchiveFromNote:v3 viewController:v4];

  objc_opt_class();
  v5 = [(ICPagesHandoffActivity *)self viewController];
  v6 = ICDynamicCast();

  objc_opt_class();
  v7 = [(ICPagesHandoffActivity *)self viewController];
  v8 = ICDynamicCast();

  if (v6 | v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(ICPagesHandoffActivity *)self eventReporter];
  [v10 submitNotesToPagesEventWithContextPath:v9];

  [(ICPagesHandoffActivity *)self activityDidFinish:1];
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end