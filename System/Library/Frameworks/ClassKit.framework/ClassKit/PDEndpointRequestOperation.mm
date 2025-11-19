@interface PDEndpointRequestOperation
+ (BOOL)isEndpointAvailable:(id)a3 inDatabase:(id)a4;
+ (NSString)serviceID;
- (BOOL)canParseStreams;
- (BOOL)checkForMissingEntityWithObjectID:(id)a3 forClass:(Class)a4 fromEntityWithID:(id)a5 withClass:(Class)a6;
- (BOOL)hasReachedRequestPayloadLimitBytes:(unint64_t)a3 count:(int64_t)a4;
- (BOOL)parseStreamedResponse:(id)a3;
- (BOOL)processResponse:(id *)a3;
- (BOOL)readStreamablePayload:(id)a3 reader:(id)a4 error:(id *)a5;
- (BOOL)requiresAuth;
- (BOOL)shouldProcessResponseBody;
- (Class)expectedResponseClass;
- (NSString)endpointIdentifier;
- (PDEndpointInfo)endpointInfo;
- (id)URL;
- (id)acceptContentType;
- (id)parseResponseData;
- (id)parser;
- (id)requestContentType;
- (id)statusReport;
- (int64_t)getRetryAfterSeconds;
- (void)abort;
- (void)didCompleteProcessingResponse;
- (void)execute;
- (void)flushCachedData;
- (void)handleASMRefreshRequired;
- (void)handleBootstrapRequired;
- (void)handleCooldown;
- (void)handleExpiration;
- (void)handleRequestError;
- (void)handleResponseStatusErrors;
- (void)handleServerAlerts:(id)a3;
- (void)handleTransportServerErrors;
- (void)markAsFinished;
- (void)requestDidParseResponse:(id)a3;
- (void)setAuthHeadersForRequest:(id)a3;
- (void)setHeadersForRequest:(id)a3;
- (void)setResponseStatusError:(id)a3;
- (void)updateEndpointInfo;
@end

@implementation PDEndpointRequestOperation

+ (NSString)serviceID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_100206880;
}

+ (BOOL)isEndpointAvailable:(id)a3 inDatabase:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 entityExistsByClass:objc_opt_class() identity:v6];

  return v7;
}

- (NSString)endpointIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_100206880;
}

- (PDEndpointInfo)endpointInfo
{
  v3 = *(&self->super._timeoutIntervalForRequest + 2);
  if (!v3)
  {
    v4 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    v5 = [(PDOperation *)self database];
    v6 = [v5 select:objc_opt_class() identity:v4];
    v7 = *(&self->super._timeoutIntervalForRequest + 2);
    *(&self->super._timeoutIntervalForRequest + 2) = v6;

    v8 = *(&self->_endpointInfo + 2);
    *(&self->_endpointInfo + 2) = 0;

    v3 = *(&self->super._timeoutIntervalForRequest + 2);
  }

  return v3;
}

- (void)updateEndpointInfo
{
  if (![(PDAsyncOperation *)self didExecute]|| ![(PDURLRequestOperation *)self urlRequestAttempted])
  {
    return;
  }

  v4 = *(&self->_endpointInfo + 2);
  if (!v4)
  {
    v10 = [(PDURLRequestOperation *)self operationID];
    if (!v10)
    {
      return;
    }

    v2 = v10;
    if (!*(&self->_endpointInfo + 2))
    {
LABEL_12:

      goto LABEL_14;
    }
  }

  v5 = [(PDURLRequestOperation *)self operationID];
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v6 = v5;
  v7 = *(&self->_endpointInfo + 2);
  v8 = [(PDURLRequestOperation *)self operationID];
  v9 = [v7 isEqualToString:v8];

  if (v4)
  {
    if (v9)
    {
      return;
    }
  }

  else
  {

    if (v9)
    {
      return;
    }
  }

LABEL_14:
  v11 = [(PDURLRequestOperation *)self operationID];
  v12 = *(&self->_endpointInfo + 2);
  *(&self->_endpointInfo + 2) = v11;

  if ([(PDURLRequestOperation *)self urlRequestFailed])
  {
    return;
  }

  v32 = [(PDOperation *)self database];
  if (![(PDURLRequestOperation *)self httpRequestCompleted])
  {
    goto LABEL_34;
  }

  v13 = [(PDURLRequestOperation *)self clsErrorCode];
  v14 = [(PDEndpointRequestOperation *)self endpointInfo];
  if (!v14)
  {
    v21 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v15 = v14[8];

  if (v15 == 1)
  {
    v16 = [(PDURLRequestOperation *)self response];
    v17 = v16;
    v19 = !v16 || (v18 = *(v16 + 56)) == 0 || [v18 statusCode] != 401;

    v20 = [(PDEndpointRequestOperation *)self endpointInfo];
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 40);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    sub_10003FE2C(PDAccountInfo, v19, v23, 0);

    goto LABEL_26;
  }

LABEL_27:
  if ([(PDURLRequestOperation *)self httpRequestSucceeded])
  {
    v24 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    sub_1000EA914(v32, v24);
  }

  else
  {
    if (v13 == 306)
    {
      v25 = [(PDEndpointRequestOperation *)self getRetryAfterSeconds];
      if (v25 >= 1)
      {
        v26 = v25;
        v27 = [(PDEndpointRequestOperation *)self endpointIdentifier];
        sub_1000EACE4(v32, v27, v26);
      }

      goto LABEL_37;
    }

    v24 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    sub_1000EAA70(v32, v24);
  }

LABEL_34:
  v28 = [(PDOperation *)self operationError];
  if (v28)
  {
    v29 = v28;
    v30 = [(PDOperation *)self operationError];
    v31 = [v30 code];

    if (v31 == 307)
    {
      sub_1000EAC18(v32, @"bootstrap");
    }
  }

LABEL_37:
}

