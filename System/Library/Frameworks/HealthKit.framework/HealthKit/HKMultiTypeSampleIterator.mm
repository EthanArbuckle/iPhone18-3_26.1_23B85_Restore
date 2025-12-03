@interface HKMultiTypeSampleIterator
- (BOOL)_queryForNextPageIfNecessaryWithError:(id *)error;
- (BOOL)advanceWithError:(id *)error;
- (HKMultiTypeSampleIterator)init;
- (HKMultiTypeSampleIterator)initWithQueryDescriptors:(id)descriptors sortDescriptors:(id)sortDescriptors followingAnchor:(id)anchor upToAndIncludingAnchor:(id)includingAnchor distinctByKeyPaths:(id)paths bufferSize:(unint64_t)size limit:(unint64_t)limit healthStore:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKMultiTypeSampleIterator

- (HKMultiTypeSampleIterator)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (BOOL)_queryForNextPageIfNecessaryWithError:(id *)error
{
  if ([(NSMutableArray *)self->_buffer count])
  {
    v5 = 1;
  }

  else if (self->_state == 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:900 format:@"Multi-type sample iterator is exhausted"];
    v5 = 0;
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__32;
    v27 = __Block_byref_object_dispose__32;
    v28 = 0;
    v6 = dispatch_semaphore_create(0);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__HKMultiTypeSampleIterator__queryForNextPageIfNecessaryWithError___block_invoke;
    aBlock[3] = &unk_1E73804E0;
    v21 = &v23;
    v7 = v6;
    v19 = v7;
    selfCopy = self;
    v22 = &v29;
    v8 = _Block_copy(aBlock);
    bufferSize = self->_bufferSize;
    limit = self->_limit;
    if (limit)
    {
      v11 = limit - self->_numberOfSamplesDelivered;
      if (bufferSize >= v11)
      {
        bufferSize = v11;
      }
    }

    if (self->_state == 1)
    {
      v12 = [[HKSampleIteratorQuery alloc] initWithQueryCursor:self->_queryCursor limit:bufferSize resultsHandler:v8];
    }

    else
    {
      v12 = [[HKSampleIteratorQuery alloc] initWithQueryDescriptors:self->_queryDescriptors sortDescriptors:self->_sortDescriptors followingAnchor:self->_followingAnchor upToAndIncludingAnchor:self->_upToAndIncludingAnchor distinctByKeyPaths:self->_distinctByKeyPaths limit:bufferSize resultsHandler:v8];
    }

    v13 = v12;
    [(HKHealthStore *)self->_healthStore executeQuery:v12];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v14 = v24[5];
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    v5 = *(v30 + 24);
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v29, 8);
  }

  return v5 & 1;
}

