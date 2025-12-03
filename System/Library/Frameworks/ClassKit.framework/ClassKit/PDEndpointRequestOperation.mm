@interface PDEndpointRequestOperation
+ (BOOL)isEndpointAvailable:(id)available inDatabase:(id)database;
+ (NSString)serviceID;
- (BOOL)canParseStreams;
- (BOOL)checkForMissingEntityWithObjectID:(id)d forClass:(Class)class fromEntityWithID:(id)iD withClass:(Class)withClass;
- (BOOL)hasReachedRequestPayloadLimitBytes:(unint64_t)bytes count:(int64_t)count;
- (BOOL)parseStreamedResponse:(id)response;
- (BOOL)processResponse:(id *)response;
- (BOOL)readStreamablePayload:(id)payload reader:(id)reader error:(id *)error;
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
- (void)handleServerAlerts:(id)alerts;
- (void)handleTransportServerErrors;
- (void)markAsFinished;
- (void)requestDidParseResponse:(id)response;
- (void)setAuthHeadersForRequest:(id)request;
- (void)setHeadersForRequest:(id)request;
- (void)setResponseStatusError:(id)error;
- (void)updateEndpointInfo;
@end

@implementation PDEndpointRequestOperation

+ (NSString)serviceID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_100206880;
}

+ (BOOL)isEndpointAvailable:(id)available inDatabase:(id)database
{
  databaseCopy = database;
  availableCopy = available;
  v7 = [databaseCopy entityExistsByClass:objc_opt_class() identity:availableCopy];

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
    endpointIdentifier = [(PDEndpointRequestOperation *)self endpointIdentifier];
    database = [(PDOperation *)self database];
    v6 = [database select:objc_opt_class() identity:endpointIdentifier];
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
    operationID = [(PDURLRequestOperation *)self operationID];
    if (!operationID)
    {
      return;
    }

    v2 = operationID;
    if (!*(&self->_endpointInfo + 2))
    {
LABEL_12:

      goto LABEL_14;
    }
  }

  operationID2 = [(PDURLRequestOperation *)self operationID];
  if (!operationID2)
  {
    if (v4)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v6 = operationID2;
  v7 = *(&self->_endpointInfo + 2);
  operationID3 = [(PDURLRequestOperation *)self operationID];
  v9 = [v7 isEqualToString:operationID3];

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
  operationID4 = [(PDURLRequestOperation *)self operationID];
  v12 = *(&self->_endpointInfo + 2);
  *(&self->_endpointInfo + 2) = operationID4;

  if ([(PDURLRequestOperation *)self urlRequestFailed])
  {
    return;
  }

  database = [(PDOperation *)self database];
  if (![(PDURLRequestOperation *)self httpRequestCompleted])
  {
    goto LABEL_34;
  }

  clsErrorCode = [(PDURLRequestOperation *)self clsErrorCode];
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  if (!endpointInfo)
  {
    v21 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v15 = endpointInfo[8];

  if (v15 == 1)
  {
    response = [(PDURLRequestOperation *)self response];
    v17 = response;
    v19 = !response || (v18 = *(response + 56)) == 0 || [v18 statusCode] != 401;

    endpointInfo2 = [(PDEndpointRequestOperation *)self endpointInfo];
    v21 = endpointInfo2;
    if (endpointInfo2)
    {
      v22 = *(endpointInfo2 + 40);
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
    endpointIdentifier = [(PDEndpointRequestOperation *)self endpointIdentifier];
    sub_1000EA914(database, endpointIdentifier);
  }

  else
  {
    if (clsErrorCode == 306)
    {
      getRetryAfterSeconds = [(PDEndpointRequestOperation *)self getRetryAfterSeconds];
      if (getRetryAfterSeconds >= 1)
      {
        v26 = getRetryAfterSeconds;
        endpointIdentifier2 = [(PDEndpointRequestOperation *)self endpointIdentifier];
        sub_1000EACE4(database, endpointIdentifier2, v26);
      }

      goto LABEL_37;
    }

    endpointIdentifier = [(PDEndpointRequestOperation *)self endpointIdentifier];
    sub_1000EAA70(database, endpointIdentifier);
  }

LABEL_34:
  operationError = [(PDOperation *)self operationError];
  if (operationError)
  {
    v29 = operationError;
    operationError2 = [(PDOperation *)self operationError];
    code = [operationError2 code];

    if (code == 307)
    {
      sub_1000EAC18(database, @"bootstrap");
    }
  }

LABEL_37:
}

- (id)parser
{
  acceptContentType = [(PDEndpointRequestOperation *)self acceptContentType];
  v3 = acceptContentType;
  if (acceptContentType)
  {
    if ([acceptContentType isEqualToString:@"application/x-protobuf"])
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

  response = [(PDURLRequestOperation *)self response];
  v5 = sub_100112E70(response, @"Content-Type");

  if (v5 && ![(PDURLRequestOperation *)self willAcceptResponseContentType:v5])
  {
    v16 = 0;
    [NSError cls_assignError:&v16 code:100 format:@"Unacceptable response content type %@.", v5];
    v9 = v16;
LABEL_8:
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      operationID = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = operationID;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to parse response: %{public}@", buf, 0x20u);
    }

    [(PDURLRequestOperation *)self abortWithError:v9];
    v3 = 0;
    goto LABEL_11;
  }

  parser = [(PDEndpointRequestOperation *)self parser];
  response2 = [(PDURLRequestOperation *)self response];
  v8 = sub_100112C30(response2);
  v15 = 0;
  v3 = [parser parseData:v8 expectedClass:-[PDEndpointRequestOperation expectedResponseClass](self error:{"expectedResponseClass"), &v15}];
  v9 = v15;

  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_11:

LABEL_12:

  return v3;
}

- (BOOL)parseStreamedResponse:(id)response
{
  responseCopy = response;
  v5 = +[PDUserDefaults sharedDefaults];
  enableVerboseLogging = [v5 enableVerboseLogging];

  if (enableVerboseLogging)
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = v12;
      operationID = [(PDURLRequestOperation *)self operationID];
      v15 = NSStringFromClass([(PDEndpointRequestOperation *)self streamablePayloadClass]);
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = operationID;
      *&buf[22] = 2112;
      v32 = v15;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ streamed response processing for payloads of type %@.", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = sub_10013608C;
  v33 = sub_10013609C;
  v34 = 0;
  database = [(PDOperation *)self database];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001360A4;
  v21[3] = &unk_100203110;
  v9 = responseCopy;
  v22 = v9;
  selfCopy = self;
  v24 = buf;
  if (database && (v10 = [database performTransaction:v21 forWriting:1], database, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    CLSInitLog();
    logSubsystem2 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      operationID2 = [(PDURLRequestOperation *)self operationID];
      v19 = *(*&buf[8] + 40);
      *v25 = 138543874;
      v26 = v17;
      v27 = 2114;
      v28 = operationID2;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ streamed response processing failed. error: %@", v25, 0x20u);
    }

    v11 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v11;
}

- (void)setHeadersForRequest:(id)request
{
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = PDEndpointRequestOperation;
  [(PDURLRequestOperation *)&v16 setHeadersForRequest:requestCopy];
  v5 = *(&self->super._timeoutIntervalForRequest + 2);
  if (v5)
  {
    v6 = [NSNumber numberWithDouble:*(v5 + 16)];
    stringValue = [v6 stringValue];
    [requestCopy setValue:stringValue forHTTPHeaderField:@"X-Apple-ClassKit-LastSuccessTime"];

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
    stringValue2 = [v10 stringValue];
    [requestCopy setValue:stringValue2 forHTTPHeaderField:@"X-Apple-ClassKit-LastAttemptTime"];

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
    stringValue3 = [v14 stringValue];
    [requestCopy setValue:stringValue3 forHTTPHeaderField:@"X-Apple-ClassKit-AttemptCount"];
  }
}

- (void)setAuthHeadersForRequest:(id)request
{
  requestCopy = request;
  if (![(PDOperation *)self isAborted])
  {
    v84.receiver = self;
    v84.super_class = PDEndpointRequestOperation;
    [(PDURLRequestOperation *)&v84 setAuthHeadersForRequest:requestCopy];
    v5 = &unk_100246000;
    v6 = sub_10003E1B4();
    if (!v6)
    {
      goto LABEL_64;
    }

    endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
    if (!endpointInfo)
    {
      goto LABEL_64;
    }

    v8 = endpointInfo;
    endpointInfo2 = [(PDEndpointRequestOperation *)self endpointInfo];
    if (!endpointInfo2)
    {
      goto LABEL_63;
    }

    v10 = endpointInfo2[8];

    if (v10 != 1)
    {
LABEL_64:

      goto LABEL_65;
    }

    endpointInfo3 = [(PDEndpointRequestOperation *)self endpointInfo];
    v12 = endpointInfo3;
    if (endpointInfo3)
    {
      v13 = *(endpointInfo3 + 40);
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
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
      {
        v33 = objc_opt_class();
        v34 = v33;
        operationID = [(PDURLRequestOperation *)self operationID];
        endpointInfo4 = [(PDEndpointRequestOperation *)self endpointInfo];
        v37 = endpointInfo4;
        v81 = v34;
        if (endpointInfo4)
        {
          v38 = *(endpointInfo4 + 40);
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;
        *buf = 138544130;
        v86 = v33;
        v87 = 2114;
        v88 = operationID;
        v89 = 2048;
        v90 = v15;
        v91 = 2112;
        v92 = v39;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ account authenticationState: %ld for %@", buf, 0x2Au);

        v5 = &unk_100246000;
        p_superclass = (PDDeletedObjectClassIDs + 8);
      }
    }

    if (v15 == 1)
    {
      v8 = [NSError cls_createErrorWithCode:[(PDURLRequestOperation *)self clsErrorCodeForAuthenticationFailure] description:@"Aborting operation: credentials are known to be invalid."];
      logSubsystem2 = [(PDOperation *)self logSubsystem];
      [v8 cls_log:logSubsystem2];

      [(PDURLRequestOperation *)self abortWithError:v8];
LABEL_63:

      goto LABEL_64;
    }

    endpointInfo5 = [(PDEndpointRequestOperation *)self endpointInfo];
    v21 = endpointInfo5;
    if (endpointInfo5 && (v22 = *(endpointInfo5 + 40)) != 0)
    {
      v23 = v22;
      endpointInfo6 = [(PDEndpointRequestOperation *)self endpointInfo];
      v25 = endpointInfo6;
      if (endpointInfo6)
      {
        v26 = *(endpointInfo6 + 40);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v28 = [@"orion" caseInsensitiveCompare:v27];

      if (!v28)
      {
        sharedDefaults = [p_superclass + 39 sharedDefaults];
        enableVerboseLogging = [sharedDefaults enableVerboseLogging];

        if (!enableVerboseLogging)
        {
          v32 = 48;
LABEL_56:
          v8 = *&v6[v32];
LABEL_57:
          if ([v8 length])
          {
            [requestCopy setValue:v8 forHTTPHeaderField:@"X-Apple-GS-Token"];
          }

          else
          {
            CLSInitLog();
            logSubsystem3 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_ERROR))
            {
              v69 = objc_opt_class();
              v83 = v69;
              operationID2 = [(PDURLRequestOperation *)self operationID];
              endpointInfo7 = [(PDEndpointRequestOperation *)self endpointInfo];
              v72 = endpointInfo7;
              v73 = v5;
              if (endpointInfo7)
              {
                v74 = *(endpointInfo7 + 40);
              }

              else
              {
                v74 = 0;
              }

              v75 = v74;
              *buf = 138543874;
              v86 = v69;
              v87 = 2114;
              v88 = operationID2;
              v89 = 2114;
              v90 = v75;
              _os_log_error_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Expected to find an auth token for service: %{public}@.", buf, 0x20u);

              v5 = v73;
            }

            sub_10003FC24(v5 + 584, v6, 0);
            endpointInfo8 = [(PDEndpointRequestOperation *)self endpointInfo];
            v64 = endpointInfo8;
            if (endpointInfo8)
            {
              v65 = *(endpointInfo8 + 56);
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
        logSubsystem4 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem4, OS_LOG_TYPE_DEBUG))
        {
          v40 = objc_opt_class();
          v41 = v40;
          operationID3 = [(PDURLRequestOperation *)self operationID];
          *buf = 138543618;
          v86 = v40;
          v87 = 2114;
          v88 = operationID3;
          _os_log_debug_impl(&_mh_execute_header, logSubsystem4, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ adding Schoolwork service auth token.", buf, 0x16u);
        }

        v32 = 48;
LABEL_53:

        goto LABEL_56;
      }
    }

    else
    {
    }

    endpointInfo9 = [(PDEndpointRequestOperation *)self endpointInfo];
    v44 = endpointInfo9;
    if (endpointInfo9)
    {
      v45 = *(endpointInfo9 + 40);
      if (v45)
      {
        endpointInfo10 = [(PDEndpointRequestOperation *)self endpointInfo];
        v47 = endpointInfo10;
        if (endpointInfo10)
        {
          v48 = *(endpointInfo10 + 40);
        }

        else
        {
          v48 = 0;
        }

        v49 = v48;
        if (![@"apple_school_manager" caseInsensitiveCompare:v49])
        {

LABEL_49:
          sharedDefaults2 = [p_superclass + 39 sharedDefaults];
          enableVerboseLogging2 = [sharedDefaults2 enableVerboseLogging];

          if (!enableVerboseLogging2)
          {
            v32 = 56;
            goto LABEL_56;
          }

          CLSInitLog();
          logSubsystem4 = [(PDOperation *)self logSubsystem];
          if (os_log_type_enabled(logSubsystem4, OS_LOG_TYPE_DEBUG))
          {
            v76 = objc_opt_class();
            v77 = v76;
            operationID4 = [(PDURLRequestOperation *)self operationID];
            *buf = 138543618;
            v86 = v76;
            v87 = 2114;
            v88 = operationID4;
            _os_log_debug_impl(&_mh_execute_header, logSubsystem4, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ adding AXM service auth token.", buf, 0x16u);
          }

          v32 = 56;
          goto LABEL_53;
        }

        v79 = v49;
        v80 = v47;
        v50 = 0;
LABEL_38:
        endpointInfo11 = [(PDEndpointRequestOperation *)self endpointInfo];
        v52 = endpointInfo11;
        if (endpointInfo11)
        {
          v53 = *(endpointInfo11 + 40);
          if (v53)
          {
            v82 = v45;
            endpointInfo12 = [(PDEndpointRequestOperation *)self endpointInfo];
            v55 = endpointInfo12;
            v56 = v50;
            if (endpointInfo12)
            {
              v57 = *(endpointInfo12 + 40);
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
  shouldProcessResponseBody = [(PDURLRequestOperation *)&v5 shouldProcessResponseBody];
  if (shouldProcessResponseBody)
  {
    shouldProcessResponseBody = [(PDURLRequestOperation *)self httpRequestCompleted];
    if (shouldProcessResponseBody)
    {
      LOBYTE(shouldProcessResponseBody) = [(PDURLRequestOperation *)self httpRequestSucceeded];
    }
  }

  return shouldProcessResponseBody;
}

- (BOOL)processResponse:(id *)response
{
  responseCopy = response;
  if (!response)
  {
    v21 = 0;
    responseCopy = &v21;
  }

  parser = [(PDEndpointRequestOperation *)self parser];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = parser;
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
  parseResponseData = [(PDEndpointRequestOperation *)self parseResponseData];
  v18 = 0;
  v10 = [(PDEndpointRequestOperation *)self processResponseObject:parseResponseData error:&v18];
  v11 = v18;

  objc_autoreleasePoolPop(v8);
  if (v11)
  {
    v12 = v11;
    *responseCopy = v11;
  }

  if ((v10 & 1) == 0)
  {
LABEL_13:
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v14;
      operationID = [(PDURLRequestOperation *)self operationID];
      *location = 138543618;
      *&location[4] = v14;
      v23 = 2114;
      v24 = operationID;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to process response object.", location, 0x16u);
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

  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];

  if (!endpointInfo)
  {
    endpointIdentifier = [(PDEndpointRequestOperation *)self endpointIdentifier];
    endpointIdentifier2 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    if (endpointIdentifier2)
    {
      v6 = endpointIdentifier2;
      endpointIdentifier3 = [(PDEndpointRequestOperation *)self endpointIdentifier];
      v8 = [endpointIdentifier3 isEqualToString:@"bootstrap"];

      if (v8)
      {
        v9 = off_100200D30;
LABEL_10:
        defaultEndpointInfo = [(__objc2_class *)*v9 defaultEndpointInfo];
        v16 = [defaultEndpointInfo objectAtIndexedSubscript:0];
        v17 = *(&self->super._timeoutIntervalForRequest + 2);
        *(&self->super._timeoutIntervalForRequest + 2) = v16;

        goto LABEL_11;
      }
    }

    else
    {
    }

    endpointIdentifier4 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    endpointIdentifier5 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    if (endpointIdentifier5)
    {
      v12 = endpointIdentifier5;
      endpointIdentifier6 = [(PDEndpointRequestOperation *)self endpointIdentifier];
      v14 = [endpointIdentifier6 isEqualToString:@"ee.setup"];

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
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (!os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:

      [(PDEndpointRequestOperation *)self abort];
      return;
    }

    v30 = objc_opt_class();
    v26 = v30;
    operationID = [(PDURLRequestOperation *)self operationID];
    endpointIdentifier7 = [(PDEndpointRequestOperation *)self endpointIdentifier];
    *buf = 138543874;
    v33 = v30;
    v34 = 2114;
    v35 = operationID;
    v36 = 2114;
    v37 = endpointIdentifier7;
    v29 = "%{public}@: %{public}@ Unable to find endpoint info for '%{public}@'. cancelling request.";
LABEL_22:
    _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, v29, buf, 0x20u);

    goto LABEL_23;
  }

LABEL_11:
  endpointInfo2 = [(PDEndpointRequestOperation *)self endpointInfo];
  v19 = sub_1000E9D80(endpointInfo2);

  if (!v19 || ([(PDEndpointRequestOperation *)self handleExpiration], ![(PDOperation *)self isFinished]))
  {
    endpointInfo3 = [(PDEndpointRequestOperation *)self endpointInfo];
    v21 = sub_1000E9DF8(endpointInfo3);

    if (!v21 || ([(PDEndpointRequestOperation *)self handleCooldown], ![(PDOperation *)self isFinished]))
    {
      endpointInfo4 = [(PDEndpointRequestOperation *)self endpointInfo];
      v23 = sub_1000E9BC0(endpointInfo4);

      if (v23)
      {
        v31.receiver = self;
        v31.super_class = PDEndpointRequestOperation;
        [(PDURLRequestOperation *)&v31 execute];
        return;
      }

      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (!os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v25 = objc_opt_class();
      v26 = v25;
      operationID = [(PDURLRequestOperation *)self operationID];
      endpointIdentifier7 = [(PDEndpointRequestOperation *)self endpointIdentifier];
      *buf = 138543874;
      v33 = v25;
      v34 = 2114;
      v35 = operationID;
      v36 = 2114;
      v37 = endpointIdentifier7;
      v29 = "%{public}@: %{public}@ Unable to find url for '%{public}@'.";
      goto LABEL_22;
    }
  }
}

- (void)handleExpiration
{
  CLSInitLog();
  logSubsystem = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    operationID = [(PDURLRequestOperation *)self operationID];
    endpointIdentifier = [(PDEndpointRequestOperation *)self endpointIdentifier];
    v8 = 138543874;
    v9 = v4;
    v10 = 2114;
    v11 = operationID;
    v12 = 2114;
    v13 = endpointIdentifier;
    _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Unable to make endpoint request for '%{public}@'. Endpoint is throttled.", &v8, 0x20u);
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
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  if (endpointInfo)
  {
    v4 = endpointInfo[4] == 0;
  }

  else
  {
    v4 = 1;
  }

  endpointIdentifier = [(PDEndpointRequestOperation *)self endpointIdentifier];
  v6 = endpointIdentifier;
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

  v11 = [NSString stringWithFormat:@"Unable to make '%@' request. %@", endpointIdentifier, v7];

  v9 = [NSError cls_createErrorWithCode:v8 description:v11];
  logSubsystem = [(PDOperation *)self logSubsystem];
  [v9 cls_info:logSubsystem];

  [(PDOperation *)self finishWithError:v9];
}

- (int64_t)getRetryAfterSeconds
{
  response = [(PDURLRequestOperation *)self response];
  v3 = sub_100112E70(response, @"Retry-After");

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)handleTransportServerErrors
{
  if ([(PDURLRequestOperation *)self clsErrorCode]== 306)
  {
    getRetryAfterSeconds = [(PDEndpointRequestOperation *)self getRetryAfterSeconds];
    if (getRetryAfterSeconds >= 1)
    {
      v4 = getRetryAfterSeconds;
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = v6;
        operationID = [(PDURLRequestOperation *)self operationID];
        v9 = 138543874;
        v10 = v6;
        v11 = 2114;
        v12 = operationID;
        v13 = 2048;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Server is busy. Retry in %ld seconds.", &v9, 0x20u);
      }
    }
  }
}

- (void)setResponseStatusError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    objc_storeStrong((&self->_lastOperationIDChecked + 2), error);
    code = [errorCopy code];
  }

  else
  {
    v6 = *(&self->_lastOperationIDChecked + 2);
    *(&self->_lastOperationIDChecked + 2) = 0;

    code = 0;
  }

  [(PDURLRequestOperation *)self setClsErrorCode:code];
}

- (void)handleResponseStatusErrors
{
  responseStatusError = [(PDEndpointRequestOperation *)self responseStatusError];

  if (responseStatusError)
  {
    responseStatusError2 = [(PDEndpointRequestOperation *)self responseStatusError];
    code = [responseStatusError2 code];

    if (code == 310)
    {

      [(PDEndpointRequestOperation *)self handleASMRefreshRequired];
    }

    else if (code == 309)
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

- (BOOL)hasReachedRequestPayloadLimitBytes:(unint64_t)bytes count:(int64_t)count
{
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  v11 = 0;
  if (endpointInfo)
  {
    v7 = endpointInfo[9];
    v8 = v7 < 1 || v7 > bytes;
    if (!v8 || ((v9 = endpointInfo[8], v9 >= 1) ? (v10 = v9 <= count) : (v10 = 0), v10))
    {
      v11 = 1;
    }
  }

  return v11;
}

- (void)handleBootstrapRequired
{
  database = [(PDOperation *)self database];
  CLSInitLog();
  logSubsystem = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_opt_class();
    v20 = v19;
    operationID = [(PDURLRequestOperation *)self operationID];
    endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
    v23 = endpointInfo;
    if (endpointInfo)
    {
      v24 = *(endpointInfo + 40);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    *buf = 138543874;
    v57 = v19;
    v58 = 2114;
    v59 = operationID;
    v60 = 2112;
    v61 = v25;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Bootstrap required for %@", buf, 0x20u);
  }

  endpointInfo2 = [(PDEndpointRequestOperation *)self endpointInfo];
  v6 = endpointInfo2;
  if (endpointInfo2)
  {
    v7 = *(endpointInfo2 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  endpointInfo3 = [(PDEndpointRequestOperation *)self endpointInfo];
  v10 = endpointInfo3;
  if (endpointInfo3 && (v11 = *(endpointInfo3 + 40)) != 0)
  {
    v12 = v11;
    endpointInfo4 = [(PDEndpointRequestOperation *)self endpointInfo];
    v14 = endpointInfo4;
    if (endpointInfo4)
    {
      v15 = *(endpointInfo4 + 40);
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
      sub_1000EAC18(database, v18);
      goto LABEL_43;
    }
  }

  else
  {
  }

  endpointInfo5 = [(PDEndpointRequestOperation *)self endpointInfo];
  v27 = endpointInfo5;
  if (endpointInfo5)
  {
    v28 = *(endpointInfo5 + 40);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  endpointInfo6 = [(PDEndpointRequestOperation *)self endpointInfo];
  v31 = endpointInfo6;
  if (!endpointInfo6)
  {
    v32 = 0;
    goto LABEL_26;
  }

  v32 = *(endpointInfo6 + 40);
  if (!v32)
  {
LABEL_26:
    v38 = 1;
LABEL_27:
    endpointInfo7 = [(PDEndpointRequestOperation *)self endpointInfo];
    v40 = endpointInfo7;
    v55 = database;
    if (endpointInfo7)
    {
      v41 = *(endpointInfo7 + 40);
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
    endpointInfo8 = [(PDEndpointRequestOperation *)self endpointInfo];
    v44 = endpointInfo8;
    if (endpointInfo8)
    {
      v45 = *(endpointInfo8 + 40);
      if (v45)
      {
        v51 = v42;
        v52 = v38;
        endpointInfo9 = [(PDEndpointRequestOperation *)self endpointInfo];
        v47 = endpointInfo9;
        v48 = v29;
        if (endpointInfo9)
        {
          v49 = *(endpointInfo9 + 40);
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
        database = v55;
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

  endpointInfo10 = [(PDEndpointRequestOperation *)self endpointInfo];
  v34 = endpointInfo10;
  if (endpointInfo10)
  {
    v35 = *(endpointInfo10 + 40);
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
  database = [(PDOperation *)self database];
  sub_100169F38(database, 1, @"asmRefreshRequested");
  sub_1000EAC18(database, @"ee.setup");
  v3 = [NSError cls_createErrorWithCode:310 description:@"Refresh required for ASM roster data."];
  logSubsystem = [(PDOperation *)self logSubsystem];
  [v3 cls_notice:logSubsystem];

  [(PDOperation *)self finishWithError:v3];
  manager = [(PDOperation *)self manager];
  sub_10012175C(manager, 0);
}

- (void)handleServerAlerts:(id)alerts
{
  alertsCopy = alerts;
  v5 = alertsCopy;
  if (alertsCopy && [alertsCopy count])
  {
    database = [(PDOperation *)self database];
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
          objectID = [v12 objectID];
          v15 = [database select:v13 identity:objectID];

          if (v15 && [v15 displayedCount] >= 1)
          {
            [v12 setDisplayedCount:{objc_msgSend(v15, "displayedCount")}];
          }

          [database insertOrUpdateObject:v12];

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

- (BOOL)checkForMissingEntityWithObjectID:(id)d forClass:(Class)class fromEntityWithID:(id)iD withClass:(Class)withClass
{
  dCopy = d;
  iDCopy = iD;
  if (dCopy && [dCopy length])
  {
    database = [(PDOperation *)self database];
    v13 = [database entityExistsByClass:class identity:dCopy];
    if ((v13 & 1) == 0)
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v24 = v15;
        operationID = [(PDURLRequestOperation *)self operationID];
        *buf = 138544130;
        v26 = v15;
        v27 = 2114;
        v28 = operationID;
        v29 = 2114;
        v30 = dCopy;
        v31 = 2114;
        classCopy2 = class;
        _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Detected reference to missing objectID = %{public}@ (%{public}@).", buf, 0x2Au);
      }

      v17 = sub_10017BC18([PDMissingEntityReference alloc], dCopy, class, iDCopy, withClass);
      if (([database insertOrUpdateObject:v17] & 1) == 0)
      {
        CLSInitLog();
        logSubsystem2 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          v20 = v19;
          operationID2 = [(PDURLRequestOperation *)self operationID];
          *buf = 138544130;
          v26 = v19;
          v27 = 2114;
          v28 = operationID2;
          v29 = 2114;
          v30 = dCopy;
          v31 = 2114;
          classCopy2 = class;
          _os_log_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Failed to save reference to missing objectID = %{public}@ (%{public}@).", buf, 0x2Au);
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
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  if (endpointInfo)
  {
    v3 = endpointInfo[8];
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

- (void)requestDidParseResponse:(id)response
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)URL
{
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  v4 = sub_1000E9BC0(endpointInfo);
  if (!v4)
  {
    database = [(PDOperation *)self database];
    v6 = database;
    if (endpointInfo)
    {
      if (([database deleteObject:endpointInfo] & 1) == 0)
      {
        CLSInitLog();
        logSubsystem = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
        {
          v13 = *(endpointInfo + 48);
          *buf = 138543362;
          v15 = v13;
          _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "Failed to delete endpoint '%{public}@' from local database", buf, 0xCu);
        }
      }

      v8 = *(endpointInfo + 56);
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
  statusReport = [(PDURLRequestOperation *)&v16 statusReport];
  endpointIdentifier = [(PDEndpointRequestOperation *)self endpointIdentifier];
  database = [(PDOperation *)self database];
  v6 = [database select:objc_opt_class() identity:endpointIdentifier];
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
  [statusReport setObject:v9 forKeyedSubscript:@"serviceID"];

  [statusReport setObject:endpointIdentifier forKeyedSubscript:@"endpointIdentifier"];
  v10 = [NSNumber numberWithBool:sub_1000E9D80(v7)];
  [statusReport setObject:v10 forKeyedSubscript:@"isExpired"];

  v11 = [NSNumber numberWithBool:sub_1000E9DF8(v7)];
  [statusReport setObject:v11 forKeyedSubscript:@"needsCooldown"];

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
  [statusReport setObject:v14 forKeyedSubscript:@"cooldownPeriod"];

  return statusReport;
}

- (BOOL)canParseStreams
{
  v3 = +[PDUserDefaults sharedDefaults];
  v4 = [v3 enableResponseStreaming] && -[PDEndpointRequestOperation streamablePayloadClass](self, "streamablePayloadClass") && -[PDEndpointRequestOperation streamablePayloadClassTagValue](self, "streamablePayloadClassTagValue") > 0;

  return v4;
}

- (BOOL)readStreamablePayload:(id)payload reader:(id)reader error:(id *)error
{
  payloadCopy = payload;
  readerCopy = reader;
  CLSInitLog();
  logSubsystem = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
  {
    v12 = 138543618;
    v13 = @"[PDEndpointRequestOperation readStreamablePayload] must be overriden by its subclass";
    v14 = 2112;
    v15 = objc_opt_class();
    v10 = v15;
    _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@  (%@)", &v12, 0x16u);
  }

  v11 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"[PDEndpointRequestOperation readStreamablePayload] must be overriden by its subclass" userInfo:0];
  objc_exception_throw(v11);
}

- (Class)expectedResponseClass
{
  CLSInitLog();
  logSubsystem = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"[PDEndpointRequestOperation expectedResponseClass] must be overriden by its subclass";
    v8 = 2112;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@  (%@)", &v6, 0x16u);
  }

  v5 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"[PDEndpointRequestOperation expectedResponseClass] must be overriden by its subclass" userInfo:0];
  objc_exception_throw(v5);
}

@end