- (id)parser
{
  v2 = [(PDEndpointRequestOperation *)self acceptContentType];
  v3 = v2;
  if (v2)
  {
    if ([v2 isEqualToString:@"application/x-protobuf"])
    {
      v4 = off_100200D48;
LABEL_9:
      v5 = objc_alloc_init(*v4);
      goto LABEL_11;
    }

    if ([v3 isEqualToString:@"application/json"])
    {
      v4 = off_100200D28;
      goto LABEL_9;
    }

    if (([v3 isEqualToString:@"text/xml"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"application/json"))
    {
      v4 = &off_100200D50;
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (id)parseResponseData
{
  if ([(PDOperation *)self isFinished])
  {
    v3 = 0;
    goto LABEL_12;
  }

  v4 = [(PDURLRequestOperation *)self response];
  v5 = sub_100112E70(v4, @"Content-Type");

  if (v5 && ![(PDURLRequestOperation *)self willAcceptResponseContentType:v5])
  {
    v16 = 0;
    [NSError cls_assignError:&v16 code:100 format:@"Unacceptable response content type %@.", v5];
    v9 = v16;
LABEL_8:
    CLSInitLog();
    v10 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to parse response: %{public}@", buf, 0x20u);
    }

    [(PDURLRequestOperation *)self abortWithError:v9];
    v3 = 0;
    goto LABEL_11;
  }

  v6 = [(PDEndpointRequestOperation *)self parser];
  v7 = [(PDURLRequestOperation *)self response];
  v8 = sub_100112C30(v7);
  v15 = 0;
  v3 = [v6 parseData:v8 expectedClass:-[PDEndpointRequestOperation expectedResponseClass](self error:{"expectedResponseClass"), &v15}];
  v9 = v15;

  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_11:

LABEL_12:

  return v3;
}

- (BOOL)parseStreamedResponse:(id)a3
{
  v4 = a3;
  v5 = +[PDUserDefaults sharedDefaults];
  v6 = [v5 enableVerboseLogging];

  if (v6)
  {
    CLSInitLog();
    v7 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [(PDURLRequestOperation *)self operationID];
      v15 = NSStringFromClass([(PDEndpointRequestOperation *)self streamablePayloadClass]);
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v32 = v15;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ streamed response processing for payloads of type %@.", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = sub_10013608C;
  v33 = sub_10013609C;
  v34 = 0;
  v8 = [(PDOperation *)self database];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001360A4;
  v21[3] = &unk_100203110;
  v9 = v4;
  v22 = v9;
  v23 = self;
  v24 = buf;
  if (v8 && (v10 = [v8 performTransaction:v21 forWriting:1], v8, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    CLSInitLog();
    v16 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = [(PDURLRequestOperation *)self operationID];
      v19 = *(*&buf[8] + 40);
      *v25 = 138543874;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ streamed response processing failed. error: %@", v25, 0x20u);
    }

    v11 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v11;
}

- (void)setHeadersForRequest:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PDEndpointRequestOperation;
  [(PDURLRequestOperation *)&v16 setHeadersForRequest:v4];
  v5 = *(&self->super._timeoutIntervalForRequest + 2);
  if (v5)
  {
    v6 = [NSNumber numberWithDouble:*(v5 + 16)];
    v7 = [v6 stringValue];
    [v4 setValue:v7 forHTTPHeaderField:@"X-Apple-ClassKit-LastSuccessTime"];

    v8 = *(&self->super._timeoutIntervalForRequest + 2);
    if (v8)
    {
      v9 = *(v8 + 24);
    }

    else
    {
      v9 = 0.0;
    }

    v10 = [NSNumber numberWithDouble:v9];
    v11 = [v10 stringValue];
    [v4 setValue:v11 forHTTPHeaderField:@"X-Apple-ClassKit-LastAttemptTime"];

    v12 = *(&self->super._timeoutIntervalForRequest + 2);
    if (v12)
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    v14 = [NSNumber numberWithInteger:v13];
    v15 = [v14 stringValue];
    [v4 setValue:v15 forHTTPHeaderField:@"X-Apple-ClassKit-AttemptCount"];
  }
}

- (void)setAuthHeadersForRequest:(id)a3
{
  v4 = a3;
  if (![(PDOperation *)self isAborted])
  {
    v84.receiver = self;
    v84.super_class = PDEndpointRequestOperation;
    [(PDURLRequestOperation *)&v84 setAuthHeadersForRequest:v4];
    v5 = &unk_100246000;
    v6 = sub_10003E1B4();
    if (!v6)
    {
      goto LABEL_64;
    }

    v7 = [(PDEndpointRequestOperation *)self endpointInfo];
    if (!v7)
    {
      goto LABEL_64;
    }

    v8 = v7;
    v9 = [(PDEndpointRequestOperation *)self endpointInfo];
    if (!v9)
    {
      goto LABEL_63;
    }

    v10 = v9[8];

    if (v10 != 1)
    {
LABEL_64:

      goto LABEL_65;
    }

    v11 = [(PDEndpointRequestOperation *)self endpointInfo];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 40);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = sub_100040498(v6, v14);

    p_superclass = PDDeletedObjectClassIDs.superclass;
    v17 = +[PDUserDefaults sharedDefaults];
    LODWORD(v14) = [v17 enableVerboseLogging];

    if (v14)
    {
      CLSInitLog();
      v18 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v33 = objc_opt_class();
        v34 = v33;
        v35 = [(PDURLRequestOperation *)self operationID];
        v36 = [(PDEndpointRequestOperation *)self endpointInfo];
        v37 = v36;
        v81 = v34;
        if (v36)
        {
          v38 = *(v36 + 40);
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;
        *buf = 138544130;
        v86 = v33;
        v87 = 2114;
        v88 = v35;
        v89 = 2048;
        v90 = v15;
        v91 = 2112;
        v92 = v39;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ account authenticationState: %ld for %@", buf, 0x2Au);

        v5 = &unk_100246000;
        p_superclass = (PDDeletedObjectClassIDs + 8);
      }
    }

    if (v15 == 1)
    {
      v8 = [NSError cls_createErrorWithCode:[(PDURLRequestOperation *)self clsErrorCodeForAuthenticationFailure] description:@"Aborting operation: credentials are known to be invalid."];
      v19 = [(PDOperation *)self logSubsystem];
      [v8 cls_log:v19];

      [(PDURLRequestOperation *)self abortWithError:v8];
LABEL_63:

      goto LABEL_64;
    }

    v20 = [(PDEndpointRequestOperation *)self endpointInfo];
    v21 = v20;
    if (v20 && (v22 = *(v20 + 40)) != 0)
    {
      v23 = v22;
      v24 = [(PDEndpointRequestOperation *)self endpointInfo];
      v25 = v24;
      if (v24)
      {
        v26 = *(v24 + 40);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v28 = [@"orion" caseInsensitiveCompare:v27];

      if (!v28)
      {
        v29 = [p_superclass + 39 sharedDefaults];
        v30 = [v29 enableVerboseLogging];

        if (!v30)
        {
          v32 = 48;
LABEL_56:
          v8 = *&v6[v32];
LABEL_57:
          if ([v8 length])
          {
            [v4 setValue:v8 forHTTPHeaderField:@"X-Apple-GS-Token"];
          }

          else
          {
            CLSInitLog();
            v62 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v69 = objc_opt_class();
              v83 = v69;
              v70 = [(PDURLRequestOperation *)self operationID];
              v71 = [(PDEndpointRequestOperation *)self endpointInfo];
              v72 = v71;
              v73 = v5;
              if (v71)
              {
                v74 = *(v71 + 40);
              }

              else
              {
                v74 = 0;
              }

              v75 = v74;
              *buf = 138543874;
              v86 = v69;
              v87 = 2114;
              v88 = v70;
              v89 = 2114;
              v90 = v75;
              _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Expected to find an auth token for service: %{public}@.", buf, 0x20u);

              v5 = v73;
            }

            sub_10003FC24(v5 + 584, v6, 0);
            v63 = [(PDEndpointRequestOperation *)self endpointInfo];
            v64 = v63;
            if (v63)
            {
              v65 = *(v63 + 56);
            }

            else
            {
              v65 = 0;
            }

            v66 = v65;
            v67 = [NSString stringWithFormat:@"Endpoint requires authentication and we have no token URL: %@", v66];
            v68 = [NSError cls_createErrorWithCode:330 description:v67];

            [(PDURLRequestOperation *)self abortWithError:v68];
          }

          goto LABEL_63;
        }

        CLSInitLog();
        v31 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v40 = objc_opt_class();
          v41 = v40;
          v42 = [(PDURLRequestOperation *)self operationID];
          *buf = 138543618;
          v86 = v40;
          v87 = 2114;
          v88 = v42;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ adding Schoolwork service auth token.", buf, 0x16u);
        }

        v32 = 48;
LABEL_53:

        goto LABEL_56;
      }
    }

    else
    {
    }

    v43 = [(PDEndpointRequestOperation *)self endpointInfo];
    v44 = v43;
    if (v43)
    {
      v45 = *(v43 + 40);
      if (v45)
      {
        v46 = [(PDEndpointRequestOperation *)self endpointInfo];
        v47 = v46;
        if (v46)
        {
          v48 = *(v46 + 40);
        }

        else
        {
          v48 = 0;
        }

        v49 = v48;
        if (![@"apple_school_manager" caseInsensitiveCompare:v49])
        {

LABEL_49:
          v60 = [p_superclass + 39 sharedDefaults];
          v61 = [v60 enableVerboseLogging];

          if (!v61)
          {
            v32 = 56;
            goto LABEL_56;
          }

          CLSInitLog();
          v31 = [(PDOperation *)self logSubsystem];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v76 = objc_opt_class();
            v77 = v76;
            v78 = [(PDURLRequestOperation *)self operationID];
            *buf = 138543618;
            v86 = v76;
            v87 = 2114;
            v88 = v78;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ adding AXM service auth token.", buf, 0x16u);
          }

          v32 = 56;
          goto LABEL_53;
        }

        v79 = v49;
        v80 = v47;
        v50 = 0;
LABEL_38:
        v51 = [(PDEndpointRequestOperation *)self endpointInfo];
        v52 = v51;
        if (v51)
        {
          v53 = *(v51 + 40);
          if (v53)
          {
            v82 = v45;
            v54 = [(PDEndpointRequestOperation *)self endpointInfo];
            v55 = v54;
            v56 = v50;
            if (v54)
            {
              v57 = *(v54 + 40);
            }

            else
            {
              v57 = 0;
            }

            v58 = v57;
            v59 = [@"apple_business_manager" caseInsensitiveCompare:v58] == 0;

            v5 = &unk_100246000;
            v50 = v56;
            v45 = v82;
LABEL_46:

            if ((v50 & 1) == 0)
            {
            }

            p_superclass = PDDeletedObjectClassIDs.superclass;
            if (!v59)
            {
              v8 = 0;
              goto LABEL_57;
            }

            goto LABEL_49;
          }
        }

        else
        {
          v53 = 0;
        }

        v59 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v45 = 0;
    }

    v50 = 1;
    goto LABEL_38;
  }

LABEL_65:
}

- (BOOL)shouldProcessResponseBody
{
  v5.receiver = self;
  v5.super_class = PDEndpointRequestOperation;
  v3 = [(PDURLRequestOperation *)&v5 shouldProcessResponseBody];
  if (v3)
  {
    v3 = [(PDURLRequestOperation *)self httpRequestCompleted];
    if (v3)
    {
      LOBYTE(v3) = [(PDURLRequestOperation *)self httpRequestSucceeded];
    }
  }

  return v3;
}

- (BOOL)processResponse:(id *)a3
{
  v3 = a3;
  if (!a3)
  {
    v21 = 0;
    v3 = &v21;
  }

  v5 = [(PDEndpointRequestOperation *)self parser];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    objc_initWeak(location, self);
    if ([(PDEndpointRequestOperation *)self canParseStreams])
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100136E10;
      v19[3] = &unk_100205F38;
      objc_copyWeak(&v20, location);
      v7 = sub_10008DCC0(v6, self, v19);
      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
      if (v7)
      {
        if ([(PDEndpointRequestOperation *)self parseStreamedResponse:v6])
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

    else
    {
      objc_destroyWeak(location);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [(PDEndpointRequestOperation *)self parseResponseData];
  v18 = 0;
  v10 = [(PDEndpointRequestOperation *)self processResponseObject:v9 error:&v18];
  v11 = v18;

  objc_autoreleasePoolPop(v8);
  if (v11)
  {
    v12 = v11;
    *v3 = v11;
  }

  if ((v10 & 1) == 0)
  {
LABEL_13:
    CLSInitLog();
    v13 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [(PDURLRequestOperation *)self operationID];
      *location = 138543618;
      *&location[4] = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to process response object.", location, 0x16u);
    }
  }

LABEL_16:

  return 1;
}

- (void)didCompleteProcessingResponse
{
  [(PDEndpointRequestOperation *)self handleResponseStatusErrors];
  [(PDEndpointRequestOperation *)self updateEndpointInfo];
  v3.receiver = self;
  v3.super_class = PDEndpointRequestOperation;
  [(PDURLRequestOperation *)&v3 didCompleteProcessingResponse];
}

- (void)execute
{
  if ([(PDOperation *)self isFinished])
  {
    return;
  }

  v3 = [(PDEndpointRequestOperation *)self endpointInfo];

  if (!v3)
  {
    v4 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    v5 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = [(PDEndpointRequestOperation *)self endpointIdentifier];
      v8 = [v7 isEqualToString:@"bootstrap"];

      if (v8)
      {
        v9 = off_100200D30;
LABEL_10:
        v15 = [(__objc2_class *)*v9 defaultEndpointInfo];
        v16 = [v15 objectAtIndexedSubscript:0];
        v17 = *(&self->super._timeoutIntervalForRequest + 2);
        *(&self->super._timeoutIntervalForRequest + 2) = v16;

        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    v11 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = [(PDEndpointRequestOperation *)self endpointIdentifier];
      v14 = [v13 isEqualToString:@"ee.setup"];

      if (v14)
      {
        v9 = off_100200D00;
        goto LABEL_10;
      }
    }

    else
    {
    }

    CLSInitLog();
    v24 = [(PDOperation *)self logSubsystem];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:

      [(PDEndpointRequestOperation *)self abort];
      return;
    }

    v30 = objc_opt_class();
    v26 = v30;
    v27 = [(PDURLRequestOperation *)self operationID];
    v28 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    *buf = 138543874;
    v33 = v30;
    v34 = 2114;
    v35 = v27;
    v36 = 2114;
    v37 = v28;
    v29 = "%{public}@: %{public}@ Unable to find endpoint info for '%{public}@'. cancelling request.";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v29, buf, 0x20u);

    goto LABEL_23;
  }

LABEL_11:
  v18 = [(PDEndpointRequestOperation *)self endpointInfo];
  v19 = sub_1000E9D80(v18);

  if (!v19 || ([(PDEndpointRequestOperation *)self handleExpiration], ![(PDOperation *)self isFinished]))
  {
    v20 = [(PDEndpointRequestOperation *)self endpointInfo];
    v21 = sub_1000E9DF8(v20);

    if (!v21 || ([(PDEndpointRequestOperation *)self handleCooldown], ![(PDOperation *)self isFinished]))
    {
      v22 = [(PDEndpointRequestOperation *)self endpointInfo];
      v23 = sub_1000E9BC0(v22);

      if (v23)
      {
        v31.receiver = self;
        v31.super_class = PDEndpointRequestOperation;
        [(PDURLRequestOperation *)&v31 execute];
        return;
      }

      CLSInitLog();
      v24 = [(PDOperation *)self logSubsystem];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v25 = objc_opt_class();
      v26 = v25;
      v27 = [(PDURLRequestOperation *)self operationID];
      v28 = [(PDEndpointRequestOperation *)self endpointIdentifier];
      *buf = 138543874;
      v33 = v25;
      v34 = 2114;
      v35 = v27;
      v36 = 2114;
      v37 = v28;
      v29 = "%{public}@: %{public}@ Unable to find url for '%{public}@'.";
      goto LABEL_22;
    }
  }
}

- (void)handleExpiration
{
  CLSInitLog();
  v3 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = [(PDURLRequestOperation *)self operationID];
    v7 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    v8 = 138543874;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Unable to make endpoint request for '%{public}@'. Endpoint is throttled.", &v8, 0x20u);
  }

  [(PDEndpointRequestOperation *)self markAsFinished];
}

