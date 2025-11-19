@interface PDASMExpandMissingGroupReferencesOperation
- (BOOL)processResponseZone:(id)a3;
- (BOOL)wantsToExecute;
- (PDASMExpandMissingGroupReferencesOperation)initWithDatabase:(id)a3;
- (id)generateFetchQueryForObjectIDs:(id)a3;
- (id)requestData;
@end

@implementation PDASMExpandMissingGroupReferencesOperation

- (PDASMExpandMissingGroupReferencesOperation)initWithDatabase:(id)a3
{
  v7.receiver = self;
  v7.super_class = PDASMExpandMissingGroupReferencesOperation;
  v3 = [(PDASMSearchOperation *)&v7 initWithDatabase:a3];
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
  v2 = [(PDOperation *)self database];
  v3 = [v2 count:objc_opt_class() where:0 bindings:0];

  return v3 > 0;
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PDOperation *)self database];
    v5 = objc_autoreleasePoolPush();
    v6 = sub_1000BA854(v4);
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
    [v4 selectAll:objc_opt_class() where:0 orderBy:0 limit:v8 offset:0 bindings:0 block:v19];

    objc_autoreleasePoolPop(v5);
    if ([*(&self->super._personsRequiringFilterProcessing + 2) count])
    {
      v9 = objc_alloc_init(PDDPEESearchRequest);
      v10 = [(PDASMExpandMissingGroupReferencesOperation *)self generateFetchQueryForObjectIDs:*(&self->super._personsRequiringFilterProcessing + 2)];
      v11 = sub_100084798(13);
      v12 = [(PDASMSearchOperation *)self createSearchRequestZoneForZoneName:v11 usingQuery:v10];

      [(PDDPEESearchRequest *)v9 addSearchRequestZones:v12];
      CLSInitLog();
      v13 = [(PDASMExpandMissingGroupReferencesOperation *)self logSubsystem];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_opt_class();
        v16 = v15;
        v17 = [(PDURLRequestOperation *)self operationID];
        v18 = [(PDDPEESearchRequest *)v9 dictionaryRepresentation];
        *buf = 138543874;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        v24 = 2114;
        v25 = v18;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Expand missing groups request: %{public}@", buf, 0x20u);
      }

      v3 = [(PDDPEESearchRequest *)v9 data];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)generateFetchQueryForObjectIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(PDDPSearchQuery);
    [(PDDPSearchQuery *)v5 setType:3];
    v6 = [(PDASMSearchOperation *)self criteriaForFieldName:@"group_id" andValues:v4 withFormat:0];
    [(PDDPSearchQuery *)v5 setCriteria:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)processResponseZone:(id)a3
{
  v4 = a3;
  v5 = [v4 status];
  v6 = [v5 code];

  if (v6 == 1 && [*(&self->super._personsRequiringFilterProcessing + 2) count])
  {
    v7 = [PDDatabase whereSQLForArray:*(&self->super._personsRequiringFilterProcessing + 2) prefix:@"objectID in "];
    v8 = [(PDOperation *)self database];
    [v8 deleteAll:objc_opt_class() where:v7 bindings:*(&self->super._personsRequiringFilterProcessing + 2)];
  }

  v11.receiver = self;
  v11.super_class = PDASMExpandMissingGroupReferencesOperation;
  v9 = [(PDASMSearchOperation *)&v11 processResponseZone:v4];

  return v9;
}

@end