@interface PDASMPayloadOperation
- (BOOL)_deleteEntity:(Class)a3 identity:(id)a4;
- (BOOL)_deleteWithPayload:(id)a3 error:(id *)a4;
- (BOOL)deleteClassMemberWithClassID:(id)a3 personIDs:(id)a4;
- (BOOL)deleteClassWithObjectID:(id)a3 deletePersons:(BOOL)a4;
- (BOOL)deletePersonWithObjectID:(id)a3;
- (BOOL)forgetAboutDeletedEntity:(Class)a3 withObjectID:(id)a4;
- (BOOL)handleZoneRemoved:(id)a3;
- (BOOL)insertEntity:(id)a3;
- (BOOL)processAdminRequest:(id)a3;
- (BOOL)processAdminRequestAccountPayload:(id)a3;
- (BOOL)processClassMember:(id)a3;
- (BOOL)processClassPayload:(id)a3;
- (BOOL)processGroupMember:(id)a3;
- (BOOL)processGroupPayload:(id)a3;
- (BOOL)processLocation:(id)a3;
- (BOOL)processOrganization:(id)a3;
- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4;
- (BOOL)processPayloadWithinWriteTransaction:(id)a3 error:(id *)a4 stop:(BOOL *)a5;
- (BOOL)processPayloads:(id)a3 error:(id *)a4;
- (BOOL)processPerson:(id)a3;
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (BOOL)processStatusPayload:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5;
- (BOOL)readStreamablePayload:(id)a3 reader:(id)a4 error:(id *)a5;
- (BOOL)shouldProcessPayload:(id)a3 error:(id *)a4;
- (BOOL)writePayload:(id)a3 toRequest:(id)a4 writer:(id)a5;
- (PDASMPayloadOperation)initWithDatabase:(id)a3;
- (void)_forceNoCache:(id)a3;
@end

@implementation PDASMPayloadOperation

- (PDASMPayloadOperation)initWithDatabase:(id)a3
{
  v7.receiver = self;
  v7.super_class = PDASMPayloadOperation;
  v3 = [(PDURLRequestOperation *)&v7 initWithDatabase:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = *(v3 + 226);
    *(v3 + 226) = v4;
  }

  return v3;
}

- (BOOL)readStreamablePayload:(id)a3 reader:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(PDASMPayloadOperation *)self streamablePayloadClass];
  if (objc_opt_isKindOfClass())
  {
    v10 = sub_1001657C8(v8, v9);
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

    [NSError cls_assignError:a5 code:300 format:@"Cannot read streamed responses containing payloads of type '%@'!", objc_opt_class()];
    v10 = 0;
  }

  return v10;
}

- (BOOL)writePayload:(id)a3 toRequest:(id)a4 writer:(id)a5
{
  v8 = a3;
  v9 = a5;
  [a4 writeTo:v9];
  v10 = [v9 data];

  v11 = [v10 length];
  v12 = [(PDURLRequestOperation *)self stats];
  if (v12)
  {
    v12[10] = v11;
  }

  v13 = [(PDURLRequestOperation *)self stats];
  if (v13)
  {
    ++v13[14];
  }

  v14 = [(PDURLRequestOperation *)self operationID];
  CLSInitLog();
  v15 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_opt_class();
    v26 = v25;
    v27 = [v8 dictionaryRepresentation];
    v30 = 138543874;
    v31 = v25;
    v32 = 2114;
    v33 = v14;
    v34 = 2112;
    v35 = v27;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", &v30, 0x20u);
  }

  v16 = [(PDURLRequestOperation *)self stats];
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 80);
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PDURLRequestOperation *)self stats];
  v20 = v19;
  if (v19)
  {
    v21 = *(v19 + 112);
  }

  else
  {
    v21 = 0;
  }

  v22 = [(PDEndpointRequestOperation *)self hasReachedRequestPayloadLimitBytes:v18 count:v21];

  if (v22)
  {
    CLSInitLog();
    v23 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v30 = 138543618;
      v31 = v28;
      v32 = 2114;
      v33 = v14;
      v29 = v28;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ payload limit reached.", &v30, 0x16u);
    }
  }

  return v22 ^ 1;
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
    v8 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(PDURLRequestOperation *)self operationID];
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ processing response;", &v17, 0x16u);
    }

    v12 = [v6 payloads];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 count];
      v15 = [(PDURLRequestOperation *)self stats];
      if (v15)
      {
        v15[15] = v14;
      }

      v7 = [(PDASMPayloadOperation *)self processPayloads:v13 error:a4];
    }

    else
    {
      v7 = 0;
    }

    [(PDASMPayloadOperation *)self finishedResponseProcessing];
  }

  return v7;
}