- (void)handleRequestError
{
  [(PDEndpointRequestOperation *)self handleTransportServerErrors];
  v3.receiver = self;
  v3.super_class = PDEndpointRequestOperation;
  [(PDURLRequestOperation *)&v3 handleRequestError];
}

- (void)handleCooldown
{
  v3 = [(PDEndpointRequestOperation *)self endpointInfo];
  if (v3)
  {
    v4 = v3[4] == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(PDEndpointRequestOperation *)self endpointIdentifier];
  v6 = v5;
  v7 = @"Endpoint is on cooldown.";
  if (v4)
  {
    v7 = @"Server is busy.";
    v8 = 306;
  }

  else
  {
    v8 = 305;
  }

  v11 = [NSString stringWithFormat:@"Unable to make '%@' request. %@", v5, v7];

  v9 = [NSError cls_createErrorWithCode:v8 description:v11];
  v10 = [(PDOperation *)self logSubsystem];
  [v9 cls_info:v10];

  [(PDOperation *)self finishWithError:v9];
}

- (int64_t)getRetryAfterSeconds
{
  v2 = [(PDURLRequestOperation *)self response];
  v3 = sub_100112E70(v2, @"Retry-After");

  v4 = [v3 integerValue];
  return v4;
}

- (void)handleTransportServerErrors
{
  if ([(PDURLRequestOperation *)self clsErrorCode]== 306)
  {
    v3 = [(PDEndpointRequestOperation *)self getRetryAfterSeconds];
    if (v3 >= 1)
    {
      v4 = v3;
      CLSInitLog();
      v5 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = v6;
        v8 = [(PDURLRequestOperation *)self operationID];
        v9 = 138543874;
        v10 = v6;
        v11 = 2114;
        v12 = v8;
        v13 = 2048;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Server is busy. Retry in %ld seconds.", &v9, 0x20u);
      }
    }
  }
}

