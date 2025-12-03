@interface PDASMFetchMissingEntitiesOperation
- (BOOL)processResponseZone:(id)zone;
- (BOOL)wantsToExecute;
- (PDASMFetchMissingEntitiesOperation)initWithDatabase:(id)database;
- (id)generateFetchQueryForZoneName:(id)name forObjectIDs:(id)ds;
- (id)requestData;
- (id)zoneNamesWithMissingEntities;
- (void)addFilterQueryForZoneNamed:(id)named toSearchRequest:(id)request;
@end

@implementation PDASMFetchMissingEntitiesOperation

- (PDASMFetchMissingEntitiesOperation)initWithDatabase:(id)database
{
  v7.receiver = self;
  v7.super_class = PDASMFetchMissingEntitiesOperation;
  v3 = [(PDASMSearchOperation *)&v7 initWithDatabase:database];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = *(v3 + 314);
    *(v3 + 314) = v4;
  }

  return v3;
}

- (BOOL)wantsToExecute
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v12[0] = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v12[1] = v6;
  v7 = [NSArray arrayWithObjects:v12 count:2];

  v8 = [PDDatabase whereSQLForArray:v7 prefix:@"entityName in "];
  database = [(PDOperation *)self database];
  v10 = [database count:objc_opt_class() where:v8 bindings:v7];

  return v10 > 0;
}

- (id)zoneNamesWithMissingEntities
{
  v3 = objc_opt_new();
  database = [(PDOperation *)self database];
  v5 = objc_opt_class();
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10009B944;
  v20 = &unk_100204060;
  selfCopy = self;
  v6 = v3;
  v22 = v6;
  [database selectAll:v5 block:&v17];
  v7 = sub_100084798(6);
  v8 = [v6 containsObject:{v7, v17, v18, v19, v20, selfCopy}];

  if (v8)
  {
    v9 = sub_100084798(7);
    [v6 addObject:v9];
    missingIDsByClass = [(PDASMFetchMissingEntitiesOperation *)self missingIDsByClass];
    v11 = sub_100084798(6);
    v12 = [missingIDsByClass objectForKeyedSubscript:v11];
    missingIDsByClass2 = [(PDASMFetchMissingEntitiesOperation *)self missingIDsByClass];
    [missingIDsByClass2 setObject:v12 forKeyedSubscript:v9];
  }

  v14 = v22;
  v15 = v6;

  return v6;
}

- (void)addFilterQueryForZoneNamed:(id)named toSearchRequest:(id)request
{
  namedCopy = named;
  requestCopy = request;
  missingIDsByClass = [(PDASMFetchMissingEntitiesOperation *)self missingIDsByClass];
  v9 = [missingIDsByClass objectForKeyedSubscript:namedCopy];

  v10 = [(PDASMFetchMissingEntitiesOperation *)self generateFetchQueryForZoneName:namedCopy forObjectIDs:v9];
  v11 = [(PDASMSearchOperation *)self createSearchRequestZoneForZoneName:namedCopy usingQuery:v10];
  if (v10)
  {
    CLSInitLog();
    logSubsystem = [(PDASMFetchMissingEntitiesOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = v13;
      operationID = [(PDURLRequestOperation *)self operationID];
      dictionaryRepresentation = [v11 dictionaryRepresentation];
      v17 = 138544386;
      v18 = v13;
      v19 = 2114;
      v20 = operationID;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = namedCopy;
      v25 = 2112;
      v26 = dictionaryRepresentation;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Detected missing IDs: %{public}@ for zone %{public}@ query: %@", &v17, 0x34u);
    }

    [requestCopy addSearchRequestZones:v11];
  }
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    data = 0;
  }

  else
  {
    v4 = objc_alloc_init(PDDPEESearchRequest);
    zoneNamesWithMissingEntities = [(PDASMFetchMissingEntitiesOperation *)self zoneNamesWithMissingEntities];
    if ([*(&self->super._personsRequiringFilterProcessing + 2) count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = zoneNamesWithMissingEntities;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(PDASMFetchMissingEntitiesOperation *)self addFilterQueryForZoneNamed:*(*(&v17 + 1) + 8 * i) toSearchRequest:v4, v17];
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
        }

        while (v8);
      }

      CLSInitLog();
      logSubsystem = [(PDASMFetchMissingEntitiesOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = v13;
        operationID = [(PDURLRequestOperation *)self operationID];
        dictionaryRepresentation = [(PDDPEESearchRequest *)v4 dictionaryRepresentation];
        *buf = 138543874;
        v22 = v13;
        v23 = 2114;
        v24 = operationID;
        v25 = 2114;
        v26 = dictionaryRepresentation;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Fetch missing request: %{public}@", buf, 0x20u);
      }

      data = [(PDDPEESearchRequest *)v4 data];
    }

    else
    {
      data = 0;
    }
  }

  return data;
}

- (id)generateFetchQueryForZoneName:(id)name forObjectIDs:(id)ds
{
  nameCopy = name;
  dsCopy = ds;
  if (![dsCopy count])
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = objc_alloc_init(PDDPSearchQuery);
  [(PDDPSearchQuery *)v8 setType:3];
  v9 = sub_100084798(6);
  if (!(nameCopy | v9))
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = sub_100084798(6);
  v12 = v11;
  if (nameCopy && v11)
  {
    v13 = sub_100084798(6);
    v14 = [v13 isEqualToString:nameCopy];

    if (v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v15 = sub_100084798(7);
  if (nameCopy | v15)
  {
    v19 = v15;
    v20 = sub_100084798(7);
    v21 = v20;
    if (nameCopy && v20)
    {
      v22 = sub_100084798(7);
      v23 = [v22 isEqualToString:nameCopy];

      if (v23)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v16 = @"person_id";
    goto LABEL_11;
  }

LABEL_10:
  v16 = @"class_id";
LABEL_11:
  v17 = [(PDASMSearchOperation *)self criteriaForFieldName:v16 andValues:dsCopy withFormat:0];
  [(PDDPSearchQuery *)v8 setCriteria:v17];

LABEL_12:

  return v8;
}

- (BOOL)processResponseZone:(id)zone
{
  zoneCopy = zone;
  status = [zoneCopy status];
  code = [status code];

  if (code == 1)
  {
    missingIDsByClass = [(PDASMFetchMissingEntitiesOperation *)self missingIDsByClass];
    zoneName = [zoneCopy zoneName];
    v9 = [missingIDsByClass objectForKeyedSubscript:zoneName];

    if ([v9 count])
    {
      v10 = [PDDatabase whereSQLForArray:v9 prefix:@"entityId in "];
      database = [(PDOperation *)self database];
      [database deleteAll:objc_opt_class() where:v10 bindings:v9];
    }
  }

  v14.receiver = self;
  v14.super_class = PDASMFetchMissingEntitiesOperation;
  v12 = [(PDASMSearchOperation *)&v14 processResponseZone:zoneCopy];

  return v12;
}

@end