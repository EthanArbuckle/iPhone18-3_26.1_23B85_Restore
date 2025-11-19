@interface ICAnalyticsObserver
+ (id)sharedObserver;
- (ICAnalyticsObserver)init;
- (ICNAEventReporter)eventReporter;
- (void)dealloc;
- (void)noteAddAttachment:(id)a3;
@end

@implementation ICAnalyticsObserver

+ (id)sharedObserver
{
  if (qword_100027F48[0] != -1)
  {
    sub_100013900();
  }

  v3 = qword_100027F40;

  return v3;
}

- (ICAnalyticsObserver)init
{
  v5.receiver = self;
  v5.super_class = ICAnalyticsObserver;
  v2 = [(ICAnalyticsObserver *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"noteAddAttachment:" name:ICNoteAnalyticsAddAttachmentNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICAnalyticsObserver;
  [(ICAnalyticsObserver *)&v4 dealloc];
}

- (void)noteAddAttachment:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:ICNoteAnalyticsAddAttachmentNotificationAttachmentKey];

  if (v7)
  {
    v5 = [v7 parentAttachment];

    if (!v5)
    {
      v6 = [(ICAnalyticsObserver *)self eventReporter];
      [v6 submitAttachmentAddEventForAttachment:v7];
    }
  }
}

- (ICNAEventReporter)eventReporter
{
  eventReporter = self->_eventReporter;
  if (!eventReporter)
  {
    v4 = [ICNAEventReporter alloc];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 initWithSubTrackerName:v6];
    v8 = self->_eventReporter;
    self->_eventReporter = v7;

    eventReporter = self->_eventReporter;
  }

  return eventReporter;
}

@end