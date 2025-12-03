@interface CKSyncEngineFetchChangesScope
+ (CKSyncEngineFetchChangesScope)scopeWithZoneIDs:(id)ds recordIDs:(id)iDs excludedZoneIDs:(id)zoneIDs containsScopeWithZoneIDs:(id)withZoneIDs recordIDs:(id)recordIDs excludedZoneIDs:(id)excludedZoneIDs;
- (BOOL)containsScope:(id)scope;
- (BOOL)containsZoneID:(id)d;
- (BOOL)isEqual:(id)equal;
- (CKSyncEngineFetchChangesScope)init;
- (CKSyncEngineFetchChangesScope)initWithZoneIDs:(NSSet *)zoneIDs;
- (CKSyncEngineFetchChangesScope)initWithZoneIDs:(id)ds excludedZoneIDs:(id)iDs;
- (id)description;
@end

@implementation CKSyncEngineFetchChangesScope

- (id)description
{
  v4 = objc_msgSend_zoneIDs(self, a2, v2);
  v7 = objc_msgSend_excludedZoneIDs(self, v5, v6);
  v10 = v7;
  if (v4)
  {
    v11 = objc_msgSend_allObjects(v4, v8, v9);
    v13 = objc_msgSend_CKMap_(v11, v12, &unk_1EFA2FC08);
    v14 = @"zoneIDs(%@)";
LABEL_5:

    v18 = MEMORY[0x1E696AEC0];
    v20 = objc_msgSend_componentsJoinedByString_(v13, v19, @", ");
    v22 = objc_msgSend_stringWithFormat_(v18, v21, v14, v20);

    goto LABEL_6;
  }

  if (objc_msgSend_count(v7, v8, v9))
  {
    v11 = objc_msgSend_allObjects(v10, v15, v16);
    v13 = objc_msgSend_CKMap_(v11, v17, &unk_1EFA2FC28);
    v14 = @"allExcluding(%@)";
    goto LABEL_5;
  }

  v22 = @"all";
LABEL_6:

  return v22;
}

- (CKSyncEngineFetchChangesScope)init
{
  v3 = objc_opt_new();
  v5 = objc_msgSend_initWithZoneIDs_excludedZoneIDs_(self, v4, 0, v3);

  return v5;
}

- (CKSyncEngineFetchChangesScope)initWithZoneIDs:(NSSet *)zoneIDs
{
  v4 = zoneIDs;
  v5 = objc_opt_new();
  v7 = objc_msgSend_initWithZoneIDs_excludedZoneIDs_(self, v6, v4, v5);

  return v7;
}

- (CKSyncEngineFetchChangesScope)initWithZoneIDs:(id)ds excludedZoneIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v18.receiver = self;
  v18.super_class = CKSyncEngineFetchChangesScope;
  v10 = [(CKSyncEngineFetchChangesScope *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(dsCopy, v8, v9);
    zoneIDs = v10->_zoneIDs;
    v10->_zoneIDs = v11;

    v15 = objc_msgSend_copy(iDsCopy, v13, v14);
    excludedZoneIDs = v10->_excludedZoneIDs;
    v10->_excludedZoneIDs = v15;
  }

  return v10;
}

- (BOOL)containsScope:(id)scope
{
  scopeCopy = scope;
  v7 = objc_msgSend_zoneIDs(self, v5, v6);
  v10 = objc_msgSend_excludedZoneIDs(self, v8, v9);
  v13 = objc_msgSend_zoneIDs(scopeCopy, v11, v12);
  v16 = objc_msgSend_excludedZoneIDs(scopeCopy, v14, v15);

  v18 = objc_msgSend_scopeWithZoneIDs_recordIDs_excludedZoneIDs_containsScopeWithZoneIDs_recordIDs_excludedZoneIDs_(CKSyncEngineFetchChangesScope, v17, v7, 0, v10, v13, 0, v16);
  return v18;
}

