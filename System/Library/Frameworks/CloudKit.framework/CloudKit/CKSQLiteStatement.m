@interface CKSQLiteStatement
- (void)bindText:(id)a3 atIndex:(unint64_t)a4;
- (void)invalidate:(id)a3;
@end

@implementation CKSQLiteStatement

- (void)invalidate:(id)a3
{
  if (!self->_error)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_SQLite);
    v7 = objc_msgSend_handleDatabaseError_args_(WeakRetained, v6, v4, &v9);

    error = self->_error;
    self->_error = v7;

    if (self->_error)
    {
      sub_18840103C(self);
    }
  }
}

- (void)bindText:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  v9 = v7;
  v19 = v7;
  if (!self->_reset)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKSQLiteStatement.m", 240, @"Statement is not reset: %@", self->_SQL);

    v9 = v19;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_188680218(self, a4);
    goto LABEL_8;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = sub_188680710(self, v9);
  handle = self->_handle;
  if (handle)
  {
    v12 = v19;
    v15 = objc_msgSend_UTF8String(v12, v13, v14);
    if (sqlite3_bind_text(handle, a4 + 1, v15, -1, 0))
    {
      objc_msgSend_invalidate_(self, v16, @"Error binding text at %ld: %@", a4, self->_SQL);
    }
  }

LABEL_8:
}

@end