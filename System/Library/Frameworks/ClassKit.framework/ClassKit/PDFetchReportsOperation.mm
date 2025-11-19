@interface PDFetchReportsOperation
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (BOOL)wantsToExecute;
- (id)requestData;
- (void)execute;
- (void)populateClassIDsBuffer:(id)a3 handoutIDsBuffer:(id)a4 studentIDsBUffer:(id)a5;
- (void)prepare;
@end

@implementation PDFetchReportsOperation

- (void)prepare
{
  v3.receiver = self;
  v3.super_class = PDFetchReportsOperation;
  [(PDAsyncOperation *)&v3 prepare];
  if (!*(&self->_firstTime + 2))
  {
    [(PDEndpointRequestOperation *)self abort];
  }
}

- (void)execute
{
  v3.receiver = self;
  v3.super_class = PDFetchReportsOperation;
  [(PDEndpointRequestOperation *)&v3 execute];
  BYTE2(self->_nextBatchPointer) = 0;
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    v5 = [(PDEndpointRequestOperation *)self endpointInfo];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 64);
    }

    else
    {
      v7 = 0;
    }

    [v4 setMaxReportItemsCount:v7];

    v8 = [(PDEndpointRequestOperation *)self endpointInfo];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 72);
    }

    else
    {
      v10 = 0;
    }

    [v4 setMaxPayloadSize:v10];

    if (*(&self->super._responseStatusError + 2))
    {
      [v4 setBatchPointer:?];
      v3 = [v4 data];
    }

    else
    {
      v11 = [NSHashTable hashTableWithOptions:?];
      v12 = [NSHashTable hashTableWithOptions:0];
      v13 = [NSHashTable hashTableWithOptions:0];
      [(PDFetchReportsOperation *)self populateClassIDsBuffer:v11 handoutIDsBuffer:v12 studentIDsBUffer:v13];
      v14 = [v11 allObjects];
      v15 = objc_opt_new();
      if ([v14 count])
      {
        v16 = [PDDatabase whereSQLForArray:v14 prefix:@"classID in "];
        [v15 addObject:v16];
      }

      v17 = [v12 allObjects];
      v61 = v17;
      if ([v17 count])
      {
        v18 = [PDDatabase whereSQLForArray:v17 prefix:@"parentObjectID in "];
        [v15 addObject:v18];

        v17 = v61;
      }

      if ([v15 count])
      {
        v57 = v11;
        v54 = v15;
        v19 = [v15 componentsJoinedByString:@" and "];
        v20 = [v14 arrayByAddingObjectsFromArray:v17];
        v21 = +[NSMapTable strongToStrongObjectsMapTable];
        [v12 removeAllObjects];
        v22 = [(PDOperation *)self database];
        v23 = objc_opt_class();
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_10008F574;
        v64[3] = &unk_100203ED8;
        v58 = v21;
        v65 = v58;
        v60 = v4;
        v66 = v60;
        v67 = v12;
        v59 = v22;
        v24 = v22;
        v25 = v19;
        v55 = v20;
        [v24 selectAll:v23 where:v19 bindings:v20 block:v64];
        v56 = v13;
        v26 = [v13 allObjects];
        v53 = v26;
        if ([v26 count])
        {
          v27 = v25;
          v28 = objc_opt_new();
          v29 = objc_opt_new();
          v30 = [PDDatabase whereSQLForArray:v26 prefix:@"personID in "];
          [v29 addObjectsFromArray:v26];
          [v28 addObject:v30];
          if ([v14 count])
          {
            v31 = [PDDatabase whereSQLForArray:v14 prefix:@"parentObjectID in "];

            [v28 addObject:v31];
            [v29 addObjectsFromArray:v14];
            v30 = v31;
          }

          v32 = v58;
          v33 = [v28 componentsJoinedByString:@" and "];

          v34 = objc_opt_class();
          v62[0] = _NSConcreteStackBlock;
          v62[1] = 3221225472;
          v62[2] = sub_10008F65C;
          v62[3] = &unk_100203C88;
          v63 = v58;
          [v59 selectAll:v34 where:v33 bindings:v29 block:v62];

          v25 = v33;
        }

        else
        {
          v32 = v58;
        }

        v35 = [v60 requestItems];
        v36 = [v35 count];

        CLSInitLog();
        v37 = [(PDOperation *)self logSubsystem];
        v38 = v37;
        if (v36)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v43 = objc_opt_class();
            v44 = v43;
            v45 = [(PDURLRequestOperation *)self operationID];
            [v60 dictionaryRepresentation];
            v47 = v46 = v25;
            *buf = 138543874;
            v69 = v43;
            v70 = 2114;
            v71 = v45;
            v72 = 2112;
            v73 = v47;
            _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ prepared request payload: %@", buf, 0x20u);

            v25 = v46;
            v32 = v58;
          }

          v39 = [v60 requestItems];
          v40 = [v39 count];
          v41 = [(PDURLRequestOperation *)self stats];
          if (v41)
          {
            v41[14] = v40;
          }

          v3 = [v60 data];
        }

        else
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v48 = objc_opt_class();
            v49 = v48;
            v50 = [(PDURLRequestOperation *)self operationID];
            [v60 dictionaryRepresentation];
            v52 = v51 = v25;
            *buf = 138543874;
            v69 = v48;
            v70 = 2114;
            v71 = v50;
            v72 = 2112;
            v73 = v52;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ attempting to send request with no items: %@", buf, 0x20u);

            v25 = v51;
            v32 = v58;
          }

          [(PDEndpointRequestOperation *)self markAsFinished];
          v3 = 0;
        }

        v13 = v56;
        v11 = v57;
        v15 = v54;
      }

      else
      {
        [(PDEndpointRequestOperation *)self abort];
        v3 = 0;
      }
    }
  }

  return v3;
}

