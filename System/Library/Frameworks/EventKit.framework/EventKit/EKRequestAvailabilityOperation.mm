@interface EKRequestAvailabilityOperation
- (EKRequestAvailabilityOperation)init;
- (EKRequestAvailabilityOperation)initWithSource:(id)source startDate:(id)date endDate:(id)endDate ignoredEvent:(id)event addresses:(id)addresses resultsBlock:(id)block;
- (EKRequestAvailabilityOperation)initWithSource:(id)source startDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses resultsBlock:(id)block;
- (id)description;
- (void)_finishWithError:(id)error;
- (void)cancel;
- (void)main;
- (void)start;
@end

@implementation EKRequestAvailabilityOperation

- (EKRequestAvailabilityOperation)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Please use the appropriate designated initializer for this class." userInfo:0];
  objc_exception_throw(v2);
}

- (EKRequestAvailabilityOperation)initWithSource:(id)source startDate:(id)date endDate:(id)endDate ignoredEvent:(id)event addresses:(id)addresses resultsBlock:(id)block
{
  blockCopy = block;
  addressesCopy = addresses;
  eventCopy = event;
  endDateCopy = endDate;
  dateCopy = date;
  sourceCopy = source;
  if ([eventCopy isDetached])
  {
    originalItem = [eventCopy originalItem];

    eventCopy = originalItem;
  }

  uniqueID = [eventCopy uniqueID];

  v22 = [(EKRequestAvailabilityOperation *)self initWithSource:sourceCopy startDate:dateCopy endDate:endDateCopy ignoredEventID:uniqueID addresses:addressesCopy resultsBlock:blockCopy];
  return v22;
}

- (EKRequestAvailabilityOperation)initWithSource:(id)source startDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses resultsBlock:(id)block
{
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  addressesCopy = addresses;
  blockCopy = block;
  v30.receiver = self;
  v30.super_class = EKRequestAvailabilityOperation;
  v18 = [(EKRequestAvailabilityOperation *)&v30 init];
  if (v18)
  {
    availabilityCache = [sourceCopy availabilityCache];
    availabilityCache = v18->_availabilityCache;
    v18->_availabilityCache = availabilityCache;

    objc_storeStrong(&v18->_startDate, date);
    objc_storeStrong(&v18->_endDate, endDate);
    objc_storeStrong(&v18->_ignoredEventID, d);
    objc_storeStrong(&v18->_addresses, addresses);
    v21 = [blockCopy copy];
    resultsBlock = v18->_resultsBlock;
    v18->_resultsBlock = v21;

    objc_opt_class();
    v23 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v23 UTF8String];

    v25 = dispatch_queue_create(uTF8String, 0);
    queue = v18->_queue;
    v18->_queue = v25;
  }

  return v18;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v9.receiver = self;
  v9.super_class = EKRequestAvailabilityOperation;
  v4 = [(EKRequestAvailabilityOperation *)&v9 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"_isFinished" withBoolean:self->_isFinished];
  [v5 setKey:@"_isExecuting" withBoolean:self->_isExecuting];
  [v5 setKey:@"_availabilityCache" withObject:self->_availabilityCache];
  [v5 setKey:@"_startDate" withDate:self->_startDate];
  [v5 setKey:@"_endDate" withDate:self->_endDate];
  [v5 setKey:@"_ignoredEventID" withString:self->_ignoredEventID];
  [v5 setKey:@"_addresses" withArray:self->_addresses];
  [v5 setKey:@"_resultsBlock" withPointerAddress:self->_resultsBlock];
  [v5 setKey:@"_requestID" withObject:self->_requestID];
  [v5 setKey:@"_queue" withPointerAddress:self->_queue];
  error = [(EKRequestAvailabilityOperation *)self error];
  [v5 setKey:@"error" withObject:error];

  build = [v5 build];

  return build;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EKRequestAvailabilityOperation_start__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __39__EKRequestAvailabilityOperation_start__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isExecuting];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) isFinished];
      if ((result & 1) == 0)
      {
        v3 = *(a1 + 32);

        return [v3 main];
      }
    }
  }

  return result;
}

