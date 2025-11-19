@interface PDCollectionSearchOperation
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (BOOL)wantsToExecute;
- (PDCollectionSearchOperation)initWithDatabase:(id)a3;
- (id)createCollectionQueryRequest;
- (id)createHandoutQueryRequest;
- (id)initForCollectionItemsWithDatabase:(id)a3;
- (id)initForCollectionsWithDatabase:(id)a3;
- (id)requestData;
- (void)execute;
@end

@implementation PDCollectionSearchOperation

- (PDCollectionSearchOperation)initWithDatabase:(id)a3
{
  v4.receiver = self;
  v4.super_class = PDCollectionSearchOperation;
  result = [(PDURLRequestOperation *)&v4 initWithDatabase:a3];
  if (result)
  {
    BYTE3(result->super.super._responseStatusError) = 1;
  }

  return result;
}

- (id)initForCollectionsWithDatabase:(id)a3
{
  v4.receiver = self;
  v4.super_class = PDCollectionSearchOperation;
  result = [(PDURLRequestOperation *)&v4 initWithDatabase:a3];
  if (result)
  {
    *(result + 231) = 0;
    *(result + 227) = 1;
  }

  return result;
}

- (id)initForCollectionItemsWithDatabase:(id)a3
{
  v4.receiver = self;
  v4.super_class = PDCollectionSearchOperation;
  result = [(PDURLRequestOperation *)&v4 initWithDatabase:a3];
  if (result)
  {
    *(result + 231) = 1;
    *(result + 227) = 1;
  }

  return result;
}

- (id)requestData
{
  v3 = *(&self->super.super._responseStatusError + 7);
  if (v3 == 1)
  {
    v4 = [(PDCollectionSearchOperation *)self createHandoutQueryRequest];
LABEL_5:
    v5 = v4;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!v3)
  {
    v4 = [(PDCollectionSearchOperation *)self createCollectionQueryRequest];
    goto LABEL_5;
  }

LABEL_6:
  [(PDEndpointRequestOperation *)self markAsFinished];
  v5 = 0;
LABEL_7:
  v6 = [v5 data];

  return v6;
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(PDOperation *)self isAborted])
  {
    v7 = 0;
  }

  else
  {
    CLSInitLog();
    v8 = [(PDCollectionSearchOperation *)self logSubsystem];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ processing response;", buf, 0x16u);
    }

    v12 = [v6 queryPayloads];
    v13 = [v12 count];
    v14 = [(PDURLRequestOperation *)self stats];
    if (v14)
    {
      v14[15] = v13;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = sub_10004F3E8;
    v24 = sub_10004F3F8;
    v25 = 0;
    v15 = [(PDOperation *)self database];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004F400;
    v19[3] = &unk_100203110;
    v19[4] = self;
    v16 = v12;
    v20 = v16;
    v21 = buf;
    if (v15)
    {
      v7 = [v15 performTransaction:v19 forWriting:1];
    }

    else
    {
      v7 = 0;
    }

    v17 = *(*&buf[8] + 40);
    if (v17)
    {
      v7 = 0;
      if (a4)
      {
        *a4 = v17;
      }
    }

    _Block_object_dispose(buf, 8);
  }

  return v7;
}

- (void)execute
{
  v3.receiver = self;
  v3.super_class = PDCollectionSearchOperation;
  [(PDEndpointRequestOperation *)&v3 execute];
  BYTE3(self->super.super._responseStatusError) = 0;
}

- (BOOL)wantsToExecute
{
  if (*(&self->super.super._responseStatusError + 7) != 1)
  {
    return BYTE3(self->super.super._responseStatusError);
  }

  v2 = [(PDOperation *)self database];
  v3 = sub_1000D6984(v2);

  return v3;
}

- (id)createCollectionQueryRequest
{
  v3 = objc_alloc_init(PDDPQueryRequest);
  v4 = objc_alloc_init(PDDPSchoolworkQueryZone);
  v5 = [(PDEndpointRequestOperation *)self endpointInfo];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
  }

  [(PDDPSchoolworkQueryZone *)v4 setLimit:v7];

  [(PDDPSchoolworkQueryZone *)v4 setZoneName:@"collections"];
  [(PDDPQueryRequest *)v3 setQueryZone:v4];
  [(PDDPQueryRequest *)v3 setIncludeChildren:1];
  v8 = objc_alloc_init(PDDPSchoolworkSearchQuery);
  [(PDDPSchoolworkSearchQuery *)v8 setType:3];
  v9 = objc_alloc_init(PDDPSchoolworkSearchQuery);
  [(PDDPSchoolworkSearchQuery *)v9 setType:3];
  v10 = objc_alloc_init(PDDPSchoolworkSearchCriteria);
  [(PDDPSchoolworkSearchCriteria *)v10 setFieldName:@"record_type"];
  [(PDDPSchoolworkSearchCriteria *)v10 setSearchOperator:2];
  v11 = objc_alloc_init(PDDPTypedValue);
  [(PDDPTypedValue *)v11 setStringValue:@"collection"];
  [(PDDPTypedValue *)v11 setType:1];
  [(PDDPSchoolworkSearchCriteria *)v10 setValue:v11];
  [(PDDPSchoolworkSearchQuery *)v9 setCriteria:v10];
  [(PDDPSchoolworkSearchQuery *)v8 addContents:v9];
  [(PDDPQueryRequest *)v3 setFilterQuery:v8];

  return v3;
}

- (id)createHandoutQueryRequest
{
  v3 = [(PDOperation *)self database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10004F3E8;
  v16 = sub_10004F3F8;
  v17 = 0;
  v4 = objc_opt_class();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004FB30;
  v8[3] = &unk_100203138;
  v5 = v3;
  v10 = self;
  v11 = &v12;
  v9 = v5;
  [v5 selectAll:v4 where:@"type in (? bindings:?)" block:{&off_10021B970, v8}];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

@end