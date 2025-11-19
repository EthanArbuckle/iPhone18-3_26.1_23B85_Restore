@interface PDPublishAdminRequest
+ (id)defaultEndpointInfo;
- (BOOL)processAdminRequestAccountPayload:(id)a3;
- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4;
- (BOOL)shouldProcessPayloadWithStatusCode:(int)a3;
- (BOOL)wantsToExecute;
- (PDPublishAdminRequest)initWithDatabase:(id)a3 adminRequests:(id)a4 requestor:(id)a5;
- (id)customRequestHeaders;
- (id)requestData;
- (void)disableSearchIfAccountIsUnapproved:(id)a3;
- (void)finishedResponseProcessing;
@end

@implementation PDPublishAdminRequest

+ (id)defaultEndpointInfo
{
  v2 = objc_alloc_init(PDEndpointInfo);
  sub_100087930(v2, @"apple_school_manager");
  sub_10003F68C(v2, @"ee.adminRequest");
  sub_10003F69C(v2, @"https://ws.school.apple.com/maid/v1/adminrequest/publish");
  if (v2)
  {
    *&v2->_requiresAuth = 256;
    v2->_payloadLimitBytes = 0;
    v2->_responseTTLSeconds = 0;
    v2->_payloadLimitItems = 0;
  }

  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)shouldProcessPayloadWithStatusCode:(int)a3
{
  result = 1;
  if ((a3 - 102) > 0xA || ((1 << (a3 - 102)) & 0x481) == 0)
  {
    return a3 == 1 || a3 == 804;
  }

  return result;
}

- (id)customRequestHeaders
{
  v3 = [(PDPublishAdminRequest *)self requestor];

  if (v3)
  {
    v4 = [(PDPublishAdminRequest *)self requestor];
    v5 = [(PDOperation *)self database];
    v6 = objc_opt_class();
    v7 = [v4 objectID];
    v8 = [v5 select:v6 identity:v7];

    if (v8)
    {
      [v4 setState:{objc_msgSend(v8, "state")}];
      v9 = [v8 serverRequestHeaders];
      [v4 setServerRequestHeaders:v9];
    }

    v10 = [v4 serverRequestHeaders];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PDPublishAdminRequest)initWithDatabase:(id)a3 adminRequests:(id)a4 requestor:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PDPublishAdminRequest;
  v11 = [(PDASMPayloadOperation *)&v18 initWithDatabase:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 242), a4);
    objc_storeStrong((v12 + 250), a5);
    v13 = objc_opt_new();
    v14 = *(v12 + 266);
    *(v12 + 266) = v13;

    v15 = objc_opt_new();
    v16 = *(v12 + 274);
    *(v12 + 274) = v15;

    v12[234] = 1;
  }

  return v12;
}

- (BOOL)wantsToExecute
{
  v3 = [(PDOperation *)self manager];
  v4 = sub_100121714(v3);

  if (*(&self->_adminRequests + 2))
  {
    v5 = 0;
  }

  else
  {
    v5 = !v4;
  }

  v6 = !v5 && [*(&self->_firstRun + 2) count] != 0;
  v7 = +[PDUserDefaults sharedDefaults];
  v8 = [v7 enableVerboseLogging];

  if (v8 && !v6)
  {
    if (!v4 && !*(&self->_adminRequests + 2))
    {
      CLSInitLog();
      v9 = [(PDPublishAdminRequest *)self logSubsystem];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_opt_class();
        v11 = v15;
        v12 = [(PDURLRequestOperation *)self operationID];
        v16 = 138543618;
        v17 = v15;
        v18 = 2114;
        v19 = v12;
        v13 = "%{public}@: %{public}@ Skipping operation: no requestor supplied.";
        goto LABEL_18;
      }

LABEL_15:

      return v6;
    }

    if (BYTE2(self->super._unresolvedMissingEntityIDs) == 1)
    {
      CLSInitLog();
      v9 = [(PDPublishAdminRequest *)self logSubsystem];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = [(PDURLRequestOperation *)self operationID];
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = v12;
        v13 = "%{public}@: %{public}@ Skipping operation: no admin requests supplied.";
LABEL_18:
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, v13, &v16, 0x16u);

        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  return v6;
}