+ (CKSyncEngineFetchChangesScope)scopeWithZoneIDs:(id)ds recordIDs:(id)iDs excludedZoneIDs:(id)zoneIDs containsScopeWithZoneIDs:(id)withZoneIDs recordIDs:(id)recordIDs excludedZoneIDs:(id)excludedZoneIDs
{
  v70 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  zoneIDsCopy = zoneIDs;
  withZoneIDsCopy = withZoneIDs;
  recordIDsCopy = recordIDs;
  excludedZoneIDsCopy = excludedZoneIDs;
  v21 = excludedZoneIDsCopy;
  if (dsCopy)
  {
    if (withZoneIDsCopy)
    {
      if ((objc_msgSend_isSubsetOfSet_(withZoneIDsCopy, v19, dsCopy) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!recordIDsCopy)
      {
        if (!objc_msgSend_count(excludedZoneIDsCopy, v19, v20) || (objc_msgSend_intersectsSet_(v21, v37, dsCopy) & 1) != 0)
        {
          goto LABEL_44;
        }

        if (!objc_msgSend_count(zoneIDsCopy, v38, v39))
        {
          if (iDsCopy)
          {
LABEL_44:
            v36 = 0;
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        goto LABEL_22;
      }

      v58 = excludedZoneIDsCopy;
      v59 = iDsCopy;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v22 = recordIDsCopy;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v64, v69, 16);
      if (v24)
      {
        v27 = v24;
        v28 = *v65;
LABEL_8:
        v29 = 0;
        while (1)
        {
          if (*v65 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = objc_msgSend_zoneID(*(*(&v64 + 1) + 8 * v29), v25, v26, v58, v59);
          v32 = objc_msgSend_containsObject_(dsCopy, v31, v30);

          if (!v32)
          {
            goto LABEL_42;
          }

          if (v27 == ++v29)
          {
            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v64, v69, 16);
            if (v27)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v21 = v58;
      iDsCopy = v59;
    }
  }

  if (objc_msgSend_count(zoneIDsCopy, v19, v20, v58, v59))
  {
    if (withZoneIDsCopy)
    {
      v35 = 0;
      v36 = 0;
      if (objc_msgSend_intersectsSet_(zoneIDsCopy, v33, withZoneIDsCopy))
      {
        goto LABEL_45;
      }

      goto LABEL_23;
    }

LABEL_22:
    v35 = 1;
LABEL_23:
    if (objc_msgSend_count(v21, v33, v34) && !objc_msgSend_isSubsetOfSet_(zoneIDsCopy, v40, v21))
    {
      goto LABEL_44;
    }

    v42 = objc_msgSend_count(v21, v40, v41);
    v45 = v35 ^ 1;
    if (v42)
    {
      v45 = 1;
    }

    if ((v45 & 1) == 0 && !objc_msgSend_count(recordIDsCopy, v43, v44))
    {
      goto LABEL_44;
    }

    v58 = v21;
    v59 = iDsCopy;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v22 = recordIDsCopy;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v46, &v60, v68, 16);
    if (v47)
    {
      v50 = v47;
      v51 = *v61;
LABEL_31:
      v52 = 0;
      while (1)
      {
        if (*v61 != v51)
        {
          objc_enumerationMutation(v22);
        }

        v53 = objc_msgSend_zoneID(*(*(&v60 + 1) + 8 * v52), v48, v49, v58, v59, v60);
        v55 = objc_msgSend_containsObject_(zoneIDsCopy, v54, v53);

        if (v55)
        {
          break;
        }

        if (v50 == ++v52)
        {
          v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v48, &v60, v68, 16);
          if (v50)
          {
            goto LABEL_31;
          }

          goto LABEL_37;
        }
      }

LABEL_42:

      v36 = 0;
      v21 = v58;
      iDsCopy = v59;
      goto LABEL_45;
    }

LABEL_37:

    v21 = v58;
    iDsCopy = v59;
  }

  if (iDsCopy && (!recordIDsCopy || !objc_msgSend_isSubsetOfSet_(recordIDsCopy, v33, iDsCopy)))
  {
    goto LABEL_44;
  }

LABEL_41:
  v36 = 1;
LABEL_45:

  v56 = *MEMORY[0x1E69E9840];
  return v36;
}

- (BOOL)containsZoneID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_zoneIDs(self, v5, v6);
  v11 = objc_msgSend_excludedZoneIDs(self, v8, v9);
  if (v7 && !objc_msgSend_containsObject_(v7, v10, dCopy))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = objc_msgSend_containsObject_(v11, v10, dCopy) ^ 1;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v8 = objc_msgSend_zoneIDs(self, v6, v7);
    v11 = objc_msgSend_zoneIDs(v5, v9, v10);
    v12 = CKObjectsAreBothNilOrEqual(v8, v11);

    if (v12)
    {
      v15 = objc_msgSend_excludedZoneIDs(self, v13, v14);
      v18 = objc_msgSend_excludedZoneIDs(v5, v16, v17);
      v19 = CKObjectsAreBothNilOrEqual(v15, v18);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end