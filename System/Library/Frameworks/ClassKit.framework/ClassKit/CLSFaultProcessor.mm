@interface CLSFaultProcessor
+ (id)rootClasses;
- (BOOL)_isRootObject:(id)object;
- (BOOL)_isRootObject:(id)object withRelation:(id)relation;
- (BOOL)waitUntilDone:(double)done;
- (CLSFaultProcessor)initWithDelegate:(id)delegate;
- (CLSFaultProcessorDelegate)delegate;
- (id)_childParentRelationForObject:(id)object;
- (void)_addObject:(id)object;
- (void)_descendIntoObject:(id)object idsToProcess:(id)process enumerationBlock:(id)block;
- (void)_faultObjectsBatch:(id)batch;
- (void)_inGroup:(id)group;
- (void)_insertRootObject:(id)object;
- (void)_insertRootObjectID:(id)d withChildren:(id)children;
- (void)clientRemote_deliverObject:(id)object;
- (void)completionNotify:(id)notify;
- (void)enumerate:(id)enumerate;
- (void)faultObject:(id)object;
- (void)faultObjects:(id)objects;
@end

@implementation CLSFaultProcessor

+ (id)rootClasses
{
  if (qword_280B2A498 != -1)
  {
    dispatch_once(&qword_280B2A498, &unk_284A07948);
  }

  v3 = qword_280B2A4A0;

  return v3;
}

- (CLSFaultProcessor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = CLSFaultProcessor;
  v5 = [(CLSFaultProcessor *)&v29 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = CLSDispatchQueueName(v6, 0);
    v10 = objc_msgSend_UTF8String(v7, v8, v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (qword_280B2A4B0 != -1)
    {
      dispatch_once(&qword_280B2A4B0, &unk_284A08008);
    }

    v12 = qword_280B2A4A8;
    v13 = dispatch_queue_create_with_target_V2(v10, v11, v12);
    queue = v6->_queue;
    v6->_queue = v13;

    v15 = dispatch_group_create();
    group = v6->_group;
    v6->_group = v15;

    v18 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v17, 0, 0);
    objects = v6->_objects;
    v6->_objects = v18;

    v21 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v20, 0, 0);
    relations = v6->_relations;
    v6->_relations = v21;

    v24 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v23, 0, 0);
    objectsIdsByParentID = v6->_objectsIdsByParentID;
    v6->_objectsIdsByParentID = v24;

    v26 = objc_opt_new();
    rootObjectIDs = v6->_rootObjectIDs;
    v6->_rootObjectIDs = v26;
  }

  return v6;
}

- (void)faultObject:(id)object
{
  v11 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v4 = MEMORY[0x277CBEA60];
  objectCopy2 = object;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, &objectCopy, 1);

  objc_msgSend_faultObjects_(self, v8, v7, objectCopy, v11);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)faultObjects:(id)objects
{
  objectsCopy = objects;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_236FC7BD0;
  v7[3] = &unk_278A18F48;
  v8 = objectsCopy;
  v5 = objectsCopy;
  objc_msgSend__inGroup_(self, v6, v7);
}

