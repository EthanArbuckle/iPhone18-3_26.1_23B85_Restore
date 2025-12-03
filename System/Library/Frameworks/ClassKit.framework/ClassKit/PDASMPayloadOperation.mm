@interface PDASMPayloadOperation
- (BOOL)_deleteEntity:(Class)entity identity:(id)identity;
- (BOOL)_deleteWithPayload:(id)payload error:(id *)error;
- (BOOL)deleteClassMemberWithClassID:(id)d personIDs:(id)ds;
- (BOOL)deleteClassWithObjectID:(id)d deletePersons:(BOOL)persons;
- (BOOL)deletePersonWithObjectID:(id)d;
- (BOOL)forgetAboutDeletedEntity:(Class)entity withObjectID:(id)d;
- (BOOL)handleZoneRemoved:(id)removed;
- (BOOL)insertEntity:(id)entity;
- (BOOL)processAdminRequest:(id)request;
- (BOOL)processAdminRequestAccountPayload:(id)payload;
- (BOOL)processClassMember:(id)member;
- (BOOL)processClassPayload:(id)payload;
- (BOOL)processGroupMember:(id)member;
- (BOOL)processGroupPayload:(id)payload;
- (BOOL)processLocation:(id)location;
- (BOOL)processOrganization:(id)organization;
- (BOOL)processPayloadFromResponse:(id)response error:(id *)error;
- (BOOL)processPayloadWithinWriteTransaction:(id)transaction error:(id *)error stop:(BOOL *)stop;
- (BOOL)processPayloads:(id)payloads error:(id *)error;
- (BOOL)processPerson:(id)person;
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (BOOL)processStatusPayload:(id)payload allowMixedResponse:(BOOL)response error:(id *)error;
- (BOOL)readStreamablePayload:(id)payload reader:(id)reader error:(id *)error;
- (BOOL)shouldProcessPayload:(id)payload error:(id *)error;
- (BOOL)writePayload:(id)payload toRequest:(id)request writer:(id)writer;
- (PDASMPayloadOperation)initWithDatabase:(id)database;
- (void)_forceNoCache:(id)cache;
@end

@implementation PDASMPayloadOperation

- (PDASMPayloadOperation)initWithDatabase:(id)database
{
  v7.receiver = self;
  v7.super_class = PDASMPayloadOperation;
  v3 = [(PDURLRequestOperation *)&v7 initWithDatabase:database];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = *(v3 + 226);
    *(v3 + 226) = v4;
  }

  return v3;
}

- (BOOL)readStreamablePayload:(id)payload reader:(id)reader error:(id *)error
{
  payloadCopy = payload;
  readerCopy = reader;
  [(PDASMPayloadOperation *)self streamablePayloadClass];
  if (objc_opt_isKindOfClass())
  {
    v10 = sub_1001657C8(payloadCopy, readerCopy);
  }

  else
  {
    CLSInitLog();
    v11 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      *buf = 138412290;
      v16 = objc_opt_class();
      v14 = v16;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Parse Error! Cannot read streamed response payloads of type '%@'!", buf, 0xCu);
    }

    [NSError cls_assignError:error code:300 format:@"Cannot read streamed responses containing payloads of type '%@'!", objc_opt_class()];
    v10 = 0;
  }

  return v10;
}

- (BOOL)writePayload:(id)payload toRequest:(id)request writer:(id)writer
{
  payloadCopy = payload;
  writerCopy = writer;
  [request writeTo:writerCopy];
  data = [writerCopy data];

  v11 = [data length];
  stats = [(PDURLRequestOperation *)self stats];
  if (stats)
  {
    stats[10] = v11;
  }

  stats2 = [(PDURLRequestOperation *)self stats];
  if (stats2)
  {
    ++stats2[14];
  }

  operationID = [(PDURLRequestOperation *)self operationID];
  CLSInitLog();
  logSubsystem = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_opt_class();
    v26 = v25;
    dictionaryRepresentation = [payloadCopy dictionaryRepresentation];
    v30 = 138543874;
    v31 = v25;
    v32 = 2114;
    v33 = operationID;
    v34 = 2112;
    v35 = dictionaryRepresentation;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", &v30, 0x20u);
  }

  stats3 = [(PDURLRequestOperation *)self stats];
  v17 = stats3;
  if (stats3)
  {
    v18 = *(stats3 + 80);
  }

  else
  {
    v18 = 0;
  }

  stats4 = [(PDURLRequestOperation *)self stats];
  v20 = stats4;
  if (stats4)
  {
    v21 = *(stats4 + 112);
  }

  else
  {
    v21 = 0;
  }

  v22 = [(PDEndpointRequestOperation *)self hasReachedRequestPayloadLimitBytes:v18 count:v21];

  if (v22)
  {
    CLSInitLog();
    logSubsystem2 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v30 = 138543618;
      v31 = v28;
      v32 = 2114;
      v33 = operationID;
      v29 = v28;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ payload limit reached.", &v30, 0x16u);
    }
  }

  return v22 ^ 1;
}