- (void)main
{
  [(EKRequestAvailabilityOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 1;
  [(EKRequestAvailabilityOperation *)self didChangeValueForKey:@"isExecuting"];
  availabilityCache = self->_availabilityCache;
  startDate = self->_startDate;
  endDate = self->_endDate;
  ignoredEventID = self->_ignoredEventID;
  addresses = self->_addresses;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__EKRequestAvailabilityOperation_main__block_invoke;
  v11[3] = &unk_1E77FE278;
  v11[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__EKRequestAvailabilityOperation_main__block_invoke_46;
  v10[3] = &unk_1E77FD628;
  v10[4] = self;
  v8 = [(EKAvailabilityCache *)availabilityCache requestAvailabilityBetweenStartDate:startDate endDate:endDate ignoredEventID:ignoredEventID addresses:addresses resultsBlock:v11 completionBlock:v10];
  requestID = self->_requestID;
  self->_requestID = v8;
}

void __38__EKRequestAvailabilityOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  if ([v5 isCancelled])
  {
    v6 = EKAvailabilityHandle;
    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
    {
      __38__EKRequestAvailabilityOperation_main__block_invoke_cold_1(v4, v6);
    }
  }

  else
  {
    v7 = *v4;
    v8 = *(*v4 + 312);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__EKRequestAvailabilityOperation_main__block_invoke_44;
    v9[3] = &unk_1E77FD580;
    v9[4] = v7;
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

void __38__EKRequestAvailabilityOperation_main__block_invoke_44(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 296);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);

    v5();
  }

  else
  {
    v6 = EKAvailabilityHandle;
    if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
    {
      __38__EKRequestAvailabilityOperation_main__block_invoke_44_cold_1(a1, v2, v6);
    }
  }
}

void __38__EKRequestAvailabilityOperation_main__block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 312);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__EKRequestAvailabilityOperation_main__block_invoke_2;
  v7[3] = &unk_1E77FD580;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = EKRequestAvailabilityOperation;
  [(EKRequestAvailabilityOperation *)&v5 cancel];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EKRequestAvailabilityOperation_cancel__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __40__EKRequestAvailabilityOperation_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) cancelAvailabilityRequestWithID:*(*(a1 + 32) + 304)];
  v2 = *(a1 + 32);

  return [v2 _finishWithError:0];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  v5 = EKAvailabilityHandle;
  if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
  {
    [(EKRequestAvailabilityOperation *)errorCopy _finishWithError:v5];
  }

  if (!self->_isFinished)
  {
    if (([(EKRequestAvailabilityOperation *)self isCancelled]& 1) == 0)
    {
      [(EKRequestAvailabilityOperation *)self setError:errorCopy];
    }

    resultsBlock = self->_resultsBlock;
    self->_resultsBlock = 0;

    if (self->_isExecuting)
    {
      [(EKRequestAvailabilityOperation *)self willChangeValueForKey:@"isExecuting"];
      self->_isExecuting = 0;
      [(EKRequestAvailabilityOperation *)self didChangeValueForKey:@"isExecuting"];
    }

    [(EKRequestAvailabilityOperation *)self willChangeValueForKey:@"isFinished"];
    self->_isFinished = 1;
    [(EKRequestAvailabilityOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

void __38__EKRequestAvailabilityOperation_main__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1A805E000, a2, OS_LOG_TYPE_DEBUG, "Operation was cancelled.  Will not return results.  Operation: [%@]", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __38__EKRequestAvailabilityOperation_main__block_invoke_44_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 40);
  *&v4[12] = 2112;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, a2, a3, "No results block.  Will not pass along results [%@] for operation: [%@]", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_finishWithError:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, a2, a3, "Finishing operation with error: [%@].  Operation: [%@]", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end