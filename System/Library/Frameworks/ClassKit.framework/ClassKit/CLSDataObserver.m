@interface CLSDataObserver
+ (id)predicateForCollaborationStateForObjectWithID:(id)a3 ownerPersonID:(id)a4 domain:(int64_t)a5;
+ (id)predicateForCollaborationStatesForObjectWithID:(id)a3 domain:(int64_t)a4;
+ (id)predicateForObjectsWithParentObjectID:(id)a3 andRole:(unint64_t)a4;
+ (id)predicateForObjectsWithPersonID:(id)a3 andRole:(unint64_t)a4;
+ (id)predicateForUnexpiredObjects;
- (CLSDataObserver)init;
- (CLSDataObserver)initWithObjectType:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5;
- (CLSDataObserver)initWithObjectType:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 error:(id *)a6;
- (CLSDataObserver)initWithQuerySpecification:(id)a3 error:(id *)a4;
- (CLSDataStore)dataStore;
- (Class)objectType;
- (NSString)description;
- (id)normalizeKeyPath:(id)a3 forValue:(id)a4;
- (id)normalizedValue:(id)a3 forKeyPath:(id)a4;
- (void)clientRemote_entitiesChangedAdded:(id)a3 updated:(id)a4 deleted:(id)a5;
- (void)clientRemote_entitiesChangedUpdatedMatchingPredicate:(id)a3 updatedNotMatchingPredicate:(id)a4;
- (void)clientRemote_finishWithEntitiesChangedSince:(id)a3;
- (void)clientRemote_invalidate;
- (void)clientRemote_itemChanged:(unint64_t)a3;
- (void)setSortDescriptors:(id)a3;
@end

@implementation CLSDataObserver

- (CLSDataObserver)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v8, @"The method [%@ %@] is not available.", v6, v7);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CLSDataObserver)initWithQuerySpecification:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v46.receiver = self;
  v46.super_class = CLSDataObserver;
  v8 = [(CLSDataObserver *)&v46 init];
  v11 = objc_msgSend_predicate(v7, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_predicate(v7, v12, v13);
    v45 = 0;
    v16 = objc_msgSend_cls_normalizedPredicate_error_(v14, v15, v8, &v45);
    v17 = v45;

    if (v16)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      objc_msgSend_cls_assignError_fromError_(MEMORY[0x277CCA9B8], v18, a4, v17);
      if (v17)
      {
        if (qword_280B2A720 != -1)
        {
          dispatch_once(&qword_280B2A720, &unk_284A07B28);
        }

        v20 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          v41 = v20;
          v44 = objc_msgSend_debugDescription(v17, v42, v43);
          *buf = 138412546;
          v48 = v16;
          v49 = 2112;
          v50 = v44;
          _os_log_error_impl(&dword_236F71000, v41, OS_LOG_TYPE_ERROR, "initWithQuerySpecification: bad predicate:%@ error:%@", buf, 0x16u);
        }
      }

      v21 = 0;
      goto LABEL_16;
    }

    objc_msgSend_setPredicate_(v7, v18, v16);
  }

  if (v8)
  {
    v22 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v12, v13);
    v25 = objc_msgSend_UUIDString(v22, v23, v24);
    observerID = v8->_observerID;
    v8->_observerID = v25;

    objc_storeStrong(&v8->_querySpec, a3);
    v8->_changeTag = -1;
    v27 = objc_opt_new();
    entitiesMatchingPredicate = v8->_entitiesMatchingPredicate;
    v8->_entitiesMatchingPredicate = v27;

    v29 = objc_opt_new();
    entitiesChangedAddedIDs = v8->_entitiesChangedAddedIDs;
    v8->_entitiesChangedAddedIDs = v29;

    v31 = objc_opt_new();
    entitiesChangedUpdatedIDs = v8->_entitiesChangedUpdatedIDs;
    v8->_entitiesChangedUpdatedIDs = v31;

    v33 = objc_opt_new();
    entitiesChangedDeletedIDs = v8->_entitiesChangedDeletedIDs;
    v8->_entitiesChangedDeletedIDs = v33;

    v35 = objc_opt_new();
    entitiesChangedUpdatedMatchingPredicateIDs = v8->_entitiesChangedUpdatedMatchingPredicateIDs;
    v8->_entitiesChangedUpdatedMatchingPredicateIDs = v35;

    v37 = objc_opt_new();
    entitiesChangedUpdatedNotMatchingPredicateIDs = v8->_entitiesChangedUpdatedNotMatchingPredicateIDs;
    v8->_entitiesChangedUpdatedNotMatchingPredicateIDs = v37;
  }

  v21 = v8;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];
  return v21;
}