- (void)setResponseStatusError:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((&self->_lastOperationIDChecked + 2), a3);
    v5 = [v7 code];
  }

  else
  {
    v6 = *(&self->_lastOperationIDChecked + 2);
    *(&self->_lastOperationIDChecked + 2) = 0;

    v5 = 0;
  }

  [(PDURLRequestOperation *)self setClsErrorCode:v5];
}

- (void)handleResponseStatusErrors
{
  v3 = [(PDEndpointRequestOperation *)self responseStatusError];

  if (v3)
  {
    v4 = [(PDEndpointRequestOperation *)self responseStatusError];
    v5 = [v4 code];

    if (v5 == 310)
    {

      [(PDEndpointRequestOperation *)self handleASMRefreshRequired];
    }

    else if (v5 == 309)
    {

      [(PDEndpointRequestOperation *)self handleBootstrapRequired];
    }
  }
}

- (void)flushCachedData
{
  v4.receiver = self;
  v4.super_class = PDEndpointRequestOperation;
  [(PDURLRequestOperation *)&v4 flushCachedData];
  v3 = *(&self->super._timeoutIntervalForRequest + 2);
  *(&self->super._timeoutIntervalForRequest + 2) = 0.0;
}

- (void)abort
{
  [(PDEndpointRequestOperation *)self updateEndpointInfo];
  v3.receiver = self;
  v3.super_class = PDEndpointRequestOperation;
  [(PDURLRequestOperation *)&v3 abort];
}

