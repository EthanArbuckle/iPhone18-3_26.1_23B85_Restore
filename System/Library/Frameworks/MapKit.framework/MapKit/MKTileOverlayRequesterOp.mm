@interface MKTileOverlayRequesterOp
- (MKTileOverlayRequesterOp)init;
- (_MKOverlayTileRequester)delegate;
- (uint64_t)setKey:(uint64_t)key;
- (void)_cancel;
- (void)_start;
- (void)cancel;
- (void)start;
@end

@implementation MKTileOverlayRequesterOp

- (_MKOverlayTileRequester)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)setKey:(uint64_t)key
{
  *(result + 8) = key;
  *(result + 16) = a4;
  return result;
}

- (void)_cancel
{
  if (RequesterRegistry::sharedInstance(void)::onceToken != -1)
  {
    dispatch_once(&RequesterRegistry::sharedInstance(void)::onceToken, &__block_literal_global_83_38163);
  }

  *(&v3 + 1) = *&self->_anon_c[9];
  *&v3 = *&self->_anon_c[1];
  v4 = RequesterRegistry::lookup(RequesterRegistry::sharedInstance(void)::singleton, v3 >> 34);
  v5 = v4;
  if (v4)
  {
    isGeometryFlipped = [v4 isGeometryFlipped];
    v7 = *&self->_key.var0;
    if (isGeometryFlipped)
    {
      v8 = *&self->_key.var0 & 0x3F;
      v9 = *&self->_anon_c[1];
      v10 = (-1 << v7) + (v9 & 0x3FFFFFF);
      if (v10 + 1 >= 0)
      {
        v11 = (v10 + 1);
      }

      else
      {
        v11 = ~v10;
      }
    }

    else
    {
      v9 = *&self->_anon_c[1];
      v11 = v9 & 0x3FFFFFF;
      v8 = *&self->_key.var0 & 0x3F;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = v7 >> 6;
    v14 = (v9 >> 26);
    v15 = v14;
    if (isKindOfClass)
    {
      v16 = v5;
      v17 = self->_anon_c[11];
      v18 = *&self->_anon_c[9];
      if (((v18 | (v17 << 16)) >> 2) < [v16 keyframesCount])
      {
        v19 = v13;
        v20 = v11;
        v21 = v8;
        v22 = v15;
        [v16 cancelLoadingTileAtPath:&v19 keyframeIndex:?];
      }
    }

    else
    {
      v19 = v7 >> 6;
      v20 = v11;
      v21 = v8;
      v22 = v14;
      [v5 _cancelLoadingTileAtPath:&v19];
    }
  }
}

- (void)cancel
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MKTileOverlayRequesterOp_cancel__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_start
{
  *(&v4 + 1) = *&self->_anon_c[9];
  *&v4 = *&self->_anon_c[1];
  v3 = v4 >> 34;
  if (RequesterRegistry::sharedInstance(void)::onceToken != -1)
  {
    dispatch_once(&RequesterRegistry::sharedInstance(void)::onceToken, &__block_literal_global_83_38163);
  }

  v5 = RequesterRegistry::lookup(RequesterRegistry::sharedInstance(void)::singleton, v3);
  v6 = v5;
  if (v5)
  {
    isGeometryFlipped = [v5 isGeometryFlipped];
    v8 = *&self->_key.var0;
    if (isGeometryFlipped)
    {
      v9 = *&self->_key.var0 & 0x3F;
      v10 = *&self->_anon_c[1];
      v11 = (-1 << v8) + (v10 & 0x3FFFFFF);
      if (v11 + 1 >= 0)
      {
        v12 = (v11 + 1);
      }

      else
      {
        v12 = ~v11;
      }
    }

    else
    {
      v10 = *&self->_anon_c[1];
      v12 = v10 & 0x3FFFFFF;
      v9 = *&self->_key.var0 & 0x3F;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __34__MKTileOverlayRequesterOp__start__block_invoke_2;
    v27[3] = &unk_1E76CCC50;
    v27[4] = self;
    v14 = MEMORY[0x1A58E9F30](v27);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = v8 >> 6;
    v17 = (v10 >> 26);
    v18 = v17;
    if (isKindOfClass)
    {
      v19 = v6;
      v20 = self->_anon_c[11];
      v21 = *&self->_anon_c[9];
      if (((v21 | (v20 << 16)) >> 2) >= [v19 keyframesCount])
      {
        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:MKErrorDomain code:1 userInfo:0];
        (v14)[2](v14, 0, v22);
      }

      else
      {
        v23 = v16;
        v24 = v12;
        v25 = v9;
        v26 = v18;
        [v19 loadTileAtPath:&v23 keyframeIndex:? result:?];
      }
    }

    else
    {
      v23 = v8 >> 6;
      v24 = v12;
      v25 = v9;
      v26 = v17;
      [v6 loadTileAtPath:&v23 result:v14];
    }
  }

  else
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__MKTileOverlayRequesterOp__start__block_invoke;
    block[3] = &unk_1E76CDB38;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }
}

void __34__MKTileOverlayRequesterOp__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:MKErrorDomain code:1 userInfo:0];
  [WeakRetained _operationFailed:v2 error:v3];
}

void __34__MKTileOverlayRequesterOp__start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MKTileOverlayRequesterOp__start__block_invoke_3;
  block[3] = &unk_1E76CCC28;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void __34__MKTileOverlayRequesterOp__start__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setData:*(a1 + 40)];
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = *(a1 + 32);
  v5 = WeakRetained;
  if (v2)
  {
    [WeakRetained _operationFinished:v4];
  }

  else
  {
    [WeakRetained _operationFailed:v4 error:*(a1 + 48)];
  }
}

- (void)start
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MKTileOverlayRequesterOp_start__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (MKTileOverlayRequesterOp)init
{
  v8.receiver = self;
  v8.super_class = MKTileOverlayRequesterOp;
  v2 = [(MKTileOverlayRequesterOp *)&v8 init];
  if (v2)
  {
    if (_tileRequesterCallbackWorkloop(void)::once != -1)
    {
      dispatch_once(&_tileRequesterCallbackWorkloop(void)::once, &__block_literal_global_87_38172);
    }

    v3 = _tileRequesterCallbackWorkloop(void)::workloop;
    v4 = geo_dispatch_queue_create_with_target();
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = v2;
  }

  return v2;
}

@end