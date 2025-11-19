@interface CKSQLiteTableEntry
+ (Class)tableClass;
- (BOOL)isEqual:(id)a3;
- (CKSQLiteTableEntry)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSQLiteTableEntry

+ (Class)tableClass
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v8, a2, a1, @"CKSQLiteTable.m", 438, @"table class not set for %@", v7);

  return 0;
}

- (CKSQLiteTableEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKSQLiteTableEntry;
  v5 = [(CKSQLiteTableEntry *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_tableClass(v6, v7, v8);
    objc_msgSend_decodeEntry_withCoder_(v9, v10, v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = objc_opt_class();
  v7 = objc_msgSend_tableClass(v4, v5, v6);
  objc_msgSend_encodeEntry_withCoder_(v7, v8, self, v9);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v7 = objc_msgSend_tableClass(v4, v5, v6);

  return MEMORY[0x1EEE66B58](v7, sel_copyOfEntry_, self);
}

- (id)description
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_tableClass(v3, v4, v5);

  return objc_msgSend_descriptionOfEntry_(v6, v7, self);
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_tableClass(v3, v4, v5);

  return MEMORY[0x1EEE66B58](v6, sel_hashForEntry_, self);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_tableClass(v5, v6, v7);
  LOBYTE(self) = objc_msgSend_entriesHaveEqualProperties_other_includePrimaryKey_(v8, v9, self, v4, 0);

  return self;
}

@end