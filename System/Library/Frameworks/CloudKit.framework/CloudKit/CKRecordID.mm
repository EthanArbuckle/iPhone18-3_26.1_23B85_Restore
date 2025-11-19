@interface CKRecordID
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringAnonymousUserIDsToRecordID:(id)a3;
- (CKRecordID)init;
- (CKRecordID)initWithCoder:(id)a3;
- (CKRecordID)initWithRecordName:(NSString *)recordName;
- (CKRecordID)initWithRecordName:(NSString *)recordName zoneID:(CKRecordZoneID *)zoneID;
- (CKRecordID)initWithSqliteRepresentation:(id)a3;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (id)copyWithAnonymousCKUserID:(id)a3;
- (id)sqliteRepresentation;
- (int64_t)compareToRecordID:(id)a3;
- (unint64_t)hash;
- (unint64_t)size;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)_nilOutRecordName;
- (void)ck_bindInStatement:(id)a3 atIndex:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithAnonymousCKUserID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v10 = objc_msgSend_anonymousCKUserID(v7, v8, v9);
  v11 = CKObjectsAreBothNilOrEqual(v10, v4);

  if (v11)
  {
    v12 = self;
  }

  else
  {
    v13 = objc_alloc(objc_opt_class());
    v16 = objc_msgSend_recordName(self, v14, v15);
    v19 = objc_msgSend_zoneID(self, v17, v18);
    v21 = objc_msgSend_copyWithAnonymousCKUserID_(v19, v20, v4);
    v12 = objc_msgSend_initWithRecordName_zoneID_(v13, v22, v16, v21);
  }

  return v12;
}

- (CKRecordID)initWithSqliteRepresentation:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_componentsSeparatedByString_(v4, v7, @":");
    if (objc_msgSend_count(v8, v9, v10) < 2)
    {
      v24 = 0;
    }

    else
    {
      v11 = [CKRecordZoneID alloc];
      v13 = objc_msgSend_objectAtIndexedSubscript_(v8, v12, 0);
      v16 = objc_msgSend_length(v13, v14, v15);
      v18 = objc_msgSend_substringFromIndex_(v4, v17, v16 + 1);
      v20 = objc_msgSend_initWithSqliteRepresentation_(v11, v19, v18);

      v22 = objc_msgSend_objectAtIndexedSubscript_(v8, v21, 0);
      self = objc_msgSend_initWithRecordName_zoneID_(self, v23, v22, v20);

      v24 = self;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_sqliteRepresentation(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"sqliteRepresentation");

  v10 = objc_msgSend_properties(v3, v8, v9);

  return v10;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordName(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"recordName", v7, 0);

  v12 = objc_msgSend_zoneID(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v11, @"zoneID", v12, 0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (BOOL)isEqualIgnoringAnonymousUserIDsToRecordID:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v35 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_recordName(self, v5, v6);
      v10 = objc_msgSend_recordName(v4, v8, v9);
      if (CKObjectsAreBothNilOrEqual(v7, v10))
      {
        v13 = objc_msgSend_zoneID(self, v11, v12);
        v16 = objc_msgSend_zoneName(v13, v14, v15);
        v19 = objc_msgSend_zoneID(v4, v17, v18);
        v22 = objc_msgSend_zoneName(v19, v20, v21);
        if (CKObjectsAreBothNilOrEqual(v16, v22))
        {
          v37 = objc_msgSend_zoneID(self, v23, v24);
          v27 = objc_msgSend_ownerName(v37, v25, v26);
          v30 = objc_msgSend_zoneID(v4, v28, v29);
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

- (CKRecordID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"RecordName");
  v9 = objc_opt_class();
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v10, v9, @"ZoneID");
  objc_autoreleasePoolPop(v5);
  v13 = objc_msgSend_initWithRecordName_zoneID_(self, v12, v8, v11);

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_recordName(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v13, v8, v7, @"RecordName");

  v11 = objc_msgSend_zoneID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v13, v12, v11, @"ZoneID");

  objc_autoreleasePoolPop(v4);
}

- (int64_t)compareToRecordID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordName(self, v5, v6);
  v10 = objc_msgSend_recordName(v4, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  if (!v12)
  {
    v15 = objc_msgSend_zoneID(self, v13, v14);
    v18 = objc_msgSend_zoneID(v4, v16, v17);
    v20 = objc_msgSend_compareToRecordZoneID_(v15, v19, v18);

    v21 = -1;
    if (self >= v4)
    {
      v21 = self > v4;
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

- (void)ck_bindInStatement:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v10 = objc_msgSend_sqliteRepresentation(self, v7, v8);
  objc_msgSend_bindText_atIndex_(v6, v9, v10, a4);
}

@end