- (BOOL)processPayloadWithinWriteTransaction:(id)a3 error:(id *)a4 stop:(BOOL *)a5
{
  v8 = a3;
  if (!a4)
  {
    v24 = 0;
    a4 = &v24;
  }

  if ([(PDOperation *)self isAborted])
  {
    LOBYTE(v9) = 0;
    *a5 = 1;
  }

  else
  {
    v23 = 0;
    v9 = [(PDASMPayloadOperation *)self processPayloadFromResponse:v8 error:&v23];
    v10 = v23;
    v11 = [(PDURLRequestOperation *)self stats];
    sub_10009E98C(v11, [v8 type], v9);

    if ((v9 & 1) == 0)
    {
      CLSInitLog();
      v12 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v26 = v13;
        v27 = 2114;
        v28 = v15;
        v29 = 2114;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ failed to process payload: %{public}@", buf, 0x20u);
      }

      v16 = [(PDEndpointRequestOperation *)self responseStatusError];

      if (v16)
      {
        *a4 = [(PDEndpointRequestOperation *)self responseStatusError];
        *a5 = 1;
      }
    }

    if (*a4)
    {
      CLSInitLog();
      v17 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = v19;
        v21 = [(PDURLRequestOperation *)self operationID];
        v22 = *a4;
        *buf = 138543874;
        v26 = v19;
        v27 = 2114;
        v28 = v21;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ failed to process response: %{public}@", buf, 0x20u);
      }

      if (*a4 && [v8 type] == 1)
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (BOOL)processPayloads:(id)a3 error:(id *)a4
{
  v6 = a3;
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
    v8 = [(PDOperation *)self database];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100093D84;
    v11[3] = &unk_100203110;
    v11[4] = self;
    v12 = v6;
    v13 = &v14;
    if (v8)
    {
      v7 = [v8 performTransaction:v11 forWriting:1];
    }

    else
    {
      v7 = 0;
    }

    v9 = v15[5];
    if (v9)
    {
      v7 = 0;
      if (a4)
      {
        *a4 = v9;
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

- (BOOL)shouldProcessPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 hasStatus])
  {
    goto LABEL_9;
  }

  v7 = [v6 status];
  v8 = -[PDASMPayloadOperation shouldProcessPayloadWithStatusCode:](self, "shouldProcessPayloadWithStatusCode:", [v7 code]);

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = [v6 status];
  v10 = sub_1001055FC(v9, 0);

  if (v10)
  {
    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }

    CLSInitLog();
    v12 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = [(PDURLRequestOperation *)self operationID];
      v15 = [v6 type];
      if (v15 >= 0xE)
      {
        v16 = [NSString stringWithFormat:@"(unknown: %i)", v15];
      }

      else
      {
        v16 = *(&off_100203FA8 + v15);
      }

      *buf = 138544130;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Skipping %{public}@ payload with error: %{public}@", buf, 0x2Au);
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

- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(PDOperation *)self isAborted])
  {
    goto LABEL_2;
  }

  v8 = -[PDASMPayloadOperation acceptsPayloadType:](self, "acceptsPayloadType:", [v6 type]);
  CLSInitLog();
  v9 = [(PDOperation *)self logSubsystem];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v10)
    {
      v15 = objc_opt_class();
      v16 = [(PDURLRequestOperation *)self operationID];
      v17 = [v6 type];
      if (v17 >= 0xE)
      {
        v18 = [NSString stringWithFormat:@"(unknown: %i)", v17];
      }

      else
      {
        v18 = *(&off_100203FA8 + v17);
      }

      *buf = 138543874;
      v38 = v15;
      v39 = 2114;
      v40 = v16;
      v41 = 2114;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Ignoring payload type: %{public}@", buf, 0x20u);

      goto LABEL_21;
    }

