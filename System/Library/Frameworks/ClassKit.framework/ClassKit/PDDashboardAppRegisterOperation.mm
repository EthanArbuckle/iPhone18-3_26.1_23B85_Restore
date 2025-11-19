@interface PDDashboardAppRegisterOperation
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (id)requestData;
@end

@implementation PDDashboardAppRegisterOperation

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc_init(PDDPRegisterDashboardAppRequest);
    v5 = [(PDOperation *)self database];
    v6 = objc_opt_class();
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10006BD9C;
    v32[3] = &unk_100203B40;
    v7 = v4;
    v33 = v7;
    v34 = self;
    [v5 selectAll:v6 block:v32];

    if ([(PDDPRegisterDashboardAppRequest *)v7 dashboardAppsCount])
    {
      v8 = [[NSMutableArray alloc] initWithCapacity:{-[PDDPRegisterDashboardAppRequest dashboardAppsCount](v7, "dashboardAppsCount")}];
      [(PDDashboardAppRegisterOperation *)self setAppIdentifiersInRequest:v8];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = [(PDDPRegisterDashboardAppRequest *)v7 dashboardApps];
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = [(PDDashboardAppRegisterOperation *)self appIdentifiersInRequest];
            v16 = [v14 appIdentifier];
            [v15 addObject:v16];
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v41 count:16];
        }

        while (v11);
      }

      CLSInitLog();
      v17 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [(PDURLRequestOperation *)self operationID];
        v21 = [(PDDPRegisterDashboardAppRequest *)v7 data];
        v22 = [v21 length];
        *buf = 138543874;
        v36 = v18;
        v37 = 2114;
        v38 = v20;
        v39 = 2048;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ request payload size %ld bytes", buf, 0x20u);
      }

      v3 = [(PDDPRegisterDashboardAppRequest *)v7 data];
    }

    else
    {
      CLSInitLog();
      v23 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = v24;
        v26 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543618;
        v36 = v24;
        v37 = 2114;
        v38 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ request no pending register.", buf, 0x16u);
      }

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
    CLSInitLog();
    v8 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ processing response;", buf, 0x16u);
    }

    CLSInitLog();
    v12 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v28 = v27;
      v29 = [(PDURLRequestOperation *)self operationID];
      v30 = [v6 dictionaryRepresentation];
      *buf = 138543874;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      *&buf[22] = 2112;
      v47 = v30;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response data: %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = sub_10006C6B8;
    v48 = sub_10006C6C8;
    v49 = [(PDURLRequestOperation *)self operationID];
    v13 = [(PDURLRequestOperation *)self stats];
    if (v13)
    {
      v13[15] = 1;
    }

    if (![v6 hasStatus])
    {
      goto LABEL_16;
    }

    v14 = [v6 status];
    v15 = sub_100105CA4(v14);
    [(PDEndpointRequestOperation *)self handleServerAlerts:v15];

    v16 = [v6 status];
    v17 = sub_1001055FC(v16, 0);

    if (!v17)
    {
LABEL_16:
      [(PDOperation *)self database];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10006C6D0;
      v35[3] = &unk_100203110;
      v24 = v35[4] = self;
      v25 = v24;
      v36 = v24;
      v37 = buf;
      if (v24)
      {
        v7 = [v24 performTransaction:v35 forWriting:1];
        v26 = v36;
      }

      else
      {
        v26 = 0;
        v7 = 0;
      }

      v17 = 0;
      goto LABEL_76;
    }

    CLSInitLog();
    v18 = [(PDOperation *)self logSubsystem];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
LABEL_73:

      if (a4)
      {
        v33 = v17;
        v7 = 0;
        *a4 = v17;
      }

      else
      {
        v7 = 0;
      }

