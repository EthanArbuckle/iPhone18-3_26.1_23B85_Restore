@interface CKSQLiteCompiledStatementDecoder
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (CKSQLiteCompiledStatementDecoder)initWithStatement:(id)a3;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)fillProperties;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
@end

@implementation CKSQLiteCompiledStatementDecoder

- (CKSQLiteCompiledStatementDecoder)initWithStatement:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CKSQLiteCompiledStatementDecoder;
  v6 = [(CKSQLiteCompiledStatementDecoder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statement, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    propertyValues = v7->_propertyValues;
    v7->_propertyValues = v8;
  }

  return v7;
}

- (BOOL)containsValueForKey:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, a3);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, a3);
  v6 = objc_msgSend_BOOLValue(v3, v4, v5);

  return v6;
}

- (double)decodeDoubleForKey:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (float)decodeFloatForKey:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, a3);
  objc_msgSend_floatValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (int)decodeIntForKey:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, a3);
  v6 = objc_msgSend_intValue(v3, v4, v5);

  return v6;
}

- (int)decodeInt32ForKey:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, a3);
  v6 = objc_msgSend_longValue(v3, v4, v5);

  return v6;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, a3);
  v6 = objc_msgSend_longLongValue(v3, v4, v5);

  return v6;
}

- (id)fillProperties
{
  objc_msgSend_removeAllObjects(self->_propertyValues, a2, v2);
  statement = self->_statement;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18866E5D4;
  v7[3] = &unk_1E70C0A30;
  v7[4] = self;
  objc_msgSend_enumerateResultColumnsWithBlock_(statement, v5, v7);
  return 0;
}

@end