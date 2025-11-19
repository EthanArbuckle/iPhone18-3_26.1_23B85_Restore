@interface _CNChangeHistoryFetchExecutionResponse
- (_CNChangeHistoryFetchExecutionResponse)initWithEvents:(id)a3 count:(int64_t)a4 token:(id)a5;
@end

@implementation _CNChangeHistoryFetchExecutionResponse

- (_CNChangeHistoryFetchExecutionResponse)initWithEvents:(id)a3 count:(int64_t)a4 token:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = _CNChangeHistoryFetchExecutionResponse;
  v10 = [(_CNChangeHistoryFetchExecutionResponse *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    events = v10->_events;
    v10->_events = v11;

    v10->_count = a4;
    v13 = [v9 copy];
    token = v10->_token;
    v10->_token = v13;

    v15 = v10;
  }

  return v10;
}

@end