LABEL_22:

    v7 = 1;
    goto LABEL_23;
  }

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [(PDURLRequestOperation *)self operationID];
    v13 = [v6 type];
    if (v13 >= 0xE)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
    }

    else
    {
      v14 = *(&off_100203FA8 + v13);
    }

    v19 = [v6 dictionaryRepresentation];
    *buf = 138544130;
    v38 = v11;
    v39 = 2114;
    v40 = v12;
    v41 = 2114;
    v42 = v14;
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Processing payload type: %{public}@\n    payload: %@", buf, 0x2Au);
  }

  if ([v6 type] == 1)
  {
    v20 = [(PDASMPayloadOperation *)self processStatusPayload:v6 allowMixedResponse:[(PDASMPayloadOperation *)self allowMixedResponseStatusCode] error:a4];
LABEL_14:
    v7 = v20;
    goto LABEL_23;
  }

  if ([v6 type] == 3)
  {
    v21 = [v6 responseZone];
    v22 = [(PDASMPayloadOperation *)self processResponseZone:v21];
LABEL_17:
    v7 = v22;
LABEL_18:

    goto LABEL_23;
  }

  if ([(PDASMPayloadOperation *)self shouldProcessPayload:v6 error:a4])
  {
    v24 = [(PDASMPayloadOperation *)self actionForPayload:v6];
    if (v24 != 1)
    {
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          v20 = [(PDASMPayloadOperation *)self _deleteWithPayload:v6 error:a4];
          goto LABEL_14;
        }

        CLSInitLog();
        v9 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v29 = objc_opt_class();
          v15 = v29;
          v16 = [(PDURLRequestOperation *)self operationID];
          v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 action]);
          v31 = [v6 dictionaryRepresentation];
          *buf = 138544130;
          v38 = v29;
          v39 = 2114;
          v40 = v16;
          v41 = 2114;
          v42 = v30;
          v43 = 2112;
          v44 = v31;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ ignoring unknown action: %{public}@; payload: %@", buf, 0x2Au);

LABEL_21:
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      [(PDASMPayloadOperation *)self _deleteWithPayload:v6 error:a4];
    }

    v21 = [(PDOperation *)self database];
    v25 = [v6 type];
    if (v25 > 8)
    {
      if (v25 <= 10)
      {
        if (v25 == 9)
        {
          v27 = [v6 organization];
          v28 = [(PDASMPayloadOperation *)self processOrganization:v27];
        }

        else
        {
          v27 = [v6 adminRequest];
          v28 = [(PDASMPayloadOperation *)self processAdminRequest:v27];
        }

        goto LABEL_52;
      }

      switch(v25)
      {
        case 11:
          v22 = [(PDASMPayloadOperation *)self processAdminRequestAccountPayload:v6];
          goto LABEL_17;
        case 12:
          v22 = [(PDASMPayloadOperation *)self processGroupPayload:v6];
          goto LABEL_17;
        case 13:
          v27 = [v6 groupMember];
          v28 = [(PDASMPayloadOperation *)self processGroupMember:v27];
          goto LABEL_52;
      }
    }

    else
    {
      if (v25 > 5)
      {
        if (v25 == 6)
        {
          v22 = [(PDASMPayloadOperation *)self processClassPayload:v6];
          goto LABEL_17;
        }

        if (v25 == 7)
        {
          v27 = [v6 classMember];
          v28 = [(PDASMPayloadOperation *)self processClassMember:v27];
        }

        else
        {
          v26 = [v6 role];
          v27 = sub_100085D1C(v26);

          v28 = sub_100050F94(v21, v27);
        }

LABEL_52:
        v7 = v28;

        goto LABEL_18;
      }

      if (v25 == 4)
      {
        v27 = [v6 location];
        v28 = [(PDASMPayloadOperation *)self processLocation:v27];
        goto LABEL_52;
      }

      if (v25 == 5)
      {
        v27 = [v6 person];
        v28 = [(PDASMPayloadOperation *)self processPerson:v27];
        goto LABEL_52;
      }
    }

    CLSInitLog();
    v32 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v34 = [(PDURLRequestOperation *)self operationID];
      v35 = [v6 type];
      if (v35 >= 0xE)
      {
        v36 = [NSString stringWithFormat:@"(unknown: %i)", v35];
      }

      else
      {
        v36 = *(&off_100203FA8 + v35);
      }

      *buf = 138543874;
      v38 = v33;
      v39 = 2114;
      v40 = v34;
      v41 = 2114;
      v42 = v36;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Unexpected payload type: %{public}@;", buf, 0x20u);
    }

    v7 = 1;
    goto LABEL_18;
  }

