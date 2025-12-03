@interface PDASMSearchOperation
+ (id)defaultEndpointInfo;
- (BOOL)haveIncompleteSyncData;
- (BOOL)isValidASMSearchSpecification:(id)specification;
- (BOOL)needsToMakeNetworkRequest;
- (BOOL)postFilterWillAcceptPerson:(id)person withRoleLocations:(id)locations;
- (BOOL)processClassMember:(id)member;
- (BOOL)processClassPayload:(id)payload;
- (BOOL)processGroupMember:(id)member;
- (BOOL)processGroupPayload:(id)payload;
- (BOOL)processOrganization:(id)organization;
- (BOOL)processPerson:(id)person;
- (BOOL)processResponseZone:(id)zone;
- (BOOL)shouldProcessResponseBody;
- (BOOL)wantsToExecute;
- (PDASMSearchOperation)initWithDatabase:(id)database;
- (PDASMSearchOperation)initWithDatabase:(id)database objectsMatching:(id)matching enumerationBlock:(id)block finishBlock:(id)finishBlock;
- (PDASMSearchOperation)initWithDatabase:(id)database rosterQuery:(id)query enumerationBlock:(id)block finishBlock:(id)finishBlock;
- (id)createQueryIfNoneExists:(id)exists;
- (id)createSearchRequestZoneForZoneName:(id)name usingQuery:(id)query;
- (id)criteriaForFieldName:(id)name andValue:(id)value;
- (id)criteriaForFieldName:(id)name andValues:(id)values withFormat:(id)format;
- (id)customRequestHeaders;
- (id)generateFilterQueryForZoneName:(id)name;
- (id)postFilterWillAcceptClassMember:(id)member;
- (id)postFilterWillAcceptGroupMember:(id)member;
- (id)processClassLocationIDsSearchQuery:(id)query;
- (id)processClassMemberSearchQuery:(id)query;
- (id)processGroupLocationIDsSearchQuery:(id)query;
- (id)processGroupMemberSearchQuery:(id)query;
- (id)processOrganizationSearchQuery:(id)query;
- (id)processPersonSearchQuery:(id)query;
- (id)requestData;
- (id)requestDataForRosterQuery;
- (id)requestDataForSearchSpec;
- (void)callFinishBlockIfNeeded;
- (void)execute;
- (void)markAsFinished;
@end

@implementation PDASMSearchOperation

+ (id)defaultEndpointInfo
{
  v2 = objc_alloc_init(PDEndpointInfo);
  sub_100087930(v2, @"apple_school_manager");
  sub_10003F68C(v2, @"ee.autocomplete");
  sub_10003F69C(v2, @"https://ws.school.apple.com/maid/v1/directory/search");
  if (v2)
  {
    v2->_payloadLimitBytes = 0;
    v2->_responseTTLSeconds = 0;
    v2->_payloadLimitItems = 200;
    *&v2->_requiresAuth = 257;
  }

  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (PDASMSearchOperation)initWithDatabase:(id)database
{
  databaseCopy = database;
  v14.receiver = self;
  v14.super_class = PDASMSearchOperation;
  v5 = [(PDASMPayloadOperation *)&v14 initWithDatabase:databaseCopy];
  v6 = v5;
  if (v5)
  {
    HIBYTE(v5->_expireRecordsAfterSeconds) = 0;
    v7 = objc_opt_new();
    v8 = *(&v6->_rosterQuery + 2);
    *(&v6->_rosterQuery + 2) = v7;

    v9 = sub_1000BA854(databaseCopy);
    resultsWillExpire = [(PDASMSearchOperation *)v6 resultsWillExpire];
    v11 = 0.0;
    if (resultsWillExpire)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v11 = v9[8];
    }

    *(&v6->_resultsBlockStop + 2) = v11;
    [(PDASMSearchOperation *)v6 setQualityOfService:33];
    BYTE6(v6->_expireRecordsAfterSeconds) = 0;
  }

  return v6;
}

- (PDASMSearchOperation)initWithDatabase:(id)database objectsMatching:(id)matching enumerationBlock:(id)block finishBlock:(id)finishBlock
{
  matchingCopy = matching;
  blockCopy = block;
  finishBlockCopy = finishBlock;
  v13 = [(PDASMSearchOperation *)self initWithDatabase:database];
  if (v13)
  {
    v14 = [matchingCopy copy];
    v15 = *(&v13->_postFilterPersonsByRequiredClassMemberRole + 1);
    *(&v13->_postFilterPersonsByRequiredClassMemberRole + 1) = v14;

    v16 = objc_retainBlock(blockCopy);
    v17 = *(&v13->super._unresolvedMissingEntityIDs + 2);
    *(&v13->super._unresolvedMissingEntityIDs + 2) = v16;

    v18 = objc_retainBlock(finishBlockCopy);
    v19 = *(&v13->_resultsBlock + 2);
    *(&v13->_resultsBlock + 2) = v18;

    BYTE2(v13->_finishBlock) = 0;
    v20 = objc_opt_new();
    v21 = *(&v13->_queryHashesByZone + 2);
    *(&v13->_queryHashesByZone + 2) = v20;
  }

  return v13;
}

- (PDASMSearchOperation)initWithDatabase:(id)database rosterQuery:(id)query enumerationBlock:(id)block finishBlock:(id)finishBlock
{
  queryCopy = query;
  blockCopy = block;
  finishBlockCopy = finishBlock;
  v14 = [(PDASMSearchOperation *)self initWithDatabase:database];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((&v14->_searchSpec + 2), query);
    v16 = objc_retainBlock(blockCopy);
    v17 = *(&v15->super._unresolvedMissingEntityIDs + 2);
    *(&v15->super._unresolvedMissingEntityIDs + 2) = v16;

    v18 = objc_retainBlock(finishBlockCopy);
    v19 = *(&v15->_resultsBlock + 2);
    *(&v15->_resultsBlock + 2) = v18;

    BYTE2(v15->_finishBlock) = 0;
  }

  return v15;
}