- (void)enumerate:(id)enumerate
{
  v47 = *MEMORY[0x277D85DE8];
  enumerateCopy = enumerate;
  v5 = objc_opt_new();
  v8 = objc_msgSend_keyEnumerator(self->_objects, v6, v7);
  v11 = objc_msgSend_allObjects(v8, v9, v10);
  objc_msgSend_addObjectsFromArray_(v5, v12, v11);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = self->_rootObjectIDs;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v41, v46, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      v18 = 0;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v41 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v23 = objc_msgSend_objectForKey_(self->_objects, v21, v19);
        if (v23)
        {
          objc_msgSend__descendIntoObject_idsToProcess_enumerationBlock_(self, v22, v23, v5, enumerateCopy);
        }

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v24, &v41, v46, 16);
    }

    while (v16);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v5;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v37, v45, 16);
  if (v27)
  {
    v28 = v27;
    v29 = *v38;
    do
    {
      v30 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v37 + 1) + 8 * v30);
        v32 = objc_autoreleasePoolPush();
        v34 = objc_msgSend_objectForKey_(self->_objects, v33, v31, v37);
        if (v34)
        {
          enumerateCopy[2](enumerateCopy, v34);
        }

        objc_autoreleasePoolPop(v32);
        ++v30;
      }

      while (v28 != v30);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v35, &v37, v45, 16);
    }

    while (v28);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_descendIntoObject:(id)object idsToProcess:(id)process enumerationBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  processCopy = process;
  blockCopy = block;
  v13 = objc_msgSend_identity(objectCopy, v11, v12);
  v16 = objc_msgSend_identity(objectCopy, v14, v15);
  objc_msgSend_removeObject_(processCopy, v17, v16);

  blockCopy[2](blockCopy, objectCopy);
  v32 = v13;
  objc_msgSend_objectForKey_(self->_objectsIdsByParentID, v18, v13);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = v36 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v33, v37, 16);
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      v24 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v33 + 1) + 8 * v24);
        v26 = objc_autoreleasePoolPush();
        v29 = objc_msgSend_objectForKey_(self->_objects, v27, v25);
        if (v29)
        {
          objc_msgSend__descendIntoObject_idsToProcess_enumerationBlock_(self, v28, v29, processCopy, blockCopy);
        }

        objc_autoreleasePoolPop(v26);
        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v30, &v33, v37, 16);
    }

    while (v22);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)completionNotify:(id)notify
{
  notifyCopy = notify;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_236FC8088;
  v7[3] = &unk_278A18F70;
  v8 = notifyCopy;
  v5 = notifyCopy;
  objc_msgSend__inGroup_(self, v6, v7);
}

- (BOOL)waitUntilDone:(double)done
{
  v5 = dispatch_block_create(0, &unk_284A07FC8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_236FC8178;
  v10[3] = &unk_278A179F8;
  v11 = v5;
  v6 = v5;
  objc_msgSend_completionNotify_(self, v7, v10);
  v8 = dispatch_time(0, (done * 1000000000.0));
  LOBYTE(self) = dispatch_block_wait(v6, v8) != 0;

  return self;
}

- (void)_faultObjectsBatch:(id)batch
{
  v124 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v95 = objc_opt_new();
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = batchCopy;
  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v116, v123, 16);
  if (v90)
  {
    v89 = *v117;
    do
    {
      v5 = 0;
      do
      {
        if (*v117 != v89)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v92 = v5;
        v7 = *(*(&v116 + 1) + 8 * v5);
        v8 = objc_opt_class();
        if (!objc_msgSend_conformsToProtocol_(v8, v9, &unk_284A1E680))
        {
          goto LABEL_39;
        }

        v93 = v7;
        v91 = objc_msgSend_identity(v93, v11, v12);
        v14 = objc_msgSend_objectForKey_(self->_objects, v13, v91);
        v15 = v14 == 0;

        if (!v15)
        {
          goto LABEL_38;
        }

        objc_msgSend__addObject_(self, v16, v93);
        v19 = objc_msgSend_relations(v8, v17, v18);
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v94 = v19;
        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v20, &v112, v122, 16);
        if (!v98)
        {
          goto LABEL_37;
        }

        v97 = *v113;
        do
        {
          for (i = 0; i != v98; ++i)
          {
            if (*v113 != v97)
            {
              objc_enumerationMutation(v94);
            }

            v22 = *(*(&v112 + 1) + 8 * i);
            v23 = objc_autoreleasePoolPush();
            if (objc_msgSend_isFaultable(v22, v24, v25))
            {
              v99 = objc_msgSend_fromKey(v22, v26, v27);
              v30 = objc_msgSend_valueForKey_(v93, v28, v99);
              if (v30)
              {
                v31 = objc_msgSend_objectForKey_(self->_relations, v29, v30);
                if (!v31)
                {
                  v31 = objc_opt_new();
                  objc_msgSend_setObject_forKey_(self->_relations, v32, v31, v30);
                }

                v110 = 0u;
                v111 = 0u;
                v108 = 0u;
                v109 = 0u;
                v33 = v31;
                v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v108, v121, 16);
                if (v36)
                {
                  v37 = 0;
                  v38 = *v109;
                  do
                  {
                    for (j = 0; j != v36; ++j)
                    {
                      if (*v109 != v38)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v40 = *(*(&v108 + 1) + 8 * j);
                      if ((objc_msgSend_isInverseOfRelation_(v40, v35, v22) & 1) != 0 || objc_msgSend_isEquivalentToRelation_(v40, v35, v22))
                      {
                        v37 = 1;
                      }
                    }

                    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v108, v121, 16);
                  }

                  while (v36);

                  if (v37)
                  {
LABEL_33:

                    goto LABEL_34;
                  }
                }

                else
                {
                }

                objc_msgSend_addObject_(v33, v41, v22);
                v44 = objc_msgSend_toEntity(v22, v42, v43);
                v45 = NSStringFromClass(v44);
                v47 = objc_msgSend_valueForKey_(v95, v46, v45);
                v48 = v47 == 0;

                if (v48)
                {
                  v50 = objc_opt_new();
                  objc_msgSend_setValue_forKey_(v95, v51, v50, v45);

                  v53 = objc_msgSend_objectForKeyedSubscript_(v95, v52, v45);
                  v56 = objc_msgSend_toKey(v22, v54, v55);
                  objc_msgSend_addObject_(v53, v57, v56);
                }

                v58 = objc_msgSend_objectForKeyedSubscript_(v95, v49, v45);
                objc_msgSend_addObject_(v58, v59, v30);

                goto LABEL_33;
              }

LABEL_34:
            }

            objc_autoreleasePoolPop(v23);
          }

          v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v60, &v112, v122, 16);
        }

        while (v98);