LABEL_2:
  v7 = 0;
LABEL_23:

  return v7;
}

- (BOOL)processStatusPayload:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5
{
  v8 = [a3 status];
  v9 = v8;
  if (v8)
  {
    if ([v8 hasInternalMessage])
    {
      CLSInitLog();
      v10 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v25 = v20;
        v21 = [(PDURLRequestOperation *)self operationID];
        v22 = [v9 code];
        v23 = [v9 message];
        v24 = [v9 internalMessage];
        *buf = 138544386;
        v27 = v20;
        v28 = 2114;
        v29 = v21;
        v30 = 1024;
        *v31 = v22;
        *&v31[4] = 2112;
        *&v31[6] = v23;
        v32 = 2112;
        v33 = v24;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
      }
    }

    v11 = sub_100105CA4(v9);
    [(PDEndpointRequestOperation *)self handleServerAlerts:v11];

    v12 = sub_1001055FC(v9, a4);
    v13 = v12 == 0;
    if (v12)
    {
      [(PDEndpointRequestOperation *)self setResponseStatusError:v12];
      if (a5)
      {
        v14 = v12;
        *a5 = v12;
      }

      CLSInitLog();
      v15 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = v16;
        v18 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v27 = v16;
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        *v31 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ response status error: %{public}@;", buf, 0x20u);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_forceNoCache:(id)a3
{
  v3 = a3;
  [v3 setExpiration:0.0];
  [v3 setEnforceImmutability:0];
}

- (BOOL)processPerson:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = sub_1000847C8(v4);
  [(PDASMPayloadOperation *)self _forceNoCache:v6];
  v7 = sub_100084BC8(v4);

  LOBYTE(v4) = sub_10011E700(v5, v6, v7);
  return v4;
}

- (BOOL)processClassPayload:(id)a3
{
  v4 = a3;
  if ([v4 hasClassInfo])
  {
    v5 = [v4 classInfo];
    v6 = sub_1000851D4(v5);

    [(PDASMPayloadOperation *)self _forceNoCache:v6];
    v7 = [v4 tempObjectId];
    [v6 setTempObjectID:v7];

    v8 = [(PDASMPayloadOperation *)self insertEntity:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)processGroupPayload:(id)a3
{
  v4 = a3;
  if ([v4 hasGroupInfo])
  {
    v5 = [v4 groupInfo];
    v6 = sub_100084F40(v5);

    [(PDASMPayloadOperation *)self _forceNoCache:v6];
    v7 = [(PDASMPayloadOperation *)self insertEntity:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)processClassMember:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  sub_100085768(a3);
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
          v11 = [v9 personID];
          v12 = objc_opt_class();
          v13 = [v9 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v11 forClass:v12 fromEntityWithID:v13 withClass:objc_opt_class()];

          v14 = [v9 parentObjectID];
          v15 = objc_opt_class();
          v16 = [v9 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v14 forClass:v15 fromEntityWithID:v16 withClass:objc_opt_class()];
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

- (BOOL)processGroupMember:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  sub_1000858B0(a3);
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
          v11 = [v9 personID];
          v12 = objc_opt_class();
          v13 = [v9 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v11 forClass:v12 fromEntityWithID:v13 withClass:objc_opt_class()];

          v14 = [v9 parentObjectID];
          v15 = objc_opt_class();
          v16 = [v9 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v14 forClass:v15 fromEntityWithID:v16 withClass:objc_opt_class()];
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

- (BOOL)processLocation:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = sub_100085C14(a3);
  LOBYTE(self) = [(PDASMPayloadOperation *)self insertEntity:v4];

  return self;
}

- (BOOL)processOrganization:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v26 = sub_1000860D8(v4);
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
              v12 = [(PDOperation *)self logSubsystem];
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                v13 = objc_opt_class();
                *buf = 138543618;
                v39 = v13;
                v40 = 2114;
                v41 = v11;
                v14 = v13;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@ failed to save location: %{public}@", buf, 0x16u);
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
    v16 = [v15 locationIDs];
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * j);
          v22 = objc_opt_class();
          v23 = [v15 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v21 forClass:v22 fromEntityWithID:v23 withClass:objc_opt_class()];
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
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

- (BOOL)processAdminRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PDOperation *)self database];
    v6 = objc_opt_new();
    v7 = sub_1000868EC(v4);
    if (v7)
    {
      [v6 addObject:v7];
    }

    v8 = [v4 requestor];
    v9 = sub_1000865E4(v8);

    if (v9)
    {
      [v6 addObject:v9];
    }

    v10 = [v5 insertOrUpdateObjects:v6];
    if ((v10 & 1) == 0)
    {
      CLSInitLog();
      v11 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = [(PDURLRequestOperation *)self operationID];
        v16 = 138543874;
        v17 = v13;
        v18 = 2114;
        v19 = v15;
        v20 = 2114;
        v21 = v6;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Failed to insert %{public}@.", &v16, 0x20u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)processAdminRequestAccountPayload:(id)a3
{
  v4 = a3;
  if ([v4 hasAdminRequestAccount])
  {
    v5 = [(PDOperation *)self database];
    v6 = objc_opt_new();
    v7 = [v4 adminRequestAccount];
    v8 = [v4 status];
    v9 = sub_1000871F0(v7, v8);

    if (v9)
    {
      [v6 addObject:v9];
    }

    if ([v7 hasPerson])
    {
      v10 = [v7 person];
      v11 = sub_1000847C8(v10);

      if (v11)
      {
        [v6 addObject:v11];
        v12 = [v7 person];
        v13 = sub_100084BC8(v12);

        [v6 addObjectsFromArray:v13];
      }
    }

    v14 = [v5 insertOrUpdateObjects:v6];
    if ((v14 & 1) == 0)
    {
      CLSInitLog();
      v15 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = v17;
        v19 = [(PDURLRequestOperation *)self operationID];
        v20 = 138543874;
        v21 = v17;
        v22 = 2114;
        v23 = v19;
        v24 = 2114;
        v25 = v6;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Failed to insert %{public}@.", &v20, 0x20u);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)handleZoneRemoved:(id)a3
{
  v4 = a3;
  [(PDOperation *)self database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100095A04;
  v12 = v11[3] = &unk_1002038B0;
  v5 = v4;
  v13 = v5;
  v14 = self;
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
  v9 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "removed from zoneIDs: zone %@", buf, 0xCu);
  }

  return v8;
}

- (BOOL)insertEntity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PDOperation *)self database];
    if ([v5 insertOrUpdateObject:v4])
    {
      v6 = *(&self->super._responseStatusError + 2);
      v7 = [v4 objectID];
      LOBYTE(v6) = [v6 containsObject:v7];

      if (v6)
      {
        CLSInitLog();
        v8 = CLSLogSearch;
        if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
        {
          v18 = v8;
          v19 = objc_opt_class();
          v20 = v19;
          v21 = [(PDURLRequestOperation *)self operationID];
          v22 = [v4 objectID];
          *buf = 138543874;
          v25 = v19;
          v26 = 2114;
          v27 = v21;
          v28 = 2112;
          v29 = v22;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Missing entity %@ remains missing. Leaving it in PDMissingEntityReference.", buf, 0x20u);
        }

        v9 = 1;
      }

      else
      {
        v14 = objc_opt_class();
        v15 = [v4 objectID];
        v23 = v15;
        v16 = [NSArray arrayWithObjects:&v23 count:1];
        v9 = [v5 deleteAll:v14 where:@"entityID = ?" bindings:v16];
      }
    }

    else
    {
      CLSInitLog();
      v10 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v13 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v25 = v11;
        v26 = 2114;
        v27 = v13;
        v28 = 2114;
        v29 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Failed to insert %{public}@.", buf, 0x20u);
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

- (BOOL)_deleteWithPayload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 type];
  if (v6 <= 5)
  {
    switch(v6)
    {
      case 1:
LABEL_40:
        v37 = 1;
        goto LABEL_41;
      case 4:
        v9 = objc_opt_class();
        v10 = [v5 location];
        v11 = [v10 locationId];
        goto LABEL_33;
      case 5:
        v12 = [v5 person];
        v13 = [v12 personId];
        v14 = [(PDASMPayloadOperation *)self deletePersonWithObjectID:v13];
LABEL_30:
        v37 = v14;
LABEL_36:

        goto LABEL_41;
    }

LABEL_26:
    CLSInitLog();
    v38 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = [(PDURLRequestOperation *)self operationID];
      v41 = [v5 type];
      if (v41 >= 0xE)
      {
        v42 = [NSString stringWithFormat:@"(unknown: %i)", v41];
      }

      else
      {
        v42 = *(&off_100203FA8 + v41);
      }

      *buf = 138543874;
      v54 = v39;
      v55 = 2114;
      v56 = v40;
      v57 = 2114;
      v58 = v42;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Unexpected payload type: %{public}@;", buf, 0x20u);
    }

    goto LABEL_40;
  }

  if (v6 > 7)
  {
    if (v6 == 8)
    {
      v9 = objc_opt_class();
      v10 = [v5 role];
      v11 = [v10 roleId];
      goto LABEL_33;
    }

    if (v6 == 9)
    {
      v15 = [v5 organization];
      v16 = [v15 locationsCount];

      if (v16)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = v5;
        v17 = [v5 organization];
        v18 = [v17 locations];

        v19 = [v18 countByEnumeratingWithState:&v49 objects:v59 count:16];
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
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v49 + 1) + 8 * i);
              v25 = v22[96];
              v26 = objc_opt_class();
              v27 = [v24 locationId];
              LOBYTE(v26) = [(PDASMPayloadOperation *)self _deleteEntity:v26 identity:v27];

              if ((v26 & 1) == 0)
              {
                CLSInitLog();
                v28 = [(PDOperation *)self logSubsystem];
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = objc_opt_class();
                  v48 = v29;
                  [(PDURLRequestOperation *)self operationID];
                  v30 = v21;
                  v31 = self;
                  v32 = v22;
                  v34 = v33 = v18;
                  *buf = 138543874;
                  v54 = v29;
                  v55 = 2114;
                  v56 = v34;
                  v57 = 2114;
                  v58 = v24;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to delete location %{public}@.", buf, 0x20u);

                  v18 = v33;
                  v22 = v32;
                  self = v31;
                  v21 = v30;
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v49 objects:v59 count:16];
          }

          while (v20);
        }

        v5 = v47;
      }

      v35 = objc_opt_class();
      v12 = [v5 organization];
      v13 = [v12 organizationId];
      v36 = sub_100084470(v13);
      v37 = [(PDASMPayloadOperation *)self _deleteEntity:v35 identity:v36];
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if (v6 == 6)
  {
    v12 = [v5 classInfo];
    v13 = [v12 classId];
    v14 = [(PDASMPayloadOperation *)self deleteClassWithObjectID:v13 deletePersons:0];
    goto LABEL_30;
  }

  v7 = [v5 classMember];
  v8 = [v7 classMemberId];

  if (!v8)
  {
    v12 = [v5 classMember];
    v13 = [v12 classId];
    v36 = [v5 classMember];
    v44 = [v36 personIds];
    v45 = [v44 stringListValues];
    v37 = [(PDASMPayloadOperation *)self deleteClassMemberWithClassID:v13 personIDs:v45];

LABEL_35:
    goto LABEL_36;
  }

  v9 = objc_opt_class();
  v10 = [v5 classMember];
  v11 = [v10 classMemberId];