- (id)customRequestHeaders
{
  searchSpec = [(PDASMSearchOperation *)self searchSpec];
  if (!searchSpec)
  {
    goto LABEL_6;
  }

  v4 = searchSpec;
  searchSpec2 = [(PDASMSearchOperation *)self searchSpec];
  adminRequestor = [searchSpec2 adminRequestor];

  if (adminRequestor)
  {
    searchSpec3 = [(PDASMSearchOperation *)self searchSpec];
    adminRequestor2 = [searchSpec3 adminRequestor];

    database = [(PDOperation *)self database];
    v10 = objc_opt_class();
    objectID = [adminRequestor2 objectID];
    v12 = [database select:v10 identity:objectID];

    if (v12)
    {
      [adminRequestor2 setState:{objc_msgSend(v12, "state")}];
      serverRequestHeaders = [v12 serverRequestHeaders];
      [adminRequestor2 setServerRequestHeaders:serverRequestHeaders];
    }

    serverRequestHeaders2 = [adminRequestor2 serverRequestHeaders];
  }

  else
  {
LABEL_6:
    serverRequestHeaders2 = 0;
  }

  return serverRequestHeaders2;
}

- (void)callFinishBlockIfNeeded
{
  os_unfair_lock_lock((&self->_expireRecordsAfterSeconds + 2));
  if (*(&self->_resultsBlock + 2) && (self->_finisherLock._os_unfair_lock_opaque & 1) == 0)
  {
    CLSInitLog();
    logSubsystem = [(PDASMSearchOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = v4;
      operationID = [(PDURLRequestOperation *)self operationID];
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = operationID;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Calling ASM Search finish block.", &v7, 0x16u);
    }

    (*(&self->_resultsBlock + 2))[2]();
    LOBYTE(self->_finisherLock._os_unfair_lock_opaque) = 1;
  }

  os_unfair_lock_unlock((&self->_expireRecordsAfterSeconds + 2));
}

- (void)execute
{
  if (![(PDASMSearchOperation *)self wantsToExecute])
  {
    [(PDASMSearchOperation *)self markAsFinished];
  }

  v3.receiver = self;
  v3.super_class = PDASMSearchOperation;
  [(PDEndpointRequestOperation *)&v3 execute];
}

- (void)markAsFinished
{
  [(PDASMSearchOperation *)self callFinishBlockIfNeeded];
  v7.receiver = self;
  v7.super_class = PDASMSearchOperation;
  [(PDEndpointRequestOperation *)&v7 markAsFinished];
  if (BYTE6(self->_expireRecordsAfterSeconds) == 1)
  {
    v3 = [PDASMExpandMissingGroupReferencesOperation alloc];
    database = [(PDOperation *)self database];
    v5 = [(PDASMExpandMissingGroupReferencesOperation *)v3 initWithDatabase:database];

    if ([(PDASMExpandMissingGroupReferencesOperation *)v5 wantsToExecute])
    {
      manager = [(PDOperation *)self manager];
      sub_1001232E0(manager, v5);
    }
  }
}

- (BOOL)isValidASMSearchSpecification:(id)specification
{
  specificationCopy = specification;
  if (([specificationCopy options] & 0xB) != 0)
  {
    searchString = [specificationCopy searchString];
    if (searchString)
    {
      v6 = searchString;
      searchString2 = [specificationCopy searchString];
      v8 = [searchString2 length];
      database = [(PDOperation *)self database];
      v10 = sub_1000BA854(database);
      if (v10)
      {
        v11 = v10[6];
      }

      else
      {
        v11 = 0;
      }

      v12 = v8 >= v11;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)haveIncompleteSyncData
{
  v3 = objc_opt_new();
  if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) isPersonSearch])
  {
    v4 = sub_100084798(5);
    [v3 addObject:v4];
  }

  if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) isClassSearch])
  {
    v5 = sub_100084798(6);
    [v3 addObject:v5];
  }

  if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) isClassMemberSearch])
  {
    v6 = sub_100084798(7);
    [v3 addObject:v6];
  }

  if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) isGroupSearch])
  {
    v7 = sub_100084798(12);
    [v3 addObject:v7];
  }

  if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) isGroupMemberSearch])
  {
    v8 = sub_100084798(13);
    [v3 addObject:v8];
  }

  if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) isOrganizationSearch])
  {
    v9 = sub_100084798(9);
    [v3 addObject:v9];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        database = [(PDOperation *)self database];
        v17 = [database select:objc_opt_class() identity:v15];

        if (!v17 || v17[3] != 1)
        {

          v18 = 1;
          goto LABEL_25;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v18 = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_25:

  return v18;
}

- (BOOL)needsToMakeNetworkRequest
{
  selfCopy = self;
  if ([(PDASMSearchOperation *)self isValidASMSearchSpecification:*(&self->_postFilterPersonsByRequiredClassMemberRole + 1)]|| *(&selfCopy->_searchSpec + 2))
  {
    database = [(PDOperation *)selfCopy database];
    v4 = sub_1000BA854(database);
    manager = v4;
    if (v4 && (*(v4 + 10) & 1) != 0)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      haveIncompleteSyncData = [(PDASMSearchOperation *)selfCopy haveIncompleteSyncData];

      if (haveIncompleteSyncData)
      {
        LOBYTE(v6) = 1;
        goto LABEL_11;
      }

      if (![*(&selfCopy->_postFilterPersonsByRequiredClassMemberRole + 1) isOrganizationSearch])
      {
        LOBYTE(v6) = 0;
LABEL_11:
        if ([*(&selfCopy->_postFilterPersonsByRequiredClassMemberRole + 1) isClassMemberSearch])
        {
          v24 = v6;
          v8 = objc_opt_new();
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v25 = selfCopy;
          requiredClassMemberClassIDs = [*(&selfCopy->_postFilterPersonsByRequiredClassMemberRole + 1) requiredClassMemberClassIDs];
          v10 = [requiredClassMemberClassIDs countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v27;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v27 != v12)
                {
                  objc_enumerationMutation(requiredClassMemberClassIDs);
                }

                v14 = *(*(&v26 + 1) + 8 * i);
                v15 = [database select:objc_opt_class() identity:v14];
                dateExpires = [v15 dateExpires];

                if (dateExpires)
                {
                  [v8 addObject:v14];
                }
              }

              v11 = [requiredClassMemberClassIDs countByEnumeratingWithState:&v26 objects:v30 count:16];
            }

            while (v11);
          }

          selfCopy = v25;
          LOBYTE(v6) = v24;
          if ([v8 count])
          {
            v17 = [*(&v25->_postFilterPersonsByRequiredClassMemberRole + 1) copy];
            v18 = *(&v25->_postFilterPersonsByRequiredClassMemberRole + 1);
            *(&v25->_postFilterPersonsByRequiredClassMemberRole + 1) = v17;

            [*(&v25->_postFilterPersonsByRequiredClassMemberRole + 1) requireClassMemberRole:objc_msgSend(*(&v25->_postFilterPersonsByRequiredClassMemberRole + 1) forClassIDs:{"requiredClassMemberRole"), v8}];
            LOBYTE(v6) = 1;
          }
        }

        v19 = *(&selfCopy->_searchSpec + 2);
        if (!v19)
        {
          goto LABEL_33;
        }

        if (([v19 rosterSearchBehaviors] & 2) == 0)
        {
          LOBYTE(v6) = 0;
LABEL_33:

          return v6;
        }

        v20 = sub_1000BA854(database);
        v21 = v20;
        if (v20 && (v20[10] & 1) != 0)
        {
        }

        else
        {
          haveIncompleteSyncData2 = [(PDASMSearchOperation *)selfCopy haveIncompleteSyncData];

          if ((haveIncompleteSyncData2 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        LOBYTE(v6) = 1;
        goto LABEL_33;
      }

      manager = [(PDOperation *)selfCopy manager];
      v6 = !sub_100121714(manager);
    }

    goto LABEL_11;
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (BOOL)wantsToExecute
{
  [*(&self->super.super._responseStatusError + 2) removeAllObjects];
  if ([(PDASMSearchOperation *)self needsToMakeNetworkRequest])
  {
    v3 = HIBYTE(self->_expireRecordsAfterSeconds) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)createSearchRequestZoneForZoneName:(id)name usingQuery:(id)query
{
  nameCopy = name;
  queryCopy = query;
  v8 = objc_alloc_init(PDDPEESearchRequestZone);
  v9 = *(&self->_postFilterPersonsByRequiredClassMemberRole + 1);
  if (v9)
  {
    searchString = [v9 searchString];
    [(PDDPEESearchRequestZone *)v8 setKeyword:searchString];

    -[PDDPEESearchRequestZone setCompareOptions:](v8, "setCompareOptions:", [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) compareOptions]);
    searchString2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) searchString];
LABEL_5:
    v14 = searchString2;
    v15 = [PDASMSearchRecordZone hashForQuery:queryCopy withSearchText:searchString2];

    goto LABEL_6;
  }

  v12 = *(&self->_searchSpec + 2);
  if (v12)
  {
    keyword = [v12 keyword];
    [(PDDPEESearchRequestZone *)v8 setKeyword:keyword];

    [(PDDPEESearchRequestZone *)v8 setCompareOptions:393];
    searchString2 = [*(&self->_searchSpec + 2) keyword];
    goto LABEL_5;
  }

  [(PDDPEESearchRequestZone *)v8 setCompareOptions:2];
  v15 = [PDASMSearchRecordZone hashForQuery:queryCopy withSearchText:0];
LABEL_6:
  [*(&self->_rosterQuery + 2) setObject:v15 forKeyedSubscript:nameCopy];
  database = [(PDOperation *)self database];
  v17 = objc_opt_class();
  v26[0] = nameCopy;
  v26[1] = v15;
  v18 = [NSArray arrayWithObjects:v26 count:2];
  v19 = [database select:v17 where:@"zoneName = ? AND queryHash = ?" bindings:v18];

  v20 = sub_1000846EC(nameCopy, v19);
  [(PDDPEESearchRequestZone *)v8 setRequestZone:v20];
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  v22 = endpointInfo;
  if (endpointInfo)
  {
    v23 = *(endpointInfo + 64);
  }

  else
  {
    v23 = 0;
  }

  requestZone = [(PDDPEESearchRequestZone *)v8 requestZone];
  [requestZone setLimit:v23];

  if (queryCopy)
  {
    [(PDDPEESearchRequestZone *)v8 setFilterQuery:queryCopy];
  }

  return v8;
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    v3 = 0;
  }

  else
  {
    if (*(&self->_postFilterPersonsByRequiredClassMemberRole + 1))
    {
      [(PDASMSearchOperation *)self requestDataForSearchSpec];
    }

    else
    {
      [(PDASMSearchOperation *)self requestDataForRosterQuery];
    }
    v3 = ;
  }

  return v3;
}