- (CLSDataObserver)initWithObjectType:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5
{
  v8 = a5;
  v10 = objc_msgSend_querySpecificationWithObjectType_predicate_(CLSQuerySpecification, v9, a3, a4);
  objc_msgSend_setSortDescriptors_(v10, v11, v8);

  v15 = 0;
  v13 = objc_msgSend_initWithQuerySpecification_error_(self, v12, v10, &v15);

  return v13;
}

- (CLSDataObserver)initWithObjectType:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 error:(id *)a6
{
  v10 = a5;
  v12 = objc_msgSend_querySpecificationWithObjectType_predicate_(CLSQuerySpecification, v11, a3, a4);
  objc_msgSend_setSortDescriptors_(v12, v13, v10);

  Specification_error = objc_msgSend_initWithQuerySpecification_error_(self, v14, v12, a6);
  return Specification_error;
}

- (Class)objectType
{
  v3 = objc_msgSend_entityName(self->_querySpec, a2, v2);
  v4 = NSClassFromString(v3);

  return v4;
}

- (void)setSortDescriptors:(id)a3
{
  v5 = objc_msgSend_copy(a3, a2, a3);
  objc_msgSend_setSortDescriptors_(self->_querySpec, v4, v5);
}

+ (id)predicateForObjectsWithPersonID:(id)a3 andRole:(unint64_t)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = objc_msgSend_numberWithUnsignedInteger_(v6, v8, a4);
  v11 = objc_msgSend_predicateWithFormat_(v5, v10, @"%K == %@ && %K = %@", @"personID", v7, @"roles", v9);

  return v11;
}

+ (id)predicateForObjectsWithParentObjectID:(id)a3 andRole:(unint64_t)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = objc_msgSend_numberWithUnsignedInteger_(v6, v8, a4);
  v11 = objc_msgSend_predicateWithFormat_(v5, v10, @"%K == %@ && %K = %@", @"parentObjectID", v7, @"roles", v9);

  return v11;
}

+ (id)predicateForCollaborationStateForObjectWithID:(id)a3 ownerPersonID:(id)a4 domain:(int64_t)a5
{
  v7 = MEMORY[0x277CCAC30];
  v8 = MEMORY[0x277CCABB0];
  v9 = a4;
  v10 = a3;
  v12 = objc_msgSend_numberWithInteger_(v8, v11, a5);
  v14 = objc_msgSend_predicateWithFormat_(v7, v13, @"%K == %@ && %K = %@ && %K == %@", @"parentObjectID", v10, @"ownerPersonID", v9, @"domain", v12);

  return v14;
}

+ (id)predicateForCollaborationStatesForObjectWithID:(id)a3 domain:(int64_t)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = objc_msgSend_numberWithInteger_(v6, v8, a4);
  v11 = objc_msgSend_predicateWithFormat_(v5, v10, @"%K == %@ && %K == %@", @"parentObjectID", v7, @"domain", v9);

  return v11;
}

+ (id)predicateForUnexpiredObjects
{
  v3 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2);
  v4 = MEMORY[0x277CCAC30];
  v5 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceReferenceDate(v3, v6, v7);
  v10 = objc_msgSend_numberWithDouble_(v5, v8, v9);
  v12 = objc_msgSend_predicateWithFormat_(v4, v11, @"%K != %@ and %K > %@", @"dateExpires", &unk_284A1DE20, @"dateExpires", v10);

  return v12;
}

- (void)clientRemote_invalidate
{
  if ((objc_msgSend_isInvalidated(self, a2, v2) & 1) == 0)
  {
    objc_msgSend_setInvalidated_(self, v4, 1);
    v8 = objc_msgSend_dataStore(self, v5, v6);
    objc_msgSend_deregisterDataObserver_(v8, v7, self);
  }
}

- (void)clientRemote_itemChanged:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_changeTag(self, a2, a3);
  objc_msgSend_setChangeTag_(self, v6, a3);
  if (self->_dataChanged)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412802;
      v10 = self;
      v11 = 2048;
      v12 = v5;
      v13 = 2048;
      v14 = a3;
      _os_log_debug_impl(&dword_236F71000, v7, OS_LOG_TYPE_DEBUG, "Calling dataChanged for CLSDataObserver: %@, old changeTag: %lu, new changeTag: %lu", &v9, 0x20u);
    }

    (*(self->_dataChanged + 2))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clientRemote_entitiesChangedAdded:(id)a3 updated:(id)a4 deleted:(id)a5
{
  entitiesChangedAddedIDs = self->_entitiesChangedAddedIDs;
  v13 = a5;
  v9 = a4;
  objc_msgSend_unionSet_(entitiesChangedAddedIDs, v10, a3);
  objc_msgSend_unionSet_(self->_entitiesChangedUpdatedIDs, v11, v9);

  objc_msgSend_unionSet_(self->_entitiesChangedDeletedIDs, v12, v13);
}

