@interface CKAggregateZonePCSOperationInfo
- (CKAggregateZonePCSOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKAggregateZonePCSOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = CKAggregateZonePCSOperationInfo;
  [(CKDatabaseOperationInfo *)&v14 encodeWithCoder:v4];
  v8 = objc_msgSend_sourceZoneIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"sourceZoneIDs");

  v12 = objc_msgSend_targetZone(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"targetZone");

  objc_autoreleasePoolPop(v5);
}

- (CKAggregateZonePCSOperationInfo)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CKAggregateZonePCSOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v22, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"sourceZoneIDs");
    sourceZoneIDs = v5->_sourceZoneIDs;
    v5->_sourceZoneIDs = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"targetZone");
    targetZone = v5->_targetZone;
    v5->_targetZone = v17;

    objc_autoreleasePoolPop(v6);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end