@interface PDPublishAdminRequest
+ (id)defaultEndpointInfo;
- (BOOL)processAdminRequestAccountPayload:(id)payload;
- (BOOL)processPayloadFromResponse:(id)response error:(id *)error;
- (BOOL)shouldProcessPayloadWithStatusCode:(int)code;
- (BOOL)wantsToExecute;
- (PDPublishAdminRequest)initWithDatabase:(id)database adminRequests:(id)requests requestor:(id)requestor;
- (id)customRequestHeaders;
- (id)requestData;
- (void)disableSearchIfAccountIsUnapproved:(id)unapproved;
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

- (BOOL)shouldProcessPayloadWithStatusCode:(int)code
{
  result = 1;
  if ((code - 102) > 0xA || ((1 << (code - 102)) & 0x481) == 0)
  {
    return code == 1 || code == 804;
  }

  return result;
}

- (id)customRequestHeaders
{
  requestor = [(PDPublishAdminRequest *)self requestor];

  if (requestor)
  {
    requestor2 = [(PDPublishAdminRequest *)self requestor];
    database = [(PDOperation *)self database];
    v6 = objc_opt_class();
    objectID = [requestor2 objectID];
    v8 = [database select:v6 identity:objectID];

    if (v8)
    {
      [requestor2 setState:{objc_msgSend(v8, "state")}];
      serverRequestHeaders = [v8 serverRequestHeaders];
      [requestor2 setServerRequestHeaders:serverRequestHeaders];
    }

    serverRequestHeaders2 = [requestor2 serverRequestHeaders];
  }

  else
  {
    serverRequestHeaders2 = 0;
  }

  return serverRequestHeaders2;
}