- (void)markAsFinished
{
  [(PDEndpointRequestOperation *)self updateEndpointInfo];
  v3.receiver = self;
  v3.super_class = PDEndpointRequestOperation;
  [(PDURLRequestOperation *)&v3 markAsFinished];
}

- (BOOL)hasReachedRequestPayloadLimitBytes:(unint64_t)a3 count:(int64_t)a4
{
  v6 = [(PDEndpointRequestOperation *)self endpointInfo];
  v11 = 0;
  if (v6)
  {
    v7 = v6[9];
    v8 = v7 < 1 || v7 > a3;
    if (!v8 || ((v9 = v6[8], v9 >= 1) ? (v10 = v9 <= a4) : (v10 = 0), v10))
    {
      v11 = 1;
    }
  }

  return v11;
}

- (void)handleBootstrapRequired
{
  v3 = [(PDOperation *)self database];
  CLSInitLog();
  v4 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_opt_class();
    v20 = v19;
    v21 = [(PDURLRequestOperation *)self operationID];
    v22 = [(PDEndpointRequestOperation *)self endpointInfo];
    v23 = v22;
    if (v22)
    {
      v24 = *(v22 + 40);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    *buf = 138543874;
    v57 = v19;
    v58 = 2114;
    v59 = v21;
    v60 = 2112;
    v61 = v25;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Bootstrap required for %@", buf, 0x20u);
  }

  v5 = [(PDEndpointRequestOperation *)self endpointInfo];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(PDEndpointRequestOperation *)self endpointInfo];
  v10 = v9;
  if (v9 && (v11 = *(v9 + 40)) != 0)
  {
    v12 = v11;
    v13 = [(PDEndpointRequestOperation *)self endpointInfo];
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 40);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [v16 isEqualToString:@"orion"];

    if (v17)
    {
      v18 = @"bootstrap";
LABEL_42:
      sub_1000EAC18(v3, v18);
      goto LABEL_43;
    }
  }

  else
  {
  }

  v26 = [(PDEndpointRequestOperation *)self endpointInfo];
  v27 = v26;
  if (v26)
  {
    v28 = *(v26 + 40);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [(PDEndpointRequestOperation *)self endpointInfo];
  v31 = v30;
  if (!v30)
  {
    v32 = 0;
    goto LABEL_26;
  }

  v32 = *(v30 + 40);
  if (!v32)
  {
LABEL_26:
    v38 = 1;
LABEL_27:
    v39 = [(PDEndpointRequestOperation *)self endpointInfo];
    v40 = v39;
    v55 = v3;
    if (v39)
    {
      v41 = *(v39 + 40);
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
    v43 = [(PDEndpointRequestOperation *)self endpointInfo];
    v44 = v43;
    if (v43)
    {
      v45 = *(v43 + 40);
      if (v45)
      {
        v51 = v42;
        v52 = v38;
        v46 = [(PDEndpointRequestOperation *)self endpointInfo];
        v47 = v46;
        v48 = v29;
        if (v46)
        {
          v49 = *(v46 + 40);
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;
        v37 = [v50 isEqualToString:@"apple_business_manager"];

        v29 = v48;
        v38 = v52;
        v42 = v51;
LABEL_38:

        v34 = v54;
        v3 = v55;
        v36 = v53;
        if (v38)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v45 = 0;
    }

    v37 = 0;
    goto LABEL_38;
  }

  v33 = [(PDEndpointRequestOperation *)self endpointInfo];
  v34 = v33;
  if (v33)
  {
    v35 = *(v33 + 40);
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;
  if (([v36 isEqualToString:@"apple_school_manager"] & 1) == 0)
  {
    v53 = v36;
    v54 = v34;
    v38 = 0;
    goto LABEL_27;
  }

  v37 = 1;
LABEL_39:

LABEL_40:
  if (v37)
  {
    v18 = @"ee.setup";
    goto LABEL_42;
  }

LABEL_43:
}

- (void)handleASMRefreshRequired
{
  v6 = [(PDOperation *)self database];
  sub_100169F38(v6, 1, @"asmRefreshRequested");
  sub_1000EAC18(v6, @"ee.setup");
  v3 = [NSError cls_createErrorWithCode:310 description:@"Refresh required for ASM roster data."];
  v4 = [(PDOperation *)self logSubsystem];
  [v3 cls_notice:v4];

  [(PDOperation *)self finishWithError:v3];
  v5 = [(PDOperation *)self manager];
  sub_10012175C(v5, 0);
}

- (void)handleServerAlerts:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [(PDOperation *)self database];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = objc_opt_class();
          v14 = [v12 objectID];
          v15 = [v6 select:v13 identity:v14];

          if (v15 && [v15 displayedCount] >= 1)
          {
            [v12 setDisplayedCount:{objc_msgSend(v15, "displayedCount")}];
          }

          [v6 insertOrUpdateObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:CLSServerAlertReceivedNotificationName object:0 userInfo:0];
  }
}

- (BOOL)checkForMissingEntityWithObjectID:(id)a3 forClass:(Class)a4 fromEntityWithID:(id)a5 withClass:(Class)a6
{
  v10 = a3;
  v11 = a5;
  if (v10 && [v10 length])
  {
    v12 = [(PDOperation *)self database];
    v13 = [v12 entityExistsByClass:a4 identity:v10];
    if ((v13 & 1) == 0)
    {
      CLSInitLog();
      v14 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v24 = v15;
        v16 = [(PDURLRequestOperation *)self operationID];
        *buf = 138544130;
        v26 = v15;
        v27 = 2114;
        v28 = v16;
        v29 = 2114;
        v30 = v10;
        v31 = 2114;
        v32 = a4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Detected reference to missing objectID = %{public}@ (%{public}@).", buf, 0x2Au);
      }

      v17 = sub_10017BC18([PDMissingEntityReference alloc], v10, a4, v11, a6);
      if (([v12 insertOrUpdateObject:v17] & 1) == 0)
      {
        CLSInitLog();
        v18 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          v20 = v19;
          v21 = [(PDURLRequestOperation *)self operationID];
          *buf = 138544130;
          v26 = v19;
          v27 = 2114;
          v28 = v21;
          v29 = 2114;
          v30 = v10;
          v31 = 2114;
          v32 = a4;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Failed to save reference to missing objectID = %{public}@ (%{public}@).", buf, 0x2Au);
        }
      }
    }

    v22 = v13 ^ 1;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)requiresAuth
{
  v2 = [(PDEndpointRequestOperation *)self endpointInfo];
  if (v2)
  {
    v3 = v2[8];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)requestContentType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)acceptContentType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)requestDidParseResponse:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)URL
{
  v3 = [(PDEndpointRequestOperation *)self endpointInfo];
  v4 = sub_1000E9BC0(v3);
  if (!v4)
  {
    v5 = [(PDOperation *)self database];
    v6 = v5;
    if (v3)
    {
      if (([v5 deleteObject:v3] & 1) == 0)
      {
        CLSInitLog();
        v7 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v3 + 48);
          *buf = 138543362;
          v15 = v13;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to delete endpoint '%{public}@' from local database", buf, 0xCu);
        }
      }

      v8 = *(v3 + 56);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [NSString stringWithFormat:@"EndpointInfo has invalid URL: %@", v9];
    v11 = [NSError cls_createErrorWithCode:307 description:v10];

    [(PDURLRequestOperation *)self abortWithError:v11];
  }

  return v4;
}