LABEL_76:
      _Block_object_dispose(buf, 8);

      goto LABEL_77;
    }

    v19 = objc_opt_class();
    v20 = *(*&buf[8] + 40);
    v21 = [v6 status];
    v22 = [v21 code];
    if (v22 > 299)
    {
      if (v22 <= 801)
      {
        if (v22 > 799)
        {
          if (v22 == 800)
          {
            v23 = @"E_NOT_APPLICABLE_TYPE";
          }

          else
          {
            v23 = @"E_ENTITY_NOT_FOUND";
          }

          goto LABEL_72;
        }

        if (v22 == 300)
        {
          v23 = @"E_DEVICE_UNSUPPORTED";
          goto LABEL_72;
        }

        if (v22 == 500)
        {
          v23 = @"E_INVALID_FIELD_VALUE";
          goto LABEL_72;
        }
      }

      else
      {
        if (v22 <= 803)
        {
          if (v22 == 802)
          {
            v23 = @"E_ENTITY_PRIVILEGE_CHANGE";
          }

          else
          {
            v23 = @"E_MUST_ACCEPT_TERMS";
          }

          goto LABEL_72;
        }

        switch(v22)
        {
          case 0x324:
            v23 = @"E_ENTITY_EXPIRED";
            goto LABEL_72;
          case 0x325:
            v23 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
            goto LABEL_72;
          case 0x326:
            v23 = @"E_DISALLOWED_EMAIL_DOMAIN";
LABEL_72:
            v31 = v23;
            v32 = [v6 status];
            *v38 = 138544130;
            v39 = v19;
            v40 = 2114;
            v41 = v20;
            v42 = 2114;
            v43 = v31;
            v44 = 2048;
            v45 = [v32 code];
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Dashboard app register request failed. status: %{public}@ (%ld)", v38, 0x2Au);

            goto LABEL_73;
        }
      }
    }

    else
    {
      if (v22 > 3)
      {
        switch(v22)
        {
          case 'd':
            v23 = @"E_BOOTSTRAP_REQUIRED";
            break;
          case 'e':
            v23 = @"E_AUTHENTICATION_FAILED";
            break;
          case 'f':
            v23 = @"E_NOT_AUTHORIZED";
            break;
          case 'g':
            v23 = @"E_MESCAL_SIGNATURE_REQUIRED";
            break;
          case 'h':
            v23 = @"E_MESCAL_BAD_SIGNATURE";
            break;
          case 'i':
            v23 = @"E_MESCAL_PARSE_ERROR";
            break;
          case 'j':
            v23 = @"E_BAD_REQUEST";
            break;
          case 'k':
            v23 = @"E_BAD_PROTOCOL_VERSION";
            break;
          case 'l':
            v23 = @"E_REQUEST_TOO_LARGE";
            break;
          case 'm':
            v23 = @"E_REQUEST_TOO_MANY_ITEMS";
            break;
          case 'n':
            v23 = @"E_SERVER_BUSY";
            break;
          case 'o':
            v23 = @"E_ACCESS_DENIED";
            break;
          case 'p':
            v23 = @"E_CONFLICT";
            break;
          case 'q':
            v23 = @"E_INVALID_STATE";
            break;
          case 'r':
            v23 = @"E_LOCK_TAKEN";
            break;
          case 's':
            v23 = @"E_DOWNSTREAM_SERVICE_FAILED";
            break;
          case 't':
            v23 = @"E_DOWNSTREAM_SERVICE_THROTTLED";
            break;
          case 'u':
            v23 = @"E_DRIVE_USER_QUOTA_EXCEEDED";
            break;
          case 'v':
            v23 = @"E_DRIVE_GROUP_QUOTA_EXCEEDED";
            break;
          case 'w':
            v23 = @"E_DRIVE_ORG_QUOTA_EXCEEDED";
            break;
          case 'x':
            v23 = @"E_RECORD_LIMIT_EXCEEDED";
            break;
          case 'y':
            v23 = @"E_DISALLOWED_COUNTRY_CODE";
            break;
          default:
            if (v22 == 4)
            {
              v23 = @"S_OK_HAS_MORE_DATA";
            }

            else
            {
              if (v22 != 5)
              {
                goto LABEL_44;
              }

              v23 = @"S_PROCESSING";
            }

            break;
        }

        goto LABEL_72;
      }

      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v23 = @"E_ERROR";
        }

        else
        {
          v23 = @"S_MIXED_RESPONSE";
        }

        goto LABEL_72;
      }

      if (!v22)
      {
        v23 = @"UNKNOWN_CODE";
        goto LABEL_72;
      }

      if (v22 == 1)
      {
        v23 = @"S_OK";
        goto LABEL_72;
      }
    }

LABEL_44:
    v23 = [NSString stringWithFormat:@"(unknown: %i)", v22];
    goto LABEL_72;
  }

  v7 = 0;
LABEL_77:

  return v7;
}

@end