@interface PDUploadEventsOperation
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (BOOL)wantsToExecute;
- (id)requestData;
- (void)prepare;
@end

@implementation PDUploadEventsOperation

- (BOOL)wantsToExecute
{
  if ([(PDOperation *)self isAborted])
  {
    return 0;
  }

  database = [(PDOperation *)self database];
  v5 = [database count:objc_opt_class() where:0 bindings:0];

  return v5 > 0;
}

- (void)prepare
{
  v2.receiver = self;
  v2.super_class = PDUploadEventsOperation;
  [(PDAsyncOperation *)&v2 prepare];
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    immutableData = 0;
  }

  else
  {
    stats = [(PDURLRequestOperation *)self stats];
    if (stats)
    {
      stats[14] = 0;
    }

    v5 = objc_alloc_init(PBDataWriter);
    v6 = objc_alloc_init(PDDPUploadEventsRequest);
    database = [(PDOperation *)self database];
    v8 = objc_opt_class();
    endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
    v10 = endpointInfo;
    if (endpointInfo)
    {
      v11 = *(endpointInfo + 64);
    }

    else
    {
      v11 = 0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E5F6C;
    v17[3] = &unk_100204CF0;
    v17[4] = self;
    v18 = v6;
    v12 = v5;
    v19 = v12;
    v13 = v6;
    [database selectAll:v8 where:0 orderBy:@"dateCreated asc" limit:v11 offset:0 bindings:0 block:v17];

    stats2 = [(PDURLRequestOperation *)self stats];
    if (stats2 && (v15 = stats2[14], stats2, v15))
    {
      immutableData = [v12 immutableData];
    }

    else
    {
      [(PDEndpointRequestOperation *)self markAsFinished];
      immutableData = 0;
    }
  }

  return immutableData;
}

