@interface CKRecordZoneID
+ (id)cachedRecordZoneIDWithName:(id)name ownerName:(id)ownerName anonymousCKUserID:(id)d databaseScope:(int64_t)scope;
+ (void)initialize;
- (BOOL)hasSameOwnerAs:(id)as;
- (BOOL)isDefaultRecordZoneID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSystemRecordZoneID;
- (CKRecordZoneID)init;
- (CKRecordZoneID)initWithCoder:(id)coder;
- (CKRecordZoneID)initWithSqliteRepresentation:(id)representation;
- (CKRecordZoneID)initWithZoneName:(NSString *)zoneName ownerName:(NSString *)ownerName;
- (CKRecordZoneID)initWithZoneName:(id)name ownerName:(id)ownerName anonymousCKUserID:(id)d databaseScope:(int64_t)scope;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (id)_initWithZoneName:(id)name ownerName:(id)ownerName anonymousCKUserID:(id)d databaseScope:(int64_t)scope;
- (id)copyWithAnonymousCKUserID:(id)d;
- (id)sqliteRepresentation;
- (int64_t)compareToRecordZoneID:(id)d;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRecordZoneID

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_zoneName(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_ownerName(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_anonymousCKUserID(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

- (id)sqliteRepresentation
{
  v4 = objc_msgSend_anonymousCKUserID(self, a2, v2);
  v5 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_zoneName(self, v6, v7);
  v11 = objc_msgSend_ownerName(self, v9, v10);
  v13 = v11;
  if (v4)
  {
    objc_msgSend_stringWithFormat_(v5, v12, @"%@:%@%@%@", v8, v11, @":", v4);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v5, v12, @"%@:%@%@%@", v8, v11, &stru_1EFA32970, &stru_1EFA32970);
  }
  v14 = ;

  return v14;
}

- (CKRecordZoneID)init
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [CKException alloc];
  v6 = objc_msgSend_initWithName_format_(v4, v5, *MEMORY[0x1E695D940], @"You must call [%@ initWithZoneName:ownerName:]", v3);
  objc_exception_throw(v6);
}

+ (id)cachedRecordZoneIDWithName:(id)name ownerName:(id)ownerName anonymousCKUserID:(id)d databaseScope:(int64_t)scope
{
  nameCopy = name;
  ownerNameCopy = ownerName;
  dCopy = d;
  v41 = 0;
  v13 = _CKCheckArgument("zoneName", nameCopy, 0, 1, 0, &v41);
  v14 = v41;
  v15 = v14;
  if ((v13 & 1) == 0 || (v14, v40 = 0, v16 = _CKCheckArgument("ownerName", ownerNameCopy, 0, 1, 0, &v40), v17 = v40, v15 = v17, (v16 & 1) == 0))
  {
    v30 = [CKException alloc];
    v33 = objc_msgSend_code(v15, v31, v32);
    v36 = objc_msgSend_localizedDescription(v15, v34, v35);
    v38 = objc_msgSend_initWithCode_format_(v30, v37, v33, @"%@", v36);
    v39 = v38;

    objc_exception_throw(v38);
  }

  if (qword_1ED4B61E8 != -1)
  {
    dispatch_once(&qword_1ED4B61E8, &unk_1EFA2EFE8);
  }

  v18 = [CKTuple4 alloc];
  v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v19, scope);
  v22 = objc_msgSend_initWithObject1_object2_object3_object4_(v18, v21, nameCopy, ownerNameCopy, dCopy, v20);

  v23 = qword_1ED4B61E0;
  objc_sync_enter(v23);
  v25 = objc_msgSend_objectForKey_(qword_1ED4B61E0, v24, v22);
  if (!v25)
  {
    v26 = [self alloc];
    v25 = objc_msgSend__initWithZoneName_ownerName_anonymousCKUserID_databaseScope_(v26, v27, nameCopy, ownerNameCopy, dCopy, scope);
    objc_msgSend_setObject_forKey_(qword_1ED4B61E0, v28, v25, v22);
  }

  objc_sync_exit(v23);

  return v25;
}

