@interface MTRAsyncWorkItem
- (MTRAsyncWorkItem)initWithQueue:(id)a3;
- (id)description;
- (void)setBatchingID:(unint64_t)a3 data:(id)a4 handler:(id)a5;
- (void)setCancelHandler:(id)a3;
- (void)setDuplicateTypeID:(unint64_t)a3 handler:(id)a4;
- (void)setReadyHandler:(id)a3;
@end

@implementation MTRAsyncWorkItem

- (MTRAsyncWorkItem)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTRAsyncWorkItem;
  v6 = [(MTRAsyncWorkItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_uniqueID = atomic_fetch_add(&qword_27DF76530, 1uLL);
    objc_storeStrong(&v6->_queue, a3);
    v7->_state = 0;
  }

  return v7;
}

- (void)setReadyHandler:(id)a3
{
  v4 = MEMORY[0x23EE78590](a3, a2);
  readyHandler = self->_readyHandler;
  self->_readyHandler = v4;
}

- (void)setCancelHandler:(id)a3
{
  v4 = MEMORY[0x23EE78590](a3, a2);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;
}

- (void)setBatchingID:(unint64_t)a3 data:(id)a4 handler:(id)a5
{
  self->_batchingID = a3;
  objc_storeStrong(&self->_batchableData, a4);
  v11 = a4;
  v8 = a5;
  v9 = MEMORY[0x23EE78590]();

  batchingHandler = self->_batchingHandler;
  self->_batchingHandler = v9;
}

- (void)setDuplicateTypeID:(unint64_t)a3 handler:(id)a4
{
  self->_duplicateTypeID = a3;
  v5 = MEMORY[0x23EE78590](a4, a2);
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