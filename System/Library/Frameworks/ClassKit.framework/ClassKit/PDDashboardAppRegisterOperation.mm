@interface PDDashboardAppRegisterOperation
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (id)requestData;
@end

@implementation PDDashboardAppRegisterOperation

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    data2 = 0;
  }

  else
  {
    v4 = objc_alloc_init(PDDPRegisterDashboardAppRequest);
    database = [(PDOperation *)self database];
    v6 = objc_opt_class();
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10006BD9C;
    v32[3] = &unk_100203B40;
    v7 = v4;
    v33 = v7;
    selfCopy = self;
    [database selectAll:v6 block:v32];

    if ([(PDDPRegisterDashboardAppRequest *)v7 dashboardAppsCount])
    {
      v8 = [[NSMutableArray alloc] initWithCapacity:{-[PDDPRegisterDashboardAppRequest dashboardAppsCount](v7, "dashboardAppsCount")}];
      [(PDDashboardAppRegisterOperation *)self setAppIdentifiersInRequest:v8];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      dashboardApps = [(PDDPRegisterDashboardAppRequest *)v7 dashboardApps];
      v10 = [dashboardApps countByEnumeratingWithState:&v28 objects:v41 count:16];
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
              objc_enumerationMutation(dashboardApps);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            appIdentifiersInRequest = [(PDDashboardAppRegisterOperation *)self appIdentifiersInRequest];
            appIdentifier = [v14 appIdentifier];
            [appIdentifiersInRequest addObject:appIdentifier];
          }

          v11 = [dashboardApps countByEnumeratingWithState:&v28 objects:v41 count:16];
        }

        while (v11);
      }

      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = v18;
        operationID = [(PDURLRequestOperation *)self operationID];
        data = [(PDDPRegisterDashboardAppRequest *)v7 data];
        v22 = [data length];
        *buf = 138543874;
        v36 = v18;
        v37 = 2114;
        v38 = operationID;
        v39 = 2048;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ request payload size %ld bytes", buf, 0x20u);
      }

      data2 = [(PDDPRegisterDashboardAppRequest *)v7 data];
    }

    else
    {
      CLSInitLog();
      logSubsystem2 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = v24;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543618;
        v36 = v24;
        v37 = 2114;
        v38 = operationID2;
        _os_log_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ request no pending register.", buf, 0x16u);
      }

      [(PDEndpointRequestOperation *)self markAsFinished];
      data2 = 0;
    }
  }

  return data2;
}

- (BOOL)processResponseObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (![(PDOperation *)self isAborted])
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      operationID = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = operationID;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ processing response;", buf, 0x16u);
    }

    CLSInitLog();
    logSubsystem2 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v28 = v27;
      operationID2 = [(PDURLRequestOperation *)self operationID];
      dictionaryRepresentation = [objectCopy dictionaryRepresentation];
      *buf = 138543874;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = operationID2;
      *&buf[22] = 2112;
      v47 = dictionaryRepresentation;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response data: %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = sub_10006C6B8;
    v48 = sub_10006C6C8;
    operationID3 = [(PDURLRequestOperation *)self operationID];
    stats = [(PDURLRequestOperation *)self stats];
    if (stats)
    {
      stats[15] = 1;
    }

    if (![objectCopy hasStatus])
    {
      goto LABEL_16;
    }

    status = [objectCopy status];
    v15 = sub_100105CA4(status);
    [(PDEndpointRequestOperation *)self handleServerAlerts:v15];

    status2 = [objectCopy status];
    v17 = sub_1001055FC(status2, 0);

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
    logSubsystem3 = [(PDOperation *)self logSubsystem];
    if (!os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_INFO))
    {
LABEL_73:

      if (error)
      {
        v33 = v17;
        v7 = 0;
        *error = v17;
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
    status3 = [objectCopy status];
    code = [status3 code];
    if (code > 299)
    {
      if (code <= 801)
      {
        if (code > 799)
        {
          if (code == 800)
          {
            v23 = @"E_NOT_APPLICABLE_TYPE";
          }

          else
          {
            v23 = @"E_ENTITY_NOT_FOUND";
          }

          goto LABEL_72;
        }

        if (code == 300)
        {
          v23 = @"E_DEVICE_UNSUPPORTED";
          goto LABEL_72;
        }

        if (code == 500)
        {
          v23 = @"E_INVALID_FIELD_VALUE";
          goto LABEL_72;
        }
      }

      else
      {
        if (code <= 803)
        {
          if (code == 802)
          {
            v23 = @"E_ENTITY_PRIVILEGE_CHANGE";
          }

          else
          {
            v23 = @"E_MUST_ACCEPT_TERMS";
          }

          goto LABEL_72;
        }

        switch(code)
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
            status4 = [objectCopy status];
            *v38 = 138544130;
            v39 = v19;
            v40 = 2114;
            v41 = v20;
            v42 = 2114;
            v43 = v31;
            v44 = 2048;
            code2 = [status4 code];
            _os_log_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Dashboard app register request failed. status: %{public}@ (%ld)", v38, 0x2Au);

            goto LABEL_73;
        }
      }
    }

    else
    {
      if (code > 3)
      {
        switch(code)
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
            if (code == 4)
            {
              v23 = @"S_OK_HAS_MORE_DATA";
            }

            else
            {
              if (code != 5)
              {
                goto LABEL_44;
              }

              v23 = @"S_PROCESSING";
            }

            break;
        }

        goto LABEL_72;
      }

      if (code > 1)
      {
        if (code == 2)
        {
          v23 = @"E_ERROR";
        }

        else
        {
          v23 = @"S_MIXED_RESPONSE";
        }

        goto LABEL_72;
      }

      if (!code)
      {
        v23 = @"UNKNOWN_CODE";
        goto LABEL_72;
      }

      if (code == 1)
      {
        v23 = @"S_OK";
        goto LABEL_72;
      }
    }

LABEL_44:
    v23 = [NSString stringWithFormat:@"(unknown: %i)", code];
    goto LABEL_72;
  }

  v7 = 0;
LABEL_77:

  return v7;
}

@end