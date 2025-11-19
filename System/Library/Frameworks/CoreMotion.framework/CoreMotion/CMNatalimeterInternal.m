@interface CMNatalimeterInternal
- (CMNatalimeterInternal)init;
- (void)_handleQueryResponse:(shared_ptr<CLConnectionMessage>)a3 withHandler:(id)a4;
- (void)_queryAbsoluteNatalimetryDataSinceDataRecord:(id)a3 withHandler:(id)a4;
- (void)_queryAbsoluteNatalimetryDataSinceRecord:(int64_t)a3 withHandler:(id)a4;
- (void)_startAbsoluteNatalimetryDataUpdatesWithHandler:(id)a3;
- (void)_stopAbsoluteNatalimetryDataUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMNatalimeterInternal

- (CMNatalimeterInternal)init
{
  v4.receiver = self;
  v4.super_class = CMNatalimeterInternal;
  v2 = [(CMNatalimeterInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMNatalimeter", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMNatalimeterInternal;
  [(CMNatalimeterInternal *)&v3 dealloc];
}

- (void)_teardown
{
  fHandler = self->fHandler;
  if (fHandler)
  {

    self->fHandler = 0;
  }

  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v5 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v5, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_queryAbsoluteNatalimetryDataSinceRecord:(int64_t)a3 withHandler:(id)a4
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B683120;
  block[3] = &unk_1E7534030;
  block[5] = a4;
  block[6] = a3;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_queryAbsoluteNatalimetryDataSinceDataRecord:(id)a3 withHandler:(id)a4
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B683378;
  block[3] = &unk_1E7532C08;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(fInternalQueue, block);
}

- (void)_handleQueryResponse:(shared_ptr<CLConnectionMessage>)a3 withHandler:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  if (*var0 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v12)) != 0)
  {
    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMNatalimetryNatalieDataArray");
    if (v16)
    {
      v19 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_19B683CB8;
      v22[3] = &unk_1E7532B90;
      v22[5] = var1;
      var1 = v16;
    }

    else if (v18)
    {
      v19 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_19B683D30;
      v21[3] = &unk_1E7532B90;
      v21[5] = var1;
      var1 = v18;
    }

    else
    {
      v19 = v20;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_19B683D48;
      v20[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v19 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B683C54;
    block[3] = &unk_1E7532B40;
  }

  v19[4] = var1;
  dispatch_async(MEMORY[0x1E69E96A0], v19);
}

- (void)_startAbsoluteNatalimetryDataUpdatesWithHandler:(id)a3
{
  fInternalQueue = self->fInternalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B683E20;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(fInternalQueue, v4);
}

- (void)_stopAbsoluteNatalimetryDataUpdates
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B684738;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

@end