LABEL_33:
  v43 = v11;
  v37 = [(PDASMPayloadOperation *)self _deleteEntity:v9 identity:v11];

LABEL_41:
  return v37;
}

- (BOOL)deletePersonWithObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (![(PDASMPayloadOperation *)self _deleteEntity:objc_opt_class() identity:v4])
    {
      CLSInitLog();
      v5 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        *buf = 138543618;
        v19 = objc_opt_class();
        v20 = 2114;
        v21 = v4;
        v7 = v19;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete person %{public}@", buf, 0x16u);
      }
    }

    v8 = [(PDOperation *)self database];
    v9 = objc_opt_class();
    v17 = v4;
    v10 = 1;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    LOBYTE(v9) = [v8 deleteAll:v9 where:@"studentID = ?" bindings:v11];

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
        v21 = v4;
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

- (BOOL)deleteClassWithObjectID:(id)a3 deletePersons:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PDOperation *)self database];
  v8 = v7;
  if (v4)
  {
    v9 = sub_1000765A0(v7, v6);
    v10 = sub_1000711FC(v8);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectID];

      if (v12)
      {
        v13 = [v11 objectID];
        [v9 removeObject:v13];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (![(PDASMPayloadOperation *)self _deleteEntity:objc_opt_class() identity:v6])
  {
    CLSInitLog();
    v14 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      *buf = 138543618;
      v32 = objc_opt_class();
      v33 = 2114;
      v34 = v6;
      v16 = v32;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete class %{public}@", buf, 0x16u);
    }
  }

  if (v4 && [v9 count])
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
        v34 = v6;
        v21 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete persons in class %{public}@", buf, 0x16u);
      }
    }
  }

  v22 = objc_opt_class();
  v30 = v6;
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
      v34 = v6;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete cached report items for class %{public}@", buf, 0x16u);
    }
  }

  return v24;
}

