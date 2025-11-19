@interface MZKeyValueStoreDeserializer
+ (BOOL)validateDataFromSuccessfulSetTransaction:(id)a3 forKey:(id)a4;
+ (unint64_t)responseTypeForTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 mismatch:(BOOL)a6;
- (MZKeyValueStoreDeserializeOperationDelegate)delegate;
- (MZKeyValueStoreDeserializer)initWithTransaction:(id)a3 response:(id)a4;
- (NSError)requestError;
- (void)_delegateOperationDidFinish;
- (void)deserialize;
- (void)finishedDeserializationForKey:(id)a3;
- (void)mergeData:(id)a3 forKey:(id)a4 version:(id)a5 mismatch:(BOOL)a6 finishedBlock:(id)a7;
@end

@implementation MZKeyValueStoreDeserializer

- (MZKeyValueStoreDeserializer)initWithTransaction:(id)a3 response:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MZKeyValueStoreDeserializer;
  v9 = [(MZKeyValueStoreDeserializer *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableArray);
    pendingDeserializations = v9->_pendingDeserializations;
    v9->_pendingDeserializations = v10;

    objc_storeStrong(&v9->_transaction, a3);
    objc_storeStrong(&v9->_serverResponse, a4);
    v12 = [v8 valueForKey:@"status"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 integerValue];
      v9->_status = v14;
      if (v14 == 1197)
      {
        v15 = [v8 objectForKey:@"retry-seconds"];
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
  v3 = [(MZKeyValueStoreDeserializer *)self serverResponse];
  v4 = [v3 valueForKey:@"values"];

  v5 = [(MZKeyValueStoreDeserializer *)self serverResponse];
  v6 = [v5 valueForKey:@"domain-version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v7 = [v6 stringValue];

    v6 = v7;
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
  v15 = [(MZKeyValueStoreDeserializer *)self transaction];
  v16 = [v15 processor];
  v17 = [(MZKeyValueStoreDeserializer *)self transaction];
  [v16 transaction:v17 willProcessResponseWithDomainVersion:v6];

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
          v26 = [v25 stringValue];

          v25 = v26;
        }

        v27 = [v23 valueForKey:@"value"];
        v28 = [v27 MZDataByInflatingWithGZip];
        v29 = [(MZKeyValueStoreDeserializer *)self versionMismatch];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000A1C2C;
        v39[3] = &unk_1004DAA00;
        v39[4] = self;
        v40 = v24;
        v30 = v24;
        [(MZKeyValueStoreDeserializer *)self mergeData:v28 forKey:v30 version:v25 mismatch:v29 finishedBlock:v39];
      }

      v18 = obj;
      v21 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v21);

    v31 = [(MZKeyValueStoreDeserializer *)self transaction];
    v32 = [v31 processor];
    v33 = [(MZKeyValueStoreDeserializer *)self transaction];
    [v32 transaction:v33 didProcessResponseWithDomainVersion:v6];

    v8 = v37;
  }

  else
  {

    v34 = [(MZKeyValueStoreDeserializer *)self transaction];
    v35 = [v34 processor];
    v36 = [(MZKeyValueStoreDeserializer *)self transaction];
    [v35 transaction:v36 didProcessResponseWithDomainVersion:v6];

    [(MZKeyValueStoreDeserializer *)self _delegateOperationDidFinish];
  }
}

- (void)mergeData:(id)a3 forKey:(id)a4 version:(id)a5 mismatch:(BOOL)a6 finishedBlock:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_opt_class();
  v17 = [(MZKeyValueStoreDeserializer *)self transaction];
  v18 = [v16 responseTypeForTransaction:v17 withData:v12 forKey:v13 mismatch:v8];

  if (v18 <= 1)
  {
    if (!v18)
    {
      v19 = [(MZKeyValueStoreDeserializer *)self transaction];
      v20 = [v19 processor];
      v21 = [(MZKeyValueStoreDeserializer *)self transaction];
      [v20 successfulGetTransaction:v21 withData:v12 forKey:v13 version:v14 finishedBlock:v15];
      goto LABEL_12;
    }

    if (v18 == 1)
    {
      v19 = [(MZKeyValueStoreDeserializer *)self transaction];
      v20 = [v19 processor];
      v21 = [(MZKeyValueStoreDeserializer *)self transaction];
      [v20 successfulSetTransaction:v21 withData:v12 forKey:v13 version:v14 finishedBlock:v15];
      goto LABEL_12;
    }
  }

  else
  {
    if ((v18 - 2) < 2)
    {
      v19 = [(MZKeyValueStoreDeserializer *)self transaction];
      v20 = [v19 processor];
      v21 = [(MZKeyValueStoreDeserializer *)self transaction];
      [v20 conflictForSetTransaction:v21 withData:v12 forKey:v13 version:v14 finishedBlock:v15];
LABEL_12:

      goto LABEL_13;
    }

    if (v18 == 4)
    {
      v22 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v23 = [(MZKeyValueStoreDeserializer *)self transaction];
        v24[0] = 67109376;
        v24[1] = [v23 type];
        v25 = 1024;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Unacceptable combination of transaction type (%d) and mismatch (%d). Shouldn't reach this branch.", v24, 0xEu);
      }

      v15[2](v15, 0);
    }
  }

LABEL_13:
}

+ (unint64_t)responseTypeForTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 mismatch:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v11 type];
  v13 = [v11 type];
  v14 = [v11 type];

  if (v13 != 2 || v6)
  {
    v15 = 4;
    if (v14 == 2 && v6)
    {
      v15 = 2;
    }
  }

  else if ([objc_opt_class() validateDataFromSuccessfulSetTransaction:v9 forKey:v10])
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (v12 != 1 || v6)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)validateDataFromSuccessfulSetTransaction:(id)a3 forKey:(id)a4
{
  v4 = [a3 length];
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

- (void)finishedDeserializationForKey:(id)a3
{
  v8 = a3;
  v4 = self->_pendingDeserializations;
  objc_sync_enter(v4);
  v5 = [(MZKeyValueStoreDeserializer *)self pendingDeserializations];
  [v5 removeObjectIdenticalTo:v8];

  v6 = [(MZKeyValueStoreDeserializer *)self pendingDeserializations];
  v7 = [v6 count];

  if (!v7)
  {
    [(MZKeyValueStoreDeserializer *)self _delegateOperationDidFinish];
  }

  objc_sync_exit(v4);
}

- (void)_delegateOperationDidFinish
{
  v7 = self;
  if ([(MZKeyValueStoreDeserializer *)v7 versionMismatch])
  {
    v2 = v7;
    if (!v7->_isDirty)
    {
      v4 = 0;
      goto LABEL_10;
    }

    v3 = [(MZKeyValueStoreDeserializer *)v7 transaction];
    if ([v3 type] == 2)
    {
      v4 = 1;
    }

    else
    {
      v5 = [(MZKeyValueStoreDeserializer *)v7 transaction];
      v4 = [v5 type] == 3;
    }
  }

  else
  {
    v4 = 0;
  }

  v2 = v7;
LABEL_10:
  v6 = [(MZKeyValueStoreDeserializer *)v2 delegate];
  [v6 deserializeOperationDidFinish:v7 shouldReschedule:v4];
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