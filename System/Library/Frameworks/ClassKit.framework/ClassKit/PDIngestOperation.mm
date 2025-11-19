@interface PDIngestOperation
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
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

  v4 = [(PDOperation *)self database];
  v5 = [v4 count:objc_opt_class() where:0 bindings:0];

  return v5 > 0;
}

- (void)prepare
{
  v3 = [(PDOperation *)self database];
  v4 = sub_10007116C(v3);

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
    v3 = 0;
  }

  else
  {
    v4 = [(PDURLRequestOperation *)self stats];
    if (v4)
    {
      v4[14] = 0;
    }

    v5 = objc_alloc_init(PBDataWriter);
    v6 = objc_alloc_init(PDDPIngestRequest);
    v7 = [(PDOperation *)self database];
    v8 = +[NSTimeZone localTimeZone];
    v9 = [v8 secondsFromGMT];

    v10 = objc_opt_new();
    v11 = objc_opt_class();
    v12 = [(PDEndpointRequestOperation *)self endpointInfo];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 64);
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
    v15 = v7;
    v28 = v15;
    v32 = v9;
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

    v21 = [(PDURLRequestOperation *)self stats];
    if (v21 && (v22 = v21[14], v21, v22))
    {
      v3 = [v17 immutableData];
    }

    else
    {
      [(PDEndpointRequestOperation *)self markAsFinished];
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(PDOperation *)self isAborted])
  {
    v8 = [(PDOperation *)self database];
    CLSInitLog();
    v9 = [(PDIngestOperation *)self logSubsystem];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      v74 = v10;
      v75 = 2114;
      v76 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ processing response;", buf, 0x16u);
    }

    CLSInitLog();
    v13 = [(PDIngestOperation *)self logSubsystem];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v52 = objc_opt_class();
      v53 = v52;
      v54 = [(PDURLRequestOperation *)self operationID];
      [v6 dictionaryRepresentation];
      v56 = v55 = v6;
      *buf = 138543874;
      v74 = v52;
      v75 = 2114;
      v76 = v54;
      v77 = 2112;
      v78 = v56;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response data: %@", buf, 0x20u);

      v6 = v55;
    }

    v66 = [(PDURLRequestOperation *)self operationID];
    if (([v6 hasStatus] & 1) == 0)
    {
      v17 = [NSError cls_createErrorWithCode:308 description:@"Invalid server response (missing Status)."];
      CLSInitLog();
      v44 = [(PDIngestOperation *)self logSubsystem];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_opt_class();
        *buf = 138543874;
        v74 = v45;
        v75 = 2114;
        v76 = v66;
        v77 = 2112;
        v78 = v17;
        v46 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Upload request failed. Bad reponse: %@", buf, 0x20u);
      }

      goto LABEL_149;
    }

    v14 = [v6 status];
    v15 = sub_100105CA4(v14);
    [(PDEndpointRequestOperation *)self handleServerAlerts:v15];

    v16 = [v6 status];
    v17 = sub_1001055FC(v16, 1);

    if (!v17 || [(__CFString *)v17 code]== 9)
    {
      v61 = v17;
      v18 = [v6 items];
      v19 = [v18 count];
      v20 = [(PDURLRequestOperation *)self stats];
      if (v20)
      {
        v20[15] = v19;
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v65 = v6;
      v21 = [v6 items];
      v22 = [v21 countByEnumeratingWithState:&v68 objects:v85 count:16];
      if (v22)
      {
        v23 = v22;
        v67 = *v69;
        v63 = self;
        v64 = v8;
        v62 = v21;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v69 != v67)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v68 + 1) + 8 * i);
            v26 = objc_autoreleasePoolPush();
            v27 = [v25 status];
            v28 = [v27 code];

            if (v28 == 1)
            {
              v29 = objc_opt_class();
              v30 = [v25 objectId];
              v72 = v30;
              v31 = [NSArray arrayWithObjects:&v72 count:1];
              LOBYTE(v29) = [v8 deleteAll:v29 where:@"entityIdentity = ?" bindings:v31];

              if (v29)
              {
                goto LABEL_85;
              }

              goto LABEL_82;
            }

            CLSInitLog();
            v32 = [(PDIngestOperation *)self logSubsystem];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = objc_opt_class();
              v34 = [v25 objectId];
              v35 = [v25 syncType];
              if (v35 >= 5)
              {
                v36 = [NSString stringWithFormat:@"(unknown: %i)", v35];
              }

              else
              {
                v36 = off_100204D60[v35];
              }

              v37 = v36;
              v38 = [v25 status];
              v39 = [v38 code];
              if (v39 > 299)
              {
                if (v39 <= 801)
                {
                  if (v39 > 799)
                  {
                    if (v39 == 800)
                    {
                      v40 = @"E_NOT_APPLICABLE_TYPE";
                    }

                    else
                    {
                      v40 = @"E_ENTITY_NOT_FOUND";
                    }

                    goto LABEL_80;
                  }

                  if (v39 == 300)
                  {
                    v40 = @"E_DEVICE_UNSUPPORTED";
                    goto LABEL_80;
                  }

                  if (v39 == 500)
                  {
                    v40 = @"E_INVALID_FIELD_VALUE";
                    goto LABEL_80;
                  }

                  goto LABEL_52;
                }

                if (v39 <= 803)
                {
                  if (v39 == 802)
                  {
                    v40 = @"E_ENTITY_PRIVILEGE_CHANGE";
                  }

                  else
                  {
                    v40 = @"E_MUST_ACCEPT_TERMS";
                  }

                  goto LABEL_80;
                }

                if (v39 == 804)
                {
                  v40 = @"E_ENTITY_EXPIRED";
                  goto LABEL_80;
                }

                if (v39 == 805)
                {
                  v40 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
                  goto LABEL_80;
                }

                if (v39 != 806)
                {
                  goto LABEL_52;
                }

                v40 = @"E_DISALLOWED_EMAIL_DOMAIN";
              }

              else
              {
                if (v39 > 3)
                {
                  switch(v39)
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
                      if (v39 == 4)
                      {
                        v40 = @"S_OK_HAS_MORE_DATA";
                      }

                      else
                      {
                        if (v39 != 5)
                        {
                          goto LABEL_52;
                        }

                        v40 = @"S_PROCESSING";
                      }

                      break;
                  }

                  goto LABEL_80;
                }

                if (v39 > 1)
                {
                  if (v39 == 2)
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
                if (v39)
                {
                  if (v39 == 1)
                  {
                    v40 = @"S_OK";
                    goto LABEL_80;
                  }

LABEL_52:
                  v40 = [NSString stringWithFormat:@"(unknown: %i)", v39];
                }
              }

