@interface CKSQLiteCompiledStatementDecoder
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (CKSQLiteCompiledStatementDecoder)initWithStatement:(id)statement;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)fillProperties;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
@end

@implementation CKSQLiteCompiledStatementDecoder

- (CKSQLiteCompiledStatementDecoder)initWithStatement:(id)statement
{
  statementCopy = statement;
  v11.receiver = self;
  v11.super_class = CKSQLiteCompiledStatementDecoder;
  v6 = [(CKSQLiteCompiledStatementDecoder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statement, statement);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    propertyValues = v7->_propertyValues;
    v7->_propertyValues = v8;
  }

  return v7;
}

- (BOOL)containsValueForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, key);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)decodeBoolForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, key);
  v6 = objc_msgSend_BOOLValue(v3, v4, v5);

  return v6;
}

- (double)decodeDoubleForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, key);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (float)decodeFloatForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, key);
  objc_msgSend_floatValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (int)decodeIntForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, key);
  v6 = objc_msgSend_intValue(v3, v4, v5);

  return v6;
}

- (int)decodeInt32ForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, key);
  v6 = objc_msgSend_longValue(v3, v4, v5);

  return v6;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self->_propertyValues, a2, key);
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