- (BOOL)processResponseObject:(id)object error:(id *)error
{
  objectCopy = object;
  if ([(PDOperation *)self isAborted])
  {
    v7 = 0;
  }

  else
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      operationID = [(PDURLRequestOperation *)self operationID];
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = operationID;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ processing response;", &v17, 0x16u);
    }

    payloads = [objectCopy payloads];
    v13 = payloads;
    if (payloads)
    {
      v14 = [payloads count];
      stats = [(PDURLRequestOperation *)self stats];
      if (stats)
      {
        stats[15] = v14;
      }

      v7 = [(PDASMPayloadOperation *)self processPayloads:v13 error:error];
    }

    else
    {
      v7 = 0;
    }

    [(PDASMPayloadOperation *)self finishedResponseProcessing];
  }

  return v7;
}

- (BOOL)processPayloadWithinWriteTransaction:(id)transaction error:(id *)error stop:(BOOL *)stop
{
  transactionCopy = transaction;
  if (!error)
  {
    v24 = 0;
    error = &v24;
  }

  if ([(PDOperation *)self isAborted])
  {
    LOBYTE(v9) = 0;
    *stop = 1;
  }

  else
  {
    v23 = 0;
    v9 = [(PDASMPayloadOperation *)self processPayloadFromResponse:transactionCopy error:&v23];
    v10 = v23;
    stats = [(PDURLRequestOperation *)self stats];
    sub_10009E98C(stats, [transactionCopy type], v9);

    if ((v9 & 1) == 0)
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = v13;
        operationID = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v26 = v13;
        v27 = 2114;
        v28 = operationID;
        v29 = 2114;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ failed to process payload: %{public}@", buf, 0x20u);
      }

      responseStatusError = [(PDEndpointRequestOperation *)self responseStatusError];

      if (responseStatusError)
      {
        *error = [(PDEndpointRequestOperation *)self responseStatusError];
        *stop = 1;
      }
    }

    if (*error)
    {
      CLSInitLog();
      logSubsystem2 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = v19;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        v22 = *error;
        *buf = 138543874;
        v26 = v19;
        v27 = 2114;
        v28 = operationID2;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ failed to process response: %{public}@", buf, 0x20u);
      }

      if (*error && [transactionCopy type] == 1)
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (BOOL)processPayloads:(id)payloads error:(id *)error
{
  payloadsCopy = payloads;
  if ([(PDOperation *)self isAborted])
  {
    v7 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100093D6C;
    v18 = sub_100093D7C;
    v19 = 0;
    database = [(PDOperation *)self database];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100093D84;
    v11[3] = &unk_100203110;
    v11[4] = self;
    v12 = payloadsCopy;
    v13 = &v14;
    if (database)
    {
      v7 = [database performTransaction:v11 forWriting:1];
    }

    else
    {
      v7 = 0;
    }

    v9 = v15[5];
    if (v9)
    {
      v7 = 0;
      if (error)
      {
        *error = v9;
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

- (BOOL)shouldProcessPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  if (![payloadCopy hasStatus])
  {
    goto LABEL_9;
  }

  status = [payloadCopy status];
  v8 = -[PDASMPayloadOperation shouldProcessPayloadWithStatusCode:](self, "shouldProcessPayloadWithStatusCode:", [status code]);

  if (v8)
  {
    goto LABEL_9;
  }

  status2 = [payloadCopy status];
  v10 = sub_1001055FC(status2, 0);

  if (v10)
  {
    if (error)
    {
      v11 = v10;
      *error = v10;
    }

    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      operationID = [(PDURLRequestOperation *)self operationID];
      type = [payloadCopy type];
      if (type >= 0xE)
      {
        v16 = [NSString stringWithFormat:@"(unknown: %i)", type];
      }

      else
      {
        v16 = *(&off_100203FA8 + type);
      }

      *buf = 138544130;
      v20 = v13;
      v21 = 2114;
      v22 = operationID;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Skipping %{public}@ payload with error: %{public}@", buf, 0x2Au);
    }

    v17 = 0;
  }

  else
  {
LABEL_9:
    v17 = 1;
  }

  return v17;
}

- (BOOL)processPayloadFromResponse:(id)response error:(id *)error
{
  responseCopy = response;
  if ([(PDOperation *)self isAborted])
  {
    goto LABEL_2;
  }

  v8 = -[PDASMPayloadOperation acceptsPayloadType:](self, "acceptsPayloadType:", [responseCopy type]);
  CLSInitLog();
  logSubsystem = [(PDOperation *)self logSubsystem];
  v10 = os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v10)
    {
      v15 = objc_opt_class();
      operationID = [(PDURLRequestOperation *)self operationID];
      type = [responseCopy type];
      if (type >= 0xE)
      {
        v18 = [NSString stringWithFormat:@"(unknown: %i)", type];
      }

      else
      {
        v18 = *(&off_100203FA8 + type);
      }

      *buf = 138543874;
      v38 = v15;
      v39 = 2114;
      v40 = operationID;
      v41 = 2114;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Ignoring payload type: %{public}@", buf, 0x20u);

      goto LABEL_21;
    }

LABEL_22:

    v7 = 1;
    goto LABEL_23;
  }

  if (v10)
  {
    v11 = objc_opt_class();
    operationID2 = [(PDURLRequestOperation *)self operationID];
    type2 = [responseCopy type];
    if (type2 >= 0xE)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", type2];
    }

    else
    {
      v14 = *(&off_100203FA8 + type2);
    }

    dictionaryRepresentation = [responseCopy dictionaryRepresentation];
    *buf = 138544130;
    v38 = v11;
    v39 = 2114;
    v40 = operationID2;
    v41 = 2114;
    v42 = v14;
    v43 = 2112;
    v44 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Processing payload type: %{public}@\n    payload: %@", buf, 0x2Au);
  }

  if ([responseCopy type] == 1)
  {
    v20 = [(PDASMPayloadOperation *)self processStatusPayload:responseCopy allowMixedResponse:[(PDASMPayloadOperation *)self allowMixedResponseStatusCode] error:error];
LABEL_14:
    v7 = v20;
    goto LABEL_23;
  }

  if ([responseCopy type] == 3)
  {
    responseZone = [responseCopy responseZone];
    v22 = [(PDASMPayloadOperation *)self processResponseZone:responseZone];
LABEL_17:
    v7 = v22;
LABEL_18:

    goto LABEL_23;
  }

  if ([(PDASMPayloadOperation *)self shouldProcessPayload:responseCopy error:error])
  {
    v24 = [(PDASMPayloadOperation *)self actionForPayload:responseCopy];
    if (v24 != 1)
    {
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          v20 = [(PDASMPayloadOperation *)self _deleteWithPayload:responseCopy error:error];
          goto LABEL_14;
        }

        CLSInitLog();
        logSubsystem = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
        {
          v29 = objc_opt_class();
          v15 = v29;
          operationID = [(PDURLRequestOperation *)self operationID];
          v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [responseCopy action]);
          dictionaryRepresentation2 = [responseCopy dictionaryRepresentation];
          *buf = 138544130;
          v38 = v29;
          v39 = 2114;
          v40 = operationID;
          v41 = 2114;
          v42 = v30;
          v43 = 2112;
          v44 = dictionaryRepresentation2;
          _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ ignoring unknown action: %{public}@; payload: %@", buf, 0x2Au);

LABEL_21:
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      [(PDASMPayloadOperation *)self _deleteWithPayload:responseCopy error:error];
    }

    responseZone = [(PDOperation *)self database];
    type3 = [responseCopy type];
    if (type3 > 8)
    {
      if (type3 <= 10)
      {
        if (type3 == 9)
        {
          organization = [responseCopy organization];
          v28 = [(PDASMPayloadOperation *)self processOrganization:organization];
        }

        else
        {
          organization = [responseCopy adminRequest];
          v28 = [(PDASMPayloadOperation *)self processAdminRequest:organization];
        }

        goto LABEL_52;
      }

      switch(type3)
      {
        case 11:
          v22 = [(PDASMPayloadOperation *)self processAdminRequestAccountPayload:responseCopy];
          goto LABEL_17;
        case 12:
          v22 = [(PDASMPayloadOperation *)self processGroupPayload:responseCopy];
          goto LABEL_17;
        case 13:
          organization = [responseCopy groupMember];
          v28 = [(PDASMPayloadOperation *)self processGroupMember:organization];
          goto LABEL_52;
      }
    }

    else
    {
      if (type3 > 5)
      {
        if (type3 == 6)
        {
          v22 = [(PDASMPayloadOperation *)self processClassPayload:responseCopy];
          goto LABEL_17;
        }

        if (type3 == 7)
        {
          organization = [responseCopy classMember];
          v28 = [(PDASMPayloadOperation *)self processClassMember:organization];
        }

        else
        {
          role = [responseCopy role];
          organization = sub_100085D1C(role);

          v28 = sub_100050F94(responseZone, organization);
        }

LABEL_52:
        v7 = v28;

        goto LABEL_18;
      }

      if (type3 == 4)
      {
        organization = [responseCopy location];
        v28 = [(PDASMPayloadOperation *)self processLocation:organization];
        goto LABEL_52;
      }

      if (type3 == 5)
      {
        organization = [responseCopy person];
        v28 = [(PDASMPayloadOperation *)self processPerson:organization];
        goto LABEL_52;
      }
    }

    CLSInitLog();
    logSubsystem2 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      operationID3 = [(PDURLRequestOperation *)self operationID];
      type4 = [responseCopy type];
      if (type4 >= 0xE)
      {
        v36 = [NSString stringWithFormat:@"(unknown: %i)", type4];
      }

      else
      {
        v36 = *(&off_100203FA8 + type4);
      }

      *buf = 138543874;
      v38 = v33;
      v39 = 2114;
      v40 = operationID3;
      v41 = 2114;
      v42 = v36;
      _os_log_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Unexpected payload type: %{public}@;", buf, 0x20u);
    }

    v7 = 1;
    goto LABEL_18;
  }

