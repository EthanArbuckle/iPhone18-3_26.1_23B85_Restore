@interface CKRecordZoneGraph
+ (id)topologicallySortRecordZones:(id)a3 withError:(id *)a4;
- (BOOL)addRecordZones:(id)a3 error:(id *)a4;
- (CKRecordZoneGraph)init;
- (id)description;
- (id)recordZonesByTopologicalSortWithError:(id *)a3;
@end

@implementation CKRecordZoneGraph

- (BOOL)addRecordZones:(id)a3 error:(id *)a4
{
  v106 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v90 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v8 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v99, v105, 16);
  obj = v8;
  if (v10)
  {
    v13 = v10;
    v14 = *v100;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v100 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v99 + 1) + 8 * i);
        v17 = objc_msgSend_zoneID(v16, v11, v12);
        v19 = objc_msgSend_objectForKey_(v7, v18, v17);

        if (v19)
        {
          if (a4)
          {
            v79 = objc_msgSend_zoneID(v16, v20, v21);
            *a4 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v80, @"CKInternalErrorDomain", 1017, @"Asked to sort multiple zones with identical zoneIDs: %@", v79);
          }

          v76 = obj;

          v78 = 0;
          v77 = v90;
          goto LABEL_40;
        }

        v22 = objc_msgSend_zoneID(v16, v20, v21);
        objc_msgSend_setObject_forKey_(v7, v23, v16, v22);
      }

      v8 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v99, v105, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v85 = v8;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v24, &v95, v104, 16);
  if (v87)
  {
    v86 = *v96;
    do
    {
      v26 = 0;
      do
      {
        if (*v96 != v86)
        {
          objc_enumerationMutation(v85);
        }

        v88 = v26;
        v27 = *(*(&v95 + 1) + 8 * v26);
        v30 = objc_msgSend_objectForKey_(v6, v25, v27);
        if (!v30)
        {
          v31 = [CKRecordZoneGraphNode alloc];
          v30 = objc_msgSend_initWithRecordZone_(v31, v32, v27);
          objc_msgSend_setObject_forKey_(v6, v33, v30, v27);
          objc_msgSend_addObject_(v90, v34, v30);
        }

        v35 = objc_msgSend_array(MEMORY[0x1E695DF70], v28, v29);
        v38 = objc_msgSend_parent(v27, v36, v37);

        if (v38)
        {
          v41 = objc_msgSend_parent(v27, v39, v40);
          objc_msgSend_addObject_(v35, v42, v41);
        }

        v89 = v27;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v43 = v35;
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v91, v103, 16);
        if (v45)
        {
          v48 = v45;
          v49 = *v92;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v92 != v49)
              {
                objc_enumerationMutation(v43);
              }

              v51 = *(*(&v91 + 1) + 8 * j);
              v52 = objc_msgSend_zoneID(v51, v46, v47);
              v54 = objc_msgSend_objectForKey_(v7, v53, v52);

              if (v54)
              {
                if (objc_msgSend_referenceAction(v51, v55, v56) == 1 || objc_msgSend_referenceAction(v51, v57, v58) == 2 || (objc_msgSend_parent(v89, v57, v59), v60 = objc_claimAutoreleasedReturnValue(), v60, v51 == v60))
                {
                  v63 = objc_msgSend_objectForKey_(v6, v57, v54);
                  if (!v63)
                  {
                    v64 = [CKRecordZoneGraphNode alloc];
                    v63 = objc_msgSend_initWithRecordZone_(v64, v65, v54);
                    objc_msgSend_setObject_forKey_(v6, v66, v63, v54);
                    objc_msgSend_addObject_(v90, v67, v63);
                  }

                  v68 = objc_msgSend_edges(v30, v61, v62);
                  objc_msgSend_addObject_(v68, v69, v63);

                  v72 = objc_msgSend_indegrees(v63, v70, v71);
                  objc_msgSend_addObject_(v72, v73, v30);
                }
              }
            }

            v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v91, v103, 16);
          }

          while (v48);
        }

        v26 = v88 + 1;
      }

      while (v88 + 1 != v87);
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v25, &v95, v104, 16);
    }

    while (v87);
  }

  if (self)
  {
    nodes = self->_nodes;
  }

  else
  {
    nodes = 0;
  }

  v76 = obj;
  v77 = v90;
  objc_msgSend_addObjectsFromArray_(nodes, v74, v90);
  sub_1886BFE88(self, 0);
  v78 = 1;
