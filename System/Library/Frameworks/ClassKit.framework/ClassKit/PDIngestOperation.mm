@interface PDIngestOperation
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (BOOL)wantsToExecute;
- (id)requestData;
- (void)prepare;
@end

@implementation PDIngestOperation

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
  database = [(PDOperation *)self database];
  v4 = sub_10007116C(database);

  if ((v4 & 1) == 0)
  {
    [(PDEndpointRequestOperation *)self markAsFinished];
  }

  v5.receiver = self;
  v5.super_class = PDIngestOperation;
  [(PDAsyncOperation *)&v5 prepare];
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
    v6 = objc_alloc_init(PDDPIngestRequest);
    database = [(PDOperation *)self database];
    v8 = +[NSTimeZone localTimeZone];
    secondsFromGMT = [v8 secondsFromGMT];

    v10 = objc_opt_new();
    v11 = objc_opt_class();
    endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
    v13 = endpointInfo;
    if (endpointInfo)
    {
      v14 = *(endpointInfo + 64);
    }

    else
    {
      v14 = 0;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000E8798;
    v27[3] = &unk_100204D40;
    v27[4] = self;
    v15 = database;
    v28 = v15;
    v32 = secondsFromGMT;
    v16 = v10;
    v29 = v16;
    v30 = v6;
    v17 = v5;
    v31 = v17;
    v18 = v6;
    [v15 selectAll:v11 where:0 orderBy:@"wasDeleted asc" limit:v14 offset:0 bindings:0 block:v27];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000E8D20;
    v24[3] = &unk_100202140;
    v25 = v16;
    v26 = v15;
    v19 = v15;
    v20 = v16;
    if (v19)
    {
      [v19 performTransaction:v24 forWriting:1];
    }

    stats2 = [(PDURLRequestOperation *)self stats];
    if (stats2 && (v22 = stats2[14], stats2, v22))
    {
      immutableData = [v17 immutableData];
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
  if (![(PDOperation *)self isAborted])
  {
    database = [(PDOperation *)self database];
    CLSInitLog();
    logSubsystem = [(PDIngestOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      operationID = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      v74 = v10;
      v75 = 2114;
      v76 = operationID;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ processing response;", buf, 0x16u);
    }

    CLSInitLog();
    logSubsystem2 = [(PDIngestOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
    {
      v52 = objc_opt_class();
      v53 = v52;
      operationID2 = [(PDURLRequestOperation *)self operationID];
      [objectCopy dictionaryRepresentation];
      v56 = v55 = objectCopy;
      *buf = 138543874;
      v74 = v52;
      v75 = 2114;
      v76 = operationID2;
      v77 = 2112;
      v78 = v56;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response data: %@", buf, 0x20u);

      objectCopy = v55;
    }

    operationID3 = [(PDURLRequestOperation *)self operationID];
    if (([objectCopy hasStatus] & 1) == 0)
    {
      v17 = [NSError cls_createErrorWithCode:308 description:@"Invalid server response (missing Status)."];
      CLSInitLog();
      logSubsystem3 = [(PDIngestOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_opt_class();
        *buf = 138543874;
        v74 = v45;
        v75 = 2114;
        v76 = operationID3;
        v77 = 2112;
        v78 = v17;
        v46 = v45;
        _os_log_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Upload request failed. Bad reponse: %@", buf, 0x20u);
      }

      goto LABEL_149;
    }

    status = [objectCopy status];
    v15 = sub_100105CA4(status);
    [(PDEndpointRequestOperation *)self handleServerAlerts:v15];

    status2 = [objectCopy status];
    v17 = sub_1001055FC(status2, 1);

    if (!v17 || [(__CFString *)v17 code]== 9)
    {
      v61 = v17;
      items = [objectCopy items];
      v19 = [items count];
      stats = [(PDURLRequestOperation *)self stats];
      if (stats)
      {
        stats[15] = v19;
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v65 = objectCopy;
      items2 = [objectCopy items];
      v22 = [items2 countByEnumeratingWithState:&v68 objects:v85 count:16];
      if (v22)
      {
        v23 = v22;
        v67 = *v69;
        selfCopy = self;
        v64 = database;
        v62 = items2;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v69 != v67)
            {
              objc_enumerationMutation(items2);
            }

            v25 = *(*(&v68 + 1) + 8 * i);
            v26 = objc_autoreleasePoolPush();
            status3 = [v25 status];
            code = [status3 code];

            if (code == 1)
            {
              v29 = objc_opt_class();
              objectId = [v25 objectId];
              v72 = objectId;
              v31 = [NSArray arrayWithObjects:&v72 count:1];
              LOBYTE(v29) = [database deleteAll:v29 where:@"entityIdentity = ?" bindings:v31];

              if (v29)
              {
                goto LABEL_85;
              }

              goto LABEL_82;
            }

            CLSInitLog();
            logSubsystem4 = [(PDIngestOperation *)self logSubsystem];
            if (os_log_type_enabled(logSubsystem4, OS_LOG_TYPE_DEFAULT))
            {
              v33 = objc_opt_class();
              objectId2 = [v25 objectId];
              syncType = [v25 syncType];
              if (syncType >= 5)
              {
                v36 = [NSString stringWithFormat:@"(unknown: %i)", syncType];
              }

              else
              {
                v36 = off_100204D60[syncType];
              }

              v37 = v36;
              status4 = [v25 status];
              code2 = [status4 code];
              if (code2 > 299)
              {
                if (code2 <= 801)
                {
                  if (code2 > 799)
                  {
                    if (code2 == 800)
                    {
                      v40 = @"E_NOT_APPLICABLE_TYPE";
                    }

                    else
                    {
                      v40 = @"E_ENTITY_NOT_FOUND";
                    }

                    goto LABEL_80;
                  }

                  if (code2 == 300)
                  {
                    v40 = @"E_DEVICE_UNSUPPORTED";
                    goto LABEL_80;
                  }

                  if (code2 == 500)
                  {
                    v40 = @"E_INVALID_FIELD_VALUE";
                    goto LABEL_80;
                  }

                  goto LABEL_52;
                }

                if (code2 <= 803)
                {
                  if (code2 == 802)
                  {
                    v40 = @"E_ENTITY_PRIVILEGE_CHANGE";
                  }

                  else
                  {
                    v40 = @"E_MUST_ACCEPT_TERMS";
                  }

                  goto LABEL_80;
                }

                if (code2 == 804)
                {
                  v40 = @"E_ENTITY_EXPIRED";
                  goto LABEL_80;
                }

                if (code2 == 805)
                {
                  v40 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
                  goto LABEL_80;
                }

                if (code2 != 806)
                {
                  goto LABEL_52;
                }

                v40 = @"E_DISALLOWED_EMAIL_DOMAIN";
              }

              else
              {
                if (code2 > 3)
                {
                  switch(code2)
                  {
                    case 'd':
                      v40 = @"E_BOOTSTRAP_REQUIRED";
                      break;
                    case 'e':
                      v40 = @"E_AUTHENTICATION_FAILED";
                      break;
                    case 'f':
                      v40 = @"E_NOT_AUTHORIZED";
                      break;
                    case 'g':
                      v40 = @"E_MESCAL_SIGNATURE_REQUIRED";
                      break;
                    case 'h':
                      v40 = @"E_MESCAL_BAD_SIGNATURE";
                      break;
                    case 'i':
                      v40 = @"E_MESCAL_PARSE_ERROR";
                      break;
                    case 'j':
                      v40 = @"E_BAD_REQUEST";
                      break;
                    case 'k':
                      v40 = @"E_BAD_PROTOCOL_VERSION";
                      break;
                    case 'l':
                      v40 = @"E_REQUEST_TOO_LARGE";
                      break;
                    case 'm':
                      v40 = @"E_REQUEST_TOO_MANY_ITEMS";
                      break;
                    case 'n':
                      v40 = @"E_SERVER_BUSY";
                      break;
                    case 'o':
                      v40 = @"E_ACCESS_DENIED";
                      break;
                    case 'p':
                      v40 = @"E_CONFLICT";
                      break;
                    case 'q':
                      v40 = @"E_INVALID_STATE";
                      break;
                    case 'r':
                      v40 = @"E_LOCK_TAKEN";
                      break;
                    case 's':
                      v40 = @"E_DOWNSTREAM_SERVICE_FAILED";
                      break;
                    case 't':
                      v40 = @"E_DOWNSTREAM_SERVICE_THROTTLED";
                      break;
                    case 'u':
                      v40 = @"E_DRIVE_USER_QUOTA_EXCEEDED";
                      break;
                    case 'v':
                      v40 = @"E_DRIVE_GROUP_QUOTA_EXCEEDED";
                      break;
                    case 'w':
                      v40 = @"E_DRIVE_ORG_QUOTA_EXCEEDED";
                      break;
                    case 'x':
                      v40 = @"E_RECORD_LIMIT_EXCEEDED";
                      break;
                    case 'y':
                      v40 = @"E_DISALLOWED_COUNTRY_CODE";
                      break;
                    default:
                      if (code2 == 4)
                      {
                        v40 = @"S_OK_HAS_MORE_DATA";
                      }

                      else
                      {
                        if (code2 != 5)
                        {
                          goto LABEL_52;
                        }

                        v40 = @"S_PROCESSING";
                      }

                      break;
                  }

                  goto LABEL_80;
                }

                if (code2 > 1)
                {
                  if (code2 == 2)
                  {
                    v40 = @"E_ERROR";
                  }

                  else
                  {
                    v40 = @"S_MIXED_RESPONSE";
                  }

                  goto LABEL_80;
                }

                v40 = @"UNKNOWN_CODE";
                if (code2)
                {
                  if (code2 == 1)
                  {
                    v40 = @"S_OK";
                    goto LABEL_80;
                  }

LABEL_52:
                  v40 = [NSString stringWithFormat:@"(unknown: %i)", code2];
                }
              }

LABEL_80:
              status5 = [v65 status];
              code3 = [status5 code];
              *buf = 138544642;
              v74 = v33;
              v75 = 2114;
              v76 = operationID3;
              v77 = 2112;
              v78 = objectId2;
              v79 = 2112;
              v80 = v37;
              v81 = 2112;
              v82 = v40;
              v83 = 2048;
              v84 = code3;
              _os_log_impl(&_mh_execute_header, logSubsystem4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Upload item %@ (%@) was rejected. status: %@ (%ld)", buf, 0x3Eu);

              self = selfCopy;
              database = v64;
              items2 = v62;
            }

LABEL_82:
            stats2 = [(PDURLRequestOperation *)self stats];
            if (stats2)
            {
              ++stats2[16];
            }

LABEL_85:
            objc_autoreleasePoolPop(v26);
          }

          v23 = [items2 countByEnumeratingWithState:&v68 objects:v85 count:16];
        }

        while (v23);
      }

      v7 = 1;
      objectCopy = v65;
      v17 = v61;
LABEL_152:

      goto LABEL_153;
    }

    CLSInitLog();
    logSubsystem3 = [(PDIngestOperation *)self logSubsystem];
    if (!os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_149:

      if (error)
      {
        v59 = v17;
        v7 = 0;
        *error = v17;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_152;
    }

    v47 = objc_opt_class();
    status6 = [objectCopy status];
    code4 = [status6 code];
    if (code4 > 299)
    {
      v50 = v17;
      if (code4 <= 801)
      {
        if (code4 > 799)
        {
          if (code4 == 800)
          {
            v51 = @"E_NOT_APPLICABLE_TYPE";
          }

          else
          {
            v51 = @"E_ENTITY_NOT_FOUND";
          }

          goto LABEL_148;
        }

        if (code4 == 300)
        {
          v51 = @"E_DEVICE_UNSUPPORTED";
          goto LABEL_148;
        }

        if (code4 == 500)
        {
          v51 = @"E_INVALID_FIELD_VALUE";
          goto LABEL_148;
        }
      }

      else
      {
        if (code4 <= 803)
        {
          if (code4 == 802)
          {
            v51 = @"E_ENTITY_PRIVILEGE_CHANGE";
          }

          else
          {
            v51 = @"E_MUST_ACCEPT_TERMS";
          }

          goto LABEL_148;
        }

        switch(code4)
        {
          case 0x324:
            v51 = @"E_ENTITY_EXPIRED";
            goto LABEL_148;
          case 0x325:
            v51 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
            goto LABEL_148;
          case 0x326:
            v51 = @"E_DISALLOWED_EMAIL_DOMAIN";
LABEL_148:
            status7 = [objectCopy status];
            code5 = [status7 code];
            *buf = 138544130;
            v74 = v47;
            v75 = 2114;
            v76 = operationID3;
            v77 = 2112;
            v78 = v51;
            v79 = 2048;
            v80 = code5;
            _os_log_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Upload request failed. status: %@ (%ld)", buf, 0x2Au);

            v17 = v50;
            goto LABEL_149;
        }
      }
    }

    else
    {
      if (code4 > 3)
      {
        v50 = v17;
        switch(code4)
        {
          case 'd':
            v51 = @"E_BOOTSTRAP_REQUIRED";
            break;
          case 'e':
            v51 = @"E_AUTHENTICATION_FAILED";
            break;
          case 'f':
            v51 = @"E_NOT_AUTHORIZED";
            break;
          case 'g':
            v51 = @"E_MESCAL_SIGNATURE_REQUIRED";
            break;
          case 'h':
            v51 = @"E_MESCAL_BAD_SIGNATURE";
            break;
          case 'i':
            v51 = @"E_MESCAL_PARSE_ERROR";
            break;
          case 'j':
            v51 = @"E_BAD_REQUEST";
            break;
          case 'k':
            v51 = @"E_BAD_PROTOCOL_VERSION";
            break;
          case 'l':
            v51 = @"E_REQUEST_TOO_LARGE";
            break;
          case 'm':
            v51 = @"E_REQUEST_TOO_MANY_ITEMS";
            break;
          case 'n':
            v51 = @"E_SERVER_BUSY";
            break;
          case 'o':
            v51 = @"E_ACCESS_DENIED";
            break;
          case 'p':
            v51 = @"E_CONFLICT";
            break;
          case 'q':
            v51 = @"E_INVALID_STATE";
            break;
          case 'r':
            v51 = @"E_LOCK_TAKEN";
            break;
          case 's':
            v51 = @"E_DOWNSTREAM_SERVICE_FAILED";
            break;
          case 't':
            v51 = @"E_DOWNSTREAM_SERVICE_THROTTLED";
            break;
          case 'u':
            v51 = @"E_DRIVE_USER_QUOTA_EXCEEDED";
            break;
          case 'v':
            v51 = @"E_DRIVE_GROUP_QUOTA_EXCEEDED";
            break;
          case 'w':
            v51 = @"E_DRIVE_ORG_QUOTA_EXCEEDED";
            break;
          case 'x':
            v51 = @"E_RECORD_LIMIT_EXCEEDED";
            break;
          case 'y':
            v51 = @"E_DISALLOWED_COUNTRY_CODE";
            break;
          default:
            if (code4 == 4)
            {
              v51 = @"S_OK_HAS_MORE_DATA";
            }

            else
            {
              if (code4 != 5)
              {
                goto LABEL_120;
              }

              v51 = @"S_PROCESSING";
            }

            break;
        }

        goto LABEL_148;
      }

      v50 = v17;
      if (code4 > 1)
      {
        if (code4 == 2)
        {
          v51 = @"E_ERROR";
        }

        else
        {
          v51 = @"S_MIXED_RESPONSE";
        }

        goto LABEL_148;
      }

      if (!code4)
      {
        v51 = @"UNKNOWN_CODE";
        goto LABEL_148;
      }

      if (code4 == 1)
      {
        v51 = @"S_OK";
        goto LABEL_148;
      }
    }

LABEL_120:
    v51 = [NSString stringWithFormat:@"(unknown: %i)", code4];
    goto LABEL_148;
  }

  v7 = 0;
LABEL_153:

  return v7;
}

@end