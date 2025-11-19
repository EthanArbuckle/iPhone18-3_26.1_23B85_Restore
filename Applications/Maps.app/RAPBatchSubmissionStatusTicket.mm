@interface RAPBatchSubmissionStatusTicket
- (void)cancelRequest;
- (void)fetchStatusesForIdentifiers:(id)a3 querySource:(int)a4 completion:(id)a5;
@end

@implementation RAPBatchSubmissionStatusTicket

- (void)cancelRequest
{
  [(GEOMapServiceFeedbackReportTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;
}

- (void)fetchStatusesForIdentifiers:(id)a3 querySource:(int)a4 completion:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = v8;
    v11 = objc_alloc_init(GEORPRapQueryParameters);
    v12 = [v10 mutableCopy];

    [v11 setFeedbackIds:v12];
    [v11 setQuerySource:v6];
    v13 = objc_alloc_init(GEORPFeedbackRequestParameters);
    v14 = objc_alloc_init(GEORPFeedbackQueryParameters);
    [v13 setQueryParameters:v14];

    v15 = [v13 queryParameters];
    [v15 addFeedbackComponentType:5];

    v16 = objc_alloc_init(GEORPFeedbackComponentQueryParameters);
    v17 = [v13 queryParameters];
    [v17 setComponentQueryParameters:v16];

    v18 = [v13 queryParameters];
    v19 = [v18 componentQueryParameters];
    [v19 setRapQueryParameters:v11];

    v20 = [GEORPFeedbackRequest alloc];
    v21 = +[GEOMapService sharedService];
    v22 = [v21 defaultTraits];
    v23 = [v20 initWithFeedbackRequestParameters:v13 traits:v22];

    v24 = sub_1008D9F80();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Created request %@", buf, 0xCu);
    }

    v25 = +[GEOMapService sharedService];
    v26 = +[GEOMapService sharedService];
    v27 = [v26 defaultTraits];
    v28 = [v25 ticketForFeedbackRequest:v23 traits:v27];
    ticket = self->_ticket;
    self->_ticket = v28;

    v30 = self->_ticket;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1008D9FD4;
    v31[3] = &unk_101652BF8;
    v32 = v9;
    [(GEOMapServiceFeedbackReportTicket *)v30 submitWithHandler:v31 networkActivity:0];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

@end