LABEL_40:

  v81 = *MEMORY[0x1E69E9840];
  return v78;
}

- (CKRecordZoneGraph)init
{
  v6.receiver = self;
  v6.super_class = CKRecordZoneGraph;
  v2 = [(CKRecordZoneGraph *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    nodes = v2->_nodes;
    v2->_nodes = v3;
  }

  return v2;
}

- (id)recordZonesByTopologicalSortWithError:(id *)a3
{
  v54 = *MEMORY[0x1E69E9840];
  if (self)
  {
    sortedZones = self->_sortedZones;
    if (sortedZones)
    {
      v5 = sortedZones;
      goto LABEL_33;
    }

    v48 = a3;
    v6 = objc_opt_new();
    objc_msgSend_CKFilter_(self->_nodes, v7, &unk_1EFA30890);
  }

  else
  {
    v48 = a3;
    v6 = objc_opt_new();
    objc_msgSend_CKFilter_(0, v47, &unk_1EFA30890);
  }
  v8 = ;
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);

  if (self)
  {
    objc_msgSend_removeObjectsInArray_(self->_nodes, v12, v11);
  }

  else
  {
    objc_msgSend_removeObjectsInArray_(0, v12, v11);
  }

  while (objc_msgSend_count(v11, v13, v14))
  {
    v17 = objc_msgSend_lastObject(v11, v15, v16);
    objc_msgSend_removeObject_(v11, v18, v17);
    v21 = objc_msgSend_zone(v17, v19, v20);
    objc_msgSend_insertObject_atIndex_(v6, v22, v21, 0);

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v25 = objc_msgSend_edges(v17, v23, v24);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v49, v53, 16);
    if (v27)
    {
      v30 = v27;
      v31 = *v50;
      do
      {
        v32 = 0;
        do
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v49 + 1) + 8 * v32);
          v34 = objc_msgSend_indegrees(v33, v28, v29);
          objc_msgSend_removeObject_(v34, v35, v17);

          if (!objc_msgSend_indegree(v33, v36, v37))
          {
            objc_msgSend_insertObject_atIndex_(v11, v28, v33, 0);
            if (self)
            {
              objc_msgSend_removeObject_(self->_nodes, v38, v33);
            }

            else
            {
              objc_msgSend_removeObject_(0, v38, v33);
            }
          }

          ++v32;
        }

        while (v30 != v32);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v49, v53, 16);
        v30 = v39;
      }

      while (v39);
    }
  }

  if (self)
  {
    nodes = self->_nodes;
  }

  else
  {
    nodes = 0;
  }

  if (objc_msgSend_count(nodes, v15, v16))
  {
    if (self)
    {
      objc_msgSend_removeAllObjects(self->_nodes, v41, v42);
    }

    else
    {
      objc_msgSend_removeAllObjects(0, v41, v42);
    }

    if (v48)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v43, @"CKInternalErrorDomain", 1017, @"Cycle detected in zone graph");
      *v48 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1886BFE88(self, v6);
    if (self)
    {
      v44 = self->_sortedZones;
    }

    else
    {
      v44 = 0;
    }

    v5 = v44;
  }

LABEL_33:
  v45 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)description
{
  if (self)
  {
    self = self->_nodes;
  }

  return objc_msgSend_description(self, a2, v2);
}

+ (id)topologicallySortRecordZones:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CKRecordZoneGraph);
  v17 = 0;
  v8 = objc_msgSend_addRecordZones_error_(v6, v7, v5, &v17);

  v9 = v17;
  v12 = v9;
  if (v8)
  {
    v16 = v9;
    v13 = objc_msgSend_recordZonesByTopologicalSortWithError_(v6, v10, &v16);
    v14 = v16;

    v12 = v14;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (v12)
  {
    *a4 = objc_msgSend_CKClientSuitableError(v12, v10, v11);
  }

LABEL_7:

  return v13;
}

@end