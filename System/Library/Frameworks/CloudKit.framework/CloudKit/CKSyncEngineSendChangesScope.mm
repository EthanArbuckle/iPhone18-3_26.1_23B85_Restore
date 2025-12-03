@interface CKSyncEngineSendChangesScope
- (BOOL)containsPendingRecordZoneChange:(CKSyncEnginePendingRecordZoneChange *)pendingRecordZoneChange;
- (BOOL)containsRecordID:(CKRecordID *)recordID;
- (BOOL)containsScope:(id)scope;
- (BOOL)containsZoneOrRecordWithZoneID:(id)d;
- (BOOL)isEqual:(id)equal;
- (CKSyncEngineSendChangesScope)init;
- (CKSyncEngineSendChangesScope)initWithRecordIDs:(NSSet *)recordIDs;
- (CKSyncEngineSendChangesScope)initWithZoneIDs:(NSSet *)zoneIDs;
- (CKSyncEngineSendChangesScope)initWithZoneIDs:(id)ds excludedZoneIDs:(id)iDs recordIDs:(id)recordIDs;
- (id)description;
@end

@implementation CKSyncEngineSendChangesScope

- (id)description
{
  v4 = objc_msgSend_zoneIDs(self, a2, v2);
  v7 = objc_msgSend_excludedZoneIDs(self, v5, v6);
  v12 = objc_msgSend_recordIDs(self, v8, v9);
  if (v4)
  {
    v13 = objc_msgSend_allObjects(v4, v10, v11);
    v15 = objc_msgSend_CKMap_(v13, v14, &unk_1EFA2FC48);
    v16 = @"zoneIDs(%@)";
LABEL_7:

    v21 = MEMORY[0x1E696AEC0];
    v23 = objc_msgSend_componentsJoinedByString_(v15, v22, @", ");
    v25 = objc_msgSend_stringWithFormat_(v21, v24, v16, v23);

    goto LABEL_8;
  }

  if (objc_msgSend_count(v7, v10, v11))
  {
    v13 = objc_msgSend_allObjects(v7, v17, v18);
    v15 = objc_msgSend_CKMap_(v13, v19, &unk_1EFA2FC68);
    v16 = @"allExcluding(%@)";
    goto LABEL_7;
  }

  if (v12)
  {
    v13 = objc_msgSend_allObjects(v12, v17, v18);
    v15 = objc_msgSend_CKMap_(v13, v20, &unk_1EFA2FC88);
    v16 = @"recordIDs(%@)";
    goto LABEL_7;
  }

  v25 = @"all";
LABEL_8:

  return v25;
}

- (CKSyncEngineSendChangesScope)init
{
  v3 = objc_opt_new();
  v5 = objc_msgSend_initWithZoneIDs_excludedZoneIDs_recordIDs_(self, v4, 0, v3, 0);

  return v5;
}

- (CKSyncEngineSendChangesScope)initWithZoneIDs:(NSSet *)zoneIDs
{
  v4 = zoneIDs;
  v5 = objc_opt_new();
  v7 = objc_msgSend_initWithZoneIDs_excludedZoneIDs_recordIDs_(self, v6, v4, v5, 0);

  return v7;
}

- (CKSyncEngineSendChangesScope)initWithRecordIDs:(NSSet *)recordIDs
{
  v4 = recordIDs;
  v5 = objc_opt_new();
  v7 = objc_msgSend_initWithZoneIDs_excludedZoneIDs_recordIDs_(self, v6, 0, v5, v4);

  return v7;
}

- (CKSyncEngineSendChangesScope)initWithZoneIDs:(id)ds excludedZoneIDs:(id)iDs recordIDs:(id)recordIDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  recordIDsCopy = recordIDs;
  v25.receiver = self;
  v25.super_class = CKSyncEngineSendChangesScope;
  v13 = [(CKSyncEngineSendChangesScope *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(dsCopy, v11, v12);
    zoneIDs = v13->_zoneIDs;
    v13->_zoneIDs = v14;

    v18 = objc_msgSend_copy(iDsCopy, v16, v17);
    excludedZoneIDs = v13->_excludedZoneIDs;
    v13->_excludedZoneIDs = v18;

    v22 = objc_msgSend_copy(recordIDsCopy, v20, v21);
    recordIDs = v13->_recordIDs;
    v13->_recordIDs = v22;
  }

  return v13;
}

