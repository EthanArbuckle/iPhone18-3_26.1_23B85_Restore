@interface MZKeyValueStoreDeserializer
+ (BOOL)validateDataFromSuccessfulSetTransaction:(id)transaction forKey:(id)key;
+ (unint64_t)responseTypeForTransaction:(id)transaction withData:(id)data forKey:(id)key mismatch:(BOOL)mismatch;
- (MZKeyValueStoreDeserializeOperationDelegate)delegate;
- (MZKeyValueStoreDeserializer)initWithTransaction:(id)transaction response:(id)response;
- (NSError)requestError;
- (void)_delegateOperationDidFinish;
- (void)deserialize;
- (void)finishedDeserializationForKey:(id)key;
- (void)mergeData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch finishedBlock:(id)block;
@end

@implementation MZKeyValueStoreDeserializer

- (MZKeyValueStoreDeserializer)initWithTransaction:(id)transaction response:(id)response
{
  transactionCopy = transaction;
  responseCopy = response;
  v17.receiver = self;
  v17.super_class = MZKeyValueStoreDeserializer;
  v9 = [(MZKeyValueStoreDeserializer *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableArray);
    pendingDeserializations = v9->_pendingDeserializations;
    v9->_pendingDeserializations = v10;

    objc_storeStrong(&v9->_transaction, transaction);
    objc_storeStrong(&v9->_serverResponse, response);
    v12 = [responseCopy valueForKey:@"status"];
    v13 = v12;
    if (v12)
    {
      integerValue = [v12 integerValue];
      v9->_status = integerValue;
      if (integerValue == 1197)
      {
        v15 = [responseCopy objectForKey:@"retry-seconds"];
        v9->_retrySeconds = [v15 unsignedIntegerValue];
      }
    }

    else
    {
      v9->_status = -1;
    }
  }

  return v9;
}

- (void)deserialize
{
  self->_isDirty = 0;
  serverResponse = [(MZKeyValueStoreDeserializer *)self serverResponse];
  v4 = [serverResponse valueForKey:@"values"];

  serverResponse2 = [(MZKeyValueStoreDeserializer *)self serverResponse];
  v6 = [serverResponse2 valueForKey:@"domain-version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    stringValue = [v6 stringValue];

    v6 = stringValue;
  }

  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v45 + 1) + 8 * i) valueForKey:@"key"];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v11);
  }

  [(MZKeyValueStoreDeserializer *)self setPendingDeserializations:v8];
  transaction = [(MZKeyValueStoreDeserializer *)self transaction];
  processor = [transaction processor];
  transaction2 = [(MZKeyValueStoreDeserializer *)self transaction];
  [processor transaction:transaction2 willProcessResponseWithDomainVersion:v6];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v19)
  {
    v37 = v8;
    v20 = *v42;
    v21 = v19;
    obj = v18;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v41 + 1) + 8 * j);
        v24 = [v23 valueForKey:@"key"];
        v25 = [v23 valueForKey:@"version"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
        {
          stringValue2 = [v25 stringValue];

          v25 = stringValue2;
        }

        v27 = [v23 valueForKey:@"value"];
        mZDataByInflatingWithGZip = [v27 MZDataByInflatingWithGZip];
        versionMismatch = [(MZKeyValueStoreDeserializer *)self versionMismatch];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000A1C2C;
        v39[3] = &unk_1004DAA00;
        v39[4] = self;
        v40 = v24;
        v30 = v24;
        [(MZKeyValueStoreDeserializer *)self mergeData:mZDataByInflatingWithGZip forKey:v30 version:v25 mismatch:versionMismatch finishedBlock:v39];
      }

      v18 = obj;
      v21 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v21);

    transaction3 = [(MZKeyValueStoreDeserializer *)self transaction];
    processor2 = [transaction3 processor];
    transaction4 = [(MZKeyValueStoreDeserializer *)self transaction];
    [processor2 transaction:transaction4 didProcessResponseWithDomainVersion:v6];

    v8 = v37;
  }

  else
  {

    transaction5 = [(MZKeyValueStoreDeserializer *)self transaction];
    processor3 = [transaction5 processor];
    transaction6 = [(MZKeyValueStoreDeserializer *)self transaction];
    [processor3 transaction:transaction6 didProcessResponseWithDomainVersion:v6];

    [(MZKeyValueStoreDeserializer *)self _delegateOperationDidFinish];
  }
}