void __67__HKMultiTypeSampleIterator__queryForNextPageIfNecessaryWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  if (v20)
  {
    objc_storeStrong((*(a1 + 40) + 80), a4);
    if (v8)
    {
      v10 = [v20 count];
      v11 = *(a1 + 40);
      v12 = v10 >= *(v11 + 48);
      v13 = v20;
      v14 = 1;
      if (!v12)
      {
        v14 = 2;
      }
    }

    else
    {
      v11 = *(a1 + 40);
      v14 = 2;
      v13 = v20;
    }

    *(v11 + 72) = v14;
    v15 = [v13 reverseObjectEnumerator];
    v16 = [v15 allObjects];
    v17 = [v16 mutableCopy];
    v18 = *(a1 + 40);
    v19 = *(v18 + 88);
    *(v18 + 88) = v17;

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (HKMultiTypeSampleIterator)initWithQueryDescriptors:(id)descriptors sortDescriptors:(id)sortDescriptors followingAnchor:(id)anchor upToAndIncludingAnchor:(id)includingAnchor distinctByKeyPaths:(id)paths bufferSize:(unint64_t)size limit:(unint64_t)limit healthStore:(id)self0
{
  descriptorsCopy = descriptors;
  sortDescriptorsCopy = sortDescriptors;
  anchorCopy = anchor;
  includingAnchorCopy = includingAnchor;
  pathsCopy = paths;
  storeCopy = store;
  if (!descriptorsCopy)
  {
    [HKMultiTypeSampleIterator initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:bufferSize:limit:healthStore:];
  }

  if ([descriptorsCopy count])
  {
    if (storeCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [HKMultiTypeSampleIterator initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:bufferSize:limit:healthStore:];
    if (storeCopy)
    {
      goto LABEL_5;
    }
  }

  [HKMultiTypeSampleIterator initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:bufferSize:limit:healthStore:];
LABEL_5:
  v36.receiver = self;
  v36.super_class = HKMultiTypeSampleIterator;
  v22 = [(HKMultiTypeSampleIterator *)&v36 init];
  if (v22)
  {
    v23 = [descriptorsCopy copy];
    queryDescriptors = v22->_queryDescriptors;
    v22->_queryDescriptors = v23;

    v25 = [sortDescriptorsCopy copy];
    sortDescriptors = v22->_sortDescriptors;
    v22->_sortDescriptors = v25;

    v27 = [anchorCopy copy];
    followingAnchor = v22->_followingAnchor;
    v22->_followingAnchor = v27;

    v29 = [includingAnchorCopy copy];
    upToAndIncludingAnchor = v22->_upToAndIncludingAnchor;
    v22->_upToAndIncludingAnchor = v29;

    v31 = [pathsCopy copy];
    distinctByKeyPaths = v22->_distinctByKeyPaths;
    v22->_distinctByKeyPaths = v31;

    v22->_bufferSize = size;
    v22->_limit = limit;
    objc_storeStrong(&v22->_healthStore, store);
    queryCursor = v22->_queryCursor;
    v22->_state = 0;
    v22->_queryCursor = 0;

    current = v22->_current;
    v22->_current = 0;

    v22->_numberOfSamplesDelivered = 0;
  }

  return v22;
}

- (BOOL)advanceWithError:(id *)error
{
  v5 = [(HKMultiTypeSampleIterator *)self _queryForNextPageIfNecessaryWithError:?];
  if (v5)
  {
    if ([(NSMutableArray *)self->_buffer count])
    {
      lastObject = [(NSMutableArray *)self->_buffer lastObject];
      current = self->_current;
      self->_current = lastObject;

      [(NSMutableArray *)self->_buffer removeLastObject];
      ++self->_numberOfSamplesDelivered;
      LOBYTE(v5) = 1;
    }

    else
    {
      if (self->_state != 2)
      {
        [HKMultiTypeSampleIterator advanceWithError:];
      }

      [MEMORY[0x1E696ABC0] hk_assignError:error code:900 format:@"Multi-type sample iterator is exhausted"];
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HKMultiTypeSampleIterator alloc] initWithQueryDescriptors:self->_queryDescriptors sortDescriptors:self->_sortDescriptors followingAnchor:self->_followingAnchor upToAndIncludingAnchor:self->_upToAndIncludingAnchor distinctByKeyPaths:self->_distinctByKeyPaths bufferSize:self->_bufferSize limit:self->_limit healthStore:self->_healthStore];
  v5 = [(HKSampleIteratorQueryCursor *)self->_queryCursor copy];
  queryCursor = v4->_queryCursor;
  v4->_queryCursor = v5;

  v7 = [(NSMutableArray *)self->_buffer mutableCopy];
  buffer = v4->_buffer;
  v4->_buffer = v7;

  v9 = [(HKSample *)self->_current copy];
  current = v4->_current;
  v4->_current = v9;

  v4->_state = self->_state;
  v4->_numberOfSamplesDelivered = self->_numberOfSamplesDelivered;
  return v4;
}

- (void)initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:bufferSize:limit:healthStore:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"queryDescriptors" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:bufferSize:limit:healthStore:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"queryDescriptors.count > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:bufferSize:limit:healthStore:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"healthStore" object:? file:? lineNumber:? description:?];
}

- (void)advanceWithError:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_state == HKMultiTypeSampleIteratorStateComplete" object:? file:? lineNumber:? description:?];
}

@end