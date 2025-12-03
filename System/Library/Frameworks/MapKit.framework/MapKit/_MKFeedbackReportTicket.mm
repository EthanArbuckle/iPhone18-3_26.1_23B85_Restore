@interface _MKFeedbackReportTicket
- (_MKFeedbackReportTicket)initWithFeedbackReportTicket:(id)ticket;
- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity;
@end

@implementation _MKFeedbackReportTicket

- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity
{
  queueCopy = queue;
  handlerCopy = handler;
  activityCopy = activity;
  ticket = self->_ticket;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke;
  v18[3] = &unk_1E76C8468;
  v20 = handlerCopy;
  v19 = queueCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3;
  v15[3] = &unk_1E76C9B20;
  v16 = v19;
  v17 = activityCopy;
  v12 = v19;
  v13 = activityCopy;
  v14 = handlerCopy;
  [(GEOMapServiceFeedbackReportTicket *)ticket submitWithHandler:v18 networkActivity:v15];
}

- (_MKFeedbackReportTicket)initWithFeedbackReportTicket:(id)ticket
{
  ticketCopy = ticket;
  v9.receiver = self;
  v9.super_class = _MKFeedbackReportTicket;
  v6 = [(_MKFeedbackReportTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, ticket);
  }

  return v7;
}

@end