LABEL_2:
  v7 = 0;
LABEL_23:

  return v7;
}

- (BOOL)processStatusPayload:(id)payload allowMixedResponse:(BOOL)response error:(id *)error
{
  status = [payload status];
  v9 = status;
  if (status)
  {
    if ([status hasInternalMessage])
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v25 = v20;
        operationID = [(PDURLRequestOperation *)self operationID];
        code = [v9 code];
        message = [v9 message];
        internalMessage = [v9 internalMessage];
        *buf = 138544386;
        v27 = v20;
        v28 = 2114;
        v29 = operationID;
        v30 = 1024;
        *v31 = code;
        *&v31[4] = 2112;
        *&v31[6] = message;
        v32 = 2112;
        v33 = internalMessage;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
      }
    }

    v11 = sub_100105CA4(v9);
    [(PDEndpointRequestOperation *)self handleServerAlerts:v11];

    v12 = sub_1001055FC(v9, response);
    v13 = v12 == 0;
    if (v12)
    {
      [(PDEndpointRequestOperation *)self setResponseStatusError:v12];
      if (error)
      {
        v14 = v12;
        *error = v12;
      }

      CLSInitLog();
      logSubsystem2 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = v16;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v27 = v16;
        v28 = 2114;
        v29 = operationID2;
        v30 = 2114;
        *v31 = v12;
        _os_log_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ response status error: %{public}@;", buf, 0x20u);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_forceNoCache:(id)cache
{
  cacheCopy = cache;
  [cacheCopy setExpiration:0.0];
  [cacheCopy setEnforceImmutability:0];
}

- (BOOL)processPerson:(id)person
{
  if (!person)
  {
    return 0;
  }

  personCopy = person;
  database = [(PDOperation *)self database];
  v6 = sub_1000847C8(personCopy);
  [(PDASMPayloadOperation *)self _forceNoCache:v6];
  v7 = sub_100084BC8(personCopy);

  LOBYTE(personCopy) = sub_10011E700(database, v6, v7);
  return personCopy;
}

- (BOOL)processClassPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy hasClassInfo])
  {
    classInfo = [payloadCopy classInfo];
    v6 = sub_1000851D4(classInfo);

    [(PDASMPayloadOperation *)self _forceNoCache:v6];
    tempObjectId = [payloadCopy tempObjectId];
    [v6 setTempObjectID:tempObjectId];

    v8 = [(PDASMPayloadOperation *)self insertEntity:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)processGroupPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy hasGroupInfo])
  {
    groupInfo = [payloadCopy groupInfo];
    v6 = sub_100084F40(groupInfo);

    [(PDASMPayloadOperation *)self _forceNoCache:v6];
    v7 = [(PDASMPayloadOperation *)self insertEntity:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)processClassMember:(id)member
{
  if (!member)
  {
    return 0;
  }

  sub_100085768(member);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(PDASMPayloadOperation *)self insertEntity:v9];
        if ((v10 & 1) == 0)
        {
          personID = [v9 personID];
          v12 = objc_opt_class();
          objectID = [v9 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:personID forClass:v12 fromEntityWithID:objectID withClass:objc_opt_class()];

          parentObjectID = [v9 parentObjectID];
          v15 = objc_opt_class();
          objectID2 = [v9 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:parentObjectID forClass:v15 fromEntityWithID:objectID2 withClass:objc_opt_class()];
        }

        v7 &= v10;
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processGroupMember:(id)member
{
  if (!member)
  {
    return 0;
  }

  sub_1000858B0(member);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(PDASMPayloadOperation *)self insertEntity:v9];
        if ((v10 & 1) == 0)
        {
          personID = [v9 personID];
          v12 = objc_opt_class();
          objectID = [v9 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:personID forClass:v12 fromEntityWithID:objectID withClass:objc_opt_class()];

          parentObjectID = [v9 parentObjectID];
          v15 = objc_opt_class();
          objectID2 = [v9 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:parentObjectID forClass:v15 fromEntityWithID:objectID2 withClass:objc_opt_class()];
        }

        v7 &= v10;
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processLocation:(id)location
{
  if (!location)
  {
    return 0;
  }

  v4 = sub_100085C14(location);
  LOBYTE(self) = [(PDASMPayloadOperation *)self insertEntity:v4];

  return self;
}

- (BOOL)processOrganization:(id)organization
{
  organizationCopy = organization;
  v5 = organizationCopy;
  if (organizationCopy)
  {
    v26 = sub_1000860D8(organizationCopy);
    v27 = v5;
    if ([v26 count])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v6 = v26;
      v7 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v34;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v34 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v33 + 1) + 8 * i);
            if (![(PDASMPayloadOperation *)self insertEntity:v11])
            {
              CLSInitLog();
              logSubsystem = [(PDOperation *)self logSubsystem];
              if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
              {
                v13 = objc_opt_class();
                *buf = 138543618;
                v39 = v13;
                v40 = 2114;
                v41 = v11;
                v14 = v13;
                _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@ failed to save location: %{public}@", buf, 0x16u);
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v8);
      }

      v5 = v27;
    }

    v15 = sub_10008621C(v5);
    v28 = [(PDASMPayloadOperation *)self insertEntity:v15];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    locationIDs = [v15 locationIDs];
    v17 = [locationIDs countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(locationIDs);
          }

          v21 = *(*(&v29 + 1) + 8 * j);
          v22 = objc_opt_class();
          objectID = [v15 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v21 forClass:v22 fromEntityWithID:objectID withClass:objc_opt_class()];
        }

        v18 = [locationIDs countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v18);
    }

    v5 = v27;
    v24 = v28;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)processAdminRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    database = [(PDOperation *)self database];
    v6 = objc_opt_new();
    v7 = sub_1000868EC(requestCopy);
    if (v7)
    {
      [v6 addObject:v7];
    }

    requestor = [requestCopy requestor];
    v9 = sub_1000865E4(requestor);

    if (v9)
    {
      [v6 addObject:v9];
    }

    v10 = [database insertOrUpdateObjects:v6];
    if ((v10 & 1) == 0)
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        operationID = [(PDURLRequestOperation *)self operationID];
        v16 = 138543874;
        v17 = v13;
        v18 = 2114;
        v19 = operationID;
        v20 = 2114;
        v21 = v6;
        _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Failed to insert %{public}@.", &v16, 0x20u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)processAdminRequestAccountPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy hasAdminRequestAccount])
  {
    database = [(PDOperation *)self database];
    v6 = objc_opt_new();
    adminRequestAccount = [payloadCopy adminRequestAccount];
    status = [payloadCopy status];
    v9 = sub_1000871F0(adminRequestAccount, status);

    if (v9)
    {
      [v6 addObject:v9];
    }

    if ([adminRequestAccount hasPerson])
    {
      person = [adminRequestAccount person];
      v11 = sub_1000847C8(person);

      if (v11)
      {
        [v6 addObject:v11];
        person2 = [adminRequestAccount person];
        v13 = sub_100084BC8(person2);

        [v6 addObjectsFromArray:v13];
      }
    }

    v14 = [database insertOrUpdateObjects:v6];
    if ((v14 & 1) == 0)
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = v17;
        operationID = [(PDURLRequestOperation *)self operationID];
        v20 = 138543874;
        v21 = v17;
        v22 = 2114;
        v23 = operationID;
        v24 = 2114;
        v25 = v6;
        _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Failed to insert %{public}@.", &v20, 0x20u);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)handleZoneRemoved:(id)removed
{
  removedCopy = removed;
  [(PDOperation *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100095A04;
  v12 = v11[3] = &unk_1002038B0;
  v5 = removedCopy;
  v13 = v5;
  selfCopy = self;
  v6 = v12;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 performTransaction:v11 forWriting:1];
  }

  else
  {
    v8 = 0;
  }

  CLSInitLog();
  logSubsystem = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "removed from zoneIDs: zone %@", buf, 0xCu);
  }

  return v8;
}

