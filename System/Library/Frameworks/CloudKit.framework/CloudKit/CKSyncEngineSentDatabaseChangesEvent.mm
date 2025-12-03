@interface CKSyncEngineSentDatabaseChangesEvent
- (CKSyncEngineSentDatabaseChangesEvent)initWithSavedZones:(id)zones failedZoneSaves:(id)saves deletedZoneIDs:(id)ds failedZoneDeletes:(id)deletes;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineSentDatabaseChangesEvent

- (CKSyncEngineSentDatabaseChangesEvent)initWithSavedZones:(id)zones failedZoneSaves:(id)saves deletedZoneIDs:(id)ds failedZoneDeletes:(id)deletes
{
  zonesCopy = zones;
  savesCopy = saves;
  dsCopy = ds;
  deletesCopy = deletes;
  v52 = 0;
  v14 = _CKCheckArgument("savedZones", zonesCopy, 0, 0, 0, &v52);
  v15 = v52;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  v51 = 0;
  v16 = _CKCheckArgument("failedZoneSaves", savesCopy, 0, 0, 0, &v51);
  v15 = v51;
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  v50 = 0;
  v17 = _CKCheckArgument("deletedZoneIDs", dsCopy, 0, 0, 0, &v50);
  v15 = v50;
  if ((v17 & 1) == 0 || (v15, v49 = 0, v18 = _CKCheckArgument("failedZoneDeletes", deletesCopy, 0, 0, 0, &v49), v15 = v49, (v18 & 1) == 0))
  {
LABEL_8:
    v37 = v15;
    v38 = [CKException alloc];
    v41 = objc_msgSend_code(v37, v39, v40);
    v44 = objc_msgSend_localizedDescription(v37, v42, v43);
    v46 = objc_msgSend_initWithCode_format_(v38, v45, v41, @"%@", v44);
    v47 = v46;

    objc_exception_throw(v46);
  }

  v48.receiver = self;
  v48.super_class = CKSyncEngineSentDatabaseChangesEvent;
  initInternal = [(CKSyncEngineEvent *)&v48 initInternal];
  if (initInternal)
  {
    v22 = objc_msgSend_copy(zonesCopy, v19, v20);
    savedZones = initInternal->_savedZones;
    initInternal->_savedZones = v22;

    v26 = objc_msgSend_copy(savesCopy, v24, v25);
    failedZoneSaves = initInternal->_failedZoneSaves;
    initInternal->_failedZoneSaves = v26;

    v30 = objc_msgSend_copy(dsCopy, v28, v29);
    deletedZoneIDs = initInternal->_deletedZoneIDs;
    initInternal->_deletedZoneIDs = v30;

    v34 = objc_msgSend_copy(deletesCopy, v32, v33);
    failedZoneDeletes = initInternal->_failedZoneDeletes;
    initInternal->_failedZoneDeletes = v34;
  }

  return initInternal;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  v21.receiver = self;
  v21.super_class = CKSyncEngineSentDatabaseChangesEvent;
  usingCopy = using;
  [(CKSyncEngineEvent *)&v21 CKDescribePropertiesUsing:usingCopy];
  v7 = objc_msgSend_savedZones(self, v5, v6, v21.receiver, v21.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"savedZones", v7, 0);

  v11 = objc_msgSend_failedZoneSaves(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v12, @"failedZoneSaves", v11, 0);

  v15 = objc_msgSend_deletedZoneIDs(self, v13, v14);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v16, @"deletedZoneIDs", v15, 0);

  v19 = objc_msgSend_failedZoneDeletes(self, v17, v18);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v20, @"failedZoneDeletes", v19, 0);
}

@end