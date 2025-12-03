@interface CKSyncEngineZoneState
- (BOOL)isEqual:(id)equal;
- (CKSyncEngineZoneState)initWithCoder:(id)coder;
- (CKSyncEngineZoneState)initWithZoneID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKSyncEngineZoneState

- (CKSyncEngineZoneState)initWithZoneID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKSyncEngineState.m", 85, @"Invalid parameter not satisfying: %@", @"zoneID");
  }

  v16.receiver = self;
  v16.super_class = CKSyncEngineZoneState;
  v10 = [(CKSyncEngineZoneState *)&v16 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(dCopy, v8, v9);
    zoneID = v10->_zoneID;
    v10->_zoneID = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_zoneID(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_zoneID(self, v6, v7);
      v11 = objc_msgSend_zoneID(v5, v9, v10);
      if (objc_msgSend_isEqual_(v8, v12, v11))
      {
        v15 = objc_msgSend_serverChangeToken(self, v13, v14);
        v18 = objc_msgSend_serverChangeToken(v5, v16, v17);
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
  }

  return v19;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_zoneID(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"zoneID", v7, 0);

  v12 = objc_msgSend_serverChangeToken(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"serverChangeToken", v12, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_zoneID(self, v8, v9);
  v12 = objc_msgSend_copyWithZone_(v10, v11, zone);
  v13 = v7[1];
  v7[1] = v12;

  v16 = objc_msgSend_serverChangeToken(self, v14, v15);
  v18 = objc_msgSend_copyWithZone_(v16, v17, zone);
  v19 = v7[2];
  v7[2] = v18;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v8 = NSStringFromSelector(sel_zoneID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  v14 = objc_msgSend_serverChangeToken(self, v10, v11);
  v12 = NSStringFromSelector(sel_serverChangeToken);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v14, v12);
}

- (CKSyncEngineZoneState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_zoneID);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v5, v6);
  v10 = objc_msgSend_initWithZoneID_(self, v9, v8);

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_serverChangeToken);
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v11, v12);
    serverChangeToken = v10->_serverChangeToken;
    v10->_serverChangeToken = v14;
  }

  return v10;
}

@end