@interface CKRecordID
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIgnoringAnonymousUserIDsToRecordID:(id)d;
- (CKRecordID)init;
- (CKRecordID)initWithCoder:(id)coder;
- (CKRecordID)initWithRecordName:(NSString *)recordName;
- (CKRecordID)initWithRecordName:(NSString *)recordName zoneID:(CKRecordZoneID *)zoneID;
- (CKRecordID)initWithSqliteRepresentation:(id)representation;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (id)copyWithAnonymousCKUserID:(id)d;
- (id)sqliteRepresentation;
- (int64_t)compareToRecordID:(id)d;
- (unint64_t)hash;
- (unint64_t)size;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)_nilOutRecordName;
- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRecordID

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_recordName(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_zoneID(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (unint64_t)size
{
  v4 = objc_msgSend_recordName(self, a2, v2);
  v7 = objc_msgSend_length(v4, v5, v6);
  v8 = v7 + 2;
  if (v7 >= 0x80)
  {
    do
    {
      ++v8;
      v9 = v7 >> 14;
      v7 >>= 7;
    }

    while (v9);
  }

  v12 = objc_msgSend_zoneID(self, v10, v11);
  v15 = objc_msgSend_zoneName(v12, v13, v14);
  v18 = objc_msgSend_length(v15, v16, v17);
  v19 = v18 + 2;
  if (v18 >= 0x80)
  {
    do
    {
      ++v19;
      v20 = v18 >> 14;
      v18 >>= 7;
    }

    while (v20);
  }

  return v8 + v19 + 37;
}

- (id)sqliteRepresentation
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_recordName(self, a2, v2);
  v8 = objc_msgSend_zoneID(self, v6, v7);
  v11 = objc_msgSend_sqliteRepresentation(v8, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"%@:%@", v5, v11);

  return v13;
}

- (CKRecordID)init
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [CKException alloc];
  v6 = objc_msgSend_initWithName_format_(v4, v5, *MEMORY[0x1E695D940], @"You must call [%@ initWithRecordName:] or [%@ initWithRecordName:zoneID:]", v3, v3);
  objc_exception_throw(v6);
}

- (CKRecordID)initWithRecordName:(NSString *)recordName
{
  v4 = recordName;
  v7 = objc_msgSend_defaultRecordZone(CKRecordZone, v5, v6);
  v10 = objc_msgSend_zoneID(v7, v8, v9);
  v12 = objc_msgSend_initWithRecordName_zoneID_(self, v11, v4, v10);

  return v12;
}

- (CKRecordID)initWithRecordName:(NSString *)recordName zoneID:(CKRecordZoneID *)zoneID
{
  v7 = recordName;
  v8 = zoneID;
  v43 = 0;
  v9 = _CKCheckArgument("recordName", v7, 0, 1, 0, &v43);
  v10 = v43;
  if ((v9 & 1) == 0 || (v10, v42 = 0, v11 = _CKCheckArgument("zoneID", v8, 0, 1, 0, &v42), v10 = v42, (v11 & 1) == 0))
  {
    v30 = v10;
    v31 = [CKException alloc];
    v34 = objc_msgSend_code(v30, v32, v33);
    v37 = objc_msgSend_localizedDescription(v30, v35, v36);
    v39 = objc_msgSend_initWithCode_format_(v31, v38, v34, @"%@", v37);
    v40 = v39;

    objc_exception_throw(v39);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKRecordID.m", 44, @"Record identifier should be a string");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKRecordID.m", 45, @"Zone identifier should be a CKRecordZoneID");
  }

  v41.receiver = self;
  v41.super_class = CKRecordID;
  v18 = [(CKRecordID *)&v41 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(v7, v16, v17);
    v20 = v18->_recordName;
    v18->_recordName = v19;

    v23 = objc_msgSend_copy(v8, v21, v22);
    v24 = v18->_zoneID;
    v18->_zoneID = v23;
  }

  return v18;
}

- (id)copyWithAnonymousCKUserID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v10 = objc_msgSend_anonymousCKUserID(v7, v8, v9);
  v11 = CKObjectsAreBothNilOrEqual(v10, dCopy);

  if (v11)
  {
    selfCopy = self;
  }

  else
  {
    v13 = objc_alloc(objc_opt_class());
    v16 = objc_msgSend_recordName(self, v14, v15);
    v19 = objc_msgSend_zoneID(self, v17, v18);
    v21 = objc_msgSend_copyWithAnonymousCKUserID_(v19, v20, dCopy);
    selfCopy = objc_msgSend_initWithRecordName_zoneID_(v13, v22, v16, v21);
  }

  return selfCopy;
}