LABEL_37:

LABEL_38:
LABEL_39:
        v5 = v92 + 1;
      }

      while (v92 + 1 != v90);
      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v116, v123, 16);
    }

    while (v90);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v61 = v95;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v104, v120, 16);
  if (v64)
  {
    v100 = *v105;
    do
    {
      for (k = 0; k != v64; ++k)
      {
        if (*v105 != v100)
        {
          objc_enumerationMutation(v61);
        }

        v66 = *(*(&v104 + 1) + 8 * k);
        v67 = objc_msgSend_objectForKeyedSubscript_(v61, v63, v66);
        v70 = objc_msgSend_firstObject(v67, v68, v69);

        v72 = objc_msgSend_objectForKeyedSubscript_(v61, v71, v66);
        objc_msgSend_removeObjectAtIndex_(v72, v73, 0);

        v74 = MEMORY[0x277CCAC30];
        v76 = objc_msgSend_objectForKeyedSubscript_(v61, v75, v66);
        v78 = objc_msgSend_predicateWithFormat_(v74, v77, @"%K IN %@", v70, v76);

        dispatch_group_enter(self->_group);
        objc_initWeak(&location, self);
        v81 = objc_msgSend_delegate(self, v79, v80);
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = sub_236FC8838;
        v101[3] = &unk_278A18E70;
        objc_copyWeak(&v102, &location);
        v83 = objc_msgSend_dataServer_(v81, v82, v101);

        v85 = objc_msgSend_querySpecificationWithObjectName_predicate_(CLSQuerySpecification, v84, v66, v78);
        objc_msgSend_remote_executeQuery_querySpecification_searchSpecification_issueServerRequest_completion_(v83, v86, self, v85, 0, 1, &unk_284A07FE8);

        objc_destroyWeak(&v102);
        objc_destroyWeak(&location);
      }

      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v63, &v104, v120, 16);
    }

    while (v64);
  }

  v87 = *MEMORY[0x277D85DE8];
}