- (id)_initWithZoneName:(id)name ownerName:(id)ownerName anonymousCKUserID:(id)d databaseScope:(int64_t)scope
{
  nameCopy = name;
  ownerNameCopy = ownerName;
  dCopy = d;
  v27.receiver = self;
  v27.super_class = CKRecordZoneID;
  v15 = [(CKRecordZoneID *)&v27 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(nameCopy, v13, v14);
    zoneName = v15->_zoneName;
    v15->_zoneName = v16;

    v20 = objc_msgSend_copy(ownerNameCopy, v18, v19);
    ownerName = v15->_ownerName;
    v15->_ownerName = v20;

    v24 = objc_msgSend_copy(dCopy, v22, v23);
    anonymousCKUserID = v15->_anonymousCKUserID;
    v15->_anonymousCKUserID = v24;

    v15->_databaseScope = scope;
  }

  return v15;
}

- (CKRecordZoneID)initWithZoneName:(id)name ownerName:(id)ownerName anonymousCKUserID:(id)d databaseScope:(int64_t)scope
{
  dCopy = d;
  ownerNameCopy = ownerName;
  nameCopy = name;
  v13 = objc_opt_class();
  v15 = objc_msgSend_cachedRecordZoneIDWithName_ownerName_anonymousCKUserID_databaseScope_(v13, v14, nameCopy, ownerNameCopy, dCopy, scope);

  return v15;
}

- (CKRecordZoneID)initWithZoneName:(NSString *)zoneName ownerName:(NSString *)ownerName
{
  v6 = zoneName;
  v7 = ownerName;
  v27 = 0;
  v8 = _CKCheckArgument("zoneName", v6, 0, 1, 0, &v27);
  v9 = v27;
  if ((v8 & 1) == 0 || (v9, v26 = 0, v10 = _CKCheckArgument("ownerName", v7, 0, 1, 0, &v26), v9 = v26, (v10 & 1) == 0))
  {
    v15 = v9;
    v16 = [CKException alloc];
    v19 = objc_msgSend_code(v15, v17, v18);
    v22 = objc_msgSend_localizedDescription(v15, v20, v21);
    v24 = objc_msgSend_initWithCode_format_(v16, v23, v19, @"%@", v22);
    v25 = v24;

    objc_exception_throw(v24);
  }

  v11 = objc_opt_class();
  v13 = objc_msgSend_cachedRecordZoneIDWithName_ownerName_anonymousCKUserID_databaseScope_(v11, v12, v6, v7, 0, 0);

  return v13;
}

- (id)copyWithAnonymousCKUserID:(id)d
{
  dCopy = d;
  v5 = objc_opt_class();
  v8 = objc_msgSend_zoneName(self, v6, v7);
  v11 = objc_msgSend_ownerName(self, v9, v10);
  v14 = objc_msgSend_databaseScope(self, v12, v13);
  v16 = objc_msgSend_cachedRecordZoneIDWithName_ownerName_anonymousCKUserID_databaseScope_(v5, v15, v8, v11, dCopy, v14);

  return v16;
}

