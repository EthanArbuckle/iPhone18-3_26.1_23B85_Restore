@interface _CNChangeHistoryFetchExecutionResponse
- (_CNChangeHistoryFetchExecutionResponse)initWithEvents:(id)events count:(int64_t)count token:(id)token;
@end

@implementation _CNChangeHistoryFetchExecutionResponse

- (_CNChangeHistoryFetchExecutionResponse)initWithEvents:(id)events count:(int64_t)count token:(id)token
{
  eventsCopy = events;
  tokenCopy = token;
  v17.receiver = self;
  v17.super_class = _CNChangeHistoryFetchExecutionResponse;
  v10 = [(_CNChangeHistoryFetchExecutionResponse *)&v17 init];
  if (v10)
  {
    v11 = [eventsCopy copy];
    events = v10->_events;
    v10->_events = v11;

    v10->_count = count;
    v13 = [tokenCopy copy];
    token = v10->_token;
    v10->_token = v13;

    v15 = v10;
  }

  return v10;
}

@end