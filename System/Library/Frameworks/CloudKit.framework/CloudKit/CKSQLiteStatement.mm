@interface CKSQLiteStatement
- (void)bindText:(id)text atIndex:(unint64_t)index;
- (void)invalidate:(id)invalidate;
@end

@implementation CKSQLiteStatement

- (void)invalidate:(id)invalidate
{
  if (!self->_error)
  {
    invalidateCopy = invalidate;
    WeakRetained = objc_loadWeakRetained(&self->_SQLite);
    v7 = objc_msgSend_handleDatabaseError_args_(WeakRetained, v6, invalidateCopy, &v9);

    error = self->_error;
    self->_error = v7;

    if (self->_error)
    {
      sub_18840103C(self);
    }
  }
}

- (void)bindText:(id)text atIndex:(unint64_t)index
{
  textCopy = text;
  v9 = textCopy;
  v19 = textCopy;
  if (!self->_reset)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], textCopy, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKSQLiteStatement.m", 240, @"Statement is not reset: %@", self->_SQL);

    v9 = v19;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_188680218(self, index);
    goto LABEL_8;
  }

  if (!textCopy)
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
    if (sqlite3_bind_text(handle, index + 1, v15, -1, 0))
    {
      objc_msgSend_invalidate_(self, v16, @"Error binding text at %ld: %@", index, self->_SQL);
    }
  }

LABEL_8:
}

@end