- (void)mergeData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch finishedBlock:(id)block
{
  mismatchCopy = mismatch;
  dataCopy = data;
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  v16 = objc_opt_class();
  transaction = [(MZKeyValueStoreDeserializer *)self transaction];
  v18 = [v16 responseTypeForTransaction:transaction withData:dataCopy forKey:keyCopy mismatch:mismatchCopy];

  if (v18 <= 1)
  {
    if (!v18)
    {
      transaction2 = [(MZKeyValueStoreDeserializer *)self transaction];
      processor = [transaction2 processor];
      transaction3 = [(MZKeyValueStoreDeserializer *)self transaction];
      [processor successfulGetTransaction:transaction3 withData:dataCopy forKey:keyCopy version:versionCopy finishedBlock:blockCopy];
      goto LABEL_12;
    }

    if (v18 == 1)
    {
      transaction2 = [(MZKeyValueStoreDeserializer *)self transaction];
      processor = [transaction2 processor];
      transaction3 = [(MZKeyValueStoreDeserializer *)self transaction];
      [processor successfulSetTransaction:transaction3 withData:dataCopy forKey:keyCopy version:versionCopy finishedBlock:blockCopy];
      goto LABEL_12;
    }
  }

  else
  {
    if ((v18 - 2) < 2)
    {
      transaction2 = [(MZKeyValueStoreDeserializer *)self transaction];
      processor = [transaction2 processor];
      transaction3 = [(MZKeyValueStoreDeserializer *)self transaction];
      [processor conflictForSetTransaction:transaction3 withData:dataCopy forKey:keyCopy version:versionCopy finishedBlock:blockCopy];
LABEL_12:

      goto LABEL_13;
    }

    if (v18 == 4)
    {
      v22 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        transaction4 = [(MZKeyValueStoreDeserializer *)self transaction];
        v24[0] = 67109376;
        v24[1] = [transaction4 type];
        v25 = 1024;
        v26 = mismatchCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Unacceptable combination of transaction type (%d) and mismatch (%d). Shouldn't reach this branch.", v24, 0xEu);
      }

      blockCopy[2](blockCopy, 0);
    }
  }

LABEL_13:
}

+ (unint64_t)responseTypeForTransaction:(id)transaction withData:(id)data forKey:(id)key mismatch:(BOOL)mismatch
{
  mismatchCopy = mismatch;
  dataCopy = data;
  keyCopy = key;
  transactionCopy = transaction;
  type = [transactionCopy type];
  type2 = [transactionCopy type];
  type3 = [transactionCopy type];

  if (type2 != 2 || mismatchCopy)
  {
    v15 = 4;
    if (type3 == 2 && mismatchCopy)
    {
      v15 = 2;
    }
  }

  else if ([objc_opt_class() validateDataFromSuccessfulSetTransaction:dataCopy forKey:keyCopy])
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (type != 1 || mismatchCopy)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)validateDataFromSuccessfulSetTransaction:(id)transaction forKey:(id)key
{
  v4 = [transaction length];
  if (v4)
  {
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Responses to successful SET transactions with mismatch=NO shouldn't return any data", v7, 2u);
    }
  }

  return v4 == 0;
}

- (void)finishedDeserializationForKey:(id)key
{
  keyCopy = key;
  v4 = self->_pendingDeserializations;
  objc_sync_enter(v4);
  pendingDeserializations = [(MZKeyValueStoreDeserializer *)self pendingDeserializations];
  [pendingDeserializations removeObjectIdenticalTo:keyCopy];

  pendingDeserializations2 = [(MZKeyValueStoreDeserializer *)self pendingDeserializations];
  v7 = [pendingDeserializations2 count];

  if (!v7)
  {
    [(MZKeyValueStoreDeserializer *)self _delegateOperationDidFinish];
  }

  objc_sync_exit(v4);
}

- (void)_delegateOperationDidFinish
{
  selfCopy = self;
  if ([(MZKeyValueStoreDeserializer *)selfCopy versionMismatch])
  {
    v2 = selfCopy;
    if (!selfCopy->_isDirty)
    {
      v4 = 0;
      goto LABEL_10;
    }

    transaction = [(MZKeyValueStoreDeserializer *)selfCopy transaction];
    if ([transaction type] == 2)
    {
      v4 = 1;
    }

    else
    {
      transaction2 = [(MZKeyValueStoreDeserializer *)selfCopy transaction];
      v4 = [transaction2 type] == 3;
    }
  }

  else
  {
    v4 = 0;
  }

  v2 = selfCopy;
LABEL_10:
  delegate = [(MZKeyValueStoreDeserializer *)v2 delegate];
  [delegate deserializeOperationDidFinish:selfCopy shouldReschedule:v4];
}

- (NSError)requestError
{
  if ([(MZKeyValueStoreDeserializer *)self success])
  {
    v3 = 0;
  }

  else
  {
    v4 = &qword_1004DA840;
    do
    {
      v6 = *v4;
      v4 += 4;
      v5 = v6;
    }

    while (v6 != -9999 && v5 != self->_status);
    v8 = *(v4 - 2);
    if (*(v4 - 1))
    {
      v9 = @" Please enable logging and file a bug.";
    }

    else
    {
      v9 = &stru_1004F3018;
    }

    v10 = [NSString stringWithFormat:@"%@ (status = %d)%@", v8, self->_status, v9];
    v11 = [NSDictionary dictionaryWithObjectsAndKeys:v10, NSLocalizedDescriptionKey, 0];
    v3 = [[NSError alloc] initWithDomain:@"MZBookkeeperRequestErrorDomain" code:self->_status userInfo:v11];
  }

  return v3;
}

- (MZKeyValueStoreDeserializeOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end