- (void)populateClassIDsBuffer:(id)a3 handoutIDsBuffer:(id)a4 studentIDsBUffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [*(&self->_firstTime + 2) pd_keypathValueMap];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10008FB9C;
  v37 = v54[3] = &unk_100203F00;
  v55 = v37;
  v11 = objc_retainBlock(v54);
  v12 = (v11[2])(v11, @"classID");
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v51;
    do
    {
      v16 = 0;
      do
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v8 addObject:*(*(&v50 + 1) + 8 * v16)];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v14);
  }

  v17 = (v11[2])(v11, @"handoutID");

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v47;
    do
    {
      v22 = 0;
      do
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v9 addObject:*(*(&v46 + 1) + 8 * v22)];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v20);
  }

  v23 = [(PDOperation *)self database];
  v24 = (v11[2])(v11, @"attachmentID");
  if ([v24 count])
  {
    v25 = [PDDatabase whereSQLForArray:v24 prefix:@"objectID in "];
    v26 = objc_opt_class();
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10008FD04;
    v44[3] = &unk_100203860;
    v45 = v9;
    [v23 selectAll:v26 where:v25 bindings:v24 block:v44];
  }

  v27 = (v11[2])(v11, @"studentID");

  if ([v27 count])
  {
    v28 = [PDDatabase whereSQLForArray:v27 prefix:@"personID in "];
    v29 = objc_opt_class();
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10008FD5C;
    v42[3] = &unk_100203C88;
    v43 = v8;
    v35 = v28;
    v36 = v23;
    [v23 selectAll:v29 where:v28 bindings:v27 block:v42];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = v27;
    v31 = [v30 countByEnumeratingWithState:&v38 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v39;
      do
      {
        v34 = 0;
        do
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [v10 addObject:*(*(&v38 + 1) + 8 * v34)];
          v34 = v34 + 1;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v38 objects:v56 count:16];
      }

      while (v32);
    }

    v23 = v36;
  }
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(PDOperation *)self isAborted])
  {
    v8 = [(PDOperation *)self database];
    if ([v6 hasStatus])
    {
      v9 = [v6 status];
      v10 = sub_100105CA4(v9);
      [(PDEndpointRequestOperation *)self handleServerAlerts:v10];

      v11 = [v6 status];
      v12 = sub_1001055FC(v11, 0);

      v13 = [(PDURLRequestOperation *)self operationID];
      v14 = v13;
      if (v12)
      {
        CLSInitLog();
        v15 = [(PDOperation *)self logSubsystem];
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_6:

          if (a4)
          {
            v16 = v12;
            *a4 = v12;
          }

          v7 = 0;
LABEL_18:

          goto LABEL_19;
        }

        v25 = objc_opt_class();
        v26 = [v6 status];
        v27 = [v26 code];
        if (v27 > 299)
        {
          if (v27 <= 801)
          {
            if (v27 > 799)
            {
              if (v27 == 800)
              {
                v28 = @"E_NOT_APPLICABLE_TYPE";
              }

              else
              {
                v28 = @"E_ENTITY_NOT_FOUND";
              }

              goto LABEL_77;
            }

            if (v27 == 300)
            {
              v28 = @"E_DEVICE_UNSUPPORTED";
              goto LABEL_77;
            }

            if (v27 == 500)
            {
              v28 = @"E_INVALID_FIELD_VALUE";
              goto LABEL_77;
            }
          }

          else
          {
            if (v27 <= 803)
            {
              if (v27 == 802)
              {
                v28 = @"E_ENTITY_PRIVILEGE_CHANGE";
              }

              else
              {
                v28 = @"E_MUST_ACCEPT_TERMS";
              }

              goto LABEL_77;
            }

            switch(v27)
            {
              case 0x324:
                v28 = @"E_ENTITY_EXPIRED";
                goto LABEL_77;
              case 0x325:
                v28 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
                goto LABEL_77;
              case 0x326:
                v28 = @"E_DISALLOWED_EMAIL_DOMAIN";
LABEL_77:
                v29 = [v6 status];
                *buf = 138544130;
                v35 = v25;
                v36 = 2114;
                v37 = v14;
                v38 = 2112;
                v39 = v28;
                v40 = 2048;
                v41 = [v29 code];
                _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ request failed with status: %@ (%ld)", buf, 0x2Au);

                goto LABEL_6;
            }
          }
        }

        else
        {
          if (v27 > 3)
          {
            switch(v27)
            {
              case 'd':
                v28 = @"E_BOOTSTRAP_REQUIRED";
                break;
              case 'e':
                v28 = @"E_AUTHENTICATION_FAILED";
                break;
              case 'f':
                v28 = @"E_NOT_AUTHORIZED";
                break;
              case 'g':
                v28 = @"E_MESCAL_SIGNATURE_REQUIRED";
                break;
              case 'h':
                v28 = @"E_MESCAL_BAD_SIGNATURE";
                break;
              case 'i':
                v28 = @"E_MESCAL_PARSE_ERROR";
                break;
              case 'j':
                v28 = @"E_BAD_REQUEST";
                break;
              case 'k':
                v28 = @"E_BAD_PROTOCOL_VERSION";
                break;
              case 'l':
                v28 = @"E_REQUEST_TOO_LARGE";
                break;
              case 'm':
                v28 = @"E_REQUEST_TOO_MANY_ITEMS";
                break;
              case 'n':
                v28 = @"E_SERVER_BUSY";
                break;
              case 'o':
                v28 = @"E_ACCESS_DENIED";
                break;
              case 'p':
                v28 = @"E_CONFLICT";
                break;
              case 'q':
                v28 = @"E_INVALID_STATE";
                break;
              case 'r':
                v28 = @"E_LOCK_TAKEN";
                break;
              case 's':
                v28 = @"E_DOWNSTREAM_SERVICE_FAILED";
                break;
              case 't':
                v28 = @"E_DOWNSTREAM_SERVICE_THROTTLED";
                break;
              case 'u':
                v28 = @"E_DRIVE_USER_QUOTA_EXCEEDED";
                break;
              case 'v':
                v28 = @"E_DRIVE_GROUP_QUOTA_EXCEEDED";
                break;
              case 'w':
                v28 = @"E_DRIVE_ORG_QUOTA_EXCEEDED";
                break;
              case 'x':
                v28 = @"E_RECORD_LIMIT_EXCEEDED";
                break;
              case 'y':
                v28 = @"E_DISALLOWED_COUNTRY_CODE";
                break;
              default:
                if (v27 == 4)
                {
                  v28 = @"S_OK_HAS_MORE_DATA";
                }

                else
                {
                  if (v27 != 5)
                  {
                    goto LABEL_49;
                  }

                  v28 = @"S_PROCESSING";
                }

                break;
            }

            goto LABEL_77;
          }

          if (v27 > 1)
          {
            if (v27 == 2)
            {
              v28 = @"E_ERROR";
            }

            else
            {
              v28 = @"S_MIXED_RESPONSE";
            }

            goto LABEL_77;
          }

          if (!v27)
          {
            v28 = @"UNKNOWN_CODE";
            goto LABEL_77;
          }

          if (v27 == 1)
          {
            v28 = @"S_OK";
            goto LABEL_77;
          }
        }

LABEL_49:
        v28 = [NSString stringWithFormat:@"(unknown: %i)", v27];
        goto LABEL_77;
      }
    }

    v17 = [v6 reports];
    v18 = [v17 count];
    v19 = [(PDURLRequestOperation *)self stats];
    if (v19)
    {
      v19[15] = v18;
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000903BC;
    v30[3] = &unk_1002038B0;
    v20 = v6;
    v31 = v20;
    v21 = v8;
    v32 = v21;
    v33 = self;
    if (v21)
    {
      v7 = [v21 performTransaction:v30 forWriting:1];
    }

    else
    {
      v7 = 0;
    }

    if ([v20 hasNextBatchPointer])
    {
      v22 = [v20 nextBatchPointer];
    }

    else
    {
      v22 = 0;
    }

    v23 = *(&self->super._responseStatusError + 2);
    *(&self->super._responseStatusError + 2) = v22;

    v12 = v31;
    goto LABEL_18;
  }

  v7 = 0;
LABEL_19:

  return v7;
}

- (BOOL)wantsToExecute
{
  if ([(PDOperation *)self isAborted])
  {
    return 0;
  }

  if (BYTE2(self->_nextBatchPointer))
  {
    return 1;
  }

  return *(&self->super._responseStatusError + 2) != 0;
}

@end