- (id)requestDataForSearchSpec
{
  v39 = objc_alloc_init(PDDPEESearchRequest);
  v3 = objc_opt_new();
  if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) options])
  {
    if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) isClassMemberSearch])
    {
      v4 = 7;
    }

    else if ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) isGroupMemberSearch])
    {
      v4 = 13;
    }

    else
    {
      v4 = 5;
    }

    v5 = sub_100084798(v4);
    [v3 addObject:v5];
  }

  if (([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) options] & 2) != 0)
  {
    v6 = sub_100084798(6);
    [v3 addObject:v6];
  }

  if (([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) options] & 0x10) != 0)
  {
    v7 = sub_100084798(12);
    [v3 addObject:v7];
  }

  if (([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) options] & 8) != 0)
  {
    v8 = sub_100084798(9);
    [v3 addObject:v8];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v41;
    *&v11 = 138543874;
    v36 = v11;
    obj = v9;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = [(PDASMSearchOperation *)self generateFilterQueryForZoneName:v15, v36];
        v17 = [(PDASMSearchOperation *)self createSearchRequestZoneForZoneName:v15 usingQuery:v16];
        searchSpec = [(PDASMSearchOperation *)self searchSpec];

        if (searchSpec)
        {
          searchSpec2 = [(PDASMSearchOperation *)self searchSpec];
          adminRequestor = [searchSpec2 adminRequestor];
          v21 = sub_1000864D8(adminRequestor);
          requestZone = [v17 requestZone];
          [requestZone setRequestor:v21];
        }

        v23 = +[PDUserDefaults sharedDefaults];
        enableVerboseLogging = [v23 enableVerboseLogging];

        if (enableVerboseLogging)
        {
          CLSInitLog();
          logSubsystem = [(PDASMSearchOperation *)self logSubsystem];
          if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
          {
            v26 = objc_opt_class();
            v37 = v26;
            operationID = [(PDURLRequestOperation *)self operationID];
            v28 = [v17 description];
            *buf = v36;
            v45 = v26;
            v46 = 2114;
            v47 = operationID;
            v48 = 2112;
            v49 = v28;
            _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ adding eeSearchRequestZone: %@", buf, 0x20u);
          }
        }

        [(PDDPEESearchRequest *)v39 addSearchRequestZones:v17];
      }

      v9 = obj;
      v12 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v12);
  }

  CLSInitLog();
  logSubsystem2 = [(PDASMSearchOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
  {
    v32 = objc_opt_class();
    v33 = v32;
    operationID2 = [(PDURLRequestOperation *)self operationID];
    dictionaryRepresentation = [(PDDPEESearchRequest *)v39 dictionaryRepresentation];
    *buf = 138543874;
    v45 = v32;
    v46 = 2114;
    v47 = operationID2;
    v48 = 2114;
    v49 = dictionaryRepresentation;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Search request: %{public}@", buf, 0x20u);
  }

  data = [(PDDPEESearchRequest *)v39 data];

  return data;
}

- (id)requestDataForRosterQuery
{
  v35 = objc_alloc_init(PDDPEESearchRequest);
  v3 = objc_opt_new();
  if ([*(&self->_searchSpec + 2) rosterSearchOptions])
  {
    if (([*(&self->_searchSpec + 2) rosterSearchOptions] & 2) != 0 && (objc_msgSend(*(&self->_searchSpec + 2), "groupID"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      v5 = 7;
    }

    else if (([*(&self->_searchSpec + 2) rosterSearchOptions] & 4) != 0 && (objc_msgSend(*(&self->_searchSpec + 2), "groupID"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v5 = 13;
    }

    else
    {
      v5 = 5;
    }

    v7 = sub_100084798(v5);
    [v3 addObject:v7];
  }

  if (([*(&self->_searchSpec + 2) rosterSearchOptions] & 2) != 0)
  {
    v8 = sub_100084798(6);
    [v3 addObject:v8];
  }

  if (([*(&self->_searchSpec + 2) rosterSearchOptions] & 4) != 0)
  {
    v9 = sub_100084798(12);
    [v3 addObject:v9];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v37;
    *&v12 = 138543874;
    v31 = v12;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v17 = [(PDASMSearchOperation *)self generateFilterQueryForZoneName:v16, v31];
        v18 = [(PDASMSearchOperation *)self createSearchRequestZoneForZoneName:v16 usingQuery:v17];
        v19 = +[PDUserDefaults sharedDefaults];
        enableVerboseLogging = [v19 enableVerboseLogging];

        if (enableVerboseLogging)
        {
          CLSInitLog();
          logSubsystem = [(PDASMSearchOperation *)self logSubsystem];
          if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
          {
            v32 = objc_opt_class();
            v34 = v32;
            operationID = [(PDURLRequestOperation *)self operationID];
            v22 = [v18 description];
            *buf = v31;
            v41 = v32;
            v42 = 2114;
            v43 = operationID;
            v44 = 2112;
            v45 = v22;
            v23 = v22;
            _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ adding eeSearchRequestZone: %@", buf, 0x20u);
          }
        }

        [(PDDPEESearchRequest *)v35 addSearchRequestZones:v18];
      }

      v13 = [v10 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v13);
  }

  CLSInitLog();
  logSubsystem2 = [(PDASMSearchOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = v27;
    operationID2 = [(PDURLRequestOperation *)self operationID];
    dictionaryRepresentation = [(PDDPEESearchRequest *)v35 dictionaryRepresentation];
    *buf = 138543874;
    v41 = v27;
    v42 = 2114;
    v43 = operationID2;
    v44 = 2114;
    v45 = dictionaryRepresentation;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Search request: %{public}@", buf, 0x20u);
  }

  data = [(PDDPEESearchRequest *)v35 data];

  return data;
}

- (BOOL)shouldProcessResponseBody
{
  v4.receiver = self;
  v4.super_class = PDASMSearchOperation;
  result = [(PDEndpointRequestOperation *)&v4 shouldProcessResponseBody];
  HIBYTE(self->_expireRecordsAfterSeconds) = 1;
  return result;
}

- (BOOL)processResponseZone:(id)zone
{
  zoneCopy = zone;
  database = [(PDOperation *)self database];
  v6 = *(&self->_rosterQuery + 2);
  zoneName = [zoneCopy zoneName];
  v8 = [v6 objectForKeyedSubscript:zoneName];

  if (v8)
  {
    v9 = objc_opt_class();
    zoneName2 = [zoneCopy zoneName];
    v36[0] = zoneName2;
    v36[1] = v8;
    v11 = [NSArray arrayWithObjects:v36 count:2];
    v12 = [database select:v9 where:@"zoneName = ? AND queryHash = ?" bindings:v11];
  }

  else
  {
    v12 = 0;
  }

  status = [zoneCopy status];
  code = [status code];

  status2 = [zoneCopy status];
  code2 = [status2 code];

  if (code2 == 111)
  {
    CLSInitLog();
    logSubsystem = [(PDASMSearchOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      zoneName3 = [zoneCopy zoneName];
      *buf = 138412290;
      v35 = zoneName3;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "zone access denied: %@", buf, 0xCu);
    }

    zoneName4 = [zoneCopy zoneName];
    v33.receiver = self;
    v33.super_class = PDASMSearchOperation;
    v19 = [(PDASMPayloadOperation *)&v33 handleZoneRemoved:zoneName4];
LABEL_13:
    v25 = v19;
LABEL_14:

    goto LABEL_20;
  }

  if (code == 4)
  {
    cursor = [zoneCopy cursor];

    if (cursor)
    {
      CLSInitLog();
      logSubsystem2 = [(PDASMSearchOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
      {
        zoneName5 = [zoneCopy zoneName];
        *buf = 138412290;
        v35 = zoneName5;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "search zone: %@ has more data, saving cursor.", buf, 0xCu);
      }

      v22 = [PDASMSearchRecordZone alloc];
      zoneName6 = [zoneCopy zoneName];
      zoneName4 = [(PDASMSearchRecordZone *)v22 initWithZoneName:zoneName6 andQueryHash:v8];

      [zoneName4 setExpiration:*(&self->_resultsBlockStop + 2)];
      cursor2 = [zoneCopy cursor];
      [zoneName4 setCursor:cursor2];

      v19 = [database insertOrUpdateObject:zoneName4];
      goto LABEL_13;
    }
  }

  if (v12)
  {
    CLSInitLog();
    logSubsystem3 = [(PDASMSearchOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEBUG))
    {
      zoneName7 = [zoneCopy zoneName];
      *buf = 138412290;
      v35 = zoneName7;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEBUG, "search zone: %@ complete, deleting it.", buf, 0xCu);
    }

    if (([database deleteObject:v12] & 1) == 0)
    {
      CLSInitLog();
      zoneName4 = [(PDASMSearchOperation *)self logSubsystem];
      if (os_log_type_enabled(zoneName4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, zoneName4, OS_LOG_TYPE_INFO, "failed to delete old PDASMSearchRecordZone record.", buf, 2u);
      }

      v25 = 0;
      goto LABEL_14;
    }
  }

  v25 = 1;
LABEL_20:
  if ([zoneCopy hasRequestor])
  {
    requestor = [zoneCopy requestor];
    v28 = sub_1000865E4(requestor);

    if (v28)
    {
      v25 = [database insertOrUpdateObject:v28];
    }
  }

  return v25;
}

- (BOOL)postFilterWillAcceptPerson:(id)person withRoleLocations:(id)locations
{
  personCopy = person;
  if (([personCopy isSearchable] & 1) != 0 || objc_msgSend(*(&self->_postFilterPersonsByRequiredClassMemberRole + 1), "includeUnsearchablePersons"))
  {
    if (HIBYTE(self->_finisherLock._os_unfair_lock_opaque) != 1)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v6 = *(&self->_queryHashesByZone + 2);
    objectID = [personCopy objectID];
    [v6 setObject:personCopy forKeyedSubscript:objectID];
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)postFilterWillAcceptClassMember:(id)member
{
  memberCopy = member;
  v5 = *(&self->_queryHashesByZone + 2);
  personID = [memberCopy personID];
  v7 = [v5 objectForKeyedSubscript:personID];

  v8 = *(&self->_queryHashesByZone + 2);
  personID2 = [memberCopy personID];
  [v8 removeObjectForKey:personID2];

  if (v7 && (v10 = [memberCopy roles], (objc_msgSend(*(&self->_postFilterPersonsByRequiredClassMemberRole + 1), "requiredClassMemberRole") & v10) == 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (id)postFilterWillAcceptGroupMember:(id)member
{
  v4 = *(&self->_queryHashesByZone + 2);
  memberCopy = member;
  personID = [memberCopy personID];
  v7 = [v4 objectForKeyedSubscript:personID];

  v8 = *(&self->_queryHashesByZone + 2);
  personID2 = [memberCopy personID];

  [v8 removeObjectForKey:personID2];

  return v7;
}

- (BOOL)processPerson:(id)person
{
  personCopy = person;
  database = [(PDOperation *)self database];
  v6 = sub_1000847C8(personCopy);
  [v6 setExpiration:*(&self->_resultsBlockStop + 2)];
  v7 = sub_100084BC8(personCopy);

  v8 = sub_10011E700(database, v6, v7);
  if (v8 && *(&self->super._unresolvedMissingEntityIDs + 2) && (BYTE2(self->_finishBlock) & 1) == 0 && [(PDASMSearchOperation *)self postFilterWillAcceptPerson:v6 withRoleLocations:v7])
  {
    CLSInitLog();
    v9 = CLSLogSearch;
    if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Adding ASM search result to buffer. %@", &v11, 0xCu);
    }

    ((*(&self->super._unresolvedMissingEntityIDs + 2))[2].super.super.isa)();
  }

  return v8;
}

- (BOOL)processClassPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy hasClassInfo])
  {
    classInfo = [payloadCopy classInfo];
    v6 = sub_1000851D4(classInfo);

    [v6 setExpiration:*(&self->_resultsBlockStop + 2)];
    tempObjectId = [payloadCopy tempObjectId];
    [v6 setTempObjectID:tempObjectId];

    v8 = [(PDASMPayloadOperation *)self insertEntity:v6];
    if (v8 && *(&self->super._unresolvedMissingEntityIDs + 2) && (BYTE2(self->_finishBlock) & 1) == 0)
    {
      CLSInitLog();
      v9 = CLSLogSearch;
      if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Adding ASM search result to buffer. %@", &v11, 0xCu);
      }

      ((*(&self->super._unresolvedMissingEntityIDs + 2))[2].super.super.isa)();
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)processClassMember:(id)member
{
  sub_100085768(member);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v28;
    v8 = 1;
    *&v5 = 138412290;
    v24 = v5;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        [v10 setExpiration:{*(&self->_resultsBlockStop + 2), v24}];
        v11 = [(PDASMPayloadOperation *)self insertEntity:v10];
        if (!v11)
        {
          personID = [v10 personID];
          v14 = objc_opt_class();
          objectID = [v10 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:personID forClass:v14 fromEntityWithID:objectID withClass:objc_opt_class()];

          parentObjectID = [v10 parentObjectID];
          v17 = objc_opt_class();
          objectID2 = [v10 objectID];
          LODWORD(v17) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:parentObjectID forClass:v17 fromEntityWithID:objectID2 withClass:objc_opt_class()];

          if (!v17)
          {
            goto LABEL_19;
          }

          CLSInitLog();
          v19 = CLSLogSearch;
          if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
          {
            v21 = v19;
            parentObjectID2 = [v10 parentObjectID];
            *buf = v24;
            v32 = parentObjectID2;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "ClassMember referenced missing class: '%@'", buf, 0xCu);
          }

          v20 = *(&self->super.super._responseStatusError + 2);
          parentObjectID3 = [v10 parentObjectID];
          [v20 addObject:parentObjectID3];
          goto LABEL_18;
        }

        if (*(&self->super._unresolvedMissingEntityIDs + 2) && (BYTE2(self->_finishBlock) & 1) == 0 && ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) options] & 1) != 0)
        {
          parentObjectID3 = [(PDASMSearchOperation *)self postFilterWillAcceptClassMember:v10];
          if (parentObjectID3)
          {
            CLSInitLog();
            log = CLSLogSearch;
            if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v32 = v10;
              _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Adding ASM search result to buffer. %@", buf, 0xCu);
            }

            ((*(&self->super._unresolvedMissingEntityIDs + 2))[2].super.super.isa)();
          }

LABEL_18:
        }

LABEL_19:
        v8 &= v11;
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (!v6)
      {
        goto LABEL_23;
      }
    }
  }

  v8 = 1;