- (id)statusReport
{
  v16.receiver = self;
  v16.super_class = PDEndpointRequestOperation;
  v3 = [(PDURLRequestOperation *)&v16 statusReport];
  v4 = [(PDEndpointRequestOperation *)self endpointIdentifier];
  v5 = [(PDOperation *)self database];
  v6 = [v5 select:objc_opt_class() identity:v4];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v3 setObject:v9 forKeyedSubscript:@"serviceID"];

  [v3 setObject:v4 forKeyedSubscript:@"endpointIdentifier"];
  v10 = [NSNumber numberWithBool:sub_1000E9D80(v7)];
  [v3 setObject:v10 forKeyedSubscript:@"isExpired"];

  v11 = [NSNumber numberWithBool:sub_1000E9DF8(v7)];
  [v3 setObject:v11 forKeyedSubscript:@"needsCooldown"];

  v12 = 0.0;
  if (v7)
  {
    if (*(v7 + 24) != 0.0)
    {
      v13 = *(v7 + 32);
      if (v13)
      {
        v12 = exp2(v13);
      }
    }
  }

  v14 = [NSNumber numberWithDouble:v12];
  [v3 setObject:v14 forKeyedSubscript:@"cooldownPeriod"];

  return v3;
}

- (BOOL)canParseStreams
{
  v3 = +[PDUserDefaults sharedDefaults];
  v4 = [v3 enableResponseStreaming] && -[PDEndpointRequestOperation streamablePayloadClass](self, "streamablePayloadClass") && -[PDEndpointRequestOperation streamablePayloadClassTagValue](self, "streamablePayloadClassTagValue") > 0;

  return v4;
}

- (BOOL)readStreamablePayload:(id)a3 reader:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  CLSInitLog();
  v9 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = 138543618;
    v13 = @"[PDEndpointRequestOperation readStreamablePayload] must be overriden by its subclass";
    v14 = 2112;
    v15 = objc_opt_class();
    v10 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@  (%@)", &v12, 0x16u);
  }

  v11 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"[PDEndpointRequestOperation readStreamablePayload] must be overriden by its subclass" userInfo:0];
  objc_exception_throw(v11);
}

- (Class)expectedResponseClass
{
  CLSInitLog();
  v3 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"[PDEndpointRequestOperation expectedResponseClass] must be overriden by its subclass";
    v8 = 2112;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@  (%@)", &v6, 0x16u);
  }

  v5 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"[PDEndpointRequestOperation expectedResponseClass] must be overriden by its subclass" userInfo:0];
  objc_exception_throw(v5);
}

@end