@interface _MFSearchAddResultsOperation
+ (id)operationWithResults:(id)a3 ofType:(unint64_t)a4 consumer:(id)a5;
- (void)main;
@end

@implementation _MFSearchAddResultsOperation

+ (id)operationWithResults:(id)a3 ofType:(unint64_t)a4 consumer:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(_MFSearchAddResultsOperation);
  results = v9->_results;
  v9->_results = v7;
  v11 = v7;

  v9->_type = a4;
  consumer = v9->_consumer;
  v9->_consumer = v8;

  return v9;
}

- (void)main
{
  if ((_shouldCancel(self, self->_consumer) & 1) == 0)
  {
    consumer = self->_consumer;
    results = self->_results;
    type = self->_type;

    [(_MFSearchResultsConsumer *)consumer _addResults:results ofType:type];
  }
}

@end