LABEL_23:

  return v8;
}

- (BOOL)processGroupPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy hasGroupInfo])
  {
    database = [(PDOperation *)self database];
    groupInfo = [payloadCopy groupInfo];
    v7 = sub_100084F40(groupInfo);

    v8 = [PDGroupReferencesToExpand alloc];
    objectID = [v7 objectID];
    v10 = sub_1000D42EC(&v8->super.isa, objectID);

    [database insertOrUpdateObject:v10];
    BYTE6(self->_expireRecordsAfterSeconds) = 1;
    [v7 setExpiration:*(&self->_resultsBlockStop + 2)];
    v11 = [(PDASMPayloadOperation *)self insertEntity:v7];
    if (v11 && *(&self->super._unresolvedMissingEntityIDs + 2) && (BYTE2(self->_finishBlock) & 1) == 0)
    {
      CLSInitLog();
      v12 = CLSLogSearch;
      if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Adding ASM search result to buffer. %@", &v14, 0xCu);
      }

      ((*(&self->super._unresolvedMissingEntityIDs + 2))[2].super.super.isa)();
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)processGroupMember:(id)member
{
  sub_1000858B0(member);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v4)
  {
    v6 = v4;
    v37 = *v39;
    v7 = 1;
    v8 = &CLSLogAsset_ptr;
    *&v5 = 138412290;
    v34 = v5;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        database = [(PDOperation *)self database];
        v12 = v8[86];
        v13 = objc_opt_class();
        parentObjectID = [v10 parentObjectID];
        v15 = [database select:v13 identity:parentObjectID];

        if (!v15)
        {
          _init = [objc_alloc(v8[86]) _init];
          [_init setGroupName:&stru_100206880];
          parentObjectID2 = [v10 parentObjectID];
          [_init setObjectID:parentObjectID2];

          [_init setExpiration:*(&self->_resultsBlockStop + 2)];
          if (![(PDASMPayloadOperation *)self insertEntity:_init])
          {
            CLSInitLog();
            v18 = CLSLogSearch;
            if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_ERROR))
            {
              v31 = v18;
              objectID = [_init objectID];
              *buf = v34;
              v43 = objectID;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Error inserting CLSGroup with identifier: %@", buf, 0xCu);
            }
          }
        }

        [v10 setExpiration:*(&self->_resultsBlockStop + 2)];
        v19 = [(PDASMPayloadOperation *)self insertEntity:v10];
        if (!v19)
        {
          personID = [v10 personID];
          v22 = objc_opt_class();
          objectID2 = [v10 objectID];
          [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:personID forClass:v22 fromEntityWithID:objectID2 withClass:objc_opt_class()];

          parentObjectID3 = [v10 parentObjectID];
          v25 = objc_opt_class();
          objectID3 = [v10 objectID];
          LODWORD(v25) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:parentObjectID3 forClass:v25 fromEntityWithID:objectID3 withClass:objc_opt_class()];

          if (!v25)
          {
            goto LABEL_24;
          }

          CLSInitLog();
          v27 = CLSLogSearch;
          if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
          {
            v29 = v27;
            parentObjectID4 = [v10 parentObjectID];
            *buf = v34;
            v43 = parentObjectID4;
            _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "GroupMember referenced missing group: '%@'", buf, 0xCu);
          }

          v28 = *(&self->super.super._responseStatusError + 2);
          parentObjectID5 = [v10 parentObjectID];
          [v28 addObject:parentObjectID5];
          goto LABEL_23;
        }

        if (*(&self->super._unresolvedMissingEntityIDs + 2) && (BYTE2(self->_finishBlock) & 1) == 0 && ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) options] & 1) != 0)
        {
          parentObjectID5 = [(PDASMSearchOperation *)self postFilterWillAcceptGroupMember:v10];
          if (parentObjectID5)
          {
            CLSInitLog();
            log = CLSLogSearch;
            if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
            {
              *buf = v34;
              v43 = v10;
              _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Adding ASM search result to buffer. %@", buf, 0xCu);
            }

            ((*(&self->super._unresolvedMissingEntityIDs + 2))[2].super.super.isa)();
          }

LABEL_23:
        }

