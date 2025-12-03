@interface AMSKeybag
+ (AMSKeybag)sharedInstance;
- (AMSKeybag)init;
- (BOOL)importDiversityBagWithData:(id)data error:(id *)error;
- (BOOL)importKeybagWithData:(id)data error:(id *)error;
- (id)keybagSyncDataWithAccountID:(id)d transactionType:(unsigned int)type error:(id *)error;
- (unsigned)fairplayContextWithError:(id *)error;
- (void)resetContext;
@end

@implementation AMSKeybag

- (AMSKeybag)init
{
  v9.receiver = self;
  v9.super_class = AMSKeybag;
  v2 = [(AMSKeybag *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ams.AMSKeybag.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(AMSFairPlayContext);
    fairPlayContext = v2->_fairPlayContext;
    v2->_fairPlayContext = v6;
  }

  return v2;
}

+ (AMSKeybag)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AMSKeybag_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6E2A98 != -1)
  {
    dispatch_once(&qword_1ED6E2A98, block);
  }

  v2 = _MergedGlobals_119;

  return v2;
}

uint64_t __27__AMSKeybag_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_119 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (unsigned)fairplayContextWithError:(id *)error
{
  fairPlayContext = [(AMSKeybag *)self fairPlayContext];
  LODWORD(error) = [fairPlayContext fairplayContextIDWithError:error];

  return error;
}

- (BOOL)importKeybagWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__37;
  v24 = __Block_byref_object_dispose__37;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__AMSKeybag_importKeybagWithData_error___block_invoke;
  v11[3] = &unk_1E73B86F8;
  v8 = dataCopy;
  v12 = v8;
  selfCopy = self;
  v14 = &v16;
  v15 = &v20;
  dispatch_sync(dispatchQueue, v11);
  if (error)
  {
    *error = v21[5];
  }

  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

void __40__AMSKeybag_importKeybagWithData_error___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    return;
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 fairplayContextWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4 && !*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 32) bytes];
    [*(a1 + 32) length];
    ha0dkchaters6();
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Import error with status: %ld", v5];
      v7 = AMSError(505, @"Fairplay Import error", v6, 0);
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      return;
    }

    goto LABEL_6;
  }
}

- (BOOL)importDiversityBagWithData:(id)data error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 0;
}

- (id)keybagSyncDataWithAccountID:(id)d transactionType:(unsigned int)type error:(id *)error
{
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__37;
  v28 = __Block_byref_object_dispose__37;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__37;
  v22 = __Block_byref_object_dispose__37;
  v23 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AMSKeybag_keybagSyncDataWithAccountID_transactionType_error___block_invoke;
  block[3] = &unk_1E73B8720;
  block[4] = self;
  v15 = &v18;
  v10 = dCopy;
  typeCopy = type;
  v14 = v10;
  v16 = &v24;
  dispatch_sync(dispatchQueue, block);
  if (error)
  {
    *error = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __63__AMSKeybag_keybagSyncDataWithAccountID_transactionType_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 fairplayContextWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v20 = 0;
    v19 = 0;
    v5 = [*(a1 + 40) unsignedLongLongValue];
    Mt76Vq80ux(v4, v5, 0, *(a1 + 64), &v20, &v19);
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x1E696AEC0];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
      v10 = AMSHashIfNeeded(v9);
      v11 = [v8 stringWithFormat:@"KBSync generation error for dsid: %@, status: %ld", v10, v7];
      v12 = AMSError(505, @"Keybag Error", v11, 0);
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      if (v20)
      {
        jEHf8Xzsv8K(v20);
      }
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E695DEF0]);
      v16 = [v15 initWithBytesNoCopy:v20 length:v19 deallocator:&__block_literal_global_72];
      v17 = *(*(a1 + 56) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }
}

- (void)resetContext
{
  fairPlayContext = [(AMSKeybag *)self fairPlayContext];
  [fairPlayContext destroyContext];
}

@end