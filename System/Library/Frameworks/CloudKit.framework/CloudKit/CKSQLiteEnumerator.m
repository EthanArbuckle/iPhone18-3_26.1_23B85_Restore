@interface CKSQLiteEnumerator
- (CKSQLiteEnumerator)initWithDatabase:(id)a3 columns:(id)a4 from:(id)a5 where:(id)a6 bindings:(id)a7 orderBy:(id)a8;
- (id)nextObject;
@end

@implementation CKSQLiteEnumerator

- (CKSQLiteEnumerator)initWithDatabase:(id)a3 columns:(id)a4 from:(id)a5 where:(id)a6 bindings:(id)a7 orderBy:(id)a8
{
  v15 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v16 = a7;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = CKSQLiteEnumerator;
  v18 = [(CKSQLiteEnumerator *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_database, a3);
    objc_storeStrong(&v19->_columns, a4);
    objc_storeStrong(&v19->_tableName, a5);
    objc_storeStrong(&v19->_whereSQL, a6);
    objc_storeStrong(&v19->_bindings, a7);
    objc_storeStrong(&v19->_orderBy, a8);
    v20 = objc_alloc(MEMORY[0x1E695DF70]);
    v22 = objc_msgSend_initWithCapacity_(v20, v21, 64);
    objects = v19->_objects;
    v19->_objects = v22;
  }

  return v19;
}

- (id)nextObject
{
  index = self->_index;
  if (index == objc_msgSend_count(self->_objects, a2, v2))
  {
    objc_msgSend_removeAllObjects(self->_objects, v5, v6);
    database = self->_database;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_18867A3B8;
    v18[3] = &unk_1E70C0540;
    v18[4] = self;
    v9 = objc_msgSend_performDatabaseOperation_(database, v8, v18);
    self->_index = 0;
    self->_fetchOffset += objc_msgSend_count(self->_objects, v10, v11);
  }

  v12 = self->_index;
  if (v12 >= objc_msgSend_count(self->_objects, v5, v6))
  {
    v16 = 0;
    objectTranslator = self->_objectTranslator;
    self->_objectTranslator = 0;
  }

  else
  {
    objectTranslator = objc_msgSend_objectAtIndex_(self->_objects, v13, self->_index);
    ++self->_index;
    v15 = self->_objectTranslator;
    if (!v15)
    {
      goto LABEL_8;
    }

    v16 = v15[2](v15, objectTranslator);
  }

  objectTranslator = v16;
LABEL_8:

  return objectTranslator;
}

@end