- (void)clientRemote_entitiesChangedUpdatedMatchingPredicate:(id)a3 updatedNotMatchingPredicate:(id)a4
{
  entitiesChangedUpdatedMatchingPredicateIDs = self->_entitiesChangedUpdatedMatchingPredicateIDs;
  v9 = a4;
  objc_msgSend_unionSet_(entitiesChangedUpdatedMatchingPredicateIDs, v7, a3);
  objc_msgSend_unionSet_(self->_entitiesChangedUpdatedNotMatchingPredicateIDs, v8, v9);
}

- (void)clientRemote_finishWithEntitiesChangedSince:(id)a3
{
  v60 = a3;
  v6 = objc_msgSend_mutableCopy(self->_entitiesChangedAddedIDs, v4, v5);
  v9 = objc_msgSend_mutableCopy(self->_entitiesChangedUpdatedIDs, v7, v8);
  v12 = objc_msgSend_mutableCopy(self->_entitiesChangedDeletedIDs, v10, v11);
  v15 = objc_msgSend_predicate(self->_querySpec, v13, v14);

  if (v15)
  {
    v18 = objc_autoreleasePoolPush();
    v21 = objc_msgSend_mutableCopy(self->_entitiesChangedUpdatedMatchingPredicateIDs, v19, v20);
    objc_msgSend_minusSet_(v21, v22, self->_entitiesMatchingPredicate);
    objc_msgSend_unionSet_(v6, v23, v21);

    objc_autoreleasePoolPop(v18);
    v24 = objc_autoreleasePoolPush();
    v27 = objc_msgSend_mutableCopy(self->_entitiesMatchingPredicate, v25, v26);
    objc_msgSend_intersectSet_(v27, v28, self->_entitiesChangedUpdatedMatchingPredicateIDs);
    objc_msgSend_unionSet_(v9, v29, v27);

    objc_autoreleasePoolPop(v24);
    v30 = objc_autoreleasePoolPush();
    v33 = objc_msgSend_mutableCopy(self->_entitiesMatchingPredicate, v31, v32);
    objc_msgSend_intersectSet_(v33, v34, self->_entitiesChangedUpdatedNotMatchingPredicateIDs);
    objc_msgSend_unionSet_(v12, v35, v33);

    objc_autoreleasePoolPop(v30);
    objc_msgSend_intersectSet_(v12, v36, self->_entitiesMatchingPredicate);
  }

  v39 = !objc_msgSend_count(v6, v16, v17) && !objc_msgSend_count(v9, v37, v38) && objc_msgSend_count(v12, v37, v38) == 0;
  entitiesChanged = self->_entitiesChanged;
  if (entitiesChanged && !v39)
  {
    v41 = objc_msgSend_copy(v6, v37, v38);
    v44 = objc_msgSend_copy(v9, v42, v43);
    v47 = objc_msgSend_copy(v12, v45, v46);
    entitiesChanged[2](entitiesChanged, v60, v41, v44, v47);
  }

  v48 = objc_msgSend_predicate(self->_querySpec, v37, v38);

  if (v48)
  {
    objc_msgSend_minusSet_(self->_entitiesMatchingPredicate, v49, v12);
    objc_msgSend_unionSet_(self->_entitiesMatchingPredicate, v51, v6);
  }

  objc_msgSend_removeAllObjects(self->_entitiesChangedAddedIDs, v49, v50);
  objc_msgSend_removeAllObjects(self->_entitiesChangedUpdatedIDs, v52, v53);
  objc_msgSend_removeAllObjects(self->_entitiesChangedDeletedIDs, v54, v55);
  objc_msgSend_removeAllObjects(self->_entitiesChangedUpdatedMatchingPredicateIDs, v56, v57);
  objc_msgSend_removeAllObjects(self->_entitiesChangedUpdatedNotMatchingPredicateIDs, v58, v59);
}