LABEL_24:
        v7 &= v19;

        v8 = &CLSLogAsset_ptr;
      }

      v6 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (!v6)
      {
        goto LABEL_28;
      }
    }
  }

  v7 = 1;
LABEL_28:

  return v7;
}

- (BOOL)processOrganization:(id)organization
{
  organizationCopy = organization;
  v5 = organizationCopy;
  if (organizationCopy)
  {
    v6 = sub_1000860D8(organizationCopy);
    v29 = v6;
    v31 = v5;
    if ([v6 count])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v39;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v39 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v38 + 1) + 8 * i);
            [v12 setExpiration:{*(&self->_resultsBlockStop + 2), v29, v31}];
            if (![(PDASMPayloadOperation *)self insertEntity:v12])
            {
              CLSInitLog();
              logSubsystem = [(PDASMSearchOperation *)self logSubsystem];
              if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
              {
                v14 = objc_opt_class();
                *buf = 138543618;
                v44 = v14;
                v45 = 2114;
                v46 = v12;
                v15 = v14;
                _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@ failed to save location: %{public}@", buf, 0x16u);
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v9);
      }

      v6 = v29;
      v5 = v31;
    }

    v16 = sub_10008621C(v5);
    [v16 setExpiration:*(&self->_resultsBlockStop + 2)];
    v17 = [(PDASMPayloadOperation *)self insertEntity:v16];
    v18 = v17;
    if (v17)
    {
      v33 = v17;
      if (*(&self->super._unresolvedMissingEntityIDs + 2) && (BYTE2(self->_finishBlock) & 1) == 0)
      {
        CLSInitLog();
        v19 = CLSLogSearch;
        if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v16;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Adding ASM search result to buffer. %@", buf, 0xCu);
        }

        ((*(&self->super._unresolvedMissingEntityIDs + 2))[2].super.super.isa)();
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      locationIDs = [v16 locationIDs];
      v21 = [locationIDs countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v35;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(locationIDs);
            }

            v25 = *(*(&v34 + 1) + 8 * j);
            v26 = objc_opt_class();
            objectID = [v16 objectID];
            [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v25 forClass:v26 fromEntityWithID:objectID withClass:objc_opt_class()];
          }

          v22 = [locationIDs countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v22);
      }

      v6 = v30;
      v5 = v32;
      v18 = v33;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)generateFilterQueryForZoneName:(id)name
{
  nameCopy = name;
  v5 = sub_100084798(5);
  v6 = [nameCopy isEqualToString:v5];

  if (v6)
  {
    v7 = [(PDASMSearchOperation *)self processPersonSearchQuery:0];
LABEL_13:
    v18 = v7;
    goto LABEL_14;
  }

  v8 = sub_100084798(6);
  v9 = [nameCopy isEqualToString:v8];

  if (v9)
  {
    v7 = [(PDASMSearchOperation *)self processClassLocationIDsSearchQuery:0];
    goto LABEL_13;
  }

  v10 = sub_100084798(7);
  v11 = [nameCopy isEqualToString:v10];

  if (v11)
  {
    v7 = [(PDASMSearchOperation *)self processClassMemberSearchQuery:0];
    goto LABEL_13;
  }

  v12 = sub_100084798(12);
  v13 = [nameCopy isEqualToString:v12];

  if (v13)
  {
    v7 = [(PDASMSearchOperation *)self processGroupLocationIDsSearchQuery:0];
    goto LABEL_13;
  }

  v14 = sub_100084798(13);
  v15 = [nameCopy isEqualToString:v14];

  if (v15)
  {
    v7 = [(PDASMSearchOperation *)self processGroupMemberSearchQuery:0];
    goto LABEL_13;
  }

  v16 = sub_100084798(9);
  v17 = [nameCopy isEqualToString:v16];

  if (v17)
  {
    v7 = [(PDASMSearchOperation *)self processOrganizationSearchQuery:0];
    goto LABEL_13;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (id)createQueryIfNoneExists:(id)exists
{
  existsCopy = exists;
  v4 = existsCopy;
  if (existsCopy)
  {
    v5 = existsCopy;
  }

  else
  {
    v5 = objc_alloc_init(PDDPSearchQuery);
  }

  v6 = v5;

  return v6;
}

- (id)criteriaForFieldName:(id)name andValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = objc_alloc_init(PDDPSearchCriteria);
  [(PDDPSearchCriteria *)v7 setFieldName:nameCopy];

  [(PDDPSearchCriteria *)v7 setSearchOperator:2];
  v8 = objc_alloc_init(PDDPTypedValue);
  [(PDDPTypedValue *)v8 setType:1];
  [(PDDPTypedValue *)v8 setStringValue:valueCopy];

  [(PDDPSearchCriteria *)v7 setValue:v8];

  return v7;
}

- (id)criteriaForFieldName:(id)name andValues:(id)values withFormat:(id)format
{
  nameCopy = name;
  valuesCopy = values;
  formatCopy = format;
  if ([valuesCopy count] == 1)
  {
    firstObject = [valuesCopy firstObject];
    v12 = [(PDASMSearchOperation *)self criteriaForFieldName:nameCopy andValue:firstObject];
  }

  else
  {
    v13 = objc_alloc_init(PDDPSearchCriteria);
    v27 = nameCopy;
    [(PDDPSearchCriteria *)v13 setFieldName:nameCopy];
    v25 = v13;
    [(PDDPSearchCriteria *)v13 setSearchOperator:7];
    v14 = objc_alloc_init(PDDPTypedValue);
    [(PDDPTypedValue *)v14 setType:2];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = valuesCopy;
    v15 = valuesCopy;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        v19 = 0;
        do
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * v19);
          if (formatCopy)
          {
            v28 = 0;
            v21 = [NSString stringWithValidatedFormat:formatCopy validFormatSpecifiers:@"%@" error:&v28, v20];
            v22 = v28;
            if (v21)
            {
              [(PDDPTypedValue *)v14 addStringListValue:v21];
            }

            else
            {
              CLSInitLog();
              v23 = CLSLogSearch;
              if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v34 = formatCopy;
                v35 = 2112;
                v36 = v22;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to validate formatString: '%@', error: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            [(PDDPTypedValue *)v14 addStringListValue:v20];
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v17);
    }

    v12 = v25;
    [(PDDPSearchCriteria *)v25 setValue:v14];

    valuesCopy = v26;
    nameCopy = v27;
  }

  return v12;
}

