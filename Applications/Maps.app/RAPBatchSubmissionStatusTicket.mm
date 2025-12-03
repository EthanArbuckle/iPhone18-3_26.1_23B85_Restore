@interface RAPBatchSubmissionStatusTicket
- (void)cancelRequest;
- (void)fetchStatusesForIdentifiers:(id)identifiers querySource:(int)source completion:(id)completion;
@end

@implementation RAPBatchSubmissionStatusTicket

- (void)cancelRequest
{
  [(GEOMapServiceFeedbackReportTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;
}

- (void)fetchStatusesForIdentifiers:(id)identifiers querySource:(int)source completion:(id)completion
{
  v6 = *&source;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if ([identifiersCopy count])
  {
    v10 = identifiersCopy;
    v11 = objc_alloc_init(GEORPRapQueryParameters);
    v12 = [v10 mutableCopy];

    [v11 setFeedbackIds:v12];
    [v11 setQuerySource:v6];
    v13 = objc_alloc_init(GEORPFeedbackRequestParameters);
    v14 = objc_alloc_init(GEORPFeedbackQueryParameters);
    [v13 setQueryParameters:v14];

    queryParameters = [v13 queryParameters];
    [queryParameters addFeedbackComponentType:5];

    v16 = objc_alloc_init(GEORPFeedbackComponentQueryParameters);
    queryParameters2 = [v13 queryParameters];
    [queryParameters2 setComponentQueryParameters:v16];

    queryParameters3 = [v13 queryParameters];
    componentQueryParameters = [queryParameters3 componentQueryParameters];
    [componentQueryParameters setRapQueryParameters:v11];

    v20 = [GEORPFeedbackRequest alloc];
    v21 = +[GEOMapService sharedService];
    defaultTraits = [v21 defaultTraits];
    v23 = [v20 initWithFeedbackRequestParameters:v13 traits:defaultTraits];

    v24 = sub_1008D9F80();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Created request %@", buf, 0xCu);
    }

    v25 = +[GEOMapService sharedService];
    v26 = +[GEOMapService sharedService];
    defaultTraits2 = [v26 defaultTraits];
    v28 = [v25 ticketForFeedbackRequest:v23 traits:defaultTraits2];
    ticket = self->_ticket;
    self->_ticket = v28;

    v30 = self->_ticket;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1008D9FD4;
    v31[3] = &unk_101652BF8;
    v32 = completionCopy;
    [(GEOMapServiceFeedbackReportTicket *)v30 submitWithHandler:v31 networkActivity:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

@end