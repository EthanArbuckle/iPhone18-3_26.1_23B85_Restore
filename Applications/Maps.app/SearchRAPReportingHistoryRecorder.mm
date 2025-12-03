@interface SearchRAPReportingHistoryRecorder
- (SearchRAPReportingHistoryRecorder)initWithTicket:(id)ticket auxiliaryControlsOrigin:(int64_t)origin;
- (void)recordItemInHistory;
@end

@implementation SearchRAPReportingHistoryRecorder

- (void)recordItemInHistory
{
  v3 = [MSPMutableHistoryEntrySearch alloc];
  ticket = [(SearchRAPReportingHistoryRecorder *)self ticket];
  v5 = [v3 initWithTicket:ticket];

  [v5 setTracksRAPReportingOnly:1];
  [HistoryEntryRecentsItem saveSearch:v5 completion:&stru_1016551C0];
}

- (SearchRAPReportingHistoryRecorder)initWithTicket:(id)ticket auxiliaryControlsOrigin:(int64_t)origin
{
  ticketCopy = ticket;
  v11.receiver = self;
  v11.super_class = SearchRAPReportingHistoryRecorder;
  v8 = [(SearchRAPReportingHistoryRecorder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ticket, ticket);
    v9->_auxiliaryControlsOrigin = origin;
  }

  return v9;
}

@end