@interface MTRAsyncWorkItem
- (MTRAsyncWorkItem)initWithQueue:(id)queue;
- (id)description;
- (void)setBatchingID:(unint64_t)d data:(id)data handler:(id)handler;
- (void)setCancelHandler:(id)handler;
- (void)setDuplicateTypeID:(unint64_t)d handler:(id)handler;
- (void)setReadyHandler:(id)handler;
@end

@implementation MTRAsyncWorkItem

- (MTRAsyncWorkItem)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = MTRAsyncWorkItem;
  v6 = [(MTRAsyncWorkItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_uniqueID = atomic_fetch_add(&qword_27DF76530, 1uLL);
    objc_storeStrong(&v6->_queue, queue);
    v7->_state = 0;
  }

  return v7;
}

- (void)setReadyHandler:(id)handler
{
  v4 = MEMORY[0x23EE78590](handler, a2);
  readyHandler = self->_readyHandler;
  self->_readyHandler = v4;
}

- (void)setCancelHandler:(id)handler
{
  v4 = MEMORY[0x23EE78590](handler, a2);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;
}

- (void)setBatchingID:(unint64_t)d data:(id)data handler:(id)handler
{
  self->_batchingID = d;
  objc_storeStrong(&self->_batchableData, data);
  dataCopy = data;
  handlerCopy = handler;
  v9 = MEMORY[0x23EE78590]();

  batchingHandler = self->_batchingHandler;
  self->_batchingHandler = v9;
}

- (void)setDuplicateTypeID:(unint64_t)d handler:(id)handler
{
  self->_duplicateTypeID = d;
  v5 = MEMORY[0x23EE78590](handler, a2);
  duplicateCheckHandler = self->_duplicateCheckHandler;
  self->_duplicateCheckHandler = v5;
}

- (id)description
{
  state = self->_state;
  if (state >= 3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v7 = self->_state;
    uniqueID = self->_uniqueID;
    v8 = v7 >= 3;
    v9 = v7 - 3;
    if (!v8)
    {
      v9 = 0;
    }

    [v4 stringWithFormat:@"<%@ %llu running retry: %ld>", v5, self->_uniqueID, v9];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %llu %@>", objc_opt_class(), self->_uniqueID, *(&off_278A75C40 + state)];
  }
  v10 = ;

  return v10;
}

@end