- (NSString)description
{
  v46.receiver = self;
  v46.super_class = CLSDataObserver;
  v3 = [(CLSDataObserver *)&v46 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_appendString_(v6, v7, @" (invalidated: ");
  if (objc_msgSend_isInvalidated(self, v8, v9))
  {
    objc_msgSend_appendString_(v6, v10, @"YES");
  }

  else
  {
    objc_msgSend_appendString_(v6, v10, @"NO");
  }

  objc_msgSend_appendString_(v6, v11, @" (observerID: "));
  objc_msgSend_appendString_(v6, v12, self->_observerID);
  objc_msgSend_appendString_(v6, v13, @" (querySpec.entityName: "));
  v16 = objc_msgSend_entityName(self->_querySpec, v14, v15);
  objc_msgSend_appendString_(v6, v17, v16);

  objc_msgSend_appendString_(v6, v18, @""));
  v21 = objc_msgSend_predicate(self->_querySpec, v19, v20);

  if (v21)
  {
    objc_msgSend_appendString_(v6, v22, @" (querySpec.predicate: "));
    v26 = objc_msgSend_predicate(self->_querySpec, v24, v25);
    v29 = objc_msgSend_debugDescription(v26, v27, v28);
    objc_msgSend_appendString_(v6, v30, v29);

    objc_msgSend_appendString_(v6, v31, @""));
  }

  v32 = objc_msgSend_sortDescriptors(self->_querySpec, v22, v23);

  if (v32)
  {
    objc_msgSend_appendString_(v6, v33, @" (querySpec.sortDescriptors: "));
    v37 = objc_msgSend_sortDescriptors(self->_querySpec, v35, v36);
    v40 = objc_msgSend_debugDescription(v37, v38, v39);
    objc_msgSend_appendString_(v6, v41, v40);

    objc_msgSend_appendString_(v6, v42, @""));
  }

  if (objc_msgSend_observerOptions(self->_querySpec, v33, v34))
  {
    objc_msgSend_appendString_(v6, v43, @" (behavior: entitiesChanged"));
  }

  else
  {
    objc_msgSend_appendString_(v6, v43, @" (behavior: dataChanged"));
  }

  objc_msgSend_appendString_(v6, v44, @""));

  return v6;
}

- (id)normalizeKeyPath:(id)a3 forValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_280B2A5D0 != -1)
  {
    dispatch_once(&qword_280B2A5D0, &unk_284A07AA8);
  }

  v8 = qword_280B2A5C8;
  if (objc_msgSend_containsObject_(v8, v9, v6))
  {
    goto LABEL_4;
  }

  isSearchEnabledProcess = objc_msgSend_isSearchEnabledProcess(CLSEntitlements, v10, v11);
  if (isSearchEnabledProcess)
  {
    if (qword_280B2A5E0 != -1)
    {
      dispatch_once(&qword_280B2A5E0, &unk_284A08328);
    }

    v4 = qword_280B2A5D8;
    if (objc_msgSend_containsObject_(v4, v18, v6))
    {

LABEL_4:
LABEL_5:
      if (qword_280B2A600 != -1)
      {
        dispatch_once(&qword_280B2A600, &unk_284A08368);
      }

      v13 = objc_msgSend_objectForKeyedSubscript_(qword_280B2A5F8, v12, v6);
      if (v13)
      {
        v8 = v13;
        v14 = v8;
      }

      else
      {
        v14 = v6;
        v8 = 0;
      }

      goto LABEL_26;
    }

    if (objc_msgSend_isDashboardAppProcess(CLSEntitlements, v19, v20))
    {
LABEL_18:
      if (qword_280B2A5F0 != -1)
      {
        dispatch_once(&qword_280B2A5F0, &unk_284A08348);
      }

      v22 = objc_msgSend_containsObject_(qword_280B2A5E8, v21, v6);
      if (isSearchEnabledProcess)
      {
      }

      if ((v22 & 1) == 0)
      {
        v14 = 0;
        goto LABEL_27;
      }

      goto LABEL_5;
    }
  }

  else if (objc_msgSend_isDashboardAppProcess(CLSEntitlements, v15, v16))
  {
    goto LABEL_18;
  }

  v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

- (id)normalizedValue:(id)a3 forKeyPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v8 = v6;
  if (!(v6 | @"personID") || v6 && @"personID" && objc_msgSend_isEqualToString_(v6, v7, @"personID")) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = objc_msgSend_person(v5, v9, v10);
    v14 = v11;
    if (v11)
    {
      objc_msgSend_objectID(v11, v12, v13);
    }

    else
    {
      objc_msgSend_magicValue(CLSCurrentUser, v12, v13);
    }
    v18 = ;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = @"parentObjectID";
      if (!(v8 | @"parentObjectID") || v8 && @"parentObjectID" && objc_msgSend_isEqualToString_(v8, v15, @"parentObjectID"))
      {
        v17 = objc_msgSend_objectID(v5, v15, v16);

        v5 = v17;
      }
    }

    v5 = v5;
    v18 = v5;
  }

  return v18;
}

- (CLSDataStore)dataStore
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);

  return WeakRetained;
}

@end