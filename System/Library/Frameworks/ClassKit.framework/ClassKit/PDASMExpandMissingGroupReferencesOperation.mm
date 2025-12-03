@interface PDASMExpandMissingGroupReferencesOperation
- (BOOL)processResponseZone:(id)zone;
- (BOOL)wantsToExecute;
- (PDASMExpandMissingGroupReferencesOperation)initWithDatabase:(id)database;
- (id)generateFetchQueryForObjectIDs:(id)ds;
- (id)requestData;
@end

@implementation PDASMExpandMissingGroupReferencesOperation

- (PDASMExpandMissingGroupReferencesOperation)initWithDatabase:(id)database
{
  v7.receiver = self;
  v7.super_class = PDASMExpandMissingGroupReferencesOperation;
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
  database = [(PDOperation *)self database];
  v3 = [database count:objc_opt_class() where:0 bindings:0];

  return v3 > 0;
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    data = 0;
  }

  else
  {
    database = [(PDOperation *)self database];
    v5 = objc_autoreleasePoolPush();
    v6 = sub_1000BA854(database);
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 72);
    }

    else
    {
      v8 = 0;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10015367C;
    v19[3] = &unk_100206340;
    v19[4] = self;
    [database selectAll:objc_opt_class() where:0 orderBy:0 limit:v8 offset:0 bindings:0 block:v19];

    objc_autoreleasePoolPop(v5);
    if ([*(&self->super._personsRequiringFilterProcessing + 2) count])
    {
      v9 = objc_alloc_init(PDDPEESearchRequest);
      v10 = [(PDASMExpandMissingGroupReferencesOperation *)self generateFetchQueryForObjectIDs:*(&self->super._personsRequiringFilterProcessing + 2)];
      v11 = sub_100084798(13);
      v12 = [(PDASMSearchOperation *)self createSearchRequestZoneForZoneName:v11 usingQuery:v10];

      [(PDDPEESearchRequest *)v9 addSearchRequestZones:v12];
      CLSInitLog();
      logSubsystem = [(PDASMExpandMissingGroupReferencesOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_opt_class();
        v16 = v15;
        operationID = [(PDURLRequestOperation *)self operationID];
        dictionaryRepresentation = [(PDDPEESearchRequest *)v9 dictionaryRepresentation];
        *buf = 138543874;
        v21 = v15;
        v22 = 2114;
        v23 = operationID;
        v24 = 2114;
        v25 = dictionaryRepresentation;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Expand missing groups request: %{public}@", buf, 0x20u);
      }

      data = [(PDDPEESearchRequest *)v9 data];
    }

    else
    {
      data = 0;
    }
  }

  return data;
}

- (id)generateFetchQueryForObjectIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = objc_alloc_init(PDDPSearchQuery);
    [(PDDPSearchQuery *)v5 setType:3];
    v6 = [(PDASMSearchOperation *)self criteriaForFieldName:@"group_id" andValues:dsCopy withFormat:0];
    [(PDDPSearchQuery *)v5 setCriteria:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)processResponseZone:(id)zone
{
  zoneCopy = zone;
  status = [zoneCopy status];
  code = [status code];

  if (code == 1 && [*(&self->super._personsRequiringFilterProcessing + 2) count])
  {
    v7 = [PDDatabase whereSQLForArray:*(&self->super._personsRequiringFilterProcessing + 2) prefix:@"objectID in "];
    database = [(PDOperation *)self database];
    [database deleteAll:objc_opt_class() where:v7 bindings:*(&self->super._personsRequiringFilterProcessing + 2)];
  }

  v11.receiver = self;
  v11.super_class = PDASMExpandMissingGroupReferencesOperation;
  v9 = [(PDASMSearchOperation *)&v11 processResponseZone:zoneCopy];

  return v9;
}

@end