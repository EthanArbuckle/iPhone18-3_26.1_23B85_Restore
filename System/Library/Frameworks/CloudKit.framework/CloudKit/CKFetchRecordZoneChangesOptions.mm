@interface CKFetchRecordZoneChangesOptions
- (CKFetchRecordZoneChangesOptions)init;
- (CKFetchRecordZoneChangesOptions)initWithCoder:(id)a3;
- (CKFetchRecordZoneChangesOptions)initWithZoneConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)zoneConfiguration;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchRecordZoneChangesOptions

- (CKFetchRecordZoneChangesOptions)init
{
  v3.receiver = self;
  v3.super_class = CKFetchRecordZoneChangesOptions;
  result = [(CKFetchRecordZoneChangesOptions *)&v3 init];
  if (result)
  {
    result->_fetchChangesMadeByThisDevice = 1;
  }

  return result;
}

- (CKFetchRecordZoneChangesOptions)initWithZoneConfiguration:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_previousServerChangeToken(v4, v7, v8);
    objc_msgSend_setPreviousServerChangeToken_(v9, v11, v10);

    v14 = objc_msgSend_resultsLimit(v4, v12, v13);
    objc_msgSend_setResultsLimit_(v9, v15, v14);
    v18 = objc_msgSend_desiredKeys(v4, v16, v17);
    objc_msgSend_setDesiredKeys_(v9, v19, v18);

    NewestChangesFirst = objc_msgSend_fetchNewestChangesFirst(v4, v20, v21);
    objc_msgSend_setFetchNewestChangesFirst_(v9, v23, NewestChangesFirst);
    ChangesMadeByThisDevice = objc_msgSend_fetchChangesMadeByThisDevice(v4, v24, v25);
    objc_msgSend_setFetchChangesMadeByThisDevice_(v9, v27, ChangesMadeByThisDevice);
  }

  return v9;
}

- (id)zoneConfiguration
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_previousServerChangeToken(self, v4, v5);
  objc_msgSend_setPreviousServerChangeToken_(v3, v7, v6);

  v10 = objc_msgSend_resultsLimit(self, v8, v9);
  objc_msgSend_setResultsLimit_(v3, v11, v10);
  v14 = objc_msgSend_desiredKeys(self, v12, v13);
  objc_msgSend_setDesiredKeys_(v3, v15, v14);

  NewestChangesFirst = objc_msgSend_fetchNewestChangesFirst(self, v16, v17);
  objc_msgSend_setFetchNewestChangesFirst_(v3, v19, NewestChangesFirst);
  ChangesMadeByThisDevice = objc_msgSend_fetchChangesMadeByThisDevice(self, v20, v21);
  objc_msgSend_setFetchChangesMadeByThisDevice_(v3, v23, ChangesMadeByThisDevice);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CKFetchRecordZoneChangesOptions);
  v7 = objc_msgSend_previousServerChangeToken(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  previousServerChangeToken = v4->_previousServerChangeToken;
  v4->_previousServerChangeToken = v10;

  v4->_resultsLimit = objc_msgSend_resultsLimit(self, v12, v13);
  v16 = objc_msgSend_desiredKeys(self, v14, v15);
  v19 = objc_msgSend_copy(v16, v17, v18);
  desiredKeys = v4->_desiredKeys;
  v4->_desiredKeys = v19;

  v4->_fetchNewestChangesFirst = objc_msgSend_fetchNewestChangesFirst(self, v21, v22);
  v4->_fetchChangesMadeByThisDevice = objc_msgSend_fetchChangesMadeByThisDevice(self, v23, v24);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v25 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_previousServerChangeToken(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v25, v8, v7, @"previousServerChangeToken");

  v11 = objc_msgSend_desiredKeys(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v25, v12, v11, @"desiredKeys");

  v15 = objc_msgSend_resultsLimit(self, v13, v14);
  objc_msgSend_encodeInteger_forKey_(v25, v16, v15, @"resultsLimit");
  NewestChangesFirst = objc_msgSend_fetchNewestChangesFirst(self, v17, v18);
  objc_msgSend_encodeBool_forKey_(v25, v20, NewestChangesFirst, @"newestFirst");
  ChangesMadeByThisDevice = objc_msgSend_fetchChangesMadeByThisDevice(self, v21, v22);
  objc_msgSend_encodeBool_forKey_(v25, v24, ChangesMadeByThisDevice, @"fetchChangesMadeByThisDevice");
  objc_autoreleasePoolPop(v4);
}

- (CKFetchRecordZoneChangesOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CKFetchRecordZoneChangesOptions;
  v5 = [(CKFetchRecordZoneChangesOptions *)&v23 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"previousServerChangeToken");
    previousServerChangeToken = v5->_previousServerChangeToken;
    v5->_previousServerChangeToken = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v15 = objc_msgSend_setWithObjects_(v11, v14, v12, v13, 0);
    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v16, v15, @"desiredKeys");
    desiredKeys = v5->_desiredKeys;
    v5->_desiredKeys = v17;

    v5->_resultsLimit = objc_msgSend_decodeIntegerForKey_(v4, v19, @"resultsLimit");
    v5->_fetchNewestChangesFirst = objc_msgSend_decodeBoolForKey_(v4, v20, @"newestFirst");
    v5->_fetchChangesMadeByThisDevice = objc_msgSend_decodeBoolForKey_(v4, v21, @"fetchChangesMadeByThisDevice");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end