- (id)processClassLocationIDsSearchQuery:(id)query
{
  queryCopy = query;
  classLocationIDs = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) classLocationIDs];
  v6 = [classLocationIDs count];

  if (v6)
  {
    v7 = [(PDASMSearchOperation *)self createQueryIfNoneExists:queryCopy];
    [v7 setType:3];
    classLocationIDs2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) classLocationIDs];
    v9 = [(PDASMSearchOperation *)self criteriaForFieldName:@"location_uid" andValues:classLocationIDs2 withFormat:0];

    [v7 setCriteria:v9];
  }

  else
  {
    v7 = queryCopy;
  }

  return v7;
}

- (id)processGroupLocationIDsSearchQuery:(id)query
{
  queryCopy = query;
  requiredGroupMemberGroupIDs = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredGroupMemberGroupIDs];
  v6 = [requiredGroupMemberGroupIDs count];

  if (v6)
  {
    v7 = [(PDASMSearchOperation *)self createQueryIfNoneExists:queryCopy];
    [v7 setType:3];
    groupLocationIDs = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) groupLocationIDs];
    v9 = [(PDASMSearchOperation *)self criteriaForFieldName:@"location_uid" andValues:groupLocationIDs withFormat:0];

    [v7 setCriteria:v9];
  }

  else
  {
    v7 = queryCopy;
  }

  return v7;
}

