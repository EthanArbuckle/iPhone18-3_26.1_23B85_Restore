@interface APDatabaseColumn
- (APDatabaseColumn)initWithName:(id)name forColumnType:(int64_t)type withValue:(id)value;
- (id)description;
@end

@implementation APDatabaseColumn

- (APDatabaseColumn)initWithName:(id)name forColumnType:(int64_t)type withValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if (!nameCopy)
  {
    APSimulateCrash(5, @"APDatabaseColumn initialized with name == nil.", 0);
  }

  v14.receiver = self;
  v14.super_class = APDatabaseColumn;
  v11 = [(APDatabaseColumn *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_type = type;
    objc_storeStrong(&v12->_value, value);
  }

  return v12;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_name(self, a2, v2, v3);
  v10 = objc_msgSend_value(self, v7, v8, v9);
  v13 = objc_msgSend_stringWithFormat_(v5, v11, @"%@: %@", v12, v6, v10);

  return v13;
}

@end