- (BOOL)containsScope:(id)scope
{
  scopeCopy = scope;
  v7 = objc_msgSend_zoneIDs(self, v5, v6);
  v10 = objc_msgSend_recordIDs(self, v8, v9);
  v13 = objc_msgSend_excludedZoneIDs(self, v11, v12);
  v16 = objc_msgSend_zoneIDs(scopeCopy, v14, v15);
  v19 = objc_msgSend_recordIDs(scopeCopy, v17, v18);
  v22 = objc_msgSend_excludedZoneIDs(scopeCopy, v20, v21);

  v24 = objc_msgSend_scopeWithZoneIDs_recordIDs_excludedZoneIDs_containsScopeWithZoneIDs_recordIDs_excludedZoneIDs_(CKSyncEngineFetchChangesScope, v23, v7, v10, v13, v16, v19, v22);
  return v24;
}

- (BOOL)containsRecordID:(CKRecordID *)recordID
{
  v4 = recordID;
  v7 = objc_msgSend_zoneIDs(self, v5, v6);
  v10 = objc_msgSend_recordIDs(self, v8, v9);
  v13 = v10;
  if (v10 && !objc_msgSend_containsObject_(v10, v11, v4) || v7 && (objc_msgSend_zoneID(v4, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend_containsObject_(v7, v15, v14), v14, !v16))
  {
    v23 = 0;
  }

  else
  {
    v17 = objc_msgSend_excludedZoneIDs(self, v11, v12);
    v20 = objc_msgSend_zoneID(v4, v18, v19);
    v22 = objc_msgSend_containsObject_(v17, v21, v20);

    v23 = v22 ^ 1;
  }

  return v23;
}

- (BOOL)containsPendingRecordZoneChange:(CKSyncEnginePendingRecordZoneChange *)pendingRecordZoneChange
{
  v4 = objc_msgSend_recordID(pendingRecordZoneChange, a2, pendingRecordZoneChange);
  LOBYTE(self) = objc_msgSend_containsRecordID_(self, v5, v4);

  return self;
}

- (BOOL)containsZoneOrRecordWithZoneID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = objc_msgSend_excludedZoneIDs(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, dCopy);

  if (v9)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = objc_msgSend_zoneIDs(self, v10, v11);
    v16 = v13;
    if (v13)
    {
      LOBYTE(v12) = objc_msgSend_containsObject_(v13, v14, dCopy);
    }

    else
    {
      v17 = objc_msgSend_recordIDs(self, v14, v15);
      if (objc_msgSend_count(v17, v18, v19))
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v20 = v17;
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v31, v35, 16);
        if (v12)
        {
          v24 = *v32;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = objc_msgSend_zoneID(*(*(&v31 + 1) + 8 * i), v22, v23, v31);
              isEqual = objc_msgSend_isEqual_(v26, v27, dCopy);

              if (isEqual)
              {
                LOBYTE(v12) = 1;
                goto LABEL_16;
              }
            }

            v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v31, v35, 16);
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      else
      {
        LOBYTE(v12) = 1;
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v8 = objc_msgSend_recordIDs(self, v6, v7);
    v11 = objc_msgSend_recordIDs(v5, v9, v10);
    v12 = CKObjectsAreBothNilOrEqual(v8, v11);

    if (v12 && (objc_msgSend_zoneIDs(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_zoneIDs(v5, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = CKObjectsAreBothNilOrEqual(v15, v18), v18, v15, v19))
    {
      v22 = objc_msgSend_excludedZoneIDs(self, v20, v21);
      v25 = objc_msgSend_excludedZoneIDs(v5, v23, v24);
      v26 = CKObjectsAreBothNilOrEqual(v22, v25);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end