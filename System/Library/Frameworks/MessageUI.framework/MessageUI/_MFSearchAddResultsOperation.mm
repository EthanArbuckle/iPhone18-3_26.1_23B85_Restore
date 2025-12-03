@interface _MFSearchAddResultsOperation
+ (id)operationWithResults:(id)results ofType:(unint64_t)type consumer:(id)consumer;
- (void)main;
@end

@implementation _MFSearchAddResultsOperation

+ (id)operationWithResults:(id)results ofType:(unint64_t)type consumer:(id)consumer
{
  resultsCopy = results;
  consumerCopy = consumer;
  v9 = objc_alloc_init(_MFSearchAddResultsOperation);
  results = v9->_results;
  v9->_results = resultsCopy;
  v11 = resultsCopy;

  v9->_type = type;
  consumer = v9->_consumer;
  v9->_consumer = consumerCopy;

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