- (BOOL)forgetAboutDeletedEntity:(Class)a3 withObjectID:(id)a4
{
  v6 = a4;
  v7 = [(PDOperation *)self database];
  v15 = v6;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  if ([v7 deleteAll:objc_opt_class() where:@"entityID = ?" bindings:v8] && objc_msgSend(v7, "deleteAll:where:bindings:", objc_opt_class(), @"entityIdentity = ?", v8) && objc_msgSend(v7, "deleteAll:where:bindings:", objc_opt_class(), @"objectID = ?", v8))
  {
    v9 = objc_opt_class();
    v10 = [PDDatabase nameOfEntity:a3];
    v14[0] = v10;
    v14[1] = v6;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    v12 = [v7 deleteAll:v9 where:@"entityName = ? AND entityIdentity = ?" bindings:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)deleteClassMemberWithClassID:(id)a3 personIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || ![v7 count])
  {
    goto LABEL_13;
  }

  v9 = [PDDatabase whereSQLForArray:v8 prefix:@"parentObjectID = ? AND personID in "];
  v10 = objc_opt_new();
  v11 = objc_opt_class();
  [v10 addObject:v6];
  [v10 addObjectsFromArray:v8];
  v12 = [(PDOperation *)self database];
  v13 = [v12 deleteAll:v11 where:v9 bindings:v10];

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

        v19 = [CLSClassMember objectIDForClassID:v6 andPersonID:*(*(&v29 + 1) + 8 * i)];
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
      v36 = v6;
      v37 = 2114;
      v38 = v8;
      v24 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete classMembers class:%{public}@ persons:%{public}@", buf, 0x20u);

      v20 = 0;
    }
  }

  return v20;
}

- (BOOL)_deleteEntity:(Class)a3 identity:(id)a4
{
  v6 = a4;
  v7 = [(PDOperation *)self database];
  v25 = v6;
  v8 = [NSArray arrayWithObjects:&v25 count:1];
  v9 = [(objc_class *)a3 identityColumnName];
  v10 = [v9 stringByAppendingString:@" = ?"];

  if ([v7 deleteAll:a3 where:v10 bindings:v8])
  {
    v11 = [(PDASMPayloadOperation *)self forgetAboutDeletedEntity:a3 withObjectID:v6];
  }

  else
  {
    CLSInitLog();
    v12 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [(PDURLRequestOperation *)self operationID];
      v17 = 138544130;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = a3;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to delete %{public}@ %@.", &v17, 0x2Au);
    }

    v11 = 0;
  }

  return v11;
}

@end