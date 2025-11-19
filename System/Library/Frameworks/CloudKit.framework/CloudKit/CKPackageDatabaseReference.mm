@interface CKPackageDatabaseReference
- (void)dealloc;
@end

@implementation CKPackageDatabaseReference

- (void)dealloc
{
  if (self->_referenceType != 3)
  {
    v4 = objc_msgSend_db(self->_sqlitePackage, a2, v2);
    v6 = objc_msgSend_packageDatabaseInSQLiteDatabase_error_(CKPackageDatabase, v5, v4, 0);
    v8 = objc_msgSend_deleteReference_(v6, v7, self);
  }

  v9.receiver = self;
  v9.super_class = CKPackageDatabaseReference;
  [(CKPackageDatabaseReference *)&v9 dealloc];
}

@end