- (id)processGroupMemberSearchQuery:(id)query
{
  queryCopy = query;
  requiredGroupMemberGroupIDs = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredGroupMemberGroupIDs];
  v6 = [requiredGroupMemberGroupIDs count];

  if (v6)
  {
    v7 = [(PDASMSearchOperation *)self createQueryIfNoneExists:queryCopy];
    HIBYTE(self->_finisherLock._os_unfair_lock_opaque) = 1;
    [v7 setType:3];
    requiredGroupMemberGroupIDs2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredGroupMemberGroupIDs];
    v9 = [(PDASMSearchOperation *)self criteriaForFieldName:@"group_id" andValues:requiredGroupMemberGroupIDs2 withFormat:0];

    [v7 setCriteria:v9];
  }

  else
  {
    v7 = queryCopy;
  }

  return v7;
}

- (id)processPersonSearchQuery:(id)query
{
  queryCopy = query;
  requiredRoleType = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredRoleType];
  if (requiredRoleType || ([*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredRoleID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    personLocationIDs = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) personLocationIDs];
    v9 = 1;
    v10 = 1;
    if ([personLocationIDs count])
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
  }

  requiredPrivilege = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredPrivilege];
  if (requiredPrivilege)
  {
    requiredPrivilegeLocationIDs = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredPrivilegeLocationIDs];
    if ([requiredPrivilegeLocationIDs count])
    {
      v10 = 1;
      goto LABEL_15;
    }

    v35 = v5;
  }

  else
  {
    v35 = v5;
  }

  prohibitedPrivilege = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) prohibitedPrivilege];
  if (prohibitedPrivilege)
  {
    v13 = prohibitedPrivilege;
    [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) prohibitedPrivilegeLocationIDs];
    v14 = v37 = queryCopy;
    v10 = [v14 count] != 0;

    queryCopy = v37;
  }

  else
  {
    v10 = 0;
  }

  v5 = v35;
  if (requiredPrivilege)
  {
LABEL_15:

    if ((v9 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v9)
  {
LABEL_16:
  }

LABEL_17:
  if (!requiredRoleType)
  {

    if (v10)
    {
      goto LABEL_19;
    }

LABEL_25:
    objectID = queryCopy;
    goto LABEL_45;
  }

  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_19:
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10008C8E0;
  v41[3] = &unk_100203E38;
  v41[4] = self;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10008C970;
  v39[3] = &unk_100203E60;
  v15 = objc_retainBlock(v41);
  v39[4] = self;
  v40 = v15;
  v16 = objc_retainBlock(v39);
  database = [(PDOperation *)self database];
  personLocationIDs2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) personLocationIDs];
  v19 = [personLocationIDs2 count];

  if (!v19)
  {
    goto LABEL_30;
  }

  requiredRoleID = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredRoleID];
  if (requiredRoleID)
  {
    v21 = requiredRoleID;
    goto LABEL_22;
  }

  if (![*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredRoleType])
  {
LABEL_30:
    objectID = 0;
    goto LABEL_31;
  }

  v21 = sub_100051744(database, [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredRoleType]);
  if (![v21 count])
  {
    objectID = 0;
    BYTE1(self->_finisherLock._os_unfair_lock_opaque) = 1;
    goto LABEL_23;
  }

  firstObject = [v21 firstObject];
  objectID = [firstObject objectID];

  if (!objectID)
  {
    goto LABEL_31;
  }

  v21 = objectID;
