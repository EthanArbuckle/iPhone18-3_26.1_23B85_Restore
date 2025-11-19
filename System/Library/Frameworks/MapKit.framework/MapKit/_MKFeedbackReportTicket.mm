@interface _MKFeedbackReportTicket
- (_MKFeedbackReportTicket)initWithFeedbackReportTicket:(id)a3;
- (void)submitWithCallbackQueue:(id)a3 handler:(id)a4 networkActivity:(id)a5;
@end

@implementation _MKFeedbackReportTicket

- (void)submitWithCallbackQueue:(id)a3 handler:(id)a4 networkActivity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  ticket = self->_ticket;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke;
  v18[3] = &unk_1E76C8468;
  v20 = v9;
  v19 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75___MKFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3;
  v15[3] = &unk_1E76C9B20;
  v16 = v19;
  v17 = v10;
  v12 = v19;
  v13 = v10;
  v14 = v9;
  [(GEOMapServiceFeedbackReportTicket *)ticket submitWithHandler:v18 networkActivity:v15];
}

- (_MKFeedbackReportTicket)initWithFeedbackReportTicket:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MKFeedbackReportTicket;
  v6 = [(_MKFeedbackReportTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, a3);
  }

  return v7;
}

@end