LABEL_80:
              v41 = [v65 status];
              v42 = [v41 code];
              *buf = 138544642;
              v74 = v33;
              v75 = 2114;
              v76 = v66;
              v77 = 2112;
              v78 = v34;
              v79 = 2112;
              v80 = v37;
              v81 = 2112;
              v82 = v40;
              v83 = 2048;
              v84 = v42;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Upload item %@ (%@) was rejected. status: %@ (%ld)", buf, 0x3Eu);

              self = v63;
              v8 = v64;
              v21 = v62;
            }

LABEL_82:
            v43 = [(PDURLRequestOperation *)self stats];
            if (v43)
            {
              ++v43[16];
            }

LABEL_85:
            objc_autoreleasePoolPop(v26);
          }

          v23 = [v21 countByEnumeratingWithState:&v68 objects:v85 count:16];
        }

        while (v23);
      }

      v7 = 1;
      v6 = v65;
      v17 = v61;
LABEL_152:

      goto LABEL_153;
    }

    CLSInitLog();
    v44 = [(PDIngestOperation *)self logSubsystem];
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
LABEL_149:

      if (a4)
      {
        v59 = v17;
        v7 = 0;
        *a4 = v17;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_152;
    }

    v47 = objc_opt_class();
    v48 = [v6 status];
    v49 = [v48 code];
    if (v49 > 299)
    {
      v50 = v17;
      if (v49 <= 801)
      {
        if (v49 > 799)
        {
          if (v49 == 800)
          {
            v51 = @"E_NOT_APPLICABLE_TYPE";
          }

          else
          {
            v51 = @"E_ENTITY_NOT_FOUND";
          }

          goto LABEL_148;
        }

        if (v49 == 300)
        {
          v51 = @"E_DEVICE_UNSUPPORTED";
          goto LABEL_148;
        }

        if (v49 == 500)
        {
          v51 = @"E_INVALID_FIELD_VALUE";
          goto LABEL_148;
        }
      }

      else
      {
        if (v49 <= 803)
        {
          if (v49 == 802)
          {
            v51 = @"E_ENTITY_PRIVILEGE_CHANGE";
          }

          else
          {
            v51 = @"E_MUST_ACCEPT_TERMS";
          }

          goto LABEL_148;
        }

        switch(v49)
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
            v57 = [v6 status];
            v58 = [v57 code];
            *buf = 138544130;
            v74 = v47;
            v75 = 2114;
            v76 = v66;
            v77 = 2112;
            v78 = v51;
            v79 = 2048;
            v80 = v58;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Upload request failed. status: %@ (%ld)", buf, 0x2Au);

            v17 = v50;
            goto LABEL_149;
        }
      }
    }

    else
    {
      if (v49 > 3)
      {
        v50 = v17;
        switch(v49)
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
            if (v49 == 4)
            {
              v51 = @"S_OK_HAS_MORE_DATA";
            }

            else
            {
              if (v49 != 5)
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
      if (v49 > 1)
      {
        if (v49 == 2)
        {
          v51 = @"E_ERROR";
        }

        else
        {
          v51 = @"S_MIXED_RESPONSE";
        }

        goto LABEL_148;
      }

      if (!v49)
      {
        v51 = @"UNKNOWN_CODE";
        goto LABEL_148;
      }

      if (v49 == 1)
      {
        v51 = @"S_OK";
        goto LABEL_148;
      }
    }

LABEL_120:
    v51 = [NSString stringWithFormat:@"(unknown: %i)", v49];
    goto LABEL_148;
  }

  v7 = 0;
LABEL_153:

  return v7;
}

@end