- (id)requestData
{
  v2 = self;
  if ([(PDOperation *)self isFinished])
  {
    v3 = 0;
    goto LABEL_69;
  }

  v4 = objc_alloc_init(PBDataWriter);
  v5 = objc_alloc_init(PDDPPublishAdminRequest);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v69 = 242;
  obj = *(&v2->_firstRun + 2);
  v6 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (v6)
  {
    v88 = 0;
    v85 = 0;
    v7 = 0;
    v72 = *v102;
    v73 = v4;
    v87 = v2;
LABEL_5:
    v8 = 0;
    v78 = v7;
    v70 = &v6[v7];
    v74 = v6;
    while (1)
    {
      if (*v102 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v75 = v8;
      v9 = *(*(&v101 + 1) + 8 * v8);
      context = objc_autoreleasePoolPush();
      v86 = [(PDOperation *)v87 database];
      v92 = objc_opt_new();
      v10 = [(PDOperation *)v87 manager];
      if (!sub_100121714(v10))
      {
        goto LABEL_14;
      }

      v11 = [(PDDPAdminRequestDetails *)v9 organizationID];

      if (!v11)
      {
        break;
      }

LABEL_15:
      v15 = sub_1000866F8(v9, *(&v87->_adminRequests + 2));
      v16 = objc_alloc_init(PDDPEEPayload);
      [(PDDPEEPayload *)v16 setType:10];
      [(PDDPEEPayload *)v16 setAction:1];
      [(PDDPEEPayload *)v16 setAdminRequest:v15];
      [v92 addObject:v16];
      v17 = +[PDUserDefaults sharedDefaults];
      v18 = [v17 enableVerboseLogging];

      if (v18)
      {
        v19 = [(PDDPEEPayload *)v16 adminRequest];
        v20 = [v19 hasRequestor];

        if (v20)
        {
          CLSInitLog();
          v21 = [(PDPublishAdminRequest *)v87 logSubsystem];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v54 = objc_opt_class();
            v91 = v54;
            v55 = [(PDURLRequestOperation *)v87 operationID];
            v56 = [(PDDPEEPayload *)v16 adminRequest];
            v57 = [v56 requestor];
            v58 = [v57 description];
            *buf = 138543874;
            v108 = v54;
            v109 = 2114;
            v110 = v55;
            v111 = 2112;
            v112 = v58;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ using requestor: %@", buf, 0x20u);
          }
        }
      }

      v76 = v16;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v90 = *(&v87->_requestor + 2);
      v22 = [v90 countByEnumeratingWithState:&v97 objects:v106 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v98;
        do
        {
          v25 = 0;
          do
          {
            if (*v98 != v24)
            {
              objc_enumerationMutation(v90);
            }

            v26 = *(*(&v97 + 1) + 8 * v25);
            v27 = objc_alloc_init(PDDPEEPayload);
            [(PDDPEEPayload *)v27 setType:11];
            [(PDDPEEPayload *)v27 setAction:1];
            v28 = sub_100086AF0(v9, v26, v15);
            [(PDDPEEPayload *)v27 setAdminRequestAccount:v28];

            v29 = [v26 requestedRoleID];
            if (v29)
            {
              v30 = v29;
            }

            else
            {
              if ([v26 requestedRoleType] != 6)
              {
                goto LABEL_28;
              }

              v36 = v88;
              if (!v88)
              {
                v37 = [v86 select:objc_opt_class() where:@"type = ?" bindings:&off_10021BA90];
                if (!v37)
                {
                  goto LABEL_44;
                }

                v38 = v37;
                v89 = [v37 objectID];
                v39 = +[PDUserDefaults sharedDefaults];
                v40 = [v39 enableVerboseLogging];

                if (v40)
                {
                  CLSInitLog();
                  v41 = [(PDPublishAdminRequest *)v87 logSubsystem];
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    loga = v41;
                    v44 = objc_opt_class();
                    v82 = v44;
                    v45 = [(PDURLRequestOperation *)v87 operationID];
                    *buf = 138543874;
                    v108 = v44;
                    v41 = loga;
                    v109 = 2114;
                    v110 = v45;
                    v111 = 2112;
                    v112 = v89;
                    _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ using default 'student' roleID: %@", buf, 0x20u);
                  }
                }

                v36 = v89;
                if (!v89)
                {
LABEL_44:
                  v88 = 0;
                  goto LABEL_28;
                }
              }

              v30 = [(PDDPEEPayload *)v27 adminRequestAccount];
              v88 = v36;
              [v30 setRequestedRoleId:v36];
            }

LABEL_28:
            v31 = +[PDUserDefaults sharedDefaults];
            v32 = [v31 enableVerboseLogging];

            if (v32)
            {
              v33 = [(PDDPEEPayload *)v27 adminRequestAccount];
              v34 = [v33 hasPerson];

              if (v34)
              {
                CLSInitLog();
                v35 = [(PDPublishAdminRequest *)v87 logSubsystem];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  v79 = objc_opt_class();
                  log = v79;
                  v42 = [(PDURLRequestOperation *)v87 operationID];
                  v81 = [(PDDPEEPayload *)v27 adminRequestAccount];
                  v80 = [v81 person];
                  v43 = [v80 description];
                  *buf = 138543874;
                  v108 = v79;
                  v109 = 2114;
                  v110 = v42;
                  v111 = 2112;
                  v112 = v43;
                  _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ person info: %@", buf, 0x20u);
                }
              }
            }

            [v92 addObject:v27];

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v85 += v23;
          v46 = [v90 countByEnumeratingWithState:&v97 objects:v106 count:16];
          v23 = v46;
        }

        while (v46);
      }

      ++v78;

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v47 = v92;
      v48 = [v47 countByEnumeratingWithState:&v93 objects:v105 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v94;
        v4 = v73;
        v2 = v87;
        do
        {
          for (i = 0; i != v49; i = i + 1)
          {
            if (*v94 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v93 + 1) + 8 * i);
            [(PDDPPublishAdminRequest *)v5 addPayload:v52, v69];
            v53 = [(PDASMPayloadOperation *)v87 writePayload:v52 toRequest:v5 writer:v73];
            [(PDDPPublishAdminRequest *)v5 clearPayloads];
          }

          v49 = [v47 countByEnumeratingWithState:&v93 objects:v105 count:16];
        }

        while (v49);

        objc_autoreleasePoolPop(context);
        if (!v53)
        {
          v7 = v78;
          goto LABEL_60;
        }
      }

      else
      {

        objc_autoreleasePoolPop(context);
        v4 = v73;
        v2 = v87;
      }

      v8 = v75 + 1;
      if ((v75 + 1) == v74)
      {
        v6 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
        v7 = v70;
        if (!v6)
        {
          goto LABEL_60;
        }

        goto LABEL_5;
      }
    }

    v10 = sub_1000716B8(v86);
    [(PDDPAdminRequestDetails *)v9 setOrganizationID:v10];
    v12 = +[PDUserDefaults sharedDefaults];
    v13 = [v12 enableVerboseLogging];

    if (v13)
    {
      CLSInitLog();
      v14 = [(PDPublishAdminRequest *)v87 logSubsystem];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v59 = objc_opt_class();
        v60 = v59;
        v61 = [(PDURLRequestOperation *)v87 operationID];
        *buf = 138543874;
        v108 = v59;
        v109 = 2114;
        v110 = v61;
        v111 = 2112;
        v112 = v10;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ using current organizationID: %@", buf, 0x20u);
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v88 = 0;
  v85 = 0;
  v7 = 0;
LABEL_60:

  BYTE2(v2->super._unresolvedMissingEntityIDs) = 0;
  v62 = [(PDURLRequestOperation *)v2 stats];
  if (v62 && (v63 = v62[14], v62, v63))
  {
    if (v7 >= 1)
    {
      v64 = [*(&v2->super.super.super.super.super.super.super.isa + v69) subarrayWithRange:{v7, objc_msgSend(*(&v2->super.super.super.super.super.super.super.isa + v69), "count") - v7}];
      v65 = *(&v2->super.super.super.super.super.super.super.isa + v69);
      *(&v2->super.super.super.super.super.super.super.isa + v69) = v64;
    }

    if (v85 >= 1)
    {
      v66 = [*(&v2->_requestor + 2) subarrayWithRange:{v85, objc_msgSend(*(&v2->_requestor + 2), "count") - v85}];
      v67 = *(&v2->_requestor + 2);
      *(&v2->_requestor + 2) = v66;
    }

    v3 = [v4 immutableData];
  }

  else
  {
    [(PDEndpointRequestOperation *)v2 markAsFinished];
    v3 = 0;
  }

LABEL_69:

  return v3;
}