- (BOOL)insertEntity:(id)entity
{
  entityCopy = entity;
  if (entityCopy)
  {
    database = [(PDOperation *)self database];
    if ([database insertOrUpdateObject:entityCopy])
    {
      v6 = *(&self->super._responseStatusError + 2);
      objectID = [entityCopy objectID];
      LOBYTE(v6) = [v6 containsObject:objectID];

      if (v6)
      {
        CLSInitLog();
        v8 = CLSLogSearch;
        if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
        {
          v18 = v8;
          v19 = objc_opt_class();
          v20 = v19;
          operationID = [(PDURLRequestOperation *)self operationID];
          objectID2 = [entityCopy objectID];
          *buf = 138543874;
          v25 = v19;
          v26 = 2114;
          v27 = operationID;
          v28 = 2112;
          v29 = objectID2;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Missing entity %@ remains missing. Leaving it in PDMissingEntityReference.", buf, 0x20u);
        }

        v9 = 1;
      }

      else
      {
        v14 = objc_opt_class();
        objectID3 = [entityCopy objectID];
        v23 = objectID3;
        v16 = [NSArray arrayWithObjects:&v23 count:1];
        v9 = [database deleteAll:v14 where:@"entityID = ?" bindings:v16];
      }
    }

    else
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = v11;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v25 = v11;
        v26 = 2114;
        v27 = operationID2;
        v28 = 2114;
        v29 = entityCopy;
        _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Failed to insert %{public}@.", buf, 0x20u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_deleteWithPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  type = [payloadCopy type];
  if (type <= 5)
  {
    switch(type)
    {
      case 1:
LABEL_40:
        v37 = 1;
        goto LABEL_41;
      case 4:
        v9 = objc_opt_class();
        location = [payloadCopy location];
        locationId = [location locationId];
        goto LABEL_33;
      case 5:
        person = [payloadCopy person];
        personId = [person personId];
        v14 = [(PDASMPayloadOperation *)self deletePersonWithObjectID:personId];
LABEL_30:
        v37 = v14;
LABEL_36:

        goto LABEL_41;
    }

LABEL_26:
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      operationID = [(PDURLRequestOperation *)self operationID];
      type2 = [payloadCopy type];
      if (type2 >= 0xE)
      {
        v42 = [NSString stringWithFormat:@"(unknown: %i)", type2];
      }

      else
      {
        v42 = *(&off_100203FA8 + type2);
      }

      *buf = 138543874;
      v54 = v39;
      v55 = 2114;
      v56 = operationID;
      v57 = 2114;
      v58 = v42;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Unexpected payload type: %{public}@;", buf, 0x20u);
    }

    goto LABEL_40;
  }

  if (type > 7)
  {
    if (type == 8)
    {
      v9 = objc_opt_class();
      location = [payloadCopy role];
      locationId = [location roleId];
      goto LABEL_33;
    }

    if (type == 9)
    {
      organization = [payloadCopy organization];
      locationsCount = [organization locationsCount];

      if (locationsCount)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = payloadCopy;
        organization2 = [payloadCopy organization];
        locations = [organization2 locations];

        v19 = [locations countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v50;
          v22 = &CLSLogAsset_ptr;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v50 != v21)
              {
                objc_enumerationMutation(locations);
              }

              v24 = *(*(&v49 + 1) + 8 * i);
              v25 = v22[96];
              v26 = objc_opt_class();
              locationId2 = [v24 locationId];
              LOBYTE(v26) = [(PDASMPayloadOperation *)self _deleteEntity:v26 identity:locationId2];

              if ((v26 & 1) == 0)
              {
                CLSInitLog();
                logSubsystem2 = [(PDOperation *)self logSubsystem];
                if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = objc_opt_class();
                  v48 = v29;
                  [(PDURLRequestOperation *)self operationID];
                  v30 = v21;
                  selfCopy = self;
                  v32 = v22;
                  v34 = v33 = locations;
                  *buf = 138543874;
                  v54 = v29;
                  v55 = 2114;
                  v56 = v34;
                  v57 = 2114;
                  v58 = v24;
                  _os_log_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to delete location %{public}@.", buf, 0x20u);

                  locations = v33;
                  v22 = v32;
                  self = selfCopy;
                  v21 = v30;
                }
              }
            }

            v20 = [locations countByEnumeratingWithState:&v49 objects:v59 count:16];
          }

          while (v20);
        }

        payloadCopy = v47;
      }

      v35 = objc_opt_class();
      person = [payloadCopy organization];
      personId = [person organizationId];
      classMember2 = sub_100084470(personId);
      v37 = [(PDASMPayloadOperation *)self _deleteEntity:v35 identity:classMember2];
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if (type == 6)
  {
    person = [payloadCopy classInfo];
    personId = [person classId];
    v14 = [(PDASMPayloadOperation *)self deleteClassWithObjectID:personId deletePersons:0];
    goto LABEL_30;
  }

  classMember = [payloadCopy classMember];
  classMemberId = [classMember classMemberId];

  if (!classMemberId)
  {
    person = [payloadCopy classMember];
    personId = [person classId];
    classMember2 = [payloadCopy classMember];
    personIds = [classMember2 personIds];
    stringListValues = [personIds stringListValues];
    v37 = [(PDASMPayloadOperation *)self deleteClassMemberWithClassID:personId personIDs:stringListValues];

LABEL_35:
    goto LABEL_36;
  }

  v9 = objc_opt_class();
  location = [payloadCopy classMember];
  locationId = [location classMemberId];
