@interface SearchRAPReportingHistoryRecorder
- (SearchRAPReportingHistoryRecorder)initWithTicket:(id)a3 auxiliaryControlsOrigin:(int64_t)a4;
- (void)recordItemInHistory;
@end

@implementation SearchRAPReportingHistoryRecorder

- (void)recordItemInHistory
{
  v3 = [MSPMutableHistoryEntrySearch alloc];
  v4 = [(SearchRAPReportingHistoryRecorder *)self ticket];
  v5 = [v3 initWithTicket:v4];

  [v5 setTracksRAPReportingOnly:1];
  [HistoryEntryRecentsItem saveSearch:v5 completion:&stru_1016551C0];
}

- (SearchRAPReportingHistoryRecorder)initWithTicket:(id)a3 auxiliaryControlsOrigin:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SearchRAPReportingHistoryRecorder;
  v8 = [(SearchRAPReportingHistoryRecorder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ticket, a3);
    v9->_auxiliaryControlsOrigin = a4;
  }

  return v9;
}

@end