- (CKRecordID)initWithSqliteRepresentation:(id)representation
{
  representationCopy = representation;
  if (objc_msgSend_length(representationCopy, v5, v6))
  {
    v8 = objc_msgSend_componentsSeparatedByString_(representationCopy, v7, @":");
    if (objc_msgSend_count(v8, v9, v10) < 2)
    {
      selfCopy = 0;
    }

    else
    {
      v11 = [CKRecordZoneID alloc];
      v13 = objc_msgSend_objectAtIndexedSubscript_(v8, v12, 0);
      v16 = objc_msgSend_length(v13, v14, v15);
      v18 = objc_msgSend_substringFromIndex_(representationCopy, v17, v16 + 1);
      v20 = objc_msgSend_initWithSqliteRepresentation_(v11, v19, v18);

      v22 = objc_msgSend_objectAtIndexedSubscript_(v8, v21, 0);
      self = objc_msgSend_initWithRecordName_zoneID_(self, v23, v22, v20);

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_sqliteRepresentation(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"sqliteRepresentation");

  v10 = objc_msgSend_properties(v3, v8, v9);

  return v10;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_recordName(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"recordName", v7, 0);

  v12 = objc_msgSend_zoneID(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"zoneID", v12, 0);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_recordName(self, v6, v7);
      v11 = objc_msgSend_recordName(v5, v9, v10);
      if (CKObjectsAreBothNilOrEqual(v8, v11))
      {
        v14 = objc_msgSend_zoneID(self, v12, v13);
        v17 = objc_msgSend_zoneID(v5, v15, v16);
        v18 = CKObjectsAreBothNilOrEqual(v14, v17);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (BOOL)isEqualIgnoringAnonymousUserIDsToRecordID:(id)d
{
  dCopy = d;
  if (self == dCopy)
  {
    v35 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_recordName(self, v5, v6);
      v10 = objc_msgSend_recordName(dCopy, v8, v9);
      if (CKObjectsAreBothNilOrEqual(v7, v10))
      {
        v13 = objc_msgSend_zoneID(self, v11, v12);
        v16 = objc_msgSend_zoneName(v13, v14, v15);
        v19 = objc_msgSend_zoneID(dCopy, v17, v18);
        v22 = objc_msgSend_zoneName(v19, v20, v21);
        if (CKObjectsAreBothNilOrEqual(v16, v22))
        {
          v37 = objc_msgSend_zoneID(self, v23, v24);
          v27 = objc_msgSend_ownerName(v37, v25, v26);
          v30 = objc_msgSend_zoneID(dCopy, v28, v29);
          objc_msgSend_ownerName(v30, v31, v32);
          v38 = v16;
          v34 = v33 = v13;
          v35 = CKObjectsAreBothNilOrEqual(v27, v34);

          v13 = v33;
          v16 = v38;
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  return v35;
}

- (void)_nilOutRecordName
{
  recordName = self->_recordName;
  self->_recordName = 0;
  MEMORY[0x1EEE66BB8]();
}

- (CKRecordID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"RecordName");
  v9 = objc_opt_class();
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v10, v9, @"ZoneID");
  objc_autoreleasePoolPop(v5);
  v13 = objc_msgSend_initWithRecordName_zoneID_(self, v12, v8, v11);

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_recordName(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"RecordName");

  v11 = objc_msgSend_zoneID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"ZoneID");

  objc_autoreleasePoolPop(v4);
}

- (int64_t)compareToRecordID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_recordName(self, v5, v6);
  v10 = objc_msgSend_recordName(dCopy, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  if (!v12)
  {
    v15 = objc_msgSend_zoneID(self, v13, v14);
    v18 = objc_msgSend_zoneID(dCopy, v16, v17);
    v20 = objc_msgSend_compareToRecordZoneID_(v15, v19, v18);

    v21 = -1;
    if (self >= dCopy)
    {
      v21 = self > dCopy;
    }

    if (v20)
    {
      v12 = v20;
    }

    else
    {
      v12 = v21;
    }
  }

  return v12;
}

- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index
{
  statementCopy = statement;
  v10 = objc_msgSend_sqliteRepresentation(self, v7, v8);
  objc_msgSend_bindText_atIndex_(statementCopy, v9, v10, index);
}

@end