LABEL_33:
  v43 = locationId;
  v37 = [(PDASMPayloadOperation *)self _deleteEntity:v9 identity:locationId];

LABEL_41:
  return v37;
}

- (BOOL)deletePersonWithObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    if (![(PDASMPayloadOperation *)self _deleteEntity:objc_opt_class() identity:dCopy])
    {
      CLSInitLog();
      v5 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        *buf = 138543618;
        v19 = objc_opt_class();
        v20 = 2114;
        v21 = dCopy;
        v7 = v19;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete person %{public}@", buf, 0x16u);
      }
    }

    database = [(PDOperation *)self database];
    v9 = objc_opt_class();
    v17 = dCopy;
    v10 = 1;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    LOBYTE(v9) = [database deleteAll:v9 where:@"studentID = ?" bindings:v11];

    if ((v9 & 1) == 0)
    {
      CLSInitLog();
      v12 = CLSLogDatabase;
      v10 = 0;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = objc_opt_class();
        *buf = 138543618;
        v19 = v14;
        v20 = 2114;
        v21 = dCopy;
        v15 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete cached report items for person %{public}@", buf, 0x16u);

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)deleteClassWithObjectID:(id)d deletePersons:(BOOL)persons
{
  personsCopy = persons;
  dCopy = d;
  database = [(PDOperation *)self database];
  v8 = database;
  if (personsCopy)
  {
    v9 = sub_1000765A0(database, dCopy);
    v10 = sub_1000711FC(v8);
    v11 = v10;
    if (v10)
    {
      objectID = [v10 objectID];

      if (objectID)
      {
        objectID2 = [v11 objectID];
        [v9 removeObject:objectID2];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (![(PDASMPayloadOperation *)self _deleteEntity:objc_opt_class() identity:dCopy])
  {
    CLSInitLog();
    v14 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      *buf = 138543618;
      v32 = objc_opt_class();
      v33 = 2114;
      v34 = dCopy;
      v16 = v32;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete class %{public}@", buf, 0x16u);
    }
  }

  if (personsCopy && [v9 count])
  {
    v17 = [PDDatabase whereSQLForArray:v9 prefix:@"objectID in "];
    if (([v8 deleteAll:objc_opt_class() where:v17 bindings:v9] & 1) == 0)
    {
      CLSInitLog();
      v18 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = objc_opt_class();
        *buf = 138543618;
        v32 = v20;
        v33 = 2114;
        v34 = dCopy;
        v21 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete persons in class %{public}@", buf, 0x16u);
      }
    }
  }

  v22 = objc_opt_class();
  v30 = dCopy;
  v23 = [NSArray arrayWithObjects:&v30 count:1];
  v24 = [v8 deleteAllWithoutTracking:v22 where:@"classID = ?" bindings:v23];

  if ((v24 & 1) == 0)
  {
    CLSInitLog();
    v25 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = objc_opt_class();
      *buf = 138543618;
      v32 = v27;
      v33 = 2114;
      v34 = dCopy;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete cached report items for class %{public}@", buf, 0x16u);
    }
  }

  return v24;
}

