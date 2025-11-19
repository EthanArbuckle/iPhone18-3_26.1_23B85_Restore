@interface _MFSearchProcessResultsOperation
+ (id)operationWithResultsOfType:(unint64_t)a3 completion:(id)a4 consumer:(id)a5;
- (void)main;
@end

@implementation _MFSearchProcessResultsOperation

+ (id)operationWithResultsOfType:(unint64_t)a3 completion:(id)a4 consumer:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(_MFSearchProcessResultsOperation);
  v9->_type = a3;
  consumer = v9->_consumer;
  v9->_consumer = v8;
  v11 = v8;

  v12 = _Block_copy(v7);
  completionBlock = v9->_completionBlock;
  v9->_completionBlock = v12;

  return v9;
}

- (void)main
{
  if (_shouldCancel(self, self->_consumer) || ![(_MFSearchResultsConsumer *)self->_consumer _shouldProcessResultsAfterFinishingType:self->_type])
  {
    v10 = *(self->_completionBlock + 2);

    v10();
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    consumer = self->_consumer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40___MFSearchProcessResultsOperation_main__block_invoke;
    v11[3] = &unk_1E806DD30;
    v11[4] = self;
    v6 = v4;
    v12 = v6;
    v7 = v3;
    v13 = v7;
    [(_MFSearchResultsConsumer *)consumer _enumerateSearchResultTypesInSortOrderUsingBlock:v11];
    completionBlock = self->_completionBlock;
    if (_shouldCancel(self, self->_consumer))
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    (completionBlock)[2](completionBlock, v9);
  }
}

@end