LABEL_22:
  objectID = [(PDASMSearchOperation *)self createQueryIfNoneExists:queryCopy];
  personLocationIDs3 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) personLocationIDs];
  (v16[2])(v16, v21, personLocationIDs3, objectID);

LABEL_23:
LABEL_31:
  requiredPrivilegeLocationIDs2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredPrivilegeLocationIDs];
  v26 = [requiredPrivilegeLocationIDs2 count];

  if (v26)
  {
    requiredRoleID2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredRoleID];
    requiredPrivilege2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredPrivilege];
    v36 = database;
    if (requiredPrivilege2)
    {
      v38 = queryCopy;
      v29 = sub_100051398(database, requiredPrivilege2);
      if ([v29 count])
      {
        firstObject2 = [v29 firstObject];
        [firstObject2 objectID];
        v32 = v31 = v15;

        requiredRoleID2 = v32;
        v15 = v31;
      }

      else
      {
        BYTE2(self->_finisherLock._os_unfair_lock_opaque) = 1;
      }

      queryCopy = v38;
    }

    if (requiredRoleID2)
    {
      if (!objectID)
      {
        objectID = [(PDASMSearchOperation *)self createQueryIfNoneExists:queryCopy];
      }

      requiredPrivilegeLocationIDs3 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredPrivilegeLocationIDs];
      (v16[2])(v16, requiredRoleID2, requiredPrivilegeLocationIDs3, objectID);
    }

    database = v36;
  }

LABEL_45:

  return objectID;
}

- (id)processClassMemberSearchQuery:(id)query
{
  queryCopy = query;
  requiredClassMemberClassIDs = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredClassMemberClassIDs];
  v6 = [requiredClassMemberClassIDs count];

  if (v6)
  {
    v7 = [(PDASMSearchOperation *)self createQueryIfNoneExists:queryCopy];
    HIBYTE(self->_finisherLock._os_unfair_lock_opaque) = 1;
    [v7 setType:3];
    requiredClassMemberClassIDs2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredClassMemberClassIDs];
    v9 = [(PDASMSearchOperation *)self criteriaForFieldName:@"class_id" andValues:requiredClassMemberClassIDs2 withFormat:0];

    [v7 setCriteria:v9];
  }

  else
  {
    v7 = queryCopy;
  }

  return v7;
}

- (id)processOrganizationSearchQuery:(id)query
{
  queryCopy = query;
  requiredOrganizationEmailDomain = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredOrganizationEmailDomain];

  if (requiredOrganizationEmailDomain)
  {
    v6 = [(PDASMSearchOperation *)self createQueryIfNoneExists:queryCopy];
    [v6 setType:3];
    requiredOrganizationEmailDomain2 = [*(&self->_postFilterPersonsByRequiredClassMemberRole + 1) requiredOrganizationEmailDomain];
    v8 = [(PDASMSearchOperation *)self criteriaForFieldName:@"org_email_domain" andValue:requiredOrganizationEmailDomain2];

    [v6 setCriteria:v8];
  }

  else
  {
    v6 = queryCopy;
  }

  return v6;
}

@end