- (BOOL)forgetAboutDeletedEntity:(Class)entity withObjectID:(id)d
{
  dCopy = d;
  database = [(PDOperation *)self database];
  v15 = dCopy;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  if ([database deleteAll:objc_opt_class() where:@"entityID = ?" bindings:v8] && objc_msgSend(database, "deleteAll:where:bindings:", objc_opt_class(), @"entityIdentity = ?", v8) && objc_msgSend(database, "deleteAll:where:bindings:", objc_opt_class(), @"objectID = ?", v8))
  {
    v9 = objc_opt_class();
    v10 = [PDDatabase nameOfEntity:entity];
    v14[0] = v10;
    v14[1] = dCopy;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    v12 = [database deleteAll:v9 where:@"entityName = ? AND entityIdentity = ?" bindings:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)deleteClassMemberWithClassID:(id)d personIDs:(id)ds
{
  dCopy = d;
  dsCopy = ds;
  v8 = dsCopy;
  if (!dsCopy || ![dsCopy count])
  {
    goto LABEL_13;
  }

  v9 = [PDDatabase whereSQLForArray:v8 prefix:@"parentObjectID = ? AND personID in "];
  v10 = objc_opt_new();
  v11 = objc_opt_class();
  [v10 addObject:dCopy];
  [v10 addObjectsFromArray:v8];
  database = [(PDOperation *)self database];
  v13 = [database deleteAll:v11 where:v9 bindings:v10];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v26 = v10;
    v27 = v9;
    v28 = v8;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [CLSClassMember objectIDForClassID:dCopy andPersonID:*(*(&v29 + 1) + 8 * i)];
        v13 = [(PDASMPayloadOperation *)self forgetAboutDeletedEntity:v11 withObjectID:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v16);
    v9 = v27;
    v8 = v28;
    v10 = v26;
  }

  if (v13)
  {
    v20 = 1;
  }

  else
  {
LABEL_13:
    CLSInitLog();
    v21 = CLSLogDatabase;
    v20 = 0;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = objc_opt_class();
      *buf = 138543874;
      v34 = v23;
      v35 = 2114;
      v36 = dCopy;
      v37 = 2114;
      v38 = v8;
      v24 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete classMembers class:%{public}@ persons:%{public}@", buf, 0x20u);

      v20 = 0;
    }
  }

  return v20;
}

- (BOOL)_deleteEntity:(Class)entity identity:(id)identity
{
  identityCopy = identity;
  database = [(PDOperation *)self database];
  v25 = identityCopy;
  v8 = [NSArray arrayWithObjects:&v25 count:1];
  identityColumnName = [(objc_class *)entity identityColumnName];
  v10 = [identityColumnName stringByAppendingString:@" = ?"];

  if ([database deleteAll:entity where:v10 bindings:v8])
  {
    v11 = [(PDASMPayloadOperation *)self forgetAboutDeletedEntity:entity withObjectID:identityCopy];
  }

  else
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      operationID = [(PDURLRequestOperation *)self operationID];
      v17 = 138544130;
      v18 = v13;
      v19 = 2114;
      v20 = operationID;
      v21 = 2114;
      entityCopy = entity;
      v23 = 2112;
      v24 = identityCopy;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to delete %{public}@ %@.", &v17, 0x2Au);
    }

    v11 = 0;
  }

  return v11;
}

@end