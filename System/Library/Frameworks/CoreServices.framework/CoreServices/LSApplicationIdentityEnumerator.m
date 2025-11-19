@interface LSApplicationIdentityEnumerator
- (LSApplicationIdentityEnumerator)initWithAppEnumerationOptions:(unint64_t)a3;
- (id)nextObject;
@end

@implementation LSApplicationIdentityEnumerator

- (LSApplicationIdentityEnumerator)initWithAppEnumerationOptions:(unint64_t)a3
{
  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&CurrentContext, v5, 0);

  v23.receiver = self;
  v23.super_class = LSApplicationIdentityEnumerator;
  v7 = [(LSEnumerator *)&v23 _initWithContext:v6];
  if (v7)
  {
    if (v6)
    {
      v8 = [[_LSApplicationRecordEnumerator alloc] initWithContext:v6 volumeURL:0 options:a3];
      v9 = v7[5];
      v7[5] = v8;

      v10 = v7[7];
      v7[7] = 0;

      objc_initWeak(&location, v7);
      v11 = v7[5];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__LSApplicationIdentityEnumerator_initWithAppEnumerationOptions___block_invoke;
      v20[3] = &unk_1E6A18E68;
      objc_copyWeak(&v21, &location);
      [v11 setErrorHandler:v20];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = +[_LSDServiceDomain defaultServiceDomain];
      v13 = LaunchServices::Database::Context::_get(&CurrentContext, v12, 0);

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v27;
      }

      v15 = v7[4];
      v7[4] = v14;
    }
  }

  v16 = v7;
  if (CurrentContext && v26 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v17 = v25;
  CurrentContext = 0;
  v25 = 0;

  v26 = 0;
  v18 = v27;
  v27 = 0;

  return v16;
}

void __65__LSApplicationIdentityEnumerator_initWithAppEnumerationOptions___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    _LSEnumeratorFireErrorHandler(WeakRetained, v5);
  }
}

- (id)nextObject
{
  ctxError = self->_ctxError;
  if (ctxError)
  {
    _LSEnumeratorFireErrorHandler(self, ctxError);
  }

  else
  {
    do
    {
      currentRecordIdentitiesEnumerator = self->_currentRecordIdentitiesEnumerator;
      if (!currentRecordIdentitiesEnumerator || ([(NSEnumerator *)currentRecordIdentitiesEnumerator nextObject], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        NextObject = _LSDBEnumeratorGetNextObject(self->_recordEnumerator);
        currentRecord = self->_currentRecord;
        self->_currentRecord = NextObject;

        v8 = [(LSApplicationRecord *)self->_currentRecord identities];
        v9 = [v8 objectEnumerator];
        v10 = self->_currentRecordIdentitiesEnumerator;
        self->_currentRecordIdentitiesEnumerator = v9;

        v5 = [(NSEnumerator *)self->_currentRecordIdentitiesEnumerator nextObject];
        if (!v5)
        {
          continue;
        }
      }

      v11 = [(LSEnumerator *)self filter];
      v12 = (v11)[2](v11, v5);

      if (v12)
      {
        goto LABEL_10;
      }
    }

    while (self->_currentRecord);
  }

  v5 = 0;
LABEL_10:

  return v5;
}

@end