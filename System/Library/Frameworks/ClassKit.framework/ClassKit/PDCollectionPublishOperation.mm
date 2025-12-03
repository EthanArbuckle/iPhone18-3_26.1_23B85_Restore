@interface PDCollectionPublishOperation
- (BOOL)wantsToExecute;
- (PDCollectionPublishOperation)initWithDatabase:(id)database;
- (PDCollectionPublishOperation)initWithDatabase:(id)database andObjectsToDelete:(id)delete;
- (id)createPayloadForDeletingCollection:(id)collection;
- (id)createPayloadForDeletingCollectionItem:(id)item;
- (id)requestData;
- (void)execute;
@end

@implementation PDCollectionPublishOperation

- (PDCollectionPublishOperation)initWithDatabase:(id)database
{
  v4.receiver = self;
  v4.super_class = PDCollectionPublishOperation;
  result = [(PDURLRequestOperation *)&v4 initWithDatabase:database];
  if (result)
  {
    BYTE3(result->super.super._responseStatusError) = 1;
  }

  return result;
}

- (PDCollectionPublishOperation)initWithDatabase:(id)database andObjectsToDelete:(id)delete
{
  deleteCopy = delete;
  v7 = [(PDCollectionPublishOperation *)self initWithDatabase:database];
  if (v7)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = deleteCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v8 addObject:{v14, v18}];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    v16 = *(&v7->super._responseStatusPayloadFailed + 3);
    *(&v7->super._responseStatusPayloadFailed + 3) = v15;

    BYTE3(v7->super.super._responseStatusError) = 1;
  }

  return v7;
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    goto LABEL_31;
  }

  if (!*(&self->super._responseStatusPayloadFailed + 3))
  {
    [(PDEndpointRequestOperation *)self markAsFinished];
LABEL_31:
    immutableData = 0;
    goto LABEL_32;
  }

  v3 = objc_alloc_init(PDDPPublishCollectionRequest);
  v4 = objc_alloc_init(PBDataWriter);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(&self->super._responseStatusPayloadFailed + 3);
  v5 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v5)
  {
    v7 = v5;
    v35 = *v37;
    *&v6 = 138543874;
    v31 = v6;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v37 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v36 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [(PDCollectionPublishOperation *)self createPayloadForDeletingCollection:v9];
      }

      else
      {
        v11 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(PDCollectionPublishOperation *)self createPayloadForDeletingCollectionItem:v9];

        v11 = v12;
      }

      [(PDDPPublishCollectionRequest *)v3 addPayload:v11, v31];
      [(PDDPPublishCollectionRequest *)v3 writeTo:v4];
      [(PDDPPublishCollectionRequest *)v3 clearPayloads];
      data = [v4 data];
      v14 = [data length];
      stats = [(PDURLRequestOperation *)self stats];
      if (stats)
      {
        stats[10] = v14;
      }

      stats2 = [(PDURLRequestOperation *)self stats];
      if (stats2)
      {
        ++stats2[14];
      }

      CLSInitLog();
      logSubsystem = [(PDCollectionPublishOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
      {
        v25 = objc_opt_class();
        v33 = v25;
        [(PDURLRequestOperation *)self operationID];
        v26 = v32 = v7;
        dictionaryRepresentation = [v11 dictionaryRepresentation];
        *buf = v31;
        v41 = v25;
        v42 = 2114;
        v43 = v26;
        v44 = 2112;
        v45 = dictionaryRepresentation;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);

        v7 = v32;
      }

      objc_autoreleasePoolPop(v10);
      stats3 = [(PDURLRequestOperation *)self stats];
      v19 = stats3;
      v20 = stats3 ? *(stats3 + 80) : 0;
      stats4 = [(PDURLRequestOperation *)self stats];
      v22 = stats4;
      v23 = stats4 ? *(stats4 + 112) : 0;
      v24 = [(PDEndpointRequestOperation *)self hasReachedRequestPayloadLimitBytes:v20 count:v23];

      if (v24)
      {
        break;
      }

      if (v7 == ++v8)
      {
        v28 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
        v7 = v28;
        if (v28)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  immutableData = [v4 immutableData];

LABEL_32:

  return immutableData;
}

- (void)execute
{
  v3.receiver = self;
  v3.super_class = PDCollectionPublishOperation;
  [(PDEndpointRequestOperation *)&v3 execute];
  BYTE3(self->super.super._responseStatusError) = 0;
}

- (BOOL)wantsToExecute
{
  result = 0;
  if (BYTE3(self->super.super._responseStatusError) == 1)
  {
    v4 = *(&self->super._responseStatusPayloadFailed + 3);
    if (v4)
    {
      if ([v4 count])
      {
        return 1;
      }
    }
  }

  return result;
}

- (id)createPayloadForDeletingCollectionItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v4 setAction:3];
  [(PDDPPayload *)v4 setType:21];
  v5 = sub_10001D56C(itemCopy);

  [(PDDPPayload *)v4 setCollectionItem:v5];

  return v4;
}

- (id)createPayloadForDeletingCollection:(id)collection
{
  collectionCopy = collection;
  v4 = objc_alloc_init(PDDPPayload);
  [(PDDPPayload *)v4 setAction:3];
  [(PDDPPayload *)v4 setType:20];
  v5 = sub_10001CE94(collectionCopy);

  [(PDDPPayload *)v4 setCollection:v5];

  return v4;
}

@end