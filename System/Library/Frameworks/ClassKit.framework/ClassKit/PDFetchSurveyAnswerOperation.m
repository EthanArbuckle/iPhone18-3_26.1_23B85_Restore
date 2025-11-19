@interface PDFetchSurveyAnswerOperation
- (BOOL)_deleteAnswersWithSurveyIDs:(id)a3;
- (BOOL)processPayloadStatus:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5;
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (id)requestData;
@end

@implementation PDFetchSurveyAnswerOperation

- (id)requestData
{
  v3 = *(&self->super._responseStatusPayloadFailed + 3);
  if (v3 && [v3 count] || (v4 = *(&self->super.super._responseStatusError + 3)) != 0 && objc_msgSend(v4, "count"))
  {
    v30 = objc_alloc_init(PDDPQueryRequest);
    v5 = [*(&self->super._responseStatusPayloadFailed + 3) firstObject];
    v6 = [(PDOperation *)self database];
    v29 = v5;
    v7 = sub_1000C8950(v6, v5);

    if ([v7 count])
    {
      v8 = objc_alloc_init(PDDPSchoolworkQueryZone);
      v9 = [(PDEndpointRequestOperation *)self endpointInfo];
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 64);
      }

      else
      {
        v11 = 0;
      }

      [(PDDPSchoolworkQueryZone *)v8 setLimit:v11];

      v12 = [v7 firstObject];
      v13 = [NSString stringWithFormat:@"%@-%@", @"Class-Answer", v12];

      v28 = v13;
      [(PDDPSchoolworkQueryZone *)v8 setZoneName:v13];
      [(PDDPQueryRequest *)v30 setQueryZone:v8];
      v14 = objc_alloc_init(PDDPSchoolworkSearchQuery);
      [(PDDPSchoolworkSearchQuery *)v14 setType:1];
      if (*(&self->super._responseStatusPayloadFailed + 3))
      {
        v15 = objc_alloc_init(PDDPSchoolworkSearchQuery);
        [(PDDPSchoolworkSearchQuery *)v15 setType:3];
        v16 = objc_alloc_init(PDDPSchoolworkSearchCriteria);
        [(PDDPSchoolworkSearchCriteria *)v16 setFieldName:@"survey_id"];
        [(PDDPSchoolworkSearchCriteria *)v16 setSearchOperator:7];
        v17 = objc_alloc_init(PDDPTypedValue);
        v18 = [*(&self->super._responseStatusPayloadFailed + 3) mutableCopy];
        [(PDDPTypedValue *)v17 setStringListValues:v18];

        [(PDDPTypedValue *)v17 setType:2];
        [(PDDPSchoolworkSearchCriteria *)v16 setValue:v17];
        [(PDDPSchoolworkSearchQuery *)v15 setCriteria:v16];
        [(PDDPSchoolworkSearchQuery *)v14 addContents:v15];
      }

      if (*(&self->super.super._responseStatusError + 3))
      {
        v19 = objc_alloc_init(PDDPSchoolworkSearchQuery);
        [(PDDPSchoolworkSearchQuery *)v19 setType:3];
        v20 = objc_alloc_init(PDDPSchoolworkSearchCriteria);
        [(PDDPSchoolworkSearchCriteria *)v20 setFieldName:@"created_by"];
        [(PDDPSchoolworkSearchCriteria *)v20 setSearchOperator:7];
        v21 = objc_alloc_init(PDDPTypedValue);
        v22 = [*(&self->super.super._responseStatusError + 3) mutableCopy];
        [(PDDPTypedValue *)v21 setStringListValues:v22];

        [(PDDPTypedValue *)v21 setType:2];
        [(PDDPSchoolworkSearchCriteria *)v20 setValue:v21];
        [(PDDPSchoolworkSearchQuery *)v19 setCriteria:v20];
        [(PDDPSchoolworkSearchQuery *)v14 addContents:v19];
      }

      v23 = objc_alloc_init(PDDPSchoolworkSearchQuery);
      [(PDDPSchoolworkSearchQuery *)v23 setType:3];
      v24 = objc_alloc_init(PDDPSchoolworkSearchCriteria);
      [(PDDPSchoolworkSearchCriteria *)v24 setFieldName:@"record_type"];
      [(PDDPSchoolworkSearchCriteria *)v24 setSearchOperator:2];
      v25 = objc_alloc_init(PDDPTypedValue);
      [(PDDPTypedValue *)v25 setStringValue:@"surveystepanswer"];
      [(PDDPTypedValue *)v25 setType:1];
      [(PDDPSchoolworkSearchCriteria *)v24 setValue:v25];
      [(PDDPSchoolworkSearchQuery *)v23 setCriteria:v24];
      [(PDDPSchoolworkSearchQuery *)v14 addContents:v23];
      [(PDDPQueryRequest *)v30 setFilterQuery:v14];
      v26 = [(PDDPQueryRequest *)v30 data];
    }

    else
    {
      v8 = [NSError cls_createErrorWithCode:2 description:@"survey missing class ID."];
      [(PDOperation *)self finishWithError:v8];
      v26 = 0;
    }
  }

  else
  {
    [(PDEndpointRequestOperation *)self markAsFinished];
    v26 = 0;
  }

  return v26;
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
    v8 = [(PDFetchSurveyAnswerOperation *)self logSubsystem];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(PDURLRequestOperation *)self operationID];
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ processing response;", &v16, 0x16u);
    }

    [(PDFetchSurveyAnswerOperation *)self _deleteAnswersWithSurveyIDs:*(&self->super._responseStatusPayloadFailed + 3)];
    v12 = [v6 queryPayloads];
    v13 = [v12 count];
    v14 = [(PDURLRequestOperation *)self stats];
    if (v14)
    {
      v14[15] = v13;
    }

    v7 = [(PDAbstractClassZoneOperation *)self processPayloadsFromResponse:v12 error:a4];
  }

  return v7;
}

- (BOOL)processPayloadStatus:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5
{
  v8 = [a3 status];
  if ([v8 hasInternalMessage])
  {
    CLSInitLog();
    v9 = [(PDFetchSurveyAnswerOperation *)self logSubsystem];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v24 = v16;
      v17 = [(PDURLRequestOperation *)self operationID];
      v18 = [v8 code];
      v19 = [v8 message];
      v20 = [v8 internalMessage];
      *buf = 138544386;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 1024;
      *v30 = v18;
      *&v30[4] = 2112;
      *&v30[6] = v19;
      v31 = 2112;
      v32 = v20;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
    }
  }

  if (-[PDAbstractClassZoneOperation shouldProcessPayloadWithStatusCode:](self, "shouldProcessPayloadWithStatusCode:", [v8 code]))
  {
    goto LABEL_6;
  }

  if ([v8 code] == 801)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v11 = sub_1001055FC(v8, a4);
  if (v11)
  {
    v12 = v11;
    [(PDEndpointRequestOperation *)self setResponseStatusError:v11];
    if (a5)
    {
      v13 = v12;
      *a5 = v12;
    }

    CLSInitLog();
    v14 = [(PDFetchSurveyAnswerOperation *)self logSubsystem];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v26 = v21;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      *v30 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ assignment request errored: %{public}@;", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_6:
  v10 = 1;
LABEL_15:

  return v10;
}

- (BOOL)_deleteAnswersWithSurveyIDs:(id)a3
{
  v4 = a3;
  v5 = [PDDatabase whereSQLForArray:v4 prefix:@"state = 2 and surveyID in "];
  v6 = [(PDOperation *)self database];
  v7 = [v6 deleteAll:objc_opt_class() where:v5 bindings:v4];

  return v7;
}

@end