- (void)disableSearchIfAccountIsUnapproved:(id)a3
{
  v10 = a3;
  v4 = [v10 person];

  if (v4)
  {
    v5 = [(PDOperation *)self database];
    v6 = objc_opt_class();
    v7 = [v10 parentRequestId];
    v8 = [v5 select:v6 identity:v7];

    if (v8 && [v8 type] == 2 && objc_msgSend(v8, "approval") != 3)
    {
      v9 = [v10 person];
      [v9 setIsRosterSearchAllowed:0];
    }
  }
}

- (BOOL)processAdminRequestAccountPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 adminRequestAccount];
  if ([v5 hasPerson])
  {
    v6 = [v5 person];
    [(PDPublishAdminRequest *)self disableSearchIfAccountIsUnapproved:v5];
    v7 = [(PDOperation *)self manager];
    v8 = sub_100121714(v7);

    if (!v8)
    {
      v9 = objc_opt_new();
      v10 = [(PDOperation *)self database];
      v11 = [v6 roleLocations];
      v12 = [v11 count];

      if (v12)
      {
        v37 = self;
        v38 = v4;
        v41 = v5;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = [v6 roleLocations];
        v13 = v9;
        v43 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v43)
        {
          v14 = *v46;
          v15 = &CLSLogAsset_ptr;
          v39 = v10;
          v40 = v13;
          do
          {
            for (i = 0; i != v43; i = i + 1)
            {
              if (*v46 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v45 + 1) + 8 * i);
              if ([v17 hasRoleType] && !objc_msgSend(v17, "hasRoleId") || objc_msgSend(v17, "hasRoleId") && (v18 = objc_opt_class(), objc_msgSend(v17, "roleId"), v19 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = objc_msgSend(v10, "entityExistsByClass:identity:", v18, v19), v19, (v18 & 1) == 0))
              {
                v20 = v15;
                v21 = v14;
                v22 = v6;
                v23 = [v6 personId];
                v24 = [v17 roleType];
                if (v24 >= 8)
                {
                  v25 = [NSString stringWithFormat:@"(unknown: %i)", v24];
                }

                else
                {
                  v25 = *(&off_100206690 + v24);
                }

                v26 = [v17 locationId];
                v27 = [v41 parentRequestId];
                v28 = [NSString stringWithFormat:@"%@-%@-%@-%@", v23, v25, v26, v27];

                [v17 setRoleId:v28];
                v29 = [[CLSRole alloc] _init];
                [v29 setObjectID:v28];
                [v29 setType:{objc_msgSend(v17, "roleType")}];
                [v29 setPrivileges:&__NSArray0__struct];
                v13 = v40;
                [v40 addObject:v29];

                v6 = v22;
                v14 = v21;
                v15 = v20;
                v10 = v39;
              }

              v30 = v15[96];
              v31 = objc_opt_class();
              v32 = [v17 locationId];
              LOBYTE(v31) = [v10 entityExistsByClass:v31 identity:v32];

              if ((v31 & 1) == 0)
              {
                v33 = [objc_alloc(v15[96]) _init];
                v34 = [v17 locationId];
                [v33 setObjectID:v34];

                [v33 setLocationName:&stru_100206880];
                [v13 addObject:v33];
              }
            }

            v43 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v43);
        }

        [v10 insertOrUpdateObjects:v13];
        self = v37;
        v4 = v38;
        v9 = v13;
        v5 = v41;
      }
    }
  }

  v44.receiver = self;
  v44.super_class = PDPublishAdminRequest;
  v35 = [(PDASMPayloadOperation *)&v44 processAdminRequestAccountPayload:v4];

  return v35;
}

- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = PDPublishAdminRequest;
  v7 = [(PDASMPayloadOperation *)&v23 processPayloadFromResponse:v6 error:a4];
  if ([v6 hasStatus])
  {
    v8 = [v6 status];
    v9 = [v8 code] == 1;
  }

  else
  {
    v9 = 1;
  }

  if ([v6 type] == 10)
  {
    v10 = [v6 adminRequest];
    v11 = sub_1000868EC(v10);

    if (v7 && v9)
    {
      [*(&self->_adminRequestAccounts + 2) addObject:v11];
LABEL_15:

      goto LABEL_16;
    }

    v14 = [v6 status];

    if (!v14)
    {
      goto LABEL_15;
    }

    v12 = v11;
    v11 = v12;
  }

  else
  {
    if ([v6 type] != 11 || v9)
    {
      goto LABEL_16;
    }

    v12 = [v6 adminRequestAccount];
    v13 = [v6 status];
    v11 = sub_1000871F0(v12, v13);
  }

  if (v11)
  {
    v15 = [v6 status];
    v16 = [NSError cls_createErrorWithCode:sub_1001054F0(v15) errorObject:v11 description:0];

    [*(&self->_successfulObjects + 2) addObject:v16];
    CLSInitLog();
    v17 = [(PDPublishAdminRequest *)self logSubsystem];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [(PDURLRequestOperation *)self operationID];
      v22 = [v6 dictionaryRepresentation];
      *buf = 138544130;
      v25 = v19;
      v26 = 2114;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      v30 = 2114;
      v31 = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ failing payload item %@ with error %{public}@", buf, 0x2Au);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v7;
}

- (void)finishedResponseProcessing
{
  v3 = [(PDPublishAdminRequest *)self successfulObjects];
  v4 = [v3 count];

  v5 = [(PDPublishAdminRequest *)self failures];
  v6 = [v5 count];

  v7 = [(PDOperation *)self operationError];
  if (!v7)
  {
    if (v6 < 1 || v4 < 1)
    {
      return;
    }

    v8 = [(PDPublishAdminRequest *)self successfulObjects];
    v9 = [(PDPublishAdminRequest *)self failures];
    v10 = [NSError cls_createErrorWithCode:9 successfulObjects:v8 underlyingErrors:v9 description:0];

    [(PDOperation *)self finishWithError:v10];
    v7 = v10;
  }
}

@end