- (CKRecordZoneID)initWithSqliteRepresentation:(id)representation
{
  representationCopy = representation;
  if (objc_msgSend_length(representationCopy, v5, v6))
  {
    v8 = objc_msgSend_componentsSeparatedByString_(representationCopy, v7, @":");
    if (objc_msgSend_count(v8, v9, v10) < 3)
    {
      if (objc_msgSend_count(v8, v11, v12) < 2)
      {
        selfCopy = 0;
        goto LABEL_9;
      }

      v13 = objc_msgSend_objectAtIndexedSubscript_(v8, v20, 1);
      v15 = objc_msgSend_objectAtIndexedSubscript_(v8, v21, 0);
      self = objc_msgSend_initWithZoneName_ownerName_(self, v22, v15, v13);
    }

    else
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(v8, v11, 0);
      v15 = objc_msgSend_objectAtIndexedSubscript_(v8, v14, 1);
      v17 = objc_msgSend_objectAtIndexedSubscript_(v8, v16, 2);
      self = objc_msgSend_initWithZoneName_ownerName_anonymousCKUserID_(self, v18, v13, v15, v17);
    }

    selfCopy = self;
LABEL_9:

    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_10:

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
  v6 = objc_msgSend_zoneName(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"zoneName", v6, 0);

  v10 = objc_msgSend_ownerName(self, v8, v9);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"ownerName", v10, 0);

  v16 = objc_msgSend_anonymousCKUserID(self, v12, v13);
  if (v16)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v14, @"anonymousCKUserID", v16, 0);
  }

  if (objc_msgSend_databaseScope(self, v14, v15))
  {
    v19 = MEMORY[0x1E696AD98];
    v20 = objc_msgSend_databaseScope(self, v17, v18);
    v22 = objc_msgSend_numberWithInteger_(v19, v21, v20);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v23, @"databaseScope", v22, 0);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (objc_msgSend_databaseScope(self, v6, v7) && objc_msgSend_databaseScope(v5, v8, v9))
      {
        v10 = objc_msgSend_databaseScope(self, v8, v9);
        v13 = v10 == objc_msgSend_databaseScope(v5, v11, v12);
      }

      else
      {
        v13 = 1;
      }

      v15 = objc_msgSend_zoneName(self, v8, v9);
      v18 = objc_msgSend_zoneName(v5, v16, v17);
      if (CKObjectsAreBothNilOrEqual(v15, v18))
      {
        v21 = objc_msgSend_ownerName(self, v19, v20);
        v24 = objc_msgSend_ownerName(v5, v22, v23);
        if (CKObjectsAreBothNilOrEqual(v21, v24))
        {
          v27 = objc_msgSend_anonymousCKUserID(self, v25, v26);
          v30 = objc_msgSend_anonymousCKUserID(v5, v28, v29);
          v14 = CKObjectsAreBothNilOrEqual(v27, v30) & v13;
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_zoneName(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"ZoneName");

  v11 = objc_msgSend_ownerName(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"ownerName");

  v15 = objc_msgSend_anonymousCKUserID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"anonymousCKUserID");

  v19 = objc_msgSend_databaseScope(self, v17, v18);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v20, v19, @"databaseScopeKey");
  objc_autoreleasePoolPop(v4);
}

- (CKRecordZoneID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"ZoneName");
  v9 = objc_opt_class();
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v10, v9, @"ownerName");
  v12 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"anonymousCKUserID");
  v16 = objc_msgSend_decodeIntegerForKey_(coderCopy, v15, @"databaseScopeKey");
  v26 = 0;
  v17 = _CKCheckArgument("zoneName", v8, 0, 1, 0, &v26);
  v18 = v26;
  v20 = v18;
  if (!v17)
  {
    v22 = v18;
LABEL_6:
    objc_msgSend_failWithError_(coderCopy, v19, v20);
    selfCopy = 0;
    goto LABEL_7;
  }

  v25 = v18;
  v21 = _CKCheckArgument("ownerName", v11, 0, 1, 0, &v25);
  v22 = v25;

  if ((v21 & 1) == 0)
  {
    v20 = v22;
    goto LABEL_6;
  }

  self = objc_msgSend_initWithZoneName_ownerName_anonymousCKUserID_databaseScope_(self, v19, v8, v11, v14, v16);
  selfCopy = self;
LABEL_7:

  objc_autoreleasePoolPop(v5);
  return selfCopy;
}

- (int64_t)compareToRecordZoneID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_zoneName(self, v5, v6);
  v10 = objc_msgSend_zoneName(dCopy, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  if (!v12)
  {
    v15 = objc_msgSend_ownerName(self, v13, v14);
    v18 = objc_msgSend_ownerName(dCopy, v16, v17);
    v20 = objc_msgSend_compare_(v15, v19, v18);

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

- (BOOL)isDefaultRecordZoneID
{
  v3 = objc_msgSend_zoneName(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v3, v4, @"_defaultZone");

  return isEqualToString;
}

- (BOOL)isSystemRecordZoneID
{
  v3 = objc_msgSend_zoneName(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v3, v4, @"_systemZone");

  return isEqualToString;
}

- (BOOL)hasSameOwnerAs:(id)as
{
  if (self->_databaseScope == *(as + 4))
  {
    return objc_msgSend_isEqualToString_(self->_ownerName, a2, *(as + 2));
  }

  else
  {
    return 0;
  }
}

- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index
{
  statementCopy = statement;
  v10 = objc_msgSend_sqliteRepresentation(self, v7, v8);
  objc_msgSend_bindText_atIndex_(statementCopy, v9, v10, index);
}

@end