@interface UGCSubmissionLookupTicket
- (void)fetchSubmissionForMuid:(unint64_t)a3 userInfo:(id)a4 completion:(id)a5;
@end

@implementation UGCSubmissionLookupTicket

- (void)fetchSubmissionForMuid:(unint64_t)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(UGCSubmissionLookupTicket *)self cancel];
  v10 = v8;
  v11 = objc_alloc_init(GEORPFilter);
  [v11 setPlaceMuid:a3];
  v12 = objc_alloc_init(GEORPFeedbackQueryParameters);
  [v12 setFilter:v11];
  [v12 addFeedbackComponentType:4];
  v13 = objc_alloc_init(GEORPFeedbackRequestParameters);
  [v13 setQueryParameters:v12];
  v14 = [GEORPFeedbackRequest alloc];
  v15 = +[MKMapService sharedService];
  v16 = [v15 defaultTraits];
  v17 = [v14 initWithFeedbackRequestParameters:v13 traits:v16];

  [v17 setUserInfo:v10];
  v18 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:v17];
  ticket = self->_ticket;
  self->_ticket = v18;

  objc_initWeak(&location, self);
  v20 = self->_ticket;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1007F0990;
  v22[3] = &unk_10162AD18;
  objc_copyWeak(v24, &location);
  v24[1] = a3;
  v21 = v9;
  v23 = v21;
  [(GEOMapServiceFeedbackReportTicket *)v20 submitWithHandler:v22 networkActivity:0];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

@end