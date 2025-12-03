@interface _BSSqliteDeferredPreparedSimpleStatement
- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error;
@end

@implementation _BSSqliteDeferredPreparedSimpleStatement

- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error
{
  bindingsCopy = bindings;
  handlerCopy = handler;
  if (self->_deferredSql)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    WeakRetained = objc_loadWeakRetained(&self->super.super._dbConnection);
    v12 = WeakRetained;
    if (!WeakRetained)
    {
      v13 = 21;
      *(v19 + 6) = 21;
      if (!error)
      {
LABEL_8:

        _Block_object_dispose(&v18, 8);
LABEL_12:
        v14 = 0;
        goto LABEL_13;
      }

LABEL_7:
      *error = [(_BSSqlitePreparedSimpleStatement *)self _sqliteError:v13];
      goto LABEL_8;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87___BSSqliteDeferredPreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke;
    v17[3] = &unk_1E72CAD58;
    v17[4] = self;
    v17[5] = &v18;
    v17[6] = a2;
    [(BSSqliteDatabaseConnection *)WeakRetained performSyncWithDatabase:v17];
    v13 = *(v19 + 6);
    if (v13)
    {
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    _Block_object_dispose(&v18, 8);
  }

  if (!self->super._statement)
  {
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = _BSSqliteDeferredPreparedSimpleStatement;
  v14 = [(_BSSqlitePreparedSimpleStatement *)&v16 executeWithBindings:bindingsCopy resultRowHandler:handlerCopy error:error];
LABEL_13:

  return v14;
}

@end