- (PDPublishAdminRequest)initWithDatabase:(id)database adminRequests:(id)requests requestor:(id)requestor
{
  requestsCopy = requests;
  requestorCopy = requestor;
  v18.receiver = self;
  v18.super_class = PDPublishAdminRequest;
  v11 = [(PDASMPayloadOperation *)&v18 initWithDatabase:database];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 242), requests);
    objc_storeStrong((v12 + 250), requestor);
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
  manager = [(PDOperation *)self manager];
  v4 = sub_100121714(manager);

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
  enableVerboseLogging = [v7 enableVerboseLogging];

  if (enableVerboseLogging && !v6)
  {
    if (!v4 && !*(&self->_adminRequests + 2))
    {
      CLSInitLog();
      logSubsystem = [(PDPublishAdminRequest *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_opt_class();
        v11 = v15;
        operationID = [(PDURLRequestOperation *)self operationID];
        v16 = 138543618;
        v17 = v15;
        v18 = 2114;
        v19 = operationID;
        v13 = "%{public}@: %{public}@ Skipping operation: no requestor supplied.";
        goto LABEL_18;
      }

LABEL_15:

      return v6;
    }

    if (BYTE2(self->super._unresolvedMissingEntityIDs) == 1)
    {
      CLSInitLog();
      logSubsystem = [(PDPublishAdminRequest *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v11 = v10;
        operationID = [(PDURLRequestOperation *)self operationID];
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = operationID;
        v13 = "%{public}@: %{public}@ Skipping operation: no admin requests supplied.";
LABEL_18:
        _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, v13, &v16, 0x16u);

        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  return v6;
}

- (id)requestData
{
  selfCopy = self;
  if ([(PDOperation *)self isFinished])
  {
    immutableData = 0;
    goto LABEL_69;
  }

  v4 = objc_alloc_init(PBDataWriter);
  v5 = objc_alloc_init(PDDPPublishAdminRequest);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v69 = 242;
  obj = *(&selfCopy->_firstRun + 2);
  v6 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (v6)
  {
    v88 = 0;
    v85 = 0;
    v7 = 0;
    v72 = *v102;
    v73 = v4;
    v87 = selfCopy;
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
      database = [(PDOperation *)v87 database];
      v92 = objc_opt_new();
      manager = [(PDOperation *)v87 manager];
      if (!sub_100121714(manager))
      {
        goto LABEL_14;
      }

      organizationID = [(PDDPAdminRequestDetails *)v9 organizationID];

      if (!organizationID)
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
      enableVerboseLogging = [v17 enableVerboseLogging];

      if (enableVerboseLogging)
      {
        adminRequest = [(PDDPEEPayload *)v16 adminRequest];
        hasRequestor = [adminRequest hasRequestor];

        if (hasRequestor)
        {
          CLSInitLog();
          logSubsystem = [(PDPublishAdminRequest *)v87 logSubsystem];
          if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
          {
            v54 = objc_opt_class();
            v91 = v54;
            operationID = [(PDURLRequestOperation *)v87 operationID];
            adminRequest2 = [(PDDPEEPayload *)v16 adminRequest];
            requestor = [adminRequest2 requestor];
            v58 = [requestor description];
            *buf = 138543874;
            v108 = v54;
            v109 = 2114;
            v110 = operationID;
            v111 = 2112;
            v112 = v58;
            _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ using requestor: %@", buf, 0x20u);
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

            requestedRoleID = [v26 requestedRoleID];
            if (requestedRoleID)
            {
              adminRequestAccount = requestedRoleID;
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
                v37 = [database select:objc_opt_class() where:@"type = ?" bindings:&off_10021BA90];
                if (!v37)
                {
                  goto LABEL_44;
                }

                v38 = v37;
                objectID = [v37 objectID];
                v39 = +[PDUserDefaults sharedDefaults];
                enableVerboseLogging2 = [v39 enableVerboseLogging];

                if (enableVerboseLogging2)
                {
                  CLSInitLog();
                  logSubsystem2 = [(PDPublishAdminRequest *)v87 logSubsystem];
                  if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
                  {
                    loga = logSubsystem2;
                    v44 = objc_opt_class();
                    v82 = v44;
                    operationID2 = [(PDURLRequestOperation *)v87 operationID];
                    *buf = 138543874;
                    v108 = v44;
                    logSubsystem2 = loga;
                    v109 = 2114;
                    v110 = operationID2;
                    v111 = 2112;
                    v112 = objectID;
                    _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ using default 'student' roleID: %@", buf, 0x20u);
                  }
                }

                v36 = objectID;
                if (!objectID)
                {
LABEL_44:
                  v88 = 0;
                  goto LABEL_28;
                }
              }

              adminRequestAccount = [(PDDPEEPayload *)v27 adminRequestAccount];
              v88 = v36;
              [adminRequestAccount setRequestedRoleId:v36];
            }

LABEL_28:
            v31 = +[PDUserDefaults sharedDefaults];
            enableVerboseLogging3 = [v31 enableVerboseLogging];

            if (enableVerboseLogging3)
            {
              adminRequestAccount2 = [(PDDPEEPayload *)v27 adminRequestAccount];
              hasPerson = [adminRequestAccount2 hasPerson];

              if (hasPerson)
              {
                CLSInitLog();
                logSubsystem3 = [(PDPublishAdminRequest *)v87 logSubsystem];
                if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEBUG))
                {
                  v79 = objc_opt_class();
                  log = v79;
                  operationID3 = [(PDURLRequestOperation *)v87 operationID];
                  adminRequestAccount3 = [(PDDPEEPayload *)v27 adminRequestAccount];
                  person = [adminRequestAccount3 person];
                  v43 = [person description];
                  *buf = 138543874;
                  v108 = v79;
                  v109 = 2114;
                  v110 = operationID3;
                  v111 = 2112;
                  v112 = v43;
                  _os_log_debug_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ person info: %@", buf, 0x20u);
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
        selfCopy = v87;
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
        selfCopy = v87;
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

    manager = sub_1000716B8(database);
    [(PDDPAdminRequestDetails *)v9 setOrganizationID:manager];
    v12 = +[PDUserDefaults sharedDefaults];
    enableVerboseLogging4 = [v12 enableVerboseLogging];

    if (enableVerboseLogging4)
    {
      CLSInitLog();
      logSubsystem4 = [(PDPublishAdminRequest *)v87 logSubsystem];
      if (os_log_type_enabled(logSubsystem4, OS_LOG_TYPE_DEBUG))
      {
        v59 = objc_opt_class();
        v60 = v59;
        operationID4 = [(PDURLRequestOperation *)v87 operationID];
        *buf = 138543874;
        v108 = v59;
        v109 = 2114;
        v110 = operationID4;
        v111 = 2112;
        v112 = manager;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem4, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ using current organizationID: %@", buf, 0x20u);
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v88 = 0;
  v85 = 0;
  v7 = 0;
LABEL_60:

  BYTE2(selfCopy->super._unresolvedMissingEntityIDs) = 0;
  stats = [(PDURLRequestOperation *)selfCopy stats];
  if (stats && (v63 = stats[14], stats, v63))
  {
    if (v7 >= 1)
    {
      v64 = [*(&selfCopy->super.super.super.super.super.super.super.isa + v69) subarrayWithRange:{v7, objc_msgSend(*(&selfCopy->super.super.super.super.super.super.super.isa + v69), "count") - v7}];
      v65 = *(&selfCopy->super.super.super.super.super.super.super.isa + v69);
      *(&selfCopy->super.super.super.super.super.super.super.isa + v69) = v64;
    }

    if (v85 >= 1)
    {
      v66 = [*(&selfCopy->_requestor + 2) subarrayWithRange:{v85, objc_msgSend(*(&selfCopy->_requestor + 2), "count") - v85}];
      v67 = *(&selfCopy->_requestor + 2);
      *(&selfCopy->_requestor + 2) = v66;
    }

    immutableData = [v4 immutableData];
  }

  else
  {
    [(PDEndpointRequestOperation *)selfCopy markAsFinished];
    immutableData = 0;
  }

LABEL_69:

  return immutableData;
}

- (void)disableSearchIfAccountIsUnapproved:(id)unapproved
{
  unapprovedCopy = unapproved;
  person = [unapprovedCopy person];

  if (person)
  {
    database = [(PDOperation *)self database];
    v6 = objc_opt_class();
    parentRequestId = [unapprovedCopy parentRequestId];
    v8 = [database select:v6 identity:parentRequestId];

    if (v8 && [v8 type] == 2 && objc_msgSend(v8, "approval") != 3)
    {
      person2 = [unapprovedCopy person];
      [person2 setIsRosterSearchAllowed:0];
    }
  }
}

- (BOOL)processAdminRequestAccountPayload:(id)payload
{
  payloadCopy = payload;
  adminRequestAccount = [payloadCopy adminRequestAccount];
  if ([adminRequestAccount hasPerson])
  {
    person = [adminRequestAccount person];
    [(PDPublishAdminRequest *)self disableSearchIfAccountIsUnapproved:adminRequestAccount];
    manager = [(PDOperation *)self manager];
    v8 = sub_100121714(manager);

    if (!v8)
    {
      v9 = objc_opt_new();
      database = [(PDOperation *)self database];
      roleLocations = [person roleLocations];
      v12 = [roleLocations count];

      if (v12)
      {
        selfCopy = self;
        v38 = payloadCopy;
        v41 = adminRequestAccount;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = [person roleLocations];
        v13 = v9;
        v43 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v43)
        {
          v14 = *v46;
          v15 = &CLSLogAsset_ptr;
          v39 = database;
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
              if ([v17 hasRoleType] && !objc_msgSend(v17, "hasRoleId") || objc_msgSend(v17, "hasRoleId") && (v18 = objc_opt_class(), objc_msgSend(v17, "roleId"), v19 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = objc_msgSend(database, "entityExistsByClass:identity:", v18, v19), v19, (v18 & 1) == 0))
              {
                v20 = v15;
                v21 = v14;
                v22 = person;
                personId = [person personId];
                roleType = [v17 roleType];
                if (roleType >= 8)
                {
                  v25 = [NSString stringWithFormat:@"(unknown: %i)", roleType];
                }

                else
                {
                  v25 = *(&off_100206690 + roleType);
                }

                locationId = [v17 locationId];
                parentRequestId = [v41 parentRequestId];
                v28 = [NSString stringWithFormat:@"%@-%@-%@-%@", personId, v25, locationId, parentRequestId];

                [v17 setRoleId:v28];
                _init = [[CLSRole alloc] _init];
                [_init setObjectID:v28];
                [_init setType:{objc_msgSend(v17, "roleType")}];
                [_init setPrivileges:&__NSArray0__struct];
                v13 = v40;
                [v40 addObject:_init];

                person = v22;
                v14 = v21;
                v15 = v20;
                database = v39;
              }

              v30 = v15[96];
              v31 = objc_opt_class();
              locationId2 = [v17 locationId];
              LOBYTE(v31) = [database entityExistsByClass:v31 identity:locationId2];

              if ((v31 & 1) == 0)
              {
                _init2 = [objc_alloc(v15[96]) _init];
                locationId3 = [v17 locationId];
                [_init2 setObjectID:locationId3];

                [_init2 setLocationName:&stru_100206880];
                [v13 addObject:_init2];
              }
            }

            v43 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v43);
        }

        [database insertOrUpdateObjects:v13];
        self = selfCopy;
        payloadCopy = v38;
        v9 = v13;
        adminRequestAccount = v41;
      }
    }
  }

  v44.receiver = self;
  v44.super_class = PDPublishAdminRequest;
  v35 = [(PDASMPayloadOperation *)&v44 processAdminRequestAccountPayload:payloadCopy];

  return v35;
}

- (BOOL)processPayloadFromResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v23.receiver = self;
  v23.super_class = PDPublishAdminRequest;
  v7 = [(PDASMPayloadOperation *)&v23 processPayloadFromResponse:responseCopy error:error];
  if ([responseCopy hasStatus])
  {
    status = [responseCopy status];
    v9 = [status code] == 1;
  }

  else
  {
    v9 = 1;
  }

  if ([responseCopy type] == 10)
  {
    adminRequest = [responseCopy adminRequest];
    v11 = sub_1000868EC(adminRequest);

    if (v7 && v9)
    {
      [*(&self->_adminRequestAccounts + 2) addObject:v11];
LABEL_15:

      goto LABEL_16;
    }

    status2 = [responseCopy status];

    if (!status2)
    {
      goto LABEL_15;
    }

    adminRequestAccount = v11;
    v11 = adminRequestAccount;
  }

  else
  {
    if ([responseCopy type] != 11 || v9)
    {
      goto LABEL_16;
    }

    adminRequestAccount = [responseCopy adminRequestAccount];
    status3 = [responseCopy status];
    v11 = sub_1000871F0(adminRequestAccount, status3);
  }

  if (v11)
  {
    status4 = [responseCopy status];
    v16 = [NSError cls_createErrorWithCode:sub_1001054F0(status4) errorObject:v11 description:0];

    [*(&self->_successfulObjects + 2) addObject:v16];
    CLSInitLog();
    logSubsystem = [(PDPublishAdminRequest *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = v19;
      operationID = [(PDURLRequestOperation *)self operationID];
      dictionaryRepresentation = [responseCopy dictionaryRepresentation];
      *buf = 138544130;
      v25 = v19;
      v26 = 2114;
      v27 = operationID;
      v28 = 2112;
      v29 = dictionaryRepresentation;
      v30 = 2114;
      v31 = v16;
      _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ failing payload item %@ with error %{public}@", buf, 0x2Au);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v7;
}

- (void)finishedResponseProcessing
{
  successfulObjects = [(PDPublishAdminRequest *)self successfulObjects];
  v4 = [successfulObjects count];

  failures = [(PDPublishAdminRequest *)self failures];
  v6 = [failures count];

  operationError = [(PDOperation *)self operationError];
  if (!operationError)
  {
    if (v6 < 1 || v4 < 1)
    {
      return;
    }

    successfulObjects2 = [(PDPublishAdminRequest *)self successfulObjects];
    failures2 = [(PDPublishAdminRequest *)self failures];
    v10 = [NSError cls_createErrorWithCode:9 successfulObjects:successfulObjects2 underlyingErrors:failures2 description:0];

    [(PDOperation *)self finishWithError:v10];
    operationError = v10;
  }
}

@end