- (void)_addObject:(id)object
{
  objectCopy = object;
  v5 = objc_msgSend__childParentRelationForObject_(self, v4, objectCopy);
  isRootObject_withRelation = objc_msgSend__isRootObject_withRelation_(self, v6, objectCopy, v5);
  v10 = objc_msgSend_identity(objectCopy, v8, v9);
  objc_msgSend_setObject_forKey_(self->_objects, v11, objectCopy, v10);
  if (isRootObject_withRelation)
  {
    objc_msgSend__insertRootObject_(self, v12, objectCopy);
  }

  else
  {
    v14 = objc_msgSend_fromKey(v5, v12, v13);
    v16 = objc_msgSend_valueForKey_(objectCopy, v15, v14);

    v19 = objc_msgSend_objectForKey_(self->_objectsIdsByParentID, v17, v16);
    if (!v19)
    {
      v19 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_objectsIdsByParentID, v20, v19, v16);
    }

    objc_msgSend_addObject_(v19, v18, v10);
  }
}

- (void)_insertRootObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_identity(objectCopy, v5, v6);
  v10 = objc_msgSend_rootClasses(CLSFaultProcessor, v8, v9);
  v11 = objc_opt_class();
  v13 = objc_msgSend_containsObject_(v10, v12, v11);

  if (v13)
  {
    v16 = objc_msgSend_objectForKey_(selfCopy->_objectsIdsByParentID, v14, v7);
    if (v16)
    {
      objc_msgSend__insertRootObjectID_withChildren_(selfCopy, v15, v7, v16);
    }

    else
    {
      objc_msgSend_addObject_(selfCopy->_rootObjectIDs, v15, v7);
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    rootObjectIDs = selfCopy->_rootObjectIDs;
    if (isKindOfClass)
    {
      objc_msgSend_insertObject_atIndex_(rootObjectIDs, v17, v7, 0);
    }

    else
    {
      objc_msgSend_addObject_(rootObjectIDs, v17, v7);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_insertRootObjectID:(id)d withChildren:(id)children
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  childrenCopy = children;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_rootObjectIDs;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    v14 = *v23;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      v13 += v12;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        if (objc_msgSend_containsObject_(childrenCopy, v11, *(*(&v22 + 1) + 8 * v15), v22))
        {
          v13 = v16;
          goto LABEL_12;
        }

        ++v16;
        ++v15;
      }

      while (v12 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  v19 = objc_msgSend_count(self->_rootObjectIDs, v17, v18);
  if (v13 >= v19 - 1)
  {
    objc_msgSend_insertObject_atIndex_(self->_rootObjectIDs, v20, dCopy, v19 - 1, v22);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(self->_rootObjectIDs, v20, dCopy, v13, v22);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRootObject:(id)object
{
  objectCopy = object;
  v6 = objc_msgSend__childParentRelationForObject_(self, v5, objectCopy);
  LOBYTE(self) = objc_msgSend__isRootObject_withRelation_(self, v7, objectCopy, v6);

  return self;
}

- (BOOL)_isRootObject:(id)object withRelation:(id)relation
{
  objectCopy = object;
  relationCopy = relation;
  v9 = objc_msgSend_rootClasses(CLSFaultProcessor, v7, v8);
  v10 = objc_opt_class();
  v12 = objc_msgSend_containsObject_(v9, v11, v10);

  if (relationCopy)
  {
    v15 = objc_msgSend_fromKey(relationCopy, v13, v14);
    v17 = objc_msgSend_valueForKey_(objectCopy, v16, v15);
    v18 = v17 == 0;

    v19 = v18 | v12;
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

- (id)_childParentRelationForObject:(id)object
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = objc_opt_class();
  v6 = objc_msgSend_relations(v3, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v15, v19, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_inGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  p_queue = &self->_queue;
  queue = self->_queue;
  v6 = p_queue[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FC8F60;
  block[3] = &unk_278A18E98;
  objc_copyWeak(&v11, &location);
  v10 = groupCopy;
  v8 = groupCopy;
  dispatch_group_async(v6, queue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)clientRemote_deliverObject:(id)object
{
  objectCopy = object;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_236FC9058;
  v7[3] = &unk_278A18F48;
  v8 = objectCopy;
  v5 = objectCopy;
  objc_msgSend__inGroup_(self, v6, v7);
}

- (CLSFaultProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end