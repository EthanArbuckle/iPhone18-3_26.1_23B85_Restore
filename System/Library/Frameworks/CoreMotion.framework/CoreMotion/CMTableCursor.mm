@interface CMTableCursor
- (BOOL)isEqual:(id)a3;
- (CMTableCursor)initWithCoder:(id)a3;
- (CMTableCursor)initWithDatatype:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMTableCursor

- (CMTableCursor)initWithDatatype:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CMTableCursor;
  v4 = [(CMTableCursor *)&v8 init];
  v4->_cachedLastRecordId = 0;
  v4->_datatype = a3;
  v4->_recordId = 0;
  v4->_tableName = objc_msgSend_string(MEMORY[0x1E696AEC0], v5, v6);
  return v4;
}

- (void)dealloc
{
  tableName = self->_tableName;
  if (tableName)
  {
  }

  v4.receiver = self;
  v4.super_class = CMTableCursor;
  [(CMTableCursor *)&v4 dealloc];
}

- (CMTableCursor)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CMTableCursor;
  v5 = [(CMTableCursor *)&v11 init];
  if (v5)
  {
    v5->_datatype = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMTableCursorCodingKeyTable");
    v5->_recordId = objc_msgSend_decodeIntegerForKey_(a3, v6, @"kCMTableCursorCodingKeyRecordId");
    v5->_cachedLastRecordId = objc_msgSend_decodeIntegerForKey_(a3, v7, @"kCMTableCursorCodingKeyCachedLastRecordId");
    v8 = objc_opt_class();
    v5->_tableName = objc_msgSend_decodeObjectOfClass_forKey_(a3, v9, v8, @"kCMTableCursorCodingKeyTableName");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->_datatype, @"kCMTableCursorCodingKeyTable");
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_recordId, @"kCMTableCursorCodingKeyRecordId");
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->_cachedLastRecordId, @"kCMTableCursorCodingKeyCachedLastRecordId");
  tableName = self->_tableName;

  objc_msgSend_encodeObject_forKey_(a3, v7, tableName, @"kCMTableCursorCodingKeyTableName");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v9 = objc_msgSend_initWithDatatype_(v7, v8, self->_datatype);
  v9[4] = objc_msgSend_copyWithZone_(self->_tableName, v10, a3);
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_datatype(self, v5, v6);
  if (v7 != objc_msgSend_datatype(a3, v8, v9))
  {
    return 0;
  }

  v12 = objc_msgSend_recordId(self, v10, v11);
  if (v12 != objc_msgSend_recordId(a3, v13, v14))
  {
    return 0;
  }

  RecordId = objc_msgSend_cachedLastRecordId(self, v15, v16);
  if (RecordId != objc_msgSend_cachedLastRecordId(a3, v18, v19))
  {
    return 0;
  }

  v22 = objc_msgSend_tableName(self, v20, v21);
  v26 = objc_msgSend_tableName(a3, v23, v24);

  return objc_msgSend_isEqualToString_(v22, v25, v26);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_datatype(self, a2, v2);
  v7 = objc_msgSend_recordId(self, v5, v6) - v4 + 32 * v4;
  v10 = objc_msgSend_cachedLastRecordId(self, v8, v9) - v7 + 32 * v7;
  v13 = objc_msgSend_tableName(self, v11, v12);
  return objc_msgSend_hash(v13, v14, v15) - v10 + 32 * v10 + 923521;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_datatype(self, v6, v7);
  v11 = objc_msgSend_tableName(self, v9, v10);
  v14 = objc_msgSend_recordId(self, v12, v13);
  RecordId = objc_msgSend_cachedLastRecordId(self, v15, v16);
  return objc_msgSend_stringWithFormat_(v3, v18, @"%@, <table, %lu, tableName, %@, recordId, %lu, lastRecordId, %lu>", v5, v8, v11, v14, RecordId);
}

@end