- (BOOL)processResponseObject:(id)object error:(id *)error
{
  objectCopy = object;
  isAborted = [(PDOperation *)self isAborted];
  v7 = isAborted;
  if ((isAborted & 1) == 0)
  {
    v42 = isAborted;
    database = [(PDOperation *)self database];
    CLSInitLog();
    logSubsystem = [(PDUploadEventsOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      operationID = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      v52 = v10;
      v53 = 2114;
      v54 = operationID;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ processing response;", buf, 0x16u);
    }

    CLSInitLog();
    logSubsystem2 = [(PDUploadEventsOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = v37;
      operationID2 = [(PDURLRequestOperation *)self operationID];
      dictionaryRepresentation = [objectCopy dictionaryRepresentation];
      *buf = 138543874;
      v52 = v37;
      v53 = 2114;
      v54 = operationID2;
      v55 = 2112;
      v56 = dictionaryRepresentation;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response data: %@", buf, 0x20u);
    }

    operationID3 = [(PDURLRequestOperation *)self operationID];
    eventItems = [objectCopy eventItems];
    v15 = [eventItems count];
    stats = [(PDURLRequestOperation *)self stats];
    if (stats)
    {
      stats[15] = v15;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = objectCopy;
    eventItems2 = [objectCopy eventItems];
    v18 = [eventItems2 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      v43 = eventItems2;
      v44 = database;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(eventItems2);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          status = [v22 status];
          code = [status code];

          if (code == 1)
          {
            v26 = objc_opt_class();
            objectId = [v22 objectId];
            v50 = objectId;
            v28 = [NSArray arrayWithObjects:&v50 count:1];
            LOBYTE(v26) = [database deleteAll:v26 where:@"objectID = ?" bindings:v28];

            if (v26)
            {
              goto LABEL_78;
            }

            goto LABEL_75;
          }

          CLSInitLog();
          logSubsystem3 = [(PDUploadEventsOperation *)self logSubsystem];
          if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEFAULT))
          {
            v30 = objc_opt_class();
            objectId2 = [v22 objectId];
            status2 = [v22 status];
            code2 = [status2 code];
            if (code2 > 299)
            {
              if (code2 <= 801)
              {
                if (code2 > 799)
                {
                  if (code2 == 800)
                  {
                    v34 = @"E_NOT_APPLICABLE_TYPE";
                  }

                  else
                  {
                    v34 = @"E_ENTITY_NOT_FOUND";
                  }

                  goto LABEL_73;
                }

                if (code2 == 300)
                {
                  v34 = @"E_DEVICE_UNSUPPORTED";
                  goto LABEL_73;
                }

                if (code2 == 500)
                {
                  v34 = @"E_INVALID_FIELD_VALUE";
                  goto LABEL_73;
                }

                goto LABEL_45;
              }

              if (code2 <= 803)
              {
                if (code2 == 802)
                {
                  v34 = @"E_ENTITY_PRIVILEGE_CHANGE";
                }

                else
                {
                  v34 = @"E_MUST_ACCEPT_TERMS";
                }

                goto LABEL_73;
              }

              if (code2 == 804)
              {
                v34 = @"E_ENTITY_EXPIRED";
                goto LABEL_73;
              }

              if (code2 == 805)
              {
                v34 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
                goto LABEL_73;
              }

              if (code2 != 806)
              {
                goto LABEL_45;
              }

              v34 = @"E_DISALLOWED_EMAIL_DOMAIN";
            }

            else
            {
              if (code2 > 3)
              {
                switch(code2)
                {
                  case 'd':
                    v34 = @"E_BOOTSTRAP_REQUIRED";
                    break;
                  case 'e':
                    v34 = @"E_AUTHENTICATION_FAILED";
                    break;
                  case 'f':
                    v34 = @"E_NOT_AUTHORIZED";
                    break;
                  case 'g':
                    v34 = @"E_MESCAL_SIGNATURE_REQUIRED";
                    break;
                  case 'h':
                    v34 = @"E_MESCAL_BAD_SIGNATURE";
                    break;
                  case 'i':
                    v34 = @"E_MESCAL_PARSE_ERROR";
                    break;
                  case 'j':
                    v34 = @"E_BAD_REQUEST";
                    break;
                  case 'k':
                    v34 = @"E_BAD_PROTOCOL_VERSION";
                    break;
                  case 'l':
                    v34 = @"E_REQUEST_TOO_LARGE";
                    break;
                  case 'm':
                    v34 = @"E_REQUEST_TOO_MANY_ITEMS";
                    break;
                  case 'n':
                    v34 = @"E_SERVER_BUSY";
                    break;
                  case 'o':
                    v34 = @"E_ACCESS_DENIED";
                    break;
                  case 'p':
                    v34 = @"E_CONFLICT";
                    break;
                  case 'q':
                    v34 = @"E_INVALID_STATE";
                    break;
                  case 'r':
                    v34 = @"E_LOCK_TAKEN";
                    break;
                  case 's':
                    v34 = @"E_DOWNSTREAM_SERVICE_FAILED";
                    break;
                  case 't':
                    v34 = @"E_DOWNSTREAM_SERVICE_THROTTLED";
                    break;
                  case 'u':
                    v34 = @"E_DRIVE_USER_QUOTA_EXCEEDED";
                    break;
                  case 'v':
                    v34 = @"E_DRIVE_GROUP_QUOTA_EXCEEDED";
                    break;
                  case 'w':
                    v34 = @"E_DRIVE_ORG_QUOTA_EXCEEDED";
                    break;
                  case 'x':
                    v34 = @"E_RECORD_LIMIT_EXCEEDED";
                    break;
                  case 'y':
                    v34 = @"E_DISALLOWED_COUNTRY_CODE";
                    break;
                  default:
                    if (code2 == 4)
                    {
                      v34 = @"S_OK_HAS_MORE_DATA";
                    }

                    else
                    {
                      if (code2 != 5)
                      {
                        goto LABEL_45;
                      }

                      v34 = @"S_PROCESSING";
                    }

                    break;
                }

                goto LABEL_73;
              }

              if (code2 > 1)
              {
                if (code2 == 2)
                {
                  v34 = @"E_ERROR";
                }

                else
                {
                  v34 = @"S_MIXED_RESPONSE";
                }

                goto LABEL_73;
              }

              v34 = @"UNKNOWN_CODE";
              if (code2)
              {
                if (code2 == 1)
                {
                  v34 = @"S_OK";
                  goto LABEL_73;
                }

LABEL_45:
                v34 = [NSString stringWithFormat:@"(unknown: %i)", code2];
              }
            }

LABEL_73:
            *buf = 138544130;
            v52 = v30;
            v53 = 2114;
            v54 = operationID3;
            v55 = 2112;
            v56 = objectId2;
            v57 = 2112;
            v58 = v34;
            _os_log_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Upload item %@ was rejected. status: %@", buf, 0x2Au);

            eventItems2 = v43;
            database = v44;
          }

LABEL_75:
          stats2 = [(PDURLRequestOperation *)self stats];
          if (stats2)
          {
            ++stats2[16];
          }

LABEL_78:
          objc_autoreleasePoolPop(v23);
        }

        v19 = [eventItems2 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v19);
    }

    v7 = v42;
    objectCopy = v41;
  }

  return v7 ^ 1;
}

@end