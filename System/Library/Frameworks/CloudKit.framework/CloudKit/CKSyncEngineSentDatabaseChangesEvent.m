@interface CKSyncEngineSentDatabaseChangesEvent
- (CKSyncEngineSentDatabaseChangesEvent)initWithSavedZones:(id)a3 failedZoneSaves:(id)a4 deletedZoneIDs:(id)a5 failedZoneDeletes:(id)a6;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineSentDatabaseChangesEvent

- (CKSyncEngineSentDatabaseChangesEvent)initWithSavedZones:(id)a3 failedZoneSaves:(id)a4 deletedZoneIDs:(id)a5 failedZoneDeletes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v52 = 0;
  v14 = _CKCheckArgument("savedZones", v10, 0, 0, 0, &v52);
  v15 = v52;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  v51 = 0;
  v16 = _CKCheckArgument("failedZoneSaves", v11, 0, 0, 0, &v51);
  v15 = v51;
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  v50 = 0;
  v17 = _CKCheckArgument("deletedZoneIDs", v12, 0, 0, 0, &v50);
  v15 = v50;
  if ((v17 & 1) == 0 || (v15, v49 = 0, v18 = _CKCheckArgument("failedZoneDeletes", v13, 0, 0, 0, &v49), v15 = v49, (v18 & 1) == 0))
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
  v21 = [(CKSyncEngineEvent *)&v48 initInternal];
  if (v21)
  {
    v22 = objc_msgSend_copy(v10, v19, v20);
    savedZones = v21->_savedZones;
    v21->_savedZones = v22;

    v26 = objc_msgSend_copy(v11, v24, v25);
    failedZoneSaves = v21->_failedZoneSaves;
    v21->_failedZoneSaves = v26;

    v30 = objc_msgSend_copy(v12, v28, v29);
    deletedZoneIDs = v21->_deletedZoneIDs;
    v21->_deletedZoneIDs = v30;

    v34 = objc_msgSend_copy(v13, v32, v33);
    failedZoneDeletes = v21->_failedZoneDeletes;
    v21->_failedZoneDeletes = v34;
  }

  return v21;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v21.receiver = self;
  v21.super_class = CKSyncEngineSentDatabaseChangesEvent;
  v4 = a3;
  [(CKSyncEngineEvent *)&v21 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_savedZones(self, v5, v6, v21.receiver, v21.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"savedZones", v7, 0);

  v11 = objc_msgSend_failedZoneSaves(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v12, @"failedZoneSaves", v11, 0);

  v15 = objc_msgSend_deletedZoneIDs(self, v13, v14);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v16, @"deletedZoneIDs", v15, 0);

  v19 = objc_msgSend_failedZoneDeletes(self, v17, v18);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v20, @"failedZoneDeletes", v19, 0);
}

@end